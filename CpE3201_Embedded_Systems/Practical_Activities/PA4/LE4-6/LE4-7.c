#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

//YOU STILL GOTTA FIX THIS IN ORDER TO WORK
const unsigned char pr2Table[3]    = {249, 124, 62};  // ~1000, ~500, ~250 Hz
//NOTE: It's impossible to reach 100 and 10 hz since the calculation for the 
//For the FOSC value exceeds 255 (which does not suit an 8 bit register)

//Or wait, let's just edit this later with a 1:32 prescaler. Idk

const unsigned char dutyTable[5]   = {10, 25, 50, 75, 95};

volatile unsigned char freqIdx  = 0;  // 0,1,2
volatile unsigned char dutyIdx  = 0;  // 0,1,2,3,4

void delay_ms(unsigned int ms){
    unsigned int i, j;
    for(i = ms; i != 0; i--)
        for(j = 0; j < 110; j++);  // ~1ms at 4MHz
}

void updatePWM(void){
	unsigned char pr2 = pr2Table[freqIdx];
	unsigned char duty = dutyTable[dutyIdx];
	unsigned int dcVal = ((unsigned int)duty * ((unsigned int)(pr2 + 1) * 4)) / 100;
	
	// Stop timer briefly to update cleanly
    TMR2ON = 0;
    PR2    = pr2;
    CCPR1L = (unsigned char)(dcVal >> 2);          // 8 MSBs
    // Set 2 LSBs into CCP1CON<5:4>, keep PWM mode bits (0x0C)
    CCP1CON = (unsigned char)(0x0C | ((dcVal & 0x03) << 4));
    TMR2ON = 1;
}	

void main(void){
	ADCON1 = 0x06;
	TRISB = 0x03;
	TRISC = 0x00;
	RC2 = 0;

	T2CON = 0x06;
	updatePWM();

	for(;;) // foreground routine
	{
		if (RB0 == 1){
			//Change the frequency
			delay_ms(50);
			if (RB0 == 1){
				freqIdx++;
				if (freqIdx > 2) freqIdx = 0;
				updatePWM();
				while(RB0 == 1);
				delay_ms(50);
			}
		}
		else if (RB1 == 1){
			//Change the duty cycle
			delay_ms(50);
			if (RB1 == 1){
				dutyIdx++;
				if (dutyIdx > 4) dutyIdx = 0;
				updatePWM();
				while(RB1 == 1);
				delay_ms(50);
			}
		}
	}
}