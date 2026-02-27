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

void main(void){
    unsigned char DATA;

    ADCON1 = 0x06; // ? CRITICAL: Set PORTA pins as digital I/O
    TRISA  = 0x00; // PORTA as output (LEDs)
    TRISB  = 0x00;
    TRISC  = 0x00;
    TRISD  = 0xFF; // PORTD as input (keypad encoder)

    while(1){
        while (!RD4){} // Wait until a key is pressed (DA high ? inverted low at RD4)

        DATA = PORTD & 0x0F; // Read key value

        switch(DATA){
            case 0x00: PORTA = 0x01; break; // 1  ? 00001
            case 0x01: PORTA = 0x02; break; // 2  ? 00010
            case 0x02: PORTA = 0x03; break; // 3  ? 00011
            case 0x04: PORTA = 0x04; break; // 4  ? 00100
            case 0x05: PORTA = 0x05; break; // 5  ? 00101
            case 0x06: PORTA = 0x06; break; // 6  ? 00110
            case 0x08: PORTA = 0x07; break; // 7  ? 00111
            case 0x09: PORTA = 0x08; break; // 8  ? 01000
            case 0x0A: PORTA = 0x09; break; // 9  ? 01001
            case 0x0D: PORTA = 0x00; break; // 0  ? 00000
            default:   PORTA = 0x2F; break; // Unknown ? 11111
        }

        delay(50);           // Short debounce delay
        while (!RD4){}       // Wait for key release before next read
    }
}