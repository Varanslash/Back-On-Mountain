;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module bg_map_96_
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _bg_map_96_
	.globl b___func_bg_map_96_
	.globl ___func_bg_map_96_
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
	G$__func_bg_map_96_$0$0	= .
	.globl	G$__func_bg_map_96_$0$0
	C$bg_map_96_.c$10$0_0$195	= .
	.globl	C$bg_map_96_.c$10$0_0$195
;src\data\bg_map_96_.c:10: BANKREF(bg_map_96_)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_bg_map_96_
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_bg_map_96_	= 255
___func_bg_map_96_::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_bg_map_96_ 
	___bank_bg_map_96_ = b___func_bg_map_96_ 
	.globl ___bank_bg_map_96_ 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$bg_map_96_$0_0$0 == .
_bg_map_96_:
	.db #0x5a	; 90	'Z'
	.db #0x12	; 18
	.byte ___bank_bg_map_96__tileset
	.dw _bg_map_96__tileset
	.db #0x00	; 0
	.dw #0x0000
	.byte ___bank_bg_map_96__tilemap
	.dw _bg_map_96__tilemap
	.byte ___bank_bg_map_96__tilemap_attr
	.dw _bg_map_96__tilemap_attr
	.area _INITIALIZER
	.area _CABS (ABS)
