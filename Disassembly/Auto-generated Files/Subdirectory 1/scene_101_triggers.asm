;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_101_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_101_triggers
	.globl b___func_scene_101_triggers
	.globl ___func_scene_101_triggers
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$__func_scene_101_triggers$0$0	= .
	.globl	G$__func_scene_101_triggers$0$0
	C$scene_101_triggers.c$28$0_0$195	= .
	.globl	C$scene_101_triggers.c$28$0_0$195
;src\data\scene_101_triggers.c:28: BANKREF(scene_101_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_101_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_101_triggers	= 255
___func_scene_101_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_101_triggers 
	___bank_scene_101_triggers = b___func_scene_101_triggers 
	.globl ___bank_scene_101_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_101_triggers$0_0$0 == .
_scene_101_triggers:
	.db #0x63	; 99	'c'
	.db #0x34	; 52	'4'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_407_interact
	.dw _trigger_407_interact
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x37	; 55	'7'
	.db #0x2a	; 42
	.db #0x01	; 1
	.byte ___bank_trigger_408_interact
	.dw _trigger_408_interact
	.db #0x01	; 1
	.db #0x36	; 54	'6'
	.db #0x21	; 33
	.db #0x28	; 40
	.db #0x02	; 2
	.byte ___bank_trigger_409_interact
	.dw _trigger_409_interact
	.db #0x01	; 1
	.db #0x31	; 49	'1'
	.db #0x23	; 35
	.db #0x05	; 5
	.db #0x02	; 2
	.byte ___bank_trigger_410_interact
	.dw _trigger_410_interact
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x23	; 35
	.db #0x05	; 5
	.db #0x02	; 2
	.byte ___bank_trigger_411_interact
	.dw _trigger_411_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x37	; 55	'7'
	.db #0x14	; 20
	.db #0x01	; 1
	.byte ___bank_trigger_412_interact
	.dw _trigger_412_interact
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x37	; 55	'7'
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_413_interact
	.dw _trigger_413_interact
	.db #0x01	; 1
	.db #0x16	; 22
	.db #0x1b	; 27
	.db #0x02	; 2
	.db #0x06	; 6
	.byte ___bank_trigger_414_interact
	.dw _trigger_414_interact
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x2d	; 45
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_415_interact
	.dw _trigger_415_interact
	.db #0x01	; 1
	.db #0x38	; 56	'8'
	.db #0x17	; 23
	.db #0x0a	; 10
	.db #0x02	; 2
	.byte ___bank_trigger_416_interact
	.dw _trigger_416_interact
	.db #0x01	; 1
	.db #0x48	; 72	'H'
	.db #0x17	; 23
	.db #0x0a	; 10
	.db #0x02	; 2
	.byte ___bank_trigger_417_interact
	.dw _trigger_417_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x1c	; 28
	.db #0x01	; 1
	.byte ___bank_trigger_418_interact
	.dw _trigger_418_interact
	.db #0x01	; 1
	.db #0x3a	; 58
	.db #0x29	; 41
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_419_interact
	.dw _trigger_419_interact
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x2e	; 46
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_420_interact
	.dw _trigger_420_interact
	.db #0x01	; 1
	.db #0x42	; 66	'B'
	.db #0x2c	; 44
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_421_interact
	.dw _trigger_421_interact
	.db #0x01	; 1
	.db #0x56	; 86	'V'
	.db #0x2d	; 45
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_422_interact
	.dw _trigger_422_interact
	.db #0x01	; 1
	.db #0x5b	; 91
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_423_interact
	.dw _trigger_423_interact
	.db #0x01	; 1
	.db #0x5c	; 92
	.db #0x2a	; 42
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_424_interact
	.dw _trigger_424_interact
	.db #0x01	; 1
	.db #0x5c	; 92
	.db #0x27	; 39
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_425_interact
	.dw _trigger_425_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_428_interact
	.dw _trigger_428_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
