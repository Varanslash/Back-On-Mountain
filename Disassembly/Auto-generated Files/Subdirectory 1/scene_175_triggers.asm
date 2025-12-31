;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_175_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_175_triggers
	.globl b___func_scene_175_triggers
	.globl ___func_scene_175_triggers
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
	G$__func_scene_175_triggers$0$0	= .
	.globl	G$__func_scene_175_triggers$0$0
	C$scene_175_triggers.c$14$0_0$195	= .
	.globl	C$scene_175_triggers.c$14$0_0$195
;src\data\scene_175_triggers.c:14: BANKREF(scene_175_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_175_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_175_triggers	= 255
___func_scene_175_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_175_triggers 
	___bank_scene_175_triggers = b___func_scene_175_triggers 
	.globl ___bank_scene_175_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_175_triggers$0_0$0 == .
_scene_175_triggers:
	.db #0x1a	; 26
	.db #0x0f	; 15
	.db #0x20	; 32
	.db #0x01	; 1
	.byte ___bank_trigger_783_interact
	.dw _trigger_783_interact
	.db #0x01	; 1
	.db #0x1a	; 26
	.db #0x02	; 2
	.db #0x22	; 34
	.db #0x01	; 1
	.byte ___bank_trigger_784_interact
	.dw _trigger_784_interact
	.db #0x01	; 1
	.db #0x2e	; 46
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_785_interact
	.dw _trigger_785_interact
	.db #0x01	; 1
	.db #0x40	; 64
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_786_interact
	.dw _trigger_786_interact
	.db #0x01	; 1
	.db #0x47	; 71	'G'
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_797_interact
	.dw _trigger_797_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_799_interact
	.dw _trigger_799_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
