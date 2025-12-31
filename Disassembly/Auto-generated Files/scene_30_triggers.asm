;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_30_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_30_triggers
	.globl b___func_scene_30_triggers
	.globl ___func_scene_30_triggers
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
	G$__func_scene_30_triggers$0$0	= .
	.globl	G$__func_scene_30_triggers$0$0
	C$scene_30_triggers.c$13$0_0$195	= .
	.globl	C$scene_30_triggers.c$13$0_0$195
;src\data\scene_30_triggers.c:13: BANKREF(scene_30_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_30_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_30_triggers	= 255
___func_scene_30_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_30_triggers 
	___bank_scene_30_triggers = b___func_scene_30_triggers 
	.globl ___bank_scene_30_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_30_triggers$0_0$0 == .
_scene_30_triggers:
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_87_interact
	.dw _trigger_87_interact
	.db #0x01	; 1
	.db #0x31	; 49	'1'
	.db #0x0e	; 14
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_125_interact
	.dw _trigger_125_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x11	; 17
	.db #0x1c	; 28
	.db #0x01	; 1
	.byte ___bank_trigger_127_interact
	.dw _trigger_127_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x02	; 2
	.db #0x24	; 36
	.db #0x01	; 1
	.byte ___bank_trigger_128_interact
	.dw _trigger_128_interact
	.db #0x01	; 1
	.db #0x28	; 40
	.db #0x11	; 17
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_129_interact
	.dw _trigger_129_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
