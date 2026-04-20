#include <xc.h>
#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

//Delay function (we'll be going for loops within loops for now. Could be edited later on).
void delay(int cnt){
    while(cnt--);
}

void interrupt ISR(void){
    /* Declare ALL variables at the top first */
    unsigned int d_value; //Digital Value
    unsigned int voltage_x10; //Voltage reading
    unsigned int whole; //Whole number display
    unsigned int decimal; //Decimal value display

    if (ADIF){
        d_value = 0;
        d_value = ADRESH; //gets thwe top 2 bits
        d_value = d_value << 8; //shifts the result to an upper byte
        d_value = d_value | ADRESL; //ORs in the lower 4 bits

        voltage_x10 = ((unsigned long)d_value * 50) / 1023; //acquire voltage value between 0-1023
        whole       = voltage_x10 / 10;
        decimal     = voltage_x10 % 10;

		PORTB = (unsigned char)((0x01 << 4) | (decimal & 0x0F));
		delay(50);
		PORTB = (unsigned char)((0x06 << 4) | (whole & 0x0F));
		delay(50);
		 

        ADIF = 0; //Set the interrupt flag to 0
        GO = 1; //Enable GO
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
