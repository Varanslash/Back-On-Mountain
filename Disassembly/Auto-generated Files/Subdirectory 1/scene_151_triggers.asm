;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_151_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_151_triggers
	.globl b___func_scene_151_triggers
	.globl ___func_scene_151_triggers
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
	G$__func_scene_151_triggers$0$0	= .
	.globl	G$__func_scene_151_triggers$0$0
	C$scene_151_triggers.c$16$0_0$195	= .
	.globl	C$scene_151_triggers.c$16$0_0$195
;src\data\scene_151_triggers.c:16: BANKREF(scene_151_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_151_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_151_triggers	= 255
___func_scene_151_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_151_triggers 
	___bank_scene_151_triggers = b___func_scene_151_triggers 
	.globl ___bank_scene_151_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_151_triggers$0_0$0 == .
_scene_151_triggers:
	.db #0x08	; 8
	.db #0x0d	; 13
	.db #0x0a	; 10
	.db #0x01	; 1
	.byte ___bank_trigger_632_interact
	.dw _trigger_632_interact
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x06	; 6
	.db #0x04	; 4
	.db #0x01	; 1
	.byte ___bank_trigger_633_interact
	.dw _trigger_633_interact
	.db #0x01	; 1
	.db #0x16	; 22
	.db #0x0d	; 13
	.db #0x08	; 8
	.db #0x01	; 1
	.byte ___bank_trigger_634_interact
	.dw _trigger_634_interact
	.db #0x01	; 1
	.db #0x20	; 32
	.db #0x06	; 6
	.db #0x0c	; 12
	.db #0x01	; 1
	.byte ___bank_trigger_635_interact
	.dw _trigger_635_interact
	.db #0x01	; 1
	.db #0x26	; 38
	.db #0x08	; 8
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_636_interact
	.dw _trigger_636_interact
	.db #0x01	; 1
	.db #0x26	; 38
	.db #0x0d	; 13
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_637_interact
	.dw _trigger_637_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x0a	; 10
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_639_interact
	.dw _trigger_639_interact
	.db #0x01	; 1
	.db #0x35	; 53	'5'
	.db #0x0a	; 10
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_656_interact
	.dw _trigger_656_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
