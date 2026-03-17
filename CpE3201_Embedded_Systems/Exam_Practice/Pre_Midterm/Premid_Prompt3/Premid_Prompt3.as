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
	FNCALL	_main,_printStr
	FNCALL	_printStr,_dataCtrl
	FNCALL	_dataCtrl,_delay
	FNCALL	_initLCD,_delay
	FNCALL	_initLCD,_instCtrl
	FNCALL	_instCtrl,_delay
	FNROOT	_main
	global	_PORTB
_PORTB	set	0x6
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
	
STR_3:	
	retlw	85	;'U'
	retlw	78	;'N'
	retlw	73	;'I'
	retlw	86	;'V'
	retlw	69	;'E'
	retlw	82	;'R'
	retlw	83	;'S'
	retlw	73	;'I'
	retlw	84	;'T'
	retlw	89	;'Y'
	retlw	32	;' '
	retlw	79	;'O'
	retlw	70	;'F'
	retlw	0
psect	strings
	
STR_1:	
	retlw	69	;'E'
	retlw	78	;'N'
	retlw	90	;'Z'
	retlw	79	;'O'
	retlw	32	;' '
	retlw	66	;'B'
	retlw	65	;'A'
	retlw	83	;'S'
	retlw	85	;'U'
	retlw	73	;'I'
	retlw	76	;'L'
	retlw	0
psect	strings
	
STR_4:	
	retlw	83	;'S'
	retlw	65	;'A'
	retlw	78	;'N'
	retlw	32	;' '
	retlw	67	;'C'
	retlw	65	;'A'
	retlw	82	;'R'
	retlw	76	;'L'
	retlw	79	;'O'
	retlw	83	;'S'
	retlw	0
psect	strings
	
STR_2:	
	retlw	67	;'C'
	retlw	80	;'P'
	retlw	69	;'E'
	retlw	32	;' '
	retlw	51	;'3'
	retlw	50	;'2'
	retlw	48	;'0'
	retlw	49	;'1'
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
	file	"Premid_Prompt3.as"
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
?_printStr:	; 0 bytes @ 0x0
?_main:	; 0 bytes @ 0x0
	ds	2
	global	delay@cnt
delay@cnt:	; 1 bytes @ 0x2
	ds	1
	global	delay@i
delay@i:	; 2 bytes @ 0x3
	ds	2
	global	delay@j
delay@j:	; 2 bytes @ 0x5
	ds	2
??_dataCtrl:	; 0 bytes @ 0x7
??_instCtrl:	; 0 bytes @ 0x7
	global	dataCtrl@INST
dataCtrl@INST:	; 1 bytes @ 0x7
	global	instCtrl@INST
instCtrl@INST:	; 1 bytes @ 0x7
	ds	1
??_initLCD:	; 0 bytes @ 0x8
??_printStr:	; 0 bytes @ 0x8
	ds	1
	global	printStr@str
printStr@str:	; 1 bytes @ 0x9
	ds	1
??_main:	; 0 bytes @ 0xA
;!
;!Data Sizes:
;!    Strings     46
;!    Constant    0
;!    Data        0
;!    BSS         0
;!    Persistent  0
;!    Stack       0
;!
;!Auto Spaces:
;!    Space          Size  Autos    Used
;!    COMMON           14     10      10
;!    BANK0            80      0       0
;!    BANK1            80      0       0
;!    BANK3            96      0       0
;!    BANK2            96      0       0

;!
;!Pointer List with Targets:
;!
;!    printStr@str	PTR const unsigned char  size(1) Largest target is 14
;!		 -> STR_4(CODE[11]), STR_3(CODE[14]), STR_2(CODE[9]), STR_1(CODE[12]), 
;!


;!
;!Critical Paths under _main in COMMON
;!
;!    _main->_printStr
;!    _printStr->_dataCtrl
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
;! (0) _main                                                 0     0      0     471
;!                            _initLCD
;!                           _instCtrl
;!                           _printStr
;! ---------------------------------------------------------------------------------
;! (1) _printStr                                             2     2      0     216
;!                                              8 COMMON     2     2      0
;!                           _dataCtrl
;! ---------------------------------------------------------------------------------
;! (2) _dataCtrl                                             1     1      0      90
;!                                              7 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (1) _initLCD                                              0     0      0     165
;!                              _delay
;!                           _instCtrl
;! ---------------------------------------------------------------------------------
;! (1) _instCtrl                                             1     1      0      90
;!                                              7 COMMON     1     1      0
;!                              _delay
;! ---------------------------------------------------------------------------------
;! (3) _delay                                                7     7      0      75
;!                                              0 COMMON     7     7      0
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
;!   _printStr
;!     _dataCtrl
;!       _delay
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
;;		line 54 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Exam_Practice\Pre_Midterm\Premid_Prompt3\Premid_Prompt3.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
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
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_initLCD
;;		_instCtrl
;;		_printStr
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext,global,class=CODE,delta=2,split=1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Exam_Practice\Pre_Midterm\Premid_Prompt3\Premid_Prompt3.c"
	line	54
global __pmaintext
__pmaintext:	;psect for function _main
psect	maintext
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Exam_Practice\Pre_Midterm\Premid_Prompt3\Premid_Prompt3.c"
	line	54
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
;incstack = 0
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	55
	
l548:	
;Premid_Prompt3.c: 55: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	56
;Premid_Prompt3.c: 56: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	58
	
l550:	
;Premid_Prompt3.c: 58: initLCD();
	fcall	_initLCD
	line	61
	
l552:	
;Premid_Prompt3.c: 61: instCtrl(0x80);
	movlw	(080h)
	fcall	_instCtrl
	line	62
	
l554:	
;Premid_Prompt3.c: 62: printStr("ENZO BASUIL");
	movlw	((STR_1)-__stringbase)&0ffh
	fcall	_printStr
	line	64
	
l556:	
;Premid_Prompt3.c: 64: instCtrl(0xC0);
	movlw	(0C0h)
	fcall	_instCtrl
	line	65
	
l558:	
;Premid_Prompt3.c: 65: printStr("CPE 3201");
	movlw	((STR_2)-__stringbase)&0ffh
	fcall	_printStr
	line	67
	
l560:	
;Premid_Prompt3.c: 67: instCtrl(0x94);
	movlw	(094h)
	fcall	_instCtrl
	line	68
	
l562:	
;Premid_Prompt3.c: 68: printStr("UNIVERSITY OF");
	movlw	((STR_3)-__stringbase)&0ffh
	fcall	_printStr
	line	70
	
l564:	
;Premid_Prompt3.c: 70: instCtrl(0xD4);
	movlw	(0D4h)
	fcall	_instCtrl
	line	71
	
l566:	
;Premid_Prompt3.c: 71: printStr("SAN CARLOS");
	movlw	((STR_4)-__stringbase)&0ffh
	fcall	_printStr
	line	74
	
l37:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
	signat	_main,88
	global	_printStr

;; *************** function _printStr *****************
;; Defined at:
;;		line 47 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Exam_Practice\Pre_Midterm\Premid_Prompt3\Premid_Prompt3.c"
;; Parameters:    Size  Location     Type
;;  str             1    wreg     PTR const unsigned char 
;;		 -> STR_4(11), STR_3(14), STR_2(9), STR_1(12), 
;; Auto vars:     Size  Location     Type
;;  str             1    9[COMMON] PTR const unsigned char 
;;		 -> STR_4(11), STR_3(14), STR_2(9), STR_1(12), 
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
	line	47
global __ptext1
__ptext1:	;psect for function _printStr
psect	text1
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Exam_Practice\Pre_Midterm\Premid_Prompt3\Premid_Prompt3.c"
	line	47
	global	__size_of_printStr
	__size_of_printStr	equ	__end_of_printStr-_printStr
	
_printStr:	
;incstack = 0
	opt	stack 5
; Regs used in _printStr: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
;printStr@str stored from wreg
	movwf	(printStr@str)
	line	48
	
l540:	
;Premid_Prompt3.c: 48: while(*str != '\0'){
	goto	l546
	
l32:	
	line	49
	
l542:	
;Premid_Prompt3.c: 49: dataCtrl(*str);
	movf	(printStr@str),w
	movwf	fsr0
	fcall	stringdir
	fcall	_dataCtrl
	line	50
	
l544:	
;Premid_Prompt3.c: 50: str++;
	movlw	(01h)
	movwf	(??_printStr+0)+0
	movf	(??_printStr+0)+0,w
	addwf	(printStr@str),f
	goto	l546
	line	51
	
l31:	
	line	48
	
l546:	
	movf	(printStr@str),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u51
	goto	u50
u51:
	goto	l542
u50:
	goto	l34
	
l33:	
	line	52
	
l34:	
	return
	opt stack 0
GLOBAL	__end_of_printStr
	__end_of_printStr:
	signat	_printStr,4216
	global	_dataCtrl

;; *************** function _dataCtrl *****************
;; Defined at:
;;		line 19 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Exam_Practice\Pre_Midterm\Premid_Prompt3\Premid_Prompt3.c"
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
;;		_printStr
;; This function uses a non-reentrant model
;;
psect	text2,local,class=CODE,delta=2,merge=1
	line	19
global __ptext2
__ptext2:	;psect for function _dataCtrl
psect	text2
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Exam_Practice\Pre_Midterm\Premid_Prompt3\Premid_Prompt3.c"
	line	19
	global	__size_of_dataCtrl
	__size_of_dataCtrl	equ	__end_of_dataCtrl-_dataCtrl
	
_dataCtrl:	
;incstack = 0
	opt	stack 5
; Regs used in _dataCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;dataCtrl@INST stored from wreg
	movwf	(dataCtrl@INST)
	line	20
	
l514:	
;Premid_Prompt3.c: 20: PORTB = INST;
	movf	(dataCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	21
	
l516:	
;Premid_Prompt3.c: 21: RC0 = 1;
	bsf	(56/8),(56)&7	;volatile
	line	22
	
l518:	
;Premid_Prompt3.c: 22: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	23
	
l520:	
;Premid_Prompt3.c: 23: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	line	24
	
l522:	
;Premid_Prompt3.c: 24: delay(1);
	movlw	(01h)
	fcall	_delay
	line	25
	
l524:	
;Premid_Prompt3.c: 25: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	26
	
l22:	
	return
	opt stack 0
GLOBAL	__end_of_dataCtrl
	__end_of_dataCtrl:
	signat	_dataCtrl,4216
	global	_initLCD

;; *************** function _initLCD *****************
;; Defined at:
;;		line 38 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Exam_Practice\Pre_Midterm\Premid_Prompt3\Premid_Prompt3.c"
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
psect	text3,local,class=CODE,delta=2,merge=1
	line	38
global __ptext3
__ptext3:	;psect for function _initLCD
psect	text3
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Exam_Practice\Pre_Midterm\Premid_Prompt3\Premid_Prompt3.c"
	line	38
	global	__size_of_initLCD
	__size_of_initLCD	equ	__end_of_initLCD-_initLCD
	
_initLCD:	
;incstack = 0
	opt	stack 5
; Regs used in _initLCD: [wreg+status,2+status,0+btemp+1+pclath+cstack]
	line	39
	
l538:	
;Premid_Prompt3.c: 39: delay(1000);
	movlw	(0E8h)
	fcall	_delay
	line	40
;Premid_Prompt3.c: 40: instCtrl(0x38);
	movlw	(038h)
	fcall	_instCtrl
	line	41
;Premid_Prompt3.c: 41: instCtrl(0x08);
	movlw	(08h)
	fcall	_instCtrl
	line	42
;Premid_Prompt3.c: 42: instCtrl(0x01);
	movlw	(01h)
	fcall	_instCtrl
	line	43
;Premid_Prompt3.c: 43: instCtrl(0x06);
	movlw	(06h)
	fcall	_instCtrl
	line	44
;Premid_Prompt3.c: 44: instCtrl(0x0F);
	movlw	(0Fh)
	fcall	_instCtrl
	line	45
	
l28:	
	return
	opt stack 0
GLOBAL	__end_of_initLCD
	__end_of_initLCD:
	signat	_initLCD,88
	global	_instCtrl

;; *************** function _instCtrl *****************
;; Defined at:
;;		line 29 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Exam_Practice\Pre_Midterm\Premid_Prompt3\Premid_Prompt3.c"
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
psect	text4,local,class=CODE,delta=2,merge=1
	line	29
global __ptext4
__ptext4:	;psect for function _instCtrl
psect	text4
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Exam_Practice\Pre_Midterm\Premid_Prompt3\Premid_Prompt3.c"
	line	29
	global	__size_of_instCtrl
	__size_of_instCtrl	equ	__end_of_instCtrl-_instCtrl
	
_instCtrl:	
;incstack = 0
	opt	stack 6
; Regs used in _instCtrl: [wreg+status,2+status,0+btemp+1+pclath+cstack]
;instCtrl@INST stored from wreg
	movwf	(instCtrl@INST)
	line	30
	
l526:	
;Premid_Prompt3.c: 30: PORTB = INST;
	movf	(instCtrl@INST),w
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	movwf	(6)	;volatile
	line	31
	
l528:	
;Premid_Prompt3.c: 31: RC0 = 0;
	bcf	(56/8),(56)&7	;volatile
	line	32
	
l530:	
;Premid_Prompt3.c: 32: RC2 = 0;
	bcf	(58/8),(58)&7	;volatile
	line	33
	
l532:	
;Premid_Prompt3.c: 33: RC1 = 1;
	bsf	(57/8),(57)&7	;volatile
	line	34
	
l534:	
;Premid_Prompt3.c: 34: delay(1);
	movlw	(01h)
	fcall	_delay
	line	35
	
l536:	
;Premid_Prompt3.c: 35: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7	;volatile
	line	36
	
l25:	
	return
	opt stack 0
GLOBAL	__end_of_instCtrl
	__end_of_instCtrl:
	signat	_instCtrl,4216
	global	_delay

;; *************** function _delay *****************
;; Defined at:
;;		line 12 in file "C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Exam_Practice\Pre_Midterm\Premid_Prompt3\Premid_Prompt3.c"
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
;;		_dataCtrl
;;		_instCtrl
;;		_initLCD
;; This function uses a non-reentrant model
;;
psect	text5,local,class=CODE,delta=2,merge=1
	line	12
global __ptext5
__ptext5:	;psect for function _delay
psect	text5
	file	"C:\Users\enzoa\OneDrive\Documents\GitHub\3rd_Year_Archives\CpE3201_Embedded_Systems\Exam_Practice\Pre_Midterm\Premid_Prompt3\Premid_Prompt3.c"
	line	12
	global	__size_of_delay
	__size_of_delay	equ	__end_of_delay-_delay
	
_delay:	
;incstack = 0
	opt	stack 5
; Regs used in _delay: [wreg+status,2+status,0+btemp+1]
;delay@cnt stored from wreg
	movwf	(delay@cnt)
	line	14
	
l494:	
;Premid_Prompt3.c: 13: int i, j;
;Premid_Prompt3.c: 14: for (i = cnt; i != 0; i--){
	movf	(delay@cnt),w
	movwf	(??_delay+0)+0
	clrf	(??_delay+0)+0+1
	movf	0+(??_delay+0)+0,w
	movwf	(delay@i)
	movf	1+(??_delay+0)+0,w
	movwf	(delay@i+1)
	
l496:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u11
	goto	u10
u11:
	goto	l500
u10:
	goto	l19
	
l498:	
	goto	l19
	
l15:	
	line	15
	
l500:	
;Premid_Prompt3.c: 15: for (j = 0; j < 1000; j++){}
	clrf	(delay@j)
	clrf	(delay@j+1)
	
l502:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u25
	movlw	low(03E8h)
	subwf	(delay@j),w
u25:

	skipc
	goto	u21
	goto	u20
u21:
	goto	l506
u20:
	goto	l510
	
l504:	
	goto	l510
	
l17:	
	
l506:	
	movlw	low(01h)
	addwf	(delay@j),f
	skipnc
	incf	(delay@j+1),f
	movlw	high(01h)
	addwf	(delay@j+1),f
	
l508:	
	movf	(delay@j+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(03E8h))^80h
	subwf	btemp+1,w
	skipz
	goto	u35
	movlw	low(03E8h)
	subwf	(delay@j),w
u35:

	skipc
	goto	u31
	goto	u30
u31:
	goto	l506
u30:
	goto	l510
	
l18:	
	line	14
	
l510:	
	movlw	low(-1)
	addwf	(delay@i),f
	skipnc
	incf	(delay@i+1),f
	movlw	high(-1)
	addwf	(delay@i+1),f
	
l512:	
	movf	((delay@i+1)),w
	iorwf	((delay@i)),w
	skipz
	goto	u41
	goto	u40
u41:
	goto	l500
u40:
	goto	l19
	
l16:	
	line	17
	
l19:	
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
