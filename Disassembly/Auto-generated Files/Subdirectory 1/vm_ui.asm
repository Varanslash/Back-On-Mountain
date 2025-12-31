;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm_ui
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _set_xy_win_submap
	.globl b_itoa_fmt
	.globl _itoa_fmt
	.globl b_ui_draw_frame
	.globl _ui_draw_frame
	.globl b___func_VM_UI
	.globl ___func_VM_UI
	.globl b_scroll_rect
	.globl _scroll_rect
	.globl _GetBkgAddr
	.globl _GetWinAddr
	.globl b_ui_run_menu
	.globl _ui_run_menu
	.globl b_ui_run_modal
	.globl _ui_run_modal
	.globl b_ui_set_start_tile
	.globl _ui_set_start_tile
	.globl _MemcpyBanked
	.globl _ReadBankedUWORD
	.globl _ReadBankedFarPtr
	.globl _SetBankedWinTiles
	.globl _fill_win_rect
	.globl _reverse
	.globl _vm_load_text
	.globl b_vm_display_text
	.globl _vm_display_text
	.globl b_vm_switch_text_layer
	.globl _vm_switch_text_layer
	.globl b_vm_overlay_setpos
	.globl _vm_overlay_setpos
	.globl b_vm_overlay_wait
	.globl _vm_overlay_wait
	.globl b_vm_overlay_move_to
	.globl _vm_overlay_move_to
	.globl b_vm_overlay_set_scroll
	.globl _vm_overlay_set_scroll
	.globl b_vm_overlay_clear
	.globl _vm_overlay_clear
	.globl b_vm_overlay_show
	.globl _vm_overlay_show
	.globl b_vm_choice
	.globl _vm_choice
	.globl b_vm_set_font
	.globl _vm_set_font
	.globl b_vm_overlay_scroll
	.globl _vm_overlay_scroll
	.globl b_vm_overlay_set_submap
	.globl _vm_overlay_set_submap
	.globl b_vm_overlay_set_submap_ex
	.globl _vm_overlay_set_submap_ex
	.globl b_vm_overlay_set_map
	.globl _vm_overlay_set_map
	.globl b_vm_set_text_sound
	.globl _vm_set_text_sound
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
	G$vm_load_text$0$0	= .
	.globl	G$vm_load_text$0$0
	C$vm_ui.c$49$1_0$335	= .
	.globl	C$vm_ui.c$49$1_0$335
;src\core\vm_ui.c:49: void vm_load_text(DUMMY0_t dummy0, DUMMY1_t dummy1, SCRIPT_CTX * THIS, UBYTE nargs) OLDCALL NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_load_text
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 11 bytes.
_vm_load_text::
;	adjustStack by -11
	add	sp, #-11
	C$vm_ui.c$52$2_0$336	= .
	.globl	C$vm_ui.c$52$2_0$336
;src\core\vm_ui.c:52: UBYTE _save = CURRENT_BANK;
;	genAssign
;	AOP_STK for _vm_load_text_sloc0_1_0
	ldh	a, (__current_bank + 0)
	ldhl	sp,	#0
	ld	(hl), a
	C$vm_ui.c$53$1_1$336	= .
	.globl	C$vm_ui.c$53$1_1$336
;src\core\vm_ui.c:53: SWITCH_ROM(THIS->bank);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#17
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
	ld	a, (de)
;	genMove_o size 1
	ldh	(__current_bank + 0), a
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$vm_ui.c$55$1_2$337	= .
	.globl	C$vm_ui.c$55$1_2$337
;src\core\vm_ui.c:55: const INT16 * args = (INT16 *)THIS->PC;
;	genPointerGet
;	AOP_STK for _vm_load_text_sloc1_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#3
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genCast
;	AOP_STK for _vm_load_text_sloc1_1_0
;	AOP_STK for _vm_load_text_sloc2_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	inc	hl
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$vm_ui.c$56$1_2$337	= .
	.globl	C$vm_ui.c$56$1_2$337
;src\core\vm_ui.c:56: const unsigned char * s = THIS->PC + (nargs << 1);
;	genCast
;	AOP_STK for 
;	AOP_STK for _vm_load_text_sloc3_1_0
;	genMove_o size 1
	ldhl	sp,	#19
	ld	a, (hl)
	ldhl	sp,	#9
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genLeftShift
;	AOP_STK for _vm_load_text_sloc3_1_0
;	AOP_STK for _vm_load_text_sloc4_1_0
;	genMove_o size 2
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	sla	(hl)
	inc	hl
	rl	(hl)
;	genPlus
;	AOP_STK for _vm_load_text_sloc4_1_0
;	AOP_STK for _vm_load_text_sloc1_1_0
;	AOP_STK for _vm_load_text_sloc5_1_0
;fetchPairLong
	dec	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
	ldhl	sp,	#3
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#9
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#8
;	genMove_o size 0
	C$vm_ui.c$57$1_2$337	= .
	.globl	C$vm_ui.c$57$1_2$337
;src\core\vm_ui.c:57: unsigned char * d = ui_text_data;
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _vm_load_text_sloc6_1_0
;	genMove_o size 2
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #<(_ui_text_data)
	inc	hl
	ld	(hl), #>(_ui_text_data)
	C$vm_ui.c$60$3_2$339	= .
	.globl	C$vm_ui.c$60$3_2$339
;src\core\vm_ui.c:60: while (*s) {
;	skipping iCode since result will be rematerialized
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#17
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_load_text_sloc7_1_0
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#3
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#2
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00112$:
;	genPointerGet
;	AOP_STK for _vm_load_text_sloc5_1_0
;	AOP_STK for _vm_load_text_sloc8_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl), a
;	genIfx
;	AOP_STK for _vm_load_text_sloc8_1_0
	ld	a, (hl)
	or	a, a
	jp	Z, 00114$
	C$vm_ui.c$61$2_2$338	= .
	.globl	C$vm_ui.c$61$2_2$338
;src\core\vm_ui.c:61: if (*s == '%') {
;	genPointerGet
;	AOP_STK for _vm_load_text_sloc5_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genCmpEq
	sub	a, #0x25
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00223$.
	jp	NZ,00110$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00224$.
;	skipping generated iCode
	C$vm_ui.c$62$3_2$339	= .
	.globl	C$vm_ui.c$62$3_2$339
;src\core\vm_ui.c:62: idx = *((INT16 *)VM_REF_TO_PTR(*args));
;	genPointerGet
;	AOP_STK for _vm_load_text_sloc2_1_0
;fetchPairLong
	dec	hl
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
; common peephole 1 removed dead load from a into c.
	inc	de
	ld	a, (de)
;	genCmpLt
	bit	7,a
; common peephole 149 tested bit 7 of a directly instead of going through b.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00123$
;	skipping generated iCode
;	genPointerGet
;	AOP_STK for _vm_load_text_sloc7_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#1
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genPointerGet
;	AOP_STK for _vm_load_text_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
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
;	genLeftShift
;fetchPairLong
	ld	h, a
	add	hl, hl
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00124$
;	genLabel
00123$:
;	genPointerGet
;	AOP_STK for _vm_load_text_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#5
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
;	genLeftShift
;fetchPairLong
	ld	h, a
	add	hl, hl
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_script_memory
	add	hl, de
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genLabel
00124$:
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genPointerGet
;	AOP_STK for _vm_load_text_sloc9_1_0
;fetchPairLong
	ld	e, c
	ld	d, b
	ld	a, (de)
	ldhl	sp,	#3
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
	C$vm_ui.c$63$3_2$339	= .
	.globl	C$vm_ui.c$63$3_2$339
;src\core\vm_ui.c:63: switch (*++s) {
;	genPlus
;	AOP_STK for _vm_load_text_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCmpEq
	cp	a, #0x25
	jp	Z,00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00225$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x44
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00101$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00226$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x63
	jp	Z,00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00227$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x64
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00228$.
;	skipping generated iCode
;	genCmpEq
	cp	a, #0x66
	jp	Z,00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00229$.
;	skipping generated iCode
;	genCmpEq
	sub	a, #0x74
	jp	Z,00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00230$.
;	skipping generated iCode
;	genGoto
	jp	00107$
	C$vm_ui.c$65$4_2$340	= .
	.globl	C$vm_ui.c$65$4_2$340
;src\core\vm_ui.c:65: case 'D':
;	genLabel
00101$:
;src\core\vm_ui.c:66: d += itoa_format(idx, d, *++s - '0');
;	genPlus
	inc	bc
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genCast
;	(locations are the same)
;	genMinus
	add	a, #0xd0
;fetchLitPair	hl
	ld	(#__itoa_fmt_len),a
; common peephole 19 loaded (#__itoa_fmt_len) from a directly instead of using hl.
;	genAssign
;	AOP_STK for _vm_load_text_sloc6_1_0
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;src\core\vm_ui.c:43: UBYTE len = itoa_fmt(v, d);
;	genIpush
	push	de
;	AOP_STK for _vm_load_text_sloc6_1_0
;	genMove_o size 2
; sm83 peephole 2 used ldi to increment hl after load
;	spillPairReg hl
;	spillPairReg hl
; sm83 peephole 9 reversed loading order of hl
	ld	a, (hl-)
	ld	l, (hl)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
;	genIpush
;	AOP_STK for _vm_load_text_sloc9_1_0
;	genMove_o size 2
	ldhl	sp,	#7
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
;	genCall
;	AOP_STK for _vm_load_text_sloc10_1_0
	ld	e, #b_itoa_fmt
	ld	hl, #_itoa_fmt
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genMove_o size 1
	ldhl	sp,	#10
	ld	(hl), e
;	genMove_o size 0
	pop	de
;src\core\vm_ui.c:44: if (vwf_direction != UI_PRINT_LEFTTORIGHT) reverse(d);
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vwf_direction)
; common peephole 17 loaded a from (#_vwf_direction) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00116$
;	genIpush
	push	de
;	genCall
;	adjustStack by 2
	call	_reverse
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genLabel
00116$:
	C$vm_ui.c$66$6_2$343	= .
	.globl	C$vm_ui.c$66$6_2$343
;src\core\vm_ui.c:66: d += itoa_format(idx, d, *++s - '0');
;	genPlus
;	AOP_STK for _vm_load_text_sloc10_1_0
;	AOP_STK for _vm_load_text_sloc6_1_0
;fetchPairLong
	ldhl	sp,	#8
;fetchPairLong
; common peephole 96b move inc hl before ld d, #0x00
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, #0x00
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
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
	C$vm_ui.c$67$4_2$340	= .
	.globl	C$vm_ui.c$67$4_2$340
;src\core\vm_ui.c:67: break;
;	genGoto
	jp	00111$
	C$vm_ui.c$69$4_2$340	= .
	.globl	C$vm_ui.c$69$4_2$340
;src\core\vm_ui.c:69: case 'd':
;	genLabel
00102$:
;src\core\vm_ui.c:70: d += itoa_format(idx, d, 0);
;	genAssign
;	AOP_STK for _vm_load_text_sloc6_1_0
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;src\core\vm_ui.c:42: _itoa_fmt_len = dlen;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #__itoa_fmt_len
	ld	(hl), #0x00
;src\core\vm_ui.c:43: UBYTE len = itoa_fmt(v, d);
;	genIpush
	push	de
;	AOP_STK for _vm_load_text_sloc6_1_0
;	genMove_o size 2
	ldhl	sp,	#11
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
;	genIpush
;	AOP_STK for _vm_load_text_sloc9_1_0
;	genMove_o size 2
	ldhl	sp,	#7
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
;	genCall
;	AOP_STK for _vm_load_text_sloc11_1_0
	ld	e, #b_itoa_fmt
	ld	hl, #_itoa_fmt
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genMove_o size 1
	ldhl	sp,	#10
	ld	(hl), e
;	genMove_o size 0
	pop	de
;src\core\vm_ui.c:44: if (vwf_direction != UI_PRINT_LEFTTORIGHT) reverse(d);
;	genIfx
;fetchLitPair	hl
	ld	a, (#_vwf_direction)
; common peephole 17 loaded a from (#_vwf_direction) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00119$
;	genIpush
	push	de
;	genCall
;	adjustStack by 2
	call	_reverse
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genLabel
00119$:
	C$vm_ui.c$70$6_2$347	= .
	.globl	C$vm_ui.c$70$6_2$347
;src\core\vm_ui.c:70: d += itoa_format(idx, d, 0);
;	genPlus
;	AOP_STK for _vm_load_text_sloc11_1_0
;	AOP_STK for _vm_load_text_sloc6_1_0
;fetchPairLong
	ldhl	sp,	#8
;fetchPairLong
; common peephole 96b move inc hl before ld d, #0x00
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, #0x00
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
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
	C$vm_ui.c$71$4_2$340	= .
	.globl	C$vm_ui.c$71$4_2$340
;src\core\vm_ui.c:71: break;
;	genGoto
	jp	00111$
	C$vm_ui.c$73$4_2$340	= .
	.globl	C$vm_ui.c$73$4_2$340
;src\core\vm_ui.c:73: case 'c':
;	genLabel
00103$:
	C$vm_ui.c$74$4_2$340	= .
	.globl	C$vm_ui.c$74$4_2$340
;src\core\vm_ui.c:74: *d++ = (unsigned char)idx;
;	genCast
;	AOP_STK for _vm_load_text_sloc9_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	a, (hl)
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_load_text_sloc6_1_0
;fetchPairLong
	ldhl	sp,	#9
	push	af
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	pop	af
	ld	(hl), a
;	genPlus
;	AOP_STK for _vm_load_text_sloc6_1_0
	ldhl	sp,	#9
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00111$
; common peephole 84 jumped to 00111$ directly instead of via 00231$.
	inc	hl
	inc	(hl)
; common peephole 158 removed unused label 00231$.
	C$vm_ui.c$75$4_2$340	= .
	.globl	C$vm_ui.c$75$4_2$340
;src\core\vm_ui.c:75: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
	C$vm_ui.c$77$4_2$340	= .
	.globl	C$vm_ui.c$77$4_2$340
;src\core\vm_ui.c:77: case 't':
;	genLabel
00104$:
	C$vm_ui.c$78$4_2$340	= .
	.globl	C$vm_ui.c$78$4_2$340
;src\core\vm_ui.c:78: *d++ = 0x01u;
;	genAssign (pointer)
;	AOP_STK for _vm_load_text_sloc6_1_0
;fetchPairLong
	ldhl	sp,	#9
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x01
;	genPlus
;	AOP_STK for _vm_load_text_sloc6_1_0
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	C$vm_ui.c$79$4_2$340	= .
	.globl	C$vm_ui.c$79$4_2$340
;src\core\vm_ui.c:79: *d++ = (unsigned char)idx + 0x02u;
;	genCast
;	AOP_STK for _vm_load_text_sloc9_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	a, (hl)
;	genMove_o size 0
;	genPlus
	add	a, #0x02
;	genAssign (pointer)
	ld	(de), a
;	genPlus
;	AOP_STK for _vm_load_text_sloc6_1_0
	inc	de
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
	C$vm_ui.c$80$4_2$340	= .
	.globl	C$vm_ui.c$80$4_2$340
;src\core\vm_ui.c:80: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
	C$vm_ui.c$82$4_2$340	= .
	.globl	C$vm_ui.c$82$4_2$340
;src\core\vm_ui.c:82: case 'f':
;	genLabel
00105$:
	C$vm_ui.c$83$4_2$340	= .
	.globl	C$vm_ui.c$83$4_2$340
;src\core\vm_ui.c:83: *d++ = 0x02u;
;	genAssign (pointer)
;	AOP_STK for _vm_load_text_sloc6_1_0
;fetchPairLong
	ldhl	sp,	#9
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x02
;	genPlus
;	AOP_STK for _vm_load_text_sloc6_1_0
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
	C$vm_ui.c$84$4_2$340	= .
	.globl	C$vm_ui.c$84$4_2$340
;src\core\vm_ui.c:84: *d++ = (unsigned char)idx + 0x01u;
;	genCast
;	AOP_STK for _vm_load_text_sloc9_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	a, (hl)
;	genMove_o size 0
;	genPlus
	inc	a
;	genAssign (pointer)
	ld	(de), a
;	genPlus
;	AOP_STK for _vm_load_text_sloc6_1_0
	inc	de
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
	C$vm_ui.c$85$4_2$340	= .
	.globl	C$vm_ui.c$85$4_2$340
;src\core\vm_ui.c:85: break;
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
	C$vm_ui.c$87$4_2$340	= .
	.globl	C$vm_ui.c$87$4_2$340
;src\core\vm_ui.c:87: case '%':
;	genLabel
00106$:
	C$vm_ui.c$88$4_2$340	= .
	.globl	C$vm_ui.c$88$4_2$340
;src\core\vm_ui.c:88: s++;
;	genPlus
	inc	bc
	C$vm_ui.c$89$4_2$340	= .
	.globl	C$vm_ui.c$89$4_2$340
;src\core\vm_ui.c:89: default:
;	genLabel
00107$:
	C$vm_ui.c$90$4_2$340	= .
	.globl	C$vm_ui.c$90$4_2$340
;src\core\vm_ui.c:90: s--;
;	genMinus
;fetchPairLong
	ld	e, c
	ld	d, b
	dec	de
	C$vm_ui.c$91$4_2$340	= .
	.globl	C$vm_ui.c$91$4_2$340
;src\core\vm_ui.c:91: *d++ = *s++;
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_load_text_sloc5_1_0
	inc	de
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_load_text_sloc6_1_0
;fetchPairLong
	ld	a, d
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;	genPlus
;	AOP_STK for _vm_load_text_sloc6_1_0
	ldhl	sp,	#9
	inc	(hl)
	jp	NZ,00112$
; common peephole 84 jumped to 00112$ directly instead of via 00232$.
	inc	hl
	inc	(hl)
; common peephole 158 removed unused label 00232$.
	C$vm_ui.c$92$4_2$340	= .
	.globl	C$vm_ui.c$92$4_2$340
;src\core\vm_ui.c:92: continue;
;	genGoto
	jp	00112$
	C$vm_ui.c$93$2_2$338	= .
	.globl	C$vm_ui.c$93$2_2$338
;src\core\vm_ui.c:93: }
;	genLabel
00110$:
	C$vm_ui.c$95$3_2$341	= .
	.globl	C$vm_ui.c$95$3_2$341
;src\core\vm_ui.c:95: *d++ = *s++;
;	genPointerGet
;	AOP_STK for _vm_load_text_sloc5_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#7
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genPlus
;	AOP_STK for _vm_load_text_sloc5_1_0
; common peephole 96b move dec hl before ld c, a
; common peephole 96b move dec hl before ld a, (de)
	ld	a, (hl-)
	ld	d, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	a, (de)
	ld	c, a
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00233$
	inc	hl
	inc	(hl)
00233$:
;	genAssign (pointer)
;	AOP_STK for _vm_load_text_sloc6_1_0
;fetchPairLong
	ldhl	sp,	#9
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;	genPlus
;	AOP_STK for _vm_load_text_sloc6_1_0
	ldhl	sp,	#9
	inc	(hl)
	jp	NZ,00112$
; common peephole 84 jumped to 00112$ directly instead of via 00234$.
	inc	hl
	inc	(hl)
; common peephole 158 removed unused label 00234$.
	C$vm_ui.c$96$3_2$341	= .
	.globl	C$vm_ui.c$96$3_2$341
;src\core\vm_ui.c:96: continue;
;	genGoto
	jp	00112$
;	genLabel
00111$:
	C$vm_ui.c$98$2_2$338	= .
	.globl	C$vm_ui.c$98$2_2$338
;src\core\vm_ui.c:98: s++; args++;
;	genPlus
;	AOP_STK for _vm_load_text_sloc5_1_0
	inc	bc
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_load_text_sloc2_1_0
;fetchPairLong
	ld	a, b
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0002
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#7
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#6
	ld	(hl), a
;	genMove_o size 0
;	genGoto
	jp	00112$
;	genLabel
00114$:
	C$vm_ui.c$100$1_2$337	= .
	.globl	C$vm_ui.c$100$1_2$337
;src\core\vm_ui.c:100: *d = 0;
;	genAssign (pointer)
;	AOP_STK for _vm_load_text_sloc6_1_0
;fetchPairLong
	ldhl	sp,	#9
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), #0x00
	C$vm_ui.c$102$1_2$337	= .
	.globl	C$vm_ui.c$102$1_2$337
;src\core\vm_ui.c:102: SWITCH_ROM(_save);
;	genAssign
;	AOP_STK for _vm_load_text_sloc0_1_0
	ldhl	sp,	#0
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	AOP_STK for _vm_load_text_sloc0_1_0
;	genMove_o size 1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
	C$vm_ui.c$103$1_2$337	= .
	.globl	C$vm_ui.c$103$1_2$337
;src\core\vm_ui.c:103: THIS->PC = s + 1;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#17
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_load_text_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	inc	de
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00121$.
	C$vm_ui.c$104$1_2$335	= .
	.globl	C$vm_ui.c$104$1_2$335
;src\core\vm_ui.c:104: }
;	genEndFunction
;	adjustStack by 11
	add	sp, #11
	C$vm_ui.c$104$1_2$335	= .
	.globl	C$vm_ui.c$104$1_2$335
	XG$vm_load_text$0$0	= .
	.globl	XG$vm_load_text$0$0
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$__func_VM_UI$0$0	= .
	.globl	G$__func_VM_UI$0$0
	C$vm_ui.c$19$0_0$328	= .
	.globl	C$vm_ui.c$19$0_0$328
;src\core\vm_ui.c:19: BANKREF(VM_UI)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_VM_UI
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_VM_UI	= 255
___func_VM_UI::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_VM_UI 
	___bank_VM_UI = b___func_VM_UI 
	.globl ___bank_VM_UI 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	G$vm_display_text$0$0	= .
	.globl	G$vm_display_text$0$0
	C$vm_ui.c$107$1_2$351	= .
	.globl	C$vm_ui.c$107$1_2$351
;src\core\vm_ui.c:107: void vm_display_text(SCRIPT_CTX * THIS, UBYTE options, UBYTE start_tile) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_display_text
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_display_text	= 255
_vm_display_text::
	C$vm_ui.c$110$1_0$351	= .
	.globl	C$vm_ui.c$110$1_0$351
;src\core\vm_ui.c:110: INPUT_RESET;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_last_joy),a
; common peephole 19 loaded (#_last_joy) from a directly instead of using hl.
	C$vm_ui.c$111$1_0$351	= .
	.globl	C$vm_ui.c$111$1_0$351
;src\core\vm_ui.c:111: text_options = options;
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_text_options),a
; common peephole 19 loaded (#_text_options) from a directly instead of using hl.
	C$vm_ui.c$112$1_0$351	= .
	.globl	C$vm_ui.c$112$1_0$351
;src\core\vm_ui.c:112: text_drawn = text_ff = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_ff
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_text_drawn
	ld	(hl), #0x00
	C$vm_ui.c$115$1_0$351	= .
	.globl	C$vm_ui.c$115$1_0$351
;src\core\vm_ui.c:115: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00110$
	C$vm_ui.c$116$2_0$352	= .
	.globl	C$vm_ui.c$116$2_0$352
;src\core\vm_ui.c:116: if (start_tile >= (UBYTE)((0x100 - TEXT_BUFFER_START) + (0x100 - TEXT_BUFFER_START_BANK1))) {
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
	ld	a, (hl)
	sub	a, #0x74
;	skipping generated iCode
	C$vm_ui.c$117$3_0$353	= .
	.globl	C$vm_ui.c$117$3_0$353
;src\core\vm_ui.c:117: return;
;	genRet
;	genLabel
	ret	NC
; common peephole 161 replaced jump by return.
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00105$.
	C$vm_ui.c$118$2_0$352	= .
	.globl	C$vm_ui.c$118$2_0$352
;src\core\vm_ui.c:118: } else if (start_tile >= (UBYTE)(0x100 - TEXT_BUFFER_START)) {
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
;	skipping generated iCode
	C$vm_ui.c$119$3_0$354	= .
	.globl	C$vm_ui.c$119$3_0$354
;src\core\vm_ui.c:119: ui_set_start_tile(TEXT_BUFFER_START_BANK1 + (start_tile - (UBYTE)(0x100 - TEXT_BUFFER_START)), 1);
;	genMinus
;	AOP_STK for 
	ld	a,(hl)
	cp	a,#0x34
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00102$
; common peephole 107 removed load from (hl) into a by replacing sub with cp
	add	a, #0xcc
;	genPlus
	add	a, #0xc0
;	genIpush
;	genMove_o size 1
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
;	genIpush
	push	af
	inc	sp
;	genCall
	ld	e, #b_ui_set_start_tile
	ld	hl, #_ui_set_start_tile
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
	C$vm_ui.c$121$3_0$355	= .
	.globl	C$vm_ui.c$121$3_0$355
;src\core\vm_ui.c:121: ui_set_start_tile(TEXT_BUFFER_START + start_tile, 0);
;	genPlus
;	AOP_STK for 
	ldhl	sp,	#9
	ld	a, (hl)
	add	a, #0xcc
;	genIpush
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
;	genIpush
	push	af
	inc	sp
;	genCall
	ld	e, #b_ui_set_start_tile
	ld	hl, #_ui_set_start_tile
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00110$:
	C$vm_ui.c$125$2_0$356	= .
	.globl	C$vm_ui.c$125$2_0$356
;src\core\vm_ui.c:125: if (start_tile < (UBYTE)(0x100 - TEXT_BUFFER_START)) ui_set_start_tile(TEXT_BUFFER_START + start_tile, 0);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
;	skipping generated iCode
;	genPlus
;	AOP_STK for 
	ld	a,(hl)
	cp	a,#0x34
	ret	NC
; common peephole 161 replaced jump by return.
; common peephole 107 removed load from (hl) into a by replacing sub with cp
	add	a, #0xcc
;	genIpush
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
;	genIpush
	push	af
	inc	sp
;	genCall
	ld	e, #b_ui_set_start_tile
	ld	hl, #_ui_set_start_tile
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genLabel
; common peephole 158 removed unused label 00112$.
	C$vm_ui.c$130$1_0$351	= .
	.globl	C$vm_ui.c$130$1_0$351
;src\core\vm_ui.c:130: }
;	genEndFunction
	C$vm_ui.c$130$1_0$351	= .
	.globl	C$vm_ui.c$130$1_0$351
	XG$vm_display_text$0$0	= .
	.globl	XG$vm_display_text$0$0
	ret
	G$vm_switch_text_layer$0$0	= .
	.globl	G$vm_switch_text_layer$0$0
	C$vm_ui.c$133$1_0$358	= .
	.globl	C$vm_ui.c$133$1_0$358
;src\core\vm_ui.c:133: void vm_switch_text_layer(SCRIPT_CTX * THIS, UBYTE target) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_switch_text_layer
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_switch_text_layer	= 255
_vm_switch_text_layer::
	C$vm_ui.c$135$1_0$358	= .
	.globl	C$vm_ui.c$135$1_0$358
;src\core\vm_ui.c:135: if (target) text_render_base_addr = GetWinAddr(); else text_render_base_addr = GetBkgAddr();
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#8
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	genCall
	call	_GetWinAddr
;	genMove_o size 2
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_text_render_base_addr
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
;	genCall
	call	_GetBkgAddr
;	genMove_o size 2
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_text_render_base_addr
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$vm_ui.c$136$1_0$358	= .
	.globl	C$vm_ui.c$136$1_0$358
;src\core\vm_ui.c:136: }
;	genEndFunction
	C$vm_ui.c$136$1_0$358	= .
	.globl	C$vm_ui.c$136$1_0$358
	XG$vm_switch_text_layer$0$0	= .
	.globl	XG$vm_switch_text_layer$0$0
	ret
	G$vm_overlay_setpos$0$0	= .
	.globl	G$vm_overlay_setpos$0$0
	C$vm_ui.c$139$1_0$360	= .
	.globl	C$vm_ui.c$139$1_0$360
;src\core\vm_ui.c:139: void vm_overlay_setpos(SCRIPT_CTX * THIS, UBYTE pos_x, UBYTE pos_y) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_overlay_setpos
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_overlay_setpos	= 255
_vm_overlay_setpos::
;src\core\vm_ui.c:141: ui_set_pos(pos_x << 3, pos_y << 3);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#9
;	genMove_o size 0
;	genLeftShift
;	genCast
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96b move dec hl before ld c, a
; common peephole 96b move dec hl before add a, a
; common peephole 96b move dec hl before add a, a
; common peephole 96b move dec hl before add a, a
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	add	a, a
	add	a, a
	add	a, a
	ld	c, a
	ld	a, (hl)
;	genMove_o size 0
;	genLeftShift
	add	a, a
	add	a, a
	add	a, a
;include/ui.h:104: win_pos_y = win_dest_pos_y = y;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_win_dest_pos_y
	ld	(hl), c
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_win_pos_y
	ld	(hl), c
;include/ui.h:105: win_pos_x = win_dest_pos_x = x;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_win_dest_pos_x),a
; common peephole 19 loaded (#_win_dest_pos_x) from a directly instead of using hl.
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_win_pos_x),a
; common peephole 19 loaded (#_win_pos_x) from a directly instead of using hl.
	C$vm_ui.c$141$3_0$360	= .
	.globl	C$vm_ui.c$141$3_0$360
;src\core\vm_ui.c:141: ui_set_pos(pos_x << 3, pos_y << 3);
;	genLabel
; common peephole 158 removed unused label 00102$.
	C$vm_ui.c$142$3_0$360	= .
	.globl	C$vm_ui.c$142$3_0$360
;src\core\vm_ui.c:142: }
;	genEndFunction
	C$vm_ui.c$142$3_0$360	= .
	.globl	C$vm_ui.c$142$3_0$360
	XG$vm_overlay_setpos$0$0	= .
	.globl	XG$vm_overlay_setpos$0$0
	ret
	G$vm_overlay_wait$0$0	= .
	.globl	G$vm_overlay_wait$0$0
	C$vm_ui.c$145$3_0$365	= .
	.globl	C$vm_ui.c$145$3_0$365
;src\core\vm_ui.c:145: void vm_overlay_wait(SCRIPT_CTX * THIS, UBYTE is_modal, UBYTE wait_flags) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_overlay_wait
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_overlay_wait	= 255
_vm_overlay_wait::
	C$vm_ui.c$146$1_0$365	= .
	.globl	C$vm_ui.c$146$1_0$365
;src\core\vm_ui.c:146: if (is_modal) {
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#8
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$vm_ui.c$147$2_0$366	= .
	.globl	C$vm_ui.c$147$2_0$366
;src\core\vm_ui.c:147: ui_run_modal(wait_flags);
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	inc	hl
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	ld	e, #b_ui_run_modal
	ld	hl, #_ui_run_modal
	call	___sdcc_bcall_ehl
;	adjustStack by 1
	inc	sp
	C$vm_ui.c$148$2_0$366	= .
	.globl	C$vm_ui.c$148$2_0$366
;src\core\vm_ui.c:148: return;
;	genRet
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
	C$vm_ui.c$151$2_0$367	= .
	.globl	C$vm_ui.c$151$2_0$367
;src\core\vm_ui.c:151: UBYTE fail = 0;
;	genAssign
;	genMove_o size 1
	ld	c, #0x00
	C$vm_ui.c$152$1_1$367	= .
	.globl	C$vm_ui.c$152$1_1$367
;src\core\vm_ui.c:152: if (wait_flags & UI_WAIT_WINDOW)
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#9
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00107$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00200$.
;	skipping generated iCode
	C$vm_ui.c$153$1_1$367	= .
	.globl	C$vm_ui.c$153$1_1$367
;src\core\vm_ui.c:153: if ((win_pos_x != win_dest_pos_x) || (win_pos_y != win_dest_pos_y)) fail = 1;
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_win_pos_x)
; common peephole 17 loaded a from (#_win_pos_x) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_win_dest_pos_x
	sub	a, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00201$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00103$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00202$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_win_pos_y)
; common peephole 17 loaded a from (#_win_pos_y) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_win_dest_pos_y
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00203$.
;	skipping generated iCode
;	genLabel
00103$:
;	genAssign
;	genMove_o size 1
	ld	c, #0x01
;	genLabel
00107$:
	C$vm_ui.c$154$1_1$367	= .
	.globl	C$vm_ui.c$154$1_1$367
;src\core\vm_ui.c:154: if (wait_flags & UI_WAIT_TEXT)
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#9
;	genMove_o size 0
;	genAnd
; common peephole 73 tested bit 1 of (hl) directly instead of going through a.
	bit	1, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00204$.
;	skipping generated iCode
	C$vm_ui.c$155$1_1$367	= .
	.globl	C$vm_ui.c$155$1_1$367
;src\core\vm_ui.c:155: if (!text_drawn) fail = 1;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_text_drawn)
; common peephole 17 loaded a from (#_text_drawn) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00111$
;	genAssign
;	genMove_o size 1
	ld	c, #0x01
;	genLabel
00111$:
	C$vm_ui.c$156$1_1$367	= .
	.globl	C$vm_ui.c$156$1_1$367
;src\core\vm_ui.c:156: if (wait_flags & UI_WAIT_BTN_A)
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#9
;	genMove_o size 0
;	genAnd
; common peephole 73 tested bit 2 of (hl) directly instead of going through a.
	bit	2, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00115$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00205$.
;	skipping generated iCode
	C$vm_ui.c$157$1_1$367	= .
	.globl	C$vm_ui.c$157$1_1$367
;src\core\vm_ui.c:157: if (!INPUT_A_PRESSED) fail = 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
;	genMove_o size 1
	ld	b, #0x00
;	genCpl
	cpl
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
	ld	a, b
	cpl
;	genMove_o size 1
; common peephole 1 removed dead load from a into d.
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into l.
;	spillPairReg hl
;	spillPairReg hl
;	genAnd
	and	a, e
;	genMove_o size 1
;	genMove_o size 0
; common peephole 1 removed dead load from l into a.
; common peephole 6b removed dead and a, d
;	genMove_o size 1
;	genAnd
	bit	4,a
; common peephole 149 tested bit 4 of a directly instead of going through b.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00206$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00115$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00207$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
	ld	c, #0x01
;	genLabel
00115$:
	C$vm_ui.c$158$1_1$367	= .
	.globl	C$vm_ui.c$158$1_1$367
;src\core\vm_ui.c:158: if (wait_flags & UI_WAIT_BTN_B)
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#9
;	genMove_o size 0
;	genAnd
; common peephole 73 tested bit 3 of (hl) directly instead of going through a.
	bit	3, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00119$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00208$.
;	skipping generated iCode
	C$vm_ui.c$159$1_1$367	= .
	.globl	C$vm_ui.c$159$1_1$367
;src\core\vm_ui.c:159: if (!INPUT_B_PRESSED) fail = 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
;	genMove_o size 1
	ld	b, #0x00
;	genCpl
	cpl
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
	ld	a, b
	cpl
;	genMove_o size 1
; common peephole 1 removed dead load from a into d.
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into l.
;	spillPairReg hl
;	spillPairReg hl
;	genAnd
	and	a, e
;	genMove_o size 1
;	genMove_o size 0
; common peephole 1 removed dead load from l into a.
; common peephole 6b removed dead and a, d
;	genMove_o size 1
;	genAnd
	bit	5,a
; common peephole 149 tested bit 5 of a directly instead of going through b.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00209$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00119$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00210$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
	ld	c, #0x01
;	genLabel
00119$:
	C$vm_ui.c$160$1_1$367	= .
	.globl	C$vm_ui.c$160$1_1$367
;src\core\vm_ui.c:160: if (wait_flags & UI_WAIT_BTN_ANY)
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#9
;	genMove_o size 0
;	genAnd
; common peephole 73 tested bit 4 of (hl) directly instead of going through a.
	bit	4, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00123$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00211$.
;	skipping generated iCode
	C$vm_ui.c$161$1_1$367	= .
	.globl	C$vm_ui.c$161$1_1$367
;src\core\vm_ui.c:161: if (!INPUT_ANY_PRESSED) fail = 1;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
;	genMove_o size 1
	ld	b, #0x00
;	genCpl
	cpl
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
	ld	a, b
	cpl
;	genMove_o size 1
	ld	d, a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;	genMove_o size 1
	ld	b, #0x00
;	genAnd
	and	a, e
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
	ld	a, b
	and	a, d
;	genMove_o size 1
;	genIfx
	or	a, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00123$
;	genAssign
;	genMove_o size 1
	ld	c, #0x01
;	genLabel
00123$:
	C$vm_ui.c$163$1_1$367	= .
	.globl	C$vm_ui.c$163$1_1$367
;src\core\vm_ui.c:163: if (fail) {
;	genIfx
	ld	a, c
	or	a, a
	ret	Z
; common peephole 161 replaced jump by return.
	C$vm_ui.c$164$2_1$368	= .
	.globl	C$vm_ui.c$164$2_1$368
;src\core\vm_ui.c:164: THIS->waitable = 1;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x01
	C$vm_ui.c$165$2_1$368	= .
	.globl	C$vm_ui.c$165$2_1$368
;src\core\vm_ui.c:165: THIS->PC -= INSTRUCTION_SIZE + sizeof(is_modal) + sizeof(wait_flags);
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genMinus
; common peephole 9 loaded a from a directly instead of going through l.
; common peephole 0a removed redundant load from a into a.
	add	a, #0xfd
	ld	e, a
	ld	a, h
	adc	a, #0xff
	ld	d, a
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00126$.
	C$vm_ui.c$167$1_1$365	= .
	.globl	C$vm_ui.c$167$1_1$365
;src\core\vm_ui.c:167: }
;	genEndFunction
	C$vm_ui.c$167$1_1$365	= .
	.globl	C$vm_ui.c$167$1_1$365
	XG$vm_overlay_wait$0$0	= .
	.globl	XG$vm_overlay_wait$0$0
	ret
	G$vm_overlay_move_to$0$0	= .
	.globl	G$vm_overlay_move_to$0$0
	C$vm_ui.c$170$1_1$370	= .
	.globl	C$vm_ui.c$170$1_1$370
;src\core\vm_ui.c:170: void vm_overlay_move_to(SCRIPT_CTX * THIS, UBYTE pos_x, UBYTE pos_y, BYTE speed) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_overlay_move_to
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_overlay_move_to	= 255
_vm_overlay_move_to::
	C$vm_ui.c$172$1_0$370	= .
	.globl	C$vm_ui.c$172$1_0$370
;src\core\vm_ui.c:172: if (speed == UI_IN_SPEED) {
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#10
	ld	a, (hl)
	inc	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00130$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00131$.
;	skipping generated iCode
	C$vm_ui.c$173$2_0$371	= .
	.globl	C$vm_ui.c$173$2_0$371
;src\core\vm_ui.c:173: speed = text_in_speed;
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_in_speed)
; common peephole 17 loaded a from (#_text_in_speed) directly instead of using hl.
	ldhl	sp,	#10
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00104$:
	C$vm_ui.c$174$1_0$370	= .
	.globl	C$vm_ui.c$174$1_0$370
;src\core\vm_ui.c:174: } else if (speed == UI_OUT_SPEED) {
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#10
	ld	a, (hl)
	sub	a, #0xfe
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00132$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00105$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00133$.
;	skipping generated iCode
	C$vm_ui.c$175$2_0$372	= .
	.globl	C$vm_ui.c$175$2_0$372
;src\core\vm_ui.c:175: speed = text_out_speed;
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_out_speed)
; common peephole 17 loaded a from (#_text_out_speed) directly instead of using hl.
	ldhl	sp,	#10
	ld	(hl), a
;	genLabel
00105$:
;src\core\vm_ui.c:177: ui_move_to(pos_x << 3, pos_y << 3, speed);
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#10
;	genMove_o size 0
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ld	a, (hl-)
	ld	e, a
; sm83 peephole 3 used ldd to decrement hl after load
;	genMove_o size 0
;	genLeftShift
;	genCast
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96b move dec hl before ld d, a
; common peephole 96b move dec hl before add a, a
; common peephole 96b move dec hl before add a, a
; common peephole 96b move dec hl before add a, a
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	add	a, a
	add	a, a
	add	a, a
	ld	d, a
	ld	a, (hl)
;	genMove_o size 0
;	genLeftShift
	add	a, a
	add	a, a
	add	a, a
;	genAssign
;	genMove_o size 1
	ld	c, e
;	genMove_o size 0
;	genAssign
;	genMove_o size 1
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genAssign
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;include/ui.h:109: win_dest_pos_y = y;
;	genAssign
;	genMove_o size 1
	push	hl
;fetchLitPair	hl
	ld	hl, #_win_dest_pos_y
	ld	(hl), d
	pop	hl
;include/ui.h:110: win_dest_pos_x = x;
;	genAssign
;	genMove_o size 1
	ld	(_win_dest_pos_x), a
;include/ui.h:111: if (speed == UI_SPEED_INSTANT) win_pos_y = y, win_pos_x = x; else win_speed = speed;
;	genCmpEq
	ld	a, e
	sub	a, #0xfd
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00134$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00107$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00135$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
	ld	a, l
	ld	(_win_pos_y), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_win_pos_x
	ld	(hl), b
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00107$:
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_win_speed
	ld	(hl), c
	C$vm_ui.c$177$3_0$370	= .
	.globl	C$vm_ui.c$177$3_0$370
;src\core\vm_ui.c:177: ui_move_to(pos_x << 3, pos_y << 3, speed);
;	genLabel
; common peephole 158 removed unused label 00110$.
	C$vm_ui.c$178$3_0$370	= .
	.globl	C$vm_ui.c$178$3_0$370
;src\core\vm_ui.c:178: }
;	genEndFunction
	C$vm_ui.c$178$3_0$370	= .
	.globl	C$vm_ui.c$178$3_0$370
	XG$vm_overlay_move_to$0$0	= .
	.globl	XG$vm_overlay_move_to$0$0
	ret
	G$vm_overlay_set_scroll$0$0	= .
	.globl	G$vm_overlay_set_scroll$0$0
	C$vm_ui.c$181$3_0$377	= .
	.globl	C$vm_ui.c$181$3_0$377
;src\core\vm_ui.c:181: void vm_overlay_set_scroll(SCRIPT_CTX * THIS, UBYTE x, UBYTE y, UBYTE w, UBYTE h, UBYTE color) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_overlay_set_scroll
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_overlay_set_scroll	= 255
_vm_overlay_set_scroll::
	C$vm_ui.c$183$1_0$377	= .
	.globl	C$vm_ui.c$183$1_0$377
;src\core\vm_ui.c:183: text_scroll_addr = GetWinAddr() + (y << 5) + x;
;	genCall
	call	_GetWinAddr
;	genMove_o size 2
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#9
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, c
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genPlus
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#8
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	e, l
	ld	d, h
;fetchLitPair	hl
	ld	hl, #_text_scroll_addr
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
	C$vm_ui.c$184$1_0$377	= .
	.globl	C$vm_ui.c$184$1_0$377
;src\core\vm_ui.c:184: text_scroll_width = w; text_scroll_height = h;
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#10
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_text_scroll_width),a
; common peephole 19 loaded (#_text_scroll_width) from a directly instead of using hl.
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#11
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_text_scroll_height),a
; common peephole 19 loaded (#_text_scroll_height) from a directly instead of using hl.
	C$vm_ui.c$185$1_0$377	= .
	.globl	C$vm_ui.c$185$1_0$377
;src\core\vm_ui.c:185: text_scroll_fill = (color) ? ui_white_tile : ui_black_tile;
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#12
	ld	a, (hl)
	or	a, a
;	genAssign
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	genMove_o size 1
;	genLabel
	ld	a, #0xc9
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00104$
; common peephole 158 removed unused label 00103$.
	ld	a, #0xca
; common peephole 168z used double assignment in case of Z condition.
00104$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_text_scroll_fill),a
; common peephole 19 loaded (#_text_scroll_fill) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_ui.c$186$1_0$377	= .
	.globl	C$vm_ui.c$186$1_0$377
;src\core\vm_ui.c:186: }
;	genEndFunction
	C$vm_ui.c$186$1_0$377	= .
	.globl	C$vm_ui.c$186$1_0$377
	XG$vm_overlay_set_scroll$0$0	= .
	.globl	XG$vm_overlay_set_scroll$0$0
	ret
	G$vm_overlay_clear$0$0	= .
	.globl	G$vm_overlay_clear$0$0
	C$vm_ui.c$189$1_0$379	= .
	.globl	C$vm_ui.c$189$1_0$379
;src\core\vm_ui.c:189: void vm_overlay_clear(SCRIPT_CTX * THIS, UBYTE x, UBYTE y, UBYTE w, UBYTE h, UBYTE color, UBYTE options) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_overlay_clear
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_overlay_clear	= 255
_vm_overlay_clear::
	C$vm_ui.c$191$1_0$379	= .
	.globl	C$vm_ui.c$191$1_0$379
;src\core\vm_ui.c:191: text_bkg_fill = (color) ? TEXT_BKG_FILL_W : TEXT_BKG_FILL_B;
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#12
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00112$
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00112$:
;	genAssign
;	genMove_o size 1
	ld	a, #0xff
;	genLabel
00113$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_text_bkg_fill),a
; common peephole 19 loaded (#_text_bkg_fill) from a directly instead of using hl.
	C$vm_ui.c$192$1_0$379	= .
	.globl	C$vm_ui.c$192$1_0$379
;src\core\vm_ui.c:192: if (options & UI_DRAW_FRAME) {
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#13
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00108$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00152$.
;	skipping generated iCode
	C$vm_ui.c$193$2_0$380	= .
	.globl	C$vm_ui.c$193$2_0$380
;src\core\vm_ui.c:193: ui_draw_frame(x, y, w, h);
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#11
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96d move dec hl before push (de)
	ld	a, (hl-)
	ld	e, a
; sm83 peephole 3 used ldd to decrement hl after load
	push	de
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
	ld	e, (hl)
	push	de
;	genCall
	ld	e, #b_ui_draw_frame
	ld	hl, #_ui_draw_frame
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
	C$vm_ui.c$194$2_0$380	= .
	.globl	C$vm_ui.c$194$2_0$380
;src\core\vm_ui.c:194: if (options & UI_AUTOSCROLL) vm_overlay_set_scroll(THIS, x + 1, y + 1, w - 2, h - 2, color);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#13
;	genMove_o size 0
;	genAnd
; common peephole 73 tested bit 1 of (hl) directly instead of going through a.
	bit	1, (hl)
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00153$.
;	skipping generated iCode
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#11
;	genMove_o size 0
;	genMinus
;	genCast
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96c move dec hl before dec d
; common peephole 96c move dec hl before dec d
	ld	a, (hl-)
	ld	d, a
; sm83 peephole 3 used ldd to decrement hl after load
	dec	d
	dec	d
;	genMove_o size 0
;	genMinus
;	genCast
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96c move dec hl before dec b
; common peephole 96c move dec hl before dec b
	ld	a, (hl-)
	ld	b, a
; sm83 peephole 3 used ldd to decrement hl after load
	dec	b
	dec	b
;	genMove_o size 0
;	genPlus
;	genCast
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96c move dec hl before inc e
	ld	a, (hl-)
	ld	e, a
; sm83 peephole 3 used ldd to decrement hl after load
	inc	e
	ld	a, (hl)
;	genMove_o size 0
;	genPlus
	inc	a
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
	push	de
	inc	sp
;	genIpush
	push	bc
	inc	sp
;	genIpush
;	genMove_o size 1
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#11
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genCall
	ld	e, #b_vm_overlay_set_scroll
	ld	hl, #_vm_overlay_set_scroll
	call	___sdcc_bcall_ehl
;	adjustStack by 7
	add	sp, #7
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00108$:
	C$vm_ui.c$197$2_0$381	= .
	.globl	C$vm_ui.c$197$2_0$381
;src\core\vm_ui.c:197: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
	C$vm_ui.c$198$3_0$382	= .
	.globl	C$vm_ui.c$198$3_0$382
;src\core\vm_ui.c:198: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$vm_ui.c$199$3_0$382	= .
	.globl	C$vm_ui.c$199$3_0$382
;src\core\vm_ui.c:199: fill_win_rect(x, y, w, h, overlay_priority | (text_palette & 0x07u));
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_palette)
; common peephole 17 loaded a from (#_text_palette) directly instead of using hl.
;	genAnd
	and	a, #0x07
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_overlay_priority
	ld	c, (hl)
;	genOr
	or	a, c
;	genMove_o size 1
;	genIpush
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96d move dec hl before push (de)
	ld	a, (hl-)
	ld	e, a
; sm83 peephole 3 used ldd to decrement hl after load
	push	de
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
	ld	e, (hl)
	push	de
;	genCall
	call	_fill_win_rect
;	adjustStack by 5
	add	sp, #5
	C$vm_ui.c$200$3_0$382	= .
	.globl	C$vm_ui.c$200$3_0$382
;src\core\vm_ui.c:200: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00104$:
	C$vm_ui.c$203$2_0$381	= .
	.globl	C$vm_ui.c$203$2_0$381
;src\core\vm_ui.c:203: fill_win_rect(x, y, w, h, ((color) ? ui_white_tile : ui_black_tile));
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#12
	ld	a, (hl)
	or	a, a
;	genAssign
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	genMove_o size 1
;	genLabel
	ld	a, #0xc9
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00115$
; common peephole 158 removed unused label 00114$.
	ld	a, #0xca
; common peephole 168z used double assignment in case of Z condition.
00115$:
;	genCast
;	(locations are the same)
;	genIpush
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96d move dec hl before push (de)
	ld	a, (hl-)
	ld	e, a
; sm83 peephole 3 used ldd to decrement hl after load
	push	de
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
	ld	e, (hl)
	push	de
;	genCall
	call	_fill_win_rect
;	adjustStack by 5
	add	sp, #5
	C$vm_ui.c$204$2_0$381	= .
	.globl	C$vm_ui.c$204$2_0$381
;src\core\vm_ui.c:204: if (options & UI_AUTOSCROLL) vm_overlay_set_scroll(THIS, x, y, w, h, color);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#13
;	genMove_o size 0
;	genAnd
; common peephole 73 tested bit 1 of (hl) directly instead of going through a.
	bit	1, (hl)
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00154$.
;	skipping generated iCode
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96d move dec hl before push (de)
	ld	a, (hl-)
	ld	e, a
; sm83 peephole 3 used ldd to decrement hl after load
	push	de
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96d move dec hl before push (de)
	ld	a, (hl-)
	ld	e, a
; sm83 peephole 3 used ldd to decrement hl after load
	push	de
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
; common peephole 96c move dec hl before inc sp
; common peephole 96d move dec hl before push (af)
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
; common peephole 96c move dec hl before inc sp
; common peephole 96d move dec hl before push (af)
	dec	hl
	push	af
	inc	sp
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genCall
	ld	e, #b_vm_overlay_set_scroll
	ld	hl, #_vm_overlay_set_scroll
	call	___sdcc_bcall_ehl
;	adjustStack by 7
	add	sp, #7
;	genLabel
; common peephole 158 removed unused label 00110$.
	C$vm_ui.c$206$1_0$379	= .
	.globl	C$vm_ui.c$206$1_0$379
;src\core\vm_ui.c:206: }
;	genEndFunction
	C$vm_ui.c$206$1_0$379	= .
	.globl	C$vm_ui.c$206$1_0$379
	XG$vm_overlay_clear$0$0	= .
	.globl	XG$vm_overlay_clear$0$0
	ret
	G$vm_overlay_show$0$0	= .
	.globl	G$vm_overlay_show$0$0
	C$vm_ui.c$209$1_0$384	= .
	.globl	C$vm_ui.c$209$1_0$384
;src\core\vm_ui.c:209: void vm_overlay_show(SCRIPT_CTX * THIS, UBYTE pos_x, UBYTE pos_y, UBYTE color, UBYTE options) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_overlay_show
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_overlay_show	= 255
_vm_overlay_show::
	C$vm_ui.c$211$1_0$384	= .
	.globl	C$vm_ui.c$211$1_0$384
;src\core\vm_ui.c:211: if ((pos_x < 20u) && (pos_y < 18u)) vm_overlay_clear(THIS, 0, 0, 20u - pos_x, 18u - pos_y, color, options);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#8
	ld	a, (hl)
	sub	a, #0x14
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00102$
;	skipping generated iCode
;	genCmpLt
;	AOP_STK for 
	inc	hl
	ld	a, (hl)
	sub	a, #0x12
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00102$
;	skipping generated iCode
;	genMinus
;	AOP_STK for 
	ld	a, #0x12
	sub	a, (hl)
;	genMinus
;	AOP_STK for 
; common peephole 96b move dec hl before ld a, #0x14
; common peephole 96b move dec hl before ld b, a
	dec	hl
	ld	b, a
	ld	a, #0x14
	sub	a, (hl)
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#11
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#11
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genIpush
	ld	l, b
; common peephole 38 combined pushing of h and b.
	push	hl
;	genIpush
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
;	genIpush
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genCall
	ld	e, #b_vm_overlay_clear
	ld	hl, #_vm_overlay_clear
	call	___sdcc_bcall_ehl
;	adjustStack by 8
	add	sp, #8
;	genLabel
00102$:
;src\core\vm_ui.c:212: ui_set_pos(pos_x << 3, pos_y << 3);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#9
;	genMove_o size 0
;	genLeftShift
;	genCast
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96b move dec hl before ld c, a
; common peephole 96b move dec hl before add a, a
; common peephole 96b move dec hl before add a, a
; common peephole 96b move dec hl before add a, a
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	add	a, a
	add	a, a
	add	a, a
	ld	c, a
	ld	a, (hl)
;	genMove_o size 0
;	genLeftShift
	add	a, a
	add	a, a
	add	a, a
;include/ui.h:104: win_pos_y = win_dest_pos_y = y;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_win_dest_pos_y
	ld	(hl), c
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_win_pos_y
	ld	(hl), c
;include/ui.h:105: win_pos_x = win_dest_pos_x = x;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_win_dest_pos_x),a
; common peephole 19 loaded (#_win_dest_pos_x) from a directly instead of using hl.
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_win_pos_x),a
; common peephole 19 loaded (#_win_pos_x) from a directly instead of using hl.
	C$vm_ui.c$212$3_0$384	= .
	.globl	C$vm_ui.c$212$3_0$384
;src\core\vm_ui.c:212: ui_set_pos(pos_x << 3, pos_y << 3);
;	genLabel
; common peephole 158 removed unused label 00105$.
	C$vm_ui.c$213$3_0$384	= .
	.globl	C$vm_ui.c$213$3_0$384
;src\core\vm_ui.c:213: }
;	genEndFunction
	C$vm_ui.c$213$3_0$384	= .
	.globl	C$vm_ui.c$213$3_0$384
	XG$vm_overlay_show$0$0	= .
	.globl	XG$vm_overlay_show$0$0
	ret
	G$vm_choice$0$0	= .
	.globl	G$vm_choice$0$0
	C$vm_ui.c$215$3_0$389	= .
	.globl	C$vm_ui.c$215$3_0$389
;src\core\vm_ui.c:215: void vm_choice(SCRIPT_CTX * THIS, INT16 idx, UBYTE options, UBYTE count) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_choice
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
	b_vm_choice	= 255
_vm_choice::
;	adjustStack by -6
	add	sp, #-6
	C$vm_ui.c$216$1_0$389	= .
	.globl	C$vm_ui.c$216$1_0$389
;src\core\vm_ui.c:216: INT16 * v = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#15
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#14
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00104$
;	genLabel
00103$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#14
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genCast
;	(locations are the same)
;	genLabel
00104$:
;	genCast
;	genMove_o size 2
	ld	a, l
	ld	c, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_choice_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
;	genMove_o size 0
	C$vm_ui.c$217$1_0$389	= .
	.globl	C$vm_ui.c$217$1_0$389
;src\core\vm_ui.c:217: *v = (count) ? ui_run_menu((menu_item_t *)(THIS->PC), THIS->bank, options, count, MAX(1, MIN(count, *v))) : 0;
;	genAssign
;	AOP_STK for _vm_choice_sloc0_1_0
;	AOP_STK for _vm_choice_sloc1_1_0
;	genMove_o size 2
	ld	a, c
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	inc	hl
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#17
	ld	a, (hl)
	or	a, a
	jp	Z, 00105$
;	genPointerGet
;	AOP_STK for _vm_choice_sloc0_1_0
;	AOP_STK for _vm_choice_sloc2_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#17
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genCmpLt
;	AOP_STK for _vm_choice_sloc2_1_0
	ldhl	sp,	#4
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00145$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00146$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00146$
00145$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00146$
	scf
00146$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00109$
;	skipping generated iCode
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#17
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00109$:
;	genPointerGet
;	AOP_STK for _vm_choice_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
	inc	de
	ld	a, (de)
	ld	b, a
;	genLabel
00110$:
;	genCmpGt
	ld	a, c
	sub	a, #0x01
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00107$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	ld	c, #0x01
; common peephole 6b removed dead xor a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00107$:
;	genPointerGet
;	AOP_STK for _vm_choice_sloc0_1_0
;	AOP_STK for _vm_choice_sloc3_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ldhl	sp,	#4
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#17
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genCmpLt
;	AOP_STK for _vm_choice_sloc3_1_0
	ldhl	sp,	#4
	ld	a, c
	sub	a, (hl)
	inc	hl
	ld	a, b
	sbc	a, (hl)
	ld	a, b
	ld	d, a
; common peephole 73 tested bit 7 of (hl) directly instead of going through e.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00147$
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00148$
	cp	a, a
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00148$
00147$:
	bit	7, d
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00148$
	scf
00148$:
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00111$
;	skipping generated iCode
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#17
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
; common peephole 6b removed dead xor a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00111$:
;	genPointerGet
;	AOP_STK for _vm_choice_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ld	c, a
; common peephole 2c removed inc de due to unused result.
; common peephole 1 removed dead load from (de) into a.
;	genLabel
00112$:
;	genAssign
;	(locations are the same)
;	genLabel
00108$:
;	genCast
;	AOP_STK for _vm_choice_sloc4_1_0
;	genMove_o size 1
	ldhl	sp,	#4
	ld	(hl), c
;	genMove_o size 0
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
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
;	AOP_STK for _vm_choice_sloc5_1_0
	ld	a, (de)
;	genMove_o size 1
	ldhl	sp,	#5
	ld	(hl), a
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genIpush
;	AOP_STK for _vm_choice_sloc4_1_0
;	genMove_o size 1
	ldhl	sp,	#4
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#18
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
	ld	e, (hl)
	push	de
;	genIpush
;	AOP_STK for _vm_choice_sloc5_1_0
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
	push	bc
;	genCall
	ld	e, #b_ui_run_menu
	ld	hl, #_ui_run_menu
	call	___sdcc_bcall_ehl
;	adjustStack by 6
	add	sp, #6
;	genMove_o size 1
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0x0000
;	genLabel
00106$:
;	genAssign (pointer)
;	AOP_STK for _vm_choice_sloc1_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm_ui.c$218$1_0$389	= .
	.globl	C$vm_ui.c$218$1_0$389
;src\core\vm_ui.c:218: THIS->PC += sizeof(menu_item_t) * count;
;	genAssign
;	AOP_STK for 
;	AOP_STK for _vm_choice_sloc6_1_0
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl)
	ldhl	sp,	#2
	ld	(hl), a
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#3
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_choice_sloc6_1_0
;	AOP_STK for _vm_choice_sloc7_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move inc hl before ld a, (de)
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genMult
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#17
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_choice_sloc7_1_0
;fetchPairLong
	ldhl	sp,	#4
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_choice_sloc6_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_ui.c$219$1_0$389	= .
	.globl	C$vm_ui.c$219$1_0$389
;src\core\vm_ui.c:219: }
;	genEndFunction
;	adjustStack by 6
	add	sp, #6
	C$vm_ui.c$219$1_0$389	= .
	.globl	C$vm_ui.c$219$1_0$389
	XG$vm_choice$0$0	= .
	.globl	XG$vm_choice$0$0
	ret
	G$vm_set_font$0$0	= .
	.globl	G$vm_set_font$0$0
	C$vm_ui.c$221$1_0$391	= .
	.globl	C$vm_ui.c$221$1_0$391
;src\core\vm_ui.c:221: void vm_set_font(SCRIPT_CTX * THIS, UBYTE font_index) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_set_font
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_set_font	= 255
_vm_set_font::
	C$vm_ui.c$223$1_0$391	= .
	.globl	C$vm_ui.c$223$1_0$391
;src\core\vm_ui.c:223: vwf_current_font_idx = font_index;
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	c, (hl)
;	genMove_o size 0
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_vwf_current_font_idx
	ld	(hl), c
	C$vm_ui.c$224$1_0$391	= .
	.globl	C$vm_ui.c$224$1_0$391
;src\core\vm_ui.c:224: vwf_current_font_bank = ui_fonts[font_index].bank;
;	skipping iCode since result will be rematerialized
;	genMult
;fetchPairLong
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_ui_fonts
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_vwf_current_font_bank),a
; common peephole 19 loaded (#_vwf_current_font_bank) from a directly instead of using hl.
	C$vm_ui.c$225$1_0$391	= .
	.globl	C$vm_ui.c$225$1_0$391
;src\core\vm_ui.c:225: MemcpyBanked(&vwf_current_font_desc, ui_fonts[font_index].ptr, sizeof(font_desc_t), vwf_current_font_bank);
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
;	genPlus
	ld	hl,#_ui_fonts + 1
	add	hl,bc
; common peephole 129c moved increment of hl to constant.
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_vwf_current_font_bank)
; common peephole 17 loaded a from (#_vwf_current_font_bank) directly instead of using hl.
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0008
	push	de
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_vwf_current_font_desc
;	genCall
	call	_MemcpyBanked
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_ui.c$226$1_0$391	= .
	.globl	C$vm_ui.c$226$1_0$391
;src\core\vm_ui.c:226: }
;	genEndFunction
	C$vm_ui.c$226$1_0$391	= .
	.globl	C$vm_ui.c$226$1_0$391
	XG$vm_set_font$0$0	= .
	.globl	XG$vm_set_font$0$0
	ret
	G$vm_overlay_scroll$0$0	= .
	.globl	G$vm_overlay_scroll$0$0
	C$vm_ui.c$228$1_0$393	= .
	.globl	C$vm_ui.c$228$1_0$393
;src\core\vm_ui.c:228: void vm_overlay_scroll(SCRIPT_CTX * THIS, UBYTE x, UBYTE y, UBYTE w, UBYTE h, UBYTE color) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_overlay_scroll
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_overlay_scroll	= 255
_vm_overlay_scroll::
	C$vm_ui.c$230$1_1$394	= .
	.globl	C$vm_ui.c$230$1_1$394
;src\core\vm_ui.c:230: UBYTE * base_addr = GetWinAddr() + (y << 5) + x;
;	genCall
	call	_GetWinAddr
;	genMove_o size 2
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#9
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genLeftShift
;fetchPairLong
	ld	l, c
	ld	h, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genPlus
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;	AOP_STK for 
;fetchPairLong
	ldhl	sp,	#8
	ld	l, (hl)
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
	C$vm_ui.c$232$1_1$394	= .
	.globl	C$vm_ui.c$232$1_1$394
;src\core\vm_ui.c:232: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$vm_ui.c$233$2_1$395	= .
	.globl	C$vm_ui.c$233$2_1$395
;src\core\vm_ui.c:233: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$vm_ui.c$234$2_1$395	= .
	.globl	C$vm_ui.c$234$2_1$395
;src\core\vm_ui.c:234: scroll_rect(base_addr, w, h, overlay_priority | (text_palette & 0x07u));
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_text_palette)
; common peephole 17 loaded a from (#_text_palette) directly instead of using hl.
;	genAnd
	and	a, #0x07
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_overlay_priority
	ld	e, (hl)
;	genOr
	or	a, e
;	genMove_o size 1
;	genIpush
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
	ld	e, (hl)
	push	de
;	genIpush
	push	bc
;	genCall
	ld	e, #b_scroll_rect
	ld	hl, #_scroll_rect
	call	___sdcc_bcall_ehl
;	adjustStack by 5
	add	sp, #5
	C$vm_ui.c$235$2_1$395	= .
	.globl	C$vm_ui.c$235$2_1$395
;src\core\vm_ui.c:235: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00102$:
	C$vm_ui.c$238$1_1$394	= .
	.globl	C$vm_ui.c$238$1_1$394
;src\core\vm_ui.c:238: scroll_rect(base_addr, w, h, ((color) ? ui_white_tile : ui_black_tile));
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#12
	ld	a, (hl)
	or	a, a
;	genAssign
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	genMove_o size 1
;	genLabel
	ld	a, #0xc9
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00106$
; common peephole 158 removed unused label 00105$.
	ld	a, #0xca
; common peephole 168z used double assignment in case of Z condition.
00106$:
;	genCast
;	(locations are the same)
;	genIpush
	push	af
	inc	sp
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
	ld	e, (hl)
	push	de
;	genIpush
	push	bc
;	genCall
	ld	e, #b_scroll_rect
	ld	hl, #_scroll_rect
	call	___sdcc_bcall_ehl
;	adjustStack by 5
	add	sp, #5
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$vm_ui.c$239$1_1$393	= .
	.globl	C$vm_ui.c$239$1_1$393
;src\core\vm_ui.c:239: }
;	genEndFunction
	C$vm_ui.c$239$1_1$393	= .
	.globl	C$vm_ui.c$239$1_1$393
	XG$vm_overlay_scroll$0$0	= .
	.globl	XG$vm_overlay_scroll$0$0
	ret
	G$vm_overlay_set_submap$0$0	= .
	.globl	G$vm_overlay_set_submap$0$0
	C$vm_ui.c$243$1_1$398	= .
	.globl	C$vm_ui.c$243$1_1$398
;src\core\vm_ui.c:243: void vm_overlay_set_submap(SCRIPT_CTX * THIS, UBYTE x, UBYTE y, UBYTE w, UBYTE h, UBYTE scene_x, UBYTE scene_y) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_overlay_set_submap
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_overlay_set_submap	= 255
_vm_overlay_set_submap::
	C$vm_ui.c$245$1_1$398	= .
	.globl	C$vm_ui.c$245$1_1$398
;src\core\vm_ui.c:245: UWORD offset = (scene_y * image_tile_width) + scene_x;
;	genSend
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	ld	e, (hl)
;	genSend
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#13
	ld	a, (hl)
;	genMove_o size 0
;	genCall
	call	__muluchar
;	genMove_o size 2
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
	ld	a, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	e, #0x00
;	genPlus
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
;	genAssign
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	C$vm_ui.c$247$1_1$399	= .
	.globl	C$vm_ui.c$247$1_1$399
;src\core\vm_ui.c:247: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$vm_ui.c$248$2_1$400	= .
	.globl	C$vm_ui.c$248$2_1$400
;src\core\vm_ui.c:248: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$vm_ui.c$249$2_1$400	= .
	.globl	C$vm_ui.c$249$2_1$400
;src\core\vm_ui.c:249: set_xy_win_submap(image_attr_ptr + offset, image_attr_bank, image_tile_width, x, y, w, h);
;	genPlus
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_image_attr_ptr
	add	a, (hl)
;fetchLitPair	hl
; common peephole 96b move inc hl before ld a, b
; common peephole 96b move inc hl before ld e, a
	inc	hl
	ld	e, a
	ld	a, b
	adc	a, (hl)
	ld	d, a
;	genIpush
	push	bc
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#13
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through bc instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	b, a
; common peephole 9 loaded c from (hl) directly instead of going through a.
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96d move dec hl before push (bc)
	ld	a, (hl-)
	ld	c, a
; sm83 peephole 3 used ldd to decrement hl after load
	push	bc
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through bc instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	b, a
; common peephole 9 loaded c from (hl) directly instead of going through a.
	ld	c, (hl)
	push	bc
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_image_attr_bank) directly instead of using hl.
	ld	a, (#_image_tile_width)
	ld	h, a
	ld	a, (#_image_attr_bank)
	ld	l, a
; common peephole 44b combined pushing of (#_image_tile_width) and (#_image_attr_bank).
	push	hl
;	genIpush
	push	de
;	genCall
	call	_set_xy_win_submap
;	adjustStack by 8
	add	sp, #8
	pop	bc
	C$vm_ui.c$250$2_1$400	= .
	.globl	C$vm_ui.c$250$2_1$400
;src\core\vm_ui.c:250: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00102$:
	C$vm_ui.c$253$1_1$399	= .
	.globl	C$vm_ui.c$253$1_1$399
;src\core\vm_ui.c:253: set_xy_win_submap(image_ptr + offset, image_bank, image_tile_width, x, y, w, h);
;	genPlus
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_image_ptr
	add	a, (hl)
;fetchLitPair	hl
; common peephole 96b move inc hl before ld a, b
; common peephole 96b move inc hl before ld c, a
	inc	hl
	ld	c, a
	ld	a, b
	adc	a, (hl)
	ld	b, a
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#11
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96d move dec hl before push (de)
	ld	a, (hl-)
	ld	e, a
; sm83 peephole 3 used ldd to decrement hl after load
	push	de
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
	ld	e, (hl)
	push	de
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_image_bank) directly instead of using hl.
	ld	a, (#_image_tile_width)
	ld	h, a
	ld	a, (#_image_bank)
	ld	l, a
; common peephole 44b combined pushing of (#_image_tile_width) and (#_image_bank).
	push	hl
;	genIpush
	push	bc
;	genCall
	call	_set_xy_win_submap
;	adjustStack by 8
	add	sp, #8
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$vm_ui.c$254$1_1$398	= .
	.globl	C$vm_ui.c$254$1_1$398
;src\core\vm_ui.c:254: }
;	genEndFunction
	C$vm_ui.c$254$1_1$398	= .
	.globl	C$vm_ui.c$254$1_1$398
	XG$vm_overlay_set_submap$0$0	= .
	.globl	XG$vm_overlay_set_submap$0$0
	ret
	G$vm_overlay_set_submap_ex$0$0	= .
	.globl	G$vm_overlay_set_submap_ex$0$0
	C$vm_ui.c$256$1_1$402	= .
	.globl	C$vm_ui.c$256$1_1$402
;src\core\vm_ui.c:256: void vm_overlay_set_submap_ex(SCRIPT_CTX * THIS, INT16 params_idx) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_overlay_set_submap_ex
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
	b_vm_overlay_set_submap_ex	= 255
_vm_overlay_set_submap_ex::
;	adjustStack by -6
	add	sp, #-6
	C$vm_ui.c$257$1_0$402	= .
	.globl	C$vm_ui.c$257$1_0$402
;src\core\vm_ui.c:257: set_submap_params_t * params = VM_REF_TO_PTR(params_idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#15
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#14
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#14
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genCast
;	(locations are the same)
;	genLabel
00106$:
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_ui.c$258$1_0$402	= .
	.globl	C$vm_ui.c$258$1_0$402
;src\core\vm_ui.c:258: UWORD offset = (params->scene_y * image_tile_width) + params->scene_x;
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000a
	add	hl, bc
;	genPointerGet
	ld	d, (hl)
;	genSend
	push	bc
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	ld	e, (hl)
;	genSend
;	genMove_o size 1
	ld	a, d
;	genMove_o size 0
;	genCall
	call	__muluchar
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	pop	bc
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genPointerGet
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	a, h
;	genMove_o size 0
;	genAssign
;	AOP_STK for _vm_overlay_set_submap_ex_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl), e
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$vm_ui.c$260$1_0$402	= .
	.globl	C$vm_ui.c$260$1_0$402
;src\core\vm_ui.c:260: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
	C$vm_ui.c$261$2_0$403	= .
	.globl	C$vm_ui.c$261$2_0$403
;src\core\vm_ui.c:261: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$vm_ui.c$262$2_0$403	= .
	.globl	C$vm_ui.c$262$2_0$403
;src\core\vm_ui.c:262: set_xy_win_submap(image_attr_ptr + offset, image_attr_bank, image_tile_width, params->x, params->y, params->w, params->h);
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, bc
;	genPointerGet
;	AOP_STK for _vm_overlay_set_submap_ex_sloc1_1_0
	ld	a, (hl)
;	genMove_o size 1
	ldhl	sp,	#2
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, bc
;	genPointerGet
;	AOP_STK for _vm_overlay_set_submap_ex_sloc2_1_0
	ld	a, (hl)
;	genMove_o size 1
	ldhl	sp,	#3
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	inc	de
	inc	de
;	genPointerGet
;	AOP_STK for _vm_overlay_set_submap_ex_sloc3_1_0
	ld	a, (de)
;	genMove_o size 1
	ldhl	sp,	#4
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_overlay_set_submap_ex_sloc4_1_0
;	genMove_o size 1
; common peephole 96b move inc hl before ld a, (bc)
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, (bc)
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_overlay_set_submap_ex_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_image_attr_ptr
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genIpush
	push	bc
;	AOP_STK for _vm_overlay_set_submap_ex_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#4
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_overlay_set_submap_ex_sloc2_1_0
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), inc, (hl) through bc instead of af.
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, a
; common peephole 9 loaded c from (hl) directly instead of going through a.
;	genIpush
;	AOP_STK for _vm_overlay_set_submap_ex_sloc3_1_0
;	genMove_o size 1
; common peephole 96d move inc hl before push (bc)
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	push	bc
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_overlay_set_submap_ex_sloc4_1_0
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), inc, (hl) through bc instead of af.
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, a
; common peephole 9 loaded c from (hl) directly instead of going through a.
	ld	c, (hl)
	push	bc
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_image_attr_bank) directly instead of using hl.
	ld	a, (#_image_tile_width)
	ld	h, a
	ld	a, (#_image_attr_bank)
	ld	l, a
; common peephole 44b combined pushing of (#_image_tile_width) and (#_image_attr_bank).
	push	hl
;	genIpush
	push	de
;	genCall
	call	_set_xy_win_submap
;	adjustStack by 8
	add	sp, #8
	pop	bc
	C$vm_ui.c$263$2_0$403	= .
	.globl	C$vm_ui.c$263$2_0$403
;src\core\vm_ui.c:263: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00102$:
	C$vm_ui.c$266$1_0$402	= .
	.globl	C$vm_ui.c$266$1_0$402
;src\core\vm_ui.c:266: set_xy_win_submap(image_ptr + offset, image_bank, image_tile_width, params->x, params->y, params->w, params->h);
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0006
	add	hl, bc
;	genPointerGet
;	AOP_STK for _vm_overlay_set_submap_ex_sloc5_1_0
	ld	a, (hl)
;	genMove_o size 1
	ldhl	sp,	#3
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, bc
;	genPointerGet
;	AOP_STK for _vm_overlay_set_submap_ex_sloc6_1_0
	ld	a, (hl)
;	genMove_o size 1
	ldhl	sp,	#4
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	inc	de
	inc	de
;	genPointerGet
;	AOP_STK for _vm_overlay_set_submap_ex_sloc7_1_0
	ld	a, (de)
;	genMove_o size 1
	ldhl	sp,	#5
	ld	(hl), a
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_overlay_set_submap_ex_sloc0_1_0
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_image_ptr
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
	pop	hl
	push	hl
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_overlay_set_submap_ex_sloc5_1_0
;	genMove_o size 1
	ldhl	sp,	#3
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_overlay_set_submap_ex_sloc6_1_0
;	genMove_o size 1
; common peephole 96c move inc hl before inc sp
; common peephole 96d move inc hl before push (af)
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	push	af
	inc	sp
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_overlay_set_submap_ex_sloc7_1_0
;	genMove_o size 1
; common peephole 96c move inc hl before inc sp
; common peephole 96d move inc hl before push (af)
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	push	af
	inc	sp
;	genMove_o size 0
;	genIpush
;	genMove_o size 1
;	genMove_o size 0
; common peephole 9 loaded b from (hl) directly instead of going through a.
	ld	b, (hl)
; common peephole 42 combined pushing of a and c.
	push	bc
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
; common peephole 17 loaded a from (#_image_bank) directly instead of using hl.
	ld	a, (#_image_tile_width)
	ld	h, a
	ld	a, (#_image_bank)
	ld	l, a
; common peephole 44b combined pushing of (#_image_tile_width) and (#_image_bank).
	push	hl
;	genIpush
	push	de
;	genCall
	call	_set_xy_win_submap
;	adjustStack by 8
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$vm_ui.c$267$1_0$402	= .
	.globl	C$vm_ui.c$267$1_0$402
;src\core\vm_ui.c:267: }
;	genEndFunction
;	adjustStack by 6
; peephole sp9 combined SP additions
	add	sp, #14
	C$vm_ui.c$267$1_0$402	= .
	.globl	C$vm_ui.c$267$1_0$402
	XG$vm_overlay_set_submap_ex$0$0	= .
	.globl	XG$vm_overlay_set_submap_ex$0$0
	ret
	G$vm_overlay_set_map$0$0	= .
	.globl	G$vm_overlay_set_map$0$0
	C$vm_ui.c$269$1_0$405	= .
	.globl	C$vm_ui.c$269$1_0$405
;src\core\vm_ui.c:269: void vm_overlay_set_map(SCRIPT_CTX * THIS, INT16 idx, INT16 x_idx, INT16 y_idx, UBYTE bank, const background_t * background) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_overlay_set_map
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 7 bytes.
	b_vm_overlay_set_map	= 255
_vm_overlay_set_map::
;	adjustStack by -7
	add	sp, #-7
	C$vm_ui.c$271$1_0$405	= .
	.globl	C$vm_ui.c$271$1_0$405
;src\core\vm_ui.c:271: UBYTE x = *((x_idx < 0) ? THIS->stack_ptr + x_idx : script_memory + x_idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#18
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#13
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#17
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, e
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00109$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#17
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	sla	c
	rl	b
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, bc
;	genCast
;	(locations are the same)
;	genLabel
00110$:
;	genPointerGet
;	AOP_STK for _vm_overlay_set_map_sloc0_1_0
	ld	a, (hl)
;	genMove_o size 1
	ldhl	sp,	#3
	ld	(hl), a
;	genMove_o size 0
	C$vm_ui.c$272$1_0$405	= .
	.globl	C$vm_ui.c$272$1_0$405
;src\core\vm_ui.c:272: UBYTE y = *((y_idx < 0) ? THIS->stack_ptr + y_idx : script_memory + y_idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#20
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#13
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#19
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	add	a, a
	rl	d
;	genPlus
	add	a, c
	ld	e, a
	ld	a, d
	adc	a, b
	ld	d, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00112$
;	genLabel
00111$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#19
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genMove_o size 0
	add	a, a
	rl	c
;	genPlus
	add	a, #<(_script_memory)
	ld	e, a
	ld	a, c
	adc	a, #>(_script_memory)
;	genCast
;	genMove_o size 2
	ld	d, a
;	genMove_o size 0
;	genLabel
00112$:
;	genPointerGet
;	AOP_STK for _vm_overlay_set_map_sloc1_1_0
	ld	a, (de)
;	genMove_o size 1
	ldhl	sp,	#4
	ld	(hl), a
;	genMove_o size 0
;src\core\vm_ui.c:273: UBYTE w = ReadBankedUBYTE((void *)&(background->width), bank);
;	genAssign
;	AOP_STK for 
;	AOP_STK for _vm_overlay_set_map_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#21
	ld	a, (hl)
	ldhl	sp,	#6
	ld	(hl), a
;	genMove_o size 0
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#22
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
	ld	c, e
	ld	b, d
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genSend
;	AOP_STK for _vm_overlay_set_map_sloc2_1_0
	push	de
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
	pop	de
;	genCast
;	AOP_STK for _vm_overlay_set_map_sloc3_1_0
;	genMove_o size 1
	ldhl	sp,	#5
;	genMove_o size 0
;src\core\vm_ui.c:274: UBYTE h = ReadBankedUBYTE((void *)&(background->height), bank);
;	genPlus
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genSend
;	AOP_STK for _vm_overlay_set_map_sloc2_1_0
;	genMove_o size 1
; common peephole 96c move inc hl before inc de
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	inc	de
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	AOP_STK for _vm_overlay_set_map_sloc4_1_0
;	genMove_o size 1
	ldhl	sp,	#6
	ld	(hl), c
;	genMove_o size 0
	C$vm_ui.c$276$1_0$405	= .
	.globl	C$vm_ui.c$276$1_0$405
;src\core\vm_ui.c:276: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
	C$vm_ui.c$277$2_0$406	= .
	.globl	C$vm_ui.c$277$2_0$406
;src\core\vm_ui.c:277: ReadBankedFarPtr(&tilemap, (void *)&(background->cgb_tilemap_attr), bank);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#22
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x000b
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#21
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
	C$vm_ui.c$278$2_0$406	= .
	.globl	C$vm_ui.c$278$2_0$406
;src\core\vm_ui.c:278: if (tilemap.bank) {
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;	genMove_o size 0
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
	C$vm_ui.c$279$3_0$407	= .
	.globl	C$vm_ui.c$279$3_0$407
;src\core\vm_ui.c:279: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$vm_ui.c$280$3_0$407	= .
	.globl	C$vm_ui.c$280$3_0$407
;src\core\vm_ui.c:280: SetBankedWinTiles(x, y, w, h, tilemap.ptr, tilemap.bank);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl)
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genIpush
	push	bc
	inc	sp
;	genIpush
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	push	bc
;	genIpush
;	AOP_STK for _vm_overlay_set_map_sloc4_1_0
;	genMove_o size 1
	ldhl	sp,	#9
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_overlay_set_map_sloc3_1_0
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
;	genIpush
;	AOP_STK for _vm_overlay_set_map_sloc1_1_0
;	genMove_o size 1
; common peephole 96d move dec hl before push (de)
	ld	a, (hl-)
	ld	e, a
; sm83 peephole 3 used ldd to decrement hl after load
	push	de
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_overlay_set_map_sloc0_1_0
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
	ld	e, (hl)
	push	de
;	genCall
	call	_SetBankedWinTiles
;	adjustStack by 7
	add	sp, #7
	C$vm_ui.c$281$3_0$407	= .
	.globl	C$vm_ui.c$281$3_0$407
;src\core\vm_ui.c:281: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00104$:
	C$vm_ui.c$285$1_0$405	= .
	.globl	C$vm_ui.c$285$1_0$405
;src\core\vm_ui.c:285: _map_tile_offset = *(INT16 *)(VM_REF_TO_PTR(idx));
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#16
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00113$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#13
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#15
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
	ld	b, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00113$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#15
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	add	a, a
	rl	b
;	genPlus
	add	a, #<(_script_memory)
	ld	c, a
	ld	a, b
	adc	a, #>(_script_memory)
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
;	genLabel
00114$:
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#__map_tile_offset),a
; common peephole 19 loaded (#__map_tile_offset) from a directly instead of using hl.
	C$vm_ui.c$286$1_0$405	= .
	.globl	C$vm_ui.c$286$1_0$405
;src\core\vm_ui.c:286: ReadBankedFarPtr(&tilemap, (void *)&(background->tilemap), bank);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#22
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#21
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
	C$vm_ui.c$287$1_0$405	= .
	.globl	C$vm_ui.c$287$1_0$405
;src\core\vm_ui.c:287: SetBankedWinTiles(x, y, w, h, tilemap.ptr, tilemap.bank);
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#0
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genIpush
	push	bc
	inc	sp
;	genIpush
	push	hl
;	genIpush
;	AOP_STK for _vm_overlay_set_map_sloc4_1_0
;	genMove_o size 1
	ldhl	sp,	#9
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_overlay_set_map_sloc3_1_0
;	genMove_o size 1
;	genMove_o size 0
; common peephole 47b pushed (hl), dec, (hl) through de instead of af.
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	ld	d, a
; common peephole 9 loaded e from (hl) directly instead of going through a.
;	genIpush
;	AOP_STK for _vm_overlay_set_map_sloc1_1_0
;	genMove_o size 1
; common peephole 96d move dec hl before push (de)
	ld	a, (hl-)
	ld	e, a
; sm83 peephole 3 used ldd to decrement hl after load
	push	de
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_overlay_set_map_sloc0_1_0
;	genMove_o size 1
; common peephole 96c move dec hl before inc sp
; common peephole 96d move dec hl before push (af)
; sm83 peephole 3b used ldd to decrement hl after load
;	genMove_o size 0
; common peephole 47c pushed (hl-), (hl) through de instead of af.
	ld	a, (hl-)
	ld	d, a
	ld	a, (hl)
	ld	e, a
	push	de
;	genCall
	call	_SetBankedWinTiles
;	adjustStack by 7
	add	sp, #7
	C$vm_ui.c$288$1_0$405	= .
	.globl	C$vm_ui.c$288$1_0$405
;src\core\vm_ui.c:288: _map_tile_offset = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #__map_tile_offset
	ld	(hl), #0x00
;	genLabel
; common peephole 158 removed unused label 00107$.
	C$vm_ui.c$289$1_0$405	= .
	.globl	C$vm_ui.c$289$1_0$405
;src\core\vm_ui.c:289: }
;	genEndFunction
;	adjustStack by 7
	add	sp, #7
	C$vm_ui.c$289$1_0$405	= .
	.globl	C$vm_ui.c$289$1_0$405
	XG$vm_overlay_set_map$0$0	= .
	.globl	XG$vm_overlay_set_map$0$0
	ret
	G$vm_set_text_sound$0$0	= .
	.globl	G$vm_set_text_sound$0$0
	C$vm_ui.c$291$1_0$415	= .
	.globl	C$vm_ui.c$291$1_0$415
;src\core\vm_ui.c:291: void vm_set_text_sound(SCRIPT_CTX * THIS, UBYTE bank, UBYTE * offset, UBYTE channel_mask) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_set_text_sound
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_set_text_sound	= 255
_vm_set_text_sound::
	C$vm_ui.c$293$1_0$415	= .
	.globl	C$vm_ui.c$293$1_0$415
;src\core\vm_ui.c:293: text_sound_bank = bank;
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_text_sound_bank),a
; common peephole 19 loaded (#_text_sound_bank) from a directly instead of using hl.
	C$vm_ui.c$294$1_0$415	= .
	.globl	C$vm_ui.c$294$1_0$415
;src\core\vm_ui.c:294: text_sound_data = offset;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_text_sound_data),a
; common peephole 19 loaded (#_text_sound_data) from a directly instead of using hl.
	ldhl	sp,	#10
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_text_sound_data + 1),a
; common peephole 20 loaded (#_text_sound_data) from a directly instead of using hl.
	C$vm_ui.c$295$1_0$415	= .
	.globl	C$vm_ui.c$295$1_0$415
;src\core\vm_ui.c:295: text_sound_mask = channel_mask;
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#11
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_text_sound_mask),a
; common peephole 19 loaded (#_text_sound_mask) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_ui.c$296$1_0$415	= .
	.globl	C$vm_ui.c$296$1_0$415
;src\core\vm_ui.c:296: }
;	genEndFunction
	C$vm_ui.c$296$1_0$415	= .
	.globl	C$vm_ui.c$296$1_0$415
	XG$vm_set_text_sound$0$0	= .
	.globl	XG$vm_set_text_sound$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
