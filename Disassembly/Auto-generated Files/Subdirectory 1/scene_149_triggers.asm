;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_149_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_149_triggers
	.globl b___func_scene_149_triggers
	.globl ___func_scene_149_triggers
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
	G$__func_scene_149_triggers$0$0	= .
	.globl	G$__func_scene_149_triggers$0$0
	C$scene_149_triggers.c$16$0_0$195	= .
	.globl	C$scene_149_triggers.c$16$0_0$195
;src\data\scene_149_triggers.c:16: BANKREF(scene_149_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_149_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_149_triggers	= 255
___func_scene_149_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_149_triggers 
	___bank_scene_149_triggers = b___func_scene_149_triggers 
	.globl ___bank_scene_149_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_149_triggers$0_0$0 == .
_scene_149_triggers:
	.db #0x08	; 8
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_617_interact
	.dw _trigger_617_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x11	; 17
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_618_interact
	.dw _trigger_618_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x23	; 35
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_619_interact
	.dw _trigger_619_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x19	; 25
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_620_interact
	.dw _trigger_620_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x1e	; 30
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_621_interact
	.dw _trigger_621_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x37	; 55	'7'
	.db #0x06	; 6
	.db #0x01	; 1
	.byte ___bank_trigger_622_interact
	.dw _trigger_622_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_624_interact
	.dw _trigger_624_interact
	.db #0x01	; 1
	.db #0x13	; 19
	.db #0x34	; 52	'4'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_630_interact
	.dw _trigger_630_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
