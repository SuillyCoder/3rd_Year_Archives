#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void main(void)
{
	unsigned char DATA;

	SPBRG = 0x19; // 9.6K baud rate @ FOSC=4MHz, asynchronous high speed
// (see formula in Table 10-1)
	SYNC = 0; // asynchronous mode (TXSTA reg)
	SPEN = 1; // enable serial port (RCSTA reg)
	RX9 = 0; // 8-bit reception (TXSTA reg)
	BRGH = 1; // asynchronous high-speed (TXSTA reg)
	CREN = 1; // enable continuous receive (RCSTA reg)

	TRISB = 0x00; // set all ports in PORTB to output
	PORTB = 0x00; // all LEDs are off

	for(;;){
		while(!RCIF); // wait until receive buffer is full
		DATA = RCREG; // read the receive register
		switch(DATA){
            		case 0x00: PORTB = 0x01; break;
            		case 0x01: PORTB = 0x02; break;
            		case 0x02: PORTB = 0x03; break;
            		case 0x04: PORTB = 0x04; break;
            		case 0x05: PORTB = 0x05; break;
            		case 0x06: PORTB = 0x06; break;
            		case 0x08: PORTB = 0x07; break;
            		case 0x09: PORTB = 0x08; break;
            		case 0x0A: PORTB = 0x09; break;
            		case 0x0D: PORTB = 0x00; break;
					case 0x0C: PORTB = 0x0F; break;
					case 0x0E: PORTB = 0x0F; break;
            		default: break;
        	}		
		}
}