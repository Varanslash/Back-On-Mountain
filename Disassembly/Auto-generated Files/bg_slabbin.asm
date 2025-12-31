;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module bg_slabbin
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bg_slabbin
	.globl b___func_bg_slabbin
	.globl ___func_bg_slabbin
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
	G$__func_bg_slabbin$0$0	= .
	.globl	G$__func_bg_slabbin$0$0
	C$bg_slabbin.c$10$0_0$195	= .
	.globl	C$bg_slabbin.c$10$0_0$195
;src\data\bg_slabbin.c:10: BANKREF(bg_slabbin)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_bg_slabbin
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_bg_slabbin	= 255
___func_bg_slabbin::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_bg_slabbin 
	___bank_bg_slabbin = b___func_bg_slabbin 
	.globl ___bank_bg_slabbin 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$bg_slabbin$0_0$0 == .
_bg_slabbin:
	.db #0x18	; 24
	.db #0x2e	; 46
	.byte ___bank_bg_slabbin_tileset
	.dw _bg_slabbin_tileset
	.db #0x00	; 0
	.dw #0x0000
	.byte ___bank_bg_slabbin_tilemap
	.dw _bg_slabbin_tilemap
	.byte ___bank_bg_slabbin_tilemap_attr
	.dw _bg_slabbin_tilemap_attr
	.area _INITIALIZER
	.area _CABS (ABS)
