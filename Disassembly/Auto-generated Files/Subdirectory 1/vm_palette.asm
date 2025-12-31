;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm_palette
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_VM_PALETTE
	.globl ___func_VM_PALETTE
	.globl _MemcpyBanked
	.globl _ReadBankedUWORD
	.globl _set_sprite_palette
	.globl _set_bkg_palette
	.globl b_vm_load_palette
	.globl _vm_load_palette
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
	G$__func_VM_PALETTE$0$0	= .
	.globl	G$__func_VM_PALETTE$0$0
	C$vm_palette.c$12$0_0$255	= .
	.globl	C$vm_palette.c$12$0_0$255
;src\core\vm_palette.c:12: BANKREF(VM_PALETTE)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_VM_PALETTE
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_VM_PALETTE	= 255
___func_VM_PALETTE::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_VM_PALETTE 
	___bank_VM_PALETTE = b___func_VM_PALETTE 
	.globl ___bank_VM_PALETTE 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	G$vm_load_palette$0$0	= .
	.globl	G$vm_load_palette$0$0
	C$vm_palette.c$14$1_0$257	= .
	.globl	C$vm_palette.c$14$1_0$257
;src\core\vm_palette.c:14: void vm_load_palette(SCRIPT_CTX * THIS, UBYTE mask, UBYTE options) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_load_palette
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 10 bytes.
	b_vm_load_palette	= 255
_vm_load_palette::
;	adjustStack by -10
	add	sp, #-10
	C$vm_palette.c$15$1_0$257	= .
	.globl	C$vm_palette.c$15$1_0$257
;src\core\vm_palette.c:15: UBYTE bank = THIS->bank;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	inc	de
	inc	de
;	genPointerGet
;	AOP_STK for _vm_load_palette_sloc0_1_0
	ld	a, (de)
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), a
;	genMove_o size 0
	C$vm_palette.c$19$1_0$257	= .
	.globl	C$vm_palette.c$19$1_0$257
;src\core\vm_palette.c:19: UBYTE is_commit = (options & PALETTE_COMMIT), is_bkg = (options & PALETTE_BKG), is_spr = (options & PALETTE_SPRITE);
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#19
	ld	e, (hl)
;	genMove_o size 0
;	genAnd
;	AOP_STK for _vm_load_palette_sloc1_1_0
	ld	a, e
	and	a, #0x01
;	genMove_o size 1
	ldhl	sp,	#1
;	genMove_o size 0
;	genAnd
;	AOP_STK for _vm_load_palette_sloc2_1_0
;	genMove_o size 1
; common peephole 96b move inc hl before and a, #0x02
; common peephole 96b move inc hl before ld a, e
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, e
	and	a, #0x02
;	genMove_o size 0
;	genAnd
;	AOP_STK for _vm_load_palette_sloc3_1_0
;	genMove_o size 1
; common peephole 96b move inc hl before and a, #0x04
; common peephole 96b move inc hl before ld a, e
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, e
	and	a, #0x04
	ld	(hl), a
;	genMove_o size 0
	C$vm_palette.c$20$1_0$257	= .
	.globl	C$vm_palette.c$20$1_0$257
;src\core\vm_palette.c:20: const palette_entry_t * sour = (const palette_entry_t *)THIS->PC;
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	a, (hl)
;	genCast
;	AOP_STK for _vm_load_palette_sloc4_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$vm_palette.c$21$1_0$257	= .
	.globl	C$vm_palette.c$21$1_0$257
;src\core\vm_palette.c:21: palette_entry_t * dest = (is_bkg) ? BkgPalette : SprPalette;
;	genIfx
;	AOP_STK for _vm_load_palette_sloc2_1_0
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00138$
;	genAddrOf
	ld	bc, #_BkgPalette+0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00139$
;	genLabel
00138$:
;	genAddrOf
	ld	bc, #_SprPalette+0
;	genLabel
00139$:
;	genCast
;	AOP_STK for _vm_load_palette_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
	C$vm_palette.c$22$3_0$258	= .
	.globl	C$vm_palette.c$22$3_0$258
;src\core\vm_palette.c:22: for (UBYTE i = mask, nb = 0; (i != 0); dest++, nb++, i >>= 1) {
;	genAssign
;	AOP_STK for 
;	AOP_STK for _vm_load_palette_sloc6_1_0
;	genMove_o size 1
	ldhl	sp,	#18
	ld	a, (hl)
	ldhl	sp,	#8
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genAssign
;	AOP_STK for _vm_load_palette_sloc7_1_0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genLabel
00135$:
;	genIfx
;	AOP_STK for _vm_load_palette_sloc6_1_0
	ldhl	sp,	#8
	ld	a, (hl)
	or	a, a
	jp	Z, 00131$
	C$vm_palette.c$23$3_0$259	= .
	.globl	C$vm_palette.c$23$3_0$259
;src\core\vm_palette.c:23: if ((i & 1) == 0) continue;
;	genAnd
;	AOP_STK for _vm_load_palette_sloc6_1_0
	push	hl
	bit	0, (hl)
	pop	hl
	jp	Z,00130$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00260$.
;	skipping generated iCode
	C$vm_palette.c$24$3_0$259	= .
	.globl	C$vm_palette.c$24$3_0$259
;src\core\vm_palette.c:24: if ((_is_CGB) || (nb > 1)) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00118$
;	genCmpGt
;	AOP_STK for _vm_load_palette_sloc7_1_0
	ld	a, #0x01
	ldhl	sp,	#9
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00119$
;	skipping generated iCode
;	genLabel
00118$:
	C$vm_palette.c$25$4_0$260	= .
	.globl	C$vm_palette.c$25$4_0$260
;src\core\vm_palette.c:25: MemcpyBanked(dest, sour, sizeof(palette_entry_t), bank);
;	genCast
;	AOP_STK for _vm_load_palette_sloc4_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_load_palette_sloc5_1_0
;	genMove_o size 2
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_load_palette_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0008
	push	hl
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	_MemcpyBanked
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00120$
;	genLabel
00119$:
	C$vm_palette.c$28$4_0$261	= .
	.globl	C$vm_palette.c$28$4_0$261
;src\core\vm_palette.c:28: switch (nb) {
;	genCmpEq
;	AOP_STK for _vm_load_palette_sloc7_1_0
	ldhl	sp,	#9
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00261$.
;	skipping generated iCode
;	genCmpEq
;	AOP_STK for _vm_load_palette_sloc7_1_0
	ldhl	sp,	#9
	ld	a, (hl)
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00112$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00262$.
;	skipping generated iCode
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00120$
	C$vm_palette.c$29$5_0$262	= .
	.globl	C$vm_palette.c$29$5_0$262
;src\core\vm_palette.c:29: case 0:
;	genLabel
00103$:
;src\core\vm_palette.c:30: DMGPal = ReadBankedUBYTE((void *)sour, bank);
;	genCast
;	AOP_STK for _vm_load_palette_sloc4_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCast
;	(locations are the same)
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _vm_load_palette_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
	C$vm_palette.c$31$5_0$262	= .
	.globl	C$vm_palette.c$31$5_0$262
;src\core\vm_palette.c:31: if (is_bkg) {
;	genIfx
;	AOP_STK for _vm_load_palette_sloc2_1_0
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
	C$vm_palette.c$32$6_0$263	= .
	.globl	C$vm_palette.c$32$6_0$263
;src\core\vm_palette.c:32: DMG_palette[0] = DMGPal;
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_DMG_palette
	ld	(hl), c
	C$vm_palette.c$33$6_0$263	= .
	.globl	C$vm_palette.c$33$6_0$263
;src\core\vm_palette.c:33: if (is_commit) BGP_REG = DMGPal;
;	genIfx
;	AOP_STK for _vm_load_palette_sloc1_1_0
	ldhl	sp,	#1
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
;	genAssign
	ld	a, c
	ldh	(_BGP_REG + 0), a
;	genLabel
00107$:
	C$vm_palette.c$35$5_0$262	= .
	.globl	C$vm_palette.c$35$5_0$262
;src\core\vm_palette.c:35: if (is_spr) {
;	genIfx
;	AOP_STK for _vm_load_palette_sloc3_1_0
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00120$
	C$vm_palette.c$36$6_0$264	= .
	.globl	C$vm_palette.c$36$6_0$264
;src\core\vm_palette.c:36: DMG_palette[1] = DMGPal;
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_DMG_palette + 1)
	ld	(hl), c
	C$vm_palette.c$37$6_0$264	= .
	.globl	C$vm_palette.c$37$6_0$264
;src\core\vm_palette.c:37: if (is_commit) OBP0_REG = DMGPal;
;	genIfx
;	AOP_STK for _vm_load_palette_sloc1_1_0
	ldhl	sp,	#1
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00120$
;	genAssign
	ld	a, c
	ldh	(_OBP0_REG + 0), a
	C$vm_palette.c$39$5_0$262	= .
	.globl	C$vm_palette.c$39$5_0$262
;src\core\vm_palette.c:39: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00120$
	C$vm_palette.c$40$5_0$262	= .
	.globl	C$vm_palette.c$40$5_0$262
;src\core\vm_palette.c:40: case 1:
;	genLabel
00112$:
	C$vm_palette.c$41$5_0$262	= .
	.globl	C$vm_palette.c$41$5_0$262
;src\core\vm_palette.c:41: if (is_spr) {
;	genIfx
;	AOP_STK for _vm_load_palette_sloc3_1_0
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00120$
;src\core\vm_palette.c:42: DMGPal = ReadBankedUBYTE((void *)sour, bank);
;	genCast
;	AOP_STK for _vm_load_palette_sloc4_1_0
;	genMove_o size 2
	inc	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genCast
;	(locations are the same)
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	AOP_STK for _vm_load_palette_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
	C$vm_palette.c$42$8_0$272	= .
	.globl	C$vm_palette.c$42$8_0$272
;src\core\vm_palette.c:42: DMGPal = ReadBankedUBYTE((void *)sour, bank);
;	genAssign
;	genMove_o size 1
	ld	b, c
;	genMove_o size 0
	C$vm_palette.c$43$6_0$265	= .
	.globl	C$vm_palette.c$43$6_0$265
;src\core\vm_palette.c:43: DMG_palette[2] = DMGPal;
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_DMG_palette + 2)
	ld	(hl), c
	C$vm_palette.c$44$6_0$265	= .
	.globl	C$vm_palette.c$44$6_0$265
;src\core\vm_palette.c:44: if (is_commit) OBP1_REG = DMGPal;
;	genIfx
;	AOP_STK for _vm_load_palette_sloc1_1_0
	ldhl	sp,	#1
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00120$
;	genAssign
	ld	a, b
	ldh	(_OBP1_REG + 0), a
	C$vm_palette.c$47$3_0$259	= .
	.globl	C$vm_palette.c$47$3_0$259
;src\core\vm_palette.c:47: }
;	genLabel
00120$:
	C$vm_palette.c$49$3_0$259	= .
	.globl	C$vm_palette.c$49$3_0$259
;src\core\vm_palette.c:49: if (is_commit) {
;	genIfx
;	AOP_STK for _vm_load_palette_sloc1_1_0
	ldhl	sp,	#1
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00129$
	C$vm_palette.c$51$4_0$266	= .
	.globl	C$vm_palette.c$51$4_0$266
;src\core\vm_palette.c:51: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00129$
	C$vm_palette.c$52$5_0$267	= .
	.globl	C$vm_palette.c$52$5_0$267
;src\core\vm_palette.c:52: if (is_bkg) set_bkg_palette(nb, 1, (void *)dest);
;	genIfx
;	AOP_STK for _vm_load_palette_sloc2_1_0
	ldhl	sp,	#2
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00123$
;	genCast
;	AOP_STK for _vm_load_palette_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genIpush
;	genIpush
;	genMove_o size 1
;	genIpush
;	AOP_STK for _vm_load_palette_sloc7_1_0
;	genMove_o size 1
; common peephole 96c move inc hl before inc sp
; common peephole 96d move inc hl before push (af)
; common peephole 96b move inc hl before ld a, #0x01
; common peephole 96d move inc hl before push (bc)
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96c move inc hl before inc sp
; common peephole 96d move inc hl before push (af)
; common peephole 96b move inc hl before ld a, #0x01
; common peephole 96d move inc hl before push (bc)
; common peephole 96b move inc hl before ld b, a
	inc	hl
	ld	b, a
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	call	_set_bkg_palette
;	adjustStack by 4
	add	sp, #4
;	genLabel
00123$:
	C$vm_palette.c$53$5_0$267	= .
	.globl	C$vm_palette.c$53$5_0$267
;src\core\vm_palette.c:53: if (is_spr) set_sprite_palette(nb, 1, (void *)dest);
;	genIfx
;	AOP_STK for _vm_load_palette_sloc3_1_0
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00125$
;	genCast
;	AOP_STK for _vm_load_palette_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genIpush
;	genIpush
;	genMove_o size 1
;	genIpush
;	AOP_STK for _vm_load_palette_sloc7_1_0
;	genMove_o size 1
; common peephole 96c move inc hl before inc sp
; common peephole 96d move inc hl before push (af)
; common peephole 96b move inc hl before ld a, #0x01
; common peephole 96d move inc hl before push (bc)
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96c move inc hl before inc sp
; common peephole 96d move inc hl before push (af)
; common peephole 96b move inc hl before ld a, #0x01
; common peephole 96d move inc hl before push (bc)
; common peephole 96b move inc hl before ld b, a
	inc	hl
	ld	b, a
	push	bc
	ld	a, #0x01
	push	af
	inc	sp
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	call	_set_sprite_palette
;	adjustStack by 4
	add	sp, #4
;	genLabel
00125$:
	C$vm_palette.c$54$5_0$267	= .
	.globl	C$vm_palette.c$54$5_0$267
;src\core\vm_palette.c:54: sour++;
;	genPlus
;	AOP_STK for _vm_load_palette_sloc4_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
;	genMove_o size 0
	C$vm_palette.c$55$5_0$267	= .
	.globl	C$vm_palette.c$55$5_0$267
;src\core\vm_palette.c:55: continue;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00130$
;	genLabel
00129$:
	C$vm_palette.c$65$3_0$259	= .
	.globl	C$vm_palette.c$65$3_0$259
;src\core\vm_palette.c:65: sour++;
;	genPlus
;	AOP_STK for _vm_load_palette_sloc4_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#6
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#5
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00130$:
	C$vm_palette.c$22$2_0$258	= .
	.globl	C$vm_palette.c$22$2_0$258
;src\core\vm_palette.c:22: for (UBYTE i = mask, nb = 0; (i != 0); dest++, nb++, i >>= 1) {
;	genPlus
;	AOP_STK for _vm_load_palette_sloc5_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_load_palette_sloc7_1_0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	inc	hl
	inc	(hl)
;	genRightShift
;	AOP_STK for _vm_load_palette_sloc6_1_0
	dec	hl
	ld	a, (hl)
	srl	a
	ld	(hl), a
;	genGoto
	jp	00135$
;	genLabel
00131$:
	C$vm_palette.c$70$1_0$257	= .
	.globl	C$vm_palette.c$70$1_0$257
;src\core\vm_palette.c:70: THIS->PC = (UBYTE *)sour;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_load_palette_sloc4_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00136$.
	C$vm_palette.c$71$1_0$257	= .
	.globl	C$vm_palette.c$71$1_0$257
;src\core\vm_palette.c:71: }
;	genEndFunction
;	adjustStack by 10
	add	sp, #10
	C$vm_palette.c$71$1_0$257	= .
	.globl	C$vm_palette.c$71$1_0$257
	XG$vm_load_palette$0$0	= .
	.globl	XG$vm_load_palette$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
