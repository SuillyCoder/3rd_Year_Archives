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
	FNCALL	_main,_delay_ms
	FNCALL	_main,_updatePWM
	FNCALL	_updatePWM,___lldiv
	FNCALL	_updatePWM,___lmul
	FNROOT	_main
	FNCALL	intlevel1,_isr
	global	intlevel1
	FNROOT	intlevel1
	global	_dutyTable
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
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-7\LE4-7.c"
	line	24
_dutyTable:
	retlw	0Ah
	retlw	019h
	retlw	032h
	retlw	04Bh
	retlw	05Ah
	global __end_of_dutyTable
__end_of_dutyTable:
	global	_dutyTable
	global	_swPWM_highTicks
	global	_swPWM_period
	global	_swPWM_tick
	global	_dutyIdx
	global	_freqIdx
	global	_swPWM_active
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_INTCONbits
_INTCONbits	set	0xB
	global	_PIR1bits
_PIR1bits	set	0xC
	global	_T2CON
_T2CON	set	0x12
	global	_TMR2
_TMR2	set	0x11
	global	_RB0
_RB0	set	0x30
	global	_RB1
_RB1	set	0x31
	global	_RC2
_RC2	set	0x3A
	global	_TMR2ON
_TMR2ON	set	0x92
	global	_ADCON1
_ADCON1	set	0x9F
	global	_PIE1bits
_PIE1bits	set	0x8C
	global	_PR2
_PR2	set	0x92
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISC2
_TRISC2	set	0x43A
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
	file	"LE4-7.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_swPWM_highTicks:
       ds      2

_swPWM_period:
       ds      2

_swPWM_tick:
       ds      2

_dutyIdx:
       ds      1

_freqIdx:
       ds      1

_swPWM_active:
       ds      1

	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
	clrf	((__pbssBANK0)+3)&07Fh
	clrf	((__pbssBANK0)+4)&07Fh
	clrf	((__pbssBANK0)+5)&07Fh
	clrf	((__pbssBANK0)+6)&07Fh
	clrf	((__pbssBANK0)+7)&07Fh
	clrf	((__pbssBANK0)+8)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_updatePWM:	; 0 bytes @ 0x0
?_isr:	; 0 bytes @ 0x0
??_isr:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	4
?_delay_ms:	; 0 bytes @ 0x4
??___lmul:	; 0 bytes @ 0x4
	global	delay_ms@ms
delay_ms@ms:	; 2 bytes @ 0x4
	ds	1
	global	___lmul@product
___lmul@product:	; 4 bytes @ 0x5
	ds	1
??_delay_ms:	; 0 bytes @ 0x6
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x6
	ds	2
	global	delay_ms@j
delay_ms@j:	; 2 bytes @ 0x8
	ds	1
??___lldiv:	; 0 bytes @ 0x9
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
	global	?___lmul
?___lmul:	; 4 bytes @ 0x0
	global	___lmul@multiplier
___lmul@multiplier:	; 4 bytes @ 0x0
	ds	4
	global	___lmul@multiplicand
___lmul@multiplicand:	; 4 bytes @ 0x4
	ds	4
	global	?___lldiv
?___lldiv:	; 4 bytes @ 0x8
	global	___lldiv@divisor
___lldiv@divisor:	; 4 bytes @ 0x8
	ds	4
	global	___lldiv@dividend
___lldiv@dividend:	; 4 bytes @ 0xC
	ds	4
	global	___lldiv@quotient
___lldiv@quotient:	; 4 bytes @ 0x10
	ds	4
	global	___lldiv@counter
___lldiv@counter:	; 1 bytes @ 0x14
	ds	1
??_updatePWM:	; 0 bytes @ 0x15
	ds	10
	global	updatePWM@highTicks
updatePWM@highTicks:	; 2 bytes @ 0x1F
	ds	2
	global	updatePWM@dcVal
updatePWM@dcVal:	; 4 bytes @ 0x21
	ds	4
	global	updatePWM@pr2
updatePWM@pr2:	; 2 bytes @ 0x25
	ds	2
	global	updatePWM@period
updatePWM@period:	; 2 bytes @ 0x27
	ds	2
	global	updatePWM@duty
updatePWM@duty:	; 1 bytes @ 0x29
	ds	1
??_main:	; 0 bytes @ 0x2A
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    5
;!    Data        0
;!    BSS         9
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      10
;!    BANK0            80     43      52
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
;!    _main->_delay_ms
;!    _updatePWM->___lldiv
;!    ___lldiv->___lmul
;!
;!Critical Paths under _isr in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_updatePWM
;!    _updatePWM->___lldiv
;!    ___lldiv->___lmul
;!
;!Critical Paths under _isr in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _isr in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _isr in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _isr in BANK2
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
;! (0) _main                                                 1     1      0    1253
;!                                             42 BANK0      1     1      0
;!                           _delay_ms
;!                          _updatePWM
;! ---------------------------------------------------------------------------------
;! (1) _updatePWM                                           21    21      0     927
;!                                             21 BANK0     21    21      0
;!                            ___lldiv
;!                             ___lmul
;! ---------------------------------------------------------------------------------
;! (2) ___lmul                                              13     5      8     304
;!                                              4 COMMON     5     5      0
;!                                              0 BANK0      8     0      8
;! ---------------------------------------------------------------------------------
;! (2) ___lldiv                                             14     6      8     374
;!                                              9 COMMON     1     1      0
;!                                              8 BANK0     13     5      8
;!                             ___lmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _delay_ms                                             6     4      2     326
;!                                              4 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (3) _isr                                                  4     4      0       0
;!                                              0 COMMON     4     4      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay_ms
;!   _updatePWM
;!     ___lldiv
;!       ___lmul (ARG)
;!     ___lmul
;!
;! _isr (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      A       A       1       71.4%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      3E       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     2B      34       5       65.0%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      3E      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 110 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-7\LE4-7.c"
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
;;      Temps:          0       1       0       0       0
;;      Totals:         0       1       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_delay_ms
;;		_updatePWM
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-7\LE4-7.c"
	line	110
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-7\LE4-7.c"
	line	110
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	111
	
l854:	
;LE4-7.c: 111: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	112
;LE4-7.c: 112: TRISB = 0x03;
	movlw	(03h)
	movwf	(134)^080h	;volatile
	line	113
	
l856:	
;LE4-7.c: 113: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	114
	
l858:	
;LE4-7.c: 114: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	116
	
l860:	
;LE4-7.c: 116: updatePWM();
	fcall	_updatePWM
	goto	l862
	line	118
;LE4-7.c: 118: for (;;) {
	
l72:	
	line	119
	
l862:	
;LE4-7.c: 119: if (RB0 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7	;volatile
	goto	u651
	goto	u650
u651:
	goto	l73
u650:
	line	120
	
l864:	
;LE4-7.c: 120: delay_ms(50);
	movlw	low(032h)
	movwf	(delay_ms@ms)
	movlw	high(032h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	121
	
l866:	
;LE4-7.c: 121: if (RB0 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7	;volatile
	goto	u661
	goto	u660
u661:
	goto	l862
u660:
	line	122
	
l868:	
;LE4-7.c: 122: freqIdx++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_freqIdx),f	;volatile
	line	123
	
l870:	
;LE4-7.c: 123: if (freqIdx > 2) freqIdx = 0;
	movlw	(03h)
	subwf	(_freqIdx),w	;volatile
	skipc
	goto	u671
	goto	u670
u671:
	goto	l874
u670:
	
l872:	
	clrf	(_freqIdx)	;volatile
	goto	l874
	
l75:	
	line	124
	
l874:	
;LE4-7.c: 124: updatePWM();
	fcall	_updatePWM
	line	125
;LE4-7.c: 125: while (RB0 == 1);
	goto	l76
	
l77:	
	
l76:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7	;volatile
	goto	u681
	goto	u680
u681:
	goto	l76
u680:
	goto	l876
	
l78:	
	line	126
	
l876:	
;LE4-7.c: 126: delay_ms(50);
	movlw	low(032h)
	movwf	(delay_ms@ms)
	movlw	high(032h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	goto	l862
	line	127
	
l74:	
	line	128
;LE4-7.c: 127: }
;LE4-7.c: 128: } else if (RB1 == 1) {
	goto	l862
	
l73:	
	btfss	(49/8),(49)&7	;volatile
	goto	u691
	goto	u690
u691:
	goto	l862
u690:
	line	129
	
l878:	
;LE4-7.c: 129: delay_ms(50);
	movlw	low(032h)
	movwf	(delay_ms@ms)
	movlw	high(032h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	130
	
l880:	
;LE4-7.c: 130: if (RB1 == 1) {
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7	;volatile
	goto	u701
	goto	u700
u701:
	goto	l862
u700:
	line	131
	
l882:	
;LE4-7.c: 131: dutyIdx++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_dutyIdx),f	;volatile
	line	132
	
l884:	
;LE4-7.c: 132: if (dutyIdx > 4) dutyIdx = 0;
	movlw	(05h)
	subwf	(_dutyIdx),w	;volatile
	skipc
	goto	u711
	goto	u710
u711:
	goto	l888
u710:
	
l886:	
	clrf	(_dutyIdx)	;volatile
	goto	l888
	
l82:	
	line	133
	
l888:	
;LE4-7.c: 133: updatePWM();
	fcall	_updatePWM
	line	134
;LE4-7.c: 134: while (RB1 == 1);
	goto	l83
	
l84:	
	
l83:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7	;volatile
	goto	u721
	goto	u720
u721:
	goto	l83
u720:
	goto	l890
	
l85:	
	line	135
	
l890:	
;LE4-7.c: 135: delay_ms(50);
	movlw	low(032h)
	movwf	(delay_ms@ms)
	movlw	high(032h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	goto	l862
	line	136
	
l81:	
	goto	l862
	line	137
	
l80:	
	goto	l862
	line	138
	
l79:	
;LE4-7.c: 136: }
;LE4-7.c: 137: }
;LE4-7.c: 138: }
	goto	l862
	
l86:	
	line	139
	
l87:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_updatePWM

;; *************** function _updatePWM *****************
;; Defined at:
;;		line 41 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-7\LE4-7.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  period          2   39[BANK0 ] unsigned int 
;;  highTicks       2   31[BANK0 ] unsigned int 
;;  dcVal           4   33[BANK0 ] unsigned long 
;;  pr2             2   37[BANK0 ] unsigned int 
;;  duty            1   41[BANK0 ] unsigned char 
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
;;      Locals:         0      11       0       0       0
;;      Temps:          0      10       0       0       0
;;      Totals:         0      21       0       0       0
;;Total ram usage:       21 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		___lldiv
;;		___lmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	41
global __ptext1
__ptext1:	;psect for function _updatePWM
psect	text1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-7\LE4-7.c"
	line	41
	global	__size_of_updatePWM
	__size_of_updatePWM	equ	__end_of_updatePWM-_updatePWM
	
_updatePWM:	
;incstack = 0
	opt	stack 5
; Regs used in _updatePWM: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	42
	
l774:	
;LE4-7.c: 42: unsigned char duty = dutyTable[dutyIdx];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_dutyIdx),w
	addlw	low((_dutyTable)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_updatePWM+0)+0
	movf	(??_updatePWM+0)+0,w
	movwf	(updatePWM@duty)
	line	44
	
l776:	
;LE4-7.c: 44: TMR2ON = 0;
	bcf	(146/8),(146)&7	;volatile
	line	45
	
l778:	
;LE4-7.c: 45: CCP1CON = 0x00;
	clrf	(23)	;volatile
	line	46
	
l780:	
;LE4-7.c: 46: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	48
	
l782:	
;LE4-7.c: 48: if (freqIdx == 0) {
	movf	(_freqIdx),f	;volatile
	skipz
	goto	u531
	goto	u530
u531:
	goto	l804
u530:
	line	51
	
l784:	
;LE4-7.c: 51: swPWM_active = 0;
	clrf	(_swPWM_active)	;volatile
	line	53
	
l786:	
;LE4-7.c: 53: unsigned int pr2 = 249;
	movlw	low(0F9h)
	movwf	(updatePWM@pr2)
	movlw	high(0F9h)
	movwf	((updatePWM@pr2))+1
	line	55
	
l788:	
;LE4-7.c: 55: unsigned long dcVal = ((unsigned long)duty * ((unsigned long)(pr2 + 1) * 4)) / 100;
	movlw	0
	movwf	(___lldiv@divisor+3)
	movlw	0
	movwf	(___lldiv@divisor+2)
	movlw	0
	movwf	(___lldiv@divisor+1)
	movlw	064h
	movwf	(___lldiv@divisor)

	movf	(updatePWM@duty),w
	movwf	(??_updatePWM+0)+0
	clrf	(??_updatePWM+0)+0+1
	clrf	(??_updatePWM+0)+0+2
	clrf	(??_updatePWM+0)+0+3
	movf	3+(??_updatePWM+0)+0,w
	movwf	(___lmul@multiplier+3)
	movf	2+(??_updatePWM+0)+0,w
	movwf	(___lmul@multiplier+2)
	movf	1+(??_updatePWM+0)+0,w
	movwf	(___lmul@multiplier+1)
	movf	0+(??_updatePWM+0)+0,w
	movwf	(___lmul@multiplier)

	movf	(updatePWM@pr2),w
	addlw	low(01h)
	movwf	(??_updatePWM+4)+0
	movf	(updatePWM@pr2+1),w
	skipnc
	addlw	1
	addlw	high(01h)
	movwf	1+(??_updatePWM+4)+0
	movf	0+(??_updatePWM+4)+0,w
	movwf	((??_updatePWM+6)+0)
	movf	1+(??_updatePWM+4)+0,w
	movwf	((??_updatePWM+6)+0+1)
	clrf	((??_updatePWM+6)+0+2)
	clrf	((??_updatePWM+6)+0+3)
	movlw	02h
u545:
	clrc
	rlf	(??_updatePWM+6)+0,f
	rlf	(??_updatePWM+6)+1,f
	rlf	(??_updatePWM+6)+2,f
	rlf	(??_updatePWM+6)+3,f
u540:
	addlw	-1
	skipz
	goto	u545
	movf	3+(??_updatePWM+6)+0,w
	movwf	(___lmul@multiplicand+3)
	movf	2+(??_updatePWM+6)+0,w
	movwf	(___lmul@multiplicand+2)
	movf	1+(??_updatePWM+6)+0,w
	movwf	(___lmul@multiplicand+1)
	movf	0+(??_updatePWM+6)+0,w
	movwf	(___lmul@multiplicand)

	fcall	___lmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___lmul)),w
	movwf	(___lldiv@dividend+3)
	movf	(2+(?___lmul)),w
	movwf	(___lldiv@dividend+2)
	movf	(1+(?___lmul)),w
	movwf	(___lldiv@dividend+1)
	movf	(0+(?___lmul)),w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___lldiv)),w
	movwf	(updatePWM@dcVal+3)
	movf	(2+(?___lldiv)),w
	movwf	(updatePWM@dcVal+2)
	movf	(1+(?___lldiv)),w
	movwf	(updatePWM@dcVal+1)
	movf	(0+(?___lldiv)),w
	movwf	(updatePWM@dcVal)

	line	57
	
l790:	
;LE4-7.c: 57: T2CON = 0x05;
	movlw	(05h)
	movwf	(18)	;volatile
	line	58
	
l792:	
;LE4-7.c: 58: PR2 = (unsigned char)pr2;
	movf	(updatePWM@pr2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	59
	
l794:	
;LE4-7.c: 59: CCPR1L = (unsigned char)(dcVal >> 2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(updatePWM@dcVal),w
	movwf	(??_updatePWM+0)+0
	movf	(updatePWM@dcVal+1),w
	movwf	((??_updatePWM+0)+0+1)
	movf	(updatePWM@dcVal+2),w
	movwf	((??_updatePWM+0)+0+2)
	movf	(updatePWM@dcVal+3),w
	movwf	((??_updatePWM+0)+0+3)
	movlw	02h
u555:
	clrc
	rrf	(??_updatePWM+0)+3,f
	rrf	(??_updatePWM+0)+2,f
	rrf	(??_updatePWM+0)+1,f
	rrf	(??_updatePWM+0)+0,f
u550:
	addlw	-1
	skipz
	goto	u555
	movf	0+(??_updatePWM+0)+0,w
	movwf	(21)	;volatile
	line	60
	
l796:	
;LE4-7.c: 60: CCP1CON = (unsigned char)(0x0C | ((unsigned char)(dcVal & 0x03) << 4));
	movf	(updatePWM@dcVal),w
	andlw	03h
	movwf	(??_updatePWM+0)+0
	movlw	(04h)-1
u565:
	clrc
	rlf	(??_updatePWM+0)+0,f
	addlw	-1
	skipz
	goto	u565
	clrc
	rlf	(??_updatePWM+0)+0,w
	iorlw	0Ch
	movwf	(23)	;volatile
	line	61
	
l798:	
;LE4-7.c: 61: TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7	;volatile
	line	63
	
l800:	
;LE4-7.c: 63: PIE1bits.TMR2IE = 0;
	bcf	(140)^080h,1	;volatile
	line	64
	
l802:	
;LE4-7.c: 64: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	line	66
;LE4-7.c: 66: } else {
	goto	l63
	
l56:	
	line	69
	
l804:	
;LE4-7.c: 69: swPWM_active = 1;
	movlw	(01h)
	movwf	(??_updatePWM+0)+0
	movf	(??_updatePWM+0)+0,w
	movwf	(_swPWM_active)	;volatile
	line	71
;LE4-7.c: 71: unsigned int period = (freqIdx == 1) ? 20 : 200;
	movf	(_freqIdx),w	;volatile
	xorlw	01h
	skipnz
	goto	u571
	goto	u570
u571:
	goto	l808
u570:
	
l806:	
	movlw	low(0C8h)
	movwf	(updatePWM@period)
	movlw	high(0C8h)
	movwf	((updatePWM@period))+1
	goto	l810
	
l59:	
	
l808:	
	movlw	low(014h)
	movwf	(updatePWM@period)
	movlw	high(014h)
	movwf	((updatePWM@period))+1
	goto	l810
	
l61:	
	line	72
	
l810:	
;LE4-7.c: 72: unsigned int highTicks = ((unsigned long)duty * period) / 100;
	movlw	0
	movwf	(___lldiv@divisor+3)
	movlw	0
	movwf	(___lldiv@divisor+2)
	movlw	0
	movwf	(___lldiv@divisor+1)
	movlw	064h
	movwf	(___lldiv@divisor)

	movf	(updatePWM@duty),w
	movwf	(??_updatePWM+0)+0
	clrf	(??_updatePWM+0)+0+1
	clrf	(??_updatePWM+0)+0+2
	clrf	(??_updatePWM+0)+0+3
	movf	3+(??_updatePWM+0)+0,w
	movwf	(___lmul@multiplier+3)
	movf	2+(??_updatePWM+0)+0,w
	movwf	(___lmul@multiplier+2)
	movf	1+(??_updatePWM+0)+0,w
	movwf	(___lmul@multiplier+1)
	movf	0+(??_updatePWM+0)+0,w
	movwf	(___lmul@multiplier)

	movf	(updatePWM@period),w
	movwf	(___lmul@multiplicand)
	movf	(updatePWM@period+1),w
	movwf	((___lmul@multiplicand))+1
	clrf	2+((___lmul@multiplicand))
	clrf	3+((___lmul@multiplicand))
	fcall	___lmul
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(3+(?___lmul)),w
	movwf	(___lldiv@dividend+3)
	movf	(2+(?___lmul)),w
	movwf	(___lldiv@dividend+2)
	movf	(1+(?___lmul)),w
	movwf	(___lldiv@dividend+1)
	movf	(0+(?___lmul)),w
	movwf	(___lldiv@dividend)

	fcall	___lldiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	1+(((0+(?___lldiv)))),w
	clrf	(updatePWM@highTicks+1)
	addwf	(updatePWM@highTicks+1)
	movf	0+(((0+(?___lldiv)))),w
	clrf	(updatePWM@highTicks)
	addwf	(updatePWM@highTicks)

	line	73
	
l812:	
;LE4-7.c: 73: if (duty == 100) highTicks = period;
	movf	(updatePWM@duty),w
	xorlw	064h
	skipz
	goto	u581
	goto	u580
u581:
	goto	l62
u580:
	
l814:	
	movf	(updatePWM@period+1),w
	clrf	(updatePWM@highTicks+1)
	addwf	(updatePWM@highTicks+1)
	movf	(updatePWM@period),w
	clrf	(updatePWM@highTicks)
	addwf	(updatePWM@highTicks)

	
l62:	
	line	75
;LE4-7.c: 75: swPWM_period = period;
	movf	(updatePWM@period+1),w
	clrf	(_swPWM_period+1)	;volatile
	addwf	(_swPWM_period+1)	;volatile
	movf	(updatePWM@period),w
	clrf	(_swPWM_period)	;volatile
	addwf	(_swPWM_period)	;volatile

	line	76
;LE4-7.c: 76: swPWM_highTicks = highTicks;
	movf	(updatePWM@highTicks+1),w
	clrf	(_swPWM_highTicks+1)	;volatile
	addwf	(_swPWM_highTicks+1)	;volatile
	movf	(updatePWM@highTicks),w
	clrf	(_swPWM_highTicks)	;volatile
	addwf	(_swPWM_highTicks)	;volatile

	line	77
	
l816:	
;LE4-7.c: 77: swPWM_tick = 0;
	clrf	(_swPWM_tick)	;volatile
	clrf	(_swPWM_tick+1)	;volatile
	line	79
	
l818:	
;LE4-7.c: 79: CCP1CON = 0x00;
	clrf	(23)	;volatile
	line	80
	
l820:	
;LE4-7.c: 80: TRISC2 = 0;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bcf	(1082/8)^080h,(1082)&7	;volatile
	line	81
	
l822:	
;LE4-7.c: 81: RC2 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7	;volatile
	line	83
	
l824:	
;LE4-7.c: 83: T2CON = 0x05;
	movlw	(05h)
	movwf	(18)	;volatile
	line	84
	
l826:	
;LE4-7.c: 84: PR2 = 124;
	movlw	(07Ch)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	85
	
l828:	
;LE4-7.c: 85: TMR2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(17)	;volatile
	line	87
	
l830:	
;LE4-7.c: 87: PIR1bits.TMR2IF = 0;
	bcf	(12),1	;volatile
	line	88
	
l832:	
;LE4-7.c: 88: PIE1bits.TMR2IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(140)^080h,1	;volatile
	line	89
	
l834:	
;LE4-7.c: 89: INTCONbits.PEIE = 1;
	bsf	(11),6	;volatile
	line	90
	
l836:	
;LE4-7.c: 90: INTCONbits.GIE = 1;
	bsf	(11),7	;volatile
	line	91
	
l838:	
;LE4-7.c: 91: TMR2ON = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(146/8),(146)&7	;volatile
	goto	l63
	line	92
	
l57:	
	line	93
	
l63:	
	return
	opt stack 0
GLOBAL	__end_of_updatePWM
	__end_of_updatePWM:
	signat	_updatePWM,88
	global	___lmul

;; *************** function ___lmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul32.c"
;; Parameters:    Size  Location     Type
;;  multiplier      4    0[BANK0 ] unsigned long 
;;  multiplicand    4    4[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  product         4    5[COMMON] unsigned long 
;; Return value:  Size  Location     Type
;;                  4    0[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         5       8       0       0       0
;;Total ram usage:       13 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_updatePWM
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul32.c"
	line	15
global __ptext2
__ptext2:	;psect for function ___lmul
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul32.c"
	line	15
	global	__size_of___lmul
	__size_of___lmul	equ	__end_of___lmul-___lmul
	
___lmul:	
;incstack = 0
	opt	stack 5
; Regs used in ___lmul: [wreg+status,2+status,0]
	line	119
	
l718:	
	movlw	0
	movwf	(___lmul@product+3)
	movlw	0
	movwf	(___lmul@product+2)
	movlw	0
	movwf	(___lmul@product+1)
	movlw	0
	movwf	(___lmul@product)

	goto	l720
	line	120
	
l182:	
	line	121
	
l720:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(___lmul@multiplier),(0)&7
	goto	u371
	goto	u370
u371:
	goto	l724
u370:
	line	122
	
l722:	
	movf	(___lmul@multiplicand),w
	addwf	(___lmul@product),f
	movf	(___lmul@multiplicand+1),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u381
	addwf	(___lmul@product+1),f
u381:
	movf	(___lmul@multiplicand+2),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u382
	addwf	(___lmul@product+2),f
u382:
	movf	(___lmul@multiplicand+3),w
	clrz
	skipnc
	addlw	1
	skipnz
	goto	u383
	addwf	(___lmul@product+3),f
u383:

	goto	l724
	
l183:	
	line	123
	
l724:	
	movlw	01h
	movwf	(??___lmul+0)+0
u395:
	clrc
	rlf	(___lmul@multiplicand),f
	rlf	(___lmul@multiplicand+1),f
	rlf	(___lmul@multiplicand+2),f
	rlf	(___lmul@multiplicand+3),f
	decfsz	(??___lmul+0)+0
	goto	u395
	line	124
	
l726:	
	movlw	01h
u405:
	clrc
	rrf	(___lmul@multiplier+3),f
	rrf	(___lmul@multiplier+2),f
	rrf	(___lmul@multiplier+1),f
	rrf	(___lmul@multiplier),f
	addlw	-1
	skipz
	goto	u405

	line	125
	movf	(___lmul@multiplier+3),w
	iorwf	(___lmul@multiplier+2),w
	iorwf	(___lmul@multiplier+1),w
	iorwf	(___lmul@multiplier),w
	skipz
	goto	u411
	goto	u410
u411:
	goto	l720
u410:
	goto	l728
	
l184:	
	line	128
	
l728:	
	movf	(___lmul@product+3),w
	movwf	(?___lmul+3)
	movf	(___lmul@product+2),w
	movwf	(?___lmul+2)
	movf	(___lmul@product+1),w
	movwf	(?___lmul+1)
	movf	(___lmul@product),w
	movwf	(?___lmul)

	goto	l185
	
l730:	
	line	129
	
l185:	
	return
	opt stack 0
GLOBAL	__end_of___lmul
	__end_of___lmul:
	signat	___lmul,8316
	global	___lldiv

;; *************** function ___lldiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         4    8[BANK0 ] unsigned long 
;;  dividend        4   12[BANK0 ] unsigned long 
;; Auto vars:     Size  Location     Type
;;  quotient        4   16[BANK0 ] unsigned long 
;;  counter         1   20[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  4    8[BANK0 ] unsigned long 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       8       0       0       0
;;      Locals:         0       5       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1      13       0       0       0
;;Total ram usage:       14 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_updatePWM
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___lldiv
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lldiv.c"
	line	6
	global	__size_of___lldiv
	__size_of___lldiv	equ	__end_of___lldiv-___lldiv
	
___lldiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___lldiv: [wreg+status,2+status,0]
	line	14
	
l732:	
	movlw	0
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lldiv@quotient+3)
	movlw	0
	movwf	(___lldiv@quotient+2)
	movlw	0
	movwf	(___lldiv@quotient+1)
	movlw	0
	movwf	(___lldiv@quotient)

	line	15
	movf	(___lldiv@divisor+3),w
	iorwf	(___lldiv@divisor+2),w
	iorwf	(___lldiv@divisor+1),w
	iorwf	(___lldiv@divisor),w
	skipnz
	goto	u421
	goto	u420
u421:
	goto	l752
u420:
	line	16
	
l734:	
	clrf	(___lldiv@counter)
	incf	(___lldiv@counter),f
	line	17
	goto	l738
	
l449:	
	line	18
	
l736:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u435:
	clrc
	rlf	(___lldiv@divisor),f
	rlf	(___lldiv@divisor+1),f
	rlf	(___lldiv@divisor+2),f
	rlf	(___lldiv@divisor+3),f
	decfsz	(??___lldiv+0)+0
	goto	u435
	line	19
	movlw	(01h)
	movwf	(??___lldiv+0)+0
	movf	(??___lldiv+0)+0,w
	addwf	(___lldiv@counter),f
	goto	l738
	line	20
	
l448:	
	line	17
	
l738:	
	btfss	(___lldiv@divisor+3),(31)&7
	goto	u441
	goto	u440
u441:
	goto	l736
u440:
	goto	l740
	
l450:	
	goto	l740
	line	21
	
l451:	
	line	22
	
l740:	
	movlw	01h
	movwf	(??___lldiv+0)+0
u455:
	clrc
	rlf	(___lldiv@quotient),f
	rlf	(___lldiv@quotient+1),f
	rlf	(___lldiv@quotient+2),f
	rlf	(___lldiv@quotient+3),f
	decfsz	(??___lldiv+0)+0
	goto	u455
	line	23
	
l742:	
	movf	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),w
	skipz
	goto	u465
	movf	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),w
	skipz
	goto	u465
	movf	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),w
	skipz
	goto	u465
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),w
u465:
	skipc
	goto	u461
	goto	u460
u461:
	goto	l748
u460:
	line	24
	
l744:	
	movf	(___lldiv@divisor),w
	subwf	(___lldiv@dividend),f
	movf	(___lldiv@divisor+1),w
	skipc
	incfsz	(___lldiv@divisor+1),w
	subwf	(___lldiv@dividend+1),f
	movf	(___lldiv@divisor+2),w
	skipc
	incfsz	(___lldiv@divisor+2),w
	subwf	(___lldiv@dividend+2),f
	movf	(___lldiv@divisor+3),w
	skipc
	incfsz	(___lldiv@divisor+3),w
	subwf	(___lldiv@dividend+3),f
	line	25
	
l746:	
	bsf	(___lldiv@quotient)+(0/8),(0)&7
	goto	l748
	line	26
	
l452:	
	line	27
	
l748:	
	movlw	01h
u475:
	clrc
	rrf	(___lldiv@divisor+3),f
	rrf	(___lldiv@divisor+2),f
	rrf	(___lldiv@divisor+1),f
	rrf	(___lldiv@divisor),f
	addlw	-1
	skipz
	goto	u475

	line	28
	
l750:	
	movlw	low(01h)
	subwf	(___lldiv@counter),f
	btfss	status,2
	goto	u481
	goto	u480
u481:
	goto	l740
u480:
	goto	l752
	
l453:	
	goto	l752
	line	29
	
l447:	
	line	30
	
l752:	
	movf	(___lldiv@quotient+3),w
	movwf	(?___lldiv+3)
	movf	(___lldiv@quotient+2),w
	movwf	(?___lldiv+2)
	movf	(___lldiv@quotient+1),w
	movwf	(?___lldiv+1)
	movf	(___lldiv@quotient),w
	movwf	(?___lldiv)

	goto	l454
	
l754:	
	line	31
	
l454:	
	return
	opt stack 0
GLOBAL	__end_of___lldiv
	__end_of___lldiv:
	signat	___lldiv,8316
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 35 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-7\LE4-7.c"
;; Parameters:    Size  Location     Type
;;  ms              2    4[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  j               2    8[COMMON] unsigned int 
;;  i               2    6[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         2       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-7\LE4-7.c"
	line	35
global __ptext4
__ptext4:	;psect for function _delay_ms
psect	text4
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-7\LE4-7.c"
	line	35
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 6
; Regs used in _delay_ms: [wreg+status,2+status,0]
	line	37
	
l756:	
;LE4-7.c: 36: unsigned int i, j;
;LE4-7.c: 37: for (i = ms; i != 0; i--)
	movf	(delay_ms@ms+1),w
	clrf	(delay_ms@i+1)
	addwf	(delay_ms@i+1)
	movf	(delay_ms@ms),w
	clrf	(delay_ms@i)
	addwf	(delay_ms@i)

	
l758:	
	movf	((delay_ms@i+1)),w
	iorwf	((delay_ms@i)),w
	skipz
	goto	u491
	goto	u490
u491:
	goto	l762
u490:
	goto	l53
	
l760:	
	goto	l53
	line	38
	
l49:	
	
l762:	
;LE4-7.c: 38: for (j = 0; j < 110; j++);
	clrf	(delay_ms@j)
	clrf	(delay_ms@j+1)
	
l764:	
	movlw	high(06Eh)
	subwf	(delay_ms@j+1),w
	movlw	low(06Eh)
	skipnz
	subwf	(delay_ms@j),w
	skipc
	goto	u501
	goto	u500
u501:
	goto	l768
u500:
	goto	l770
	
l766:	
	goto	l770
	
l51:	
	
l768:	
	movlw	low(01h)
	addwf	(delay_ms@j),f
	skipnc
	incf	(delay_ms@j+1),f
	movlw	high(01h)
	addwf	(delay_ms@j+1),f
	movlw	high(06Eh)
	subwf	(delay_ms@j+1),w
	movlw	low(06Eh)
	skipnz
	subwf	(delay_ms@j),w
	skipc
	goto	u511
	goto	u510
u511:
	goto	l768
u510:
	goto	l770
	
l52:	
	line	37
	
l770:	
	movlw	low(01h)
	subwf	(delay_ms@i),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@i+1),f
	subwf	(delay_ms@i+1),f
	
l772:	
	movf	((delay_ms@i+1)),w
	iorwf	((delay_ms@i)),w
	skipz
	goto	u521
	goto	u520
u521:
	goto	l762
u520:
	goto	l53
	
l50:	
	line	39
	
l53:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
	global	_isr

;; *************** function _isr *****************
;; Defined at:
;;		line 96 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-7\LE4-7.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          4       0       0       0       0
;;      Totals:         4       0       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	96
global __ptext5
__ptext5:	;psect for function _isr
psect	text5
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-7\LE4-7.c"
	line	96
	global	__size_of_isr
	__size_of_isr	equ	__end_of_isr-_isr
	
_isr:	
;incstack = 0
	opt	stack 5
; Regs used in _isr: [wreg+status,2]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_isr+0)
	movf	fsr0,w
	movwf	(??_isr+1)
	movf	pclath,w
	movwf	(??_isr+2)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_isr+3)
	ljmp	_isr
psect	text5
	line	97
	
i1l840:	
;LE4-7.c: 97: if (PIR1bits.TMR2IF && PIE1bits.TMR2IE) {
	btfss	(12),1	;volatile
	goto	u59_21
	goto	u59_20
u59_21:
	goto	i1l69
u59_20:
	
i1l842:	
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	btfss	(140)^080h,1	;volatile
	goto	u60_21
	goto	u60_20
u60_21:
	goto	i1l69
u60_20:
	line	98
	
i1l844:	
;LE4-7.c: 98: PIR1bits.TMR2IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(12),1	;volatile
	line	100
	
i1l846:	
;LE4-7.c: 100: if (swPWM_active) {
	movf	(_swPWM_active),w	;volatile
	skipz
	goto	u61_20
	goto	i1l69
u61_20:
	line	101
	
i1l848:	
;LE4-7.c: 101: swPWM_tick++;
	movlw	low(01h)
	addwf	(_swPWM_tick),f	;volatile
	skipnc
	incf	(_swPWM_tick+1),f	;volatile
	movlw	high(01h)
	addwf	(_swPWM_tick+1),f	;volatile
	line	102
;LE4-7.c: 102: if (swPWM_tick >= swPWM_period)
	movf	(_swPWM_period+1),w	;volatile
	subwf	(_swPWM_tick+1),w	;volatile
	skipz
	goto	u62_25
	movf	(_swPWM_period),w	;volatile
	subwf	(_swPWM_tick),w	;volatile
u62_25:
	skipc
	goto	u62_21
	goto	u62_20
u62_21:
	goto	i1l852
u62_20:
	line	103
	
i1l850:	
;LE4-7.c: 103: swPWM_tick = 0;
	clrf	(_swPWM_tick)	;volatile
	clrf	(_swPWM_tick+1)	;volatile
	goto	i1l852
	
i1l68:	
	line	105
	
i1l852:	
;LE4-7.c: 105: RC2 = (swPWM_tick < swPWM_highTicks) ? 1 : 0;
	movf	(_swPWM_highTicks+1),w	;volatile
	subwf	(_swPWM_tick+1),w	;volatile
	skipz
	goto	u63_25
	movf	(_swPWM_highTicks),w	;volatile
	subwf	(_swPWM_tick),w	;volatile
u63_25:
	skipc
	goto	u63_21
	goto	u63_20
	
u63_21:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(58/8),(58)&7	;volatile
	goto	u64_24
u63_20:
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
u64_24:
	goto	i1l69
	line	106
	
i1l67:	
	goto	i1l69
	line	107
	
i1l66:	
	line	108
	
i1l69:	
	movf	(??_isr+3),w
	bcf	status, 5	;RP0=0, select bank0
	movwf	btemp+1
	movf	(??_isr+2),w
	movwf	pclath
	movf	(??_isr+1),w
	movwf	fsr0
	swapf	(??_isr+0)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_isr
	__end_of_isr:
	signat	_isr,88
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
