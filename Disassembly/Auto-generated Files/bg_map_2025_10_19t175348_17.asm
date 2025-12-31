;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module bg_map_2025_10_19t175348_17
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bg_map_2025_10_19t175348_17
	.globl b___func_bg_map_2025_10_19t175348_17
	.globl ___func_bg_map_2025_10_19t175348_17
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
	G$__func_bg_map_2025_10_19t175348_17$0$0	= .
	.globl	G$__func_bg_map_2025_10_19t175348_17$0$0
	C$bg_map_2025_10_19t175348_17.c$10$0_0$195	= .
	.globl	C$bg_map_2025_10_19t175348_17.c$10$0_0$195
;src\data\bg_map_2025_10_19t175348_17.c:10: BANKREF(bg_map_2025_10_19t175348_17)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_bg_map_2025_10_19t175348_17
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_bg_map_2025_10_19t175348_17	= 255
___func_bg_map_2025_10_19t175348_17::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_bg_map_2025_10_19t175348_17 
	___bank_bg_map_2025_10_19t175348_17 = b___func_bg_map_2025_10_19t175348_17 
	.globl ___bank_bg_map_2025_10_19t175348_17 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$bg_map_2025_10_19t175348_17$0_0$0 == .
_bg_map_2025_10_19t175348_17:
	.db #0x5a	; 90	'Z'
	.db #0x38	; 56	'8'
	.byte ___bank_bg_map_2025_10_19t175348_17_tileset
	.dw _bg_map_2025_10_19t175348_17_tileset
	.db #0x00	; 0
	.dw #0x0000
	.byte ___bank_bg_map_2025_10_19t175348_17_tilemap
	.dw _bg_map_2025_10_19t175348_17_tilemap
	.byte ___bank_bg_map_2025_10_19t175348_17_tilemap_attr
	.dw _bg_map_2025_10_19t175348_17_tilemap_attr
	.area _INITIALIZER
	.area _CABS (ABS)
