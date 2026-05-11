#include <xc.h>
#include <stdio.h>

#pragma config FOSC = XT
#pragma config WDTE = OFF
#pragma config PWRTE = ON
#pragma config BOREN = ON
#pragma config LVP = OFF
#pragma config CPD = OFF
#pragma config WRT = OFF
#pragma config CP = OFF

#define _XTAL_FREQ 4000000
#define DHT11_Data_Pin PORTDbits.RD5
#define DHT11_Data_Pin_Direction TRISDbits.TRISD5

int RH;
int T;

// Function Prototypes
void delay_ms(int cnt);
void initLCD();
void instCtrl(unsigned char INST);
void dataCtrl(unsigned char DATA);
void lcd_print(const char *str); // New helper function
void dispRH();
void dispT();

// I2C Functions
void I2C_Wait(void);
void I2C_Start(void);
void I2C_Stop(void);
void init_I2C_Master(void);
void I2C_RepeatedStart(void);
void I2C_Send(unsigned char data);
unsigned char I2C_Receive(unsigned char ack);

//Delay function
void delay_ms(int cnt){
	for (int i = 0; i < cnt; i++){
		for (int j = 0; j < 500; j++); 
	}
}

//LCD-RELATED FUNCTIONS

void dataCtrl(unsigned char DATA){
	PORTB = DATA;
	RD0 = 1;
	RD2 = 0;
	RD1 = 1;
	delay_ms(1);
	RD1 = 0;
}

void instCtrl(unsigned char INST){
	PORTB = INST;
	RD0 = 0;
	RD2 = 0;
	RD1 = 1;
	delay_ms(1);
	RD1 = 0;
}

void lcd_print(const char *str) {
    while (*str) {
        dataCtrl(*str++);
    }
}

void initLCD(){
	delay_ms(20);
	instCtrl(0x38);
	instCtrl(0x08);
	instCtrl(0x01);
	instCtrl(0x06);
	instCtrl(0x0C);

	instCtrl(0x80);
	lcd_print("Humidity: ");
	instCtrl(0xC0);
	lcd_print("Temperature: ");
}

//METRIC DISPLAYS
void dispRH(){
	char buffer[10];	
	instCtrl(0x8A);
    sprintf(buffer, "%d%%  ", RH); 
    lcd_print(buffer);
}	

void dispT(){
	char buffer[10];	
	instCtrl(0xCD);
    sprintf(buffer, "%d C  ", T); 
    lcd_print(buffer);
}

//I2C MASTER FUNCTIONS

void init_I2C_Master(void){
	TRISC3 = 1;
	TRISC4 = 1;
	SSPCON = 0x28;
	SSPCON2 = 0x00;
	SSPSTAT = 0x00;
	SSPADD = 0x09;
}

void I2C_Wait(void){
 	while((SSPCON2 & 0x1F) || (SSPSTAT & 0x04));
}


void I2C_Start(void){
	I2C_Wait();
	SEN = 1;
}

void I2C_Stop(void){
	I2C_Wait();
	PEN = 1;
}

void I2C_RepeatedStart(void){
	I2C_Wait();
	RSEN = 1;
}

void I2C_Send(unsigned char data){
	I2C_Wait();
	SSPBUF = data;
}

unsigned char I2C_Receive(unsigned char ack){
	unsigned char temp;	
	I2C_Wait();
	RCEN = 1;
	I2C_Wait();
	temp = SSPBUF;
	I2C_Wait();	
	ACKDT = (ack) ? 0 : 1;
	ACKEN = 1;
	return temp;
}


void main(void){
    // Replace your old variables with these:
    unsigned char msb, lsb;
    unsigned int RH_raw, T_raw;

    TRISB = 0x00;
    TRISD = 0x00;
    PORTB = 0x00;
    PORTD = 0x00;

    init_I2C_Master();
    initLCD();

    for(;;){
        // --- Read Humidity ---
        I2C_Start();
        I2C_Send(0x80);         // addr + write
        I2C_Send(0xE5);         // humidity command
        I2C_RepeatedStart();
        I2C_Send(0x81);         // addr + read
        msb = I2C_Receive(1);   // ACK
        lsb = I2C_Receive(0);   // NACK
        I2C_Stop();

        RH_raw = ((unsigned int)msb << 8) | lsb;
        RH_raw &= 0xFFFC;       // mask status bits
        RH = -6 + (125.0 * ((float)RH_raw / 65536.0));

        // --- Read Temperature ---
        I2C_Start();
        I2C_Send(0x80);         // addr + write
        I2C_Send(0xE3);         // temperature command
        I2C_RepeatedStart();
        I2C_Send(0x81);         // addr + read
        msb = I2C_Receive(1);   // ACK
        lsb = I2C_Receive(0);   // NACK
        I2C_Stop();

        T_raw = ((unsigned int)msb << 8) | lsb;
        T_raw &= 0xFFFC;        // mask status bits
        T = -46.85 + (175.72 * ((float)T_raw / 65536.0));

        dispRH();
        dispT();

        delay_ms(50);
    }
}