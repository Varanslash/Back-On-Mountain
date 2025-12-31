;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_152_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_152_triggers
	.globl b___func_scene_152_triggers
	.globl ___func_scene_152_triggers
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
	G$__func_scene_152_triggers$0$0	= .
	.globl	G$__func_scene_152_triggers$0$0
	C$scene_152_triggers.c$26$0_0$195	= .
	.globl	C$scene_152_triggers.c$26$0_0$195
;src\data\scene_152_triggers.c:26: BANKREF(scene_152_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_152_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_152_triggers	= 255
___func_scene_152_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_152_triggers 
	___bank_scene_152_triggers = b___func_scene_152_triggers 
	.globl ___bank_scene_152_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_152_triggers$0_0$0 == .
_scene_152_triggers:
	.db #0x06	; 6
	.db #0x09	; 9
	.db #0x12	; 18
	.db #0x02	; 2
	.byte ___bank_trigger_640_interact
	.dw _trigger_640_interact
	.db #0x01	; 1
	.db #0x1f	; 31
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x18	; 24
	.byte ___bank_trigger_641_interact
	.dw _trigger_641_interact
	.db #0x01	; 1
	.db #0x29	; 41
	.db #0x0a	; 10
	.db #0x02	; 2
	.db #0x28	; 40
	.byte ___bank_trigger_642_interact
	.dw _trigger_642_interact
	.db #0x01	; 1
	.db #0x3b	; 59
	.db #0x0e	; 14
	.db #0x02	; 2
	.db #0x28	; 40
	.byte ___bank_trigger_643_interact
	.dw _trigger_643_interact
	.db #0x01	; 1
	.db #0x41	; 65	'A'
	.db #0x18	; 24
	.db #0x02	; 2
	.db #0x10	; 16
	.byte ___bank_trigger_644_interact
	.dw _trigger_644_interact
	.db #0x01	; 1
	.db #0x5b	; 91
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x2c	; 44
	.byte ___bank_trigger_645_interact
	.dw _trigger_645_interact
	.db #0x01	; 1
	.db #0x52	; 82	'R'
	.db #0x39	; 57	'9'
	.db #0x05	; 5
	.db #0x01	; 1
	.byte ___bank_trigger_646_interact
	.dw _trigger_646_interact
	.db #0x01	; 1
	.db #0x30	; 48	'0'
	.db #0x37	; 55	'7'
	.db #0x1c	; 28
	.db #0x01	; 1
	.byte ___bank_trigger_647_interact
	.dw _trigger_647_interact
	.db #0x01	; 1
	.db #0x0b	; 11
	.db #0x13	; 19
	.db #0x02	; 2
	.db #0x15	; 21
	.byte ___bank_trigger_648_interact
	.dw _trigger_648_interact
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x19	; 25
	.db #0x10	; 16
	.db #0x02	; 2
	.byte ___bank_trigger_649_interact
	.dw _trigger_649_interact
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x08	; 8
	.byte ___bank_trigger_650_interact
	.dw _trigger_650_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x37	; 55	'7'
	.db #0x22	; 34
	.db #0x01	; 1
	.byte ___bank_trigger_651_interact
	.dw _trigger_651_interact
	.db #0x01	; 1
	.db #0x0b	; 11
	.db #0x2e	; 46
	.db #0x02	; 2
	.db #0x08	; 8
	.byte ___bank_trigger_652_interact
	.dw _trigger_652_interact
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x1f	; 31
	.db #0x0c	; 12
	.db #0x04	; 4
	.byte ___bank_trigger_653_interact
	.dw _trigger_653_interact
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x11	; 17
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_654_interact
	.dw _trigger_654_interact
	.db #0x01	; 1
	.db #0x42	; 66	'B'
	.db #0x16	; 22
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_655_interact
	.dw _trigger_655_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_657_interact
	.dw _trigger_657_interact
	.db #0x01	; 1
	.db #0x61	; 97	'a'
	.db #0x34	; 52	'4'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_658_interact
	.dw _trigger_658_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
