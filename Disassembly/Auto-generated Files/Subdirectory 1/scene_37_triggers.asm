;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_37_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_37_triggers
	.globl b___func_scene_37_triggers
	.globl ___func_scene_37_triggers
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
	G$__func_scene_37_triggers$0$0	= .
	.globl	G$__func_scene_37_triggers$0$0
	C$scene_37_triggers.c$16$0_0$195	= .
	.globl	C$scene_37_triggers.c$16$0_0$195
;src\data\scene_37_triggers.c:16: BANKREF(scene_37_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_37_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_37_triggers	= 255
___func_scene_37_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_37_triggers 
	___bank_scene_37_triggers = b___func_scene_37_triggers 
	.globl ___bank_scene_37_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_37_triggers$0_0$0 == .
_scene_37_triggers:
	.db #0x0c	; 12
	.db #0x1d	; 29
	.db #0x0a	; 10
	.db #0x02	; 2
	.byte ___bank_trigger_153_interact
	.dw _trigger_153_interact
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0x21	; 33
	.db #0x10	; 16
	.db #0x02	; 2
	.byte ___bank_trigger_154_interact
	.dw _trigger_154_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x1a	; 26
	.db #0x02	; 2
	.byte ___bank_trigger_155_interact
	.dw _trigger_155_interact
	.db #0x01	; 1
	.db #0x1c	; 28
	.db #0x11	; 17
	.db #0x11	; 17
	.db #0x02	; 2
	.byte ___bank_trigger_156_interact
	.dw _trigger_156_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x35	; 53	'5'
	.db #0x20	; 32
	.db #0x01	; 1
	.byte ___bank_trigger_157_interact
	.dw _trigger_157_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_159_interact
	.dw _trigger_159_interact
	.db #0x01	; 1
	.db #0x33	; 51	'3'
	.db #0x30	; 48	'0'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_161_interact
	.dw _trigger_161_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x2e	; 46
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_166_interact
	.dw _trigger_166_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
