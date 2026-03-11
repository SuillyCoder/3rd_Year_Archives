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
volatile unsigned char counter = 0;

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
            case 0x00: counter = 0; break;
            case 0x01: counter = 1; break;
            case 0x02: counter = 2; break;
            case 0x04: counter = 3; break;
            case 0x05: counter = 4; break;
            case 0x06: counter = 5; break;
            case 0x08: counter = 6; break;
            case 0x09: counter = 7; break;
            case 0x0A: counter = 8; break;
            case 0x0D: counter = 9; break;
            default: break;
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
    TRISA = 0x00;
    TRISB = 0xFF;
    TRISC = 0x00;
    TRISD = 0xFF;

    PORTA = 0x00;
    PORTC = 0x00;

    // RB0/INT + Timer0, rising edge, internal clock, 1:32 prescaler
    // 0.8 seconds = 98 overflows (0.8 / 0.008196 = 97.6 ˜ 98)
    OPTION_REG = 0x44;
    INTF   = 0;
    INTE   = 1;
    TMR0IF = 0;
    TMR0IE = 1;
    GIE    = 1;

    while (1) {
        PORTC = counter;    // display current count
        delay(98);          // 0.8 second delay
        counter++;          // increment
        if (counter > 9)    // roll back to 0 after 9
            counter = 0;
    }
}