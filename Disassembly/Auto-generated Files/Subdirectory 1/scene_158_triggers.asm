;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_158_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_158_triggers
	.globl b___func_scene_158_triggers
	.globl ___func_scene_158_triggers
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
	G$__func_scene_158_triggers$0$0	= .
	.globl	G$__func_scene_158_triggers$0$0
	C$scene_158_triggers.c$15$0_0$195	= .
	.globl	C$scene_158_triggers.c$15$0_0$195
;src\data\scene_158_triggers.c:15: BANKREF(scene_158_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_158_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_158_triggers	= 255
___func_scene_158_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_158_triggers 
	___bank_scene_158_triggers = b___func_scene_158_triggers 
	.globl ___bank_scene_158_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_158_triggers$0_0$0 == .
_scene_158_triggers:
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x06	; 6
	.byte ___bank_trigger_683_interact
	.dw _trigger_683_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x11	; 17
	.db #0x34	; 52	'4'
	.db #0x01	; 1
	.byte ___bank_trigger_684_interact
	.dw _trigger_684_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x34	; 52	'4'
	.db #0x01	; 1
	.byte ___bank_trigger_685_interact
	.dw _trigger_685_interact
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_686_interact
	.dw _trigger_686_interact
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_687_interact
	.dw _trigger_687_interact
	.db #0x01	; 1
	.db #0x2c	; 44
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_688_interact
	.dw _trigger_688_interact
	.db #0x01	; 1
	.db #0x3f	; 63
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x06	; 6
	.byte ___bank_trigger_689_interact
	.dw _trigger_689_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
