;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_135_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_135_triggers
	.globl b___func_scene_135_triggers
	.globl ___func_scene_135_triggers
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
	G$__func_scene_135_triggers$0$0	= .
	.globl	G$__func_scene_135_triggers$0$0
	C$scene_135_triggers.c$16$0_0$195	= .
	.globl	C$scene_135_triggers.c$16$0_0$195
;src\data\scene_135_triggers.c:16: BANKREF(scene_135_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_135_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_135_triggers	= 255
___func_scene_135_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_135_triggers 
	___bank_scene_135_triggers = b___func_scene_135_triggers 
	.globl ___bank_scene_135_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_135_triggers$0_0$0 == .
_scene_135_triggers:
	.db #0x00	; 0
	.db #0x1e	; 30
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_555_interact
	.dw _trigger_555_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x2b	; 43
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_556_interact
	.dw _trigger_556_interact
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x12	; 18
	.byte ___bank_trigger_557_interact
	.dw _trigger_557_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x2e	; 46
	.db #0x01	; 1
	.db #0x0c	; 12
	.byte ___bank_trigger_558_interact
	.dw _trigger_558_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x31	; 49	'1'
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_559_interact
	.dw _trigger_559_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x39	; 57	'9'
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_560_interact
	.dw _trigger_560_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x36	; 54	'6'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_564_interact
	.dw _trigger_564_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_572_interact
	.dw _trigger_572_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
