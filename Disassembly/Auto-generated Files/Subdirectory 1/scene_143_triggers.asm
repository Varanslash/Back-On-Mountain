;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_143_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_143_triggers
	.globl b___func_scene_143_triggers
	.globl ___func_scene_143_triggers
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
	G$__func_scene_143_triggers$0$0	= .
	.globl	G$__func_scene_143_triggers$0$0
	C$scene_143_triggers.c$15$0_0$195	= .
	.globl	C$scene_143_triggers.c$15$0_0$195
;src\data\scene_143_triggers.c:15: BANKREF(scene_143_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_143_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_143_triggers	= 255
___func_scene_143_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_143_triggers 
	___bank_scene_143_triggers = b___func_scene_143_triggers 
	.globl ___bank_scene_143_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_143_triggers$0_0$0 == .
_scene_143_triggers:
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_582_interact
	.dw _trigger_582_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x18	; 24
	.db #0x01	; 1
	.byte ___bank_trigger_583_interact
	.dw _trigger_583_interact
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x0a	; 10
	.db #0x01	; 1
	.byte ___bank_trigger_584_interact
	.dw _trigger_584_interact
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x02	; 2
	.byte ___bank_trigger_585_interact
	.dw _trigger_585_interact
	.db #0x01	; 1
	.db #0x32	; 50	'2'
	.db #0x00	; 0
	.db #0x07	; 7
	.db #0x01	; 1
	.byte ___bank_trigger_586_interact
	.dw _trigger_586_interact
	.db #0x01	; 1
	.db #0x39	; 57	'9'
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x01	; 1
	.byte ___bank_trigger_587_interact
	.dw _trigger_587_interact
	.db #0x01	; 1
	.db #0x3d	; 61
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_588_interact
	.dw _trigger_588_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
