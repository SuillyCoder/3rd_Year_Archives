#include <xc.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define _XTAL_FREQ 4000000  // 4MHz Crystal

// ==========================
// LCD Pin Mapping
// PORTB (RB0-RB7) ? D0-D7  (Data Bus)
// RC0 ? RS  (Register Select: 0=Instruction, 1=Data)
// RC1 ? EN  (Enable)
// RC2 ? RW  (Read/Write:     0=Write,       1=Read)
// ==========================

// --------------------------
// Delay Function
// --------------------------
void delay(unsigned char cnt) {
    unsigned char i;
    unsigned int j;
    for (i = cnt; i != 0; i--)
        for (j = 0; j < 1000; j++) {}
}

// --------------------------
// Send DATA to LCD (RS = 1)
// --------------------------
void dataCtrl(unsigned char DATA) {
    PORTB = DATA;   // Put data on bus
    RC0 = 1;        // RS = 1 ? Data mode
    RC2 = 0;        // RW = 0 ? Write mode
    RC1 = 1;        // EN = 1 ? Latch HIGH
    delay(1);
    RC1 = 0;        // EN = 0 ? Latch LOW (triggers LCD read)
    delay(1);
}

// --------------------------
// Send INSTRUCTION to LCD (RS = 0)
// --------------------------
void instCtrl(unsigned char INST) {
    PORTB = INST;   // Put instruction on bus
    RC0 = 0;        // RS = 0 ? Instruction mode
    RC2 = 0;        // RW = 0 ? Write mode
    RC1 = 1;        // EN = 1 ? Latch HIGH
    delay(1);
    RC1 = 0;        // EN = 0 ? Latch LOW (triggers LCD read)
    delay(1);
}

// --------------------------
// LCD Initialization Sequence
// --------------------------
void initLCD(void) {
    delay(20);          // >15ms power-on delay
    instCtrl(0x38);     // Function Set:  8-bit, 2-line, 5x8 font
    instCtrl(0x08);     // Display OFF
    instCtrl(0x01);     // Display Clear
    delay(5);           // >1.64ms required after Clear command
    instCtrl(0x06);     // Entry Mode:    cursor increment, no display shift
    instCtrl(0x0C);     // Display ON,    cursor OFF, blink OFF
}

// --------------------------
// Print a String to LCD
// --------------------------
void lcdPrint(const char *str) {
    while (*str)
        dataCtrl(*str++);
}

// ==========================
// Main
// ==========================
void main(void) {
    TRISB = 0x00;   // PORTB ? Output (LCD Data Bus)
    TRISC = 0x00;   // PORTC ? Output (LCD Control Pins)
    PORTB = 0x00;
    PORTC = 0x00;

    initLCD();

    // --- Row 1: starts at 0x80 ---
    instCtrl(0x80);         // Cursor ? Row 1, Col 1
    lcdPrint("HELLO WORLD!");

    // --- Row 2: starts at 0xC0 ---
    instCtrl(0xC0);         // Cursor ? Row 2, Col 1
    lcdPrint("PIC16F877A");

    while (1) {}            // Hold — keep display on
}