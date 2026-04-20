#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

// Frequencies: 1000, 100, 10 Hz
// 1000 Hz  ? hardware PWM, PR2=249, prescaler 1:1  (T2CON=0x04)
// 100  Hz  ? software PWM via ISR. Base tick = 500µs (2kHz). Period = 20 ticks.
// 10   Hz  ? software PWM via ISR. Base tick = 500µs (2kHz). Period = 200 ticks.

// For software PWM base: 4MHz, prescaler 1:1, PR2=249 ? 4MHz/(4*1*250)=4000Hz tick?
// Let's use prescaler 1:4, PR2=124 ? 4MHz/(4*4*125) = 2000 Hz tick (500µs). Perfect.

// Mode 0: 1kHz hardware PWM  ? T2CON=0x04 (prescale 1:1), PR2=249
// Mode 1: 100Hz software PWM ? T2CON=0x05 (prescale 1:4), PR2=124, 20 ticks/period
// Mode 2: 10Hz  software PWM ? T2CON=0x05 (prescale 1:4), PR2=124, 200 ticks/period

const unsigned char dutyTable[5] = {10, 25, 50, 75, 90};

volatile unsigned char freqIdx = 0;
volatile unsigned char dutyIdx = 0;

// Software PWM state
volatile unsigned char swPWM_active    = 0;   // 1 = using software PWM
volatile unsigned int  swPWM_period    = 0;   // total ticks in one period
volatile unsigned int  swPWM_highTicks = 0;   // ticks output stays HIGH
volatile unsigned int  swPWM_tick      = 0;   // current tick counter

void delay_ms(unsigned int ms) {
    unsigned int i, j;
    for (i = ms; i != 0; i--)
        for (j = 0; j < 110; j++);
}

void updatePWM(void) {
    unsigned char duty = dutyTable[dutyIdx];

    TMR2ON = 0;
    CCP1CON = 0x00;   // disable CCP while reconfiguring
    RC2 = 0;

    if (freqIdx == 0) {
        // -- 1 kHz hardware PWM ------------------------------------------
        // PR2=249, prescaler 1:1 ? 4MHz/(4*1*250) = 1000 Hz
        swPWM_active = 0;

        unsigned int pr2 = 249;
        // Use 'unsigned long' to prevent overflow (e.g. 100 * 1000 = 100000)
        unsigned long dcVal = ((unsigned long)duty * ((unsigned long)(pr2 + 1) * 4)) / 100;

        T2CON  = 0x05;                              // prescaler 1:1, TMR2 off
        PR2    = (unsigned char)pr2;
        CCPR1L = (unsigned char)(dcVal >> 2);
        CCP1CON = (unsigned char)(0x0C | ((unsigned char)(dcVal & 0x03) << 4));
        TRISC2 = 0;

        PIE1bits.TMR2IE = 0;                        // no ISR needed
        TMR2ON = 1;

    } else {
        // -- 100 Hz or 10 Hz software PWM via ISR ------------------------
        // Base tick: prescaler 1:4, PR2=124 ? 4MHz/(4*4*125) = 2000 Hz (500µs/tick)
        swPWM_active = 1;

        unsigned int period    = (freqIdx == 1) ? 20 : 200; // 100Hz:20, 10Hz:200
        unsigned int highTicks = ((unsigned long)duty * period) / 100;
        if (duty == 100) highTicks = period;   // guarantee full on

        swPWM_period    = period;
        swPWM_highTicks = highTicks;
        swPWM_tick      = 0;

        CCP1CON = 0x00;    // CCP off — we drive RC2 manually
        TRISC2  = 0;
        RC2     = 1;       // start high

        T2CON  = 0x05;     // prescaler 1:4, TMR2 off
        PR2    = 124;
        TMR2   = 0;

        PIR1bits.TMR2IF  = 0;
        PIE1bits.TMR2IE  = 1;   // enable Timer2 match interrupt
        INTCONbits.PEIE  = 1;
        INTCONbits.GIE   = 1;
        TMR2ON = 1;
    }
}

// -- ISR ---------------------------------------------------------------------
void interrupt isr(void) {
    if (PIR1bits.TMR2IF && PIE1bits.TMR2IE) {
        PIR1bits.TMR2IF = 0;

        if (swPWM_active) {
            swPWM_tick++;
            if (swPWM_tick >= swPWM_period)
                swPWM_tick = 0;

            RC2 = (swPWM_tick < swPWM_highTicks) ? 1 : 0;
        }
    }
}

void main(void) {
    ADCON1 = 0x06;
    TRISB  = 0x03;
    TRISC  = 0x00;
    RC2    = 0;

    updatePWM();

    for (;;) {
        if (RB0 == 1) {
            delay_ms(50);
            if (RB0 == 1) {
                freqIdx++;
                if (freqIdx > 2) freqIdx = 0;
                updatePWM();
                while (RB0 == 1);
                delay_ms(50);
            }
        } else if (RB1 == 1) {
            delay_ms(50);
            if (RB1 == 1) {
                dutyIdx++;
                if (dutyIdx > 4) dutyIdx = 0;
                updatePWM();
                while (RB1 == 1);
                delay_ms(50);
            }
        }
    }
}
