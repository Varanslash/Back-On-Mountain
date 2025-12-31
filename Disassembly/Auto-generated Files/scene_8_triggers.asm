;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_8_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_8_triggers
	.globl b___func_scene_8_triggers
	.globl ___func_scene_8_triggers
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
	G$__func_scene_8_triggers$0$0	= .
	.globl	G$__func_scene_8_triggers$0$0
	C$scene_8_triggers.c$12$0_0$195	= .
	.globl	C$scene_8_triggers.c$12$0_0$195
;src\data\scene_8_triggers.c:12: BANKREF(scene_8_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_8_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_8_triggers	= 255
___func_scene_8_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_8_triggers 
	___bank_scene_8_triggers = b___func_scene_8_triggers 
	.globl ___bank_scene_8_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_8_triggers$0_0$0 == .
_scene_8_triggers:
	.db #0x02	; 2
	.db #0x21	; 33
	.db #0x14	; 20
	.db #0x01	; 1
	.byte ___bank_trigger_20_interact
	.dw _trigger_20_interact
	.db #0x01	; 1
	.db #0x0d	; 13
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_21_interact
	.dw _trigger_21_interact
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_22_interact
	.dw _trigger_22_interact
	.db #0x01	; 1
	.db #0x1b	; 27
	.db #0x1a	; 26
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_27_interact
	.dw _trigger_27_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
