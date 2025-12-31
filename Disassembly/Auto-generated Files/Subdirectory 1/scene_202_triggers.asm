;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_202_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_202_triggers
	.globl b___func_scene_202_triggers
	.globl ___func_scene_202_triggers
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
	G$__func_scene_202_triggers$0$0	= .
	.globl	G$__func_scene_202_triggers$0$0
	C$scene_202_triggers.c$12$0_0$195	= .
	.globl	C$scene_202_triggers.c$12$0_0$195
;src\data\scene_202_triggers.c:12: BANKREF(scene_202_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_202_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_202_triggers	= 255
___func_scene_202_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_202_triggers 
	___bank_scene_202_triggers = b___func_scene_202_triggers 
	.globl ___bank_scene_202_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_202_triggers$0_0$0 == .
_scene_202_triggers:
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x22	; 34
	.byte ___bank_trigger_942_interact
	.dw _trigger_942_interact
	.db #0x01	; 1
	.db #0x0f	; 15
	.db #0x1c	; 28
	.db #0x01	; 1
	.db #0x10	; 16
	.byte ___bank_trigger_943_interact
	.dw _trigger_943_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_945_interact
	.dw _trigger_945_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_965_interact
	.dw _trigger_965_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
