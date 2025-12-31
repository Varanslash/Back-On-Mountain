;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_142_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_142_triggers
	.globl b___func_scene_142_triggers
	.globl ___func_scene_142_triggers
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
	G$__func_scene_142_triggers$0$0	= .
	.globl	G$__func_scene_142_triggers$0$0
	C$scene_142_triggers.c$15$0_0$195	= .
	.globl	C$scene_142_triggers.c$15$0_0$195
;src\data\scene_142_triggers.c:15: BANKREF(scene_142_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_142_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_142_triggers	= 255
___func_scene_142_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_142_triggers 
	___bank_scene_142_triggers = b___func_scene_142_triggers 
	.globl ___bank_scene_142_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_142_triggers$0_0$0 == .
_scene_142_triggers:
	.db #0x06	; 6
	.db #0x2d	; 45
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_574_interact
	.dw _trigger_574_interact
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_575_interact
	.dw _trigger_575_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x1a	; 26
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_576_interact
	.dw _trigger_576_interact
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0x12	; 18
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_577_interact
	.dw _trigger_577_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x0a	; 10
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_578_interact
	.dw _trigger_578_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_580_interact
	.dw _trigger_580_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_841_interact
	.dw _trigger_841_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
