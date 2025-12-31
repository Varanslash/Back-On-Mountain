;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_107_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_107_triggers
	.globl b___func_scene_107_triggers
	.globl ___func_scene_107_triggers
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
	G$__func_scene_107_triggers$0$0	= .
	.globl	G$__func_scene_107_triggers$0$0
	C$scene_107_triggers.c$9$0_0$195	= .
	.globl	C$scene_107_triggers.c$9$0_0$195
;src\data\scene_107_triggers.c:9: BANKREF(scene_107_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_107_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_107_triggers	= 255
___func_scene_107_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_107_triggers 
	___bank_scene_107_triggers = b___func_scene_107_triggers 
	.globl ___bank_scene_107_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_107_triggers$0_0$0 == .
_scene_107_triggers:
	.db #0x13	; 19
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_450_interact
	.dw _trigger_450_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
