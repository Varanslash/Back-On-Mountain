;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module fade_manager
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _ApplyPaletteChangeDMG
	.globl _DMGFadeToBlackStep
	.globl _DMGFadeToWhiteStep
	.globl _ApplyPaletteChangeColor
	.globl _CGBFadeToBlackStep
	.globl _CGBFadeToWhiteStep
	.globl _wait_vbl_done
	.globl _fade_style
	.globl _fade_timer
	.globl _fade_frames_per_step
	.globl _fade_running
	.globl _fade_speeds
	.globl b_fade_init
	.globl _fade_init
	.globl b_fade_in
	.globl _fade_in
	.globl b_fade_out
	.globl _fade_out
	.globl b_fade_update
	.globl _fade_update
	.globl b_fade_applypalettechange
	.globl _fade_applypalettechange
	.globl b_fade_setspeed
	.globl _fade_setspeed
	.globl b_fade_in_modal
	.globl _fade_in_modal
	.globl b_fade_out_modal
	.globl _fade_out_modal
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$fade_running$0_0$0==.
_fade_running::
	.ds 1
G$fade_frames_per_step$0_0$0==.
_fade_frames_per_step::
	.ds 1
G$fade_timer$0_0$0==.
_fade_timer::
	.ds 1
Ffade_manager$fade_frame$0_0$0==.
_fade_frame:
	.ds 1
Ffade_manager$fade_direction$0_0$0==.
_fade_direction:
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
G$fade_style$0_0$0==.
_fade_style::
	.ds 1
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
	G$CGBFadeToWhiteStep$0$0	= .
	.globl	G$CGBFadeToWhiteStep$0$0
	C$fade_manager.c$25$0_0$209	= .
	.globl	C$fade_manager.c$25$0_0$209
;src\core\fade_manager.c:25: void CGBFadeToWhiteStep(const palette_entry_t * pal, UBYTE reg, UBYTE step) OLDCALL NAKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function CGBFadeToWhiteStep
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_CGBFadeToWhiteStep::
; naked function: no prologue.
	C$fade_manager.c$77$1_0$209	= .
	.globl	C$fade_manager.c$77$1_0$209
;src\core\fade_manager.c:77: __endasm;
;	genInline
;	genInline
	ldhl	sp, #5
	ld	a, (hl-)
	ld	b, a
	ld	a, (hl-)
	ld	c, a
	ld	a, #0x80
	ldh	(c), a
	inc	c
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	de, #0x0000
	ld	a, b
	or	a
	jr	z, 2$
0$:
	sla	e
	rl	d
	set	0, e
	set	5, e
	set	2, d
	dec	b
	jr	nz, 0$
2$:
	ld	b, #(8 * 4)
1$:
	ldh	a, (_STAT_REG)
	bit	1, a
	jr	nz, 1$
	ld	a, (hl+)
	or	e
	ldh	(c), a
3$:
	ldh	a, (_STAT_REG)
	bit	1, a
	jr	nz, 3$
	ld	a, (hl+)
	or	d
	ldh	(c), a
	dec	b
	jr	nz, 1$
	ret
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$fade_manager.c$79$1_0$209	= .
	.globl	C$fade_manager.c$79$1_0$209
;src\core\fade_manager.c:79: }
;	genEndFunction
; naked function: No epilogue.
	G$CGBFadeToBlackStep$0$0	= .
	.globl	G$CGBFadeToBlackStep$0$0
	C$fade_manager.c$81$1_0$211	= .
	.globl	C$fade_manager.c$81$1_0$211
;src\core\fade_manager.c:81: void CGBFadeToBlackStep(const palette_entry_t * pal, UBYTE reg, UBYTE step) OLDCALL NAKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function CGBFadeToBlackStep
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_CGBFadeToBlackStep::
; naked function: no prologue.
	C$fade_manager.c$134$1_0$211	= .
	.globl	C$fade_manager.c$134$1_0$211
;src\core\fade_manager.c:134: __endasm;
;	genInline
;	genInline
	ldhl	sp, #5
	ld	a, (hl-)
	ld	b, a
	ld	a, (hl-)
	ld	c, a
	ld	a, #0x80
	ldh	(c), a
	inc	c
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
	ld	de, #0x7fff
	ld	a, b
	or	a
	jr	z, 2$
0$:
	res	4, e
	res	1, d
	srl	d
	rr	e
	res	4, e
	res	1, d
	dec	b
	jr	nz, 0$
2$:
	ld	b, #(8 * 4)
1$:
	ldh	a, (_STAT_REG)
	bit	1, a
	jr	nz, 1$
	ld	a, (hl+)
	and	e
	ldh	(c), a
3$:
	ldh	a, (_STAT_REG)
	bit	1, a
	jr	nz, 3$
	ld	a, (hl+)
	and	d
	ldh	(c), a
	dec	b
	jr	nz, 1$
	ret
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$fade_manager.c$136$1_0$211	= .
	.globl	C$fade_manager.c$136$1_0$211
;src\core\fade_manager.c:136: }
;	genEndFunction
; naked function: No epilogue.
	G$ApplyPaletteChangeColor$0$0	= .
	.globl	G$ApplyPaletteChangeColor$0$0
	C$fade_manager.c$138$1_0$213	= .
	.globl	C$fade_manager.c$138$1_0$213
;src\core\fade_manager.c:138: void ApplyPaletteChangeColor(UBYTE index) {
;	genLabel
;	genFunction
;	---------------------------------
; Function ApplyPaletteChangeColor
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_ApplyPaletteChangeColor::
;	genReceive
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
	C$fade_manager.c$139$1_0$213	= .
	.globl	C$fade_manager.c$139$1_0$213
;src\core\fade_manager.c:139: if (fade_style) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_fade_style)
; common peephole 17 loaded a from (#_fade_style) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$fade_manager.c$140$2_0$214	= .
	.globl	C$fade_manager.c$140$2_0$214
;src\core\fade_manager.c:140: CGBFadeToBlackStep(BkgPalette, BCPS_REG_ADDR, index);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 1
	ld	c, #0x68
; common peephole 43 combined pushing of b and #0x68.
	push	bc
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_BkgPalette
	push	de
;	genCall
	call	_CGBFadeToBlackStep
;	adjustStack by 4
	add	sp, #4
	pop	bc
	C$fade_manager.c$141$2_0$214	= .
	.globl	C$fade_manager.c$141$2_0$214
;src\core\fade_manager.c:141: CGBFadeToBlackStep(SprPalette, OCPS_REG_ADDR, index);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genIpush
;	genMove_o size 1
	ld	c, #0x6a
; common peephole 43 combined pushing of b and #0x6a.
	push	bc
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_SprPalette
	push	de
;	genCall
	call	_CGBFadeToBlackStep
;	adjustStack by 4
	add	sp, #4
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
	C$fade_manager.c$143$2_0$215	= .
	.globl	C$fade_manager.c$143$2_0$215
;src\core\fade_manager.c:143: CGBFadeToWhiteStep(BkgPalette, BCPS_REG_ADDR, index);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 1
	ld	c, #0x68
; common peephole 43 combined pushing of b and #0x68.
	push	bc
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_BkgPalette
	push	de
;	genCall
	call	_CGBFadeToWhiteStep
;	adjustStack by 4
	add	sp, #4
	pop	bc
	C$fade_manager.c$144$2_0$215	= .
	.globl	C$fade_manager.c$144$2_0$215
;src\core\fade_manager.c:144: CGBFadeToWhiteStep(SprPalette, OCPS_REG_ADDR, index);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genIpush
;	genMove_o size 1
	ld	c, #0x6a
; common peephole 43 combined pushing of b and #0x6a.
	push	bc
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_SprPalette
	push	de
;	genCall
	call	_CGBFadeToWhiteStep
;	adjustStack by 4
	add	sp, #4
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$fade_manager.c$146$1_0$213	= .
	.globl	C$fade_manager.c$146$1_0$213
;src\core\fade_manager.c:146: }
;	genEndFunction
	C$fade_manager.c$146$1_0$213	= .
	.globl	C$fade_manager.c$146$1_0$213
	XG$ApplyPaletteChangeColor$0$0	= .
	.globl	XG$ApplyPaletteChangeColor$0$0
	ret
G$fade_speeds$0_0$0 == .
_fade_speeds:
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x03	; 3
	.db #0x07	; 7
	.db #0x0f	; 15
	.db #0x1f	; 31
	.db #0x3f	; 63
	G$DMGFadeToWhiteStep$0$0	= .
	.globl	G$DMGFadeToWhiteStep$0$0
	C$fade_manager.c$149$1_0$217	= .
	.globl	C$fade_manager.c$149$1_0$217
;src\core\fade_manager.c:149: UBYTE DMGFadeToWhiteStep(UBYTE step, UBYTE pal) NAKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function DMGFadeToWhiteStep
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_DMGFadeToWhiteStep::
; naked function: no prologue.
	C$fade_manager.c$184$1_0$217	= .
	.globl	C$fade_manager.c$184$1_0$217
;src\core\fade_manager.c:184: __endasm;
;	genInline
;	genInline
	or	A
	jr	Z, 0$
	ld	D, A
1$:
	ld	H, #4
2$:
	ld	A, E
	and	#3
	jr	Z, 3$
	dec	A
3$:
	srl	A
	rr	L
	srl	A
	rr	L
	srl	E
	srl	E
	dec	H
	jr	NZ, 2$
	ld	E, L
	dec	D
	jr	NZ, 1$
0$:
	ld	A, E
	ret
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$fade_manager.c$185$1_0$217	= .
	.globl	C$fade_manager.c$185$1_0$217
;src\core\fade_manager.c:185: }
;	genEndFunction
; naked function: No epilogue.
	G$DMGFadeToBlackStep$0$0	= .
	.globl	G$DMGFadeToBlackStep$0$0
	C$fade_manager.c$187$1_0$219	= .
	.globl	C$fade_manager.c$187$1_0$219
;src\core\fade_manager.c:187: UBYTE DMGFadeToBlackStep(UBYTE step, UBYTE pal) NAKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function DMGFadeToBlackStep
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_DMGFadeToBlackStep::
; naked function: no prologue.
	C$fade_manager.c$223$1_0$219	= .
	.globl	C$fade_manager.c$223$1_0$219
;src\core\fade_manager.c:223: __endasm;
;	genInline
;	genInline
	or	A
	jr	Z, 0$
	ld	D, A
1$:
	ld	H, #4
2$:
	ld	A, E
	and	#3
	cp	#3
	jr	Z, 3$
	inc	A
3$:
	srl	A
	rr	L
	srl	A
	rr	L
	srl	E
	srl	E
	dec	H
	jr	NZ, 2$
	ld	E, L
	dec	D
	jr	NZ, 1$
0$:
	ld	A, E
	ret
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$fade_manager.c$224$1_0$219	= .
	.globl	C$fade_manager.c$224$1_0$219
;src\core\fade_manager.c:224: }
;	genEndFunction
; naked function: No epilogue.
	G$ApplyPaletteChangeDMG$0$0	= .
	.globl	G$ApplyPaletteChangeDMG$0$0
	C$fade_manager.c$226$1_0$221	= .
	.globl	C$fade_manager.c$226$1_0$221
;src\core\fade_manager.c:226: void ApplyPaletteChangeDMG(UBYTE index) {
;	genLabel
;	genFunction
;	---------------------------------
; Function ApplyPaletteChangeDMG
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_ApplyPaletteChangeDMG::
;	genReceive
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	C$fade_manager.c$227$1_0$221	= .
	.globl	C$fade_manager.c$227$1_0$221
;src\core\fade_manager.c:227: if (index > 4) index = 4;
;	genCmpGt
	ld	a, #0x04
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00102$
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
	ld	c, #0x04
;	genLabel
00102$:
	C$fade_manager.c$228$1_0$221	= .
	.globl	C$fade_manager.c$228$1_0$221
;src\core\fade_manager.c:228: if (!fade_style) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_fade_style)
; common peephole 17 loaded a from (#_fade_style) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00104$
	C$fade_manager.c$229$2_0$222	= .
	.globl	C$fade_manager.c$229$2_0$222
;src\core\fade_manager.c:229: BGP_REG = DMGFadeToWhiteStep(index, DMG_palette[0]);
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_DMG_palette
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genSend
	push	bc
;	genMove_o size 1
	ld	e, b
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genCall
	call	_DMGFadeToWhiteStep
;	genMove_o size 1
	pop	bc
;	genAssign
	ldh	(_BGP_REG + 0), a
	C$fade_manager.c$230$2_0$222	= .
	.globl	C$fade_manager.c$230$2_0$222
;src\core\fade_manager.c:230: OBP0_REG = DMGFadeToWhiteStep(index, DMG_palette[1]);
;	genPlus
;fetchLitPair	hl
	ld	hl, #_DMG_palette + 1
;	genPointerGet
	ld	e, (hl)
;	genSend
	push	bc
;	genMove_o size 1
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genCall
	call	_DMGFadeToWhiteStep
;	genMove_o size 1
	pop	bc
;	genAssign
	ldh	(_OBP0_REG + 0), a
	C$fade_manager.c$231$2_0$222	= .
	.globl	C$fade_manager.c$231$2_0$222
;src\core\fade_manager.c:231: OBP1_REG = DMGFadeToWhiteStep(index, DMG_palette[2]);
;	genPlus
;fetchLitPair	hl
	ld	hl, #_DMG_palette + 2
;	genPointerGet
	ld	e, (hl)
;	genSend
;	genMove_o size 1
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genCall
	call	_DMGFadeToWhiteStep
;	genMove_o size 1
;	genAssign
	ldh	(_OBP1_REG + 0), a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00104$:
	C$fade_manager.c$233$2_0$223	= .
	.globl	C$fade_manager.c$233$2_0$223
;src\core\fade_manager.c:233: BGP_REG = DMGFadeToBlackStep(index, DMG_palette[0]);
;	skipping iCode since result will be rematerialized
;	genPointerGet
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_DMG_palette
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genSend
	push	bc
;	genMove_o size 1
	ld	e, b
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genCall
	call	_DMGFadeToBlackStep
;	genMove_o size 1
	pop	bc
;	genAssign
	ldh	(_BGP_REG + 0), a
	C$fade_manager.c$234$2_0$223	= .
	.globl	C$fade_manager.c$234$2_0$223
;src\core\fade_manager.c:234: OBP0_REG = DMGFadeToBlackStep(index, DMG_palette[1]);
;	genPlus
;fetchLitPair	hl
	ld	hl, #_DMG_palette + 1
;	genPointerGet
	ld	e, (hl)
;	genSend
	push	bc
;	genMove_o size 1
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genCall
	call	_DMGFadeToBlackStep
;	genMove_o size 1
	pop	bc
;	genAssign
	ldh	(_OBP0_REG + 0), a
	C$fade_manager.c$235$2_0$223	= .
	.globl	C$fade_manager.c$235$2_0$223
;src\core\fade_manager.c:235: OBP1_REG = DMGFadeToBlackStep(index, DMG_palette[2]);
;	genPlus
;fetchLitPair	hl
	ld	hl, #_DMG_palette + 2
;	genPointerGet
	ld	e, (hl)
;	genSend
;	genMove_o size 1
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genCall
	call	_DMGFadeToBlackStep
;	genMove_o size 1
;	genAssign
	ldh	(_OBP1_REG + 0), a
;	genLabel
; common peephole 158 removed unused label 00106$.
	C$fade_manager.c$237$1_0$221	= .
	.globl	C$fade_manager.c$237$1_0$221
;src\core\fade_manager.c:237: }
;	genEndFunction
	C$fade_manager.c$237$1_0$221	= .
	.globl	C$fade_manager.c$237$1_0$221
	XG$ApplyPaletteChangeDMG$0$0	= .
	.globl	XG$ApplyPaletteChangeDMG$0$0
	ret
	G$fade_init$0$0	= .
	.globl	G$fade_init$0$0
	C$fade_manager.c$239$1_0$225	= .
	.globl	C$fade_manager.c$239$1_0$225
;src\core\fade_manager.c:239: void fade_init(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function fade_init
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_fade_init	= 255
_fade_init::
	C$fade_manager.c$240$1_0$225	= .
	.globl	C$fade_manager.c$240$1_0$225
;src\core\fade_manager.c:240: fade_frames_per_step = fade_speeds[2];
;	genAddrOf
	ld	bc, #_fade_speeds+2
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_fade_frames_per_step),a
; common peephole 19 loaded (#_fade_frames_per_step) from a directly instead of using hl.
	C$fade_manager.c$241$1_0$225	= .
	.globl	C$fade_manager.c$241$1_0$225
;src\core\fade_manager.c:241: fade_timer = FADED_OUT_FRAME;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_fade_timer
	ld	(hl), #0x05
	C$fade_manager.c$242$1_0$225	= .
	.globl	C$fade_manager.c$242$1_0$225
;src\core\fade_manager.c:242: fade_running = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_fade_running
	ld	(hl), #0x00
	C$fade_manager.c$244$1_0$225	= .
	.globl	C$fade_manager.c$244$1_0$225
;src\core\fade_manager.c:244: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$fade_manager.c$245$2_0$226	= .
	.globl	C$fade_manager.c$245$2_0$226
;src\core\fade_manager.c:245: ApplyPaletteChangeColor(fade_timer);
;	genSend
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_fade_timer) directly instead of using hl.
;	genCall
	C$fade_manager.c$246$2_0$226	= .
	.globl	C$fade_manager.c$246$2_0$226
;src\core\fade_manager.c:246: return;
;	genRet
	ld	a, (#_fade_timer)
	jp	_ApplyPaletteChangeColor
; common peephole 87a removed unreachable jump to 00103$
;	genLabel
00102$:
	C$fade_manager.c$249$1_0$225	= .
	.globl	C$fade_manager.c$249$1_0$225
;src\core\fade_manager.c:249: ApplyPaletteChangeDMG(FADED_OUT_FRAME);
;	genSend
;	genMove_o size 1
	ld	a, #0x05
;	genCall
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$fade_manager.c$250$1_0$225	= .
	.globl	C$fade_manager.c$250$1_0$225
;src\core\fade_manager.c:250: }
;	genEndFunction
	C$fade_manager.c$250$1_0$225	= .
	.globl	C$fade_manager.c$250$1_0$225
	XG$fade_init$0$0	= .
	.globl	XG$fade_init$0$0
	jp	_ApplyPaletteChangeDMG
; common peephole 152 removed unused ret.
	G$fade_in$0$0	= .
	.globl	G$fade_in$0$0
	C$fade_manager.c$252$1_0$228	= .
	.globl	C$fade_manager.c$252$1_0$228
;src\core\fade_manager.c:252: void fade_in(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function fade_in
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_fade_in	= 255
_fade_in::
	C$fade_manager.c$253$1_0$228	= .
	.globl	C$fade_manager.c$253$1_0$228
;src\core\fade_manager.c:253: if (fade_timer == FADED_IN_FRAME) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_fade_timer)
; common peephole 17 loaded a from (#_fade_timer) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00104$
	C$fade_manager.c$255$2_0$229	= .
	.globl	C$fade_manager.c$255$2_0$229
;src\core\fade_manager.c:255: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$fade_manager.c$256$3_0$230	= .
	.globl	C$fade_manager.c$256$3_0$230
;src\core\fade_manager.c:256: ApplyPaletteChangeColor(FADED_IN_FRAME);
;	genSend
;	genMove_o size 1
	xor	a, a
;	genCall
	C$fade_manager.c$257$3_0$230	= .
	.globl	C$fade_manager.c$257$3_0$230
;src\core\fade_manager.c:257: return;
;	genRet
	jp	_ApplyPaletteChangeColor
; common peephole 152 removed unused ret.
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
	C$fade_manager.c$260$2_0$229	= .
	.globl	C$fade_manager.c$260$2_0$229
;src\core\fade_manager.c:260: ApplyPaletteChangeDMG(FADED_IN_FRAME);
;	genSend
;	genMove_o size 1
	xor	a, a
;	genCall
	C$fade_manager.c$261$2_0$229	= .
	.globl	C$fade_manager.c$261$2_0$229
;src\core\fade_manager.c:261: return;
;	genRet
	jp	_ApplyPaletteChangeDMG
; common peephole 152 removed unused ret.
; common peephole 160 replaced jump by return.
;	genLabel
00104$:
	C$fade_manager.c$263$1_0$228	= .
	.globl	C$fade_manager.c$263$1_0$228
;src\core\fade_manager.c:263: fade_frame = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_fade_frame
	ld	(hl), #0x00
	C$fade_manager.c$264$1_0$228	= .
	.globl	C$fade_manager.c$264$1_0$228
;src\core\fade_manager.c:264: fade_direction = FADE_IN;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_fade_direction
	ld	(hl), #0x00
	C$fade_manager.c$265$1_0$228	= .
	.globl	C$fade_manager.c$265$1_0$228
;src\core\fade_manager.c:265: fade_running = TRUE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_fade_running
	ld	(hl), #0x01
	C$fade_manager.c$266$1_0$228	= .
	.globl	C$fade_manager.c$266$1_0$228
;src\core\fade_manager.c:266: fade_timer = FADED_OUT_FRAME;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_fade_timer
	ld	(hl), #0x05
	C$fade_manager.c$268$1_0$228	= .
	.globl	C$fade_manager.c$268$1_0$228
;src\core\fade_manager.c:268: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
	C$fade_manager.c$269$2_0$231	= .
	.globl	C$fade_manager.c$269$2_0$231
;src\core\fade_manager.c:269: ApplyPaletteChangeColor(FADED_OUT_FRAME);
;	genSend
;	genMove_o size 1
;	genCall
	C$fade_manager.c$270$2_0$231	= .
	.globl	C$fade_manager.c$270$2_0$231
;src\core\fade_manager.c:270: return;
;	genRet
	ld	a, #0x05
	jp	_ApplyPaletteChangeColor
; common peephole 87a removed unreachable jump to 00107$
;	genLabel
00106$:
	C$fade_manager.c$273$1_0$228	= .
	.globl	C$fade_manager.c$273$1_0$228
;src\core\fade_manager.c:273: ApplyPaletteChangeDMG(FADED_OUT_FRAME);
;	genSend
;	genMove_o size 1
	ld	a, #0x05
;	genCall
;	genLabel
; common peephole 158 removed unused label 00107$.
	C$fade_manager.c$274$1_0$228	= .
	.globl	C$fade_manager.c$274$1_0$228
;src\core\fade_manager.c:274: }
;	genEndFunction
	C$fade_manager.c$274$1_0$228	= .
	.globl	C$fade_manager.c$274$1_0$228
	XG$fade_in$0$0	= .
	.globl	XG$fade_in$0$0
	jp	_ApplyPaletteChangeDMG
; common peephole 152 removed unused ret.
	G$fade_out$0$0	= .
	.globl	G$fade_out$0$0
	C$fade_manager.c$276$1_0$233	= .
	.globl	C$fade_manager.c$276$1_0$233
;src\core\fade_manager.c:276: void fade_out(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function fade_out
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_fade_out	= 255
_fade_out::
	C$fade_manager.c$277$1_0$233	= .
	.globl	C$fade_manager.c$277$1_0$233
;src\core\fade_manager.c:277: if (fade_timer == FADED_OUT_FRAME) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_fade_timer)
; common peephole 17 loaded a from (#_fade_timer) directly instead of using hl.
	sub	a, #0x05
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00127$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00128$.
;	skipping generated iCode
	C$fade_manager.c$279$2_0$234	= .
	.globl	C$fade_manager.c$279$2_0$234
;src\core\fade_manager.c:279: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$fade_manager.c$280$3_0$235	= .
	.globl	C$fade_manager.c$280$3_0$235
;src\core\fade_manager.c:280: ApplyPaletteChangeColor(FADED_OUT_FRAME);
;	genSend
;	genMove_o size 1
;	genCall
	C$fade_manager.c$281$3_0$235	= .
	.globl	C$fade_manager.c$281$3_0$235
;src\core\fade_manager.c:281: return;
;	genRet
	ld	a, #0x05
	jp	_ApplyPaletteChangeColor
; common peephole 87a removed unreachable jump to 00107$
;	genLabel
00102$:
	C$fade_manager.c$284$2_0$234	= .
	.globl	C$fade_manager.c$284$2_0$234
;src\core\fade_manager.c:284: ApplyPaletteChangeDMG(FADED_OUT_FRAME);
;	genSend
;	genMove_o size 1
;	genCall
	C$fade_manager.c$285$2_0$234	= .
	.globl	C$fade_manager.c$285$2_0$234
;src\core\fade_manager.c:285: return;
;	genRet
	ld	a, #0x05
	jp	_ApplyPaletteChangeDMG
; common peephole 87a removed unreachable jump to 00107$
;	genLabel
00104$:
	C$fade_manager.c$287$1_0$233	= .
	.globl	C$fade_manager.c$287$1_0$233
;src\core\fade_manager.c:287: fade_frame = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_fade_frame
	ld	(hl), #0x00
	C$fade_manager.c$288$1_0$233	= .
	.globl	C$fade_manager.c$288$1_0$233
;src\core\fade_manager.c:288: fade_direction = FADE_OUT;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_fade_direction
	ld	(hl), #0x01
	C$fade_manager.c$289$1_0$233	= .
	.globl	C$fade_manager.c$289$1_0$233
;src\core\fade_manager.c:289: fade_running = TRUE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_fade_running
	ld	(hl), #0x01
	C$fade_manager.c$290$1_0$233	= .
	.globl	C$fade_manager.c$290$1_0$233
;src\core\fade_manager.c:290: fade_timer = FADED_IN_FRAME;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_fade_timer
	ld	(hl), #0x00
	C$fade_manager.c$292$1_0$233	= .
	.globl	C$fade_manager.c$292$1_0$233
;src\core\fade_manager.c:292: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
	C$fade_manager.c$293$2_0$236	= .
	.globl	C$fade_manager.c$293$2_0$236
;src\core\fade_manager.c:293: ApplyPaletteChangeColor(fade_timer);
;	genSend
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_fade_timer) directly instead of using hl.
;	genCall
	C$fade_manager.c$294$2_0$236	= .
	.globl	C$fade_manager.c$294$2_0$236
;src\core\fade_manager.c:294: return;
;	genRet
	ld	a, (#_fade_timer)
	jp	_ApplyPaletteChangeColor
; common peephole 87a removed unreachable jump to 00107$
;	genLabel
00106$:
	C$fade_manager.c$297$1_0$233	= .
	.globl	C$fade_manager.c$297$1_0$233
;src\core\fade_manager.c:297: ApplyPaletteChangeDMG(FADED_IN_FRAME);
;	genSend
;	genMove_o size 1
	xor	a, a
;	genCall
;	genLabel
; common peephole 158 removed unused label 00107$.
	C$fade_manager.c$298$1_0$233	= .
	.globl	C$fade_manager.c$298$1_0$233
;src\core\fade_manager.c:298: }
;	genEndFunction
	C$fade_manager.c$298$1_0$233	= .
	.globl	C$fade_manager.c$298$1_0$233
	XG$fade_out$0$0	= .
	.globl	XG$fade_out$0$0
	jp	_ApplyPaletteChangeDMG
; common peephole 152 removed unused ret.
	G$fade_update$0$0	= .
	.globl	G$fade_update$0$0
	C$fade_manager.c$300$1_0$238	= .
	.globl	C$fade_manager.c$300$1_0$238
;src\core\fade_manager.c:300: void fade_update(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function fade_update
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_fade_update	= 255
_fade_update::
	C$fade_manager.c$301$1_0$238	= .
	.globl	C$fade_manager.c$301$1_0$238
;src\core\fade_manager.c:301: if (fade_running) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_fade_running)
; common peephole 17 loaded a from (#_fade_running) directly instead of using hl.
	or	a, a
	ret	Z
; common peephole 161 replaced jump by return.
	C$fade_manager.c$302$2_0$239	= .
	.globl	C$fade_manager.c$302$2_0$239
;src\core\fade_manager.c:302: if ((fade_frame++ & fade_frames_per_step) == 0) {
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_fade_frame
	ld	c, (hl)
;	genPlus
;fetchLitPair	hl
	inc	(hl)
;	genAnd
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_fade_frames_per_step
;	genMove_o size 1
;	genIfx
	and	a,(hl)
; common peephole 100 removed redundant or after and.
	ret	NZ
; common peephole 161 replaced jump by return.
	C$fade_manager.c$303$3_0$240	= .
	.globl	C$fade_manager.c$303$3_0$240
;src\core\fade_manager.c:303: if (fade_direction == FADE_IN) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #_fade_direction
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00110$
	C$fade_manager.c$304$4_0$241	= .
	.globl	C$fade_manager.c$304$4_0$241
;src\core\fade_manager.c:304: if (fade_timer > FADED_IN_FRAME) fade_timer--;
;	genIfx
;fetchLitPair	hl
	ld	hl, #_fade_timer
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	genMinus
;fetchLitPair	hl
	dec	(hl)
;	genLabel
00102$:
	C$fade_manager.c$305$4_0$241	= .
	.globl	C$fade_manager.c$305$4_0$241
;src\core\fade_manager.c:305: if (fade_timer == FADED_IN_FRAME) fade_running = FALSE;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_fade_timer)
; common peephole 17 loaded a from (#_fade_timer) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00111$
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_fade_running
	ld	(hl), #0x00
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
;	genLabel
00110$:
	C$fade_manager.c$307$4_0$242	= .
	.globl	C$fade_manager.c$307$4_0$242
;src\core\fade_manager.c:307: if (fade_timer < FADED_OUT_FRAME) fade_timer++;
;	genCmpLt
;fetchLitPair	hl
	ld	hl, #_fade_timer
	ld	a, (hl)
	sub	a, #0x05
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00106$
;	skipping generated iCode
;	genPlus
;fetchLitPair	hl
	inc	(hl)
;	genLabel
00106$:
	C$fade_manager.c$308$4_0$242	= .
	.globl	C$fade_manager.c$308$4_0$242
;src\core\fade_manager.c:308: if (fade_timer == FADED_OUT_FRAME) fade_running = FALSE;
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_fade_timer)
; common peephole 17 loaded a from (#_fade_timer) directly instead of using hl.
	sub	a, #0x05
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00168$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00111$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00169$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_fade_running
	ld	(hl), #0x00
;	genLabel
00111$:
	C$fade_manager.c$311$3_0$240	= .
	.globl	C$fade_manager.c$311$3_0$240
;src\core\fade_manager.c:311: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00113$
	C$fade_manager.c$312$4_0$243	= .
	.globl	C$fade_manager.c$312$4_0$243
;src\core\fade_manager.c:312: ApplyPaletteChangeColor(fade_timer);
;	genSend
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_fade_timer) directly instead of using hl.
;	genCall
	C$fade_manager.c$313$4_0$243	= .
	.globl	C$fade_manager.c$313$4_0$243
;src\core\fade_manager.c:313: return;
;	genRet
	ld	a, (#_fade_timer)
	jp	_ApplyPaletteChangeColor
; common peephole 87a removed unreachable jump to 00118$
;	genLabel
00113$:
	C$fade_manager.c$316$3_0$240	= .
	.globl	C$fade_manager.c$316$3_0$240
;src\core\fade_manager.c:316: ApplyPaletteChangeDMG(fade_timer);
;	genSend
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_fade_timer)
; common peephole 17 loaded a from (#_fade_timer) directly instead of using hl.
;	genCall
;	genLabel
; common peephole 158 removed unused label 00118$.
	C$fade_manager.c$319$1_0$238	= .
	.globl	C$fade_manager.c$319$1_0$238
;src\core\fade_manager.c:319: }
;	genEndFunction
	C$fade_manager.c$319$1_0$238	= .
	.globl	C$fade_manager.c$319$1_0$238
	XG$fade_update$0$0	= .
	.globl	XG$fade_update$0$0
	jp	_ApplyPaletteChangeDMG
; common peephole 152 removed unused ret.
	G$fade_applypalettechange$0$0	= .
	.globl	G$fade_applypalettechange$0$0
	C$fade_manager.c$321$1_0$245	= .
	.globl	C$fade_manager.c$321$1_0$245
;src\core\fade_manager.c:321: void fade_applypalettechange(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function fade_applypalettechange
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_fade_applypalettechange	= 255
_fade_applypalettechange::
	C$fade_manager.c$323$1_0$245	= .
	.globl	C$fade_manager.c$323$1_0$245
;src\core\fade_manager.c:323: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$fade_manager.c$324$2_0$246	= .
	.globl	C$fade_manager.c$324$2_0$246
;src\core\fade_manager.c:324: ApplyPaletteChangeColor(fade_timer);
;	genSend
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_fade_timer) directly instead of using hl.
;	genCall
	C$fade_manager.c$325$2_0$246	= .
	.globl	C$fade_manager.c$325$2_0$246
;src\core\fade_manager.c:325: return;
;	genRet
	ld	a, (#_fade_timer)
	jp	_ApplyPaletteChangeColor
; common peephole 87a removed unreachable jump to 00103$
;	genLabel
00102$:
	C$fade_manager.c$328$1_0$245	= .
	.globl	C$fade_manager.c$328$1_0$245
;src\core\fade_manager.c:328: ApplyPaletteChangeDMG(fade_timer);
;	genSend
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_fade_timer)
; common peephole 17 loaded a from (#_fade_timer) directly instead of using hl.
;	genCall
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$fade_manager.c$329$1_0$245	= .
	.globl	C$fade_manager.c$329$1_0$245
;src\core\fade_manager.c:329: }
;	genEndFunction
	C$fade_manager.c$329$1_0$245	= .
	.globl	C$fade_manager.c$329$1_0$245
	XG$fade_applypalettechange$0$0	= .
	.globl	XG$fade_applypalettechange$0$0
	jp	_ApplyPaletteChangeDMG
; common peephole 152 removed unused ret.
	G$fade_setspeed$0$0	= .
	.globl	G$fade_setspeed$0$0
	C$fade_manager.c$331$1_0$248	= .
	.globl	C$fade_manager.c$331$1_0$248
;src\core\fade_manager.c:331: void fade_setspeed(UBYTE speed) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function fade_setspeed
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_fade_setspeed	= 255
_fade_setspeed::
	C$fade_manager.c$332$1_0$248	= .
	.globl	C$fade_manager.c$332$1_0$248
;src\core\fade_manager.c:332: fade_frames_per_step = fade_speeds[speed];
;	genAddrOf
	ld	bc, #_fade_speeds+0
;	genPlus
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#6
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_fade_frames_per_step),a
; common peephole 19 loaded (#_fade_frames_per_step) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$fade_manager.c$333$1_0$248	= .
	.globl	C$fade_manager.c$333$1_0$248
;src\core\fade_manager.c:333: }
;	genEndFunction
	C$fade_manager.c$333$1_0$248	= .
	.globl	C$fade_manager.c$333$1_0$248
	XG$fade_setspeed$0$0	= .
	.globl	XG$fade_setspeed$0$0
	ret
	G$fade_in_modal$0$0	= .
	.globl	G$fade_in_modal$0$0
	C$fade_manager.c$335$1_0$250	= .
	.globl	C$fade_manager.c$335$1_0$250
;src\core\fade_manager.c:335: void fade_in_modal(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function fade_in_modal
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_fade_in_modal	= 255
_fade_in_modal::
	C$fade_manager.c$336$1_0$250	= .
	.globl	C$fade_manager.c$336$1_0$250
;src\core\fade_manager.c:336: fade_in();
;	genCall
	ld	e, #b_fade_in
	ld	hl, #_fade_in
	call	___sdcc_bcall_ehl
	C$fade_manager.c$337$1_0$250	= .
	.globl	C$fade_manager.c$337$1_0$250
;src\core\fade_manager.c:337: while (fade_isfading()) {
;	genLabel
00101$:
;	genIfx
;fetchLitPair	hl
	ld	a, (#_fade_running)
; common peephole 17 loaded a from (#_fade_running) directly instead of using hl.
	or	a, a
	ret	Z
; common peephole 161 replaced jump by return.
	C$fade_manager.c$338$2_0$251	= .
	.globl	C$fade_manager.c$338$2_0$251
;src\core\fade_manager.c:338: wait_vbl_done();
;	genCall
	call	_wait_vbl_done
	C$fade_manager.c$339$2_0$251	= .
	.globl	C$fade_manager.c$339$2_0$251
;src\core\fade_manager.c:339: fade_update();
;	genCall
	ld	e, #b_fade_update
	ld	hl, #_fade_update
	call	___sdcc_bcall_ehl
;	genGoto
;	genLabel
; common peephole 158 removed unused label 00105$.
	C$fade_manager.c$341$1_0$250	= .
	.globl	C$fade_manager.c$341$1_0$250
;src\core\fade_manager.c:341: }
;	genEndFunction
	C$fade_manager.c$341$1_0$250	= .
	.globl	C$fade_manager.c$341$1_0$250
	XG$fade_in_modal$0$0	= .
	.globl	XG$fade_in_modal$0$0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
; common peephole 152 removed unused ret.
	G$fade_out_modal$0$0	= .
	.globl	G$fade_out_modal$0$0
	C$fade_manager.c$343$1_0$256	= .
	.globl	C$fade_manager.c$343$1_0$256
;src\core\fade_manager.c:343: void fade_out_modal(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function fade_out_modal
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_fade_out_modal	= 255
_fade_out_modal::
	C$fade_manager.c$344$1_0$256	= .
	.globl	C$fade_manager.c$344$1_0$256
;src\core\fade_manager.c:344: fade_out();
;	genCall
	ld	e, #b_fade_out
	ld	hl, #_fade_out
	call	___sdcc_bcall_ehl
	C$fade_manager.c$345$1_0$256	= .
	.globl	C$fade_manager.c$345$1_0$256
;src\core\fade_manager.c:345: while (fade_isfading()) {
;	genLabel
00101$:
;	genIfx
;fetchLitPair	hl
	ld	a, (#_fade_running)
; common peephole 17 loaded a from (#_fade_running) directly instead of using hl.
	or	a, a
	ret	Z
; common peephole 161 replaced jump by return.
	C$fade_manager.c$346$2_0$257	= .
	.globl	C$fade_manager.c$346$2_0$257
;src\core\fade_manager.c:346: wait_vbl_done();
;	genCall
	call	_wait_vbl_done
	C$fade_manager.c$347$2_0$257	= .
	.globl	C$fade_manager.c$347$2_0$257
;src\core\fade_manager.c:347: fade_update();
;	genCall
	ld	e, #b_fade_update
	ld	hl, #_fade_update
	call	___sdcc_bcall_ehl
;	genGoto
;	genLabel
; common peephole 158 removed unused label 00105$.
	C$fade_manager.c$349$1_0$256	= .
	.globl	C$fade_manager.c$349$1_0$256
;src\core\fade_manager.c:349: }
;	genEndFunction
	C$fade_manager.c$349$1_0$256	= .
	.globl	C$fade_manager.c$349$1_0$256
	XG$fade_out_modal$0$0	= .
	.globl	XG$fade_out_modal$0$0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
; common peephole 152 removed unused ret.
	.area _CODE_255
	.area _INITIALIZER
Ffade_manager$__xinit_fade_style$0_0$0 == .
__xinit__fade_style:
	.db #0x00	; 0
	.area _CABS (ABS)
