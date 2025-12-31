;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module sio
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _SIO_update
	.globl _on_SIO_receive
	.globl _SIO_receive
	.globl _SIO_send_byte
	.globl _link_packet_sent
	.globl _link_packet_snd_ptr
	.globl _link_packet_snd_len
	.globl _link_packet_received
	.globl _link_packet_ptr
	.globl _link_packet_len
	.globl _link_packet
	.globl _link_operation_mode
	.globl b_SIO_init
	.globl _SIO_init
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$link_operation_mode$0_0$0==.
_link_operation_mode::
	.ds 1
G$link_packet$0_0$0==.
_link_packet::
	.ds 32
G$link_packet_len$0_0$0==.
_link_packet_len::
	.ds 1
G$link_packet_ptr$0_0$0==.
_link_packet_ptr::
	.ds 2
G$link_packet_received$0_0$0==.
_link_packet_received::
	.ds 1
G$link_packet_snd_len$0_0$0==.
_link_packet_snd_len::
	.ds 1
G$link_packet_snd_ptr$0_0$0==.
_link_packet_snd_ptr::
	.ds 2
G$link_packet_sent$0_0$0==.
_link_packet_sent::
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
	G$on_SIO_receive$0$0	= .
	.globl	G$on_SIO_receive$0$0
	C$sio.c$24$0_0$146	= .
	.globl	C$sio.c$24$0_0$146
;src\core\sio.c:24: void on_SIO_receive(UBYTE data) OLDCALL NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function on_SIO_receive
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_on_SIO_receive::
	C$sio.c$25$1_0$146	= .
	.globl	C$sio.c$25$1_0$146
;src\core\sio.c:25: if (link_packet_len) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #_link_packet_len
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00105$
	C$sio.c$26$2_0$147	= .
	.globl	C$sio.c$26$2_0$147
;src\core\sio.c:26: link_packet_len--;
;	genMinus
;fetchLitPair	hl
	dec	(hl)
	C$sio.c$27$2_0$147	= .
	.globl	C$sio.c$27$2_0$147
;src\core\sio.c:27: *link_packet_ptr++ = data;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_link_packet_ptr
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genAssign (pointer)
;	AOP_STK for 
	ldhl	sp,	#2
	ld	a, (hl)
	ld	(bc), a
;	genPlus
;fetchLitPair	hl
	ld	hl, #_link_packet_ptr
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00121$
;fetchLitPair	hl
	inc	hl
	inc	(hl)
00121$:
	C$sio.c$28$2_0$147	= .
	.globl	C$sio.c$28$2_0$147
;src\core\sio.c:28: if (link_packet_len == 0) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #_link_packet_len
	ld	a, (hl)
	or	a, a
	jp	NZ,_SIO_receive
; common peephole 84 jumped to _SIO_receive directly instead of via 00102$.
	C$sio.c$29$3_0$148	= .
	.globl	C$sio.c$29$3_0$148
;src\core\sio.c:29: link_packet_ptr = link_packet;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_link_packet_ptr
	ld	(hl), #<(_link_packet)
;fetchLitPair	hl
	inc	hl
	ld	(hl), #>(_link_packet)
	C$sio.c$30$3_0$148	= .
	.globl	C$sio.c$30$3_0$148
;src\core\sio.c:30: link_packet_received = TRUE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_packet_received
;	genGoto
;	genLabel
	C$sio.c$32$3_0$149	= .
	.globl	C$sio.c$32$3_0$149
;src\core\sio.c:32: SIO_receive();
;	genCall
; common peephole 87b removed unreachable jump to _SIO_receive
;	genGoto
	ld	(hl), #0x01
	ret
; common peephole 160 replaced jump by return.
; common peephole 87a removed unreachable jump to 00107$
;	genLabel
00105$:
	C$sio.c$35$2_0$150	= .
	.globl	C$sio.c$35$2_0$150
;src\core\sio.c:35: link_packet_len = data;
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#2
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_link_packet_len),a
; common peephole 19 loaded (#_link_packet_len) from a directly instead of using hl.
	C$sio.c$36$2_0$150	= .
	.globl	C$sio.c$36$2_0$150
;src\core\sio.c:36: link_packet_ptr = link_packet;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_link_packet_ptr
	ld	(hl), #<(_link_packet)
;fetchLitPair	hl
	inc	hl
	ld	(hl), #>(_link_packet)
	C$sio.c$37$2_0$150	= .
	.globl	C$sio.c$37$2_0$150
;src\core\sio.c:37: SIO_receive();
;	genCall
;	genLabel
; common peephole 158 removed unused label 00107$.
	C$sio.c$39$1_0$146	= .
	.globl	C$sio.c$39$1_0$146
;src\core\sio.c:39: }
;	genEndFunction
	C$sio.c$39$1_0$146	= .
	.globl	C$sio.c$39$1_0$146
	XG$on_SIO_receive$0$0	= .
	.globl	XG$on_SIO_receive$0$0
	jp	_SIO_receive
; common peephole 152 removed unused ret.
	G$SIO_update$0$0	= .
	.globl	G$SIO_update$0$0
	C$sio.c$41$1_0$152	= .
	.globl	C$sio.c$41$1_0$152
;src\core\sio.c:41: UBYTE SIO_update(void) OLDCALL NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function SIO_update
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_SIO_update::
	C$sio.c$42$1_0$152	= .
	.globl	C$sio.c$42$1_0$152
;src\core\sio.c:42: if (SIO_status == IO_ERROR) {
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_SIO_status)
; common peephole 17 loaded a from (#_SIO_status) directly instead of using hl.
	sub	a, #0x04
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00136$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00137$.
;	skipping generated iCode
	C$sio.c$43$2_0$153	= .
	.globl	C$sio.c$43$2_0$153
;src\core\sio.c:43: link_operation_mode = LINK_MODE_NONE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_operation_mode
	ld	(hl), #0x00
	C$sio.c$44$2_0$153	= .
	.globl	C$sio.c$44$2_0$153
;src\core\sio.c:44: link_packet_len = link_packet_snd_len = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_packet_snd_len
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_packet_len
	ld	(hl), #0x00
	C$sio.c$45$2_0$153	= .
	.globl	C$sio.c$45$2_0$153
;src\core\sio.c:45: link_packet_ptr = link_packet;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_link_packet_ptr
	ld	(hl), #<(_link_packet)
;fetchLitPair	hl
	inc	hl
	ld	(hl), #>(_link_packet)
	C$sio.c$46$2_0$153	= .
	.globl	C$sio.c$46$2_0$153
;src\core\sio.c:46: SIO_status = IO_IDLE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_SIO_status
	ld	(hl), #0x00
	C$sio.c$47$2_0$153	= .
	.globl	C$sio.c$47$2_0$153
;src\core\sio.c:47: return FALSE;
;	genRet
;	genMove_o size 1
	ld	e, #0x00
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00102$:
	C$sio.c$50$1_0$152	= .
	.globl	C$sio.c$50$1_0$152
;src\core\sio.c:50: if (link_byte_sent) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_link_byte_sent)
; common peephole 17 loaded a from (#_link_byte_sent) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
	C$sio.c$51$2_0$154	= .
	.globl	C$sio.c$51$2_0$154
;src\core\sio.c:51: if (link_packet_snd_len != 0) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_link_packet_snd_len)
; common peephole 17 loaded a from (#_link_packet_snd_len) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
	C$sio.c$52$3_0$155	= .
	.globl	C$sio.c$52$3_0$155
;src\core\sio.c:52: link_byte_sent = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_byte_sent
	ld	(hl), #0x00
	C$sio.c$53$3_0$155	= .
	.globl	C$sio.c$53$3_0$155
;src\core\sio.c:53: if (link_packet_snd_len == 1) link_next_mode = IO_RECEIVING;
;	genCmpEq
;fetchLitPair	hl
	ld	a, (#_link_packet_snd_len)
; common peephole 17 loaded a from (#_link_packet_snd_len) directly instead of using hl.
	dec	a
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00138$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00104$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00139$.
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_next_mode
	ld	(hl), #0x02
;	genLabel
00104$:
	C$sio.c$54$3_0$155	= .
	.globl	C$sio.c$54$3_0$155
;src\core\sio.c:54: SIO_send_byte(*link_packet_snd_ptr++);
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_link_packet_snd_ptr
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (_link_packet_snd_ptr + 1)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
;	genPointerGet
	ld	b, (hl)
;	genPlus
;fetchLitPair	hl
	ld	hl, #_link_packet_snd_ptr
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00140$
;fetchLitPair	hl
	inc	hl
	inc	(hl)
00140$:
;	genIpush
	push	bc
	inc	sp
;	genCall
	call	_SIO_send_byte
;	adjustStack by 1
	inc	sp
	C$sio.c$55$3_0$155	= .
	.globl	C$sio.c$55$3_0$155
;src\core\sio.c:55: link_packet_snd_len--;
;	genMinus
;fetchLitPair	hl
	ld	hl, #_link_packet_snd_len
	dec	(hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00109$
;	genLabel
00106$:
	C$sio.c$57$3_0$156	= .
	.globl	C$sio.c$57$3_0$156
;src\core\sio.c:57: link_packet_sent = TRUE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_packet_sent
	ld	(hl), #0x01
;	genLabel
00109$:
	C$sio.c$60$1_0$152	= .
	.globl	C$sio.c$60$1_0$152
;src\core\sio.c:60: return TRUE;
;	genRet
;	genMove_o size 1
	ld	e, #0x01
;	genLabel
; common peephole 158 removed unused label 00110$.
	C$sio.c$61$1_0$152	= .
	.globl	C$sio.c$61$1_0$152
;src\core\sio.c:61: }
;	genEndFunction
	C$sio.c$61$1_0$152	= .
	.globl	C$sio.c$61$1_0$152
	XG$SIO_update$0$0	= .
	.globl	XG$SIO_update$0$0
	ret
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$SIO_init$0$0	= .
	.globl	G$SIO_init$0$0
	C$sio.c$63$1_0$158	= .
	.globl	C$sio.c$63$1_0$158
;src\core\sio.c:63: void SIO_init(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function SIO_init
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_SIO_init	= 255
_SIO_init::
	C$sio.c$64$1_0$158	= .
	.globl	C$sio.c$64$1_0$158
;src\core\sio.c:64: link_operation_mode = LINK_MODE_NONE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_operation_mode
	ld	(hl), #0x00
	C$sio.c$66$1_0$158	= .
	.globl	C$sio.c$66$1_0$158
;src\core\sio.c:66: link_packet_len = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_packet_len
	ld	(hl), #0x00
	C$sio.c$67$1_0$158	= .
	.globl	C$sio.c$67$1_0$158
;src\core\sio.c:67: link_packet_ptr = link_packet;
;	genAddrOf
	ld	bc, #_link_packet+0
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_link_packet_ptr
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$sio.c$68$1_0$158	= .
	.globl	C$sio.c$68$1_0$158
;src\core\sio.c:68: link_packet_received = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_packet_received
	ld	(hl), #0x00
	C$sio.c$70$1_0$158	= .
	.globl	C$sio.c$70$1_0$158
;src\core\sio.c:70: link_packet_snd_len = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_packet_snd_len
	ld	(hl), #0x00
	C$sio.c$71$1_0$158	= .
	.globl	C$sio.c$71$1_0$158
;src\core\sio.c:71: link_packet_snd_ptr = link_packet;
;	genAssign
;	(locations are the same)
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_link_packet_snd_ptr
;fetchLitPair	hl
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$sio.c$72$1_0$158	= .
	.globl	C$sio.c$72$1_0$158
;src\core\sio.c:72: link_packet_sent = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_link_packet_sent
	ld	(hl), #0x00
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$sio.c$73$1_0$158	= .
	.globl	C$sio.c$73$1_0$158
;src\core\sio.c:73: }
;	genEndFunction
	C$sio.c$73$1_0$158	= .
	.globl	C$sio.c$73$1_0$158
	XG$SIO_init$0$0	= .
	.globl	XG$SIO_init$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
