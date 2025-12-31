;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module palette
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memset
	.globl _SprPalette
	.globl _DMG_palette
	.globl b_palette_init
	.globl _palette_init
	.globl b_CGBZeroPalette
	.globl _CGBZeroPalette
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$DMG_palette$0_0$0==.
_DMG_palette::
	.ds 3
G$SprPalette$0_0$0==.
_SprPalette::
	.ds 64
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
	G$palette_init$0$0	= .
	.globl	G$palette_init$0$0
	C$palette.c$17$0_0$211	= .
	.globl	C$palette.c$17$0_0$211
;src\core\palette.c:17: void palette_init(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function palette_init
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_palette_init	= 255
_palette_init::
	C$palette.c$19$1_0$211	= .
	.globl	C$palette.c$19$1_0$211
;src\core\palette.c:19: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$palette.c$20$2_0$212	= .
	.globl	C$palette.c$20$2_0$212
;src\core\palette.c:20: memset(BkgPalette, 0, sizeof(BkgPalette));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0040
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_BkgPalette
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
	C$palette.c$21$2_0$212	= .
	.globl	C$palette.c$21$2_0$212
;src\core\palette.c:21: memset(SprPalette, 0, sizeof(SprPalette));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0040
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_SprPalette
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
	C$palette.c$22$2_0$212	= .
	.globl	C$palette.c$22$2_0$212
;src\core\palette.c:22: return;
;	genRet
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
	C$palette.c$25$1_0$211	= .
	.globl	C$palette.c$25$1_0$211
;src\core\palette.c:25: DMG_palette[0] = DMG_palette[2] = DMG_PALETTE(3, 2, 1, 0);
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	hl
	ld	hl, #_DMG_palette + 2
;	genAssign (pointer)
	ld	(hl), #0x1b
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_DMG_palette
	C$palette.c$26$1_0$211	= .
	.globl	C$palette.c$26$1_0$211
;src\core\palette.c:26: DMG_palette[1] = DMG_PALETTE(3, 1, 0, 2);
;	genPlus
;fetchLitPair	hl
	ld	a, #0x1b
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
;	genAssign (pointer)
	ld	(hl), #0x87
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$palette.c$27$1_0$211	= .
	.globl	C$palette.c$27$1_0$211
;src\core\palette.c:27: }
;	genEndFunction
	C$palette.c$27$1_0$211	= .
	.globl	C$palette.c$27$1_0$211
	XG$palette_init$0$0	= .
	.globl	XG$palette_init$0$0
	ret
	G$CGBZeroPalette$0$0	= .
	.globl	G$CGBZeroPalette$0$0
	C$palette.c$30$1_0$214	= .
	.globl	C$palette.c$30$1_0$214
;src\core\palette.c:30: void CGBZeroPalette(UBYTE reg) OLDCALL BANKED NAKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function CGBZeroPalette
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_CGBZeroPalette	= 255
_CGBZeroPalette::
; naked function: no prologue.
	C$palette.c$51$1_0$214	= .
	.globl	C$palette.c$51$1_0$214
;src\core\palette.c:51: __endasm;
;	genInline
;	genInline
	ldhl	sp, #6
	ld	c, (hl)
	ld	a, #0x80
	ldh	(c), a
	inc	c
	ld	b, #(8 * 4 * 2)
1$:
	ldh	a, (_STAT_REG)
	bit	1, a
	jr	nz, 1$
	xor	a
	ldh	(c), a
	dec	b
	jr	nz, 1$
	ret
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$palette.c$52$1_0$214	= .
	.globl	C$palette.c$52$1_0$214
;src\core\palette.c:52: }
;	genEndFunction
; naked function: No epilogue.
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
