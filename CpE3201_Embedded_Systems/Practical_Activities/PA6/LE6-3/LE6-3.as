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
	FNCALL	_main,_sendChar
	FNCALL	_main,_sendString
	FNCALL	_sendString,_sendChar
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
	global	_TXREG
_TXREG	set	0x19
	global	_RB4
_RB4	set	0x34
	global	_SPEN
_SPEN	set	0xC7
	global	_TXIF
_TXIF	set	0x64
	global	_SPBRG
_SPBRG	set	0x99
	global	_TRISB
_TRISB	set	0x86
	global	_BRGH
_BRGH	set	0x4C2
	global	_SYNC
_SYNC	set	0x4C4
	global	_TX9
_TX9	set	0x4C6
	global	_TXEN
_TXEN	set	0x4C5
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
	
STR_12:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	35	;'#'
	retlw	0
psect	strings
	
STR_10:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	42	;'*'
	retlw	0
psect	strings
	
STR_11:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	48	;'0'
	retlw	0
psect	strings
	
STR_1:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	49	;'1'
	retlw	0
psect	strings
	
STR_2:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	50	;'2'
	retlw	0
psect	strings
	
STR_3:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	51	;'3'
	retlw	0
psect	strings
	
STR_4:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	52	;'4'
	retlw	0
psect	strings
	
STR_5:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	53	;'5'
	retlw	0
psect	strings
	
STR_6:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	54	;'6'
	retlw	0
psect	strings
	
STR_7:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	55	;'7'
	retlw	0
psect	strings
	
STR_8:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	56	;'8'
	retlw	0
psect	strings
	
STR_9:	
	retlw	89	;'Y'
	retlw	111	;'o'
	retlw	117	;'u'
	retlw	32	;' '
	retlw	112	;'p'
	retlw	114	;'r'
	retlw	101	;'e'
	retlw	115	;'s'
	retlw	115	;'s'
	retlw	101	;'e'
	retlw	100	;'d'
	retlw	32	;' '
	retlw	57	;'9'
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
	file	"LE6-3.as"
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
?_sendChar:	; 0 bytes @ 0x0
??_sendChar:	; 0 bytes @ 0x0
?_sendString:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	global	sendChar@ch
sendChar@ch:	; 1 bytes @ 0x0
	ds	1
??_sendString:	; 0 bytes @ 0x1
	ds	1
	global	sendString@i
sendString@i:	; 1 bytes @ 0x2
	ds	1
	global	sendString@str
sendString@str:	; 1 bytes @ 0x3
	ds	1
??_main:	; 0 bytes @ 0x4
	ds	1
	global	main@prevDATA
main@prevDATA:	; 1 bytes @ 0x5
	ds	1
	global	main@DATA
main@DATA:	; 1 bytes @ 0x6
	ds	1
;!
;!Data Sizes:
;!    Strings     168
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14      7       7
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    sendString@str	PTR const unsigned char  size(1) Largest target is 14
;!		 -> STR_12(CODE[14]), STR_11(CODE[14]), STR_10(CODE[14]), STR_9(CODE[14]), 
;!		 -> STR_8(CODE[14]), STR_7(CODE[14]), STR_6(CODE[14]), STR_5(CODE[14]), 
;!		 -> STR_4(CODE[14]), STR_3(CODE[14]), STR_2(CODE[14]), STR_1(CODE[14]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_sendString
;!    _sendString->_sendChar
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
;! (0) _main                                                 3     3      0     438
;!                                              4 COMMON     3     3      0
;!                           _sendChar
;!                         _sendString
;! ---------------------------------------------------------------------------------
;! (1) _sendString                                           3     3      0     363
;!                                              1 COMMON     3     3      0
;!                           _sendChar
;! ---------------------------------------------------------------------------------
;! (2) _sendChar                                             1     1      0      15
;!                                              0 COMMON     1     1      0
;! ---------------------------------------------------------------------------------
;! Estimated maximum stack depth 2
;! ---------------------------------------------------------------------------------
;!
;! Call Graph Graphs:
;!
;! _main (ROOT)
;!   _sendChar
;!   _sendString
;!     _sendChar
;!

;! Address spaces:

;!Name               Size   Autos  Total    Cost      Usage
;!BITCOMMON            E      0       0       0        0.0%
;!EEDATA             100      0       0       0        0.0%
;!NULL                 0      0       0       0        0.0%
;!CODE                 0      0       0       0        0.0%
;!COMMON               E      7       7       1       50.0%
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
;;		line 23 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA6\LE6-3\LE6-3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  DATA            1    6[COMMON] unsigned char 
;;  prevDATA        1    5[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_sendChar
;;		_sendString
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA6\LE6-3\LE6-3.c"
	line	23
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA6\LE6-3\LE6-3.c"
	line	23
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 6
; Regs used in _main: [wreg-fsr0h+status,2+status,0+pclath+cstack]
	line	29
	
l527:	
;LE6-3.c: 25: unsigned char DATA;
;LE6-3.c: 26: unsigned char prevDATA;
;LE6-3.c: 29: TRISB = 0xFF;
	movlw	(0FFh)
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	movwf	(134)^080h	;volatile
	line	31
;LE6-3.c: 31: SPBRG = 0x19;
	movlw	(019h)
	movwf	(153)^080h	;volatile
	line	33
	
l529:	
;LE6-3.c: 33: SYNC = 0;
	bcf	(1220/8)^080h,(1220)&7	;volatile
	line	34
	
l531:	
;LE6-3.c: 34: BRGH = 1;
	bsf	(1218/8)^080h,(1218)&7	;volatile
	line	35
	
l533:	
;LE6-3.c: 35: TX9 = 0;
	bcf	(1222/8)^080h,(1222)&7	;volatile
	line	36
	
l535:	
;LE6-3.c: 36: TXEN = 1;
	bsf	(1221/8)^080h,(1221)&7	;volatile
	line	37
	
l537:	
;LE6-3.c: 37: SPEN = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(199/8),(199)&7	;volatile
	line	39
;LE6-3.c: 39: prevDATA = 0xFF;
	movlw	(0FFh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@prevDATA)
	goto	l539
	line	41
;LE6-3.c: 41: while(1){
	
l37:	
	line	42
	
l539:	
;LE6-3.c: 42: if (RB4 == 1){
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(52/8),(52)&7	;volatile
	goto	u31
	goto	u30
u31:
	goto	l577
u30:
	line	43
	
l541:	
;LE6-3.c: 43: DATA = PORTB & 0x0F;
	movf	(6),w	;volatile
	andlw	0Fh
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@DATA)
	line	44
	
l543:	
;LE6-3.c: 44: if (DATA != prevDATA){
	movf	(main@DATA),w
	xorwf	(main@prevDATA),w
	skipnz
	goto	u41
	goto	u40
u41:
	goto	l539
u40:
	line	45
	
l545:	
;LE6-3.c: 45: prevDATA = DATA;
	movf	(main@DATA),w
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@prevDATA)
	line	46
;LE6-3.c: 46: switch(DATA){
	goto	l573
	line	47
;LE6-3.c: 47: case 0x00: sendString("You pressed 1"); break;
	
l41:	
	
l547:	
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_sendString
	goto	l575
	line	48
;LE6-3.c: 48: case 0x01: sendString("You pressed 2"); break;
	
l43:	
	
l549:	
	movlw	((STR_2)-__stringbase)&0ffh
	fcall	_sendString
	goto	l575
	line	49
;LE6-3.c: 49: case 0x02: sendString("You pressed 3"); break;
	
l44:	
	
l551:	
	movlw	((STR_3)-__stringbase)&0ffh
	fcall	_sendString
	goto	l575
	line	50
;LE6-3.c: 50: case 0x04: sendString("You pressed 4"); break;
	
l45:	
	
l553:	
	movlw	((STR_4)-__stringbase)&0ffh
	fcall	_sendString
	goto	l575
	line	51
;LE6-3.c: 51: case 0x05: sendString("You pressed 5"); break;
	
l46:	
	
l555:	
	movlw	((STR_5)-__stringbase)&0ffh
	fcall	_sendString
	goto	l575
	line	52
;LE6-3.c: 52: case 0x06: sendString("You pressed 6"); break;
	
l47:	
	
l557:	
	movlw	((STR_6)-__stringbase)&0ffh
	fcall	_sendString
	goto	l575
	line	53
;LE6-3.c: 53: case 0x08: sendString("You pressed 7"); break;
	
l48:	
	
l559:	
	movlw	((STR_7)-__stringbase)&0ffh
	fcall	_sendString
	goto	l575
	line	54
;LE6-3.c: 54: case 0x09: sendString("You pressed 8"); break;
	
l49:	
	
l561:	
	movlw	((STR_8)-__stringbase)&0ffh
	fcall	_sendString
	goto	l575
	line	55
;LE6-3.c: 55: case 0x0A: sendString("You pressed 9"); break;
	
l50:	
	
l563:	
	movlw	((STR_9)-__stringbase)&0ffh
	fcall	_sendString
	goto	l575
	line	56
;LE6-3.c: 56: case 0x0C: sendString("You pressed *"); break;
	
l51:	
	
l565:	
	movlw	((STR_10)-__stringbase)&0ffh
	fcall	_sendString
	goto	l575
	line	57
;LE6-3.c: 57: case 0x0D: sendString("You pressed 0"); break;
	
l52:	
	
l567:	
	movlw	((STR_11)-__stringbase)&0ffh
	fcall	_sendString
	goto	l575
	line	58
;LE6-3.c: 58: case 0x0E: sendString("You pressed #"); break;
	
l53:	
	
l569:	
	movlw	((STR_12)-__stringbase)&0ffh
	fcall	_sendString
	goto	l575
	line	59
;LE6-3.c: 59: default: break;
	
l54:	
	goto	l575
	line	60
	
l571:	
;LE6-3.c: 60: }
	goto	l575
	line	46
	
l40:	
	
l573:	
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
	goto	l547
	xorlw	1^0	; case 1
	skipnz
	goto	l549
	xorlw	2^1	; case 2
	skipnz
	goto	l551
	xorlw	4^2	; case 4
	skipnz
	goto	l553
	xorlw	5^4	; case 5
	skipnz
	goto	l555
	xorlw	6^5	; case 6
	skipnz
	goto	l557
	xorlw	8^6	; case 8
	skipnz
	goto	l559
	xorlw	9^8	; case 9
	skipnz
	goto	l561
	xorlw	10^9	; case 10
	skipnz
	goto	l563
	xorlw	12^10	; case 12
	skipnz
	goto	l565
	xorlw	13^12	; case 13
	skipnz
	goto	l567
	xorlw	14^13	; case 14
	skipnz
	goto	l569
	goto	l575
	opt asmopt_on

	line	60
	
l42:	
	line	61
	
l575:	
;LE6-3.c: 61: sendChar('\n');
	movlw	(0Ah)
	fcall	_sendChar
	goto	l539
	line	62
	
l39:	
	line	63
;LE6-3.c: 62: }
;LE6-3.c: 63: } else{
	goto	l539
	
l38:	
	line	64
	
l577:	
;LE6-3.c: 64: prevDATA = 0xFF;
	movlw	(0FFh)
	movwf	(??_main+0)+0
	movf	(??_main+0)+0,w
	movwf	(main@prevDATA)
	goto	l539
	line	65
	
l55:	
	goto	l539
	line	66
	
l56:	
	line	41
	goto	l539
	
l57:	
	line	67
	
l58:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_sendString

;; *************** function _sendString *****************
;; Defined at:
;;		line 16 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA6\LE6-3\LE6-3.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR const unsigned char 
;;		 -> STR_12(14), STR_11(14), STR_10(14), STR_9(14), 
;;		 -> STR_8(14), STR_7(14), STR_6(14), STR_5(14), 
;;		 -> STR_4(14), STR_3(14), STR_2(14), STR_1(14), 
;; Auto vars:     Size  Location     Type
;;  str             1    3[COMMON] PTR const unsigned char 
;;		 -> STR_12(14), STR_11(14), STR_10(14), STR_9(14), 
;;		 -> STR_8(14), STR_7(14), STR_6(14), STR_5(14), 
;;		 -> STR_4(14), STR_3(14), STR_2(14), STR_1(14), 
;;  i               1    2[COMMON] unsigned char 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          1       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_sendChar
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text1,local,class=CODE,delta=2,merge=1
	line	16
global __ptext1
__ptext1:	;psect for function _sendString
psect	text1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA6\LE6-3\LE6-3.c"
	line	16
	global	__size_of_sendString
	__size_of_sendString	equ	__end_of_sendString-_sendString
	
_sendString:	
;incstack = 0
	opt	stack 6
; Regs used in _sendString: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;sendString@str stored from wreg
	movwf	(sendString@str)
	line	18
	
l519:	
;LE6-3.c: 17: unsigned char i;
;LE6-3.c: 18: for(i = 0; str[i] != '\0'; i++){
	clrf	(sendString@i)
	goto	l525
	
l32:	
	line	19
	
l521:	
;LE6-3.c: 19: sendChar(str[i]);
	movf	(sendString@i),w
	addwf	(sendString@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_sendChar
	line	18
	
l523:	
	movlw	(01h)
	movwf	(??_sendString+0)+0
	movf	(??_sendString+0)+0,w
	addwf	(sendString@i),f
	goto	l525
	
l31:	
	
l525:	
	movf	(sendString@i),w
	addwf	(sendString@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u21
	goto	u20
u21:
	goto	l521
u20:
	goto	l34
	
l33:	
	line	21
	
l34:	
	return
	opt stack 0
GLOBAL	__end_of_sendString
	__end_of_sendString:
	signat	_sendString,4216
	global	_sendChar

;; *************** function _sendChar *****************
;; Defined at:
;;		line 11 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA6\LE6-3\LE6-3.c"
;; Parameters:    Size  Location     Type
;;  ch              1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  ch              1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
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
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_sendString
;;		_main
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	11
global __ptext2
__ptext2:	;psect for function _sendChar
psect	text2
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Practical_Activities\PA6\LE6-3\LE6-3.c"
	line	11
	global	__size_of_sendChar
	__size_of_sendChar	equ	__end_of_sendChar-_sendChar
	
_sendChar:	
;incstack = 0
	opt	stack 6
; Regs used in _sendChar: [wreg]
;sendChar@ch stored from wreg
	movwf	(sendChar@ch)
	line	12
	
l515:	
;LE6-3.c: 12: while(TXIF == 0);
	goto	l25
	
l26:	
	
l25:	
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	btfss	(100/8),(100)&7	;volatile
	goto	u11
	goto	u10
u11:
	goto	l25
u10:
	goto	l517
	
l27:	
	line	13
	
l517:	
;LE6-3.c: 13: TXREG = ch;
	movf	(sendChar@ch),w
	movwf	(25)	;volatile
	line	14
	
l28:	
	return
	opt stack 0
GLOBAL	__end_of_sendChar
	__end_of_sendChar:
	signat	_sendChar,4216
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
