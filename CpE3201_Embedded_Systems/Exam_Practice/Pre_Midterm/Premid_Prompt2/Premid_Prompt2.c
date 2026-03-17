#include <xc.h>

#include <xc.h>
#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF\

void delay(unsigned char cnt){
    int i, j;
    for (i = cnt; i != 0; i--){
        for (j = 0; j < 1000; j++){}
    }
}

void main(void){
	unsigned char DATA;
	ADCON1 = 0x06;
	TRISA = 0x00;
	TRISD = 0xFF;
	
	while(1){
		while(!RD4){}
			DATA = PORTD & 0x0F;
		
			switch(DATA){
				case 0x00: PORTA = 0x01; break;
				case 0x01: PORTA = 0x02; break;
				case 0x02: PORTA = 0x03; break;
				case 0x04: PORTA = 0x04; break;
				case 0x05: PORTA = 0x05; break;
				case 0x06: PORTA = 0x06; break;
				case 0x08: PORTA = 0x07; break;
				case 0x09: PORTA = 0x08; break;
				case 0x0A: PORTA = 0x09; break;
				case 0x0D: PORTA = 0x00; break;
				default: PORTA = 0xFF; break;
			}
			delay(50);
			while (!RD4){}
		
	
	}
}