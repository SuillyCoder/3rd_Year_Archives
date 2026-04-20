#include <xc.h>
#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void sendChar(char ch) {
    while(TXIF == 0);   // Wait for TX register to be empty
    TXREG = ch;
}

void main(void)
{
	unsigned char DATA; 
	unsigned char prevDATA; //Detect new key presses

	//Setting PORTB as the inputs
	TRISB = 0xFF;

	SPBRG = 0x19; // 9.6K baud rate @ FOSC=4MHz, asynchronous high speed
	// (see formula in Table 10-1)
	SYNC = 0; // asynchronous mode (TXSTA reg)
	BRGH = 1; // asynchronous high-speed (TXSTA reg)
	TX9 = 0; // 8-bit transmission (TXSTA reg)
	TXEN = 1; // transmit enable (TXSTA reg)
	SPEN = 1; // enable serial port (RCSTA reg)
	
	prevDATA = 0xFF;

	while(1){
	if (RB4 == 1){
		DATA = PORTB & 0x0F;
		if (DATA != prevDATA){
			prevDATA = DATA;
			sendChar(DATA);
		}
		else{
			prevDATA = 0xFF;
			}
		}
	}
}