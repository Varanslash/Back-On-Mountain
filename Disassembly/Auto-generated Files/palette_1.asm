;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module palette_1
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _palette_1
	.globl b___func_palette_1
	.globl ___func_palette_1
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
	G$__func_palette_1$0$0	= .
	.globl	G$__func_palette_1$0$0
	C$palette_1.c$7$0_0$195	= .
	.globl	C$palette_1.c$7$0_0$195
;src\data\palette_1.c:7: BANKREF(palette_1)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_palette_1
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_palette_1	= 255
___func_palette_1::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_palette_1 
	___bank_palette_1 = b___func_palette_1 
	.globl ___bank_palette_1 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$palette_1$0_0$0 == .
_palette_1:
	.db #0xff	; 255
	.db #0xe4	; 228
	.db 0x00
	.dw #0x53fc
	.dw #0x1f2f
	.dw #0x0e29
	.dw #0x0461
	.dw #0x639f
	.dw #0x4b1f
	.dw #0x1970
	.dw #0x0ca7
	.dw #0x7f75
	.dw #0x6820
	.dw #0x0572
	.dw #0x0400
	.dw #0x7fff
	.dw #0x5ef7
	.dw #0x040f
	.dw #0x0407
	.dw #0x7fff
	.dw #0x5ad6
	.dw #0x3def
	.dw #0x2529
	.dw #0x577f
	.dw #0x3ebc
	.dw #0x456f
	.dw #0x1880
	.dw #0x73fd
	.dw #0x47d6
	.dw #0x3e6a
	.dw #0x28a4
	.dw #0x5fff
	.dw #0x6732
	.dw #0x3da9
	.dw #0x2481
	.area _INITIALIZER
	.area _CABS (ABS)
