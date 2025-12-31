;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_123_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_123_triggers
	.globl b___func_scene_123_triggers
	.globl ___func_scene_123_triggers
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
	G$__func_scene_123_triggers$0$0	= .
	.globl	G$__func_scene_123_triggers$0$0
	C$scene_123_triggers.c$20$0_0$195	= .
	.globl	C$scene_123_triggers.c$20$0_0$195
;src\data\scene_123_triggers.c:20: BANKREF(scene_123_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_123_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_123_triggers	= 255
___func_scene_123_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_123_triggers 
	___bank_scene_123_triggers = b___func_scene_123_triggers 
	.globl ___bank_scene_123_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_123_triggers$0_0$0 == .
_scene_123_triggers:
	.db #0x00	; 0
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_514_interact
	.dw _trigger_514_interact
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_515_interact
	.dw _trigger_515_interact
	.db #0x01	; 1
	.db #0x22	; 34
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_516_interact
	.dw _trigger_516_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_517_interact
	.dw _trigger_517_interact
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_518_interact
	.dw _trigger_518_interact
	.db #0x01	; 1
	.db #0x16	; 22
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_519_interact
	.dw _trigger_519_interact
	.db #0x01	; 1
	.db #0x1a	; 26
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_520_interact
	.dw _trigger_520_interact
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_521_interact
	.dw _trigger_521_interact
	.db #0x01	; 1
	.db #0x24	; 36
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_522_interact
	.dw _trigger_522_interact
	.db #0x01	; 1
	.db #0x2a	; 42
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_523_interact
	.dw _trigger_523_interact
	.db #0x01	; 1
	.db #0x32	; 50	'2'
	.db #0x04	; 4
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_524_interact
	.dw _trigger_524_interact
	.db #0x01	; 1
	.db #0x3b	; 59
	.db #0x0c	; 12
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_526_interact
	.dw _trigger_526_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
