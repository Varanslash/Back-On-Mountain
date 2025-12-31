;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module palette_19
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _palette_19
	.globl b___func_palette_19
	.globl ___func_palette_19
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
	G$__func_palette_19$0$0	= .
	.globl	G$__func_palette_19$0$0
	C$palette_19.c$7$0_0$195	= .
	.globl	C$palette_19.c$7$0_0$195
;src\data\palette_19.c:7: BANKREF(palette_19)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_palette_19
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_palette_19	= 255
___func_palette_19::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_palette_19 
	___bank_palette_19 = b___func_palette_19 
	.globl ___bank_palette_19 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$palette_19$0_0$0 == .
_palette_19:
	.db #0xff	; 255
	.db #0xd0	; 208
	.db #0xe0	; 224
	.dw #0x7fff
	.dw #0x7fff
	.dw #0x5ad6
	.dw #0x2529
	.dw #0x76dd
	.dw #0x76dd
	.dw #0x55f6
	.dw #0x2866
	.dw #0x6b57
	.dw #0x6b57
	.dw #0x6e1b
	.dw #0x0407
	.dw #0x73df
	.dw #0x73df
	.dw #0x3e1b
	.dw #0x0400
	.dw #0x639f
	.dw #0x639f
	.dw #0x4b1f
	.dw #0x0ca7
	.dw #0x7fff
	.dw #0x7fff
	.dw #0x463e
	.dw #0x041f
	.dw #0x7fff
	.dw #0x7fff
	.dw #0x7bb5
	.dw #0x7dc0
	.dw #0x7fff
	.dw #0x7fff
	.dw #0x33ef
	.dw #0x0704
	.area _INITIALIZER
	.area _CABS (ABS)
