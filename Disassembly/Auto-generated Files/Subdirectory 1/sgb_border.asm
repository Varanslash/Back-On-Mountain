;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sgb_border
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SetBankedBkgData
	.globl _memset
	.globl _sgb_transfer
	.globl _fill_bkg_rect
	.globl _set_bkg_tiles
	.globl _set_bkg_data
	.globl b_set_sgb_border
	.globl _set_sgb_border
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
	G$set_sgb_border$0$0	= .
	.globl	G$set_sgb_border$0$0
	C$sgb_border.c$18$0_0$160	= .
	.globl	C$sgb_border.c$18$0_0$160
;src\core\sgb_border.c:18: void set_sgb_border(unsigned char * tiledata, size_t tiledata_size, UBYTE tiledata_bank,
;	genLabel
;	genFunction
;	---------------------------------
; Function set_sgb_border
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 20 bytes.
	b_set_sgb_border	= 255
_set_sgb_border::
;	adjustStack by -20
	add	sp, #-20
	C$sgb_border.c$22$1_0$160	= .
	.globl	C$sgb_border.c$22$1_0$160
;src\core\sgb_border.c:22: memset(map_buf, 0, sizeof(map_buf));
;	genAddrOf
	ldhl	sp,	#0
	ld	c, l
	ld	b, h
;	genCast
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0014
	push	hl
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	l, h
	push	hl
;	genIpush
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
	C$sgb_border.c$24$1_0$160	= .
	.globl	C$sgb_border.c$24$1_0$160
;src\core\sgb_border.c:24: SGB_TRANSFER((SGB_MASK_EN << 3) | 1, SGB_SCR_FREEZE); 
;	genAssign (pointer)
	ld	a, #0xb9
	ld	(bc), a
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;	genMove_o size 1
	ldhl	sp,	#1
	ld	(hl), #0x01
;	genAssign
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genIpush
	push	bc
;	genCall
;	adjustStack by 2
	call	_sgb_transfer
; peephole sp10c increased SP by 2 through pop
	pop	hl
	C$sgb_border.c$26$1_0$160	= .
	.globl	C$sgb_border.c$26$1_0$160
;src\core\sgb_border.c:26: BGP_REG = OBP0_REG = OBP1_REG = 0xE4U;
;	genAssign
	ld	a, #0xe4
	ldh	(_OBP1_REG + 0), a
;	genAssign
	ld	a, #0xe4
	ldh	(_OBP0_REG + 0), a
;	genAssign
	ld	a, #0xe4
	ldh	(_BGP_REG + 0), a
	C$sgb_border.c$27$1_0$160	= .
	.globl	C$sgb_border.c$27$1_0$160
;src\core\sgb_border.c:27: SCX_REG = SCY_REG = 0U;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_SCY_REG + 0), a
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_SCX_REG + 0), a
	C$sgb_border.c$29$2_0$161	= .
	.globl	C$sgb_border.c$29$2_0$161
;src\core\sgb_border.c:29: UBYTE tmp_lcdc = LCDC_REG;
;	genAssign
	ldh	a, (_LCDC_REG + 0)
	ld	c, a
	C$sgb_border.c$31$1_1$161	= .
	.globl	C$sgb_border.c$31$1_1$161
;src\core\sgb_border.c:31: HIDE_SPRITES, HIDE_WIN, SHOW_BKG;
;	genAnd
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
;	genAnd
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xdf
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
;	genOr
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x01
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
	C$sgb_border.c$32$1_1$161	= .
	.globl	C$sgb_border.c$32$1_1$161
;src\core\sgb_border.c:32: DISPLAY_ON;
;	genOr
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x80
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
	C$sgb_border.c$34$2_1$162	= .
	.globl	C$sgb_border.c$34$2_1$162
;src\core\sgb_border.c:34: UBYTE i = 0U;
;	genAssign
;	genMove_o size 1
	C$sgb_border.c$35$4_2$164	= .
	.globl	C$sgb_border.c$35$4_2$164
;src\core\sgb_border.c:35: for (UBYTE y = 0; y != 14U; ++y) {
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1
; common peephole 103b loaded constant in e first and used it next
	ld	e, #0x00
	ld	b, e
;	genLabel
00113$:
;	genCmpEq
	ld	a, b
	sub	a, #0x0e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00163$.
;	skipping generated iCode
	C$sgb_border.c$36$4_2$164	= .
	.globl	C$sgb_border.c$36$4_2$164
;src\core\sgb_border.c:36: UBYTE * dout = map_buf;
;	genCast
;	genMove_o size 2
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2
	C$sgb_border.c$37$1_3$160	= .
	.globl	C$sgb_border.c$37$1_3$160
;src\core\sgb_border.c:37: for (UBYTE x = 0U; x != 20U; ++x) {
;	genAssign
;	(locations are the same)
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genLabel
00110$:
;	genCmpEq
	cp	a, #0x14
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00126$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00164$.
;	skipping generated iCode
	C$sgb_border.c$38$5_2$166	= .
	.globl	C$sgb_border.c$38$5_2$166
;src\core\sgb_border.c:38: *dout++ = i++;
;	genAssign (pointer)
	ld	(hl), e
;	genPlus
;	genPlus
; common peephole 96c move inc hl before inc e
	inc	hl
	inc	e
	C$sgb_border.c$37$4_2$165	= .
	.globl	C$sgb_border.c$37$4_2$165
;src\core\sgb_border.c:37: for (UBYTE x = 0U; x != 20U; ++x) {
;	genPlus
	inc	a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00126$:
;	genAssign
;	(locations are the same)
	C$sgb_border.c$40$3_2$164	= .
	.globl	C$sgb_border.c$40$3_2$164
;src\core\sgb_border.c:40: set_bkg_tiles(0, y, 20, 1, map_buf);
;	skipping iCode since result will be rematerialized
;	genIpush
	push	de
;	genMove_o size 2
	ld	hl, #2
	add	hl, sp
;	genMove_o size 2
	push	hl
;	genIpush
;	genMove_o size 1
;	genIpush
;	genMove_o size 1
; common peephole 37a pushed hl instead of pushing a twice.
; common peephole 1 removed dead load from #0x01 into a.
	ld	hl, #0x114
; common peephole 93d combined constant loads into register pair.
	push	hl
;	genIpush
	push	bc
	inc	sp
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genCall
	call	_set_bkg_tiles
;	adjustStack by 6
	add	sp, #6
	pop	de
	C$sgb_border.c$35$2_2$163	= .
	.globl	C$sgb_border.c$35$2_2$163
;src\core\sgb_border.c:35: for (UBYTE y = 0; y != 14U; ++y) {
;	genPlus
	inc	b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00102$:
	C$sgb_border.c$42$1_2$162	= .
	.globl	C$sgb_border.c$42$1_2$162
;src\core\sgb_border.c:42: memset(map_buf, 0, sizeof(map_buf));
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0014
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
	push	hl
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
	C$sgb_border.c$45$1_3$167	= .
	.globl	C$sgb_border.c$45$1_3$167
;src\core\sgb_border.c:45: UBYTE ntiles = (tiledata_size > 256 * 32) ? 0 : tiledata_size >> 5;
;	genCmpGt
;	AOP_STK for 
	ldhl	sp,	#28
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	sub	a, (hl)
	inc	hl
	ld	a, #0x20
	sbc	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00117$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	b, #0x00
; common peephole 1 removed dead load from #0x00 into e.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00118$
;	genLabel
00117$:
;	genRightShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#28
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	srl	e
	rr	b
	srl	e
	rr	b
	srl	e
	rr	b
	srl	e
	rr	b
	srl	e
	rr	b
;	genLabel
00118$:
;	genCast
;	genMove_o size 1
	C$sgb_border.c$46$1_3$167	= .
	.globl	C$sgb_border.c$46$1_3$167
;src\core\sgb_border.c:46: if ((!ntiles) || (ntiles > 128U)) { 
;	genIfx
	ld	a, b
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	genCmpGt
	ld	a, #0x80
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00106$
;	skipping generated iCode
;	genLabel
00105$:
	C$sgb_border.c$47$2_3$168	= .
	.globl	C$sgb_border.c$47$2_3$168
;src\core\sgb_border.c:47: SetBankedBkgData(0, 0, tiledata, tiledata_bank); 
;	genIpush
	push	bc
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#32
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#29
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genIpush
;	genMove_o size 1
;	genIpush
;	genMove_o size 1
; sm83 peephole 17a pushed double `xor a` fast
	xor	a, a
	rrca
	push	af
; common peephole 6b removed dead xor a, a
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
	add	sp, #5
	pop	bc
	C$sgb_border.c$48$2_3$168	= .
	.globl	C$sgb_border.c$48$2_3$168
;src\core\sgb_border.c:48: SGB_TRANSFER((SGB_CHR_TRN << 3) | 1, SGB_CHR_BLOCK0);
;	genAddrOf
	ldhl	sp,	#0
;	genAssign (pointer)
	ld	e, l
	ld	d, h
	ld	(hl), #0x99
; common peephole 25a loaded #e into (hl) instead of (de).
;	genPlus
;	genMove_o size 2
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genAssign (pointer)
	ld	(hl), #0x00
;	genAssign
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genIpush
	push	de
;	genCall
;	adjustStack by 2
	call	_sgb_transfer
; peephole sp10c increased SP by 2 through pop
	pop	hl
	C$sgb_border.c$49$2_3$168	= .
	.globl	C$sgb_border.c$49$2_3$168
;src\core\sgb_border.c:49: if (ntiles) ntiles -= 128U; 
;	genIfx
	ld	a, b
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
;	genMinus
	ld	a, b
	add	a, #0x80
	ld	b, a
;	genLabel
00104$:
	C$sgb_border.c$50$2_3$168	= .
	.globl	C$sgb_border.c$50$2_3$168
;src\core\sgb_border.c:50: tiledata += (128 * 32);
;	genPlus
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#26
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x1000
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#28
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#27
	ld	(hl), a
;	genMove_o size 0
	C$sgb_border.c$51$2_3$168	= .
	.globl	C$sgb_border.c$51$2_3$168
;src\core\sgb_border.c:51: SetBankedBkgData(0, ntiles << 1, tiledata, tiledata_bank); 
;	genCast
;	genMove_o size 1
	ld	a, b
;	genMove_o size 0
;	genLeftShift
	add	a, a
;	genIpush
	push	bc
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#32
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#29
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genIpush
;	genIpush
;	genMove_o size 1
; common peephole 37b pushed hl instead of pushing a twice.
	ld	h, a
	ld	l, #0x00
	push	hl
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
	add	sp, #5
	pop	bc
	C$sgb_border.c$52$2_3$168	= .
	.globl	C$sgb_border.c$52$2_3$168
;src\core\sgb_border.c:52: SGB_TRANSFER((SGB_CHR_TRN << 3) | 1, SGB_CHR_BLOCK1);
;	genAddrOf
	ldhl	sp,	#0
;	genAssign (pointer)
	ld	e, l
	ld	d, h
	ld	(hl), #0x99
; common peephole 25a loaded #e into (hl) instead of (de).
;	genPlus
;	genMove_o size 2
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genAssign (pointer)
	ld	(hl), #0x01
;	genAssign
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genIpush
	push	de
;	genCall
;	adjustStack by 2
	call	_sgb_transfer
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00106$:
	C$sgb_border.c$54$2_3$169	= .
	.globl	C$sgb_border.c$54$2_3$169
;src\core\sgb_border.c:54: SetBankedBkgData(0, ntiles << 1, tiledata, tiledata_bank); 
;	genCast
;	(locations are the same)
;	genLeftShift
	ld	a, b
	add	a, a
;	genIpush
	push	bc
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#32
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#29
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genIpush
;	genIpush
;	genMove_o size 1
; common peephole 37b pushed hl instead of pushing a twice.
	ld	h, a
	ld	l, #0x00
	push	hl
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
	add	sp, #5
	pop	bc
	C$sgb_border.c$55$2_3$169	= .
	.globl	C$sgb_border.c$55$2_3$169
;src\core\sgb_border.c:55: SGB_TRANSFER((SGB_CHR_TRN << 3) | 1, SGB_CHR_BLOCK0);
;	genAddrOf
	ldhl	sp,	#0
;	genAssign (pointer)
	ld	e, l
	ld	d, h
	ld	(hl), #0x99
; common peephole 25a loaded #e into (hl) instead of (de).
;	genPlus
;	genMove_o size 2
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
;	genAssign (pointer)
	ld	(hl), #0x00
;	genAssign
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genIpush
	push	de
;	genCall
;	adjustStack by 2
	call	_sgb_transfer
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genLabel
00107$:
	C$sgb_border.c$59$1_3$167	= .
	.globl	C$sgb_border.c$59$1_3$167
;src\core\sgb_border.c:59: SetBankedBkgData(0, (UBYTE)(tilemap_size >> 4), tilemap, tilemap_bank);
;	genRightShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#33
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96d move inc hl before push (bc)
; common peephole 96c move inc hl before rr b
; common peephole 96c move inc hl before srl e
; common peephole 96c move inc hl before rr b
; common peephole 96c move inc hl before srl e
; common peephole 96c move inc hl before rr b
; common peephole 96c move inc hl before srl e
; common peephole 96c move inc hl before rr b
; common peephole 96c move inc hl before srl e
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	srl	e
	rr	b
	srl	e
	rr	b
	srl	e
	rr	b
	srl	e
	rr	b
	push	bc
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#34
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genIpush
	push	bc
	inc	sp
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
	add	sp, #5
	pop	bc
	C$sgb_border.c$60$1_3$167	= .
	.globl	C$sgb_border.c$60$1_3$167
;src\core\sgb_border.c:60: SetBankedBkgData(128, (UBYTE)(palette_size >> 4), palette, palette_bank);
;	genRightShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#38
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96d move inc hl before push (bc)
; common peephole 96c move inc hl before rr b
; common peephole 96c move inc hl before srl e
; common peephole 96c move inc hl before rr b
; common peephole 96c move inc hl before srl e
; common peephole 96c move inc hl before rr b
; common peephole 96c move inc hl before srl e
; common peephole 96c move inc hl before rr b
; common peephole 96c move inc hl before srl e
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	srl	e
	rr	b
	srl	e
	rr	b
	srl	e
	rr	b
	srl	e
	rr	b
	push	bc
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#39
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genIpush
;	genIpush
;	genMove_o size 1
	ld	c, #0x80
; common peephole 43 combined pushing of b and #0x80.
	push	bc
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
	add	sp, #5
	pop	bc
	C$sgb_border.c$61$1_3$167	= .
	.globl	C$sgb_border.c$61$1_3$167
;src\core\sgb_border.c:61: SGB_TRANSFER((SGB_PCT_TRN << 3) | 1, 0);
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;	genMove_o size 1
	ldhl	sp,	#0
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;	genMove_o size 1
	ld	a, #0xa1
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x00
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2
;	genIpush
	push	hl
;	genCall
;	adjustStack by 2
	call	_sgb_transfer
; peephole sp10c increased SP by 2 through pop
	pop	hl
	C$sgb_border.c$63$1_3$167	= .
	.globl	C$sgb_border.c$63$1_3$167
;src\core\sgb_border.c:63: LCDC_REG = tmp_lcdc;
;	genAssign
	ld	a, c
	ldh	(_LCDC_REG + 0), a
	C$sgb_border.c$66$1_3$167	= .
	.globl	C$sgb_border.c$66$1_3$167
;src\core\sgb_border.c:66: memset(map_buf, 0, 16);
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0010
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
	push	hl
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
	C$sgb_border.c$67$1_3$167	= .
	.globl	C$sgb_border.c$67$1_3$167
;src\core\sgb_border.c:67: set_bkg_data(0, 1, map_buf);
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2
;	genIpush
	push	hl
;	genIpush
;	genMove_o size 1
;	genIpush
;	genMove_o size 1
; common peephole 37b pushed hl instead of pushing a twice.
; common peephole 1 removed dead load from #0x01 into a.
; common peephole 93d combined constant loads into register pair.
; sm83 peephole 18f pushed #0x100 faster
	xor	a, a
	inc	a
	push	af
;	genCall
	call	_set_bkg_data
;	adjustStack by 4
	add	sp, #4
	C$sgb_border.c$68$1_3$167	= .
	.globl	C$sgb_border.c$68$1_3$167
;src\core\sgb_border.c:68: fill_bkg_rect(0, 0, 20, 18, 0);
;	genIpush
;	genMove_o size 1
	xor	a, a
;	genIpush
;	genMove_o size 1
; common peephole 37a pushed hl instead of pushing a twice.
	ld	h, a
	ld	l, #0x12
	push	hl
;	genIpush
;	genMove_o size 1
	ld	a, #0x14
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
;	genIpush
;	genMove_o size 1
; sm83 peephole 17a pushed double `xor a` fast
	xor	a, a
	rrca
	push	af
; common peephole 6b removed dead xor a, a
;	genCall
	call	_fill_bkg_rect
;	adjustStack by 5
	add	sp, #5
	C$sgb_border.c$70$1_3$167	= .
	.globl	C$sgb_border.c$70$1_3$167
;src\core\sgb_border.c:70: SGB_TRANSFER((SGB_MASK_EN << 3) | 1, SGB_SCR_UNFREEZE); 
;	genAssign (pointer)
;	genMove_o size 1
	ldhl	sp,	#0
;	genAssign (pointer)
;	genMove_o size 1
	ld	a, #0xb9
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x00
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2
;	genIpush
	push	hl
;	genCall
;	adjustStack by 2
	call	_sgb_transfer
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genLabel
; common peephole 158 removed unused label 00115$.
	C$sgb_border.c$71$1_3$160	= .
	.globl	C$sgb_border.c$71$1_3$160
;src\core\sgb_border.c:71: }
;	genEndFunction
;	adjustStack by 20
	add	sp, #20
	C$sgb_border.c$71$1_3$160	= .
	.globl	C$sgb_border.c$71$1_3$160
	XG$set_sgb_border$0$0	= .
	.globl	XG$set_sgb_border$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
