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
	FNCALL	_main,___awdiv
	FNCALL	_main,___awmod
	FNCALL	_main,_dataCtrl
	FNCALL	_main,_delay
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay
	FNCALL	_dataCtrl,_delay
	FNROOT	_main
	global	main@F1103
psect	idataBANK0,class=CODE,space=0,delta=2,noexec
global __pidataBANK0
__pidataBANK0:
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA2\LE2-3\LE2-3.c"
	line	52

;initializer for main@F1103
	retlw	0
	retlw	040h
	retlw	014h
	retlw	054h
	global	_PORTB
_PORTB	set	0x6
	global	_PORTD
_PORTD	set	0x8
	global	_RC0
_RC0	set	0x38
	global	_RC1
_RC1	set	0x39
	global	_RC2
_RC2	set	0x3A
	global	_RD4
_RD4	set	0x44
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
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
	file	"LE2-3.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	dataBANK0,class=BANK0,space=1,noexec
global __pdataBANK0
__pdataBANK0:
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA2\LE2-3\LE2-3.c"
	line	52
main@F1103:
       ds      4

	file	"LE2-3.as"
	line	#
; Initialize objects allocated to BANK0
	global __pidataBANK0
psect cinit,class=CODE,delta=2,merge=1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	fcall	__pidataBANK0+0		;fetch initializer
	movwf	__pdataBANK0+0&07fh		
	fcall	__pidataBANK0+1		;fetch initializer
	movwf	__pdataBANK0+1&07fh		
	fcall	__pidataBANK0+2		;fetch initializer
	movwf	__pdataBANK0+2&07fh		
	fcall	__pidataBANK0+3		;fetch initializer
	movwf	__pdataBANK0+3&07fh		
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
?_instCtrl:	; 0 bytes @ 0x0
?_dataCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	?___awdiv
?___awdiv:	; 2 bytes @ 0x0
	global	?___awmod
?___awmod:	; 2 bytes @ 0x0
	global	___awdiv@divisor
___awdiv@divisor:	; 2 bytes @ 0x0
	global	___awmod@divisor
___awmod@divisor:	; 2 bytes @ 0x0
	ds	2
	global	delay@cnt
delay@cnt:	; 1 bytes @ 0x2
	global	___awdiv@dividend
___awdiv@dividend:	; 2 bytes @ 0x2
	global	___awmod@dividend
___awmod@dividend:	; 2 bytes @ 0x2
	ds	1
	global	delay@i
delay@i:	; 2 bytes @ 0x3
	ds	1
??___awdiv:	; 0 bytes @ 0x4
??___awmod:	; 0 bytes @ 0x4
	ds	1
	global	___awdiv@counter
___awdiv@counter:	; 1 bytes @ 0x5
	global	___awmod@counter
___awmod@counter:	; 1 bytes @ 0x5
	global	delay@j
delay@j:	; 2 bytes @ 0x5
	ds	1
	global	___awdiv@sign
___awdiv@sign:	; 1 bytes @ 0x6
	global	___awmod@sign
___awmod@sign:	; 1 bytes @ 0x6
	ds	1
??_instCtrl:	; 0 bytes @ 0x7
??_dataCtrl:	; 0 bytes @ 0x7
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x7
	global	dataCtrl@INST
dataCtrl@INST:	; 1 bytes @ 0x7
	global	___awdiv@quotient
___awdiv@quotient:	; 2 bytes @ 0x7
	ds	1
??_initLCD:	; 0 bytes @ 0x8
	ds	1
??_main:	; 0 bytes @ 0x9
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	main@rowAddr
main@rowAddr:	; 4 bytes @ 0x0
	ds	4
	global	main@row
main@row:	; 2 bytes @ 0x4
	ds	2
	global	main@valid
main@valid:	; 2 bytes @ 0x6
	ds	2
	global	main@DATA
main@DATA:	; 1 bytes @ 0x8
	ds	1
	global	main@chars
main@chars:	; 2 bytes @ 0x9
	ds	2
	global	main@ch
main@ch:	; 1 bytes @ 0xB
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    0
;!    Data        4
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      10
;!    BANK0            80     12      16
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    None.


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->___awdiv
;!    _initLCD->_instCtrl
;!    _instCtrl->_delay
;!    _dataCtrl->_delay
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
;;Main: autosize = 0, tempsize = 1, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                13    13      0    1642
;!                                              9 COMMON     1     1      0
;!                                              0 BANK0     12    12      0
;!                            ___awdiv
;!                            ___awmod
;!                           _dataCtrl
;!                              _delay
;!                            _initLCD
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     250
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0     136
;!                                              7 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _dataCtrl                                             1     1      0     136
;!                                              7 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _delay                                                7     7      0     114
;!                                              0 COMMON     7     7      0
;! ---------------------------------------------------------------------------------
;! (1) ___awmod                                              7     3      4     402
;!                                              0 COMMON     7     3      4
;! ---------------------------------------------------------------------------------
;! (1) ___awdiv                                              9     5      4     406
;!                                              0 COMMON     9     5      4
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___awdiv
;!   ___awmod
;!   _dataCtrl
;!     _delay
;!   _delay
;!   _initLCD
;!     _delay
;!     _instCtrl
;!       _delay
;!   _instCtrl
;!     _delay
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BANK3               60      0       0       9        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!BANK2               60      0       0      11        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITSFR2              0      0       0       5        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!SFR1                 0      0       0       2        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!BANK0               50      C      10       5       20.0%
;!BITBANK0            50      0       0       4        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR0              0      0       0       1        0.0%
;!COMMON               E      A       A       1       71.4%
;!BITCOMMON            E      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!DATA                 0      0      1A      12        0.0%
;!ABS                  0      0      1A       3        0.0%
;!NULL                 0      0       0       0        0.0%
;!STACK                0      0       0       2        0.0%
;!EEDATA             100      0       0       0        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 45 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA2\LE2-3\LE2-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  row             2    4[BANK0 ] int 
;;  valid           2    6[BANK0 ] int 
;;  ch              1   11[BANK0 ] unsigned char 
;;  rowAddr         4    0[BANK0 ] unsigned char [4]
;;  chars           2    9[BANK0 ] int 
;;  DATA            1    8[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0      12       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1      12       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___awdiv
;;		___awmod
;;		_dataCtrl
;;		_delay
;;		_initLCD
;;		_instCtrl
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA2\LE2-3\LE2-3.c"
	line	45
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA2\LE2-3\LE2-3.c"
	line	45
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	47
	
l849:	
;LE2-3.c: 46: unsigned char DATA;
;LE2-3.c: 47: TRISA = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(133)^080h	;volatile
	line	48
;LE2-3.c: 48: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	49
;LE2-3.c: 49: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	50
	
l851:	
;LE2-3.c: 50: TRISD = 0xFF;
	movlw	(0FFh)
	movwf	(136)^080h	;volatile
	line	52
	
l853:	
;LE2-3.c: 52: initLCD();
	fcall	_initLCD
	line	54
	
l855:	
;LE2-3.c: 54: unsigned char rowAddr[4] = {0x00, 0x40, 0x14, 0x54};
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@F1103+3),w
	movwf	(main@rowAddr+3)
	movf	(main@F1103+2),w
	movwf	(main@rowAddr+2)
	movf	(main@F1103+1),w
	movwf	(main@rowAddr+1)
	movf	(main@F1103),w
	movwf	(main@rowAddr)

	line	55
	
l857:	
;LE2-3.c: 55: int chars = 0;
	clrf	(main@chars)
	clrf	(main@chars+1)
	line	57
;LE2-3.c: 57: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	goto	l42
	line	59
;LE2-3.c: 59: while(1){
	
l41:	
	line	60
;LE2-3.c: 60: while (!RD4){}
	goto	l42
	
l43:	
	
l42:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u521
	goto	u520
u521:
	goto	l42
u520:
	goto	l859
	
l44:	
	line	62
	
l859:	
;LE2-3.c: 62: DATA = PORTD & 0x0F;
	movf	(8),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@DATA)
	line	64
	
l861:	
;LE2-3.c: 64: unsigned char ch = 0;
	clrf	(main@ch)
	line	65
;LE2-3.c: 65: int valid = 1;
	movlw	low(01h)
	movwf	(main@valid)
	movlw	high(01h)
	movwf	((main@valid))+1
	line	67
;LE2-3.c: 67: switch(DATA){
	goto	l891
	line	68
;LE2-3.c: 68: case 0x00: ch = '1'; break;
	
l46:	
	
l863:	
	movlw	(031h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@ch)
	goto	l893
	line	69
;LE2-3.c: 69: case 0x01: ch = '2'; break;
	
l48:	
	
l865:	
	movlw	(032h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@ch)
	goto	l893
	line	70
;LE2-3.c: 70: case 0x02: ch = '3'; break;
	
l49:	
	
l867:	
	movlw	(033h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@ch)
	goto	l893
	line	71
;LE2-3.c: 71: case 0x04: ch = '4'; break;
	
l50:	
	
l869:	
	movlw	(034h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@ch)
	goto	l893
	line	72
;LE2-3.c: 72: case 0x05: ch = '5'; break;
	
l51:	
	
l871:	
	movlw	(035h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@ch)
	goto	l893
	line	73
;LE2-3.c: 73: case 0x06: ch = '6'; break;
	
l52:	
	
l873:	
	movlw	(036h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@ch)
	goto	l893
	line	74
;LE2-3.c: 74: case 0x08: ch = '7'; break;
	
l53:	
	
l875:	
	movlw	(037h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@ch)
	goto	l893
	line	75
;LE2-3.c: 75: case 0x09: ch = '8'; break;
	
l54:	
	
l877:	
	movlw	(038h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@ch)
	goto	l893
	line	76
;LE2-3.c: 76: case 0x0A: ch = '9'; break;
	
l55:	
	
l879:	
	movlw	(039h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@ch)
	goto	l893
	line	77
;LE2-3.c: 77: case 0x0C: ch = '*'; break;
	
l56:	
	
l881:	
	movlw	(02Ah)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@ch)
	goto	l893
	line	78
;LE2-3.c: 78: case 0x0D: ch = '0'; break;
	
l57:	
	
l883:	
	movlw	(030h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@ch)
	goto	l893
	line	79
;LE2-3.c: 79: case 0x0E: ch = '#'; break;
	
l58:	
	
l885:	
	movlw	(023h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@ch)
	goto	l893
	line	80
;LE2-3.c: 80: default: valid = 0; break;
	
l59:	
	
l887:	
	clrf	(main@valid)
	clrf	(main@valid+1)
	goto	l893
	line	81
	
l889:	
;LE2-3.c: 81: }
	goto	l893
	line	67
	
l45:	
	
l891:	
	movf	(main@DATA),w
	; Switch size 1, requested type "space"
; Number of cases is 12, Range of values is 0 to 14
; switch strategies available:
; Name         Instructions Cycles
; simple_byte           37    19 (average)
; direct_byte           53     8 (fixed)
; jumptable            260     6 (fixed)
;	Chosen strategy is simple_byte

	opt asmopt_off
	xorlw	0^0	; case 0
	skipnz
	goto	l863
	xorlw	1^0	; case 1
	skipnz
	goto	l865
	xorlw	2^1	; case 2
	skipnz
	goto	l867
	xorlw	4^2	; case 4
	skipnz
	goto	l869
	xorlw	5^4	; case 5
	skipnz
	goto	l871
	xorlw	6^5	; case 6
	skipnz
	goto	l873
	xorlw	8^6	; case 8
	skipnz
	goto	l875
	xorlw	9^8	; case 9
	skipnz
	goto	l877
	xorlw	10^9	; case 10
	skipnz
	goto	l879
	xorlw	12^10	; case 12
	skipnz
	goto	l881
	xorlw	13^12	; case 13
	skipnz
	goto	l883
	xorlw	14^13	; case 14
	skipnz
	goto	l885
	goto	l887
	opt asmopt_on

	line	81
	
l47:	
	line	83
	
l893:	
;LE2-3.c: 83: if (valid){
	movf	(main@valid+1),w
	iorwf	(main@valid),w
	skipnz
	goto	u531
	goto	u530
u531:
	goto	l915
u530:
	line	85
	
l895:	
;LE2-3.c: 85: if (chars % 20 == 0){
	movlw	low(014h)
	movwf	(___awmod@divisor)
	movlw	high(014h)
	movwf	((___awmod@divisor))+1
	movf	(main@chars+1),w
	clrf	(___awmod@dividend+1)
	addwf	(___awmod@dividend+1)
	movf	(main@chars),w
	clrf	(___awmod@dividend)
	addwf	(___awmod@dividend)

	fcall	___awmod
	movf	((1+(?___awmod))),w
	iorwf	((0+(?___awmod))),w
	skipz
	goto	u541
	goto	u540
u541:
	goto	l901
u540:
	line	86
	
l897:	
;LE2-3.c: 86: int row = chars / 20;
	movlw	low(014h)
	movwf	(___awdiv@divisor)
	movlw	high(014h)
	movwf	((___awdiv@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@chars+1),w
	clrf	(___awdiv@dividend+1)
	addwf	(___awdiv@dividend+1)
	movf	(main@chars),w
	clrf	(___awdiv@dividend)
	addwf	(___awdiv@dividend)

	fcall	___awdiv
	movf	(1+(?___awdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@row+1)
	addwf	(main@row+1)
	movf	(0+(?___awdiv)),w
	clrf	(main@row)
	addwf	(main@row)

	line	87
	
l899:	
;LE2-3.c: 87: instCtrl(0x80 | rowAddr[row]);
	movf	(main@row),w
	addlw	main@rowAddr&0ffh
	movwf	fsr0
	bcf	status, 7	;select IRP bank0
	movf	indf,w
	iorlw	080h
	fcall	_instCtrl
	goto	l901
	line	88
	
l61:	
	line	90
	
l901:	
;LE2-3.c: 88: }
;LE2-3.c: 90: dataCtrl(ch);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(main@ch),w
	fcall	_dataCtrl
	line	91
	
l903:	
;LE2-3.c: 91: chars++;
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@chars),f
	skipnc
	incf	(main@chars+1),f
	movlw	high(01h)
	addwf	(main@chars+1),f
	line	93
	
l905:	
;LE2-3.c: 93: if (chars == 80){
	movlw	050h
	xorwf	(main@chars),w
	iorwf	(main@chars+1),w
	skipz
	goto	u551
	goto	u550
u551:
	goto	l915
u550:
	line	94
	
l907:	
;LE2-3.c: 94: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	95
	
l909:	
;LE2-3.c: 95: chars = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@chars)
	clrf	(main@chars+1)
	line	96
	
l911:	
;LE2-3.c: 96: delay(2);
	movlw	(02h)
	fcall	_delay
	line	97
	
l913:	
;LE2-3.c: 97: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	goto	l915
	line	98
	
l62:	
	goto	l915
	line	99
	
l60:	
	line	102
	
l915:	
;LE2-3.c: 98: }
;LE2-3.c: 99: }
;LE2-3.c: 102: delay(50);
	movlw	(032h)
	fcall	_delay
	line	103
;LE2-3.c: 103: while (!RD4){}
	goto	l63
	
l64:	
	
l63:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(68/8),(68)&7	;volatile
	goto	u561
	goto	u560
u561:
	goto	l63
u560:
	goto	l42
	
l65:	
	goto	l42
	line	104
	
l66:	
	line	59
	goto	l42
	
l67:	
	line	105
	
l68:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 36 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA2\LE2-3\LE2-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
psect	text1,local,class=CODE,delta=2,merge=1
	line	36
global __ptext1
__ptext1:	;psect for function _initLCD
psect	text1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA2\LE2-3\LE2-3.c"
	line	36
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	37
	
l765:	
;LE2-3.c: 37: delay(1);
	movlw	(01h)
	fcall	_delay
	line	38
;LE2-3.c: 38: instCtrl (0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	39
;LE2-3.c: 39: instCtrl (0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	40
;LE2-3.c: 40: instCtrl (0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	41
;LE2-3.c: 41: instCtrl (0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	42
;LE2-3.c: 42: instCtrl (0x0F);
	movlw	(0Fh)
	fcall	_instCtrl
	line	43
	
l36:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 18 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA2\LE2-3\LE2-3.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
psect	text2,local,class=CODE,delta=2,merge=1
	line	18
global __ptext2
__ptext2:	;psect for function _instCtrl
psect	text2
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA2\LE2-3\LE2-3.c"
	line	18
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	19
	
l741:	
;LE2-3.c: 19: PORTB = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	20
	
l743:	
;LE2-3.c: 20: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	21
	
l745:	
;LE2-3.c: 21: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	22
	
l747:	
;LE2-3.c: 22: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	line	23
	
l749:	
;LE2-3.c: 23: delay(1);
	movlw	(01h)
	fcall	_delay
	line	24
	
l751:	
;LE2-3.c: 24: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	25
	
l30:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 27 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA2\LE2-3\LE2-3.c"
;; Parameters:    Size  Location     Type
;;  INST            1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  INST            1    7[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1, pclath, cstack
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
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	27
global __ptext3
__ptext3:	;psect for function _dataCtrl
psect	text3
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA2\LE2-3\LE2-3.c"
	line	27
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@INST stored from wreg
	movwf	(dataCtrl@INST)
	line	28
	
l753:	
;LE2-3.c: 28: PORTB = INST;
	movf	(dataCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	29
	
l755:	
;LE2-3.c: 29: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	30
	
l757:	
;LE2-3.c: 30: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	31
	
l759:	
;LE2-3.c: 31: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	line	32
	
l761:	
;LE2-3.c: 32: delay(1);
	movlw	(01h)
	fcall	_delay
	line	33
	
l763:	
;LE2-3.c: 33: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	34
	
l33:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 11 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA2\LE2-3\LE2-3.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    2[COMMON] unsigned char 
;;  j               2    5[COMMON] int 
;;  i               2    3[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, btemp+1
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         5       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_instCtrl
;;		_dataCtrl
;;		_initLCD
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	11
global __ptext4
__ptext4:	;psect for function _delay
psect	text4
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA2\LE2-3\LE2-3.c"
	line	11
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 6
; Regs used in _delay: [wreg+status,2+status,0+btemp+1]
;delay@cnt stored from wreg
	movwf	(delay@cnt)
	line	13
	
l721:	
;LE2-3.c: 12: int i, j;
;LE2-3.c: 13: for (i = cnt; i != 0; i--){
	movf	(delay@cnt),w
	movwf	(??_delay+0)+0
	clrf	(??_delay+0)+0+1
	movf	0+(??_delay+0)+0,w
	movwf	(delay@i)
	movf	1+(??_delay+0)+0,w
	movwf	(delay@i+1)
	
l723:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u291
	goto	u290
u291:
	goto	l727
u290:
	goto	l27
	
l725:	
	goto	l27
	
l23:	
	line	14
	
l727:	
;LE2-3.c: 14: for (j = 0; j < 1000; j++){}
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l729:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u305
	movlw	low(03E8h)
	subwf	(delay@j),w
u305:

	skipc
	goto	u301
	goto	u300
u301:
	goto	l733
u300:
	goto	l737
	
l731:	
	goto	l737
	
l25:	
	
l733:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l735:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u315
	movlw	low(03E8h)
	subwf	(delay@j),w
u315:

	skipc
	goto	u311
	goto	u310
u311:
	goto	l733
u310:
	goto	l737
	
l26:	
	line	13
	
l737:	
	movlw	low(-1)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(-1)
	addwf	(delay@i+1),f
	
l739:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u321
	goto	u320
u321:
	goto	l727
u320:
	goto	l27
	
l24:	
	line	16
	
l27:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	___awmod

;; *************** function ___awmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
global __ptext5
__ptext5:	;psect for function ___awmod
psect	text5
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awmod.c"
	line	6
	global	__size_of___awmod
	__size_of___awmod	equ	__end_of___awmod-___awmod
	
___awmod:	
;incstack = 0
	opt	stack 7
; Regs used in ___awmod: [wreg+status,2+status,0]
	line	13
	
l811:	
	clrf	(___awmod@sign)
	line	14
	
l813:	
	btfss	(___awmod@dividend+1),7
	goto	u431
	goto	u430
u431:
	goto	l819
u430:
	line	15
	
l815:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	line	16
	
l817:	
	clrf	(___awmod@sign)
	incf	(___awmod@sign),f
	goto	l819
	line	17
	
l287:	
	line	18
	
l819:	
	btfss	(___awmod@divisor+1),7
	goto	u441
	goto	u440
u441:
	goto	l823
u440:
	line	19
	
l821:	
	comf	(___awmod@divisor),f
	comf	(___awmod@divisor+1),f
	incf	(___awmod@divisor),f
	skipnz
	incf	(___awmod@divisor+1),f
	goto	l823
	
l288:	
	line	20
	
l823:	
	movf	(___awmod@divisor+1),w
	iorwf	(___awmod@divisor),w
	skipnz
	goto	u451
	goto	u450
u451:
	goto	l841
u450:
	line	21
	
l825:	
	clrf	(___awmod@counter)
	incf	(___awmod@counter),f
	line	22
	goto	l831
	
l291:	
	line	23
	
l827:	
	movlw	01h
	
u465:
	clrc
	rlf	(___awmod@divisor),f
	rlf	(___awmod@divisor+1),f
	addlw	-1
	skipz
	goto	u465
	line	24
	
l829:	
	movlw	(01h)
	movwf	(??___awmod+0)+0
	movf	(??___awmod+0)+0,w
	addwf	(___awmod@counter),f
	goto	l831
	line	25
	
l290:	
	line	22
	
l831:	
	btfss	(___awmod@divisor+1),(15)&7
	goto	u471
	goto	u470
u471:
	goto	l827
u470:
	goto	l833
	
l292:	
	goto	l833
	line	26
	
l293:	
	line	27
	
l833:	
	movf	(___awmod@divisor+1),w
	subwf	(___awmod@dividend+1),w
	skipz
	goto	u485
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),w
u485:
	skipc
	goto	u481
	goto	u480
u481:
	goto	l837
u480:
	line	28
	
l835:	
	movf	(___awmod@divisor),w
	subwf	(___awmod@dividend),f
	movf	(___awmod@divisor+1),w
	skipc
	decf	(___awmod@dividend+1),f
	subwf	(___awmod@dividend+1),f
	goto	l837
	
l294:	
	line	29
	
l837:	
	movlw	01h
	
u495:
	clrc
	rrf	(___awmod@divisor+1),f
	rrf	(___awmod@divisor),f
	addlw	-1
	skipz
	goto	u495
	line	30
	
l839:	
	movlw	low(01h)
	subwf	(___awmod@counter),f
	btfss	status,2
	goto	u501
	goto	u500
u501:
	goto	l833
u500:
	goto	l841
	
l295:	
	goto	l841
	line	31
	
l289:	
	line	32
	
l841:	
	movf	(___awmod@sign),w
	skipz
	goto	u510
	goto	l845
u510:
	line	33
	
l843:	
	comf	(___awmod@dividend),f
	comf	(___awmod@dividend+1),f
	incf	(___awmod@dividend),f
	skipnz
	incf	(___awmod@dividend+1),f
	goto	l845
	
l296:	
	line	34
	
l845:	
	movf	(___awmod@dividend+1),w
	clrf	(?___awmod+1)
	addwf	(?___awmod+1)
	movf	(___awmod@dividend),w
	clrf	(?___awmod)
	addwf	(?___awmod)

	goto	l297
	
l847:	
	line	35
	
l297:	
	return
	opt stack 0
GLOBAL	__end_of___awmod
	__end_of___awmod:
	signat	___awmod,8314
	global	___awdiv

;; *************** function ___awdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    0[COMMON] int 
;;  dividend        2    2[COMMON] int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[COMMON] int 
;;  sign            1    6[COMMON] unsigned char 
;;  counter         1    5[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         9       0       0       0       0
;;Total ram usage:        9 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
global __ptext6
__ptext6:	;psect for function ___awdiv
psect	text6
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\awdiv.c"
	line	6
	global	__size_of___awdiv
	__size_of___awdiv	equ	__end_of___awdiv-___awdiv
	
___awdiv:	
;incstack = 0
	opt	stack 7
; Regs used in ___awdiv: [wreg+status,2+status,0]
	line	14
	
l767:	
	clrf	(___awdiv@sign)
	line	15
	
l769:	
	btfss	(___awdiv@divisor+1),7
	goto	u331
	goto	u330
u331:
	goto	l775
u330:
	line	16
	
l771:	
	comf	(___awdiv@divisor),f
	comf	(___awdiv@divisor+1),f
	incf	(___awdiv@divisor),f
	skipnz
	incf	(___awdiv@divisor+1),f
	line	17
	
l773:	
	clrf	(___awdiv@sign)
	incf	(___awdiv@sign),f
	goto	l775
	line	18
	
l274:	
	line	19
	
l775:	
	btfss	(___awdiv@dividend+1),7
	goto	u341
	goto	u340
u341:
	goto	l781
u340:
	line	20
	
l777:	
	comf	(___awdiv@dividend),f
	comf	(___awdiv@dividend+1),f
	incf	(___awdiv@dividend),f
	skipnz
	incf	(___awdiv@dividend+1),f
	line	21
	
l779:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	xorwf	(___awdiv@sign),f
	goto	l781
	line	22
	
l275:	
	line	23
	
l781:	
	clrf	(___awdiv@quotient)
	clrf	(___awdiv@quotient+1)
	line	24
	
l783:	
	movf	(___awdiv@divisor+1),w
	iorwf	(___awdiv@divisor),w
	skipnz
	goto	u351
	goto	u350
u351:
	goto	l803
u350:
	line	25
	
l785:	
	clrf	(___awdiv@counter)
	incf	(___awdiv@counter),f
	line	26
	goto	l791
	
l278:	
	line	27
	
l787:	
	movlw	01h
	
u365:
	clrc
	rlf	(___awdiv@divisor),f
	rlf	(___awdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u365
	line	28
	
l789:	
	movlw	(01h)
	movwf	(??___awdiv+0)+0
	movf	(??___awdiv+0)+0,w
	addwf	(___awdiv@counter),f
	goto	l791
	line	29
	
l277:	
	line	26
	
l791:	
	btfss	(___awdiv@divisor+1),(15)&7
	goto	u371
	goto	u370
u371:
	goto	l787
u370:
	goto	l793
	
l279:	
	goto	l793
	line	30
	
l280:	
	line	31
	
l793:	
	movlw	01h
	
u385:
	clrc
	rlf	(___awdiv@quotient),f
	rlf	(___awdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u385
	line	32
	movf	(___awdiv@divisor+1),w
	subwf	(___awdiv@dividend+1),w
	skipz
	goto	u395
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),w
u395:
	skipc
	goto	u391
	goto	u390
u391:
	goto	l799
u390:
	line	33
	
l795:	
	movf	(___awdiv@divisor),w
	subwf	(___awdiv@dividend),f
	movf	(___awdiv@divisor+1),w
	skipc
	decf	(___awdiv@dividend+1),f
	subwf	(___awdiv@dividend+1),f
	line	34
	
l797:	
	bsf	(___awdiv@quotient)+(0/8),(0)&7
	goto	l799
	line	35
	
l281:	
	line	36
	
l799:	
	movlw	01h
	
u405:
	clrc
	rrf	(___awdiv@divisor+1),f
	rrf	(___awdiv@divisor),f
	addlw	-1
	skipz
	goto	u405
	line	37
	
l801:	
	movlw	low(01h)
	subwf	(___awdiv@counter),f
	btfss	status,2
	goto	u411
	goto	u410
u411:
	goto	l793
u410:
	goto	l803
	
l282:	
	goto	l803
	line	38
	
l276:	
	line	39
	
l803:	
	movf	(___awdiv@sign),w
	skipz
	goto	u420
	goto	l807
u420:
	line	40
	
l805:	
	comf	(___awdiv@quotient),f
	comf	(___awdiv@quotient+1),f
	incf	(___awdiv@quotient),f
	skipnz
	incf	(___awdiv@quotient+1),f
	goto	l807
	
l283:	
	line	41
	
l807:	
	movf	(___awdiv@quotient+1),w
	clrf	(?___awdiv+1)
	addwf	(?___awdiv+1)
	movf	(___awdiv@quotient),w
	clrf	(?___awdiv)
	addwf	(?___awdiv)

	goto	l284
	
l809:	
	line	42
	
l284:	
	return
	opt stack 0
GLOBAL	__end_of___awdiv
	__end_of___awdiv:
	signat	___awdiv,8314
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
