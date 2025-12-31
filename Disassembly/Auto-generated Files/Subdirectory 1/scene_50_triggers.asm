;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_50_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_50_triggers
	.globl b___func_scene_50_triggers
	.globl ___func_scene_50_triggers
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
	G$__func_scene_50_triggers$0$0	= .
	.globl	G$__func_scene_50_triggers$0$0
	C$scene_50_triggers.c$15$0_0$195	= .
	.globl	C$scene_50_triggers.c$15$0_0$195
;src\data\scene_50_triggers.c:15: BANKREF(scene_50_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_50_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_50_triggers	= 255
___func_scene_50_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_50_triggers 
	___bank_scene_50_triggers = b___func_scene_50_triggers 
	.globl ___bank_scene_50_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_50_triggers$0_0$0 == .
_scene_50_triggers:
	.db #0x08	; 8
	.db #0x0f	; 15
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_198_interact
	.dw _trigger_198_interact
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x0f	; 15
	.db #0x14	; 20
	.db #0x01	; 1
	.byte ___bank_trigger_199_interact
	.dw _trigger_199_interact
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x02	; 2
	.db #0x1a	; 26
	.db #0x01	; 1
	.byte ___bank_trigger_200_interact
	.dw _trigger_200_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x01	; 1
	.byte ___bank_trigger_201_interact
	.dw _trigger_201_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_202_interact
	.dw _trigger_202_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_204_interact
	.dw _trigger_204_interact
	.db #0x01	; 1
	.db #0x3d	; 61
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_208_interact
	.dw _trigger_208_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
