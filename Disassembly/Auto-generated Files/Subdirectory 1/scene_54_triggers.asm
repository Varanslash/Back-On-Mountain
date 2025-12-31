;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_54_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_54_triggers
	.globl b___func_scene_54_triggers
	.globl ___func_scene_54_triggers
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
	G$__func_scene_54_triggers$0$0	= .
	.globl	G$__func_scene_54_triggers$0$0
	C$scene_54_triggers.c$17$0_0$195	= .
	.globl	C$scene_54_triggers.c$17$0_0$195
;src\data\scene_54_triggers.c:17: BANKREF(scene_54_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_54_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_54_triggers	= 255
___func_scene_54_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_54_triggers 
	___bank_scene_54_triggers = b___func_scene_54_triggers 
	.globl ___bank_scene_54_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_54_triggers$0_0$0 == .
_scene_54_triggers:
	.db #0x04	; 4
	.db #0x27	; 39
	.db #0x36	; 54	'6'
	.db #0x01	; 1
	.byte ___bank_trigger_222_interact
	.dw _trigger_222_interact
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x23	; 35
	.byte ___bank_trigger_223_interact
	.dw _trigger_223_interact
	.db #0x01	; 1
	.db #0x34	; 52	'4'
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x07	; 7
	.byte ___bank_trigger_224_interact
	.dw _trigger_224_interact
	.db #0x01	; 1
	.db #0x35	; 53	'5'
	.db #0x07	; 7
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_225_interact
	.dw _trigger_225_interact
	.db #0x01	; 1
	.db #0x39	; 57	'9'
	.db #0x07	; 7
	.db #0x01	; 1
	.db #0x11	; 17
	.byte ___bank_trigger_226_interact
	.dw _trigger_226_interact
	.db #0x01	; 1
	.db #0x38	; 56	'8'
	.db #0x19	; 25
	.db #0x06	; 6
	.db #0x01	; 1
	.byte ___bank_trigger_227_interact
	.dw _trigger_227_interact
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x05	; 5
	.db #0x01	; 1
	.db #0x11	; 17
	.byte ___bank_trigger_228_interact
	.dw _trigger_228_interact
	.db #0x01	; 1
	.db #0x41	; 65	'A'
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_230_interact
	.dw _trigger_230_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x16	; 22
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_238_interact
	.dw _trigger_238_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
