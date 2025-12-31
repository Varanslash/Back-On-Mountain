;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_200_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_200_triggers
	.globl b___func_scene_200_triggers
	.globl ___func_scene_200_triggers
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
	G$__func_scene_200_triggers$0$0	= .
	.globl	G$__func_scene_200_triggers$0$0
	C$scene_200_triggers.c$16$0_0$195	= .
	.globl	C$scene_200_triggers.c$16$0_0$195
;src\data\scene_200_triggers.c:16: BANKREF(scene_200_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_200_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_200_triggers	= 255
___func_scene_200_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_200_triggers 
	___bank_scene_200_triggers = b___func_scene_200_triggers 
	.globl ___bank_scene_200_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_200_triggers$0_0$0 == .
_scene_200_triggers:
	.db #0x0f	; 15
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x1c	; 28
	.byte ___bank_trigger_923_interact
	.dw _trigger_923_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x1c	; 28
	.byte ___bank_trigger_924_interact
	.dw _trigger_924_interact
	.db #0x01	; 1
	.db #0x0d	; 13
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x10	; 16
	.byte ___bank_trigger_925_interact
	.dw _trigger_925_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x20	; 32
	.db #0x01	; 1
	.db #0x10	; 16
	.byte ___bank_trigger_926_interact
	.dw _trigger_926_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x12	; 18
	.byte ___bank_trigger_927_interact
	.dw _trigger_927_interact
	.db #0x01	; 1
	.db #0x0b	; 11
	.db #0x34	; 52	'4'
	.db #0x01	; 1
	.db #0x0a	; 10
	.byte ___bank_trigger_928_interact
	.dw _trigger_928_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_939_interact
	.dw _trigger_939_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x3e	; 62
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_940_interact
	.dw _trigger_940_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
