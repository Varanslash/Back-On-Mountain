;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module scene_207_triggers
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _scene_207_triggers
	.globl b___func_scene_207_triggers
	.globl ___func_scene_207_triggers
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
	G$__func_scene_207_triggers$0$0	= .
	.globl	G$__func_scene_207_triggers$0$0
	C$scene_207_triggers.c$27$0_0$195	= .
	.globl	C$scene_207_triggers.c$27$0_0$195
;src\data\scene_207_triggers.c:27: BANKREF(scene_207_triggers)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_scene_207_triggers
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_scene_207_triggers	= 255
___func_scene_207_triggers::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_scene_207_triggers 
	___bank_scene_207_triggers = b___func_scene_207_triggers 
	.globl ___bank_scene_207_triggers 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$scene_207_triggers$0_0$0 == .
_scene_207_triggers:
	.db #0x12	; 18
	.db #0x07	; 7
	.db #0x0e	; 14
	.db #0x02	; 2
	.byte ___bank_trigger_984_interact
	.dw _trigger_984_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x0b	; 11
	.db #0x08	; 8
	.db #0x02	; 2
	.byte ___bank_trigger_985_interact
	.dw _trigger_985_interact
	.db #0x01	; 1
	.db #0x14	; 20
	.db #0x0f	; 15
	.db #0x0c	; 12
	.db #0x02	; 2
	.byte ___bank_trigger_986_interact
	.dw _trigger_986_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x13	; 19
	.db #0x0a	; 10
	.db #0x02	; 2
	.byte ___bank_trigger_987_interact
	.dw _trigger_987_interact
	.db #0x01	; 1
	.db #0x16	; 22
	.db #0x17	; 23
	.db #0x0a	; 10
	.db #0x02	; 2
	.byte ___bank_trigger_988_interact
	.dw _trigger_988_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x1b	; 27
	.db #0x0c	; 12
	.db #0x02	; 2
	.byte ___bank_trigger_989_interact
	.dw _trigger_989_interact
	.db #0x01	; 1
	.db #0x18	; 24
	.db #0x1f	; 31
	.db #0x08	; 8
	.db #0x02	; 2
	.byte ___bank_trigger_990_interact
	.dw _trigger_990_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x23	; 35
	.db #0x0e	; 14
	.db #0x02	; 2
	.byte ___bank_trigger_991_interact
	.dw _trigger_991_interact
	.db #0x01	; 1
	.db #0x1a	; 26
	.db #0x27	; 39
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_992_interact
	.dw _trigger_992_interact
	.db #0x01	; 1
	.db #0x12	; 18
	.db #0x2b	; 43
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_993_interact
	.dw _trigger_993_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x2b	; 43
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_994_interact
	.dw _trigger_994_interact
	.db #0x01	; 1
	.db #0x0a	; 10
	.db #0x33	; 51	'3'
	.db #0x0e	; 14
	.db #0x02	; 2
	.byte ___bank_trigger_995_interact
	.dw _trigger_995_interact
	.db #0x01	; 1
	.db #0x1c	; 28
	.db #0x2f	; 47
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_996_interact
	.dw _trigger_996_interact
	.db #0x01	; 1
	.db #0x06	; 6
	.db #0x3b	; 59
	.db #0x06	; 6
	.db #0x02	; 2
	.byte ___bank_trigger_997_interact
	.dw _trigger_997_interact
	.db #0x01	; 1
	.db #0x10	; 16
	.db #0x3b	; 59
	.db #0x0a	; 10
	.db #0x02	; 2
	.byte ___bank_trigger_998_interact
	.dw _trigger_998_interact
	.db #0x01	; 1
	.db #0x1a	; 26
	.db #0x39	; 57	'9'
	.db #0x04	; 4
	.db #0x02	; 2
	.byte ___bank_trigger_999_interact
	.dw _trigger_999_interact
	.db #0x01	; 1
	.db #0x1e	; 30
	.db #0x37	; 55	'7'
	.db #0x02	; 2
	.db #0x02	; 2
	.byte ___bank_trigger_1000_interact
	.dw _trigger_1000_interact
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x06	; 6
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_1002_interact
	.dw _trigger_1002_interact
	.db #0x01	; 1
	.db #0x25	; 37
	.db #0x3e	; 62
	.db #0x01	; 1
	.db #0x04	; 4
	.byte ___bank_trigger_1005_interact
	.dw _trigger_1005_interact
	.db #0x01	; 1
	.area _INITIALIZER
	.area _CABS (ABS)
