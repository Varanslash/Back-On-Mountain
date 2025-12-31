;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_165_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_165_triggers
	.globl b___func_scene_165_triggers
	.globl ___func_scene_165_triggers
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
	G$__func_scene_165_triggers$0$0	= .
	.globl	G$__func_scene_165_triggers$0$0
	C$scene_165_triggers.c$13$0_0$195	= .
	.globl	C$scene_165_triggers.c$13$0_0$195
;src\data\scene_165_triggers.c:13: BANKREF(scene_165_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_165_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_165_triggers	= 255
___func_scene_165_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_165_triggers 
	___bank_scene_165_triggers = b___func_scene_165_triggers 
	.globl ___bank_scene_165_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_165_triggers$0_0$0 == .
_scene_165_triggers:
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_710_interact
	.dw _trigger_710_interact
	.db #0x01	; 1
	.db #0x24	; 36
	.db #0x23	; 35
	.db #0x22	; 34
	.db #0x01	; 1
	.byte ___bank_trigger_711_interact
	.dw _trigger_711_interact
	.db #0x01	; 1
	.db #0x24	; 36
	.db #0x02	; 2
	.db #0x26	; 38
	.db #0x01	; 1
	.byte ___bank_trigger_712_interact
	.dw _trigger_712_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_714_interact
	.dw _trigger_714_interact
	.db #0x01	; 1
	.db #0x4d	; 77	'M'
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_726_interact
	.dw _trigger_726_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
