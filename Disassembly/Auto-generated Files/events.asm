;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module events
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_script_execute
	.globl _script_execute
	.globl _memset
	.globl _timer_values
	.globl _timer_events
	.globl _input_slots
	.globl _input_events
	.globl b_events_init
	.globl _events_init
	.globl _events_update
	.globl b_timers_init
	.globl _timers_init
	.globl _timers_update
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$input_events$0_0$0==.
_input_events::
	.ds 40
G$input_slots$0_0$0==.
_input_slots::
	.ds 8
G$timer_events$0_0$0==.
_timer_events::
	.ds 20
G$timer_values$0_0$0==.
_timer_values::
	.ds 8
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
	G$events_update$0$0	= .
	.globl	G$events_update$0$0
	C$events.c$24$1_0$214	= .
	.globl	C$events.c$24$1_0$214
;src\core\events.c:24: void events_update(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function events_update
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
_events_update::
;	adjustStack by -6
	add	sp, #-6
	C$events.c$25$2_0$214	= .
	.globl	C$events.c$25$2_0$214
;src\core\events.c:25: UBYTE * slot_ptr = input_slots;
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for _events_update_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#3
	ld	a, #<(_input_slots)
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #>(_input_slots)
	C$events.c$26$3_0$215	= .
	.globl	C$events.c$26$3_0$215
;src\core\events.c:26: for (UBYTE tmp = joy, key = 1; (tmp); tmp = tmp >> 1, key = key << 1, slot_ptr++) {
;	genAssign
;	AOP_STK for _events_update_sloc1_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
	ldhl	sp,	#5
	ld	(hl), a
;	genAssign
;	AOP_STK for _events_update_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), #0x01
;	skipping iCode since result will be rematerialized
;	genLabel
00117$:
;	genIfx
;	AOP_STK for _events_update_sloc1_1_0
	ldhl	sp,	#5
	ld	a, (hl)
	or	a, a
	jp	Z, 00115$
	C$events.c$27$3_0$216	= .
	.globl	C$events.c$27$3_0$216
;src\core\events.c:27: if (tmp & 1) {
;	genAnd
;	AOP_STK for _events_update_sloc1_1_0
	push	hl
	bit	0, (hl)
	pop	hl
	jp	Z,00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00169$.
;	skipping generated iCode
	C$events.c$28$4_0$217	= .
	.globl	C$events.c$28$4_0$217
;src\core\events.c:28: if (*slot_ptr == 0) continue;
;	genPointerGet
;	AOP_STK for _events_update_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00114$
	C$events.c$29$4_1$218	= .
	.globl	C$events.c$29$4_1$218
;src\core\events.c:29: script_event_t * event = &input_events[(*slot_ptr & 0x0f) - 1u];
;	genPointerGet
;	AOP_STK for _events_update_sloc0_1_0
;fetchPairLong
	dec	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genCast
;	(locations are the same)
;	genAnd
	and	a, #0x0f
;	genMove_o size 1
;	genMinus
	dec	a
;	genMult
	ld	c, a
; common peephole 98 removed redundant load from c into a.
	rlca
	sbc	a, a
	ld	b, a
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_input_events
	add	hl, de
;	genCast
;	genMove_o size 2
;	genMove_o size 0
	C$events.c$30$4_1$218	= .
	.globl	C$events.c$30$4_1$218
;src\core\events.c:30: if (!event->script_addr) continue;
;	genPlus
;	genMove_o size 2
;	spillPairReg hl
;	spillPairReg hl
	ld	c,l
	ld	b,h
; common peephole 104 removed redundant load from bc into hl
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genIfx
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00114$
	C$events.c$31$4_1$218	= .
	.globl	C$events.c$31$4_1$218
;src\core\events.c:31: if (*slot_ptr & 0x80) joy ^= key;     // reset key bit
;	genPointerGet
;	AOP_STK for _events_update_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#3
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genAnd
	rlca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00106$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00170$.
;	skipping generated iCode
;	genXor
;	AOP_STK for _events_update_sloc2_1_0
;fetchLitPair	hl
	ld	a, (#_frame_joy)
; common peephole 17 loaded a from (#_frame_joy) directly instead of using hl.
	ldhl	sp,	#0
	xor	a, (hl)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_frame_joy),a
; common peephole 19 loaded (#_frame_joy) from a directly instead of using hl.
;	genLabel
00106$:
	C$events.c$32$4_1$218	= .
	.globl	C$events.c$32$4_1$218
;src\core\events.c:32: if (last_joy & key) continue;
;	genAnd
;	AOP_STK for _events_update_sloc2_1_0
;fetchLitPair	hl
	ld	a, (#_last_joy)
; common peephole 17 loaded a from (#_last_joy) directly instead of using hl.
	ldhl	sp,	#0
;	genMove_o size 1
;	genIfx
	and	a,(hl)
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00114$
	C$events.c$33$4_1$218	= .
	.globl	C$events.c$33$4_1$218
;src\core\events.c:33: if ((event->handle == 0) || ((event->handle & SCRIPT_TERMINATED) != 0))
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	inc	hl
	ld	a,	(hl-)
	ld	l, (hl)
;	spillPairReg hl
;	genIfx
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
;	genPointerGet
;fetchPairLong
	ld	l, c
	ld	h, b
	inc	hl
	ld	a,	(hl-)
; common peephole 1 removed dead load from (hl) into l.
;	spillPairReg hl
;	genAnd
	rlca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00114$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00171$.
;	skipping generated iCode
;	genLabel
00109$:
	C$events.c$34$4_1$218	= .
	.globl	C$events.c$34$4_1$218
;src\core\events.c:34: script_execute(event->script_bank, event->script_addr, &event->handle, 1, (int)key);
;	genCast
;	AOP_STK for _events_update_sloc2_1_0
;	AOP_STK for _events_update_sloc3_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	genMove_o size 0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genPlus
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	genMove_o size 2
	ld	e, a
	ld	d, l
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
	ld	a, (hl)
;	genIpush
;	AOP_STK for _events_update_sloc3_1_0
;	genMove_o size 2
	push	af
	ldhl	sp,	#3
	ld	a, (hl)
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	pop	af
;	genMove_o size 0
	push	hl
;	genIpush
;	genMove_o size 1
	ld	h, #0x01
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
;	genIpush
	push	bc
;	genIpush
	push	de
;	genIpush
	push	af
	inc	sp
;	genCall
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 8
	add	sp, #8
;	genLabel
00114$:
	C$events.c$26$2_0$215	= .
	.globl	C$events.c$26$2_0$215
;src\core\events.c:26: for (UBYTE tmp = joy, key = 1; (tmp); tmp = tmp >> 1, key = key << 1, slot_ptr++) {
;	genRightShift
;	AOP_STK for _events_update_sloc1_1_0
	ldhl	sp,	#5
	ld	a, (hl)
	srl	a
	ld	(hl), a
;	genCast
;	AOP_STK for _events_update_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;	genMove_o size 0
;	genLeftShift
;	AOP_STK for _events_update_sloc2_1_0
	add	a, a
	ld	(hl), a
;	genPlus
;	AOP_STK for _events_update_sloc0_1_0
	ldhl	sp,	#3
	inc	(hl)
	jp	NZ,00117$
; common peephole 84 jumped to 00117$ directly instead of via 00172$.
	inc	hl
	inc	(hl)
; common peephole 158 removed unused label 00172$.
;	genGoto
	jp	00117$
;	genLabel
00115$:
	C$events.c$37$1_0$214	= .
	.globl	C$events.c$37$1_0$214
;src\core\events.c:37: recent_joy = recent_joy & joy;
;	genAnd
;fetchLitPair	hl
	ld	a, (#_recent_joy)
; common peephole 17 loaded a from (#_recent_joy) directly instead of using hl.
;fetchLitPair	hl
	ld	hl, #_frame_joy
	and	a, (hl)
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_recent_joy),a
; common peephole 19 loaded (#_recent_joy) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00118$.
	C$events.c$38$1_0$214	= .
	.globl	C$events.c$38$1_0$214
;src\core\events.c:38: }
;	genEndFunction
;	adjustStack by 6
	add	sp, #6
	C$events.c$38$1_0$214	= .
	.globl	C$events.c$38$1_0$214
	XG$events_update$0$0	= .
	.globl	XG$events_update$0$0
	ret
	G$timers_update$0$0	= .
	.globl	G$timers_update$0$0
	C$events.c$50$1_0$226	= .
	.globl	C$events.c$50$1_0$226
;src\core\events.c:50: void timers_update(void) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function timers_update
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 3 bytes.
_timers_update::
;	adjustStack by -3
	add	sp, #-3
	C$events.c$51$2_0$226	= .
	.globl	C$events.c$51$2_0$226
;src\core\events.c:51: timer_time_t * ctimer = timer_values;
;	genAddrOf
	ld	bc, #_timer_values+0
;	genCast
;	(locations are the same)
	C$events.c$52$5_1$230	= .
	.globl	C$events.c$52$5_1$230
;src\core\events.c:52: for (UBYTE i = 0; i != MAX_CONCURRENT_TIMERS; i++) {
;	skipping iCode since result will be rematerialized
;	genAssign
;	AOP_STK for _timers_update_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#2
	ld	(hl), #0x00
;	genLabel
00113$:
;	genCmpEq
;	AOP_STK for _timers_update_sloc0_1_0
	ldhl	sp,	#2
	ld	a, (hl)
	sub	a, #0x04
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00114$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00153$.
;	skipping generated iCode
	C$events.c$53$3_0$227	= .
	.globl	C$events.c$53$3_0$227
;src\core\events.c:53: if (ctimer->value) {
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
	C$events.c$54$4_0$228	= .
	.globl	C$events.c$54$4_0$228
;src\core\events.c:54: if (--ctimer->remains == 0) {
;	genPlus
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	inc	de
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genMinus
	dec	a
;	genAssign (pointer)
	ld	(de), a
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00109$
	C$events.c$55$5_0$229	= .
	.globl	C$events.c$55$5_0$229
;src\core\events.c:55: ctimer->remains = ctimer->value;
;	genPlus
;	genMove_o size 2
	ld	e, c
	ld	d, b
;	genMove_o size 0
	inc	de
;	genPointerGet
	ld	a, (bc)
;	genMove_o size 1
;	genAssign (pointer)
	ld	(de), a
	C$events.c$56$5_1$230	= .
	.globl	C$events.c$56$5_1$230
;src\core\events.c:56: script_event_t * event = &timer_events[i];
;	genMult
;	AOP_STK for _timers_update_sloc0_1_0
;fetchPairLong
	ldhl	sp,	#2
	ld	e, (hl)
	ld	d, #0x00
	ld	l, e
	ld	h, d
	add	hl, hl
	add	hl, hl
	add	hl, de
;	genMove_o size 2
;	genPlus
	ld	a, #<(_timer_events)
	add	a, l
	ld	e, a
	ld	a, #>(_timer_events)
	adc	a, h
;	genCast
;	AOP_STK for _timers_update_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl), e
	inc	hl
	ld	(hl), a
;	genMove_o size 0
	C$events.c$57$5_1$230	= .
	.globl	C$events.c$57$5_1$230
;src\core\events.c:57: if (!event->script_addr) continue;
;	genPlus
;	AOP_STK for _timers_update_sloc1_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genIfx
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00110$
	C$events.c$58$5_1$230	= .
	.globl	C$events.c$58$5_1$230
;src\core\events.c:58: if ((event->handle == 0) || ((event->handle & SCRIPT_TERMINATED) != 0)) {
;	genPointerGet
;	AOP_STK for _timers_update_sloc1_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
;	genIfx
	or	a, l
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
;	genPointerGet
;	AOP_STK for _timers_update_sloc1_1_0
;fetchPairLong
	pop	de
	push	de
; common peephole 1 removed dead load from (de) into a.
; common peephole 1 removed dead load from a into l.
;	spillPairReg hl
;	spillPairReg hl
	inc	de
	ld	a, (de)
;	genAnd
	rlca
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00109$
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00154$.
;	skipping generated iCode
;	genLabel
00103$:
	C$events.c$59$6_1$231	= .
	.globl	C$events.c$59$6_1$231
;src\core\events.c:59: script_execute(event->script_bank, event->script_addr, &event->handle, 0, 0);
;	genPlus
;	AOP_STK for _timers_update_sloc1_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
	inc	hl
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	l, (hl)
;	spillPairReg hl
;	genCast
;	genMove_o size 2
	ld	e, a
	ld	d, l
;	genMove_o size 0
;	genPlus
;	AOP_STK for _timers_update_sloc1_1_0
;	genMove_o size 2
	pop	hl
	push	hl
;	genMove_o size 0
	inc	hl
	inc	hl
;	genPointerGet
	ld	a, (hl)
;	genIpush
	push	bc
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0000
	push	hl
;	genIpush
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	inc	sp
;	genIpush
;	AOP_STK for _timers_update_sloc1_1_0
;	genMove_o size 2
	push	af
	ldhl	sp,	#7
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	pop	af
;	genMove_o size 0
	push	hl
;	genIpush
	push	de
;	genIpush
	push	af
	inc	sp
;	genCall
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 8
	add	sp, #8
	pop	bc
;	genLabel
00109$:
	C$events.c$64$3_0$227	= .
	.globl	C$events.c$64$3_0$227
;src\core\events.c:64: ctimer++;
;	genPlus
	inc	bc
	inc	bc
;	genLabel
00110$:
	C$events.c$52$2_0$226	= .
	.globl	C$events.c$52$2_0$226
;src\core\events.c:52: for (UBYTE i = 0; i != MAX_CONCURRENT_TIMERS; i++) {
;	genPlus
;	AOP_STK for _timers_update_sloc0_1_0
	ldhl	sp,	#2
	inc	(hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00114$:
	C$events.c$66$2_0$226	= .
	.globl	C$events.c$66$2_0$226
;src\core\events.c:66: }
;	genEndFunction
;	adjustStack by 3
	add	sp, #3
	C$events.c$66$2_0$226	= .
	.globl	C$events.c$66$2_0$226
	XG$timers_update$0$0	= .
	.globl	XG$timers_update$0$0
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$events_init$0$0	= .
	.globl	G$events_init$0$0
	C$events.c$14$0_0$209	= .
	.globl	C$events.c$14$0_0$209
;src\core\events.c:14: void events_init(UBYTE preserve) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function events_init
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_events_init	= 255
_events_init::
	C$events.c$15$1_0$209	= .
	.globl	C$events.c$15$1_0$209
;src\core\events.c:15: if (preserve) {
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#6
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
	C$events.c$16$3_0$211	= .
	.globl	C$events.c$16$3_0$211
;src\core\events.c:16: for (UBYTE i = 0; i < 8; i++) 
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1
	ld	c, #0x00
;	genLabel
00106$:
;	genCmpLt
	ld	a, c
	sub	a, #0x08
	ret	NC
; common peephole 161 replaced jump by return.
;	skipping generated iCode
	C$events.c$17$3_0$211	= .
	.globl	C$events.c$17$3_0$211
;src\core\events.c:17: input_events[i].handle = 0;
;	genMult
;fetchPairLong
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_input_events
	add	hl, de
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$events.c$16$3_0$211	= .
	.globl	C$events.c$16$3_0$211
;src\core\events.c:16: for (UBYTE i = 0; i < 8; i++) 
;	genPlus
	inc	c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00103$:
	C$events.c$19$2_0$212	= .
	.globl	C$events.c$19$2_0$212
;src\core\events.c:19: memset(input_slots, 0, sizeof(input_slots));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0008
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_input_slots
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
	C$events.c$20$2_0$212	= .
	.globl	C$events.c$20$2_0$212
;src\core\events.c:20: memset(input_events, 0, sizeof(input_events));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0028
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_input_events
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
;	genLabel
; common peephole 158 removed unused label 00108$.
	C$events.c$22$1_0$209	= .
	.globl	C$events.c$22$1_0$209
;src\core\events.c:22: }
;	genEndFunction
	C$events.c$22$1_0$209	= .
	.globl	C$events.c$22$1_0$209
	XG$events_init$0$0	= .
	.globl	XG$events_init$0$0
	ret
	G$timers_init$0$0	= .
	.globl	G$timers_init$0$0
	C$events.c$40$1_0$220	= .
	.globl	C$events.c$40$1_0$220
;src\core\events.c:40: void timers_init(UBYTE preserve) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function timers_init
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_timers_init	= 255
_timers_init::
	C$events.c$41$1_0$220	= .
	.globl	C$events.c$41$1_0$220
;src\core\events.c:41: if (preserve) {
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#6
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
	C$events.c$42$3_0$222	= .
	.globl	C$events.c$42$3_0$222
;src\core\events.c:42: for (UBYTE i = 0; i != MAX_CONCURRENT_TIMERS; i++) 
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1
	ld	c, #0x00
;	genLabel
00106$:
;	genCmpEq
	ld	a, c
	sub	a, #0x04
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00129$.
;	skipping generated iCode
	C$events.c$43$3_0$222	= .
	.globl	C$events.c$43$3_0$222
;src\core\events.c:43: timer_events[i].handle = 0;
;	genMult
;fetchPairLong
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
;	genMove_o size 2
;	genPlus
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_timer_events
	add	hl, de
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$events.c$42$3_0$222	= .
	.globl	C$events.c$42$3_0$222
;src\core\events.c:42: for (UBYTE i = 0; i != MAX_CONCURRENT_TIMERS; i++) 
;	genPlus
	inc	c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00103$:
	C$events.c$45$2_0$223	= .
	.globl	C$events.c$45$2_0$223
;src\core\events.c:45: memset(timer_values, 0, sizeof(timer_values));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0008
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_timer_values
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
	C$events.c$46$2_0$223	= .
	.globl	C$events.c$46$2_0$223
;src\core\events.c:46: memset(timer_events, 0, sizeof(timer_events));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
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
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_timer_events
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
;	genLabel
; common peephole 158 removed unused label 00108$.
	C$events.c$48$1_0$220	= .
	.globl	C$events.c$48$1_0$220
;src\core\events.c:48: }
;	genEndFunction
	C$events.c$48$1_0$220	= .
	.globl	C$events.c$48$1_0$220
	XG$timers_init$0$0	= .
	.globl	XG$timers_init$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
