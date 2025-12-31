;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_56_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_56_triggers
	.globl b___func_scene_56_triggers
	.globl ___func_scene_56_triggers
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
	G$__func_scene_56_triggers$0$0	= .
	.globl	G$__func_scene_56_triggers$0$0
	C$scene_56_triggers.c$14$0_0$195	= .
	.globl	C$scene_56_triggers.c$14$0_0$195
;src\data\scene_56_triggers.c:14: BANKREF(scene_56_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_56_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_56_triggers	= 255
___func_scene_56_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_56_triggers 
	___bank_scene_56_triggers = b___func_scene_56_triggers 
	.globl ___bank_scene_56_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_56_triggers$0_0$0 == .
_scene_56_triggers:
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x24	; 36
	.db #0x01	; 1
	.byte ___bank_trigger_240_interact
	.dw _trigger_240_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x03	; 3
	.db #0x01	; 1
	.byte ___bank_trigger_241_interact
	.dw _trigger_241_interact
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x01	; 1
	.byte ___bank_trigger_242_interact
	.dw _trigger_242_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_243_interact
	.dw _trigger_243_interact
	.db #0x01	; 1
	.db #0x23	; 35
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_245_interact
	.dw _trigger_245_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_249_interact
	.dw _trigger_249_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
