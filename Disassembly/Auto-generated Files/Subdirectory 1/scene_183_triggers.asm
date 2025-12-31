;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_183_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_183_triggers
	.globl b___func_scene_183_triggers
	.globl ___func_scene_183_triggers
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
	G$__func_scene_183_triggers$0$0	= .
	.globl	G$__func_scene_183_triggers$0$0
	C$scene_183_triggers.c$14$0_0$195	= .
	.globl	C$scene_183_triggers.c$14$0_0$195
;src\data\scene_183_triggers.c:14: BANKREF(scene_183_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_183_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_183_triggers	= 255
___func_scene_183_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_183_triggers 
	___bank_scene_183_triggers = b___func_scene_183_triggers 
	.globl ___bank_scene_183_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_183_triggers$0_0$0 == .
_scene_183_triggers:
	.db #0x06	; 6
	.db #0x22	; 34
	.db #0x01	; 1
	.db #0x14	; 20
	.byte ___bank_trigger_834_interact
	.dw _trigger_834_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x1a	; 26
	.db #0x01	; 1
	.db #0x06	; 6
	.byte ___bank_trigger_835_interact
	.dw _trigger_835_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_836_interact
	.dw _trigger_836_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_837_interact
	.dw _trigger_837_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x36	; 54	'6'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_839_interact
	.dw _trigger_839_interact
	.db #0x01	; 1
	.db #0x19	; 25
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_848_interact
	.dw _trigger_848_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
