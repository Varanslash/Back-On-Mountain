;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_192_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_192_triggers
	.globl b___func_scene_192_triggers
	.globl ___func_scene_192_triggers
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
	G$__func_scene_192_triggers$0$0	= .
	.globl	G$__func_scene_192_triggers$0$0
	C$scene_192_triggers.c$15$0_0$195	= .
	.globl	C$scene_192_triggers.c$15$0_0$195
;src\data\scene_192_triggers.c:15: BANKREF(scene_192_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_192_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_192_triggers	= 255
___func_scene_192_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_192_triggers 
	___bank_scene_192_triggers = b___func_scene_192_triggers 
	.globl ___bank_scene_192_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_192_triggers$0_0$0 == .
_scene_192_triggers:
	.db #0x14	; 20
	.db #0x2d	; 45
	.db #0x0a	; 10
	.db #0x01	; 1
	.byte ___bank_trigger_882_interact
	.dw _trigger_882_interact
	.db #0x01	; 1
	.db #0x36	; 54	'6'
	.db #0x2d	; 45
	.db #0x08	; 8
	.db #0x01	; 1
	.byte ___bank_trigger_883_interact
	.dw _trigger_883_interact
	.db #0x01	; 1
	.db #0x2a	; 42
	.db #0x2a	; 42
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_884_interact
	.dw _trigger_884_interact
	.db #0x01	; 1
	.db #0x27	; 39
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x0c	; 12
	.byte ___bank_trigger_885_interact
	.dw _trigger_885_interact
	.db #0x01	; 1
	.db #0x2a	; 42
	.db #0x0d	; 13
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_886_interact
	.dw _trigger_886_interact
	.db #0x01	; 1
	.db #0x43	; 67	'C'
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_888_interact
	.dw _trigger_888_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x33	; 51	'3'
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_889_interact
	.dw _trigger_889_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
