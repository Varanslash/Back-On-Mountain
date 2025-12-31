;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_121_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_121_triggers
	.globl b___func_scene_121_triggers
	.globl ___func_scene_121_triggers
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
	G$__func_scene_121_triggers$0$0	= .
	.globl	G$__func_scene_121_triggers$0$0
	C$scene_121_triggers.c$16$0_0$195	= .
	.globl	C$scene_121_triggers.c$16$0_0$195
;src\data\scene_121_triggers.c:16: BANKREF(scene_121_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_121_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_121_triggers	= 255
___func_scene_121_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_121_triggers 
	___bank_scene_121_triggers = b___func_scene_121_triggers 
	.globl ___bank_scene_121_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_121_triggers$0_0$0 == .
_scene_121_triggers:
	.db #0x0a	; 10
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x02	; 2
	.byte ___bank_trigger_503_interact
	.dw _trigger_503_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x11	; 17
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_504_interact
	.dw _trigger_504_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x11	; 17
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_505_interact
	.dw _trigger_505_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x17	; 23
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_506_interact
	.dw _trigger_506_interact
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x19	; 25
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_507_interact
	.dw _trigger_507_interact
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x23	; 35
	.db #0x02	; 2
	.db #0x01	; 1
	.byte ___bank_trigger_508_interact
	.dw _trigger_508_interact
	.db #0x01	; 1
	.db #0x17	; 23
	.db #0x04	; 4
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_510_interact
	.dw _trigger_510_interact
	.db #0x01	; 1
	.db #0x17	; 23
	.db #0x26	; 38
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_511_interact
	.dw _trigger_511_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
