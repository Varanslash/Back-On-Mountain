;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module bg_map_2025_10_05t132507_08
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bg_map_2025_10_05t132507_08
	.globl b___func_bg_map_2025_10_05t132507_08
	.globl ___func_bg_map_2025_10_05t132507_08
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
	G$__func_bg_map_2025_10_05t132507_08$0$0	= .
	.globl	G$__func_bg_map_2025_10_05t132507_08$0$0
	C$bg_map_2025_10_05t132507_08.c$11$0_0$195	= .
	.globl	C$bg_map_2025_10_05t132507_08.c$11$0_0$195
;src\data\bg_map_2025_10_05t132507_08.c:11: BANKREF(bg_map_2025_10_05t132507_08)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_bg_map_2025_10_05t132507_08
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_bg_map_2025_10_05t132507_08	= 255
___func_bg_map_2025_10_05t132507_08::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_bg_map_2025_10_05t132507_08 
	___bank_bg_map_2025_10_05t132507_08 = b___func_bg_map_2025_10_05t132507_08 
	.globl ___bank_bg_map_2025_10_05t132507_08 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$bg_map_2025_10_05t132507_08$0_0$0 == .
_bg_map_2025_10_05t132507_08:
	.db #0x32	; 50	'2'
	.db #0x1a	; 26
	.byte ___bank_bg_map_2025_10_05t132507_08_tileset
	.dw _bg_map_2025_10_05t132507_08_tileset
	.byte ___bank_bg_map_2025_10_05t132507_08_cgb_tileset
	.dw _bg_map_2025_10_05t132507_08_cgb_tileset
	.byte ___bank_bg_map_2025_10_05t132507_08_tilemap
	.dw _bg_map_2025_10_05t132507_08_tilemap
	.byte ___bank_bg_map_2025_10_05t132507_08_tilemap_attr
	.dw _bg_map_2025_10_05t132507_08_tilemap_attr
	.area _INITIALIZER
	.area _CABS (ABS)
