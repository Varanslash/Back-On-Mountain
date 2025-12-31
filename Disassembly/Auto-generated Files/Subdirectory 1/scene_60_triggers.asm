;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_60_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_60_triggers
	.globl b___func_scene_60_triggers
	.globl ___func_scene_60_triggers
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
	G$__func_scene_60_triggers$0$0	= .
	.globl	G$__func_scene_60_triggers$0$0
	C$scene_60_triggers.c$14$0_0$195	= .
	.globl	C$scene_60_triggers.c$14$0_0$195
;src\data\scene_60_triggers.c:14: BANKREF(scene_60_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_60_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_60_triggers	= 255
___func_scene_60_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_60_triggers 
	___bank_scene_60_triggers = b___func_scene_60_triggers 
	.globl ___bank_scene_60_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_60_triggers$0_0$0 == .
_scene_60_triggers:
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_260_interact
	.dw _trigger_260_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x0f	; 15
	.db #0x14	; 20
	.db #0x01	; 1
	.byte ___bank_trigger_281_interact
	.dw _trigger_281_interact
	.db #0x01	; 1
	.db #0x2c	; 44
	.db #0x0f	; 15
	.db #0x1a	; 26
	.db #0x01	; 1
	.byte ___bank_trigger_282_interact
	.dw _trigger_282_interact
	.db #0x01	; 1
	.db #0x0b	; 11
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_283_interact
	.dw _trigger_283_interact
	.db #0x01	; 1
	.db #0x0b	; 11
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_284_interact
	.dw _trigger_284_interact
	.db #0x01	; 1
	.db #0x4f	; 79	'O'
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_289_interact
	.dw _trigger_289_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
