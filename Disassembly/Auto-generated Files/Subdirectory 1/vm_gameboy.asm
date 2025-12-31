;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm_gameboy
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_VM_GAMEBOY
	.globl ___func_VM_GAMEBOY
	.globl b_music_events_poll
	.globl _music_events_poll
	.globl b_fade_out_modal
	.globl _fade_out_modal
	.globl b_fade_in_modal
	.globl _fade_in_modal
	.globl b_fade_out
	.globl _fade_out
	.globl b_fade_in
	.globl _fade_in
	.globl _MemcpyVRAMBanked
	.globl _ReadBankedUWORD
	.globl _ReadBankedFarPtr
	.globl _SetBankedBkgData
	.globl b_vm_set_sprites_visible
	.globl _vm_set_sprites_visible
	.globl b_vm_input_wait
	.globl _vm_input_wait
	.globl b_vm_context_prepare
	.globl _vm_context_prepare
	.globl b_vm_input_attach
	.globl _vm_input_attach
	.globl b_vm_input_detach
	.globl _vm_input_detach
	.globl b_vm_input_get
	.globl _vm_input_get
	.globl b_vm_fade
	.globl _vm_fade
	.globl b_vm_timer_prepare
	.globl _vm_timer_prepare
	.globl b_vm_timer_set
	.globl _vm_timer_set
	.globl b_vm_timer_stop
	.globl _vm_timer_stop
	.globl b_vm_timer_reset
	.globl _vm_timer_reset
	.globl b_vm_get_tile_xy
	.globl _vm_get_tile_xy
	.globl b_vm_replace_tile
	.globl _vm_replace_tile
	.globl b_vm_poll
	.globl _vm_poll
	.globl b_vm_set_sprite_mode
	.globl _vm_set_sprite_mode
	.globl b_vm_replace_tile_xy
	.globl _vm_replace_tile_xy
	.globl b_vm_rumble
	.globl _vm_rumble
	.globl b_vm_load_tileset
	.globl _vm_load_tileset
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
	G$__func_VM_GAMEBOY$0$0	= .
	.globl	G$__func_VM_GAMEBOY$0$0
	C$vm_gameboy.c$19$0_0$379	= .
	.globl	C$vm_gameboy.c$19$0_0$379
;src\core\vm_gameboy.c:19: BANKREF(VM_GAMEBOY)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_VM_GAMEBOY
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_VM_GAMEBOY	= 255
___func_VM_GAMEBOY::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_VM_GAMEBOY 
	___bank_VM_GAMEBOY = b___func_VM_GAMEBOY 
	.globl ___bank_VM_GAMEBOY 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	G$vm_set_sprites_visible$0$0	= .
	.globl	G$vm_set_sprites_visible$0$0
	C$vm_gameboy.c$21$1_0$381	= .
	.globl	C$vm_gameboy.c$21$1_0$381
;src\core\vm_gameboy.c:21: void vm_set_sprites_visible(SCRIPT_CTX * THIS, UBYTE mode) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_set_sprites_visible
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_set_sprites_visible	= 255
_vm_set_sprites_visible::
	C$vm_gameboy.c$23$1_0$381	= .
	.globl	C$vm_gameboy.c$23$1_0$381
;src\core\vm_gameboy.c:23: if (hide_sprites = mode) SHOW_SPRITES; else HIDE_SPRITES;
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_hide_sprites),a
; common peephole 19 loaded (#_hide_sprites) from a directly instead of using hl.
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	genOr
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x02
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
;	genAnd
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfd
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$vm_gameboy.c$24$1_0$381	= .
	.globl	C$vm_gameboy.c$24$1_0$381
;src\core\vm_gameboy.c:24: }
;	genEndFunction
	C$vm_gameboy.c$24$1_0$381	= .
	.globl	C$vm_gameboy.c$24$1_0$381
	XG$vm_set_sprites_visible$0$0	= .
	.globl	XG$vm_set_sprites_visible$0$0
	ret
	G$vm_input_wait$0$0	= .
	.globl	G$vm_input_wait$0$0
	C$vm_gameboy.c$26$1_0$383	= .
	.globl	C$vm_gameboy.c$26$1_0$383
;src\core\vm_gameboy.c:26: void vm_input_wait(SCRIPT_CTX * THIS, UBYTE mask) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_input_wait
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_input_wait	= 255
_vm_input_wait::
	C$vm_gameboy.c$27$1_0$383	= .
	.globl	C$vm_gameboy.c$27$1_0$383
;src\core\vm_gameboy.c:27: if ((joy != last_joy) && (joy & mask)) return;
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_last_joy
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00118$.
;	skipping generated iCode
;	genAnd
;	AOP_STK for 
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
	ldhl	sp,	#8
;	genMove_o size 1
;	genIfx
	and	a,(hl)
; common peephole 100 removed redundant or after and.
;	genRet
;	genLabel
	ret	NZ
; common peephole 161 replaced jump by return.
; common peephole 82 removed jp by using inverse jump logic
00102$:
	C$vm_gameboy.c$28$1_0$383	= .
	.globl	C$vm_gameboy.c$28$1_0$383
;src\core\vm_gameboy.c:28: THIS->waitable = 1;
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
	C$vm_gameboy.c$29$1_0$383	= .
	.globl	C$vm_gameboy.c$29$1_0$383
;src\core\vm_gameboy.c:29: THIS->PC -= INSTRUCTION_SIZE + sizeof(mask);
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
;fetchPairLong
; common peephole 9 loaded e from a directly instead of going through l.
	ld	e, a
	ld	d, h
	dec	de
	dec	de
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$vm_gameboy.c$30$1_0$383	= .
	.globl	C$vm_gameboy.c$30$1_0$383
;src\core\vm_gameboy.c:30: }
;	genEndFunction
	C$vm_gameboy.c$30$1_0$383	= .
	.globl	C$vm_gameboy.c$30$1_0$383
	XG$vm_input_wait$0$0	= .
	.globl	XG$vm_input_wait$0$0
	ret
	G$vm_context_prepare$0$0	= .
	.globl	G$vm_context_prepare$0$0
	C$vm_gameboy.c$32$1_0$385	= .
	.globl	C$vm_gameboy.c$32$1_0$385
;src\core\vm_gameboy.c:32: void vm_context_prepare(SCRIPT_CTX * THIS, UBYTE slot, UBYTE bank, UBYTE * pc) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_context_prepare
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_context_prepare	= 255
_vm_context_prepare::
	C$vm_gameboy.c$34$1_1$386	= .
	.globl	C$vm_gameboy.c$34$1_1$386
;src\core\vm_gameboy.c:34: script_event_t * event = &input_events[(slot - 1) & 7];
;	genAddrOf
	ld	bc, #_input_events+0
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;	genMinus
	dec	a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into d.
;	genAnd
	ld	a, e
	and	a, #0x07
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genMult
;fetchPairLong
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
;	genMove_o size 2
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_gameboy.c$35$1_1$386	= .
	.globl	C$vm_gameboy.c$35$1_1$386
;src\core\vm_gameboy.c:35: event->script_bank = bank;
;	genPlus
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	inc	de
	inc	de
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#9
	C$vm_gameboy.c$36$1_1$386	= .
	.globl	C$vm_gameboy.c$36$1_1$386
;src\core\vm_gameboy.c:36: event->script_addr = pc;
;	genPlus
;	genCast
;	AOP_STK for 
;	genMove_o size 2
; common peephole 96c move inc hl before inc bc
; common peephole 96c move inc hl before inc bc
; common peephole 96c move inc hl before inc bc
; common peephole 96b move inc hl before ld (de), a
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	(de), a
	inc	bc
	inc	bc
	inc	bc
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
; common peephole 158 removed unused label 00101$.
	C$vm_gameboy.c$37$1_1$385	= .
	.globl	C$vm_gameboy.c$37$1_1$385
;src\core\vm_gameboy.c:37: }
;	genEndFunction
	C$vm_gameboy.c$37$1_1$385	= .
	.globl	C$vm_gameboy.c$37$1_1$385
	XG$vm_context_prepare$0$0	= .
	.globl	XG$vm_context_prepare$0$0
	ret
	G$vm_input_attach$0$0	= .
	.globl	G$vm_input_attach$0$0
	C$vm_gameboy.c$39$1_1$388	= .
	.globl	C$vm_gameboy.c$39$1_1$388
;src\core\vm_gameboy.c:39: void vm_input_attach(SCRIPT_CTX * THIS, UBYTE mask, UBYTE slot) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_input_attach
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_input_attach	= 255
_vm_input_attach::
	C$vm_gameboy.c$41$2_0$390	= .
	.globl	C$vm_gameboy.c$41$2_0$390
;src\core\vm_gameboy.c:41: UBYTE * current_slot = input_slots;
;	genAddrOf
	ld	bc, #_input_slots+0
;	genCast
;	(locations are the same)
	C$vm_gameboy.c$42$3_1$390	= .
	.globl	C$vm_gameboy.c$42$3_1$390
;src\core\vm_gameboy.c:42: for (UBYTE tmp = mask; (tmp); tmp = tmp >> 1, current_slot++) {
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	e, (hl)
;	genMove_o size 0
;	genLabel
00105$:
;	genIfx
	ld	a, e
	or	a, a
	ret	Z
; common peephole 161 replaced jump by return.
	C$vm_gameboy.c$43$3_1$391	= .
	.globl	C$vm_gameboy.c$43$3_1$391
;src\core\vm_gameboy.c:43: if (tmp & 1) *current_slot = slot;
;	genAnd
	bit	0, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00128$.
;	skipping generated iCode
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#9
	ld	a, (hl)
	ld	(bc), a
;	genLabel
00106$:
	C$vm_gameboy.c$42$2_1$390	= .
	.globl	C$vm_gameboy.c$42$2_1$390
;src\core\vm_gameboy.c:42: for (UBYTE tmp = mask; (tmp); tmp = tmp >> 1, current_slot++) {
;	genRightShift
	srl	e
;	genPlus
	inc	bc
;	genGoto
;	genLabel
; common peephole 158 removed unused label 00107$.
	C$vm_gameboy.c$45$2_1$388	= .
	.globl	C$vm_gameboy.c$45$2_1$388
;src\core\vm_gameboy.c:45: }
;	genEndFunction
	C$vm_gameboy.c$45$2_1$388	= .
	.globl	C$vm_gameboy.c$45$2_1$388
	XG$vm_input_attach$0$0	= .
	.globl	XG$vm_input_attach$0$0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
; common peephole 152 removed unused ret.
	G$vm_input_detach$0$0	= .
	.globl	G$vm_input_detach$0$0
	C$vm_gameboy.c$47$2_1$393	= .
	.globl	C$vm_gameboy.c$47$2_1$393
;src\core\vm_gameboy.c:47: void vm_input_detach(SCRIPT_CTX * THIS, UBYTE mask) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_input_detach
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_input_detach	= 255
_vm_input_detach::
	C$vm_gameboy.c$49$2_0$395	= .
	.globl	C$vm_gameboy.c$49$2_0$395
;src\core\vm_gameboy.c:49: UBYTE * current_slot = input_slots;
;	genAddrOf
	ld	bc, #_input_slots+0
;	genCast
;	(locations are the same)
	C$vm_gameboy.c$50$3_1$395	= .
	.globl	C$vm_gameboy.c$50$3_1$395
;src\core\vm_gameboy.c:50: for (UBYTE tmp = mask; (tmp); tmp = tmp >> 1, current_slot++) {
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	e, (hl)
;	genMove_o size 0
;	genLabel
00105$:
;	genIfx
	ld	a, e
	or	a, a
	ret	Z
; common peephole 161 replaced jump by return.
	C$vm_gameboy.c$51$3_1$396	= .
	.globl	C$vm_gameboy.c$51$3_1$396
;src\core\vm_gameboy.c:51: if (tmp & 1) *current_slot = 0;
;	genAnd
	bit	0, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00128$.
;	skipping generated iCode
;	genAssign (pointer)
	xor	a, a
	ld	(bc), a
;	genLabel
00106$:
	C$vm_gameboy.c$50$2_1$395	= .
	.globl	C$vm_gameboy.c$50$2_1$395
;src\core\vm_gameboy.c:50: for (UBYTE tmp = mask; (tmp); tmp = tmp >> 1, current_slot++) {
;	genRightShift
	srl	e
;	genPlus
	inc	bc
;	genGoto
;	genLabel
; common peephole 158 removed unused label 00107$.
	C$vm_gameboy.c$53$2_1$393	= .
	.globl	C$vm_gameboy.c$53$2_1$393
;src\core\vm_gameboy.c:53: }
;	genEndFunction
	C$vm_gameboy.c$53$2_1$393	= .
	.globl	C$vm_gameboy.c$53$2_1$393
	XG$vm_input_detach$0$0	= .
	.globl	XG$vm_input_detach$0$0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
; common peephole 152 removed unused ret.
	G$vm_input_get$0$0	= .
	.globl	G$vm_input_get$0$0
	C$vm_gameboy.c$55$2_1$398	= .
	.globl	C$vm_gameboy.c$55$2_1$398
;src\core\vm_gameboy.c:55: void vm_input_get(SCRIPT_CTX * THIS, INT16 idx, UBYTE joyid) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_input_get
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_input_get	= 255
_vm_input_get::
	C$vm_gameboy.c$56$1_0$398	= .
	.globl	C$vm_gameboy.c$56$1_0$398
;src\core\vm_gameboy.c:56: INT16 * A = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#9
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
;	skipping generated iCode
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
	ldhl	sp,	#8
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
	ldhl	sp,#8
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
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_gameboy.c$57$1_0$398	= .
	.globl	C$vm_gameboy.c$57$1_0$398
;src\core\vm_gameboy.c:57: *A = joypads.joypads[joyid];
;	skipping iCode since result will be rematerialized
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#10
	ld	e, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_joypads + 1)
	ld	d, #0x00
	add	hl, de
;	genPointerGet
	ld	e, (hl)
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	d, #0x00
;	genAssign (pointer)
;fetchPairLong
	ld	a, e
	ld	(bc), a
	inc	bc
	ld	a, d
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_gameboy.c$58$1_0$398	= .
	.globl	C$vm_gameboy.c$58$1_0$398
;src\core\vm_gameboy.c:58: }
;	genEndFunction
	C$vm_gameboy.c$58$1_0$398	= .
	.globl	C$vm_gameboy.c$58$1_0$398
	XG$vm_input_get$0$0	= .
	.globl	XG$vm_input_get$0$0
	ret
	G$vm_fade$0$0	= .
	.globl	G$vm_fade$0$0
	C$vm_gameboy.c$60$1_0$400	= .
	.globl	C$vm_gameboy.c$60$1_0$400
;src\core\vm_gameboy.c:60: void vm_fade(SCRIPT_CTX * THIS, UBYTE mode) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_fade
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_fade	= 255
_vm_fade::
	C$vm_gameboy.c$62$1_0$400	= .
	.globl	C$vm_gameboy.c$62$1_0$400
;src\core\vm_gameboy.c:62: if (mode & FADE_DIR_IN) {
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
;	genMove_o size 0
;	genAnd
; common peephole 73 tested bit 1 of (hl) directly instead of going through a.
	bit	1, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00130$.
;	skipping generated iCode
	C$vm_gameboy.c$63$2_0$401	= .
	.globl	C$vm_gameboy.c$63$2_0$401
;src\core\vm_gameboy.c:63: if (mode & FADE_MODE_MODAL) fade_in_modal(); else fade_in();
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00102$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00131$.
;	skipping generated iCode
;	genCall
	ld	e, #b_fade_in_modal
	ld	hl, #_fade_in_modal
;	genGoto
	jp  ___sdcc_bcall_ehl
; common peephole 135 replaced call at end of function by jump (tail call optimization).
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
;	genCall
	ld	e, #b_fade_in
	ld	hl, #_fade_in
;	genGoto
	jp  ___sdcc_bcall_ehl
; common peephole 135 replaced call at end of function by jump (tail call optimization).
; common peephole 160 replaced jump by return.
;	genLabel
00108$:
	C$vm_gameboy.c$65$2_0$402	= .
	.globl	C$vm_gameboy.c$65$2_0$402
;src\core\vm_gameboy.c:65: if (mode & FADE_MODE_MODAL) fade_out_modal(); else fade_out();
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00105$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00132$.
;	skipping generated iCode
;	genCall
	ld	e, #b_fade_out_modal
	ld	hl, #_fade_out_modal
;	genGoto
	jp  ___sdcc_bcall_ehl
; common peephole 135 replaced call at end of function by jump (tail call optimization).
; common peephole 160 replaced jump by return.
;	genLabel
00105$:
;	genCall
	ld	e, #b_fade_out
	ld	hl, #_fade_out
;	genLabel
; common peephole 158 removed unused label 00110$.
	C$vm_gameboy.c$67$1_0$400	= .
	.globl	C$vm_gameboy.c$67$1_0$400
;src\core\vm_gameboy.c:67: }
;	genEndFunction
	C$vm_gameboy.c$67$1_0$400	= .
	.globl	C$vm_gameboy.c$67$1_0$400
	XG$vm_fade$0$0	= .
	.globl	XG$vm_fade$0$0
	jp  ___sdcc_bcall_ehl
; common peephole 135 replaced call at end of function by jump (tail call optimization).
	G$vm_timer_prepare$0$0	= .
	.globl	G$vm_timer_prepare$0$0
	C$vm_gameboy.c$69$1_0$404	= .
	.globl	C$vm_gameboy.c$69$1_0$404
;src\core\vm_gameboy.c:69: void vm_timer_prepare(SCRIPT_CTX * THIS, UBYTE timer, UBYTE bank, UBYTE * pc) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_timer_prepare
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_timer_prepare	= 255
_vm_timer_prepare::
	C$vm_gameboy.c$71$1_1$405	= .
	.globl	C$vm_gameboy.c$71$1_1$405
;src\core\vm_gameboy.c:71: script_event_t * event = &timer_events[(timer - 1) & 3];
;	genAddrOf
	ld	bc, #_timer_events+0
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;	genMinus
	dec	a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into d.
;	genAnd
	ld	a, e
	and	a, #0x03
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genMult
;fetchPairLong
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
;	genMove_o size 2
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_gameboy.c$72$1_1$405	= .
	.globl	C$vm_gameboy.c$72$1_1$405
;src\core\vm_gameboy.c:72: event->script_bank = bank;
;	genPlus
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	inc	de
	inc	de
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#9
	C$vm_gameboy.c$73$1_1$405	= .
	.globl	C$vm_gameboy.c$73$1_1$405
;src\core\vm_gameboy.c:73: event->script_addr = pc;
;	genPlus
;	genCast
;	AOP_STK for 
;	genMove_o size 2
; common peephole 96c move inc hl before inc bc
; common peephole 96c move inc hl before inc bc
; common peephole 96c move inc hl before inc bc
; common peephole 96b move inc hl before ld (de), a
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	(de), a
	inc	bc
	inc	bc
	inc	bc
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
; common peephole 158 removed unused label 00101$.
	C$vm_gameboy.c$74$1_1$404	= .
	.globl	C$vm_gameboy.c$74$1_1$404
;src\core\vm_gameboy.c:74: }
;	genEndFunction
	C$vm_gameboy.c$74$1_1$404	= .
	.globl	C$vm_gameboy.c$74$1_1$404
	XG$vm_timer_prepare$0$0	= .
	.globl	XG$vm_timer_prepare$0$0
	ret
	G$vm_timer_set$0$0	= .
	.globl	G$vm_timer_set$0$0
	C$vm_gameboy.c$76$1_1$407	= .
	.globl	C$vm_gameboy.c$76$1_1$407
;src\core\vm_gameboy.c:76: void vm_timer_set(SCRIPT_CTX * THIS, UBYTE timer, UBYTE value) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_timer_set
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_timer_set	= 255
_vm_timer_set::
	C$vm_gameboy.c$78$1_1$408	= .
	.globl	C$vm_gameboy.c$78$1_1$408
;src\core\vm_gameboy.c:78: timer_time_t * timer_value = &timer_values[(timer - 1) & 3];
;	genAddrOf
	ld	bc, #_timer_values+0
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;	genMinus
	dec	a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into d.
;	genAnd
	ld	a, e
	and	a, #0x03
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
;fetchPairLong
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_gameboy.c$79$1_1$408	= .
	.globl	C$vm_gameboy.c$79$1_1$408
;src\core\vm_gameboy.c:79: timer_value->value = value;
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#9
	ld	a, (hl)
	ld	(bc), a
	C$vm_gameboy.c$80$1_1$408	= .
	.globl	C$vm_gameboy.c$80$1_1$408
;src\core\vm_gameboy.c:80: timer_value->remains = value;
;	genPlus
	inc	bc
;	genAssign (pointer)
;	AOP_STK for 
	ld	a, (hl)
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_gameboy.c$81$1_1$407	= .
	.globl	C$vm_gameboy.c$81$1_1$407
;src\core\vm_gameboy.c:81: }
;	genEndFunction
	C$vm_gameboy.c$81$1_1$407	= .
	.globl	C$vm_gameboy.c$81$1_1$407
	XG$vm_timer_set$0$0	= .
	.globl	XG$vm_timer_set$0$0
	ret
	G$vm_timer_stop$0$0	= .
	.globl	G$vm_timer_stop$0$0
	C$vm_gameboy.c$83$1_1$410	= .
	.globl	C$vm_gameboy.c$83$1_1$410
;src\core\vm_gameboy.c:83: void vm_timer_stop(SCRIPT_CTX * THIS, UBYTE timer) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_timer_stop
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_timer_stop	= 255
_vm_timer_stop::
	C$vm_gameboy.c$85$1_1$411	= .
	.globl	C$vm_gameboy.c$85$1_1$411
;src\core\vm_gameboy.c:85: timer_time_t * timer_value = &timer_values[(timer - 1) & 3];
;	genAddrOf
	ld	bc, #_timer_values+0
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;	genMinus
	dec	a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into d.
;	genAnd
	ld	a, e
	and	a, #0x03
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
;fetchPairLong
;	genPlus
	add	hl, bc
;	genCast
;	(locations are the same)
	C$vm_gameboy.c$86$1_1$411	= .
	.globl	C$vm_gameboy.c$86$1_1$411
;src\core\vm_gameboy.c:86: timer_value->value = 0;
;	genAssign (pointer)
	ld	(hl), #0x00
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_gameboy.c$87$1_1$410	= .
	.globl	C$vm_gameboy.c$87$1_1$410
;src\core\vm_gameboy.c:87: }
;	genEndFunction
	C$vm_gameboy.c$87$1_1$410	= .
	.globl	C$vm_gameboy.c$87$1_1$410
	XG$vm_timer_stop$0$0	= .
	.globl	XG$vm_timer_stop$0$0
	ret
	G$vm_timer_reset$0$0	= .
	.globl	G$vm_timer_reset$0$0
	C$vm_gameboy.c$89$1_1$413	= .
	.globl	C$vm_gameboy.c$89$1_1$413
;src\core\vm_gameboy.c:89: void vm_timer_reset(SCRIPT_CTX * THIS, UBYTE timer) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_timer_reset
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_vm_timer_reset	= 255
_vm_timer_reset::
	C$vm_gameboy.c$91$1_1$414	= .
	.globl	C$vm_gameboy.c$91$1_1$414
;src\core\vm_gameboy.c:91: timer_time_t * timer_value = &timer_values[(timer - 1) & 3];
;	genAddrOf
	ld	bc, #_timer_values+0
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;	genMinus
	dec	a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	e, a
	rlca
; common peephole 6b removed dead sbc a, a
; common peephole 1 removed dead load from a into d.
;	genAnd
	ld	a, e
	and	a, #0x03
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
;fetchPairLong
;	genPlus
	add	hl, bc
;	genCast
;	(locations are the same)
	C$vm_gameboy.c$92$1_1$414	= .
	.globl	C$vm_gameboy.c$92$1_1$414
;src\core\vm_gameboy.c:92: timer_value->remains = timer_value->value;
;	genPlus
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
	inc	bc
;	genPointerGet
	ld	a, (hl)
;	genAssign (pointer)
	ld	(bc), a
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$vm_gameboy.c$93$1_1$413	= .
	.globl	C$vm_gameboy.c$93$1_1$413
;src\core\vm_gameboy.c:93: }
;	genEndFunction
	C$vm_gameboy.c$93$1_1$413	= .
	.globl	C$vm_gameboy.c$93$1_1$413
	XG$vm_timer_reset$0$0	= .
	.globl	XG$vm_timer_reset$0$0
	ret
	G$vm_get_tile_xy$0$0	= .
	.globl	G$vm_get_tile_xy$0$0
	C$vm_gameboy.c$95$1_1$416	= .
	.globl	C$vm_gameboy.c$95$1_1$416
;src\core\vm_gameboy.c:95: void vm_get_tile_xy(SCRIPT_CTX * THIS, INT16 idx_tile, INT16 idx_x, INT16 idx_y) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_get_tile_xy
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_vm_get_tile_xy	= 255
_vm_get_tile_xy::
;	adjustStack by -4
	add	sp, #-4
	C$vm_gameboy.c$98$1_1$417	= .
	.globl	C$vm_gameboy.c$98$1_1$417
;src\core\vm_gameboy.c:98: INT16 * res = VM_REF_TO_PTR(idx_tile);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
	ldhl	sp,	#12
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
	jr	00108$
;	genLabel
00107$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#12
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
00108$:
;	genCast
;	genMove_o size 2
	ld	a, l
	ld	c, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_get_tile_xy_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
	C$vm_gameboy.c$99$1_1$417	= .
	.globl	C$vm_gameboy.c$99$1_1$417
;src\core\vm_gameboy.c:99: INT16 * X = VM_REF_TO_PTR(idx_x);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#15
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00110$
;	genLabel
00109$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#14
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
;	(locations are the same)
;	genLabel
00110$:
;	genCast
;	(locations are the same)
;	genCast
;	AOP_STK for _vm_get_tile_xy_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$vm_gameboy.c$100$1_1$417	= .
	.globl	C$vm_gameboy.c$100$1_1$417
;src\core\vm_gameboy.c:100: INT16 * Y = VM_REF_TO_PTR(idx_y);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#17
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
	ldhl	sp,	#16
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
	jr	00112$
;	genLabel
00111$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#16
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
00112$:
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
	C$vm_gameboy.c$102$1_1$417	= .
	.globl	C$vm_gameboy.c$102$1_1$417
;src\core\vm_gameboy.c:102: UWORD ofs = (image_tile_width * ((UBYTE)*Y)) + ((UBYTE)*X);
;	genPointerGet
	ld	e, (hl)
;	genSend
;	genMove_o size 1
;	genSend
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
;	genCall
	call	__muluchar
;	genMove_o size 2
;	genPointerGet
;	AOP_STK for _vm_get_tile_xy_sloc1_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genCast
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign
;	AOP_STK for _vm_get_tile_xy_sloc2_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;src\core\vm_gameboy.c:103: UBYTE target_tile = ReadBankedUBYTE(image_ptr + ofs, image_bank);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_bank
	ld	c, (hl)
;	genPlus
;	AOP_STK for _vm_get_tile_xy_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_image_ptr
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
	C$vm_gameboy.c$105$1_1$417	= .
	.globl	C$vm_gameboy.c$105$1_1$417
;src\core\vm_gameboy.c:105: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;src\core\vm_gameboy.c:106: UBYTE tartet_attr = ReadBankedUBYTE(image_attr_ptr + ofs, image_attr_bank);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_attr_bank
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_get_tile_xy_sloc2_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
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
;	genSend
	push	bc
;	genMove_o size 1
	ld	a, b
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
	ld	e, c
; common peephole 1 removed dead load from b into d.
;	genMove_o size 0
	pop	bc
;	genCast
;	genMove_o size 1
	C$vm_gameboy.c$107$2_1$418	= .
	.globl	C$vm_gameboy.c$107$2_1$418
;src\core\vm_gameboy.c:107: *res = (((UWORD)tartet_attr) << 8) | target_tile;
;	genCast
;	genMove_o size 1
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into d.
;	genLeftShift
	ld	d, e
	ld	e, #0x00
;	genCast
;	genMove_o size 1
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into b.
;	genOr
;	genMove_o size 1
;	genMove_o size 1
	ld	b, d
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _vm_get_tile_xy_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	(hl), c
	inc	hl
	ld	(hl), b
	C$vm_gameboy.c$108$2_1$418	= .
	.globl	C$vm_gameboy.c$108$2_1$418
;src\core\vm_gameboy.c:108: return;
;	genRet
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00102$:
	C$vm_gameboy.c$111$1_1$417	= .
	.globl	C$vm_gameboy.c$111$1_1$417
;src\core\vm_gameboy.c:111: *res = target_tile;
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	b, #0x00
;	genAssign (pointer)
;	AOP_STK for _vm_get_tile_xy_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	(hl), c
	inc	hl
	ld	(hl), b
;	genLabel
00105$:
	C$vm_gameboy.c$112$1_1$416	= .
	.globl	C$vm_gameboy.c$112$1_1$416
;src\core\vm_gameboy.c:112: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$vm_gameboy.c$112$1_1$416	= .
	.globl	C$vm_gameboy.c$112$1_1$416
	XG$vm_get_tile_xy$0$0	= .
	.globl	XG$vm_get_tile_xy$0$0
	ret
	G$vm_replace_tile$0$0	= .
	.globl	G$vm_replace_tile$0$0
	C$vm_gameboy.c$114$1_1$426	= .
	.globl	C$vm_gameboy.c$114$1_1$426
;src\core\vm_gameboy.c:114: void vm_replace_tile(SCRIPT_CTX * THIS, INT16 idx_target_tile, UBYTE tileset_bank, const tileset_t * tileset, INT16 idx_start_tile, UBYTE length) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_replace_tile
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_vm_replace_tile	= 255
_vm_replace_tile::
;	adjustStack by -4
	add	sp, #-4
	C$vm_gameboy.c$115$1_0$426	= .
	.globl	C$vm_gameboy.c$115$1_0$426
;src\core\vm_gameboy.c:115: INT16 * A = VM_REF_TO_PTR(idx_start_tile);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#18
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
	jr	00106$
;	genLabel
00105$:
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
00106$:
;	genCast
;	genMove_o size 2
	ld	a, l
	ld	c, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_replace_tile_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
	C$vm_gameboy.c$116$1_0$426	= .
	.globl	C$vm_gameboy.c$116$1_0$426
;src\core\vm_gameboy.c:116: INT16 * B = VM_REF_TO_PTR(idx_target_tile);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
	ldhl	sp,	#12
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
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00107$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#12
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
;	(locations are the same)
;	genLabel
00108$:
;	genCast
;	(locations are the same)
;	genCast
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	C$vm_gameboy.c$118$1_0$426	= .
	.globl	C$vm_gameboy.c$118$1_0$426
;src\core\vm_gameboy.c:118: if (_is_CGB) VBK_REG =  (*B & 0x0800) ? 1 : 0;
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	ld	a,	(hl+)
;	spillPairReg hl
; common peephole 1 removed dead load from a into l.
;	spillPairReg hl
;	spillPairReg hl
;	genAnd
; common peephole 73 tested bit 3 of (hl) directly instead of going through h.
	bit	3, (hl)
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00139$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	genMove_o size 1
;	genLabel
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00110$
; common peephole 169xz used double assignment in case of Z condition.
; common peephole 158 removed unused label 00109$.
	xor	a, a
00110$:
;	genCast
	ldh	(_VBK_REG + 0), a
;	genLabel
00102$:
	C$vm_gameboy.c$120$1_0$426	= .
	.globl	C$vm_gameboy.c$120$1_0$426
;src\core\vm_gameboy.c:120: SetBankedBkgData((UBYTE)(*B), length, tileset->tiles + (*A << 4), tileset_bank);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#15
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_replace_tile_sloc1_1_0
	inc	de
	inc	de
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _vm_replace_tile_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	e, l
	ld	d, h
;	genPlus
;	AOP_STK for _vm_replace_tile_sloc1_1_0
;fetchPairLong
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#14
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
	push	de
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#22
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
	push	af
	inc	sp
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
	add	sp, #5
	C$vm_gameboy.c$122$1_0$426	= .
	.globl	C$vm_gameboy.c$122$1_0$426
;src\core\vm_gameboy.c:122: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
; common peephole 158 removed unused label 00103$.
	C$vm_gameboy.c$124$1_0$426	= .
	.globl	C$vm_gameboy.c$124$1_0$426
;src\core\vm_gameboy.c:124: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$vm_gameboy.c$124$1_0$426	= .
	.globl	C$vm_gameboy.c$124$1_0$426
	XG$vm_replace_tile$0$0	= .
	.globl	XG$vm_replace_tile$0$0
	ret
	G$vm_poll$0$0	= .
	.globl	G$vm_poll$0$0
	C$vm_gameboy.c$126$1_0$428	= .
	.globl	C$vm_gameboy.c$126$1_0$428
;src\core\vm_gameboy.c:126: void vm_poll(SCRIPT_CTX * THIS, INT16 idx, INT16 res, UBYTE event_mask) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_poll
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_vm_poll	= 255
_vm_poll::
;	adjustStack by -4
	add	sp, #-4
	C$vm_gameboy.c$127$1_0$428	= .
	.globl	C$vm_gameboy.c$127$1_0$428
;src\core\vm_gameboy.c:127: INT16 * result_mask = VM_REF_TO_PTR(idx);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
	ldhl	sp,	#12
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
	jr	00112$
;	genLabel
00111$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#12
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
00112$:
;	genCast
;	genMove_o size 2
	ld	a, l
	ld	c, h
;	genMove_o size 0
;	genCast
;	AOP_STK for _vm_poll_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
	C$vm_gameboy.c$128$1_0$428	= .
	.globl	C$vm_gameboy.c$128$1_0$428
;src\core\vm_gameboy.c:128: INT16 * result = VM_REF_TO_PTR(res);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#15
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00113$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
	add	a, c
	ld	c, a
	ld	a, e
	adc	a, b
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00114$
;	genLabel
00113$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#14
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
;	(locations are the same)
;	genLabel
00114$:
;	genCast
;	(locations are the same)
;	genCast
;	AOP_STK for _vm_poll_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#2
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$vm_gameboy.c$129$1_0$428	= .
	.globl	C$vm_gameboy.c$129$1_0$428
;src\core\vm_gameboy.c:129: if (event_mask & POLL_EVENT_INPUT) {
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#16
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	rrca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00104$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00155$.
;	skipping generated iCode
	C$vm_gameboy.c$130$2_0$429	= .
	.globl	C$vm_gameboy.c$130$2_0$429
;src\core\vm_gameboy.c:130: if (joy != last_joy) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_last_joy
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00156$.
;	skipping generated iCode
	C$vm_gameboy.c$131$3_0$430	= .
	.globl	C$vm_gameboy.c$131$3_0$430
;src\core\vm_gameboy.c:131: *result_mask = POLL_EVENT_INPUT;
;	genAssign (pointer)
;	AOP_STK for _vm_poll_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	a, #0x01
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x00
	C$vm_gameboy.c$132$3_0$430	= .
	.globl	C$vm_gameboy.c$132$3_0$430
;src\core\vm_gameboy.c:132: *result = joy;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_frame_joy
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genAssign (pointer)
;	AOP_STK for _vm_poll_sloc1_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm_gameboy.c$133$3_0$430	= .
	.globl	C$vm_gameboy.c$133$3_0$430
;src\core\vm_gameboy.c:133: return;
;	genRet
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00104$:
	C$vm_gameboy.c$136$1_0$428	= .
	.globl	C$vm_gameboy.c$136$1_0$428
;src\core\vm_gameboy.c:136: if (event_mask & POLL_EVENT_MUSIC) {
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#16
	ld	a, (hl)
;	genMove_o size 0
;	genAnd
	bit	1, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00157$.
;	skipping generated iCode
	C$vm_gameboy.c$137$2_0$431	= .
	.globl	C$vm_gameboy.c$137$2_0$431
;src\core\vm_gameboy.c:137: UBYTE poll_res = music_events_poll();
;	genCall
	ld	e, #b_music_events_poll
	ld	hl, #_music_events_poll
	call	___sdcc_bcall_ehl
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	C$vm_gameboy.c$138$2_0$431	= .
	.globl	C$vm_gameboy.c$138$2_0$431
;src\core\vm_gameboy.c:138: if (poll_res) {
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
	C$vm_gameboy.c$139$3_0$432	= .
	.globl	C$vm_gameboy.c$139$3_0$432
;src\core\vm_gameboy.c:139: *result_mask = POLL_EVENT_MUSIC;
;	genAssign (pointer)
;	AOP_STK for _vm_poll_sloc0_1_0
;fetchPairLong
	pop	hl
	push	hl
	ld	a, #0x02
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #0x00
	C$vm_gameboy.c$140$3_0$432	= .
	.globl	C$vm_gameboy.c$140$3_0$432
;src\core\vm_gameboy.c:140: *result = poll_res;
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	b, #0x00
;	genAssign (pointer)
;	AOP_STK for _vm_poll_sloc1_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$vm_gameboy.c$141$3_0$432	= .
	.globl	C$vm_gameboy.c$141$3_0$432
;src\core\vm_gameboy.c:141: return;
;	genRet
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00108$:
	C$vm_gameboy.c$144$1_0$428	= .
	.globl	C$vm_gameboy.c$144$1_0$428
;src\core\vm_gameboy.c:144: THIS->waitable = 1;
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
	C$vm_gameboy.c$145$1_0$428	= .
	.globl	C$vm_gameboy.c$145$1_0$428
;src\core\vm_gameboy.c:145: THIS->PC -= INSTRUCTION_SIZE + sizeof(idx) + sizeof(res) + sizeof(event_mask);
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
	add	a, #0xfa
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
00109$:
	C$vm_gameboy.c$146$1_0$428	= .
	.globl	C$vm_gameboy.c$146$1_0$428
;src\core\vm_gameboy.c:146: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$vm_gameboy.c$146$1_0$428	= .
	.globl	C$vm_gameboy.c$146$1_0$428
	XG$vm_poll$0$0	= .
	.globl	XG$vm_poll$0$0
	ret
	G$vm_set_sprite_mode$0$0	= .
	.globl	G$vm_set_sprite_mode$0$0
	C$vm_gameboy.c$148$1_0$434	= .
	.globl	C$vm_gameboy.c$148$1_0$434
;src\core\vm_gameboy.c:148: void vm_set_sprite_mode(SCRIPT_CTX * THIS, UBYTE mode) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_set_sprite_mode
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_set_sprite_mode	= 255
_vm_set_sprite_mode::
	C$vm_gameboy.c$150$1_0$434	= .
	.globl	C$vm_gameboy.c$150$1_0$434
;src\core\vm_gameboy.c:150: if (mode) SPRITES_8x16; else SPRITES_8x8;
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#8
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;	genOr
	ldh	a, (_LCDC_REG + 0)
	or	a, #0x04
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
;	genAnd
	ldh	a, (_LCDC_REG + 0)
	and	a, #0xfb
;	genMove_o size 1
	ldh	(_LCDC_REG + 0), a
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$vm_gameboy.c$151$1_0$434	= .
	.globl	C$vm_gameboy.c$151$1_0$434
;src\core\vm_gameboy.c:151: }
;	genEndFunction
	C$vm_gameboy.c$151$1_0$434	= .
	.globl	C$vm_gameboy.c$151$1_0$434
	XG$vm_set_sprite_mode$0$0	= .
	.globl	XG$vm_set_sprite_mode$0$0
	ret
	G$vm_replace_tile_xy$0$0	= .
	.globl	G$vm_replace_tile_xy$0$0
	C$vm_gameboy.c$153$1_0$436	= .
	.globl	C$vm_gameboy.c$153$1_0$436
;src\core\vm_gameboy.c:153: void vm_replace_tile_xy(SCRIPT_CTX * THIS, UBYTE x, UBYTE y, UBYTE tileset_bank, const tileset_t * tileset, INT16 idx_start_tile) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_replace_tile_xy
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 4 bytes.
	b_vm_replace_tile_xy	= 255
_vm_replace_tile_xy::
;	adjustStack by -4
	add	sp, #-4
	C$vm_gameboy.c$156$1_1$436	= .
	.globl	C$vm_gameboy.c$156$1_1$436
;src\core\vm_gameboy.c:156: UWORD ofs = (image_tile_width * y) + x;
;	genSend
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#13
	ld	e, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_image_tile_width)
; common peephole 17 loaded a from (#_image_tile_width) directly instead of using hl.
;	genCall
	call	__muluchar
;	genMove_o size 2
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
;	genMove_o size 0
;	genMove_o size 1
;	genPlus
;	AOP_STK for _vm_replace_tile_xy_sloc0_1_0
;fetchPairLong
	ld	l, (hl)
; common peephole 10 loaded l from (hl) directly instead of going through a.
; common peephole 9 loaded h from #0x00 directly instead of going through e.
	ld	h, #0x00
	add	hl, bc
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#4
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#3
	ld	(hl), a
;	genMove_o size 0
;src\core\vm_gameboy.c:157: UBYTE target_tile = ReadBankedUBYTE(image_ptr + ofs, image_bank);
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_bank
	ld	c, (hl)
;	genPlus
;	AOP_STK for _vm_replace_tile_xy_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#2
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_image_ptr
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
	C$vm_gameboy.c$159$1_1$437	= .
	.globl	C$vm_gameboy.c$159$1_1$437
;src\core\vm_gameboy.c:159: if (scene_type == SCENE_TYPE_LOGO) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #_scene_type
	bit	0, (hl)
	jp	Z, 00105$
	C$vm_gameboy.c$160$2_1$438	= .
	.globl	C$vm_gameboy.c$160$2_1$438
;src\core\vm_gameboy.c:160: if (target_tile < 128) {
;	genCmpLt
	ld	a, c
	sub	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00102$
;	skipping generated iCode
	C$vm_gameboy.c$161$3_1$439	= .
	.globl	C$vm_gameboy.c$161$3_1$439
;src\core\vm_gameboy.c:161: ofs = ((y > 9) ? 0x8000 : 0x9000) + (target_tile << 4);
;	genCmpGt
;	AOP_STK for 
	ld	a, #0x09
	ldhl	sp,	#13
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00114$
;	skipping generated iCode
;	genAssign
;	genMove_o size 2
	xor	a, a
	ld	b, #0x80
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00115$
;	genLabel
00114$:
;	genAssign
;	genMove_o size 2
	xor	a, a
	ld	b, #0x90
;	genLabel
00115$:
;	genCast
;	genMove_o size 1
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	e, l
	ld	d, h
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _vm_replace_tile_xy_sloc1_1_0
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
;	genMove_o size 2
	inc	sp
	inc	sp
	push	hl
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
	C$vm_gameboy.c$163$3_1$440	= .
	.globl	C$vm_gameboy.c$163$3_1$440
;src\core\vm_gameboy.c:163: ofs = 0x8800 + ((target_tile - 128) << 4);
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genMove_o size 1
	ld	c, #0x00
;	genMinus
	add	a, #0x80
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
;	genCast
;	(locations are the same)
;	genPlus
;	AOP_STK for _vm_replace_tile_xy_sloc1_1_0
;fetchPairLong
;fetchLitPair	hl
; common peephole 119 removed loads by exploiting commutativity of addition.
	ld	bc,#0x8800
	add	hl,bc
;	genMove_o size 2
	inc	sp
	inc	sp
	push	hl
;	genMove_o size 0
;	genLabel
00103$:
	C$vm_gameboy.c$165$2_1$438	= .
	.globl	C$vm_gameboy.c$165$2_1$438
;src\core\vm_gameboy.c:165: MemcpyVRAMBanked((void *)ofs, tileset->tiles + (*(UINT16 *)(VM_REF_TO_PTR(idx_start_tile)) << 4), 16, tileset_bank);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#15
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_replace_tile_xy_sloc2_1_0
	inc	bc
	inc	bc
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	genMove_o size 0
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#18
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00116$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
	jr	00117$
;	genLabel
00116$:
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
;	genMove_o size 2
;	genMove_o size 0
;	genCast
;	genMove_o size 2
;	spillPairReg hl
;	spillPairReg hl
; common peephole 1 removed dead load from l into e.
; common peephole 1 removed dead load from h into d.
; common peephole 104 removed redundant load from de into hl
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genLabel
00117$:
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genPointerGet
;fetchPairLong
	ld	a,	(hl+)
	ld	h, (hl)
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	genPlus
;	AOP_STK for _vm_replace_tile_xy_sloc2_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genCast
;	AOP_STK for _vm_replace_tile_xy_sloc1_1_0
;	genMove_o size 2
	pop	de
	push	de
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#14
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0010
	push	hl
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	_MemcpyVRAMBanked
	C$vm_gameboy.c$166$2_1$438	= .
	.globl	C$vm_gameboy.c$166$2_1$438
;src\core\vm_gameboy.c:166: return;
;	genRet
	jp	00112$
;	genLabel
00105$:
	C$vm_gameboy.c$170$1_1$437	= .
	.globl	C$vm_gameboy.c$170$1_1$437
;src\core\vm_gameboy.c:170: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
;src\core\vm_gameboy.c:171: if (ReadBankedUBYTE(image_attr_ptr + ofs, image_attr_bank) & 0x08) VBK_REG = 1;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_attr_bank
	ld	b, (hl)
;	genPlus
;	AOP_STK for _vm_replace_tile_xy_sloc0_1_0
;fetchPairLong
;fetchLitPair	hl
;fetchLitPair	hl
; common peephole 130a removed unnecessary +0 from constant
	ld	hl, #_image_attr_ptr
; common peephole 77c decremented immediate.
;fetchLitPair	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
	push	bc
;	genMove_o size 1
	ld	a, b
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
	ld	e, c
; common peephole 1 removed dead load from b into d.
;	genMove_o size 0
	pop	bc
;	genCast
;	genMove_o size 1
;	genCast
;	(locations are the same)
	C$vm_gameboy.c$171$4_1$446	= .
	.globl	C$vm_gameboy.c$171$4_1$446
;src\core\vm_gameboy.c:171: if (ReadBankedUBYTE(image_attr_ptr + ofs, image_attr_bank) & 0x08) VBK_REG = 1;
;	genAnd
	bit	3, e
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00171$.
;	skipping generated iCode
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
;	genLabel
00109$:
	C$vm_gameboy.c$174$1_1$437	= .
	.globl	C$vm_gameboy.c$174$1_1$437
;src\core\vm_gameboy.c:174: SetBankedBkgData(target_tile, 1, tileset->tiles + (*(UINT8 *)(VM_REF_TO_PTR(idx_start_tile)) << 4), tileset_bank);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#15
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genPlus
;	AOP_STK for _vm_replace_tile_xy_sloc3_1_0
	inc	de
	inc	de
;	genMove_o size 2
	ldhl	sp,	#2
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#18
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00118$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#17
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	sla	e
	rl	d
;	genPlus
;	genMove_o size 2
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	add	hl, de
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00119$
;	genLabel
00118$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#17
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	sla	e
	rl	d
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_script_memory
	add	hl, de
;	genCast
;	(locations are the same)
;	genLabel
00119$:
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genPointerGet
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	e, l
	ld	d, h
;	genPlus
;	AOP_STK for _vm_replace_tile_xy_sloc3_1_0
;fetchPairLong
;fetchPairLong
	ldhl	sp,	#2
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#14
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
	push	de
;	genIpush
;	genMove_o size 1
;	genIpush
;	genMove_o size 1
;	genMove_o size 0
; common peephole 9 loaded b from #0x01 directly instead of going through a.
	ld	b, #0x01
; common peephole 42 combined pushing of a and c.
	push	bc
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
	add	sp, #5
	C$vm_gameboy.c$176$1_1$437	= .
	.globl	C$vm_gameboy.c$176$1_1$437
;src\core\vm_gameboy.c:176: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00112$:
	C$vm_gameboy.c$178$1_1$436	= .
	.globl	C$vm_gameboy.c$178$1_1$436
;src\core\vm_gameboy.c:178: }
;	genEndFunction
;	adjustStack by 4
	add	sp, #4
	C$vm_gameboy.c$178$1_1$436	= .
	.globl	C$vm_gameboy.c$178$1_1$436
	XG$vm_replace_tile_xy$0$0	= .
	.globl	XG$vm_replace_tile_xy$0$0
	ret
	G$vm_rumble$0$0	= .
	.globl	G$vm_rumble$0$0
	C$vm_gameboy.c$180$1_1$449	= .
	.globl	C$vm_gameboy.c$180$1_1$449
;src\core\vm_gameboy.c:180: void vm_rumble(SCRIPT_CTX * THIS, UBYTE enable) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_rumble
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_rumble	= 255
_vm_rumble::
	C$vm_gameboy.c$182$1_0$449	= .
	.globl	C$vm_gameboy.c$182$1_0$449
;src\core\vm_gameboy.c:182: if (enable) SWITCH_RAM_BANK(RUMBLE_ENABLE, RUMBLE_ENABLE); else  SWITCH_RAM_BANK(0, RUMBLE_ENABLE);
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#8
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00102$
;include/system.h:16: inline void SWITCH_RAM_BANK(UBYTE bank, UBYTE mask) { SWITCH_RAM(_current_ram_bank = ((_current_ram_bank & ~mask) | (bank & mask))); } 
;	genAnd
;fetchLitPair	hl
	ld	hl, #__current_ram_bank
	ld	a, (hl)
	and	a, #0xf7
;	genMove_o size 1
;	genOr
	set	3, a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rRAMB),a
; common peephole 19 loaded (#_rRAMB) from a directly instead of using hl.
	C$vm_gameboy.c$182$1_0$449	= .
	.globl	C$vm_gameboy.c$182$1_0$449
;src\core\vm_gameboy.c:182: if (enable) SWITCH_RAM_BANK(RUMBLE_ENABLE, RUMBLE_ENABLE); else  SWITCH_RAM_BANK(0, RUMBLE_ENABLE);
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
;include/system.h:16: inline void SWITCH_RAM_BANK(UBYTE bank, UBYTE mask) { SWITCH_RAM(_current_ram_bank = ((_current_ram_bank & ~mask) | (bank & mask))); } 
;	genAnd
;fetchLitPair	hl
	ld	hl, #__current_ram_bank
	ld	a, (hl)
	and	a, #0xf7
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_rRAMB),a
; common peephole 19 loaded (#_rRAMB) from a directly instead of using hl.
	C$vm_gameboy.c$182$1_0$449	= .
	.globl	C$vm_gameboy.c$182$1_0$449
;src\core\vm_gameboy.c:182: if (enable) SWITCH_RAM_BANK(RUMBLE_ENABLE, RUMBLE_ENABLE); else  SWITCH_RAM_BANK(0, RUMBLE_ENABLE);
;	genLabel
; common peephole 158 removed unused label 00106$.
	C$vm_gameboy.c$183$1_0$449	= .
	.globl	C$vm_gameboy.c$183$1_0$449
;src\core\vm_gameboy.c:183: }
;	genEndFunction
	C$vm_gameboy.c$183$1_0$449	= .
	.globl	C$vm_gameboy.c$183$1_0$449
	XG$vm_rumble$0$0	= .
	.globl	XG$vm_rumble$0$0
	ret
	G$vm_load_tileset$0$0	= .
	.globl	G$vm_load_tileset$0$0
	C$vm_gameboy.c$185$1_0$457	= .
	.globl	C$vm_gameboy.c$185$1_0$457
;src\core\vm_gameboy.c:185: void vm_load_tileset(SCRIPT_CTX * THIS, INT16 idx, UBYTE bank, const background_t * background) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_load_tileset
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 5 bytes.
	b_vm_load_tileset	= 255
_vm_load_tileset::
;	adjustStack by -5
	add	sp, #-5
	C$vm_gameboy.c$186$1_0$457	= .
	.globl	C$vm_gameboy.c$186$1_0$457
;src\core\vm_gameboy.c:186: UBYTE base_tile = *(INT16 *)(VM_REF_TO_PTR(idx));
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#14
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#11
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
	ldhl	sp,	#13
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
	jr	00108$
;	genLabel
00107$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#13
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
	ld	b, a
;	genCast
;	(locations are the same)
;	genLabel
00108$:
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	genPointerGet
;	AOP_STK for _vm_load_tileset_sloc0_1_0
	ld	a, (bc)
;	genMove_o size 1
	ldhl	sp,	#3
	ld	(hl), a
;	genMove_o size 0
	C$vm_gameboy.c$189$1_0$457	= .
	.globl	C$vm_gameboy.c$189$1_0$457
;src\core\vm_gameboy.c:189: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
	C$vm_gameboy.c$190$2_0$458	= .
	.globl	C$vm_gameboy.c$190$2_0$458
;src\core\vm_gameboy.c:190: ReadBankedFarPtr(&tileset, (void *)&(background->cgb_tileset), bank);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genPlus
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
; common peephole 96b move dec hl before ld b, a
	dec	hl
	ld	b, a
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	inc	bc
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
	C$vm_gameboy.c$191$2_0$458	= .
	.globl	C$vm_gameboy.c$191$2_0$458
;src\core\vm_gameboy.c:191: if (tileset.bank) {
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;	genMove_o size 0
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
	C$vm_gameboy.c$192$3_0$459	= .
	.globl	C$vm_gameboy.c$192$3_0$459
;src\core\vm_gameboy.c:192: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$vm_gameboy.c$193$3_1$460	= .
	.globl	C$vm_gameboy.c$193$3_1$460
;src\core\vm_gameboy.c:193: UWORD n_tiles = ReadBankedUWORD(&((tileset_t *)(tileset.ptr))->n_tiles, tileset.bank);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl)
;	genMove_o size 0
;	genCast
;	genMove_o size 2
	ld	e, b
	ld	d, a
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
	C$vm_gameboy.c$194$3_1$460	= .
	.globl	C$vm_gameboy.c$194$3_1$460
;src\core\vm_gameboy.c:194: SetBankedBkgData(base_tile, n_tiles, ((tileset_t *)(tileset.ptr))->tiles, tileset.bank);
;	genPointerGet
;	AOP_STK for _vm_load_tileset_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
;	genMove_o size 0
;	genPointerGet
;	genMove_o size 2
	ldhl	sp,	#1
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genCast
;	genMove_o size 2
; common peephole 9 loaded e from a directly instead of going through l.
	ld	e, a
	ld	d, h
;	genMove_o size 0
;	genPlus
	inc	de
	inc	de
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_load_tileset_sloc1_1_0
;	genMove_o size 1
	ldhl	sp,	#4
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
	push	de
;	genIpush
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _vm_load_tileset_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#7
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
	add	sp, #5
	C$vm_gameboy.c$195$3_1$460	= .
	.globl	C$vm_gameboy.c$195$3_1$460
;src\core\vm_gameboy.c:195: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00104$:
	C$vm_gameboy.c$199$1_0$457	= .
	.globl	C$vm_gameboy.c$199$1_0$457
;src\core\vm_gameboy.c:199: ReadBankedFarPtr(&tileset, (void *)&(background->tileset), bank);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#16
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genPlus
;	genCast
;	(locations are the same)
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96c move dec hl before inc bc
; common peephole 96c move dec hl before inc bc
; common peephole 96b move dec hl before ld b, a
	dec	hl
	ld	b, a
	inc	bc
	inc	bc
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
	C$vm_gameboy.c$200$1_1$461	= .
	.globl	C$vm_gameboy.c$200$1_1$461
;src\core\vm_gameboy.c:200: UWORD n_tiles = ReadBankedUWORD(&((tileset_t *)(tileset.ptr))->n_tiles, tileset.bank);
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#0
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl)
;	genMove_o size 0
;	genCast
;	genMove_o size 2
	ld	e, b
	ld	d, a
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genSend
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
	C$vm_gameboy.c$201$1_1$461	= .
	.globl	C$vm_gameboy.c$201$1_1$461
;src\core\vm_gameboy.c:201: SetBankedBkgData(base_tile, n_tiles, ((tileset_t *)(tileset.ptr))->tiles, tileset.bank);
;	genPointerGet
;	AOP_STK for _vm_load_tileset_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
;	genMove_o size 0
;	genPointerGet
;	genMove_o size 2
	ldhl	sp,	#1
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genCast
;	genMove_o size 2
; common peephole 9 loaded e from a directly instead of going through l.
	ld	e, a
	ld	d, h
;	genMove_o size 0
;	genPlus
	inc	de
	inc	de
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genIpush
;	AOP_STK for _vm_load_tileset_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#4
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
	push	de
;	genIpush
	push	af
	inc	sp
;	genIpush
;	AOP_STK for _vm_load_tileset_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#7
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
;	genLabel
; common peephole 158 removed unused label 00105$.
	C$vm_gameboy.c$202$1_1$457	= .
	.globl	C$vm_gameboy.c$202$1_1$457
;src\core\vm_gameboy.c:202: }
;	genEndFunction
;	adjustStack by 5
; peephole sp9 combined SP additions
	add	sp, #10
	C$vm_gameboy.c$202$1_1$457	= .
	.globl	C$vm_gameboy.c$202$1_1$457
	XG$vm_load_tileset$0$0	= .
	.globl	XG$vm_load_tileset$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
