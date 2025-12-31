;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_120_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_120_triggers
	.globl b___func_scene_120_triggers
	.globl ___func_scene_120_triggers
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
	G$__func_scene_120_triggers$0$0	= .
	.globl	G$__func_scene_120_triggers$0$0
	C$scene_120_triggers.c$19$0_0$195	= .
	.globl	C$scene_120_triggers.c$19$0_0$195
;src\data\scene_120_triggers.c:19: BANKREF(scene_120_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_120_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_120_triggers	= 255
___func_scene_120_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_120_triggers 
	___bank_scene_120_triggers = b___func_scene_120_triggers 
	.globl ___bank_scene_120_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_120_triggers$0_0$0 == .
_scene_120_triggers:
	.db #0x16	; 22
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x16	; 22
	.byte ___bank_trigger_492_interact
	.dw _trigger_492_interact
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x0f	; 15
	.db #0x18	; 24
	.db #0x02	; 2
	.byte ___bank_trigger_493_interact
	.dw _trigger_493_interact
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x02	; 2
	.byte ___bank_trigger_494_interact
	.dw _trigger_494_interact
	.db #0x01	; 1
	.db #0x2a	; 42
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x02	; 2
	.byte ___bank_trigger_495_interact
	.dw _trigger_495_interact
	.db #0x01	; 1
	.db #0x34	; 52	'4'
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_496_interact
	.dw _trigger_496_interact
	.db #0x01	; 1
	.db #0x19	; 25
	.db #0x27	; 39
	.db #0x1c	; 28
	.db #0x01	; 1
	.byte ___bank_trigger_497_interact
	.dw _trigger_497_interact
	.db #0x01	; 1
	.db #0x39	; 57	'9'
	.db #0x27	; 39
	.db #0x01	; 1
	.db #0x01	; 1
	.byte ___bank_trigger_498_interact
	.dw _trigger_498_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x27	; 39
	.db #0x08	; 8
	.db #0x01	; 1
	.byte ___bank_trigger_499_interact
	.dw _trigger_499_interact
	.db #0x01	; 1
	.db #0x16	; 22
	.db #0x1f	; 31
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_500_interact
	.dw _trigger_500_interact
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_501_interact
	.dw _trigger_501_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_509_interact
	.dw _trigger_509_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
