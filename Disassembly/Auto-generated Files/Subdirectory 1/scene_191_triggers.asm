;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_191_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_191_triggers
	.globl b___func_scene_191_triggers
	.globl ___func_scene_191_triggers
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
	G$__func_scene_191_triggers$0$0	= .
	.globl	G$__func_scene_191_triggers$0$0
	C$scene_191_triggers.c$18$0_0$195	= .
	.globl	C$scene_191_triggers.c$18$0_0$195
;src\data\scene_191_triggers.c:18: BANKREF(scene_191_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_191_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_191_triggers	= 255
___func_scene_191_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_191_triggers 
	___bank_scene_191_triggers = b___func_scene_191_triggers 
	.globl ___bank_scene_191_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_191_triggers$0_0$0 == .
_scene_191_triggers:
	.db #0x06	; 6
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x04	; 4
	.byte ___bank_trigger_872_interact
	.dw _trigger_872_interact
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x1b	; 27
	.db #0x06	; 6
	.db #0x04	; 4
	.byte ___bank_trigger_873_interact
	.dw _trigger_873_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x18	; 24
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_874_interact
	.dw _trigger_874_interact
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x1b	; 27
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_875_interact
	.dw _trigger_875_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x25	; 37
	.db #0x08	; 8
	.db #0x02	; 2
	.byte ___bank_trigger_876_interact
	.dw _trigger_876_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x2d	; 45
	.db #0x08	; 8
	.db #0x04	; 4
	.byte ___bank_trigger_877_interact
	.dw _trigger_877_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x39	; 57	'9'
	.db #0x06	; 6
	.db #0x08	; 8
	.byte ___bank_trigger_878_interact
	.dw _trigger_878_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x39	; 57	'9'
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_879_interact
	.dw _trigger_879_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_881_interact
	.dw _trigger_881_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_887_interact
	.dw _trigger_887_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
