;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_167_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_167_triggers
	.globl b___func_scene_167_triggers
	.globl ___func_scene_167_triggers
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
	G$__func_scene_167_triggers$0$0	= .
	.globl	G$__func_scene_167_triggers$0$0
	C$scene_167_triggers.c$15$0_0$195	= .
	.globl	C$scene_167_triggers.c$15$0_0$195
;src\data\scene_167_triggers.c:15: BANKREF(scene_167_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_167_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_167_triggers	= 255
___func_scene_167_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_167_triggers 
	___bank_scene_167_triggers = b___func_scene_167_triggers 
	.globl ___bank_scene_167_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_167_triggers$0_0$0 == .
_scene_167_triggers:
	.db #0x11	; 17
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x10	; 16
	.byte ___bank_trigger_728_interact
	.dw _trigger_728_interact
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0x1c	; 28
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_729_interact
	.dw _trigger_729_interact
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0x2c	; 44
	.db #0x01	; 1
	.db #0x0e	; 14
	.byte ___bank_trigger_730_interact
	.dw _trigger_730_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_731_interact
	.dw _trigger_731_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_732_interact
	.dw _trigger_732_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_734_interact
	.dw _trigger_734_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_743_interact
	.dw _trigger_743_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
