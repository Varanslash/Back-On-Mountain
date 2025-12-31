;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_4_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_4_triggers
	.globl b___func_scene_4_triggers
	.globl ___func_scene_4_triggers
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
	G$__func_scene_4_triggers$0$0	= .
	.globl	G$__func_scene_4_triggers$0$0
	C$scene_4_triggers.c$12$0_0$195	= .
	.globl	C$scene_4_triggers.c$12$0_0$195
;src\data\scene_4_triggers.c:12: BANKREF(scene_4_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_4_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_4_triggers	= 255
___func_scene_4_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_4_triggers 
	___bank_scene_4_triggers = b___func_scene_4_triggers 
	.globl ___bank_scene_4_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_4_triggers$0_0$0 == .
_scene_4_triggers:
	.db #0x00	; 0
	.db #0x3f	; 63
	.db #0x3a	; 58
	.db #0x01	; 1
	.byte ___bank_trigger_5_interact
	.dw _trigger_5_interact
	.db #0x01	; 1
	.db #0x14	; 20
	.db #0x17	; 23
	.db #0x24	; 36
	.db #0x01	; 1
	.byte ___bank_trigger_6_interact
	.dw _trigger_6_interact
	.db #0x01	; 1
	.db #0x39	; 57	'9'
	.db #0x2e	; 46
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_8_interact
	.dw _trigger_8_interact
	.db #0x01	; 1
	.db #0x39	; 57	'9'
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_11_interact
	.dw _trigger_11_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
