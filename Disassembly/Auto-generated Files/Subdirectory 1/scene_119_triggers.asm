;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_119_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_119_triggers
	.globl b___func_scene_119_triggers
	.globl ___func_scene_119_triggers
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
	G$__func_scene_119_triggers$0$0	= .
	.globl	G$__func_scene_119_triggers$0$0
	C$scene_119_triggers.c$13$0_0$195	= .
	.globl	C$scene_119_triggers.c$13$0_0$195
;src\data\scene_119_triggers.c:13: BANKREF(scene_119_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_119_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_119_triggers	= 255
___func_scene_119_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_119_triggers 
	___bank_scene_119_triggers = b___func_scene_119_triggers 
	.globl ___bank_scene_119_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_119_triggers$0_0$0 == .
_scene_119_triggers:
	.db #0x04	; 4
	.db #0x33	; 51	'3'
	.db #0x0c	; 12
	.db #0x01	; 1
	.byte ___bank_trigger_488_interact
	.dw _trigger_488_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x0a	; 10
	.db #0x08	; 8
	.db #0x01	; 1
	.byte ___bank_trigger_489_interact
	.dw _trigger_489_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x2e	; 46
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_490_interact
	.dw _trigger_490_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_528_interact
	.dw _trigger_528_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x2e	; 46
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_1008_interact
	.dw _trigger_1008_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
