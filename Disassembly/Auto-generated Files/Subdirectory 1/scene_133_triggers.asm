;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_133_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_133_triggers
	.globl b___func_scene_133_triggers
	.globl ___func_scene_133_triggers
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
	G$__func_scene_133_triggers$0$0	= .
	.globl	G$__func_scene_133_triggers$0$0
	C$scene_133_triggers.c$12$0_0$195	= .
	.globl	C$scene_133_triggers.c$12$0_0$195
;src\data\scene_133_triggers.c:12: BANKREF(scene_133_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_133_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_133_triggers	= 255
___func_scene_133_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_133_triggers 
	___bank_scene_133_triggers = b___func_scene_133_triggers 
	.globl ___bank_scene_133_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_133_triggers$0_0$0 == .
_scene_133_triggers:
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_549_interact
	.dw _trigger_549_interact
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_550_interact
	.dw _trigger_550_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x2d	; 45
	.db #0x0c	; 12
	.db #0x01	; 1
	.byte ___bank_trigger_551_interact
	.dw _trigger_551_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_552_interact
	.dw _trigger_552_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
