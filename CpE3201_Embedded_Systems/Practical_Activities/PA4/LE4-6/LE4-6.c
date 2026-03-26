#include <xc.h>
#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

volatile unsigned int capturedPeriod = 0;
volatile unsigned char newCapture = 0;

void delay(unsigned char cnt){
    int i, j;
    for (i = cnt; i != 0; i--)
        for (j = 0; j < 1000; j++){}
}

void dataCtrl(unsigned char INST){
    PORTB = INST;
    RD0 = 1;
    RD2 = 0;
    RD1 = 1;
    delay(1);
    RD1 = 0;
}

void instCtrl(unsigned char INST){
    PORTB = INST;
    RD0 = 0;
    RD2 = 0;
    RD1 = 1;
    delay(1);
    RD1 = 0;
}

void initLCD(){
    instCtrl(0x38);
    instCtrl(0x08);
    instCtrl(0x01);
    instCtrl(0x06);
    instCtrl(0x0F);
}

void printStr(const char *str){
    while(*str != '\0'){
        dataCtrl(*str);
        str++;
    }
}

void displayPeriod(unsigned int period){
    instCtrl(0xC0);          // Move to second line

    // Display up to 4 digits + "ms"
    dataCtrl((period / 1000) + '0');
    dataCtrl(((period % 1000) / 100) + '0');
    dataCtrl(((period % 100) / 10) + '0');
    dataCtrl((period % 10) + '0');
    dataCtrl('m');
    dataCtrl('s');
    dataCtrl(' ');           // Trailing space to clear leftover chars
    dataCtrl(' ');
}

void interrupt ISR(void){
    GIE = 0;
    if(CCP1IF == 1){
        CCP1IF = 0;
        capturedPeriod = CCPR1;   // Save raw capture value
        TMR1 = 0;                 // Reset timer for next capture
        newCapture = 1;           // Signal foreground to update LCD
		RA0 = RA0^1;
    }
    GIE = 1;
}

void main(void){
    ADCON1 = 0x06;
	TRISA = 0x00;
    TRISB = 0x00;
    TRISC = 0x04;    // RC2 as input
    TRISD = 0x00;

    // Initialize LCD FIRST before enabling interrupts
    initLCD();
    instCtrl(0x80);
    printStr("PERIOD:  ");

    T1CON = 0x30;    // 1:8 prescaler, Timer1 off
    CCP1CON = 0x05;  // Capture: every rising edge
    CCP1IE = 1;
    CCP1IF = 0;
    PEIE = 1;
    GIE = 1;
    TMR1ON = 1;      // Start timer AFTER LCD is ready

    for(;;){
        if(newCapture){
            newCapture = 0;
            // Each TMR1 tick = 8us, normalize: divide by 1000, multiply by 8
            unsigned int period_ms = ((capturedPeriod * 8) / 1000)*2;
            displayPeriod(period_ms);
        }
    }
}