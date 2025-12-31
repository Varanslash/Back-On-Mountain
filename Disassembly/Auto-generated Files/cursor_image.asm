;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module cursor_image
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _cursor_image
	.globl b___func_cursor_image
	.globl ___func_cursor_image
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
	G$__func_cursor_image$0$0	= .
	.globl	G$__func_cursor_image$0$0
	C$cursor_image.c$7$0_0$195	= .
	.globl	C$cursor_image.c$7$0_0$195
;src\data\cursor_image.c:7: BANKREF(cursor_image)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_cursor_image
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_cursor_image	= 255
___func_cursor_image::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_cursor_image 
	___bank_cursor_image = b___func_cursor_image 
	.globl ___bank_cursor_image 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
G$cursor_image$0_0$0 == .
_cursor_image:
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x3e	; 62
	.db #0x3e	; 62
	.db #0xc1	; 193
	.db #0xc1	; 193
	.db #0xce	; 206
	.db #0x8e	; 142
	.db #0xcc	; 204
	.db #0x84	; 132
	.db #0xc4	; 196
	.db #0x84	; 132
	.db #0xf8	; 248
	.db #0xf8	; 248
	.db #0x00	; 0
	.db #0x00	; 0
	.area _INITIALIZER
	.area _CABS (ABS)
