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

void dataCtrl(unsigned char INST){
	PORTB = INST;
	RC0 = 1;
	RC2 = 0;
	RC1 = 1;
	delay(1);
	RC1 = 0;
}


void instCtrl(unsigned char INST){
	PORTB = INST;
	RC0 = 0;
	RC2 = 0;
	RC1 = 1;
	delay(1);
	RC1 = 0;
}

void initLCD(){
	delay(1000);
	instCtrl(0x38);
	instCtrl(0x08);
	instCtrl(0x01);
	instCtrl(0x06);
	instCtrl(0x0F);
}

void printStr (const char *str){
	while(*str != '\0'){
		dataCtrl(*str);
		str++;
	}
}

void main (void){
	TRISB = 0x00;
	TRISC = 0x00;
	
	initLCD();
	
	
	instCtrl(0x80);        // line 1
	printStr("ENZO BASUIL");

	instCtrl(0xC0);        // line 2
	printStr("CPE 3201");

	instCtrl(0x94);        // line 3
	printStr("UNIVERSITY OF");

	instCtrl(0xD4);        // line 4
	printStr("SAN CARLOS");
	
	
}