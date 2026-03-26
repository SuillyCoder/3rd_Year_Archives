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
	FNCALL	_updatePWM,___lwdiv
	FNCALL	_updatePWM,___wmul
	FNROOT	_main
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
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-7.c"
	line	19
_dutyTable:
	retlw	0Ah
	retlw	019h
	retlw	032h
	retlw	04Bh
	retlw	05Fh
	global __end_of_dutyTable
__end_of_dutyTable:
	global	_pr2Table
psect	strings
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-7.c"
	line	13
_pr2Table:
	retlw	0F9h
	retlw	07Ch
	retlw	03Eh
	global __end_of_pr2Table
__end_of_pr2Table:
	global	_dutyTable
	global	_pr2Table
	global	_dutyIdx
	global	_freqIdx
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_CCPR1L
_CCPR1L	set	0x15
	global	_T2CON
_T2CON	set	0x12
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
	global	_PR2
_PR2	set	0x92
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
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
_dutyIdx:
       ds      1

_freqIdx:
       ds      1

	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
psect cinit,class=CODE,delta=2,merge=1
global end_of_initialization,__end_of__initialization

;End of C runtime variable initialization code

end_of_initialization:
__end_of__initialization:clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1,noexec
global __pcstackCOMMON
__pcstackCOMMON:
?_delay_ms:	; 0 bytes @ 0x0
?_updatePWM:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	?___wmul
?___wmul:	; 2 bytes @ 0x0
	global	delay_ms@ms
delay_ms@ms:	; 2 bytes @ 0x0
	global	___wmul@multiplier
___wmul@multiplier:	; 2 bytes @ 0x0
	ds	2
??_delay_ms:	; 0 bytes @ 0x2
	global	delay_ms@i
delay_ms@i:	; 2 bytes @ 0x2
	global	___wmul@multiplicand
___wmul@multiplicand:	; 2 bytes @ 0x2
	ds	2
??___wmul:	; 0 bytes @ 0x4
	global	delay_ms@j
delay_ms@j:	; 2 bytes @ 0x4
	global	___wmul@product
___wmul@product:	; 2 bytes @ 0x4
	ds	2
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x6
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x6
	ds	2
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x8
	ds	2
??___lwdiv:	; 0 bytes @ 0xA
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0xB
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0xD
	ds	1
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??_updatePWM:	; 0 bytes @ 0x0
	ds	4
	global	updatePWM@duty
updatePWM@duty:	; 1 bytes @ 0x4
	ds	1
	global	updatePWM@dcVal
updatePWM@dcVal:	; 2 bytes @ 0x5
	ds	2
	global	updatePWM@pr2
updatePWM@pr2:	; 1 bytes @ 0x7
	ds	1
??_main:	; 0 bytes @ 0x8
	ds	1
;!
;!Data Sizes:
;!    Strings     0
;!    Constant    8
;!    Data        0
;!    BSS         2
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     14      14
;!    BANK0            80      9      11
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
;!    _updatePWM->___lwdiv
;!    ___lwdiv->___wmul
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_updatePWM
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
;! (0) _main                                                 1     1      0     905
;!                                              8 BANK0      1     1      0
;!                           _delay_ms
;!                          _updatePWM
;! ---------------------------------------------------------------------------------
;! (1) _updatePWM                                            8     8      0     579
;!                                              0 BANK0      8     8      0
;!                            ___lwdiv
;!                             ___wmul
;! ---------------------------------------------------------------------------------
;! (2) ___wmul                                               6     2      4     198
;!                                              0 COMMON     6     2      4
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     268
;!                                              6 COMMON     8     4      4
;!                             ___wmul (ARG)
;! ---------------------------------------------------------------------------------
;! (1) _delay_ms                                             6     4      2     326
;!                                              0 COMMON     6     4      2
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _delay_ms
;!   _updatePWM
;!     ___lwdiv
;!       ___wmul (ARG)
;!     ___wmul
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      E       E       1      100.0%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      19       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50      9       B       5       13.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      19      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 44 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-7.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay_ms
;;		_updatePWM
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-7.c"
	line	44
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-7.c"
	line	44
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	45
	
l695:	
;LE4-7.c: 45: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	46
;LE4-7.c: 46: TRISB = 0x03;
	movlw	(03h)
	movwf	(134)^080h	;volatile
	line	47
	
l697:	
;LE4-7.c: 47: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	48
	
l699:	
;LE4-7.c: 48: RC2 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(58/8),(58)&7	;volatile
	line	50
	
l701:	
;LE4-7.c: 50: T2CON = 0x06;
	movlw	(06h)
	movwf	(18)	;volatile
	line	51
	
l703:	
;LE4-7.c: 51: updatePWM();
	fcall	_updatePWM
	goto	l705
	line	54
;LE4-7.c: 53: for(;;)
	
l43:	
	line	55
	
l705:	
;LE4-7.c: 54: {
;LE4-7.c: 55: if (RB0 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7	;volatile
	goto	u411
	goto	u410
u411:
	goto	l44
u410:
	line	57
	
l707:	
;LE4-7.c: 57: delay_ms(50);
	movlw	low(032h)
	movwf	(delay_ms@ms)
	movlw	high(032h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	58
	
l709:	
;LE4-7.c: 58: if (RB0 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(48/8),(48)&7	;volatile
	goto	u421
	goto	u420
u421:
	goto	l705
u420:
	line	59
	
l711:	
;LE4-7.c: 59: freqIdx++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_freqIdx),f	;volatile
	line	60
	
l713:	
;LE4-7.c: 60: if (freqIdx > 2) freqIdx = 0;
	movlw	(03h)
	subwf	(_freqIdx),w	;volatile
	skipc
	goto	u431
	goto	u430
u431:
	goto	l717
u430:
	
l715:	
	clrf	(_freqIdx)	;volatile
	goto	l717
	
l46:	
	line	61
	
l717:	
;LE4-7.c: 61: updatePWM();
	fcall	_updatePWM
	line	62
;LE4-7.c: 62: while(RB0 == 1);
	goto	l47
	
l48:	
	
l47:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(48/8),(48)&7	;volatile
	goto	u441
	goto	u440
u441:
	goto	l47
u440:
	goto	l719
	
l49:	
	line	63
	
l719:	
;LE4-7.c: 63: delay_ms(50);
	movlw	low(032h)
	movwf	(delay_ms@ms)
	movlw	high(032h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	goto	l705
	line	64
	
l45:	
	line	65
;LE4-7.c: 64: }
;LE4-7.c: 65: }
	goto	l705
	line	66
	
l44:	
;LE4-7.c: 66: else if (RB1 == 1){
	btfss	(49/8),(49)&7	;volatile
	goto	u451
	goto	u450
u451:
	goto	l705
u450:
	line	68
	
l721:	
;LE4-7.c: 68: delay_ms(50);
	movlw	low(032h)
	movwf	(delay_ms@ms)
	movlw	high(032h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	line	69
	
l723:	
;LE4-7.c: 69: if (RB1 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(49/8),(49)&7	;volatile
	goto	u461
	goto	u460
u461:
	goto	l705
u460:
	line	70
	
l725:	
;LE4-7.c: 70: dutyIdx++;
	movlw	(01h)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	addwf	(_dutyIdx),f	;volatile
	line	71
	
l727:	
;LE4-7.c: 71: if (dutyIdx > 4) dutyIdx = 0;
	movlw	(05h)
	subwf	(_dutyIdx),w	;volatile
	skipc
	goto	u471
	goto	u470
u471:
	goto	l731
u470:
	
l729:	
	clrf	(_dutyIdx)	;volatile
	goto	l731
	
l53:	
	line	72
	
l731:	
;LE4-7.c: 72: updatePWM();
	fcall	_updatePWM
	line	73
;LE4-7.c: 73: while(RB1 == 1);
	goto	l54
	
l55:	
	
l54:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfsc	(49/8),(49)&7	;volatile
	goto	u481
	goto	u480
u481:
	goto	l54
u480:
	goto	l733
	
l56:	
	line	74
	
l733:	
;LE4-7.c: 74: delay_ms(50);
	movlw	low(032h)
	movwf	(delay_ms@ms)
	movlw	high(032h)
	movwf	((delay_ms@ms))+1
	fcall	_delay_ms
	goto	l705
	line	75
	
l52:	
	goto	l705
	line	76
	
l51:	
	goto	l705
	line	77
	
l50:	
;LE4-7.c: 75: }
;LE4-7.c: 76: }
;LE4-7.c: 77: }
	goto	l705
	
l57:	
	line	78
	
l58:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_updatePWM

;; *************** function _updatePWM *****************
;; Defined at:
;;		line 30 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-7.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  dcVal           2    5[BANK0 ] unsigned int 
;;  pr2             1    7[BANK0 ] unsigned char 
;;  duty            1    4[BANK0 ] unsigned char 
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
;;      Locals:         0       4       0       0       0
;;      Temps:          0       4       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		___lwdiv
;;		___wmul
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	30
global __ptext1
__ptext1:	;psect for function _updatePWM
psect	text1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-7.c"
	line	30
	global	__size_of_updatePWM
	__size_of_updatePWM	equ	__end_of_updatePWM-_updatePWM
	
_updatePWM:	
;incstack = 0
	opt	stack 6
; Regs used in _updatePWM: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	31
	
l681:	
;LE4-7.c: 31: unsigned char pr2 = pr2Table[freqIdx];
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_freqIdx),w
	addlw	low((_pr2Table)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_updatePWM+0)+0
	movf	(??_updatePWM+0)+0,w
	movwf	(updatePWM@pr2)
	line	32
;LE4-7.c: 32: unsigned char duty = dutyTable[dutyIdx];
	movf	(_dutyIdx),w
	addlw	low((_dutyTable)-__stringbase)
	movwf	fsr0
	fcall	stringdir
	movwf	(??_updatePWM+0)+0
	movf	(??_updatePWM+0)+0,w
	movwf	(updatePWM@duty)
	line	33
	
l683:	
;LE4-7.c: 33: unsigned int dcVal = ((unsigned int)duty * ((unsigned int)(pr2 + 1) * 4)) / 100;
	movlw	low(064h)
	movwf	(___lwdiv@divisor)
	movlw	high(064h)
	movwf	((___lwdiv@divisor))+1
	movf	(updatePWM@pr2),w
	movwf	(??_updatePWM+0)+0
	clrf	(??_updatePWM+0)+0+1
	clrc
	rlf	(??_updatePWM+0)+0,f
	rlf	(??_updatePWM+0)+1,f
	clrc
	rlf	(??_updatePWM+0)+0,f
	rlf	(??_updatePWM+0)+1,f
	movf	0+(??_updatePWM+0)+0,w
	addlw	low(04h)
	movwf	(___wmul@multiplier)
	movf	1+(??_updatePWM+0)+0,w
	skipnc
	addlw	1
	addlw	high(04h)
	movwf	1+(___wmul@multiplier)
	movf	(updatePWM@duty),w
	movwf	(??_updatePWM+2)+0
	clrf	(??_updatePWM+2)+0+1
	movf	0+(??_updatePWM+2)+0,w
	movwf	(___wmul@multiplicand)
	movf	1+(??_updatePWM+2)+0,w
	movwf	(___wmul@multiplicand+1)
	fcall	___wmul
	movf	(1+(?___wmul)),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(0+(?___wmul)),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	movf	(1+(?___lwdiv)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(updatePWM@dcVal+1)
	addwf	(updatePWM@dcVal+1)
	movf	(0+(?___lwdiv)),w
	clrf	(updatePWM@dcVal)
	addwf	(updatePWM@dcVal)

	line	36
	
l685:	
;LE4-7.c: 36: TMR2ON = 0;
	bcf	(146/8),(146)&7	;volatile
	line	37
	
l687:	
;LE4-7.c: 37: PR2 = pr2;
	movf	(updatePWM@pr2),w
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(146)^080h	;volatile
	line	38
	
l689:	
;LE4-7.c: 38: CCPR1L = (unsigned char)(dcVal >> 2);
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(updatePWM@dcVal+1),w
	movwf	(??_updatePWM+0)+0+1
	movf	(updatePWM@dcVal),w
	movwf	(??_updatePWM+0)+0
	clrc
	rrf	(??_updatePWM+0)+1,f
	rrf	(??_updatePWM+0)+0,f
	clrc
	rrf	(??_updatePWM+0)+1,f
	rrf	(??_updatePWM+0)+0,f
	movf	0+(??_updatePWM+0)+0,w
	movwf	(21)	;volatile
	line	40
	
l691:	
;LE4-7.c: 40: CCP1CON = (unsigned char)(0x0C | ((dcVal & 0x03) << 4));
	movf	(updatePWM@dcVal),w
	andlw	03h
	movwf	(??_updatePWM+0)+0
	movlw	(04h)-1
u405:
	clrc
	rlf	(??_updatePWM+0)+0,f
	addlw	-1
	skipz
	goto	u405
	clrc
	rlf	(??_updatePWM+0)+0,w
	iorlw	0Ch
	movwf	(23)	;volatile
	line	41
	
l693:	
;LE4-7.c: 41: TMR2ON = 1;
	bsf	(146/8),(146)&7	;volatile
	line	42
	
l40:	
	return
	opt stack 0
GLOBAL	__end_of_updatePWM
	__end_of_updatePWM:
	signat	_updatePWM,88
	global	___wmul

;; *************** function ___wmul *****************
;; Defined at:
;;		line 15 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
;; Parameters:    Size  Location     Type
;;  multiplier      2    0[COMMON] unsigned int 
;;  multiplicand    2    2[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  product         2    4[COMMON] unsigned int 
;; Return value:  Size  Location     Type
;;                  2    0[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         2       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         6       0       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_updatePWM
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
global __ptext2
__ptext2:	;psect for function ___wmul
psect	text2
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\Umul16.c"
	line	15
	global	__size_of___wmul
	__size_of___wmul	equ	__end_of___wmul-___wmul
	
___wmul:	
;incstack = 0
	opt	stack 6
; Regs used in ___wmul: [wreg+status,2+status,0]
	line	43
	
l625:	
	clrf	(___wmul@product)
	clrf	(___wmul@product+1)
	goto	l627
	line	44
	
l141:	
	line	45
	
l627:	
	btfss	(___wmul@multiplier),(0)&7
	goto	u251
	goto	u250
u251:
	goto	l142
u250:
	line	46
	
l629:	
	movf	(___wmul@multiplicand),w
	addwf	(___wmul@product),f
	skipnc
	incf	(___wmul@product+1),f
	movf	(___wmul@multiplicand+1),w
	addwf	(___wmul@product+1),f
	
l142:	
	line	47
	movlw	01h
	
u265:
	clrc
	rlf	(___wmul@multiplicand),f
	rlf	(___wmul@multiplicand+1),f
	addlw	-1
	skipz
	goto	u265
	line	48
	
l631:	
	movlw	01h
	
u275:
	clrc
	rrf	(___wmul@multiplier+1),f
	rrf	(___wmul@multiplier),f
	addlw	-1
	skipz
	goto	u275
	line	49
	movf	((___wmul@multiplier+1)),w
	iorwf	((___wmul@multiplier)),w
	skipz
	goto	u281
	goto	u280
u281:
	goto	l627
u280:
	goto	l633
	
l143:	
	line	52
	
l633:	
	movf	(___wmul@product+1),w
	clrf	(?___wmul+1)
	addwf	(?___wmul+1)
	movf	(___wmul@product),w
	clrf	(?___wmul)
	addwf	(?___wmul)

	goto	l144
	
l635:	
	line	53
	
l144:	
	return
	opt stack 0
GLOBAL	__end_of___wmul
	__end_of___wmul:
	signat	___wmul,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    6[COMMON] unsigned int 
;;  dividend        2    8[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2   11[COMMON] unsigned int 
;;  counter         1   13[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    6[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         8       0       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_updatePWM
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext3
__ptext3:	;psect for function ___lwdiv
psect	text3
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 6
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l637:	
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l639:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u291
	goto	u290
u291:
	goto	l659
u290:
	line	16
	
l641:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l647
	
l473:	
	line	18
	
l643:	
	movlw	01h
	
u305:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u305
	line	19
	
l645:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l647
	line	20
	
l472:	
	line	17
	
l647:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u311
	goto	u310
u311:
	goto	l643
u310:
	goto	l649
	
l474:	
	goto	l649
	line	21
	
l475:	
	line	22
	
l649:	
	movlw	01h
	
u325:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u325
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u335
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u335:
	skipc
	goto	u331
	goto	u330
u331:
	goto	l655
u330:
	line	24
	
l651:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l653:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l655
	line	26
	
l476:	
	line	27
	
l655:	
	movlw	01h
	
u345:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u345
	line	28
	
l657:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u351
	goto	u350
u351:
	goto	l649
u350:
	goto	l659
	
l477:	
	goto	l659
	line	29
	
l471:	
	line	30
	
l659:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l478
	
l661:	
	line	31
	
l478:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_delay_ms

;; *************** function _delay_ms *****************
;; Defined at:
;;		line 24 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-7.c"
;; Parameters:    Size  Location     Type
;;  ms              2    0[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  j               2    4[COMMON] unsigned int 
;;  i               2    2[COMMON] unsigned int 
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-7.c"
	line	24
global __ptext4
__ptext4:	;psect for function _delay_ms
psect	text4
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-7.c"
	line	24
	global	__size_of_delay_ms
	__size_of_delay_ms	equ	__end_of_delay_ms-_delay_ms
	
_delay_ms:	
;incstack = 0
	opt	stack 7
; Regs used in _delay_ms: [wreg+status,2+status,0]
	line	26
	
l663:	
;LE4-7.c: 25: unsigned int i, j;
;LE4-7.c: 26: for(i = ms; i != 0; i--)
	movf	(delay_ms@ms+1),w
	clrf	(delay_ms@i+1)
	addwf	(delay_ms@i+1)
	movf	(delay_ms@ms),w
	clrf	(delay_ms@i)
	addwf	(delay_ms@i)

	
l665:	
	movf	((delay_ms@i+1)),w
	iorwf	((delay_ms@i)),w
	skipz
	goto	u361
	goto	u360
u361:
	goto	l669
u360:
	goto	l37
	
l667:	
	goto	l37
	line	27
	
l33:	
	
l669:	
;LE4-7.c: 27: for(j = 0; j < 110; j++);
	clrf	(delay_ms@j)
	clrf	(delay_ms@j+1)
	
l671:	
	movlw	high(06Eh)
	subwf	(delay_ms@j+1),w
	movlw	low(06Eh)
	skipnz
	subwf	(delay_ms@j),w
	skipc
	goto	u371
	goto	u370
u371:
	goto	l675
u370:
	goto	l677
	
l673:	
	goto	l677
	
l35:	
	
l675:	
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
	goto	u381
	goto	u380
u381:
	goto	l675
u380:
	goto	l677
	
l36:	
	line	26
	
l677:	
	movlw	low(01h)
	subwf	(delay_ms@i),f
	movlw	high(01h)
	skipc
	decf	(delay_ms@i+1),f
	subwf	(delay_ms@i+1),f
	
l679:	
	movf	((delay_ms@i+1)),w
	iorwf	((delay_ms@i)),w
	skipz
	goto	u391
	goto	u390
u391:
	goto	l669
u390:
	goto	l37
	
l34:	
	line	28
	
l37:	
	return
	opt stack 0
GLOBAL	__end_of_delay_ms
	__end_of_delay_ms:
	signat	_delay_ms,4216
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
