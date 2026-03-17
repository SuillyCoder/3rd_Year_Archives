#include <xc.h>
#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void delay(unsigned char cnt){
    int i, j;
    for (i = cnt; i != 0; i--){
        for (j = 0; j < 1000; j++){}
    }
}

void instCtrl(unsigned char INST){
   PORTB = INST;
   RC0 = 0;
   RC2 = 0;
   RC1 = 1;
   delay(1);
   RC1 = 0;
}

void dataCtrl(unsigned char INST){
   PORTB = INST;
   RC0 = 1;
   RC2 = 0;
   RC1 = 1;
   delay(1);
   RC1 = 0;
}

void initLCD(){
   delay(1);
   instCtrl (0x38); //Setting character display config (5x7 or 5x10)
   instCtrl (0x08); //Display off
   instCtrl (0x01); //Display clear
   instCtrl (0x06);
   instCtrl (0x0F); //Display on, cursor on, blink off
 }

void main(void){
    unsigned char DATA;
    TRISA  = 0x00; // PORTA as output (LEDs)
    TRISB  = 0x00;
    TRISC  = 0x00;
    TRISD  = 0xFF; // PORTD as input (keypad encoder)
    
    initLCD();

	unsigned char rowAddr[4] = {0x00, 0x40, 0x14, 0x54};
	int chars = 0;

    instCtrl(0x80);

    while(1){
        while (!RD4){} // Wait until a key is pressed (DA high ? inverted low at RD4)

        DATA = PORTD & 0x0F; // Read key value

		unsigned char ch = 0;
        int valid = 1;

        switch(DATA){
            case 0x00: ch = '1'; break;
            case 0x01: ch = '2'; break;
            case 0x02: ch = '3'; break;
            case 0x04: ch = '4'; break;
            case 0x05: ch = '5'; break;
            case 0x06: ch = '6'; break;
            case 0x08: ch = '7'; break;
            case 0x09: ch = '8'; break;
            case 0x0A: ch = '9'; break;
            case 0x0C: ch = '*'; break;
            case 0x0D: ch = '0'; break;
            case 0x0E: ch = '#'; break;
            default:   valid = 0; break;
        }

	  	if (valid){
            // If starting a new row, manually set the cursor
            if (chars % 20 == 0){
                int row = chars / 20;  // 0..3
                instCtrl(0x80 | rowAddr[row]);
            }

            dataCtrl(ch);  // No instCtrl(0x14) here!
            chars++;

            if (chars == 80){
                instCtrl(0x01); // Clear display
                chars = 0;
                delay(2);       // Let clear command finish
                instCtrl(0x80); // Return to row 1
            }
        }


        delay(50);           // Short debounce delay
        while (!RD4){}       // Wait for key release before next read
    }
}