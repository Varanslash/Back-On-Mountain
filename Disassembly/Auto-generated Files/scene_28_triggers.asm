;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_28_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_28_triggers
	.globl b___func_scene_28_triggers
	.globl ___func_scene_28_triggers
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
	G$__func_scene_28_triggers$0$0	= .
	.globl	G$__func_scene_28_triggers$0$0
	C$scene_28_triggers.c$14$0_0$195	= .
	.globl	C$scene_28_triggers.c$14$0_0$195
;src\data\scene_28_triggers.c:14: BANKREF(scene_28_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_28_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_28_triggers	= 255
___func_scene_28_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_28_triggers 
	___bank_scene_28_triggers = b___func_scene_28_triggers 
	.globl ___bank_scene_28_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_28_triggers$0_0$0 == .
_scene_28_triggers:
	.db #0x04	; 4
	.db #0x31	; 49	'1'
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_116_interact
	.dw _trigger_116_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x1d	; 29
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_117_interact
	.dw _trigger_117_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x0c	; 12
	.db #0x01	; 1
	.byte ___bank_trigger_118_interact
	.dw _trigger_118_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_119_interact
	.dw _trigger_119_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_126_interact
	.dw _trigger_126_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_131_interact
	.dw _trigger_131_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
