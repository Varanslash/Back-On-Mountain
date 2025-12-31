;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_12_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_12_triggers
	.globl b___func_scene_12_triggers
	.globl ___func_scene_12_triggers
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
	G$__func_scene_12_triggers$0$0	= .
	.globl	G$__func_scene_12_triggers$0$0
	C$scene_12_triggers.c$14$0_0$195	= .
	.globl	C$scene_12_triggers.c$14$0_0$195
;src\data\scene_12_triggers.c:14: BANKREF(scene_12_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_12_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_12_triggers	= 255
___func_scene_12_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_12_triggers 
	___bank_scene_12_triggers = b___func_scene_12_triggers 
	.globl ___bank_scene_12_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_12_triggers$0_0$0 == .
_scene_12_triggers:
	.db #0x04	; 4
	.db #0x1b	; 27
	.db #0x0a	; 10
	.db #0x02	; 2
	.byte ___bank_trigger_37_interact
	.dw _trigger_37_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x23	; 35
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_38_interact
	.dw _trigger_38_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x33	; 51	'3'
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_39_interact
	.dw _trigger_39_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_42_interact
	.dw _trigger_42_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_43_interact
	.dw _trigger_43_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_581_interact
	.dw _trigger_581_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
