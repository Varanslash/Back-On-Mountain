;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_51_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_51_triggers
	.globl b___func_scene_51_triggers
	.globl ___func_scene_51_triggers
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
	G$__func_scene_51_triggers$0$0	= .
	.globl	G$__func_scene_51_triggers$0$0
	C$scene_51_triggers.c$12$0_0$195	= .
	.globl	C$scene_51_triggers.c$12$0_0$195
;src\data\scene_51_triggers.c:12: BANKREF(scene_51_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_51_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_51_triggers	= 255
___func_scene_51_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_51_triggers 
	___bank_scene_51_triggers = b___func_scene_51_triggers 
	.globl ___bank_scene_51_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_51_triggers$0_0$0 == .
_scene_51_triggers:
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x36	; 54	'6'
	.db #0x08	; 8
	.byte ___bank_trigger_205_interact
	.dw _trigger_205_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x17	; 23
	.db #0x36	; 54	'6'
	.db #0x01	; 1
	.byte ___bank_trigger_206_interact
	.dw _trigger_206_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_207_interact
	.dw _trigger_207_interact
	.db #0x01	; 1
	.db #0x3d	; 61
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_213_interact
	.dw _trigger_213_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
