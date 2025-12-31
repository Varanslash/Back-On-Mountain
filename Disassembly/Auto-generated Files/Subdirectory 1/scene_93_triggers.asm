;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_93_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_93_triggers
	.globl b___func_scene_93_triggers
	.globl ___func_scene_93_triggers
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
	G$__func_scene_93_triggers$0$0	= .
	.globl	G$__func_scene_93_triggers$0$0
	C$scene_93_triggers.c$15$0_0$195	= .
	.globl	C$scene_93_triggers.c$15$0_0$195
;src\data\scene_93_triggers.c:15: BANKREF(scene_93_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_93_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_93_triggers	= 255
___func_scene_93_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_93_triggers 
	___bank_scene_93_triggers = b___func_scene_93_triggers 
	.globl ___bank_scene_93_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_93_triggers$0_0$0 == .
_scene_93_triggers:
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_341_interact
	.dw _trigger_341_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_342_interact
	.dw _trigger_342_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x1b	; 27
	.db #0x09	; 9
	.db #0x02	; 2
	.byte ___bank_trigger_343_interact
	.dw _trigger_343_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x12	; 18
	.db #0x03	; 3
	.db #0x01	; 1
	.byte ___bank_trigger_344_interact
	.dw _trigger_344_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x27	; 39
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_345_interact
	.dw _trigger_345_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x2a	; 42
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_366_interact
	.dw _trigger_366_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x2a	; 42
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_370_interact
	.dw _trigger_370_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
