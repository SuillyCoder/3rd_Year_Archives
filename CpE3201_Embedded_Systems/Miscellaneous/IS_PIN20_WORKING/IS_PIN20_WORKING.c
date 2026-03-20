#include <xc.h> 

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

void main (void){
	ADCON1 = 0x06;
	TRISD = 0x00;
	
	while(1){
		PORTD = 0xFF;
	}

}