;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_153_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_153_triggers
	.globl b___func_scene_153_triggers
	.globl ___func_scene_153_triggers
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
	G$__func_scene_153_triggers$0$0	= .
	.globl	G$__func_scene_153_triggers$0$0
	C$scene_153_triggers.c$11$0_0$195	= .
	.globl	C$scene_153_triggers.c$11$0_0$195
;src\data\scene_153_triggers.c:11: BANKREF(scene_153_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_153_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_153_triggers	= 255
___func_scene_153_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_153_triggers 
	___bank_scene_153_triggers = b___func_scene_153_triggers 
	.globl ___bank_scene_153_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_153_triggers$0_0$0 == .
_scene_153_triggers:
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_659_interact
	.dw _trigger_659_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x11	; 17
	.db #0x3e	; 62
	.db #0x01	; 1
	.byte ___bank_trigger_660_interact
	.dw _trigger_660_interact
	.db #0x01	; 1
	.db #0x3d	; 61
	.db #0x0a	; 10
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_667_interact
	.dw _trigger_667_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
