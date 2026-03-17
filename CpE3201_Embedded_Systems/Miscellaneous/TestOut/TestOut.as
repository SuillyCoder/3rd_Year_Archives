opt subtitle "Microchip Technology Omniscient Code Generator (Lite mode) build 59893"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
# 49 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INDF equ 00h ;# 
# 55 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR0 equ 01h ;# 
# 61 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCL equ 02h ;# 
# 67 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
STATUS equ 03h ;# 
# 154 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
FSR equ 04h ;# 
# 160 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTA equ 05h ;# 
# 209 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTB equ 06h ;# 
# 270 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTC equ 07h ;# 
# 331 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTD equ 08h ;# 
# 392 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PORTE equ 09h ;# 
# 423 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCLATH equ 0Ah ;# 
# 442 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
INTCON equ 0Bh ;# 
# 519 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR1 equ 0Ch ;# 
# 580 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIR2 equ 0Dh ;# 
# 619 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1 equ 0Eh ;# 
# 625 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1L equ 0Eh ;# 
# 631 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR1H equ 0Fh ;# 
# 637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T1CON equ 010h ;# 
# 711 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TMR2 equ 011h ;# 
# 717 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
T2CON equ 012h ;# 
# 787 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPBUF equ 013h ;# 
# 793 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON equ 014h ;# 
# 862 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1 equ 015h ;# 
# 868 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1L equ 015h ;# 
# 874 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR1H equ 016h ;# 
# 880 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP1CON equ 017h ;# 
# 937 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCSTA equ 018h ;# 
# 1031 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXREG equ 019h ;# 
# 1037 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
RCREG equ 01Ah ;# 
# 1043 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2 equ 01Bh ;# 
# 1049 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2L equ 01Bh ;# 
# 1055 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCPR2H equ 01Ch ;# 
# 1061 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CCP2CON equ 01Dh ;# 
# 1118 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESH equ 01Eh ;# 
# 1124 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON0 equ 01Fh ;# 
# 1219 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
OPTION_REG equ 081h ;# 
# 1288 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISA equ 085h ;# 
# 1337 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISB equ 086h ;# 
# 1398 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISC equ 087h ;# 
# 1459 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISD equ 088h ;# 
# 1520 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TRISE equ 089h ;# 
# 1576 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE1 equ 08Ch ;# 
# 1637 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PIE2 equ 08Dh ;# 
# 1676 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PCON equ 08Eh ;# 
# 1709 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPCON2 equ 091h ;# 
# 1770 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
PR2 equ 092h ;# 
# 1776 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPADD equ 093h ;# 
# 1782 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SSPSTAT equ 094h ;# 
# 1950 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
TXSTA equ 098h ;# 
# 2030 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
SPBRG equ 099h ;# 
# 2036 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CMCON equ 09Ch ;# 
# 2105 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
CVRCON equ 09Dh ;# 
# 2169 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADRESL equ 09Eh ;# 
# 2175 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
ADCON1 equ 09Fh ;# 
# 2233 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATA equ 010Ch ;# 
# 2239 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADR equ 010Dh ;# 
# 2245 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEDATH equ 010Eh ;# 
# 2251 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EEADRH equ 010Fh ;# 
# 2257 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON1 equ 018Ch ;# 
# 2301 "C:\Program Files (x86)\Microchip\xc8\v1.33\include\pic16f877a.h"
EECON2 equ 018Dh ;# 
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_main,_lcdPrint
	FNCALL	_lcdPrint,_dataCtrl
	FNCALL	_dataCtrl,_delay
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_PORTC
_PORTC	set	0x7
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
psect	strings,class=STRING,delta=2,noexec
global __pstrings
__pstrings:
stringtab:
	global    __stringtab
__stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
	global __stringbase
__stringbase:
	retlw	0
psect	strings
	global    __end_of__stringtab
__end_of__stringtab:
	global __stringdata
__stringdata:
	
STR_1:	
	retlw	72	;'H'
	retlw	69	;'E'
	retlw	76	;'L'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	79	;'O'
	retlw	82	;'R'
	retlw	76	;'L'
	retlw	68	;'D'
	retlw	33	;'!'
	retlw	0
psect	strings
	
STR_2:	
	retlw	80	;'P'
	retlw	73	;'I'
	retlw	67	;'C'
	retlw	49	;'1'
	retlw	54	;'6'
	retlw	70	;'F'
	retlw	56	;'8'
	retlw	55	;'7'
	retlw	55	;'7'
	retlw	65	;'A'
	retlw	0
psect	strings
	global __end_of__stringdata
__end_of__stringdata:
; #config settings
global __CFG_WDTE$OFF
__CFG_WDTE$OFF equ 0x0
global __CFG_PWRTE$ON
__CFG_PWRTE$ON equ 0x0
global __CFG_CP$OFF
__CFG_CP$OFF equ 0x0
global __CFG_BOREN$ON
__CFG_BOREN$ON equ 0x0
global __CFG_LVP$OFF
__CFG_LVP$OFF equ 0x0
global __CFG_CPD$OFF
__CFG_CPD$OFF equ 0x0
global __CFG_WRT$OFF
__CFG_WRT$OFF equ 0x0
global __CFG_FOSC$XT
__CFG_FOSC$XT equ 0x0
	file	"TestOut.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_delay:	; 0 bytes @ 0x0
??_delay:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_lcdPrint:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	1
	global	delay@cnt
delay@cnt:	; 1 bytes @ 0x1
	ds	1
	global	delay@j
delay@j:	; 2 bytes @ 0x2
	ds	2
	global	delay@i
delay@i:	; 1 bytes @ 0x4
	ds	1
??_dataCtrl:	; 0 bytes @ 0x5
??_instCtrl:	; 0 bytes @ 0x5
	global	dataCtrl@DATA
dataCtrl@DATA:	; 1 bytes @ 0x5
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x5
	ds	1
??_initLCD:	; 0 bytes @ 0x6
??_lcdPrint:	; 0 bytes @ 0x6
	ds	1
	global	lcdPrint@str
lcdPrint@str:	; 1 bytes @ 0x7
	ds	1
??_main:	; 0 bytes @ 0x8
;!
;!Data Sizes:
;!    Strings     24
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      8       8
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    lcdPrint@str	PTR const unsigned char  size(1) Largest target is 13
;!		 -> STR_2(CODE[11]), STR_1(CODE[13]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_lcdPrint
;!    _lcdPrint->_dataCtrl
;!    _dataCtrl->_delay
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay
;!
;!Critical Paths under _main in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 0, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 0     0      0     423
;!                            _initLCD
;!                           _instCtrl
;!                           _lcdPrint
;! ---------------------------------------------------------------------------------
;! (1) _lcdPrint                                             2     2      0     168
;!                                              6 COMMON     2     2      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0      90
;!                                              5 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     165
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0      90
;!                                              5 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                5     5      0      75
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _initLCD
;!     _delay
;!     _instCtrl
;!       _delay
;!   _instCtrl
;!     _delay
;!   _lcdPrint
;!     _dataCtrl
;!       _delay
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      8       8       1       57.1%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0       0       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0       0      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 82 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\TestOut.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_initLCD
;;		_instCtrl
;;		_lcdPrint
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\TestOut.c"
	line	82
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\TestOut.c"
	line	82
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	83
	
l555:	
;TestOut.c: 83: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	84
;TestOut.c: 84: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	85
;TestOut.c: 85: PORTB = 0x00;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(6)	;volatile
	line	86
;TestOut.c: 86: PORTC = 0x00;
	clrf	(7)	;volatile
	line	88
	
l557:	
;TestOut.c: 88: initLCD();
	fcall	_initLCD
	line	91
	
l559:	
;TestOut.c: 91: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	92
	
l561:	
;TestOut.c: 92: lcdPrint("HELLO WORLD!");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_lcdPrint
	line	95
	
l563:	
;TestOut.c: 95: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	96
	
l565:	
;TestOut.c: 96: lcdPrint("PIC16F877A");
	movlw	((STR_2)-__stringbase)&0ffh
	fcall	_lcdPrint
	line	98
;TestOut.c: 98: while (1) {}
	
l39:	
	
l40:	
	goto	l39
	
l41:	
	line	99
	
l42:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_lcdPrint

;; *************** function _lcdPrint *****************
;; Defined at:
;;		line 74 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\TestOut.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR const unsigned char 
;;		 -> STR_2(11), STR_1(13), 
;; Auto vars:     Size  Location     Type
;;  str             1    7[COMMON] PTR const unsigned char 
;;		 -> STR_2(11), STR_1(13), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	74
global __ptext1
__ptext1:	;psect for function _lcdPrint
psect	text1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\TestOut.c"
	line	74
	global	__size_of_lcdPrint
	__size_of_lcdPrint	equ	__end_of_lcdPrint-_lcdPrint
	
_lcdPrint:	
;incstack = 0
	opt	stack 5
; Regs used in _lcdPrint: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;lcdPrint@str stored from wreg
	movwf	(lcdPrint@str)
	line	75
	
l547:	
;TestOut.c: 75: while (*str)
	goto	l553
	
l34:	
	line	76
	
l549:	
;TestOut.c: 76: dataCtrl(*str++);
	movf	(lcdPrint@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_dataCtrl
	
l551:	
	movlw	(01h)
	movwf	(??_lcdPrint+0)+0
	movf	(??_lcdPrint+0)+0,w
	addwf	(lcdPrint@str),f
	goto	l553
	
l33:	
	line	75
	
l553:	
	movf	(lcdPrint@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u51
	goto	u50
u51:
	goto	l549
u50:
	goto	l36
	
l35:	
	line	77
	
l36:	
	return
	opt stack 0
GLOBAL	__end_of_lcdPrint
	__end_of_lcdPrint:
	signat	_lcdPrint,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 35 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\TestOut.c"
;; Parameters:    Size  Location     Type
;;  DATA            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  DATA            1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_lcdPrint
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	35
global __ptext2
__ptext2:	;psect for function _dataCtrl
psect	text2
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\TestOut.c"
	line	35
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg+status,2+status,0+pclath+cstack]
;dataCtrl@DATA stored from wreg
	movwf	(dataCtrl@DATA)
	line	36
	
l517:	
;TestOut.c: 36: PORTB = DATA;
	movf	(dataCtrl@DATA),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	37
	
l519:	
;TestOut.c: 37: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	38
	
l521:	
;TestOut.c: 38: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	39
	
l523:	
;TestOut.c: 39: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	line	40
	
l525:	
;TestOut.c: 40: delay(1);
	movlw	(01h)
	fcall	_delay
	line	41
	
l527:	
;TestOut.c: 41: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	42
	
l529:	
;TestOut.c: 42: delay(1);
	movlw	(01h)
	fcall	_delay
	line	43
	
l24:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 61 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\TestOut.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	61
global __ptext3
__ptext3:	;psect for function _initLCD
psect	text3
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\TestOut.c"
	line	61
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+pclath+cstack]
	line	62
	
l545:	
;TestOut.c: 62: delay(20);
	movlw	(014h)
	fcall	_delay
	line	63
;TestOut.c: 63: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	64
;TestOut.c: 64: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	65
;TestOut.c: 65: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	66
;TestOut.c: 66: delay(5);
	movlw	(05h)
	fcall	_delay
	line	67
;TestOut.c: 67: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	68
;TestOut.c: 68: instCtrl(0x0C);
	movlw	(0Ch)
	fcall	_instCtrl
	line	69
	
l30:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 48 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\TestOut.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_delay
;; This function is called by:
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	48
global __ptext4
__ptext4:	;psect for function _instCtrl
psect	text4
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\TestOut.c"
	line	48
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _instCtrl: [wreg+status,2+status,0+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	49
	
l531:	
;TestOut.c: 49: PORTB = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	50
	
l533:	
;TestOut.c: 50: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	51
	
l535:	
;TestOut.c: 51: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	52
	
l537:	
;TestOut.c: 52: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	line	53
	
l539:	
;TestOut.c: 53: delay(1);
	movlw	(01h)
	fcall	_delay
	line	54
	
l541:	
;TestOut.c: 54: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	55
	
l543:	
;TestOut.c: 55: delay(1);
	movlw	(01h)
	fcall	_delay
	line	56
	
l27:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 25 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\TestOut.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    1[COMMON] unsigned char 
;;  j               2    2[COMMON] unsigned int 
;;  i               1    4[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dataCtrl
;;		_instCtrl
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	25
global __ptext5
__ptext5:	;psect for function _delay
psect	text5
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\TestOut.c"
	line	25
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 5
; Regs used in _delay: [wreg+status,2+status,0]
;delay@cnt stored from wreg
	movwf	(delay@cnt)
	line	28
	
l499:	
;TestOut.c: 26: unsigned char i;
;TestOut.c: 27: unsigned int j;
;TestOut.c: 28: for (i = cnt; i != 0; i--)
	movf	(delay@cnt),w
	movwf	(??_delay+0)+0
	movf	(??_delay+0)+0,w
	movwf	(delay@i)
	
l501:	
	movf	(delay@i),f
	skipz
	goto	u11
	goto	u10
u11:
	goto	l505
u10:
	goto	l21
	
l503:	
	goto	l21
	line	29
	
l17:	
	
l505:	
;TestOut.c: 29: for (j = 0; j < 1000; j++) {}
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l507:	
	movlw	high(03E8h)
	subwf	(delay@j+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay@j),w
	skipc
	goto	u21
	goto	u20
u21:
	goto	l511
u20:
	goto	l513
	
l509:	
	goto	l513
	
l19:	
	
l511:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	movlw	high(03E8h)
	subwf	(delay@j+1),w
	movlw	low(03E8h)
	skipnz
	subwf	(delay@j),w
	skipc
	goto	u31
	goto	u30
u31:
	goto	l511
u30:
	goto	l513
	
l20:	
	line	28
	
l513:	
	movlw	low(01h)
	subwf	(delay@i),f
	
l515:	
	movf	(delay@i),f
	skipz
	goto	u41
	goto	u40
u41:
	goto	l505
u40:
	goto	l21
	
l18:	
	line	30
	
l21:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
global	___latbits
___latbits	equ	2
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp
	global	wtemp0
	wtemp set btemp
	wtemp0 set btemp
	global	wtemp1
	wtemp1 set btemp+2
	global	wtemp2
	wtemp2 set btemp+4
	global	wtemp3
	wtemp3 set btemp+6
	global	wtemp4
	wtemp4 set btemp+8
	global	wtemp5
	wtemp5 set btemp+10
	global	wtemp6
	wtemp6 set btemp+1
	global	ttemp
	global	ttemp0
	ttemp set btemp
	ttemp0 set btemp
	global	ttemp1
	ttemp1 set btemp+3
	global	ttemp2
	ttemp2 set btemp+6
	global	ttemp3
	ttemp3 set btemp+9
	global	ttemp4
	ttemp4 set btemp+1
	global	ltemp
	global	ltemp0
	ltemp set btemp
	ltemp0 set btemp
	global	ltemp1
	ltemp1 set btemp+4
	global	ltemp2
	ltemp2 set btemp+8
	global	ltemp3
	ltemp3 set btemp+2
	end
