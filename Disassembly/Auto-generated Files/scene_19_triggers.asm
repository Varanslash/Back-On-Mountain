;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_19_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_19_triggers
	.globl b___func_scene_19_triggers
	.globl ___func_scene_19_triggers
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
	G$__func_scene_19_triggers$0$0	= .
	.globl	G$__func_scene_19_triggers$0$0
	C$scene_19_triggers.c$12$0_0$195	= .
	.globl	C$scene_19_triggers.c$12$0_0$195
;src\data\scene_19_triggers.c:12: BANKREF(scene_19_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_19_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_19_triggers	= 255
___func_scene_19_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_19_triggers 
	___bank_scene_19_triggers = b___func_scene_19_triggers 
	.globl ___bank_scene_19_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_19_triggers$0_0$0 == .
_scene_19_triggers:
	.db #0x06	; 6
	.db #0x14	; 20
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_75_interact
	.dw _trigger_75_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x1d	; 29
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_76_interact
	.dw _trigger_76_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x0a	; 10
	.byte ___bank_trigger_98_interact
	.dw _trigger_98_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x14	; 20
	.db #0x01	; 1
	.db #0x0a	; 10
	.byte ___bank_trigger_106_interact
	.dw _trigger_106_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
