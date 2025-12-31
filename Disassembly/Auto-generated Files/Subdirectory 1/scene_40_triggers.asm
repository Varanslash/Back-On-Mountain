;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_40_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_40_triggers
	.globl b___func_scene_40_triggers
	.globl ___func_scene_40_triggers
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
	G$__func_scene_40_triggers$0$0	= .
	.globl	G$__func_scene_40_triggers$0$0
	C$scene_40_triggers.c$13$0_0$195	= .
	.globl	C$scene_40_triggers.c$13$0_0$195
;src\data\scene_40_triggers.c:13: BANKREF(scene_40_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_40_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_40_triggers	= 255
___func_scene_40_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_40_triggers 
	___bank_scene_40_triggers = b___func_scene_40_triggers 
	.globl ___bank_scene_40_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_40_triggers$0_0$0 == .
_scene_40_triggers:
	.db #0x47	; 71	'G'
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_167_interact
	.dw _trigger_167_interact
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x08	; 8
	.db #0x01	; 1
	.byte ___bank_trigger_168_interact
	.dw _trigger_168_interact
	.db #0x01	; 1
	.db #0x26	; 38
	.db #0x0f	; 15
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_169_interact
	.dw _trigger_169_interact
	.db #0x01	; 1
	.db #0x1c	; 28
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_170_interact
	.dw _trigger_170_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_192_interact
	.dw _trigger_192_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
