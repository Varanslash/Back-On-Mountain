;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_198_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_198_triggers
	.globl b___func_scene_198_triggers
	.globl ___func_scene_198_triggers
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
	G$__func_scene_198_triggers$0$0	= .
	.globl	G$__func_scene_198_triggers$0$0
	C$scene_198_triggers.c$31$0_0$195	= .
	.globl	C$scene_198_triggers.c$31$0_0$195
;src\data\scene_198_triggers.c:31: BANKREF(scene_198_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_198_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_198_triggers	= 255
___func_scene_198_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_198_triggers 
	___bank_scene_198_triggers = b___func_scene_198_triggers 
	.globl ___bank_scene_198_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_198_triggers$0_0$0 == .
_scene_198_triggers:
	.db #0x04	; 4
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_893_interact
	.dw _trigger_893_interact
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x09	; 9
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_894_interact
	.dw _trigger_894_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x11	; 17
	.db #0x0a	; 10
	.db #0x02	; 2
	.byte ___bank_trigger_895_interact
	.dw _trigger_895_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x19	; 25
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_896_interact
	.dw _trigger_896_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x19	; 25
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_897_interact
	.dw _trigger_897_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x21	; 33
	.db #0x08	; 8
	.db #0x02	; 2
	.byte ___bank_trigger_898_interact
	.dw _trigger_898_interact
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x21	; 33
	.db #0x02	; 2
	.db #0x02	; 2
	.byte ___bank_trigger_899_interact
	.dw _trigger_899_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x29	; 41
	.db #0x02	; 2
	.db #0x02	; 2
	.byte ___bank_trigger_900_interact
	.dw _trigger_900_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x29	; 41
	.db #0x08	; 8
	.db #0x02	; 2
	.byte ___bank_trigger_901_interact
	.dw _trigger_901_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x31	; 49	'1'
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_902_interact
	.dw _trigger_902_interact
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x31	; 49	'1'
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_903_interact
	.dw _trigger_903_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x39	; 57	'9'
	.db #0x08	; 8
	.db #0x02	; 2
	.byte ___bank_trigger_904_interact
	.dw _trigger_904_interact
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x39	; 57	'9'
	.db #0x02	; 2
	.db #0x02	; 2
	.byte ___bank_trigger_905_interact
	.dw _trigger_905_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x41	; 65	'A'
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_906_interact
	.dw _trigger_906_interact
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x41	; 65	'A'
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_907_interact
	.dw _trigger_907_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x49	; 73	'I'
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_908_interact
	.dw _trigger_908_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x49	; 73	'I'
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_909_interact
	.dw _trigger_909_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x51	; 81	'Q'
	.db #0x02	; 2
	.db #0x02	; 2
	.byte ___bank_trigger_910_interact
	.dw _trigger_910_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x51	; 81	'Q'
	.db #0x08	; 8
	.db #0x02	; 2
	.byte ___bank_trigger_911_interact
	.dw _trigger_911_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x59	; 89	'Y'
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_912_interact
	.dw _trigger_912_interact
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x59	; 89	'Y'
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_913_interact
	.dw _trigger_913_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_915_interact
	.dw _trigger_915_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x60	; 96
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_921_interact
	.dw _trigger_921_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
