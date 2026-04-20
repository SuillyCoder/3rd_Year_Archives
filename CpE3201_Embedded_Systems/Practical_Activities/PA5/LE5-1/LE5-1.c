#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void delay(int cnt){
	while(cnt--);
}

void interrupt ISR(void){
	if (ADIF){
		int d_value = 0;
 		d_value = ADRESH; // read ADRESH
 		d_value = d_value << 8; // move to correct position
 		d_value = d_value | ADRESL; // read ADRESL

		if(d_value>=0 && d_value<=170)
 			PORTB = 0x00; // all LEDs OFF
 		else if(d_value>=171 && d_value<=341)
 			PORTB = 0x01; // 00001
		else if(d_value>=342 && d_value<=511)
 			PORTB = 0x03; // 00011
		else if(d_value>=512 && d_value<=682)
 			PORTB = 0x07; // 00111
		else if(d_value>=683 && d_value<=853)
 			PORTB = 0x0F; // 01111
		else if(d_value>=854 && d_value<1024)
 			PORTB = 0x1F; // 11111

		ADIF = 0;
		delay(1000);
		GO = 1;
	}
}


void main(void){
	TRISB = 0x00; // set all PORTB as output
	PORTB = 0x00; // all LEDs are off

	ADCON1 = 0x80; // result: right Justified, clock: FOSC/2
 	// all ports in PORTA are analog
 	// VREF+: VDD, VREF-: VSS
 	ADCON0 = 0x01; // clock: FOSC/2, analog channel: AN0,
 	// A/D conversion: STOP, A/D module: ON

 	/*enabling of interrupts */

	ADIF = 0; //Clear initial interrupt flag.
	ADIE = 1; //Enable the use of interrupts for ADC
	PEIE = 1; //Enable the use of peripheral interrupts
	GIE = 1; //Enable global interrupts

	delay(1000);
	GO = 1; //Start up the conversion

	for(;;){}
}