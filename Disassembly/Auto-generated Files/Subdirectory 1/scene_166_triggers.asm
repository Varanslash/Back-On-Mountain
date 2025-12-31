;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_166_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_166_triggers
	.globl b___func_scene_166_triggers
	.globl ___func_scene_166_triggers
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
	G$__func_scene_166_triggers$0$0	= .
	.globl	G$__func_scene_166_triggers$0$0
	C$scene_166_triggers.c$22$0_0$195	= .
	.globl	C$scene_166_triggers.c$22$0_0$195
;src\data\scene_166_triggers.c:22: BANKREF(scene_166_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_166_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_166_triggers	= 255
___func_scene_166_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_166_triggers 
	___bank_scene_166_triggers = b___func_scene_166_triggers 
	.globl ___bank_scene_166_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_166_triggers$0_0$0 == .
_scene_166_triggers:
	.db #0x04	; 4
	.db #0x23	; 35
	.db #0x10	; 16
	.db #0x02	; 2
	.byte ___bank_trigger_715_interact
	.dw _trigger_715_interact
	.db #0x01	; 1
	.db #0x15	; 21
	.db #0x24	; 36
	.db #0x01	; 1
	.db #0x02	; 2
	.byte ___bank_trigger_716_interact
	.dw _trigger_716_interact
	.db #0x01	; 1
	.db #0x1a	; 26
	.db #0x1f	; 31
	.db #0x02	; 2
	.db #0x02	; 2
	.byte ___bank_trigger_717_interact
	.dw _trigger_717_interact
	.db #0x01	; 1
	.db #0x1d	; 29
	.db #0x16	; 22
	.db #0x02	; 2
	.db #0x24	; 36
	.byte ___bank_trigger_718_interact
	.dw _trigger_718_interact
	.db #0x01	; 1
	.db #0x07	; 7
	.db #0x26	; 38
	.db #0x02	; 2
	.db #0x0c	; 12
	.byte ___bank_trigger_719_interact
	.dw _trigger_719_interact
	.db #0x01	; 1
	.db #0x0e	; 14
	.db #0x2d	; 45
	.db #0x0a	; 10
	.db #0x02	; 2
	.byte ___bank_trigger_720_interact
	.dw _trigger_720_interact
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x13	; 19
	.db #0x12	; 18
	.db #0x02	; 2
	.byte ___bank_trigger_721_interact
	.dw _trigger_721_interact
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x09	; 9
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_722_interact
	.dw _trigger_722_interact
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x09	; 9
	.db #0x08	; 8
	.db #0x02	; 2
	.byte ___bank_trigger_723_interact
	.dw _trigger_723_interact
	.db #0x01	; 1
	.db #0x0c	; 12
	.db #0x0a	; 10
	.db #0x01	; 1
	.db #0x06	; 6
	.byte ___bank_trigger_724_interact
	.dw _trigger_724_interact
	.db #0x01	; 1
	.db #0x04	; 4
	.db #0x17	; 23
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_725_interact
	.dw _trigger_725_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_727_interact
	.dw _trigger_727_interact
	.db #0x01	; 1
	.db #0x27	; 39
	.db #0x18	; 24
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_733_interact
	.dw _trigger_733_interact
	.db #0x01	; 1
	.db #0x27	; 39
	.db #0x3a	; 58
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_735_interact
	.dw _trigger_735_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
