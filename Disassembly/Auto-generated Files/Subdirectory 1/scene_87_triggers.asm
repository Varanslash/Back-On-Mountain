;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_87_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_87_triggers
	.globl b___func_scene_87_triggers
	.globl ___func_scene_87_triggers
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
	G$__func_scene_87_triggers$0$0	= .
	.globl	G$__func_scene_87_triggers$0$0
	C$scene_87_triggers.c$19$0_0$195	= .
	.globl	C$scene_87_triggers.c$19$0_0$195
;src\data\scene_87_triggers.c:19: BANKREF(scene_87_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_87_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_87_triggers	= 255
___func_scene_87_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_87_triggers 
	___bank_scene_87_triggers = b___func_scene_87_triggers 
	.globl ___bank_scene_87_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_87_triggers$0_0$0 == .
_scene_87_triggers:
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0x4a	; 74	'J'
	.db #0x01	; 1
	.byte ___bank_trigger_311_interact
	.dw _trigger_311_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x11	; 17
	.db #0x49	; 73	'I'
	.db #0x01	; 1
	.byte ___bank_trigger_312_interact
	.dw _trigger_312_interact
	.db #0x01	; 1
	.db #0x3c	; 60
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_313_interact
	.dw _trigger_313_interact
	.db #0x01	; 1
	.db #0x48	; 72	'H'
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_314_interact
	.dw _trigger_314_interact
	.db #0x01	; 1
	.db #0x4f	; 79	'O'
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_315_interact
	.dw _trigger_315_interact
	.db #0x01	; 1
	.db #0x34	; 52	'4'
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_316_interact
	.dw _trigger_316_interact
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x04	; 4
	.db #0x06	; 6
	.db #0x01	; 1
	.byte ___bank_trigger_317_interact
	.dw _trigger_317_interact
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_318_interact
	.dw _trigger_318_interact
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_319_interact
	.dw _trigger_319_interact
	.db #0x01	; 1
	.db #0x59	; 89	'Y'
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_321_interact
	.dw _trigger_321_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_323_interact
	.dw _trigger_323_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
