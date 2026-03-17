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


void main (void) {
	ADCON1 = 0x06;
	TRISB = 0x00;
	PORTB = 0x00;
	
	//THIS IS SO CRUDE. I gotta fix this later.
	
	while(1){
		PORTB = 0x01; delay(100);
		PORTB = 0x02; delay(100);
		PORTB = 0x04; delay(1000);
		PORTB = 0x08; delay(100);
		PORTB = 0x10; delay(100);
		PORTB = 0x20; delay(100);
		PORTB = 0x40; delay(100);
		PORTB = 0x80; delay(100);
		PORTB = 0x40; delay(100);
		PORTB = 0x20; delay(100);
		PORTB = 0x10; delay(100);
		PORTB = 0x08; delay(100);
		PORTB = 0x04; delay(100);
		PORTB = 0x02; delay(100);
		PORTB = 0x01; delay(100);
	}
}



