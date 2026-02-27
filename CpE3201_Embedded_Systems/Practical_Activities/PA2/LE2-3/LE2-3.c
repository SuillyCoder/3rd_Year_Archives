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
    instCtrl(0x80);

	int chars = 0;

    while(1){
        while (!RD4){} // Wait until a key is pressed (DA high ? inverted low at RD4)

        DATA = PORTD & 0x0F; // Read key value

        switch(DATA){
            case 0x00: dataCtrl('1'); instCtrl(0x14); chars++; break; 
            case 0x01: dataCtrl('2'); instCtrl(0x14); chars++; break; 
            case 0x02: dataCtrl('3'); instCtrl(0x14); chars++; break; 
            case 0x04: dataCtrl('4'); instCtrl(0x14); chars++; break; 
            case 0x05: dataCtrl('5'); instCtrl(0x14); chars++; break; 
            case 0x06: dataCtrl('6'); instCtrl(0x14); chars++; break; 
            case 0x08: dataCtrl('7'); instCtrl(0x14); chars++; break; 
            case 0x09: dataCtrl('8'); instCtrl(0x14); chars++; break; 
            case 0x0A: dataCtrl('9'); instCtrl(0x14); chars++; break; 
            case 0x0C: dataCtrl('*'); instCtrl(0x14); chars++; break; 
            case 0x0D: dataCtrl('0'); instCtrl(0x14); chars++; break; 
            case 0x0E: dataCtrl('#'); instCtrl(0x14); chars++; break; 
        }

		if (chars == 21){
			instCtrl(0x01); //Clear the display if the LCD is full.
			chars = 0;
		}

        delay(50);           // Short debounce delay
        while (!RD4){}       // Wait for key release before next read
    }
}