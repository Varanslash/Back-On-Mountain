;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module parallax
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcpy
	.globl _parallax_row
	.globl _parallax_rows
	.globl b_parallax_init
	.globl _parallax_init
	.globl _parallax_LCD_isr
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$parallax_rows$0_0$0==.
_parallax_rows::
	.ds 18
G$parallax_row$0_0$0==.
_parallax_row::
	.ds 2
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
	G$parallax_LCD_isr$0$0	= .
	.globl	G$parallax_LCD_isr$0$0
	C$parallax.c$18$1_0$152	= .
	.globl	C$parallax.c$18$1_0$152
;src\core\parallax.c:18: void parallax_LCD_isr(void) NONBANKED NAKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function parallax_LCD_isr
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_parallax_LCD_isr::
; naked function: no prologue.
	C$parallax.c$65$1_0$152	= .
	.globl	C$parallax.c$65$1_0$152
;src\core\parallax.c:65: __endasm;
;	genInline
;	genInline
	ld	hl, #_parallax_row
	ld	a, (hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, (hl+) ; scx
	ld	e, a
	ld	a, (hl+) ; next_y
	ldh	(#_LYC_REG), a
	or	a
	jr	z, 1$
	ld	d, #0
	jr	2$
1$:
	ld	a, (#_draw_scroll_y)
	ld	d, a
2$:
	ldh	a, (#_STAT_REG)
	bit	1, a
	jr	nz, 2$
	ld	a, e
	ld	(#_SCX_REG), a
	ld	a, d
	ldh	(#_SCY_REG), a
	ldh	a, (#_LYC_REG)
	or	a
	jr	z, 3$
	ld	de, #4
	add	hl, de ; skip shift, tile_start, tile_height, shadow_scx
	ld	d, h
	ld	a, l
	ld	hl,#_parallax_row
	ld	(hl+), a
	ld	(hl), d
	ret
3$:
	ld	hl,#_parallax_row
	ld	a, #<_parallax_rows
	ld	(hl+), a
	ld	(hl), #>_parallax_rows
	ret
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$parallax.c$66$1_0$152	= .
	.globl	C$parallax.c$66$1_0$152
;src\core\parallax.c:66: }
;	genEndFunction
; naked function: No epilogue.
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$parallax_init$0$0	= .
	.globl	G$parallax_init$0$0
	C$parallax.c$14$0_0$150	= .
	.globl	C$parallax.c$14$0_0$150
;src\core\parallax.c:14: void parallax_init(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function parallax_init
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_parallax_init	= 255
_parallax_init::
	C$parallax.c$15$1_0$150	= .
	.globl	C$parallax.c$15$1_0$150
;src\core\parallax.c:15: memcpy(parallax_rows, parallax_rows_defaults, sizeof(parallax_rows)); 
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0012
	push	de
;	genSend
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #_parallax_rows_defaults
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_parallax_rows
;	genCall
	call	_memcpy
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$parallax.c$16$1_0$150	= .
	.globl	C$parallax.c$16$1_0$150
;src\core\parallax.c:16: }
;	genEndFunction
	C$parallax.c$16$1_0$150	= .
	.globl	C$parallax.c$16$1_0$150
	XG$parallax_init$0$0	= .
	.globl	XG$parallax_init$0$0
	ret
Fparallax$parallax_rows_defaults$0_0$0 == .
_parallax_rows_defaults:
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x02	;  2
	.db #0x00	; 0
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x1f	; 31
	.db #0x01	;  1
	.db #0x02	; 2
	.db #0x02	; 2
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	;  0
	.db #0x04	; 4
	.db #0x10	; 16
	.db #0x00	; 0
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
