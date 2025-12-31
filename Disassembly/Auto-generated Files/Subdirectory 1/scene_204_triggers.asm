;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_204_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_204_triggers
	.globl b___func_scene_204_triggers
	.globl ___func_scene_204_triggers
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
	G$__func_scene_204_triggers$0$0	= .
	.globl	G$__func_scene_204_triggers$0$0
	C$scene_204_triggers.c$16$0_0$195	= .
	.globl	C$scene_204_triggers.c$16$0_0$195
;src\data\scene_204_triggers.c:16: BANKREF(scene_204_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_204_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_204_triggers	= 255
___func_scene_204_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_204_triggers 
	___bank_scene_204_triggers = b___func_scene_204_triggers 
	.globl ___bank_scene_204_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_204_triggers$0_0$0 == .
_scene_204_triggers:
	.db #0x06	; 6
	.db #0x11	; 17
	.db #0xa6	; 166
	.db #0x01	; 1
	.byte ___bank_trigger_967_interact
	.dw _trigger_967_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x00	; 0
	.db #0xa6	; 166
	.db #0x01	; 1
	.byte ___bank_trigger_968_interact
	.dw _trigger_968_interact
	.db #0x01	; 1
	.db #0x66	; 102	'f'
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_969_interact
	.dw _trigger_969_interact
	.db #0x01	; 1
	.db #0x76	; 118	'v'
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_970_interact
	.dw _trigger_970_interact
	.db #0x01	; 1
	.db #0x84	; 132
	.db #0x07	; 7
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_971_interact
	.dw _trigger_971_interact
	.db #0x01	; 1
	.db #0x9c	; 156
	.db #0x09	; 9
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_972_interact
	.dw _trigger_972_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_974_interact
	.dw _trigger_974_interact
	.db #0x01	; 1
	.db #0xb1	; 177
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_978_interact
	.dw _trigger_978_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
