#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

volatile bit myTMR0IF = 0;

void delay(int cnt) {
    int of_cnt = 0;
    while (of_cnt < cnt) {
        if (myTMR0IF) {
            of_cnt++;
            myTMR0IF = 0;
        }
    }
}

void interrupt ISR() {
    GIE = 0;
    if (INTF) {
        INTF = 0;
        unsigned char DATA = PORTD & 0x0F;
        switch (DATA) {
            case 0x00: PORTC = 0x01; break;
            case 0x01: PORTC = 0x02; break;
            case 0x02: PORTC = 0x03; break;
            case 0x04: PORTC = 0x04; break;
            case 0x05: PORTC = 0x05; break;
            case 0x06: PORTC = 0x06; break;
            case 0x08: PORTC = 0x07; break;
            case 0x09: PORTC = 0x08; break;
            case 0x0A: PORTC = 0x09; break;
            case 0x0D: PORTC = 0x00; break;
            default:   PORTC = 0x0F; break;
        }
        INTE = 1; // re-enable external interrupt
    }
    else if (TMR0IF) {
        TMR0IF = 0;
        myTMR0IF = 1;
    }
    GIE = 1;
}

void main(void) {
    TRISA = 0x00;   // PORTA as output (LED on RA0)
    TRISB = 0xFF;   // PORTB as input (RB0 interrupt)
    TRISC = 0x00;   // PORTC as output (7-segment)
    TRISD = 0xFF;   // PORTD as input (keypad data)

    PORTA = 0x00;
    PORTC = 0x00;

   	OPTION_REG = 0xC4;  

 	//CONFIGURING RB0
    INTF   = 0;
    INTE   = 1;
   
	 //TIMER 0
    TMR0IF = 0;
    TMR0IE = 1;

    // Enable all interrupts
    GIE = 1;

    while (1) {
    	RA0 = 1;
    	delay(122);
    	RA0 = 0;
   	 	delay(122);  // LED needs to stay OFF for 1 second too
	}
}