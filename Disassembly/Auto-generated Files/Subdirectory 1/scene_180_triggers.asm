;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_180_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_180_triggers
	.globl b___func_scene_180_triggers
	.globl ___func_scene_180_triggers
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
	G$__func_scene_180_triggers$0$0	= .
	.globl	G$__func_scene_180_triggers$0$0
	C$scene_180_triggers.c$34$0_0$195	= .
	.globl	C$scene_180_triggers.c$34$0_0$195
;src\data\scene_180_triggers.c:34: BANKREF(scene_180_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_180_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_180_triggers	= 255
___func_scene_180_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_180_triggers 
	___bank_scene_180_triggers = b___func_scene_180_triggers 
	.globl ___bank_scene_180_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_180_triggers$0_0$0 == .
_scene_180_triggers:
	.db #0x3e	; 62
	.db #0x09	; 9
	.db #0x18	; 24
	.db #0x02	; 2
	.byte ___bank_trigger_802_interact
	.dw _trigger_802_interact
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0x0d	; 13
	.db #0x16	; 22
	.db #0x02	; 2
	.byte ___bank_trigger_803_interact
	.dw _trigger_803_interact
	.db #0x01	; 1
	.db #0x36	; 54	'6'
	.db #0x0f	; 15
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_804_interact
	.dw _trigger_804_interact
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x0b	; 11
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_805_interact
	.dw _trigger_805_interact
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_806_interact
	.dw _trigger_806_interact
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_807_interact
	.dw _trigger_807_interact
	.db #0x01	; 1
	.db #0x34	; 52	'4'
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_808_interact
	.dw _trigger_808_interact
	.db #0x01	; 1
	.db #0x1a	; 26
	.db #0x15	; 21
	.db #0x38	; 56	'8'
	.db #0x02	; 2
	.byte ___bank_trigger_809_interact
	.dw _trigger_809_interact
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x13	; 19
	.db #0x0c	; 12
	.db #0x02	; 2
	.byte ___bank_trigger_810_interact
	.dw _trigger_810_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x11	; 17
	.db #0x0a	; 10
	.db #0x02	; 2
	.byte ___bank_trigger_811_interact
	.dw _trigger_811_interact
	.db #0x01	; 1
	.db #0x52	; 82	'R'
	.db #0x1d	; 29
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_812_interact
	.dw _trigger_812_interact
	.db #0x01	; 1
	.db #0x26	; 38
	.db #0x23	; 35
	.db #0x30	; 48	'0'
	.db #0x02	; 2
	.byte ___bank_trigger_813_interact
	.dw _trigger_813_interact
	.db #0x01	; 1
	.db #0x1f	; 31
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x08	; 8
	.byte ___bank_trigger_814_interact
	.dw _trigger_814_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x1b	; 27
	.db #0x02	; 2
	.db #0x02	; 2
	.byte ___bank_trigger_816_interact
	.dw _trigger_816_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x23	; 35
	.db #0x14	; 20
	.db #0x02	; 2
	.byte ___bank_trigger_817_interact
	.dw _trigger_817_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x2d	; 45
	.db #0x04	; 4
	.db #0x06	; 6
	.byte ___bank_trigger_818_interact
	.dw _trigger_818_interact
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x02	; 2
	.byte ___bank_trigger_819_interact
	.dw _trigger_819_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x33	; 51	'3'
	.db #0x12	; 18
	.db #0x01	; 1
	.byte ___bank_trigger_820_interact
	.dw _trigger_820_interact
	.db #0x01	; 1
	.db #0x24	; 36
	.db #0x33	; 51	'3'
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_821_interact
	.dw _trigger_821_interact
	.db #0x01	; 1
	.db #0x2c	; 44
	.db #0x2c	; 44
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_822_interact
	.dw _trigger_822_interact
	.db #0x01	; 1
	.db #0x31	; 49	'1'
	.db #0x26	; 38
	.db #0x04	; 4
	.db #0x0c	; 12
	.byte ___bank_trigger_823_interact
	.dw _trigger_823_interact
	.db #0x01	; 1
	.db #0x39	; 57	'9'
	.db #0x2c	; 44
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_824_interact
	.dw _trigger_824_interact
	.db #0x01	; 1
	.db #0x3c	; 60
	.db #0x33	; 51	'3'
	.db #0x0e	; 14
	.db #0x01	; 1
	.byte ___bank_trigger_825_interact
	.dw _trigger_825_interact
	.db #0x01	; 1
	.db #0x4a	; 74	'J'
	.db #0x2c	; 44
	.db #0x0c	; 12
	.db #0x01	; 1
	.byte ___bank_trigger_826_interact
	.dw _trigger_826_interact
	.db #0x01	; 1
	.db #0x59	; 89	'Y'
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_828_interact
	.dw _trigger_828_interact
	.db #0x01	; 1
	.db #0x59	; 89	'Y'
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_815_interact
	.dw _trigger_815_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
