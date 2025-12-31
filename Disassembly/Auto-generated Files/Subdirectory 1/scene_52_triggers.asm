;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_52_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_52_triggers
	.globl b___func_scene_52_triggers
	.globl ___func_scene_52_triggers
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
	G$__func_scene_52_triggers$0$0	= .
	.globl	G$__func_scene_52_triggers$0$0
	C$scene_52_triggers.c$14$0_0$195	= .
	.globl	C$scene_52_triggers.c$14$0_0$195
;src\data\scene_52_triggers.c:14: BANKREF(scene_52_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_52_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_52_triggers	= 255
___func_scene_52_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_52_triggers 
	___bank_scene_52_triggers = b___func_scene_52_triggers 
	.globl ___bank_scene_52_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_52_triggers$0_0$0 == .
_scene_52_triggers:
	.db #0x10	; 16
	.db #0x15	; 21
	.db #0x02	; 2
	.db #0x23	; 35
	.byte ___bank_trigger_209_interact
	.dw _trigger_209_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x15	; 21
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_210_interact
	.dw _trigger_210_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x05	; 5
	.db #0x08	; 8
	.db #0x02	; 2
	.byte ___bank_trigger_211_interact
	.dw _trigger_211_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_212_interact
	.dw _trigger_212_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x39	; 57	'9'
	.db #0x06	; 6
	.db #0x01	; 1
	.byte ___bank_trigger_214_interact
	.dw _trigger_214_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_218_interact
	.dw _trigger_218_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
