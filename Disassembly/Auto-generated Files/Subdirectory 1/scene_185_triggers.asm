;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_185_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_185_triggers
	.globl b___func_scene_185_triggers
	.globl ___func_scene_185_triggers
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
	G$__func_scene_185_triggers$0$0	= .
	.globl	G$__func_scene_185_triggers$0$0
	C$scene_185_triggers.c$12$0_0$195	= .
	.globl	C$scene_185_triggers.c$12$0_0$195
;src\data\scene_185_triggers.c:12: BANKREF(scene_185_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_185_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_185_triggers	= 255
___func_scene_185_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_185_triggers 
	___bank_scene_185_triggers = b___func_scene_185_triggers 
	.globl ___bank_scene_185_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_185_triggers$0_0$0 == .
_scene_185_triggers:
	.db #0x13	; 19
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_842_interact
	.dw _trigger_842_interact
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x10	; 16
	.db #0x01	; 1
	.db #0x34	; 52	'4'
	.byte ___bank_trigger_844_interact
	.dw _trigger_844_interact
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x3e	; 62
	.byte ___bank_trigger_845_interact
	.dw _trigger_845_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_846_interact
	.dw _trigger_846_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
