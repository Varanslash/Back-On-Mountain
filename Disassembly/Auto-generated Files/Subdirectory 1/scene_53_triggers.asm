;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_53_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_53_triggers
	.globl b___func_scene_53_triggers
	.globl ___func_scene_53_triggers
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
	G$__func_scene_53_triggers$0$0	= .
	.globl	G$__func_scene_53_triggers$0$0
	C$scene_53_triggers.c$15$0_0$195	= .
	.globl	C$scene_53_triggers.c$15$0_0$195
;src\data\scene_53_triggers.c:15: BANKREF(scene_53_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_53_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_53_triggers	= 255
___func_scene_53_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_53_triggers 
	___bank_scene_53_triggers = b___func_scene_53_triggers 
	.globl ___bank_scene_53_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_53_triggers$0_0$0 == .
_scene_53_triggers:
	.db #0x02	; 2
	.db #0x15	; 21
	.db #0x02	; 2
	.db #0x09	; 9
	.byte ___bank_trigger_215_interact
	.dw _trigger_215_interact
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x1f	; 31
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_216_interact
	.dw _trigger_216_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x19	; 25
	.db #0x06	; 6
	.db #0x01	; 1
	.byte ___bank_trigger_217_interact
	.dw _trigger_217_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_219_interact
	.dw _trigger_219_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x07	; 7
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_220_interact
	.dw _trigger_220_interact
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x0f	; 15
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_221_interact
	.dw _trigger_221_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_229_interact
	.dw _trigger_229_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
