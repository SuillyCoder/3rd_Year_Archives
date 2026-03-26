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
	FNCALL	_main,___lwdiv
	FNCALL	_main,_displayPeriod
	FNCALL	_main,_initLCD
	FNCALL	_main,_instCtrl
	FNCALL	_main,_printStr
	FNCALL	_printStr,_dataCtrl
	FNCALL	_initLCD,_instCtrl
	FNCALL	_displayPeriod,___lwdiv
	FNCALL	_displayPeriod,___lwmod
	FNCALL	_displayPeriod,_dataCtrl
	FNCALL	_displayPeriod,_instCtrl
	FNCALL	_instCtrl,_delay
	FNCALL	_dataCtrl,_delay
	FNROOT	_main
	FNCALL	intlevel1,_ISR
	global	intlevel1
	FNROOT	intlevel1
	global	_capturedPeriod
	global	_newCapture
	global	_CCPR1
_CCPR1	set	0x15
	global	_TMR1
_TMR1	set	0xE
	global	_CCP1CON
_CCP1CON	set	0x17
	global	_PORTB
_PORTB	set	0x6
	global	_T1CON
_T1CON	set	0x10
	global	_CCP1IF
_CCP1IF	set	0x62
	global	_GIE
_GIE	set	0x5F
	global	_PEIE
_PEIE	set	0x5E
	global	_RA0
_RA0	set	0x28
	global	_RD0
_RD0	set	0x40
	global	_RD1
_RD1	set	0x41
	global	_RD2
_RD2	set	0x42
	global	_TMR1ON
_TMR1ON	set	0x80
	global	_ADCON1
_ADCON1	set	0x9F
	global	_TRISA
_TRISA	set	0x85
	global	_TRISB
_TRISB	set	0x86
	global	_TRISC
_TRISC	set	0x87
	global	_TRISD
_TRISD	set	0x88
	global	_CCP1IE
_CCP1IE	set	0x462
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
	retlw	80	;'P'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	73	;'I'
	retlw	79	;'O'
	retlw	68	;'D'
	retlw	58	;':'
	retlw	32	;' '
	retlw	32	;' '
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
	file	"LE4-6.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

global __initialization
__initialization:
psect	bssBANK0,class=BANK0,space=1,noexec
global __pbssBANK0
__pbssBANK0:
_capturedPeriod:
       ds      2

_newCapture:
       ds      1

	line	#
; Clear objects allocated to BANK0
psect cinit,class=CODE,delta=2,merge=1
	clrf	((__pbssBANK0)+0)&07Fh
	clrf	((__pbssBANK0)+1)&07Fh
	clrf	((__pbssBANK0)+2)&07Fh
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
?_dataCtrl:	; 0 bytes @ 0x0
?_instCtrl:	; 0 bytes @ 0x0
?_initLCD:	; 0 bytes @ 0x0
?_printStr:	; 0 bytes @ 0x0
?_ISR:	; 0 bytes @ 0x0
??_ISR:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	5
??_delay:	; 0 bytes @ 0x5
	global	?___lwmod
?___lwmod:	; 2 bytes @ 0x5
	global	___lwmod@divisor
___lwmod@divisor:	; 2 bytes @ 0x5
	ds	2
??_dataCtrl:	; 0 bytes @ 0x7
??_instCtrl:	; 0 bytes @ 0x7
	global	dataCtrl@INST
dataCtrl@INST:	; 1 bytes @ 0x7
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x7
	global	___lwmod@dividend
___lwmod@dividend:	; 2 bytes @ 0x7
	ds	1
??_initLCD:	; 0 bytes @ 0x8
??_printStr:	; 0 bytes @ 0x8
	ds	1
??_displayPeriod:	; 0 bytes @ 0x9
psect	cstackBANK0,class=BANK0,space=1,noexec
global __pcstackBANK0
__pcstackBANK0:
??___lwmod:	; 0 bytes @ 0x0
	global	delay@cnt
delay@cnt:	; 1 bytes @ 0x0
	ds	1
	global	___lwmod@counter
___lwmod@counter:	; 1 bytes @ 0x1
	global	delay@i
delay@i:	; 2 bytes @ 0x1
	ds	1
	global	?___lwdiv
?___lwdiv:	; 2 bytes @ 0x2
	global	___lwdiv@divisor
___lwdiv@divisor:	; 2 bytes @ 0x2
	ds	1
	global	delay@j
delay@j:	; 2 bytes @ 0x3
	ds	1
	global	___lwdiv@dividend
___lwdiv@dividend:	; 2 bytes @ 0x4
	ds	1
	global	printStr@str
printStr@str:	; 1 bytes @ 0x5
	ds	1
??___lwdiv:	; 0 bytes @ 0x6
	ds	1
	global	___lwdiv@quotient
___lwdiv@quotient:	; 2 bytes @ 0x7
	ds	2
	global	___lwdiv@counter
___lwdiv@counter:	; 1 bytes @ 0x9
	ds	1
?_displayPeriod:	; 0 bytes @ 0xA
	global	displayPeriod@period
displayPeriod@period:	; 2 bytes @ 0xA
	ds	2
??_main:	; 0 bytes @ 0xC
	ds	2
	global	main@period_ms
main@period_ms:	; 2 bytes @ 0xE
	ds	2
;!
;!Data Sizes:
;!    Strings     10
;!    Constant    0
;!    Data        0
;!    BSS         3
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      9       9
;!    BANK0            80     16      19
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    printStr@str	PTR const unsigned char  size(1) Largest target is 10
;!		 -> STR_1(CODE[10]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_printStr
;!    _printStr->_dataCtrl
;!    _initLCD->_instCtrl
;!    _displayPeriod->___lwmod
;!    _instCtrl->_delay
;!    _dataCtrl->_delay
;!    ___lwdiv->___lwmod
;!
;!Critical Paths under _ISR in COMMON
;!
;!    None.
;!
;!Critical Paths under _main in BANK0
;!
;!    _main->_displayPeriod
;!    _displayPeriod->___lwdiv
;!    _instCtrl->_delay
;!    _dataCtrl->_delay
;!    ___lwdiv->___lwmod
;!
;!Critical Paths under _ISR in BANK0
;!
;!    None.
;!
;!Critical Paths under _main in BANK1
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK1
;!
;!    None.
;!
;!Critical Paths under _main in BANK3
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK3
;!
;!    None.
;!
;!Critical Paths under _main in BANK2
;!
;!    None.
;!
;!Critical Paths under _ISR in BANK2
;!
;!    None.

;;
;;Main: autosize = 0, tempsize = 2, incstack = 0, save=0
;;

;!
;!Call Graph Tables:
;!
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (0) _main                                                 4     4      0    2565
;!                                             12 BANK0      4     4      0
;!                            ___lwdiv
;!                      _displayPeriod
;!                            _initLCD
;!                           _instCtrl
;!                           _printStr
;! ---------------------------------------------------------------------------------
;! (1) _printStr                                             2     2      0     208
;!                                              8 COMMON     1     1      0
;!                                              5 BANK0      1     1      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     136
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _displayPeriod                                        2     0      2    1476
;!                                             10 BANK0      2     0      2
;!                            ___lwdiv
;!                            ___lwmod
;!                           _dataCtrl
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0     136
;!                                              7 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0     136
;!                                              7 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                7     7      0     114
;!                                              5 COMMON     2     2      0
;!                                              0 BANK0      5     5      0
;! ---------------------------------------------------------------------------------
;! (2) ___lwmod                                              6     2      4     477
;!                                              5 COMMON     4     0      4
;!                                              0 BANK0      2     2      0
;! ---------------------------------------------------------------------------------
;! (2) ___lwdiv                                              8     4      4     586
;!                                              2 BANK0      8     4      4
;!                            ___lwmod (ARG)
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 3
;! ---------------------------------------------------------------------------------
;! (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;! ---------------------------------------------------------------------------------
;! (4) _ISR                                                  5     5      0       0
;!                                              0 COMMON     5     5      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 4
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   ___lwdiv
;!     ___lwmod (ARG)
;!   _displayPeriod
;!     ___lwdiv
;!       ___lwmod (ARG)
;!     ___lwmod
;!     _dataCtrl
;!       _delay
;!     _instCtrl
;!       _delay
;!   _initLCD
;!     _instCtrl
;!       _delay
;!   _instCtrl
;!     _delay
;!   _printStr
;!     _dataCtrl
;!       _delay
;!
;! _ISR (ROOT)
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      9       9       1       64.3%
;!BITSFR0              0      0       0       1        0.0%
;!SFR0                 0      0       0       1        0.0%
;!BITSFR1              0      0       0       2        0.0%
;!SFR1                 0      0       0       2        0.0%
;!STACK                0      0       0       2        0.0%
;!ABS                  0      0      1C       3        0.0%
;!BITBANK0            50      0       0       4        0.0%
;!BITSFR3              0      0       0       4        0.0%
;!SFR3                 0      0       0       4        0.0%
;!BANK0               50     10      13       5       23.8%
;!BITSFR2              0      0       0       5        0.0%
;!SFR2                 0      0       0       5        0.0%
;!BITBANK1            50      0       0       6        0.0%
;!BANK1               50      0       0       7        0.0%
;!BITBANK3            60      0       0       8        0.0%
;!BANK3               60      0       0       9        0.0%
;!BITBANK2            60      0       0      10        0.0%
;!BANK2               60      0       0      11        0.0%
;!DATA                 0      0      1C      12        0.0%

	global	_main

;; *************** function _main *****************
;; Defined at:
;;		line 79 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  period_ms       2   14[BANK0 ] unsigned int 
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
;;      Locals:         0       2       0       0       0
;;      Temps:          0       2       0       0       0
;;      Totals:         0       4       0       0       0
;;Total ram usage:        4 bytes
;; Hardware stack levels required when called:    4
;; This function calls:
;;		___lwdiv
;;		_displayPeriod
;;		_initLCD
;;		_instCtrl
;;		_printStr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
	line	79
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
	line	79
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 4
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	80
	
l806:	
;LE4-6.c: 80: ADCON1 = 0x06;
	movlw	(06h)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(159)^080h	;volatile
	line	81
	
l808:	
;LE4-6.c: 81: TRISA = 0x00;
	clrf	(133)^080h	;volatile
	line	82
	
l810:	
;LE4-6.c: 82: TRISB = 0x00;
	clrf	(134)^080h	;volatile
	line	83
;LE4-6.c: 83: TRISC = 0x04;
	movlw	(04h)
	movwf	(135)^080h	;volatile
	line	84
	
l812:	
;LE4-6.c: 84: TRISD = 0x00;
	clrf	(136)^080h	;volatile
	line	87
	
l814:	
;LE4-6.c: 87: initLCD();
	fcall	_initLCD
	line	88
	
l816:	
;LE4-6.c: 88: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	89
	
l818:	
;LE4-6.c: 89: printStr("PERIOD:  ");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_printStr
	line	91
	
l820:	
;LE4-6.c: 91: T1CON = 0x30;
	movlw	(030h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(16)	;volatile
	line	92
	
l822:	
;LE4-6.c: 92: CCP1CON = 0x05;
	movlw	(05h)
	movwf	(23)	;volatile
	line	93
	
l824:	
;LE4-6.c: 93: CCP1IE = 1;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	bsf	(1122/8)^080h,(1122)&7	;volatile
	line	94
	
l826:	
;LE4-6.c: 94: CCP1IF = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(98/8),(98)&7	;volatile
	line	95
	
l828:	
;LE4-6.c: 95: PEIE = 1;
	bsf	(94/8),(94)&7	;volatile
	line	96
	
l830:	
;LE4-6.c: 96: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	97
	
l832:	
;LE4-6.c: 97: TMR1ON = 1;
	bsf	(128/8),(128)&7	;volatile
	goto	l834
	line	99
;LE4-6.c: 99: for(;;){
	
l74:	
	line	100
	
l834:	
;LE4-6.c: 100: if(newCapture){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(_newCapture),w	;volatile
	skipz
	goto	u400
	goto	l834
u400:
	line	101
	
l836:	
;LE4-6.c: 101: newCapture = 0;
	clrf	(_newCapture)	;volatile
	line	103
	
l838:	
;LE4-6.c: 103: unsigned int period_ms = ((capturedPeriod * 8) / 1000)*2;
	movlw	low(03E8h)
	movwf	(___lwdiv@divisor)
	movlw	high(03E8h)
	movwf	((___lwdiv@divisor))+1
	movf	(_capturedPeriod+1),w	;volatile
	movwf	(??_main+0)+0+1
	movf	(_capturedPeriod),w	;volatile
	movwf	(??_main+0)+0
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	clrc
	rlf	(??_main+0)+0,f
	rlf	(??_main+0)+1,f
	movf	0+(??_main+0)+0,w
	movwf	(___lwdiv@dividend)
	movf	1+(??_main+0)+0,w
	movwf	(___lwdiv@dividend+1)
	fcall	___lwdiv
	clrc
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	rlf	(0+(?___lwdiv)),w
	movwf	(main@period_ms)
	rlf	(1+(?___lwdiv)),w
	movwf	1+(main@period_ms)
	line	104
	
l840:	
;LE4-6.c: 104: displayPeriod(period_ms);
	movf	(main@period_ms+1),w
	clrf	(displayPeriod@period+1)
	addwf	(displayPeriod@period+1)
	movf	(main@period_ms),w
	clrf	(displayPeriod@period)
	addwf	(displayPeriod@period)

	fcall	_displayPeriod
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l834
	line	105
	
l75:	
	line	106
;LE4-6.c: 105: }
;LE4-6.c: 106: }
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	goto	l834
	
l76:	
	line	107
	
l77:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_printStr

;; *************** function _printStr *****************
;; Defined at:
;;		line 46 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR const unsigned char 
;;		 -> STR_1(10), 
;; Auto vars:     Size  Location     Type
;;  str             1    5[BANK0 ] PTR const unsigned char 
;;		 -> STR_1(10), 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         1       1       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_dataCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	46
global __ptext1
__ptext1:	;psect for function _printStr
psect	text1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
	line	46
	global	__size_of_printStr
	__size_of_printStr	equ	__end_of_printStr-_printStr
	
_printStr:	
;incstack = 0
	opt	stack 4
; Regs used in _printStr: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printStr@str stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(printStr@str)
	line	47
	
l782:	
;LE4-6.c: 47: while(*str != '\0'){
	goto	l788
	
l62:	
	line	48
	
l784:	
;LE4-6.c: 48: dataCtrl(*str);
	movf	(printStr@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_dataCtrl
	line	49
	
l786:	
;LE4-6.c: 49: str++;
	movlw	(01h)
	movwf	(??_printStr+0)+0
	movf	(??_printStr+0)+0,w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(printStr@str),f
	goto	l788
	line	50
	
l61:	
	line	47
	
l788:	
	movf	(printStr@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u381
	goto	u380
u381:
	goto	l784
u380:
	goto	l64
	
l63:	
	line	51
	
l64:	
	return
	opt stack 0
GLOBAL	__end_of_printStr
	__end_of_printStr:
	signat	_printStr,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 38 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
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
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	38
global __ptext2
__ptext2:	;psect for function _initLCD
psect	text2
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
	line	38
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 4
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	39
	
l780:	
;LE4-6.c: 39: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	40
;LE4-6.c: 40: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	41
;LE4-6.c: 41: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	42
;LE4-6.c: 42: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	43
;LE4-6.c: 43: instCtrl(0x0F);
	movlw	(0Fh)
	fcall	_instCtrl
	line	44
	
l58:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_displayPeriod

;; *************** function _displayPeriod *****************
;; Defined at:
;;		line 53 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;  period          2   10[BANK0 ] unsigned int 
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
;;      Params:         0       2       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       2       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    3
;; This function calls:
;;		___lwdiv
;;		___lwmod
;;		_dataCtrl
;;		_instCtrl
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text3,local,class=CODE,delta=2,merge=1
	line	53
global __ptext3
__ptext3:	;psect for function _displayPeriod
psect	text3
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
	line	53
	global	__size_of_displayPeriod
	__size_of_displayPeriod	equ	__end_of_displayPeriod-_displayPeriod
	
_displayPeriod:	
;incstack = 0
	opt	stack 4
; Regs used in _displayPeriod: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	54
	
l790:	
;LE4-6.c: 54: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	57
;LE4-6.c: 57: dataCtrl((period / 1000) + '0');
	movlw	low(03E8h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwdiv@divisor)
	movlw	high(03E8h)
	movwf	((___lwdiv@divisor))+1
	movf	(displayPeriod@period+1),w
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(displayPeriod@period),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_dataCtrl
	line	58
;LE4-6.c: 58: dataCtrl(((period % 1000) / 100) + '0');
	movlw	low(064h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwdiv@divisor)
	movlw	high(064h)
	movwf	((___lwdiv@divisor))+1
	movf	(displayPeriod@period+1),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(displayPeriod@period),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	movlw	low(03E8h)
	movwf	(___lwmod@divisor)
	movlw	high(03E8h)
	movwf	((___lwmod@divisor))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(0+(?___lwmod)),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_dataCtrl
	line	59
;LE4-6.c: 59: dataCtrl(((period % 100) / 10) + '0');
	movlw	low(0Ah)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(___lwdiv@divisor)
	movlw	high(0Ah)
	movwf	((___lwdiv@divisor))+1
	movf	(displayPeriod@period+1),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(displayPeriod@period),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	movlw	low(064h)
	movwf	(___lwmod@divisor)
	movlw	high(064h)
	movwf	((___lwmod@divisor))+1
	fcall	___lwmod
	movf	(1+(?___lwmod)),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@dividend+1)
	addwf	(___lwdiv@dividend+1)
	movf	(0+(?___lwmod)),w
	clrf	(___lwdiv@dividend)
	addwf	(___lwdiv@dividend)

	fcall	___lwdiv
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(0+(?___lwdiv)),w
	addlw	030h
	fcall	_dataCtrl
	line	60
;LE4-6.c: 60: dataCtrl((period % 10) + '0');
	movlw	low(0Ah)
	movwf	(___lwmod@divisor)
	movlw	high(0Ah)
	movwf	((___lwmod@divisor))+1
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	(displayPeriod@period+1),w
	clrf	(___lwmod@dividend+1)
	addwf	(___lwmod@dividend+1)
	movf	(displayPeriod@period),w
	clrf	(___lwmod@dividend)
	addwf	(___lwmod@dividend)

	fcall	___lwmod
	movf	(0+(?___lwmod)),w
	addlw	030h
	fcall	_dataCtrl
	line	61
;LE4-6.c: 61: dataCtrl('m');
	movlw	(06Dh)
	fcall	_dataCtrl
	line	62
;LE4-6.c: 62: dataCtrl('s');
	movlw	(073h)
	fcall	_dataCtrl
	line	63
;LE4-6.c: 63: dataCtrl(' ');
	movlw	(020h)
	fcall	_dataCtrl
	line	64
;LE4-6.c: 64: dataCtrl(' ');
	movlw	(020h)
	fcall	_dataCtrl
	line	65
	
l67:	
	return
	opt stack 0
GLOBAL	__end_of_displayPeriod
	__end_of_displayPeriod:
	signat	_displayPeriod,4216
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 29 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_initLCD
;;		_displayPeriod
;;		_main
;; This function uses a non-reentrant model
;;
psect	text4,local,class=CODE,delta=2,merge=1
	line	29
global __ptext4
__ptext4:	;psect for function _instCtrl
psect	text4
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
	line	29
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	30
	
l720:	
;LE4-6.c: 30: PORTB = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	31
	
l722:	
;LE4-6.c: 31: RD0 = 0;
	bcf	(64/8),(64)&7	;volatile
	line	32
	
l724:	
;LE4-6.c: 32: RD2 = 0;
	bcf	(66/8),(66)&7	;volatile
	line	33
	
l726:	
;LE4-6.c: 33: RD1 = 1;
	bsf	(65/8),(65)&7	;volatile
	line	34
	
l728:	
;LE4-6.c: 34: delay(1);
	movlw	(01h)
	fcall	_delay
	line	35
	
l730:	
;LE4-6.c: 35: RD1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7	;volatile
	line	36
	
l55:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 20 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
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
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_delay
;; This function is called by:
;;		_printStr
;;		_displayPeriod
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	20
global __ptext5
__ptext5:	;psect for function _dataCtrl
psect	text5
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
	line	20
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 4
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@INST stored from wreg
	movwf	(dataCtrl@INST)
	line	21
	
l708:	
;LE4-6.c: 21: PORTB = INST;
	movf	(dataCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	22
	
l710:	
;LE4-6.c: 22: RD0 = 1;
	bsf	(64/8),(64)&7	;volatile
	line	23
	
l712:	
;LE4-6.c: 23: RD2 = 0;
	bcf	(66/8),(66)&7	;volatile
	line	24
	
l714:	
;LE4-6.c: 24: RD1 = 1;
	bsf	(65/8),(65)&7	;volatile
	line	25
	
l716:	
;LE4-6.c: 25: delay(1);
	movlw	(01h)
	fcall	_delay
	line	26
	
l718:	
;LE4-6.c: 26: RD1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(65/8),(65)&7	;volatile
	line	27
	
l52:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 14 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;  cnt             1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  cnt             1    0[BANK0 ] unsigned char 
;;  j               2    3[BANK0 ] int 
;;  i               2    1[BANK0 ] int 
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
;;      Locals:         0       5       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       5       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_dataCtrl
;;		_instCtrl
;; This function uses a non-reentrant model
;;
psect	text6,local,class=CODE,delta=2,merge=1
	line	14
global __ptext6
__ptext6:	;psect for function _delay
psect	text6
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
	line	14
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 4
; Regs used in _delay: [wreg+status,2+status,0+btemp+1]
;delay@cnt stored from wreg
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(delay@cnt)
	line	16
	
l688:	
;LE4-6.c: 15: int i, j;
;LE4-6.c: 16: for (i = cnt; i != 0; i--)
	movf	(delay@cnt),w
	movwf	(??_delay+0)+0
	clrf	(??_delay+0)+0+1
	movf	0+(??_delay+0)+0,w
	movwf	(delay@i)
	movf	1+(??_delay+0)+0,w
	movwf	(delay@i+1)
	
l690:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u211
	goto	u210
u211:
	goto	l694
u210:
	goto	l49
	
l692:	
	goto	l49
	line	17
	
l45:	
	
l694:	
;LE4-6.c: 17: for (j = 0; j < 1000; j++){}
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l696:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u225
	movlw	low(03E8h)
	subwf	(delay@j),w
u225:

	skipc
	goto	u221
	goto	u220
u221:
	goto	l700
u220:
	goto	l704
	
l698:	
	goto	l704
	
l47:	
	
l700:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l702:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u235
	movlw	low(03E8h)
	subwf	(delay@j),w
u235:

	skipc
	goto	u231
	goto	u230
u231:
	goto	l700
u230:
	goto	l704
	
l48:	
	line	16
	
l704:	
	movlw	low(-1)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(-1)
	addwf	(delay@i+1),f
	
l706:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u241
	goto	u240
u241:
	goto	l694
u240:
	goto	l49
	
l46:	
	line	18
	
l49:	
	return
	opt stack 0
GLOBAL	__end_of_delay
	__end_of_delay:
	signat	_delay,4216
	global	___lwmod

;; *************** function ___lwmod *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    5[COMMON] unsigned int 
;;  dividend        2    7[COMMON] unsigned int 
;; Auto vars:     Size  Location     Type
;;  counter         1    1[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    5[COMMON] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         4       0       0       0       0
;;      Locals:         0       1       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         4       2       0       0       0
;;Total ram usage:        6 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_displayPeriod
;; This function uses a non-reentrant model
;;
psect	text7,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
global __ptext7
__ptext7:	;psect for function ___lwmod
psect	text7
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwmod.c"
	line	6
	global	__size_of___lwmod
	__size_of___lwmod	equ	__end_of___lwmod-___lwmod
	
___lwmod:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwmod: [wreg+status,2+status,0]
	line	13
	
l758:	
	movf	(___lwmod@divisor+1),w
	iorwf	(___lwmod@divisor),w
	skipnz
	goto	u321
	goto	u320
u321:
	goto	l776
u320:
	line	14
	
l760:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwmod@counter)
	incf	(___lwmod@counter),f
	line	15
	goto	l766
	
l502:	
	line	16
	
l762:	
	movlw	01h
	
u335:
	clrc
	rlf	(___lwmod@divisor),f
	rlf	(___lwmod@divisor+1),f
	addlw	-1
	skipz
	goto	u335
	line	17
	
l764:	
	movlw	(01h)
	movwf	(??___lwmod+0)+0
	movf	(??___lwmod+0)+0,w
	addwf	(___lwmod@counter),f
	goto	l766
	line	18
	
l501:	
	line	15
	
l766:	
	btfss	(___lwmod@divisor+1),(15)&7
	goto	u341
	goto	u340
u341:
	goto	l762
u340:
	goto	l768
	
l503:	
	goto	l768
	line	19
	
l504:	
	line	20
	
l768:	
	movf	(___lwmod@divisor+1),w
	subwf	(___lwmod@dividend+1),w
	skipz
	goto	u355
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),w
u355:
	skipc
	goto	u351
	goto	u350
u351:
	goto	l772
u350:
	line	21
	
l770:	
	movf	(___lwmod@divisor),w
	subwf	(___lwmod@dividend),f
	movf	(___lwmod@divisor+1),w
	skipc
	decf	(___lwmod@dividend+1),f
	subwf	(___lwmod@dividend+1),f
	goto	l772
	
l505:	
	line	22
	
l772:	
	movlw	01h
	
u365:
	clrc
	rrf	(___lwmod@divisor+1),f
	rrf	(___lwmod@divisor),f
	addlw	-1
	skipz
	goto	u365
	line	23
	
l774:	
	movlw	low(01h)
	subwf	(___lwmod@counter),f
	btfss	status,2
	goto	u371
	goto	u370
u371:
	goto	l768
u370:
	goto	l776
	
l506:	
	goto	l776
	line	24
	
l500:	
	line	25
	
l776:	
	movf	(___lwmod@dividend+1),w
	clrf	(?___lwmod+1)
	addwf	(?___lwmod+1)
	movf	(___lwmod@dividend),w
	clrf	(?___lwmod)
	addwf	(?___lwmod)

	goto	l507
	
l778:	
	line	26
	
l507:	
	return
	opt stack 0
GLOBAL	__end_of___lwmod
	__end_of___lwmod:
	signat	___lwmod,8314
	global	___lwdiv

;; *************** function ___lwdiv *****************
;; Defined at:
;;		line 6 in file "C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
;; Parameters:    Size  Location     Type
;;  divisor         2    2[BANK0 ] unsigned int 
;;  dividend        2    4[BANK0 ] unsigned int 
;; Auto vars:     Size  Location     Type
;;  quotient        2    7[BANK0 ] unsigned int 
;;  counter         1    9[BANK0 ] unsigned char 
;; Return value:  Size  Location     Type
;;                  2    2[BANK0 ] unsigned int 
;; Registers used:
;;		wreg, status,2, status,0
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       4       0       0       0
;;      Locals:         0       3       0       0       0
;;      Temps:          0       1       0       0       0
;;      Totals:         0       8       0       0       0
;;Total ram usage:        8 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_displayPeriod
;;		_main
;; This function uses a non-reentrant model
;;
psect	text8,local,class=CODE,delta=2,merge=1
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
global __ptext8
__ptext8:	;psect for function ___lwdiv
psect	text8
	file	"C:\Program Files (x86)\Microchip\xc8\v1.33\sources\common\lwdiv.c"
	line	6
	global	__size_of___lwdiv
	__size_of___lwdiv	equ	__end_of___lwdiv-___lwdiv
	
___lwdiv:	
;incstack = 0
	opt	stack 5
; Regs used in ___lwdiv: [wreg+status,2+status,0]
	line	14
	
l732:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(___lwdiv@quotient)
	clrf	(___lwdiv@quotient+1)
	line	15
	
l734:	
	movf	(___lwdiv@divisor+1),w
	iorwf	(___lwdiv@divisor),w
	skipnz
	goto	u251
	goto	u250
u251:
	goto	l754
u250:
	line	16
	
l736:	
	clrf	(___lwdiv@counter)
	incf	(___lwdiv@counter),f
	line	17
	goto	l742
	
l492:	
	line	18
	
l738:	
	movlw	01h
	
u265:
	clrc
	rlf	(___lwdiv@divisor),f
	rlf	(___lwdiv@divisor+1),f
	addlw	-1
	skipz
	goto	u265
	line	19
	
l740:	
	movlw	(01h)
	movwf	(??___lwdiv+0)+0
	movf	(??___lwdiv+0)+0,w
	addwf	(___lwdiv@counter),f
	goto	l742
	line	20
	
l491:	
	line	17
	
l742:	
	btfss	(___lwdiv@divisor+1),(15)&7
	goto	u271
	goto	u270
u271:
	goto	l738
u270:
	goto	l744
	
l493:	
	goto	l744
	line	21
	
l494:	
	line	22
	
l744:	
	movlw	01h
	
u285:
	clrc
	rlf	(___lwdiv@quotient),f
	rlf	(___lwdiv@quotient+1),f
	addlw	-1
	skipz
	goto	u285
	line	23
	movf	(___lwdiv@divisor+1),w
	subwf	(___lwdiv@dividend+1),w
	skipz
	goto	u295
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),w
u295:
	skipc
	goto	u291
	goto	u290
u291:
	goto	l750
u290:
	line	24
	
l746:	
	movf	(___lwdiv@divisor),w
	subwf	(___lwdiv@dividend),f
	movf	(___lwdiv@divisor+1),w
	skipc
	decf	(___lwdiv@dividend+1),f
	subwf	(___lwdiv@dividend+1),f
	line	25
	
l748:	
	bsf	(___lwdiv@quotient)+(0/8),(0)&7
	goto	l750
	line	26
	
l495:	
	line	27
	
l750:	
	movlw	01h
	
u305:
	clrc
	rrf	(___lwdiv@divisor+1),f
	rrf	(___lwdiv@divisor),f
	addlw	-1
	skipz
	goto	u305
	line	28
	
l752:	
	movlw	low(01h)
	subwf	(___lwdiv@counter),f
	btfss	status,2
	goto	u311
	goto	u310
u311:
	goto	l744
u310:
	goto	l754
	
l496:	
	goto	l754
	line	29
	
l490:	
	line	30
	
l754:	
	movf	(___lwdiv@quotient+1),w
	clrf	(?___lwdiv+1)
	addwf	(?___lwdiv+1)
	movf	(___lwdiv@quotient),w
	clrf	(?___lwdiv)
	addwf	(?___lwdiv)

	goto	l497
	
l756:	
	line	31
	
l497:	
	return
	opt stack 0
GLOBAL	__end_of___lwdiv
	__end_of___lwdiv:
	signat	___lwdiv,8314
	global	_ISR

;; *************** function _ISR *****************
;; Defined at:
;;		line 67 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          5       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		Interrupt level 1
;; This function uses a non-reentrant model
;;
psect	text9,local,class=CODE,delta=2,merge=1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
	line	67
global __ptext9
__ptext9:	;psect for function _ISR
psect	text9
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA4\LE4-6\LE4-6.c"
	line	67
	global	__size_of_ISR
	__size_of_ISR	equ	__end_of_ISR-_ISR
	
_ISR:	
;incstack = 0
	opt	stack 4
; Regs used in _ISR: [wreg+status,2+status,0]
psect	intentry,class=CODE,delta=2
global __pintentry
__pintentry:
global interrupt_function
interrupt_function:
	global saved_w
	saved_w	set	btemp+0
	movwf	saved_w
	swapf	status,w
	movwf	(??_ISR+1)
	movf	fsr0,w
	movwf	(??_ISR+2)
	movf	pclath,w
	movwf	(??_ISR+3)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movf	btemp+1,w
	movwf	(??_ISR+4)
	ljmp	_ISR
psect	text9
	line	68
	
i1l792:	
;LE4-6.c: 68: GIE = 0;
	bcf	(95/8),(95)&7	;volatile
	line	69
;LE4-6.c: 69: if(CCP1IF == 1){
	btfss	(98/8),(98)&7	;volatile
	goto	u39_21
	goto	u39_20
u39_21:
	goto	i1l804
u39_20:
	line	70
	
i1l794:	
;LE4-6.c: 70: CCP1IF = 0;
	bcf	(98/8),(98)&7	;volatile
	line	71
	
i1l796:	
;LE4-6.c: 71: capturedPeriod = CCPR1;
	movf	(21+1),w	;volatile
	clrf	(_capturedPeriod+1)	;volatile
	addwf	(_capturedPeriod+1)	;volatile
	movf	(21),w	;volatile
	clrf	(_capturedPeriod)	;volatile
	addwf	(_capturedPeriod)	;volatile

	line	72
	
i1l798:	
;LE4-6.c: 72: TMR1 = 0;
	clrf	(14)	;volatile
	clrf	(14+1)	;volatile
	line	73
	
i1l800:	
;LE4-6.c: 73: newCapture = 1;
	movlw	(01h)
	movwf	(??_ISR+0)+0
	movf	(??_ISR+0)+0,w
	movwf	(_newCapture)	;volatile
	line	74
	
i1l802:	
;LE4-6.c: 74: RA0 = RA0^1;
	movlw	1<<((40)&7)
	xorwf	((40)/8),f
	goto	i1l804
	line	75
	
i1l70:	
	line	76
	
i1l804:	
;LE4-6.c: 75: }
;LE4-6.c: 76: GIE = 1;
	bsf	(95/8),(95)&7	;volatile
	line	77
	
i1l71:	
	movf	(??_ISR+4),w
	movwf	btemp+1
	movf	(??_ISR+3),w
	movwf	pclath
	movf	(??_ISR+2),w
	movwf	fsr0
	swapf	(??_ISR+1)^0FFFFFF80h,w
	movwf	status
	swapf	saved_w,f
	swapf	saved_w,w
	retfie
	opt stack 0
GLOBAL	__end_of_ISR
	__end_of_ISR:
	signat	_ISR,88
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
