;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module bankdata
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _memcpy
	.globl _set_data
	.globl _SetBankedBkgData
	.globl _SetBankedSpriteData
	.globl _SetBankedBkgTiles
	.globl _SetBankedWinTiles
	.globl _ReadBankedFarPtr
	.globl _ReadBankedUWORD
	.globl _MemcpyBanked
	.globl _MemcpyVRAMBanked
	.globl _IndexOfFarPtr
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
Fbankdata$_save$0_0$0==.
__save:
	.ds 1
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
	G$SetBankedBkgData$0$0	= .
	.globl	G$SetBankedBkgData$0$0
	C$bankdata.c$10$0_0$170	= .
	.globl	C$bankdata.c$10$0_0$170
;src\core\bankdata.c:10: void SetBankedBkgData(UBYTE i, UBYTE l, const unsigned char* ptr, UBYTE bank) OLDCALL NONBANKED NAKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function SetBankedBkgData
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_SetBankedBkgData::
; naked function: no prologue.
	C$bankdata.c$30$1_0$170	= .
	.globl	C$bankdata.c$30$1_0$170
;src\core\bankdata.c:30: __endasm;
;	genInline
;	genInline
	ldh	a, (__current_bank)
	ld	(#__save), a
	ldhl	sp, #6
	ld	a, (hl)
	ldh	(__current_bank), a
	ld	(_rROMB0), a
	pop	bc
	call	_set_bkg_data ; preserves BC
	ld	a, (#__save)
	ldh	(__current_bank), a
	ld	(_rROMB0), a
	ld	h, b
	ld	l, c
	jp	(hl)
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$bankdata.c$31$1_0$170	= .
	.globl	C$bankdata.c$31$1_0$170
;src\core\bankdata.c:31: }
;	genEndFunction
; naked function: No epilogue.
	G$SetBankedSpriteData$0$0	= .
	.globl	G$SetBankedSpriteData$0$0
	C$bankdata.c$33$1_0$172	= .
	.globl	C$bankdata.c$33$1_0$172
;src\core\bankdata.c:33: void SetBankedSpriteData(UBYTE i, UBYTE l, const unsigned char* ptr, UBYTE bank) OLDCALL NONBANKED NAKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function SetBankedSpriteData
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_SetBankedSpriteData::
; naked function: no prologue.
	C$bankdata.c$53$1_0$172	= .
	.globl	C$bankdata.c$53$1_0$172
;src\core\bankdata.c:53: __endasm;
;	genInline
;	genInline
	ldh	a, (__current_bank)
	ld	(#__save), a
	ldhl	sp, #6
	ld	a, (hl)
	ldh	(__current_bank), a
	ld	(_rROMB0), a
	pop	bc
	call	_set_sprite_data ; preserves BC
	ld	a, (#__save)
	ldh	(__current_bank), a
	ld	(_rROMB0), a
	ld	h, b
	ld	l, c
	jp	(hl)
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$bankdata.c$54$1_0$172	= .
	.globl	C$bankdata.c$54$1_0$172
;src\core\bankdata.c:54: }
;	genEndFunction
; naked function: No epilogue.
	G$SetBankedBkgTiles$0$0	= .
	.globl	G$SetBankedBkgTiles$0$0
	C$bankdata.c$56$1_0$174	= .
	.globl	C$bankdata.c$56$1_0$174
;src\core\bankdata.c:56: void SetBankedBkgTiles(UINT8 x, UINT8 y, UINT8 w, UINT8 h, const unsigned char *tiles, UBYTE bank) OLDCALL NONBANKED NAKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function SetBankedBkgTiles
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_SetBankedBkgTiles::
; naked function: no prologue.
	C$bankdata.c$76$1_0$174	= .
	.globl	C$bankdata.c$76$1_0$174
;src\core\bankdata.c:76: __endasm;
;	genInline
;	genInline
	ldh	a, (__current_bank)
	ld	(#__save), a
	ldhl	sp, #8
	ld	a, (hl)
	ldh	(__current_bank), a
	ld	(_rROMB0), a
	pop	bc
	call	_set_bkg_tiles ; preserves BC
	ld	a, (#__save)
	ldh	(__current_bank), a
	ld	(_rROMB0), a
	ld	h, b
	ld	l, c
	jp	(hl)
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$bankdata.c$77$1_0$174	= .
	.globl	C$bankdata.c$77$1_0$174
;src\core\bankdata.c:77: }
;	genEndFunction
; naked function: No epilogue.
	G$SetBankedWinTiles$0$0	= .
	.globl	G$SetBankedWinTiles$0$0
	C$bankdata.c$79$1_0$176	= .
	.globl	C$bankdata.c$79$1_0$176
;src\core\bankdata.c:79: void SetBankedWinTiles(UINT8 x, UINT8 y, UINT8 w, UINT8 h, const unsigned char *tiles, UBYTE bank) OLDCALL NONBANKED NAKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function SetBankedWinTiles
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_SetBankedWinTiles::
; naked function: no prologue.
	C$bankdata.c$99$1_0$176	= .
	.globl	C$bankdata.c$99$1_0$176
;src\core\bankdata.c:99: __endasm;
;	genInline
;	genInline
	ldh	a, (__current_bank)
	ld	(#__save), a
	ldhl	sp, #8
	ld	a, (hl)
	ldh	(__current_bank), a
	ld	(_rROMB0), a
	pop	bc
	call	_set_win_tiles ; preserves BC
	ld	a, (#__save)
	ldh	(__current_bank), a
	ld	(_rROMB0), a
	ld	h, b
	ld	l, c
	jp	(hl)
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$bankdata.c$100$1_0$176	= .
	.globl	C$bankdata.c$100$1_0$176
;src\core\bankdata.c:100: }
;	genEndFunction
; naked function: No epilogue.
	G$ReadBankedFarPtr$0$0	= .
	.globl	G$ReadBankedFarPtr$0$0
	C$bankdata.c$102$1_0$178	= .
	.globl	C$bankdata.c$102$1_0$178
;src\core\bankdata.c:102: void ReadBankedFarPtr(far_ptr_t * dest, const unsigned char *ptr, UBYTE bank) NONBANKED NAKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function ReadBankedFarPtr
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_ReadBankedFarPtr::
; naked function: no prologue.
	C$bankdata.c$131$1_0$178	= .
	.globl	C$bankdata.c$131$1_0$178
;src\core\bankdata.c:131: __endasm;
;	genInline
;	genInline
	ldh	a, (__current_bank)
	ld	(#__save), a
	ldhl	sp, #2
	ld	a, (hl)
	ldh	(__current_bank), a
	ld	(_rROMB0), a
	ld	h, b
	ld	l, c
	.rept	2
	ld	a, (hl+)
	ld	(de), a
	inc	de
	.endm
	ld	a, (hl)
	ld	(de), a
	ld	a, (#__save)
	ldh	(__current_bank), a
	ld	(_rROMB0), a
	pop	hl
	inc	sp
	jp	(hl)
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$bankdata.c$132$1_0$178	= .
	.globl	C$bankdata.c$132$1_0$178
;src\core\bankdata.c:132: }
;	genEndFunction
; naked function: No epilogue.
	G$ReadBankedUWORD$0$0	= .
	.globl	G$ReadBankedUWORD$0$0
	C$bankdata.c$134$1_0$180	= .
	.globl	C$bankdata.c$134$1_0$180
;src\core\bankdata.c:134: UWORD ReadBankedUWORD(const unsigned char *ptr, UBYTE bank) NONBANKED NAKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function ReadBankedUWORD
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_ReadBankedUWORD::
; naked function: no prologue.
	C$bankdata.c$155$1_0$180	= .
	.globl	C$bankdata.c$155$1_0$180
;src\core\bankdata.c:155: __endasm;
;	genInline
;	genInline
	ld	c, a
	ldh	a, (__current_bank)
	ld	(#__save), a
	ld	a, c
	ldh	(__current_bank), a
	ld	(_rROMB0), a
	ld	h, d
	ld	l, e
	ld	a, (hl+)
	ld	c, a
	ld	b, (hl)
	ld	a, (#__save)
	ldh	(__current_bank), a
	ld	(_rROMB0), a
	ret
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$bankdata.c$156$1_0$180	= .
	.globl	C$bankdata.c$156$1_0$180
;src\core\bankdata.c:156: }
;	genEndFunction
; naked function: No epilogue.
	G$MemcpyBanked$0$0	= .
	.globl	G$MemcpyBanked$0$0
	C$bankdata.c$158$1_0$182	= .
	.globl	C$bankdata.c$158$1_0$182
;src\core\bankdata.c:158: void MemcpyBanked(void* to, const void* from, size_t n, UBYTE bank) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function MemcpyBanked
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_MemcpyBanked::
;	genReceive
;	genMove_o size 2
;	genReceive
;	genMove_o size 2
	C$bankdata.c$159$1_0$182	= .
	.globl	C$bankdata.c$159$1_0$182
;src\core\bankdata.c:159: _save = CURRENT_BANK;
;	genAssign
	ldh	a, (__current_bank + 0)
;fetchLitPair	hl
	ld	(#__save),a
; common peephole 19 loaded (#__save) from a directly instead of using hl.
	C$bankdata.c$160$1_0$182	= .
	.globl	C$bankdata.c$160$1_0$182
;src\core\bankdata.c:160: SWITCH_ROM(bank);
;	genAssign
;	AOP_STK for 
	ldhl	sp,	#4
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$bankdata.c$161$1_0$182	= .
	.globl	C$bankdata.c$161$1_0$182
;src\core\bankdata.c:161: memcpy(to, from, n);
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	_memcpy
	C$bankdata.c$162$1_0$182	= .
	.globl	C$bankdata.c$162$1_0$182
;src\core\bankdata.c:162: SWITCH_ROM(_save);
;	genAssign
;fetchLitPair	hl
	ld	hl, #__save
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$bankdata.c$163$1_0$182	= .
	.globl	C$bankdata.c$163$1_0$182
;src\core\bankdata.c:163: }
;	genEndFunction
	pop	hl
;	adjustStack by 3
	add	sp, #3
	jp	(hl)
	G$MemcpyVRAMBanked$0$0	= .
	.globl	G$MemcpyVRAMBanked$0$0
	C$bankdata.c$165$1_0$184	= .
	.globl	C$bankdata.c$165$1_0$184
;src\core\bankdata.c:165: void MemcpyVRAMBanked(void* to, const void* from, size_t n, UBYTE bank) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function MemcpyVRAMBanked
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_MemcpyVRAMBanked::
;	adjustStack by -2
	dec	sp
	dec	sp
;	genReceive
;	genMove_o size 2
;	genReceive
;	genMove_o size 2
	C$bankdata.c$166$1_0$184	= .
	.globl	C$bankdata.c$166$1_0$184
;src\core\bankdata.c:166: _save = CURRENT_BANK;
;	genAssign
	ldh	a, (__current_bank + 0)
;fetchLitPair	hl
	ld	(#__save),a
; common peephole 19 loaded (#__save) from a directly instead of using hl.
	C$bankdata.c$167$1_0$184	= .
	.globl	C$bankdata.c$167$1_0$184
;src\core\bankdata.c:167: SWITCH_ROM(bank);
;	genAssign
;	AOP_STK for 
	ldhl	sp,	#6
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$bankdata.c$168$1_0$184	= .
	.globl	C$bankdata.c$168$1_0$184
;src\core\bankdata.c:168: set_data(to, from, n);
;	genCast
;	AOP_STK for 
;	AOP_STK for _MemcpyVRAMBanked_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl)
	ldhl	sp,	#0
	ld	(hl), a
	ldhl	sp,	#5
	ld	a, (hl)
	ldhl	sp,	#1
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genIpush
;	AOP_STK for _MemcpyVRAMBanked_sloc0_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	push	hl
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	_set_data
	C$bankdata.c$169$1_0$184	= .
	.globl	C$bankdata.c$169$1_0$184
;src\core\bankdata.c:169: SWITCH_ROM(_save);
;	genAssign
;fetchLitPair	hl
	ld	hl, #__save
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$bankdata.c$170$1_0$184	= .
	.globl	C$bankdata.c$170$1_0$184
;src\core\bankdata.c:170: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	pop	hl
;	adjustStack by 3
	add	sp, #3
	jp	(hl)
	G$IndexOfFarPtr$0$0	= .
	.globl	G$IndexOfFarPtr$0$0
	C$bankdata.c$172$1_0$186	= .
	.globl	C$bankdata.c$172$1_0$186
;src\core\bankdata.c:172: UBYTE IndexOfFarPtr(const far_ptr_t * list, UBYTE bank, UBYTE count, const far_ptr_t * item) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function IndexOfFarPtr
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 12 bytes.
_IndexOfFarPtr::
;	adjustStack by -12
	add	sp, #-12
;	genReceive
;	AOP_STK for _IndexOfFarPtr_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#9
	ld	(hl), e
	inc	hl
	ld	(hl), d
;	genMove_o size 0
;	genReceive
;	AOP_STK for _IndexOfFarPtr_bank_10000_185
;	genMove_o size 1
	dec	hl
	dec	hl
	ld	(hl), a
;	genMove_o size 0
	C$bankdata.c$174$3_0$187	= .
	.globl	C$bankdata.c$174$3_0$187
;src\core\bankdata.c:174: for (UBYTE i = 0; i != count; i++, list++) {
;	genAssign
;	AOP_STK for _IndexOfFarPtr_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	(hl), #0x00
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	AOP_STK for 
;	AOP_STK for _IndexOfFarPtr_sloc2_1_0
;	genMove_o size 2
	ldhl	sp,	#15
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
	ldhl	sp,	#16
	ld	a, (hl)
	ldhl	sp,	#5
;	genMove_o size 0
;	genPlus
;	AOP_STK for _IndexOfFarPtr_sloc2_1_0
;	AOP_STK for _IndexOfFarPtr_sloc3_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
; common peephole 39 replaced 16-bit addition by 8-bit loads and 16-bit increment.
	ld	l, e
	ld	h, d
	inc	hl
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#8
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#7
	ld	(hl), a
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genAssign
;	AOP_STK for _IndexOfFarPtr_sloc4_1_0
;	genMove_o size 1
	ldhl	sp,	#11
	ld	(hl), #0x00
;	genLabel
00106$:
;	genCmpEq
;	AOP_STK for 
;	AOP_STK for _IndexOfFarPtr_sloc4_1_0
	ldhl	sp,	#14
	ld	a, (hl)
	ldhl	sp,	#11
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00134$.
;	skipping generated iCode
	C$bankdata.c$175$3_0$188	= .
	.globl	C$bankdata.c$175$3_0$188
;src\core\bankdata.c:175: ReadBankedFarPtr(&v, (void *)list, bank);
;	genCast
;	AOP_STK for _IndexOfFarPtr_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	genIpush
;	AOP_STK for _IndexOfFarPtr_bank_10000_185
;	genMove_o size 1
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96b move dec hl before ld b, a
	dec	hl
	ld	b, a
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
	ld	hl, #1
	add	hl, sp
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCall
	call	_ReadBankedFarPtr
	C$bankdata.c$176$3_0$188	= .
	.globl	C$bankdata.c$176$3_0$188
;src\core\bankdata.c:176: if ((v.bank == item->bank) && (v.ptr == item->ptr)) return i;
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#0
	ld	c, (hl)
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _IndexOfFarPtr_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	b, a
;	genCmpEq
	ld	a, c
	sub	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00135$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00107$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00136$.
;	skipping generated iCode
;	genPointerGet
;	genMove_o size 2
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _IndexOfFarPtr_sloc3_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#6
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genCmpEq
	ld	a, l
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00107$
; common peephole 84 jumped to 00107$ directly instead of via 00137$.
	ld	a, h
	sub	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00137$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00107$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00138$.
;	skipping generated iCode
;	genRet
;	AOP_STK for _IndexOfFarPtr_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	a, (hl)
;	genMove_o size 0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00107$:
	C$bankdata.c$174$2_0$187	= .
	.globl	C$bankdata.c$174$2_0$187
;src\core\bankdata.c:174: for (UBYTE i = 0; i != count; i++, list++) {
;	genPlus
;	AOP_STK for _IndexOfFarPtr_sloc4_1_0
	ldhl	sp,	#11
	inc	(hl)
;	genAssign
;	AOP_STK for _IndexOfFarPtr_sloc4_1_0
;	AOP_STK for _IndexOfFarPtr_sloc1_1_0
;	genMove_o size 1
	ld	a, (hl)
	ldhl	sp,	#3
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _IndexOfFarPtr_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#9
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0003
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#11
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#10
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00104$:
	C$bankdata.c$178$1_0$186	= .
	.globl	C$bankdata.c$178$1_0$186
;src\core\bankdata.c:178: return count;
;	genRet
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#14
	ld	a, (hl)
;	genMove_o size 0
;	genLabel
00108$:
	C$bankdata.c$179$1_0$186	= .
	.globl	C$bankdata.c$179$1_0$186
;src\core\bankdata.c:179: }
;	genEndFunction
;	adjustStack by 12
	add	sp, #12
	pop	hl
;	adjustStack by 3
	add	sp, #3
	jp	(hl)
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
	.area _CODE
	.area _INITIALIZER
	.area _CABS (ABS)
