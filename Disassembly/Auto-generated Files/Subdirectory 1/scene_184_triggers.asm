;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_184_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_184_triggers
	.globl b___func_scene_184_triggers
	.globl ___func_scene_184_triggers
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
	G$__func_scene_184_triggers$0$0	= .
	.globl	G$__func_scene_184_triggers$0$0
	C$scene_184_triggers.c$10$0_0$195	= .
	.globl	C$scene_184_triggers.c$10$0_0$195
;src\data\scene_184_triggers.c:10: BANKREF(scene_184_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_184_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_184_triggers	= 255
___func_scene_184_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_184_triggers 
	___bank_scene_184_triggers = b___func_scene_184_triggers 
	.globl ___bank_scene_184_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_184_triggers$0_0$0 == .
_scene_184_triggers:
	.db #0x57	; 87	'W'
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_840_interact
	.dw _trigger_840_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_843_interact
	.dw _trigger_843_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
