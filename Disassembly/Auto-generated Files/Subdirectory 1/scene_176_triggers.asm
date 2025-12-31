;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_176_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_176_triggers
	.globl b___func_scene_176_triggers
	.globl ___func_scene_176_triggers
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
	G$__func_scene_176_triggers$0$0	= .
	.globl	G$__func_scene_176_triggers$0$0
	C$scene_176_triggers.c$15$0_0$195	= .
	.globl	C$scene_176_triggers.c$15$0_0$195
;src\data\scene_176_triggers.c:15: BANKREF(scene_176_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_176_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_176_triggers	= 255
___func_scene_176_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_176_triggers 
	___bank_scene_176_triggers = b___func_scene_176_triggers 
	.globl ___bank_scene_176_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_176_triggers$0_0$0 == .
_scene_176_triggers:
	.db #0x0a	; 10
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x01	; 1
	.byte ___bank_trigger_787_interact
	.dw _trigger_787_interact
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x01	; 1
	.byte ___bank_trigger_788_interact
	.dw _trigger_788_interact
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x06	; 6
	.byte ___bank_trigger_789_interact
	.dw _trigger_789_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x06	; 6
	.byte ___bank_trigger_790_interact
	.dw _trigger_790_interact
	.db #0x01	; 1
	.db #0x1d	; 29
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_791_interact
	.dw _trigger_791_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_793_interact
	.dw _trigger_793_interact
	.db #0x01	; 1
	.db #0x21	; 33
	.db #0x1c	; 28
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_794_interact
	.dw _trigger_794_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
