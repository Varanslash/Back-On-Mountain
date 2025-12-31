;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_173_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_173_triggers
	.globl b___func_scene_173_triggers
	.globl ___func_scene_173_triggers
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
	G$__func_scene_173_triggers$0$0	= .
	.globl	G$__func_scene_173_triggers$0$0
	C$scene_173_triggers.c$27$0_0$195	= .
	.globl	C$scene_173_triggers.c$27$0_0$195
;src\data\scene_173_triggers.c:27: BANKREF(scene_173_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_173_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_173_triggers	= 255
___func_scene_173_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_173_triggers 
	___bank_scene_173_triggers = b___func_scene_173_triggers 
	.globl ___bank_scene_173_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_173_triggers$0_0$0 == .
_scene_173_triggers:
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x01	; 1
	.byte ___bank_trigger_760_interact
	.dw _trigger_760_interact
	.db #0x01	; 1
	.db #0x0b	; 11
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x06	; 6
	.byte ___bank_trigger_761_interact
	.dw _trigger_761_interact
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_762_interact
	.dw _trigger_762_interact
	.db #0x01	; 1
	.db #0x14	; 20
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x01	; 1
	.byte ___bank_trigger_763_interact
	.dw _trigger_763_interact
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x1e	; 30
	.db #0x01	; 1
	.byte ___bank_trigger_764_interact
	.dw _trigger_764_interact
	.db #0x01	; 1
	.db #0x3c	; 60
	.db #0x03	; 3
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_765_interact
	.dw _trigger_765_interact
	.db #0x01	; 1
	.db #0x3e	; 62
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_766_interact
	.dw _trigger_766_interact
	.db #0x01	; 1
	.db #0x46	; 70	'F'
	.db #0x0b	; 11
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_767_interact
	.dw _trigger_767_interact
	.db #0x01	; 1
	.db #0x46	; 70	'F'
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_768_interact
	.dw _trigger_768_interact
	.db #0x01	; 1
	.db #0x36	; 54	'6'
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x06	; 6
	.byte ___bank_trigger_769_interact
	.dw _trigger_769_interact
	.db #0x01	; 1
	.db #0x1a	; 26
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x06	; 6
	.byte ___bank_trigger_770_interact
	.dw _trigger_770_interact
	.db #0x01	; 1
	.db #0x26	; 38
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_771_interact
	.dw _trigger_771_interact
	.db #0x01	; 1
	.db #0x2f	; 47
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_772_interact
	.dw _trigger_772_interact
	.db #0x01	; 1
	.db #0x42	; 66	'B'
	.db #0x0d	; 13
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_773_interact
	.dw _trigger_773_interact
	.db #0x01	; 1
	.db #0x30	; 48	'0'
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_774_interact
	.dw _trigger_774_interact
	.db #0x01	; 1
	.db #0x38	; 56	'8'
	.db #0x0f	; 15
	.db #0x03	; 3
	.db #0x01	; 1
	.byte ___bank_trigger_775_interact
	.dw _trigger_775_interact
	.db #0x01	; 1
	.db #0x3c	; 60
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_776_interact
	.dw _trigger_776_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_780_interact
	.dw _trigger_780_interact
	.db #0x01	; 1
	.db #0x4b	; 75	'K'
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_782_interact
	.dw _trigger_782_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
