;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_61_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_61_triggers
	.globl b___func_scene_61_triggers
	.globl ___func_scene_61_triggers
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
	G$__func_scene_61_triggers$0$0	= .
	.globl	G$__func_scene_61_triggers$0$0
	C$scene_61_triggers.c$15$0_0$195	= .
	.globl	C$scene_61_triggers.c$15$0_0$195
;src\data\scene_61_triggers.c:15: BANKREF(scene_61_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_61_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_61_triggers	= 255
___func_scene_61_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_61_triggers 
	___bank_scene_61_triggers = b___func_scene_61_triggers 
	.globl ___bank_scene_61_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_61_triggers$0_0$0 == .
_scene_61_triggers:
	.db #0x00	; 0
	.db #0x37	; 55	'7'
	.db #0x3a	; 58
	.db #0x01	; 1
	.byte ___bank_trigger_261_interact
	.dw _trigger_261_interact
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_262_interact
	.dw _trigger_262_interact
	.db #0x01	; 1
	.db #0x1c	; 28
	.db #0x19	; 25
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_263_interact
	.dw _trigger_263_interact
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x19	; 25
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_264_interact
	.dw _trigger_264_interact
	.db #0x01	; 1
	.db #0x39	; 57	'9'
	.db #0x2a	; 42
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_266_interact
	.dw _trigger_266_interact
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_267_interact
	.dw _trigger_267_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_273_interact
	.dw _trigger_273_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
