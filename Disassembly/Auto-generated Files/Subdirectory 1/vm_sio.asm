;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm_sio
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b___func_VM_SIO
	.globl ___func_VM_SIO
	.globl _SIO_receive
	.globl _SIO_send_byte
	.globl _memcpy
	.globl _exchange_state
	.globl b_vm_sio_set_mode
	.globl _vm_sio_set_mode
	.globl b_vm_sio_exchange
	.globl _vm_sio_exchange
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
G$exchange_state$0_0$0==.
_exchange_state::
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
	G$__func_VM_SIO$0$0	= .
	.globl	G$__func_VM_SIO$0$0
	C$vm_sio.c$11$0_0$213	= .
	.globl	C$vm_sio.c$11$0_0$213
;src\core\vm_sio.c:11: BANKREF(VM_SIO)
;	genLabel
;	genFunction
;	---------------------------------
; Function __func_VM_SIO
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b___func_VM_SIO	= 255
___func_VM_SIO::
; naked function: no prologue.
;	genInline
;	genInline
	.local b___func_VM_SIO 
	___bank_VM_SIO = b___func_VM_SIO 
	.globl ___bank_VM_SIO 
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genEndFunction
; naked function: No epilogue.
	G$vm_sio_set_mode$0$0	= .
	.globl	G$vm_sio_set_mode$0$0
	C$vm_sio.c$24$1_0$215	= .
	.globl	C$vm_sio.c$24$1_0$215
;src\core\vm_sio.c:24: void vm_sio_set_mode(SCRIPT_CTX * THIS, UBYTE mode) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_sio_set_mode
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_vm_sio_set_mode	= 255
_vm_sio_set_mode::
	C$vm_sio.c$26$1_0$215	= .
	.globl	C$vm_sio.c$26$1_0$215
;src\core\vm_sio.c:26: exchange_state = EXCHANGE_COMPLETED;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_exchange_state
	ld	(hl), #0x0f
;src\core\vm_sio.c:27: SIO_set_mode(mode);
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;	genMove_o size 0
;include/sio.h:34: link_operation_mode = mode;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_operation_mode
	ld	(hl), a
;include/sio.h:35: if (mode == LINK_MODE_SLAVE) {
;	genCmpEq
	sub	a, #0x02
	jp	Z,_SIO_receive
; common peephole 84 jumped to _SIO_receive directly instead of via 00113$.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00112$.
;	skipping generated iCode
;include/sio.h:36: SIO_receive();
;	genCall
; common peephole 87b removed unreachable jump to _SIO_receive
	C$vm_sio.c$27$3_0$215	= .
	.globl	C$vm_sio.c$27$3_0$215
;src\core\vm_sio.c:27: SIO_set_mode(mode);
;	genLabel
; common peephole 85a eliminated jump.
; common peephole 158 removed unused label 00104$.
	C$vm_sio.c$28$3_0$215	= .
	.globl	C$vm_sio.c$28$3_0$215
;src\core\vm_sio.c:28: }
;	genEndFunction
	C$vm_sio.c$28$3_0$215	= .
	.globl	C$vm_sio.c$28$3_0$215
	XG$vm_sio_set_mode$0$0	= .
	.globl	XG$vm_sio_set_mode$0$0
	ret
	G$vm_sio_exchange$0$0	= .
	.globl	G$vm_sio_exchange$0$0
	C$vm_sio.c$30$3_0$221	= .
	.globl	C$vm_sio.c$30$3_0$221
;src\core\vm_sio.c:30: void vm_sio_exchange(SCRIPT_CTX * THIS, INT16 idxA, INT16 idxB, UBYTE len) OLDCALL BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function vm_sio_exchange
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
	b_vm_sio_exchange	= 255
_vm_sio_exchange::
;	adjustStack by -2
	dec	sp
	dec	sp
	C$vm_sio.c$33$1_0$221	= .
	.globl	C$vm_sio.c$33$1_0$221
;src\core\vm_sio.c:33: if (link_operation_mode == LINK_MODE_NONE) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_link_operation_mode)
; common peephole 17 loaded a from (#_link_operation_mode) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
	C$vm_sio.c$34$2_0$222	= .
	.globl	C$vm_sio.c$34$2_0$222
;src\core\vm_sio.c:34: exchange_state = EXCHANGE_COMPLETED;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_exchange_state
	ld	(hl), #0x0f
	C$vm_sio.c$35$2_0$222	= .
	.globl	C$vm_sio.c$35$2_0$222
;src\core\vm_sio.c:35: return;
;	genRet
	jp	00150$
;	genLabel
00102$:
	C$vm_sio.c$38$1_0$221	= .
	.globl	C$vm_sio.c$38$1_0$221
;src\core\vm_sio.c:38: if (exchange_state == EXCHANGE_COMPLETED) exchange_state = EXCHANGE_STARTED;
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_exchange_state)
; common peephole 17 loaded a from (#_exchange_state) directly instead of using hl.
	sub	a, #0x0f
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00335$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00336$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_exchange_state
	ld	(hl), #0x00
;	genLabel
00104$:
	C$vm_sio.c$40$1_0$221	= .
	.globl	C$vm_sio.c$40$1_0$221
;src\core\vm_sio.c:40: switch (link_operation_mode) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_link_operation_mode)
; common peephole 17 loaded a from (#_link_operation_mode) directly instead of using hl.
	dec	a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00337$.
;	skipping generated iCode
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_link_operation_mode)
; common peephole 17 loaded a from (#_link_operation_mode) directly instead of using hl.
	sub	a, #0x02
	jp	Z,00125$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00338$.
;	skipping generated iCode
;	genGoto
	jp	00145$
	C$vm_sio.c$41$2_0$223	= .
	.globl	C$vm_sio.c$41$2_0$223
;src\core\vm_sio.c:41: case LINK_MODE_MASTER:
;	genLabel
00105$:
	C$vm_sio.c$42$2_0$223	= .
	.globl	C$vm_sio.c$42$2_0$223
;src\core\vm_sio.c:42: if ((exchange_state & PACKET_SEND_INIT) == 0) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_exchange_state)
; common peephole 17 loaded a from (#_exchange_state) directly instead of using hl.
;	genAnd
	rrca
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00339$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00123$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00340$.
;	skipping generated iCode
	C$vm_sio.c$43$3_0$224	= .
	.globl	C$vm_sio.c$43$3_0$224
;src\core\vm_sio.c:43: if (len > LINK_MAX_PACKET_LENGTH) len = LINK_MAX_PACKET_LENGTH;
;	genCmpGt
;	AOP_STK for 
	ld	a, #0x20
	ldhl	sp,	#14
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00107$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ld	(hl), #0x20
;	genLabel
00107$:
	C$vm_sio.c$45$3_0$224	= .
	.globl	C$vm_sio.c$45$3_0$224
;src\core\vm_sio.c:45: link_packet_sent = link_packet_received = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_packet_received
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_packet_sent
	ld	(hl), #0x00
	C$vm_sio.c$47$3_0$224	= .
	.globl	C$vm_sio.c$47$3_0$224
;src\core\vm_sio.c:47: data = VM_REF_TO_PTR(idxA);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
	ld	a, (hl)
	bit	7, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00152$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
	ldhl	sp,	#10
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
	jr	00153$
;	genLabel
00152$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#10
	ld	c, (hl)
	inc	hl
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
00153$:
;	genCast
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_sio.c$48$3_0$224	= .
	.globl	C$vm_sio.c$48$3_0$224
;src\core\vm_sio.c:48: memcpy(link_packet, data, len);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#14
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	de
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_link_packet
;	genCall
	call	_memcpy
;src\core\vm_sio.c:49: SIO_send_async(len, link_packet);
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_link_packet_snd_ptr
	ld	(hl), #<(_link_packet)
;fetchLitPair	hl
	inc	hl
	ld	(hl), #>(_link_packet)
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#14
	ld	a, (hl)
;	genMove_o size 0
;include/sio.h:41: link_packet_snd_len = len;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_link_packet_snd_len),a
; common peephole 19 loaded (#_link_packet_snd_len) from a directly instead of using hl.
;include/sio.h:43: link_byte_sent = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_byte_sent
	ld	(hl), #0x00
;include/sio.h:44: SIO_send_byte(len);
;	genIpush
	push	af
	inc	sp
;	genCall
	call	_SIO_send_byte
;	adjustStack by 1
	inc	sp
;include/sio.h:45: link_packet_sent = (link_packet_snd_len == 0);
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_link_packet_snd_len)
; common peephole 17 loaded a from (#_link_packet_snd_len) directly instead of using hl.
	or	a, a
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00344$
; common peephole 169xnz used double assignment in case of NZ condition.
; common peephole 158 removed unused label 00343$.
	xor	a, a
00344$:
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_link_packet_sent),a
; common peephole 19 loaded (#_link_packet_sent) from a directly instead of using hl.
	C$vm_sio.c$51$3_0$224	= .
	.globl	C$vm_sio.c$51$3_0$224
;src\core\vm_sio.c:51: exchange_state |= PACKET_SEND_INIT;
;	genOr
;fetchLitPair	hl
	ld	hl, #_exchange_state
	ld	a, (hl)
	or	a, #0x01
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;	genGoto
	jp	00145$
;	genLabel
00123$:
	C$vm_sio.c$52$2_0$223	= .
	.globl	C$vm_sio.c$52$2_0$223
;src\core\vm_sio.c:52: } else if ((exchange_state & PACKET_SEND_DONE) == 0) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_exchange_state)
; common peephole 17 loaded a from (#_exchange_state) directly instead of using hl.
;	genAnd
	bit	1, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00345$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00120$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00346$.
;	skipping generated iCode
	C$vm_sio.c$53$3_0$225	= .
	.globl	C$vm_sio.c$53$3_0$225
;src\core\vm_sio.c:53: if (link_packet_sent) exchange_state |= PACKET_SEND_DONE;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_link_packet_sent)
; common peephole 17 loaded a from (#_link_packet_sent) directly instead of using hl.
	or	a, a
	jp	Z, 00145$
;	genOr
;fetchLitPair	hl
	ld	hl, #_exchange_state
	ld	a, (hl)
	or	a, #0x02
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;	genGoto
	jp	00145$
;	genLabel
00120$:
	C$vm_sio.c$54$2_0$223	= .
	.globl	C$vm_sio.c$54$2_0$223
;src\core\vm_sio.c:54: } else if ((exchange_state & PACKET_RECV_INIT) == 0) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_exchange_state)
; common peephole 17 loaded a from (#_exchange_state) directly instead of using hl.
;	genAnd
	bit	2, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00347$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00117$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00348$.
;	skipping generated iCode
	C$vm_sio.c$55$3_0$226	= .
	.globl	C$vm_sio.c$55$3_0$226
;src\core\vm_sio.c:55: if (link_packet_received) exchange_state |= PACKET_RECV_INIT;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_link_packet_received)
; common peephole 17 loaded a from (#_link_packet_received) directly instead of using hl.
	or	a, a
	jp	Z, 00145$
;	genOr
;fetchLitPair	hl
	ld	hl, #_exchange_state
	ld	a, (hl)
	or	a, #0x04
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;	genGoto
	jp	00145$
;	genLabel
00117$:
	C$vm_sio.c$56$2_0$223	= .
	.globl	C$vm_sio.c$56$2_0$223
;src\core\vm_sio.c:56: } else if ((exchange_state & PACKET_RECV_DONE) == 0) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_exchange_state)
; common peephole 17 loaded a from (#_exchange_state) directly instead of using hl.
;	genAnd
	bit	3, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00349$.
	jp	NZ,00145$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00350$.
;	skipping generated iCode
	C$vm_sio.c$57$3_0$227	= .
	.globl	C$vm_sio.c$57$3_0$227
;src\core\vm_sio.c:57: if (len > LINK_MAX_PACKET_LENGTH) len = LINK_MAX_PACKET_LENGTH;
;	genCmpGt
;	AOP_STK for 
	ld	a, #0x20
	ldhl	sp,	#14
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00113$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ld	(hl), #0x20
;	genLabel
00113$:
	C$vm_sio.c$59$3_0$227	= .
	.globl	C$vm_sio.c$59$3_0$227
;src\core\vm_sio.c:59: data = VM_REF_TO_PTR(idxB);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00154$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
;	AOP_STK for _vm_sio_exchange_sloc0_1_0
;fetchPairLong
	ld	l, a
	ld	h, e
	add	hl, bc
;	genMove_o size 2
	inc	sp
	inc	sp
	push	hl
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00155$
;	genLabel
00154$:
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
;	AOP_STK for _vm_sio_exchange_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00155$:
;	genCast
;	AOP_STK for _vm_sio_exchange_sloc0_1_0
;	genMove_o size 2
	pop	de
	push	de
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_sio.c$60$3_0$227	= .
	.globl	C$vm_sio.c$60$3_0$227
;src\core\vm_sio.c:60: memcpy(data, link_packet, len);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#14
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	(locations are the same)
;	genIpush
	push	bc
;	genSend
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #_link_packet
;	genSend
;	genMove_o size 2
;	genCall
	call	_memcpy
	C$vm_sio.c$61$3_0$227	= .
	.globl	C$vm_sio.c$61$3_0$227
;src\core\vm_sio.c:61: exchange_state |= PACKET_RECV_DONE;
;	genOr
;fetchLitPair	hl
	ld	hl, #_exchange_state
	ld	a, (hl)
	or	a, #0x08
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
	C$vm_sio.c$63$2_0$223	= .
	.globl	C$vm_sio.c$63$2_0$223
;src\core\vm_sio.c:63: break;
;	genGoto
	jp	00145$
	C$vm_sio.c$65$2_0$223	= .
	.globl	C$vm_sio.c$65$2_0$223
;src\core\vm_sio.c:65: case LINK_MODE_SLAVE:
;	genLabel
00125$:
	C$vm_sio.c$66$2_0$223	= .
	.globl	C$vm_sio.c$66$2_0$223
;src\core\vm_sio.c:66: if ((exchange_state & PACKET_RECV_INIT) == 0) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_exchange_state)
; common peephole 17 loaded a from (#_exchange_state) directly instead of using hl.
;	genAnd
	bit	2, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00353$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00143$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00354$.
;	skipping generated iCode
	C$vm_sio.c$67$3_0$228	= .
	.globl	C$vm_sio.c$67$3_0$228
;src\core\vm_sio.c:67: link_packet_sent = link_packet_received = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_packet_received
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_packet_sent
	ld	(hl), #0x00
	C$vm_sio.c$68$3_0$228	= .
	.globl	C$vm_sio.c$68$3_0$228
;src\core\vm_sio.c:68: exchange_state |= PACKET_RECV_INIT;
;	genOr
;fetchLitPair	hl
	ld	hl, #_exchange_state
	ld	a, (hl)
	or	a, #0x04
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;	genGoto
	jp	00145$
;	genLabel
00143$:
	C$vm_sio.c$69$2_0$223	= .
	.globl	C$vm_sio.c$69$2_0$223
;src\core\vm_sio.c:69: } else if ((exchange_state & PACKET_RECV_DONE) == 0) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_exchange_state)
; common peephole 17 loaded a from (#_exchange_state) directly instead of using hl.
;	genAnd
	bit	3, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00355$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00140$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00356$.
;	skipping generated iCode
	C$vm_sio.c$70$3_0$229	= .
	.globl	C$vm_sio.c$70$3_0$229
;src\core\vm_sio.c:70: if (link_packet_received) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_link_packet_received)
; common peephole 17 loaded a from (#_link_packet_received) directly instead of using hl.
	or	a, a
	jp	Z, 00145$
	C$vm_sio.c$71$4_0$230	= .
	.globl	C$vm_sio.c$71$4_0$230
;src\core\vm_sio.c:71: if (len > LINK_MAX_PACKET_LENGTH) len = LINK_MAX_PACKET_LENGTH;
;	genCmpGt
;	AOP_STK for 
	ld	a, #0x20
	ldhl	sp,	#14
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00127$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ld	(hl), #0x20
;	genLabel
00127$:
	C$vm_sio.c$73$4_0$230	= .
	.globl	C$vm_sio.c$73$4_0$230
;src\core\vm_sio.c:73: data = VM_REF_TO_PTR(idxB);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#13
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00156$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
;	AOP_STK for _vm_sio_exchange_sloc1_1_0
;fetchPairLong
	ld	l, a
	ld	h, e
	add	hl, bc
;	genMove_o size 2
	inc	sp
	inc	sp
	push	hl
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00157$
;	genLabel
00156$:
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
;	AOP_STK for _vm_sio_exchange_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00157$:
;	genCast
;	AOP_STK for _vm_sio_exchange_sloc1_1_0
;	genMove_o size 2
	pop	de
	push	de
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_sio.c$74$4_0$230	= .
	.globl	C$vm_sio.c$74$4_0$230
;src\core\vm_sio.c:74: memcpy(data, link_packet, len);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#14
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	b, #0x00
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genCast
;	(locations are the same)
;	genIpush
	push	bc
;	genSend
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #_link_packet
;	genSend
;	genMove_o size 2
;	genCall
	call	_memcpy
	C$vm_sio.c$75$4_0$230	= .
	.globl	C$vm_sio.c$75$4_0$230
;src\core\vm_sio.c:75: exchange_state |= PACKET_RECV_DONE;
;	genOr
;fetchLitPair	hl
	ld	hl, #_exchange_state
	ld	a, (hl)
	or	a, #0x08
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;	genGoto
	jp	00145$
;	genLabel
00140$:
	C$vm_sio.c$77$2_0$223	= .
	.globl	C$vm_sio.c$77$2_0$223
;src\core\vm_sio.c:77: } else if ((exchange_state & PACKET_SEND_INIT) == 0) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_exchange_state)
; common peephole 17 loaded a from (#_exchange_state) directly instead of using hl.
;	genAnd
	rrca
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00359$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00137$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00360$.
;	skipping generated iCode
	C$vm_sio.c$78$3_0$231	= .
	.globl	C$vm_sio.c$78$3_0$231
;src\core\vm_sio.c:78: if (len > LINK_MAX_PACKET_LENGTH) len = LINK_MAX_PACKET_LENGTH;
;	genCmpGt
;	AOP_STK for 
	ld	a, #0x20
	ldhl	sp,	#14
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00131$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ld	(hl), #0x20
;	genLabel
00131$:
	C$vm_sio.c$80$3_0$231	= .
	.globl	C$vm_sio.c$80$3_0$231
;src\core\vm_sio.c:80: data = VM_REF_TO_PTR(idxA);
;	genCmpLt
;	AOP_STK for 
	ldhl	sp,	#11
; common peephole 73 tested bit 7 of (hl) directly instead of going through a.
	bit	7, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00158$
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
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
	ldhl	sp,	#10
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	e, (hl)
;	genMove_o size 0
	add	a, a
	rl	e
;	genPlus
;	AOP_STK for _vm_sio_exchange_sloc2_1_0
;fetchPairLong
	ld	l, a
	ld	h, e
	add	hl, bc
;	genMove_o size 2
	inc	sp
	inc	sp
	push	hl
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00159$
;	genLabel
00158$:
;	skipping iCode since result will be rematerialized
;	genLeftShift
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#10
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
;	AOP_STK for _vm_sio_exchange_sloc2_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	(hl), c
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00159$:
;	genCast
;	AOP_STK for _vm_sio_exchange_sloc2_1_0
;	genMove_o size 2
	pop	bc
	push	bc
;	genMove_o size 0
;	genCast
;	(locations are the same)
	C$vm_sio.c$81$3_0$231	= .
	.globl	C$vm_sio.c$81$3_0$231
;src\core\vm_sio.c:81: memcpy(link_packet, data, len);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#14
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	de
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_link_packet
;	genCall
	call	_memcpy
;src\core\vm_sio.c:82: SIO_send_async(len, link_packet);
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_link_packet_snd_ptr
	ld	(hl), #<(_link_packet)
;fetchLitPair	hl
	inc	hl
	ld	(hl), #>(_link_packet)
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#14
	ld	a, (hl)
;	genMove_o size 0
;include/sio.h:41: link_packet_snd_len = len;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_link_packet_snd_len),a
; common peephole 19 loaded (#_link_packet_snd_len) from a directly instead of using hl.
;include/sio.h:43: link_byte_sent = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_byte_sent
	ld	(hl), #0x00
;include/sio.h:44: SIO_send_byte(len);
;	genIpush
	push	af
	inc	sp
;	genCall
	call	_SIO_send_byte
;	adjustStack by 1
	inc	sp
;include/sio.h:45: link_packet_sent = (link_packet_snd_len == 0);
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_link_packet_snd_len)
; common peephole 17 loaded a from (#_link_packet_snd_len) directly instead of using hl.
	or	a, a
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00364$
; common peephole 169xnz used double assignment in case of NZ condition.
; common peephole 158 removed unused label 00363$.
	xor	a, a
00364$:
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_link_packet_sent),a
; common peephole 19 loaded (#_link_packet_sent) from a directly instead of using hl.
	C$vm_sio.c$84$3_0$231	= .
	.globl	C$vm_sio.c$84$3_0$231
;src\core\vm_sio.c:84: exchange_state |= PACKET_SEND_INIT;
;	genOr
;fetchLitPair	hl
	ld	hl, #_exchange_state
	ld	a, (hl)
	or	a, #0x01
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00145$
;	genLabel
00137$:
	C$vm_sio.c$85$2_0$223	= .
	.globl	C$vm_sio.c$85$2_0$223
;src\core\vm_sio.c:85: } else if ((exchange_state & PACKET_SEND_DONE) == 0) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_exchange_state)
; common peephole 17 loaded a from (#_exchange_state) directly instead of using hl.
;	genAnd
	bit	1, a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00365$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00145$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00366$.
;	skipping generated iCode
	C$vm_sio.c$86$3_0$232	= .
	.globl	C$vm_sio.c$86$3_0$232
;src\core\vm_sio.c:86: if (link_packet_sent) exchange_state |= PACKET_SEND_DONE;
;	genIfx
;fetchLitPair	hl
	ld	a, (#_link_packet_sent)
; common peephole 17 loaded a from (#_link_packet_sent) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00145$
;	genOr
;fetchLitPair	hl
	ld	hl, #_exchange_state
	ld	a, (hl)
	or	a, #0x02
;	genMove_o size 1
;fetchLitPair	hl
	ld	(hl), a
	C$vm_sio.c$89$1_0$221	= .
	.globl	C$vm_sio.c$89$1_0$221
;src\core\vm_sio.c:89: }
;	genLabel
00145$:
	C$vm_sio.c$91$1_0$221	= .
	.globl	C$vm_sio.c$91$1_0$221
;src\core\vm_sio.c:91: if (exchange_state != EXCHANGE_COMPLETED) THIS->PC -= (INSTRUCTION_SIZE + sizeof(idxA) + sizeof(idxB) + sizeof(len)), THIS->waitable = TRUE;
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_exchange_state)
; common peephole 17 loaded a from (#_exchange_state) directly instead of using hl.
	sub	a, #0x0f
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00150$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00367$.
;	skipping generated iCode
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#8
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
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
	ld	l, c
	ld	h, b
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0010
	add	hl, bc
;	genAssign (pointer)
	ld	(hl), #0x01
;	genLabel
00150$:
	C$vm_sio.c$92$1_0$221	= .
	.globl	C$vm_sio.c$92$1_0$221
;src\core\vm_sio.c:92: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$vm_sio.c$92$1_0$221	= .
	.globl	C$vm_sio.c$92$1_0$221
	XG$vm_sio_exchange$0$0	= .
	.globl	XG$vm_sio_exchange$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
Fvm_sio$__xinit_exchange_state$0_0$0 == .
__xinit__exchange_state:
	.db #0x0f	; 15
	.area _CABS (ABS)
