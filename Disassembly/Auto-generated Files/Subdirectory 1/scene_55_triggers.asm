;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_55_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_55_triggers
	.globl b___func_scene_55_triggers
	.globl ___func_scene_55_triggers
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
	G$__func_scene_55_triggers$0$0	= .
	.globl	G$__func_scene_55_triggers$0$0
	C$scene_55_triggers.c$18$0_0$195	= .
	.globl	C$scene_55_triggers.c$18$0_0$195
;src\data\scene_55_triggers.c:18: BANKREF(scene_55_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_55_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_55_triggers	= 255
___func_scene_55_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_55_triggers 
	___bank_scene_55_triggers = b___func_scene_55_triggers 
	.globl ___bank_scene_55_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_55_triggers$0_0$0 == .
_scene_55_triggers:
	.db #0x0b	; 11
	.db #0x21	; 33
	.db #0x01	; 1
	.db #0x14	; 20
	.byte ___bank_trigger_231_interact
	.dw _trigger_231_interact
	.db #0x01	; 1
	.db #0x0b	; 11
	.db #0x3b	; 59
	.db #0x01	; 1
	.db #0x09	; 9
	.byte ___bank_trigger_232_interact
	.dw _trigger_232_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x45	; 69	'E'
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_233_interact
	.dw _trigger_233_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x47	; 71	'G'
	.db #0x08	; 8
	.db #0x01	; 1
	.byte ___bank_trigger_234_interact
	.dw _trigger_234_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x21	; 33
	.db #0x05	; 5
	.db #0x01	; 1
	.byte ___bank_trigger_235_interact
	.dw _trigger_235_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x1b	; 27
	.db #0x08	; 8
	.db #0x02	; 2
	.byte ___bank_trigger_236_interact
	.dw _trigger_236_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x11	; 17
	.db #0x08	; 8
	.db #0x02	; 2
	.byte ___bank_trigger_237_interact
	.dw _trigger_237_interact
	.db #0x01	; 1
	.db #0x17	; 23
	.db #0x2e	; 46
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_239_interact
	.dw _trigger_239_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x44	; 68	'D'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_244_interact
	.dw _trigger_244_interact
	.db #0x01	; 1
	.db #0x17	; 23
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_276_interact
	.dw _trigger_276_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
