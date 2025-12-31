;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_59_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_59_triggers
	.globl b___func_scene_59_triggers
	.globl ___func_scene_59_triggers
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
	G$__func_scene_59_triggers$0$0	= .
	.globl	G$__func_scene_59_triggers$0$0
	C$scene_59_triggers.c$13$0_0$195	= .
	.globl	C$scene_59_triggers.c$13$0_0$195
;src\data\scene_59_triggers.c:13: BANKREF(scene_59_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_59_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_59_triggers	= 255
___func_scene_59_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_59_triggers 
	___bank_scene_59_triggers = b___func_scene_59_triggers 
	.globl ___bank_scene_59_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_59_triggers$0_0$0 == .
_scene_59_triggers:
	.db #0x00	; 0
	.db #0x2c	; 44
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_256_interact
	.dw _trigger_256_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x16	; 22
	.db #0x01	; 1
	.db #0x14	; 20
	.byte ___bank_trigger_257_interact
	.dw _trigger_257_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x0d	; 13
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_258_interact
	.dw _trigger_258_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x2c	; 44
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_259_interact
	.dw _trigger_259_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_278_interact
	.dw _trigger_278_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
