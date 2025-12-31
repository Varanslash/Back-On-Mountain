;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_106_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_106_triggers
	.globl b___func_scene_106_triggers
	.globl ___func_scene_106_triggers
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
	G$__func_scene_106_triggers$0$0	= .
	.globl	G$__func_scene_106_triggers$0$0
	C$scene_106_triggers.c$15$0_0$195	= .
	.globl	C$scene_106_triggers.c$15$0_0$195
;src\data\scene_106_triggers.c:15: BANKREF(scene_106_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_106_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_106_triggers	= 255
___func_scene_106_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_106_triggers 
	___bank_scene_106_triggers = b___func_scene_106_triggers 
	.globl ___bank_scene_106_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_106_triggers$0_0$0 == .
_scene_106_triggers:
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_443_interact
	.dw _trigger_443_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x07	; 7
	.db #0x08	; 8
	.db #0x02	; 2
	.byte ___bank_trigger_444_interact
	.dw _trigger_444_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x11	; 17
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_445_interact
	.dw _trigger_445_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x1b	; 27
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_446_interact
	.dw _trigger_446_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x1e	; 30
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_447_interact
	.dw _trigger_447_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x2b	; 43
	.db #0x06	; 6
	.db #0x01	; 1
	.byte ___bank_trigger_448_interact
	.dw _trigger_448_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x28	; 40
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_449_interact
	.dw _trigger_449_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
