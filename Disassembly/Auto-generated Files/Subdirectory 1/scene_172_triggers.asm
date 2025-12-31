;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_172_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_172_triggers
	.globl b___func_scene_172_triggers
	.globl ___func_scene_172_triggers
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
	G$__func_scene_172_triggers$0$0	= .
	.globl	G$__func_scene_172_triggers$0$0
	C$scene_172_triggers.c$18$0_0$195	= .
	.globl	C$scene_172_triggers.c$18$0_0$195
;src\data\scene_172_triggers.c:18: BANKREF(scene_172_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_172_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_172_triggers	= 255
___func_scene_172_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_172_triggers 
	___bank_scene_172_triggers = b___func_scene_172_triggers 
	.globl ___bank_scene_172_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_172_triggers$0_0$0 == .
_scene_172_triggers:
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_752_interact
	.dw _trigger_752_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x07	; 7
	.db #0x0a	; 10
	.db #0x02	; 2
	.byte ___bank_trigger_753_interact
	.dw _trigger_753_interact
	.db #0x01	; 1
	.db #0x08	; 8
	.db #0x21	; 33
	.db #0x0a	; 10
	.db #0x02	; 2
	.byte ___bank_trigger_754_interact
	.dw _trigger_754_interact
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x30	; 48	'0'
	.db #0x04	; 4
	.db #0x04	; 4
	.byte ___bank_trigger_755_interact
	.dw _trigger_755_interact
	.db #0x01	; 1
	.db #0x0b	; 11
	.db #0x40	; 64
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_756_interact
	.dw _trigger_756_interact
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0x46	; 70	'F'
	.db #0x01	; 1
	.db #0x08	; 8
	.byte ___bank_trigger_757_interact
	.dw _trigger_757_interact
	.db #0x01	; 1
	.db #0x11	; 17
	.db #0x26	; 38
	.db #0x01	; 1
	.db #0x06	; 6
	.byte ___bank_trigger_758_interact
	.dw _trigger_758_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x53	; 83	'S'
	.db #0x0a	; 10
	.db #0x01	; 1
	.byte ___bank_trigger_759_interact
	.dw _trigger_759_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x62	; 98	'b'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_781_interact
	.dw _trigger_781_interact
	.db #0x01	; 1
	.db #0x15	; 21
	.db #0x62	; 98	'b'
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_792_interact
	.dw _trigger_792_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
