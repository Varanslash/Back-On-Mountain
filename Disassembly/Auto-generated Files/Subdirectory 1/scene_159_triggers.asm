;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_159_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_159_triggers
	.globl b___func_scene_159_triggers
	.globl ___func_scene_159_triggers
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
	G$__func_scene_159_triggers$0$0	= .
	.globl	G$__func_scene_159_triggers$0$0
	C$scene_159_triggers.c$15$0_0$195	= .
	.globl	C$scene_159_triggers.c$15$0_0$195
;src\data\scene_159_triggers.c:15: BANKREF(scene_159_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_159_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_159_triggers	= 255
___func_scene_159_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_159_triggers 
	___bank_scene_159_triggers = b___func_scene_159_triggers 
	.globl ___bank_scene_159_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_159_triggers$0_0$0 == .
_scene_159_triggers:
	.db #0x00	; 0
	.db #0x2c	; 44
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_690_interact
	.dw _trigger_690_interact
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_691_interact
	.dw _trigger_691_interact
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_692_interact
	.dw _trigger_692_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x0c	; 12
	.db #0x01	; 1
	.byte ___bank_trigger_693_interact
	.dw _trigger_693_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x0b	; 11
	.db #0x02	; 2
	.db #0x02	; 2
	.byte ___bank_trigger_694_interact
	.dw _trigger_694_interact
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_695_interact
	.dw _trigger_695_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_697_interact
	.dw _trigger_697_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
