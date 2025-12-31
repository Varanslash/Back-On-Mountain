;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_211_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_211_triggers
	.globl b___func_scene_211_triggers
	.globl ___func_scene_211_triggers
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
	G$__func_scene_211_triggers$0$0	= .
	.globl	G$__func_scene_211_triggers$0$0
	C$scene_211_triggers.c$16$0_0$195	= .
	.globl	C$scene_211_triggers.c$16$0_0$195
;src\data\scene_211_triggers.c:16: BANKREF(scene_211_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_211_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_211_triggers	= 255
___func_scene_211_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_211_triggers 
	___bank_scene_211_triggers = b___func_scene_211_triggers 
	.globl ___bank_scene_211_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_211_triggers$0_0$0 == .
_scene_211_triggers:
	.db #0x00	; 0
	.db #0x08	; 8
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_1009_interact
	.dw _trigger_1009_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x01	; 1
	.byte ___bank_trigger_1010_interact
	.dw _trigger_1010_interact
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x02	; 2
	.db #0x0a	; 10
	.db #0x01	; 1
	.byte ___bank_trigger_1011_interact
	.dw _trigger_1011_interact
	.db #0x01	; 1
	.db #0x16	; 22
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_1012_interact
	.dw _trigger_1012_interact
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0x0f	; 15
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_1013_interact
	.dw _trigger_1013_interact
	.db #0x01	; 1
	.db #0x2c	; 44
	.db #0x06	; 6
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_1014_interact
	.dw _trigger_1014_interact
	.db #0x01	; 1
	.db #0x2c	; 44
	.db #0x0c	; 12
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_1015_interact
	.dw _trigger_1015_interact
	.db #0x01	; 1
	.db #0x33	; 51	'3'
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_1019_interact
	.dw _trigger_1019_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
