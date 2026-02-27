#include <xc.h> 

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF


void delay (unsigned char cnt){
   int i, j;
   for (i = cnt; i!=0; i--){
       for (j=0; j<1000; j++){}
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
   delay(1000); // LCD startup about 15ms
   instCtrl(0x38); // function set: 8-bit; dual-line
   instCtrl(0x08); // display off
   instCtrl(0x01); // display clear
   instCtrl(0x06); // entry mode: increment; shift off
   instCtrl(0x0F); // display on; cursor on; blink off
}


void main(void){

   unsigned char DATA;
   TRISB = 0x00;
   TRISC = 0x00;
   TRISD = 0xFF;
   
   initLCD(); 
   instCtrl(0x80); // move cursor to 2nd line 7th column

	dataCtrl('H'); // prints ‘H’ 
	dataCtrl('E'); // prints ‘E’
	dataCtrl('L'); // prints ‘L’
	dataCtrl('L'); // prints ‘L’
	dataCtrl('O'); // prints ‘O’
	dataCtrl('!'); // prints ‘!’

 }