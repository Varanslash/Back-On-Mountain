;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_58_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_58_triggers
	.globl b___func_scene_58_triggers
	.globl ___func_scene_58_triggers
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
	G$__func_scene_58_triggers$0$0	= .
	.globl	G$__func_scene_58_triggers$0$0
	C$scene_58_triggers.c$12$0_0$195	= .
	.globl	C$scene_58_triggers.c$12$0_0$195
;src\data\scene_58_triggers.c:12: BANKREF(scene_58_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_58_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_58_triggers	= 255
___func_scene_58_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_58_triggers 
	___bank_scene_58_triggers = b___func_scene_58_triggers 
	.globl ___bank_scene_58_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_58_triggers$0_0$0 == .
_scene_58_triggers:
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x3b	; 59
	.db #0x01	; 1
	.byte ___bank_trigger_251_interact
	.dw _trigger_251_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x11	; 17
	.db #0x42	; 66	'B'
	.db #0x01	; 1
	.byte ___bank_trigger_252_interact
	.dw _trigger_252_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_254_interact
	.dw _trigger_254_interact
	.db #0x01	; 1
	.db #0x45	; 69	'E'
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_255_interact
	.dw _trigger_255_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
