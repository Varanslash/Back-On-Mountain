;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_171_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_171_triggers
	.globl b___func_scene_171_triggers
	.globl ___func_scene_171_triggers
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
	G$__func_scene_171_triggers$0$0	= .
	.globl	G$__func_scene_171_triggers$0$0
	C$scene_171_triggers.c$11$0_0$195	= .
	.globl	C$scene_171_triggers.c$11$0_0$195
;src\data\scene_171_triggers.c:11: BANKREF(scene_171_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_171_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_171_triggers	= 255
___func_scene_171_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_171_triggers 
	___bank_scene_171_triggers = b___func_scene_171_triggers 
	.globl ___bank_scene_171_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_171_triggers$0_0$0 == .
_scene_171_triggers:
	.db #0x61	; 97	'a'
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_748_interact
	.dw _trigger_748_interact
	.db #0x01	; 1
	.db #0x50	; 80	'P'
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x01	; 1
	.byte ___bank_trigger_749_interact
	.dw _trigger_749_interact
	.db #0x01	; 1
	.db #0x50	; 80	'P'
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x01	; 1
	.byte ___bank_trigger_750_interact
	.dw _trigger_750_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
