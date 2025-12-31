;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_114_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_114_triggers
	.globl b___func_scene_114_triggers
	.globl ___func_scene_114_triggers
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
	G$__func_scene_114_triggers$0$0	= .
	.globl	G$__func_scene_114_triggers$0$0
	C$scene_114_triggers.c$14$0_0$195	= .
	.globl	C$scene_114_triggers.c$14$0_0$195
;src\data\scene_114_triggers.c:14: BANKREF(scene_114_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_114_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_114_triggers	= 255
___func_scene_114_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_114_triggers 
	___bank_scene_114_triggers = b___func_scene_114_triggers 
	.globl ___bank_scene_114_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_114_triggers$0_0$0 == .
_scene_114_triggers:
	.db #0x06	; 6
	.db #0x13	; 19
	.db #0x26	; 38
	.db #0x01	; 1
	.byte ___bank_trigger_468_interact
	.dw _trigger_468_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x26	; 38
	.db #0x01	; 1
	.byte ___bank_trigger_469_interact
	.dw _trigger_469_interact
	.db #0x01	; 1
	.db #0x16	; 22
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x09	; 9
	.byte ___bank_trigger_470_interact
	.dw _trigger_470_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x01	; 1
	.db #0x01	; 1
	.db #0x09	; 9
	.byte ___bank_trigger_471_interact
	.dw _trigger_471_interact
	.db #0x01	; 1
	.db #0x31	; 49	'1'
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_479_interact
	.dw _trigger_479_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_502_interact
	.dw _trigger_502_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
