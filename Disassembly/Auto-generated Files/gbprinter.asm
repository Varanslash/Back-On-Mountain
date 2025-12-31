;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module gbprinter
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _printer_wait
	.globl _printer_print_tile
	.globl _printer_send_command
	.globl _printer_send_byte
	.globl _printer_send_receive
	.globl _GetWinAddr
	.globl _get_win_data
	.globl _get_vram_byte
	.globl _wait_vbl_done
	.globl _PRN_PKT_START
	.globl b_gbprinter_detect
	.globl _gbprinter_detect
	.globl b_gbprinter_print_overlay
	.globl _gbprinter_print_overlay
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
Fgbprinter$printer_status$0_0$0==.
_printer_status:
	.ds 2
Fgbprinter$printer_tile_num$0_0$0==.
_printer_tile_num:
	.ds 1
Lgbprinter.printer_print_tile$printer_CRC$1_0$159==.
_printer_print_tile_printer_CRC_10000_159:
	.ds 2
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
G$PRN_PKT_START$0_0$0==.
_PRN_PKT_START::
	.ds 14
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
	G$printer_send_receive$0$0	= .
	.globl	G$printer_send_receive$0$0
	C$gbprinter.c$31$0_0$153	= .
	.globl	C$gbprinter.c$31$0_0$153
;src\core\gbprinter.c:31: uint8_t printer_send_receive(uint8_t b) {
;	genLabel
;	genFunction
;	---------------------------------
; Function printer_send_receive
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
_printer_send_receive::
;	genReceive
;	genMove_o size 1
	ldh	(_SB_REG + 0), a
	C$gbprinter.c$33$1_0$153	= .
	.globl	C$gbprinter.c$33$1_0$153
;src\core\gbprinter.c:33: SC_REG = START_TRANSFER;
;	genAssign
	ld	a, #0x81
	ldh	(_SC_REG + 0), a
	C$gbprinter.c$34$1_0$153	= .
	.globl	C$gbprinter.c$34$1_0$153
;src\core\gbprinter.c:34: while (SC_REG & 0x80);
;	genLabel
00101$:
;	genCast
	ldh	a, (_SC_REG + 0)
;	genAnd
	rlca
; common peephole 80 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00118$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00101$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00119$.
;	skipping generated iCode
	C$gbprinter.c$35$1_0$153	= .
	.globl	C$gbprinter.c$35$1_0$153
;src\core\gbprinter.c:35: return SB_REG;
;	genRet
;	genMove_o size 1
	ldh	a, (_SB_REG + 0)
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$gbprinter.c$36$1_0$153	= .
	.globl	C$gbprinter.c$36$1_0$153
;src\core\gbprinter.c:36: }
;	genEndFunction
	C$gbprinter.c$36$1_0$153	= .
	.globl	C$gbprinter.c$36$1_0$153
	XG$printer_send_receive$0$0	= .
	.globl	XG$printer_send_receive$0$0
	ret
Fgbprinter$PRN_PKT_INIT$0_0$0 == .
_PRN_PKT_INIT:
	.db #0x88	; 136
	.db #0x33	; 51	'3'
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
Fgbprinter$PRN_PKT_STATUS$0_0$0 == .
_PRN_PKT_STATUS:
	.db #0x88	; 136
	.db #0x33	; 51	'3'
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x0f	; 15
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
Fgbprinter$PRN_PKT_EOF$0_0$0 == .
_PRN_PKT_EOF:
	.db #0x88	; 136
	.db #0x33	; 51	'3'
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
Fgbprinter$PRN_PKT_CANCEL$0_0$0 == .
_PRN_PKT_CANCEL:
	.db #0x88	; 136
	.db #0x33	; 51	'3'
	.db #0x08	; 8
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0x00	; 0
	.db #0x00	; 0
	G$printer_send_byte$0$0	= .
	.globl	G$printer_send_byte$0$0
	C$gbprinter.c$38$1_0$155	= .
	.globl	C$gbprinter.c$38$1_0$155
;src\core\gbprinter.c:38: uint8_t printer_send_byte(uint8_t b) {
;	genLabel
;	genFunction
;	---------------------------------
; Function printer_send_byte
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_printer_send_byte::
;	genReceive
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
	C$gbprinter.c$39$1_0$155	= .
	.globl	C$gbprinter.c$39$1_0$155
;src\core\gbprinter.c:39: return (uint8_t)(printer_status = ((printer_status << 8) | printer_send_receive(b)));
;	genLeftShift
;fetchLitPair	hl
	ld	hl, #_printer_status
	ld	b, (hl)
	ld	c, #0x00
;	genSend
	push	bc
;	genMove_o size 1
	ld	a, e
;	genMove_o size 0
;	genCall
	call	_printer_send_receive
;	genMove_o size 1
	pop	bc
;	genCast
;	genMove_o size 1
;	genMove_o size 1
; common peephole 1 removed dead load from #0x00 into e.
;	genOr
;	genMove_o size 1
;	genMove_o size 1
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_printer_status
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), b
;	genCast
;	genMove_o size 1
;	genRet
;	genMove_o size 1
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$gbprinter.c$40$1_0$155	= .
	.globl	C$gbprinter.c$40$1_0$155
;src\core\gbprinter.c:40: }
;	genEndFunction
	C$gbprinter.c$40$1_0$155	= .
	.globl	C$gbprinter.c$40$1_0$155
	XG$printer_send_byte$0$0	= .
	.globl	XG$printer_send_byte$0$0
	ret
	G$printer_send_command$0$0	= .
	.globl	G$printer_send_command$0$0
	C$gbprinter.c$42$1_0$157	= .
	.globl	C$gbprinter.c$42$1_0$157
;src\core\gbprinter.c:42: uint8_t printer_send_command(const uint8_t *command, uint8_t length) {
;	genLabel
;	genFunction
;	---------------------------------
; Function printer_send_command
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
_printer_send_command::
;	genReceive
;	genMove_o size 2
;	genReceive
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	C$gbprinter.c$44$1_0$157	= .
	.globl	C$gbprinter.c$44$1_0$157
;src\core\gbprinter.c:44: while (index++ < length) printer_send_byte(*command++);
;	genAssign
;	genMove_o size 1
	ld	b, #0x00
;	genLabel
00101$:
;	genCmpLt
	ld	a, b
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00103$
;	skipping generated iCode
;	genPlus
	inc	b
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genPlus
	inc	de
;	genSend
	push	bc
	push	de
;	genMove_o size 1
	ld	a, l
;	genMove_o size 0
;	genCall
	call	_printer_send_byte
	pop	de
	pop	bc
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00101$
;	genLabel
00103$:
	C$gbprinter.c$45$1_0$157	= .
	.globl	C$gbprinter.c$45$1_0$157
;src\core\gbprinter.c:45: return ((uint8_t)(printer_status >> 8) == 0x81) ? (uint8_t)printer_status : PRN_STATUS_MASK_ERRORS;
;	genGetByte
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_printer_status + 1
	ld	a, (hl)
;	genCmpEq
	sub	a, #0x81
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00127$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00106$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00128$.
;	skipping generated iCode
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	dec	hl
	ld	a, (hl)
;	genCast
;	(locations are the same)
;	genGoto
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00106$:
;	genAssign
;	genMove_o size 1
	ld	a, #0xf0
;	genLabel
; common peephole 158 removed unused label 00107$.
;	genCast
;	(locations are the same)
;	genRet
;	genMove_o size 1
;	genLabel
; common peephole 158 removed unused label 00104$.
	C$gbprinter.c$46$1_0$157	= .
	.globl	C$gbprinter.c$46$1_0$157
;src\core\gbprinter.c:46: }
;	genEndFunction
	C$gbprinter.c$46$1_0$157	= .
	.globl	C$gbprinter.c$46$1_0$157
	XG$printer_send_command$0$0	= .
	.globl	XG$printer_send_command$0$0
	ret
	G$printer_print_tile$0$0	= .
	.globl	G$printer_print_tile$0$0
	C$gbprinter.c$49$1_0$159	= .
	.globl	C$gbprinter.c$49$1_0$159
;src\core\gbprinter.c:49: uint8_t printer_print_tile(const uint8_t *tiledata) {
;	genLabel
;	genFunction
;	---------------------------------
; Function printer_print_tile
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 2 bytes.
_printer_print_tile::
;	adjustStack by -2
	dec	sp
	dec	sp
;	genReceive
;	genMove_o size 2
	ld	b, e
;	genMove_o size 0
	C$gbprinter.c$52$1_0$159	= .
	.globl	C$gbprinter.c$52$1_0$159
;src\core\gbprinter.c:52: if (printer_tile_num == 0) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_printer_tile_num)
; common peephole 17 loaded a from (#_printer_tile_num) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00103$
	C$gbprinter.c$53$3_0$160	= .
	.globl	C$gbprinter.c$53$3_0$160
;src\core\gbprinter.c:53: const uint8_t * data = PRINT_TILE;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_printer_print_tile_PRINT_TILE_10000_159
	C$gbprinter.c$54$1_0$159	= .
	.globl	C$gbprinter.c$54$1_0$159
;src\core\gbprinter.c:54: for (uint8_t i = sizeof(PRINT_TILE); i != 0; i--) printer_send_receive(*data++);
;	genAssign
;	genMove_o size 1
	ld	c, #0x06
;	genLabel
00108$:
;	genIfx
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00101$
;	genPointerGet
;	genPlus
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genSend
	push	hl
	push	bc
	push	de
;	genMove_o size 1
	ld	a, e
;	genMove_o size 0
;	genCall
	call	_printer_send_receive
	pop	de
	pop	bc
	pop	hl
;	genMinus
	dec	c
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00101$:
	C$gbprinter.c$55$2_0$160	= .
	.globl	C$gbprinter.c$55$2_0$160
;src\core\gbprinter.c:55: printer_CRC = 0x04 + 0x80 + 0x02;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_printer_print_tile_printer_CRC_10000_159
;fetchLitPair	hl
; common peephole 96b move inc hl before xor a, a
	ld	a, #0x86
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	xor	a, a
	ld	(hl), a
;	genLabel
00103$:
	C$gbprinter.c$57$1_0$159	= .
	.globl	C$gbprinter.c$57$1_0$159
;src\core\gbprinter.c:57: for(uint8_t i = 0x10; i != 0; i--, tiledata++) {
;	genAssign
;	genMove_o size 1
	ld	c, #0x10
;	genAssign
;	AOP_STK for _printer_print_tile_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#0
	ld	a, b
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
;	genLabel
00111$:
;	genIfx
	ld	a, c
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
	C$gbprinter.c$58$3_0$163	= .
	.globl	C$gbprinter.c$58$3_0$163
;src\core\gbprinter.c:58: printer_CRC += *tiledata;
;	genPointerGet
;	AOP_STK for _printer_print_tile_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
;	genCast
;	(locations are the same)
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_printer_print_tile_printer_CRC_10000_159
	ld	e, (hl)
;fetchLitPair	hl
	inc	hl
	ld	d, (hl)
;	genCast
;	genMove_o size 1
;	genMove_o size 1
;	genPlus
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
; common peephole 96b move dec hl before adc a, d
; common peephole 96b move dec hl before ld a, b
; common peephole 96b move dec hl before ld e, a
; common peephole 96b move dec hl before add a, e
; common peephole 96b move dec hl before ld b, #0x00
	dec	hl
	ld	b, #0x00
	add	a, e
	ld	e, a
	ld	a, b
	adc	a, d
	ld	(hl), e
;fetchLitPair	hl
	inc	hl
	ld	(hl), a
	C$gbprinter.c$59$3_0$163	= .
	.globl	C$gbprinter.c$59$3_0$163
;src\core\gbprinter.c:59: printer_send_receive(*tiledata);
;	genPointerGet
;	AOP_STK for _printer_print_tile_sloc0_1_0
;fetchPairLong
	pop	de
	push	de
	ld	a, (de)
	ld	b, a
;	genSend
	push	bc
;	genMove_o size 1
	ld	a, b
;	genMove_o size 0
;	genCall
	call	_printer_send_receive
	pop	bc
	C$gbprinter.c$57$2_0$162	= .
	.globl	C$gbprinter.c$57$2_0$162
;src\core\gbprinter.c:57: for(uint8_t i = 0x10; i != 0; i--, tiledata++) {
;	genMinus
	dec	c
;	genPlus
;	AOP_STK for _printer_print_tile_sloc0_1_0
	ldhl	sp,	#0
	inc	(hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00111$
; common peephole 84 jumped to 00111$ directly instead of via 00153$.
	inc	hl
	inc	(hl)
; common peephole 158 removed unused label 00153$.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00111$
;	genLabel
00104$:
	C$gbprinter.c$61$1_0$159	= .
	.globl	C$gbprinter.c$61$1_0$159
;src\core\gbprinter.c:61: if (++printer_tile_num == 40) {
;	genPlus
;fetchLitPair	hl
	ld	hl, #_printer_tile_num
	inc	(hl)
;	genCmpEq
;fetchLitPair	hl
	ld	a, (hl)
	sub	a, #0x28
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00154$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00106$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00155$.
;	skipping generated iCode
	C$gbprinter.c$62$2_0$164	= .
	.globl	C$gbprinter.c$62$2_0$164
;src\core\gbprinter.c:62: printer_send_receive((uint8_t)printer_CRC);
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
;	genSend
;	genMove_o size 1
; common peephole 9 loaded a from (hl) directly instead of going through c.
	ld	a, (#_printer_print_tile_printer_CRC_10000_159)
; common peephole 17 loaded a from (#_printer_print_tile_printer_CRC_10000_159) directly instead of using hl.
;	genMove_o size 0
;	genCall
	call	_printer_send_receive
	C$gbprinter.c$63$2_0$164	= .
	.globl	C$gbprinter.c$63$2_0$164
;src\core\gbprinter.c:63: printer_send_receive((uint8_t)(printer_CRC >> 8));
;	genGetByte
;	genMove_o size 1
;fetchLitPair	hl
;	genSend
;	genMove_o size 1
; common peephole 9 loaded a from (hl) directly instead of going through c.
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_printer_print_tile_printer_CRC_10000_159 + 1)
;	genMove_o size 0
;	genCall
	call	_printer_send_receive
	C$gbprinter.c$64$2_0$164	= .
	.globl	C$gbprinter.c$64$2_0$164
;src\core\gbprinter.c:64: printer_send_receive(0x00);
;	genSend
;	genMove_o size 1
	xor	a, a
;	genCall
	call	_printer_send_receive
	C$gbprinter.c$65$2_0$164	= .
	.globl	C$gbprinter.c$65$2_0$164
;src\core\gbprinter.c:65: printer_send_receive(0x00);
;	genSend
;	genMove_o size 1
	xor	a, a
;	genCall
	call	_printer_send_receive
	C$gbprinter.c$66$2_0$164	= .
	.globl	C$gbprinter.c$66$2_0$164
;src\core\gbprinter.c:66: printer_CRC = printer_tile_num = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_printer_tile_num
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_printer_print_tile_printer_CRC_10000_159
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$gbprinter.c$67$2_0$164	= .
	.globl	C$gbprinter.c$67$2_0$164
;src\core\gbprinter.c:67: return TRUE;
;	genRet
;	genMove_o size 1
	ld	a, #0x01
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00113$
;	genLabel
00106$:
	C$gbprinter.c$69$1_0$159	= .
	.globl	C$gbprinter.c$69$1_0$159
;src\core\gbprinter.c:69: return FALSE;
;	genRet
;	genMove_o size 1
	xor	a, a
;	genLabel
00113$:
	C$gbprinter.c$70$1_0$159	= .
	.globl	C$gbprinter.c$70$1_0$159
;src\core\gbprinter.c:70: }
;	genEndFunction
;	adjustStack by 2
	inc	sp
	inc	sp
	C$gbprinter.c$70$1_0$159	= .
	.globl	C$gbprinter.c$70$1_0$159
	XG$printer_print_tile$0$0	= .
	.globl	XG$printer_print_tile$0$0
	ret
Lgbprinter.printer_print_tile$PRINT_TILE$1_0$159 == .
_printer_print_tile_PRINT_TILE_10000_159:
	.db #0x88	; 136
	.db #0x33	; 51	'3'
	.db #0x04	; 4
	.db #0x00	; 0
	.db #0x80	; 128
	.db #0x02	; 2
	G$printer_wait$0$0	= .
	.globl	G$printer_wait$0$0
	C$gbprinter.c$77$1_0$168	= .
	.globl	C$gbprinter.c$77$1_0$168
;src\core\gbprinter.c:77: uint8_t printer_wait(uint16_t timeout, uint8_t mask, uint8_t value) {
;	genLabel
;	genFunction
;	---------------------------------
; Function printer_wait
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 1 bytes.
_printer_wait::
;	adjustStack by -1
	dec	sp
;	genReceive
;	genMove_o size 2
;	genReceive
;	AOP_STK for _printer_wait_mask_10000_167
;	genMove_o size 1
	ldhl	sp,	#0
	ld	(hl), a
;	genMove_o size 0
	C$gbprinter.c$79$1_0$168	= .
	.globl	C$gbprinter.c$79$1_0$168
;src\core\gbprinter.c:79: while (((error = PRINTER_SEND_COMMAND(PRN_PKT_STATUS)) & mask) != value) {
;	skipping iCode since result will be rematerialized
;	genLabel
00105$:
;	skipping iCode since result will be rematerialized
;	genSend
	push	de
;	genMove_o size 1
	ld	a, #0x0a
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_PRN_PKT_STATUS
;	genCall
	call	_printer_send_command
;	genMove_o size 1
	pop	de
;	genAssign
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genAnd
;	AOP_STK for _printer_wait_mask_10000_167
	ldhl	sp,	#0
	and	a, (hl)
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;	genCmpEq
;	AOP_STK for 
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00107$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00134$.
;	skipping generated iCode
	C$gbprinter.c$80$2_0$169	= .
	.globl	C$gbprinter.c$80$2_0$169
;src\core\gbprinter.c:80: if (timeout-- == 0) return PRN_STATUS_MASK_ERRORS;
;	genAssign
;	genMove_o size 2
	ld	a, e
	ld	b, d
;	genMove_o size 0
;	genMinus
	dec	de
;	genIfx
	or	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
;	genRet
;	genMove_o size 1
	ld	a, #0xf0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00108$
;	genLabel
00102$:
	C$gbprinter.c$81$2_0$169	= .
	.globl	C$gbprinter.c$81$2_0$169
;src\core\gbprinter.c:81: if (error & PRN_STATUS_MASK_ERRORS) break;
;	genAnd
	ld	a, c
	and	a, #0xf0
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00135$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00107$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00136$.
;	skipping generated iCode
	C$gbprinter.c$82$2_0$169	= .
	.globl	C$gbprinter.c$82$2_0$169
;src\core\gbprinter.c:82: wait_vbl_done();
;	genCall
	call	_wait_vbl_done
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00105$
;	genLabel
00107$:
	C$gbprinter.c$84$1_0$168	= .
	.globl	C$gbprinter.c$84$1_0$168
;src\core\gbprinter.c:84: return error;
;	genRet
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genLabel
00108$:
	C$gbprinter.c$85$1_0$168	= .
	.globl	C$gbprinter.c$85$1_0$168
;src\core\gbprinter.c:85: }
;	genEndFunction
;	adjustStack by 1
	inc	sp
	pop	hl
;	adjustStack by 1
	inc	sp
	jp	(hl)
	G$gbprinter_detect$0$0	= .
	.globl	G$gbprinter_detect$0$0
	C$gbprinter.c$88$1_0$171	= .
	.globl	C$gbprinter.c$88$1_0$171
;src\core\gbprinter.c:88: uint8_t gbprinter_detect(uint8_t delay) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function gbprinter_detect
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_gbprinter_detect	= 255
_gbprinter_detect::
;src\core\gbprinter.c:73: printer_tile_num = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_printer_tile_num
	ld	(hl), #0x00
;src\core\gbprinter.c:74: PRINTER_SEND_COMMAND(PRN_PKT_INIT);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 1
	ld	a, #0x0a
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_PRN_PKT_INIT
;	genCall
	call	_printer_send_command
	C$gbprinter.c$90$1_0$171	= .
	.globl	C$gbprinter.c$90$1_0$171
;src\core\gbprinter.c:90: return printer_wait(delay, PRN_STATUS_MASK_ANY, PRN_STATUS_OK);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#6
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
;	genIpush
;	genMove_o size 1
; common peephole 94a reused constant #0 loaded into register.
	xor	a, a
	ld	d, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 1
	ld	a, #0xff
;	genSend
;	genMove_o size 2
;	genCall
	call	_printer_wait
;	genMove_o size 1
;	genRet
;	genMove_o size 1
;	genLabel
; common peephole 158 removed unused label 00102$.
	C$gbprinter.c$91$1_0$171	= .
	.globl	C$gbprinter.c$91$1_0$171
;src\core\gbprinter.c:91: }
;	genEndFunction
	C$gbprinter.c$91$1_0$171	= .
	.globl	C$gbprinter.c$91$1_0$171
	XG$gbprinter_detect$0$0	= .
	.globl	XG$gbprinter_detect$0$0
	ret
	G$gbprinter_print_overlay$0$0	= .
	.globl	G$gbprinter_print_overlay$0$0
	C$gbprinter.c$93$1_0$176	= .
	.globl	C$gbprinter.c$93$1_0$176
;src\core\gbprinter.c:93: uint8_t gbprinter_print_overlay(uint8_t start, uint8_t rows, uint8_t margins) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function gbprinter_print_overlay
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 23 bytes.
	b_gbprinter_print_overlay	= 255
_gbprinter_print_overlay::
;	adjustStack by -23
	add	sp, #-23
	C$gbprinter.c$94$2_0$176	= .
	.globl	C$gbprinter.c$94$2_0$176
;src\core\gbprinter.c:94: uint8_t tile_data[16], error, packets, pkt_count = 0;
;	genAssign
;	AOP_STK for _gbprinter_print_overlay_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#16
	ld	(hl), #0x00
	C$gbprinter.c$95$1_0$176	= .
	.globl	C$gbprinter.c$95$1_0$176
;src\core\gbprinter.c:95: if ((packets = rows >> 1) == 0) return PRN_STATUS_OK;
;	genRightShift
;	AOP_STK for 
	ldhl	sp,	#30
	ld	c, (hl)
	srl	c
;	genAssign
;	genMove_o size 1
	ld	b, c
;	genMove_o size 0
;	genIfx
	ld	a, c
;	genRet
;	genMove_o size 1
	or	a,a
; common peephole 154a removed redundant zeroing of a (which has just been tested to be #0x00).
;	genLabel
	jp	Z,00131$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00102$.
	C$gbprinter.c$97$1_1$177	= .
	.globl	C$gbprinter.c$97$1_1$177
;src\core\gbprinter.c:97: uint8_t * map = GetWinAddr() + ((uint16_t)start << 5);
;	genCall
	call	_GetWinAddr
;	genMove_o size 2
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#29
	ld	a, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	c, #0x00
;	genLeftShift
;	genMove_o size 2
	add	a, a
	rl	c
	add	a, a
	rl	c
	add	a, a
	rl	c
	add	a, a
	rl	c
	add	a, a
	rl	c
;	genPlus
;	AOP_STK for _gbprinter_print_overlay_sloc1_1_0
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, c
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#19
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#18
	ld	(hl), a
;	genMove_o size 0
	C$gbprinter.c$98$1_1$177	= .
	.globl	C$gbprinter.c$98$1_1$177
;src\core\gbprinter.c:98: printer_tile_num = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_printer_tile_num
	ld	(hl), #0x00
	C$gbprinter.c$99$2_1$178	= .
	.globl	C$gbprinter.c$99$2_1$178
;src\core\gbprinter.c:99: for (uint8_t y = packets << 1; y != 0; y--, map += 0x20) {
;	genCast
;	genMove_o size 1
	ld	a, b
;	genMove_o size 0
;	genLeftShift
;	AOP_STK for _gbprinter_print_overlay_sloc2_1_0
	add	a, a
	ldhl	sp,	#19
	ld	(hl), a
;	genLabel
00129$:
;	genIfx
;	AOP_STK for _gbprinter_print_overlay_sloc2_1_0
	ldhl	sp,	#19
	ld	a, (hl)
	or	a, a
	jp	Z, 00116$
	C$gbprinter.c$100$5_1$180	= .
	.globl	C$gbprinter.c$100$5_1$180
;src\core\gbprinter.c:100: for (uint8_t x = 0, *row = map; x != 20; x++, row++) {
;	genAssign
;	AOP_STK for _gbprinter_print_overlay_sloc1_1_0
;	AOP_STK for _gbprinter_print_overlay_sloc3_1_0
;	genMove_o size 2
	dec	hl
	dec	hl
	ld	a, (hl)
	ldhl	sp,	#20
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
	ld	a, (hl)
	ldhl	sp,	#21
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	AOP_STK for _gbprinter_print_overlay_sloc4_1_0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genLabel
00126$:
;	genCmpEq
;	AOP_STK for _gbprinter_print_overlay_sloc4_1_0
	ldhl	sp,	#22
	ld	a, (hl)
	sub	a, #0x14
	jp	Z,00130$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00259$.
;	skipping generated iCode
	C$gbprinter.c$101$5_1$181	= .
	.globl	C$gbprinter.c$101$5_1$181
;src\core\gbprinter.c:101: uint8_t tileno = get_vram_byte(row);
;	genSend
;	AOP_STK for _gbprinter_print_overlay_sloc3_1_0
;	genMove_o size 2
	ldhl	sp,	#20
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	_get_vram_byte
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
	C$gbprinter.c$103$5_1$181	= .
	.globl	C$gbprinter.c$103$5_1$181
;src\core\gbprinter.c:103: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #__is_CGB
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
	C$gbprinter.c$104$6_1$182	= .
	.globl	C$gbprinter.c$104$6_1$182
;src\core\gbprinter.c:104: VBK_REG = 1;
;	genAssign
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
	C$gbprinter.c$105$6_1$182	= .
	.globl	C$gbprinter.c$105$6_1$182
;src\core\gbprinter.c:105: VBK_REG = ((_is_CGB) && (get_vram_byte(row) & 0x08u)) ? 1 : 0;
;	genIfx
;fetchLitPair	hl
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00133$
;	genSend
;	AOP_STK for _gbprinter_print_overlay_sloc3_1_0
;	genMove_o size 2
	ldhl	sp,	#20
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
;	genCall
	call	_get_vram_byte
;	genMove_o size 1
;	genMove_o size 0
;	genGetAbit
; common peephole 9 loaded a from a directly instead of going through c.
; common peephole 0a removed redundant load from a into a.
	rrca
	rrca
	rrca
	and	a, #0x01
;	genMove_o size 0
;	genIfx
	ld	c, a
; common peephole 98 removed redundant load from c into a.
	or	a, a
;	genAssign
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	genMove_o size 1
;	genLabel
	ld	a, #0x01
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00134$
; common peephole 169xz used double assignment in case of Z condition.
00133$:
	xor	a, a
00134$:
;	genCast
	ldh	(_VBK_REG + 0), a
;	genLabel
00104$:
	C$gbprinter.c$107$5_1$181	= .
	.globl	C$gbprinter.c$107$5_1$181
;src\core\gbprinter.c:107: get_win_data(tileno, 1, tile_data);
;	genCast
;	genMove_o size 2
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2
;	genIpush
	push	hl
;	genIpush
;	genMove_o size 1
	ld	a, #0x01
	push	af
	inc	sp
;	genIpush
	push	bc
	inc	sp
;	genCall
	call	_get_win_data
;	adjustStack by 4
	add	sp, #4
	C$gbprinter.c$108$5_1$181	= .
	.globl	C$gbprinter.c$108$5_1$181
;src\core\gbprinter.c:108: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
	C$gbprinter.c$112$5_1$181	= .
	.globl	C$gbprinter.c$112$5_1$181
;src\core\gbprinter.c:112: if (printer_print_tile(tile_data)) pkt_count++;
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 2
	ld	hl, #0
	add	hl, sp
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCall
	call	_printer_print_tile
;	genMove_o size 1
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
;	genPlus
;	AOP_STK for _gbprinter_print_overlay_sloc0_1_0
	ldhl	sp,	#16
	inc	(hl)
;	genLabel
00106$:
	C$gbprinter.c$113$5_1$181	= .
	.globl	C$gbprinter.c$113$5_1$181
;src\core\gbprinter.c:113: if (pkt_count == 9) {
;	genCmpEq
;	AOP_STK for _gbprinter_print_overlay_sloc0_1_0
	ldhl	sp,	#16
	ld	a, (hl)
	sub	a, #0x09
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00260$.
	jp	NZ,00127$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00261$.
;	skipping generated iCode
	C$gbprinter.c$114$6_1$183	= .
	.globl	C$gbprinter.c$114$6_1$183
;src\core\gbprinter.c:114: pkt_count = 0;
;	genAssign
;	AOP_STK for _gbprinter_print_overlay_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#16
	ld	(hl), #0x00
	C$gbprinter.c$115$6_1$183	= .
	.globl	C$gbprinter.c$115$6_1$183
;src\core\gbprinter.c:115: PRINTER_SEND_COMMAND(PRN_PKT_EOF);
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 1
	ld	a, #0x0a
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_PRN_PKT_EOF
;	genCall
	call	_printer_send_command
;src\core\gbprinter.c:116: gbprinter_set_print_params((y == (rows - 1)) ? margins : PRN_NO_MARGINS, PRN_PALETTE_NORMAL, PRN_EXPOSURE_DARK);
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#30
	ld	c, (hl)
;	genMove_o size 0
;	genMove_o size 1
	xor	a, a
;	genMinus
;fetchPairLong
	ld	b, a
	dec	bc
;	genCast
;	AOP_STK for _gbprinter_print_overlay_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#19
	ld	e, (hl)
;	genMove_o size 0
;	genMove_o size 1
	ld	d, #0x00
;	genCmpEq
	ld	a, e
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00138$
; common peephole 84 jumped to 00138$ directly instead of via 00262$.
	ld	a, d
	sub	a, b
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00262$.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00138$
; common peephole 82 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00263$.
;	skipping generated iCode
;	genCast
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#31
	ld	c, (hl)
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00139$
;	genLabel
00138$:
;	genAssign
;	genMove_o size 1
	ld	c, #0x00
;	genLabel
00139$:
;	genCast
;	(locations are the same)
;include/gbprinter.h:133: PRN_PKT_START.crc = ((PRN_CMD_PRINT + 0x04u + 0x01u) + (PRN_PKT_START.margins = margins) + (PRN_PKT_START.palette = palette) + (PRN_PKT_START.exposure = exposure));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_PRN_PKT_START + 7)
	ld	(hl), c
;	genAssign
;	(locations are the same)
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	b, #0x00
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0007
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;fetchLitPair	hl
	ld	hl, #_PRN_PKT_START + 8
;	genAssign (pointer)
	ld	(hl), #0xe4
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x00e4
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;fetchLitPair	hl
	ld	hl, #_PRN_PKT_START + 9
;	genAssign (pointer)
	ld	(hl), #0x7f
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x007f
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_PRN_PKT_START + 10)
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$gbprinter.c$117$6_1$183	= .
	.globl	C$gbprinter.c$117$6_1$183
;src\core\gbprinter.c:117: PRINTER_SEND_COMMAND(PRN_PKT_START);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 1
	ld	a, #0x0e
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_PRN_PKT_START
;	genCall
	call	_printer_send_command
	C$gbprinter.c$119$6_1$183	= .
	.globl	C$gbprinter.c$119$6_1$183
;src\core\gbprinter.c:119: if ((error = printer_wait(PRN_BUSY_TIMEOUT, PRN_STATUS_BUSY, PRN_STATUS_BUSY)) & PRN_STATUS_MASK_ERRORS) return error;
;	genIpush
;	genMove_o size 1
	ld	a, #0x02
	push	af
	inc	sp
;	genSend
;	genMove_o size 1
	ld	a, #0x02
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0078
;	genCall
	call	_printer_wait
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genAnd
	and	a, #0xf0
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00108$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00264$.
;	skipping generated iCode
;	genRet
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
	jp	00131$
;	genLabel
00108$:
	C$gbprinter.c$120$6_1$183	= .
	.globl	C$gbprinter.c$120$6_1$183
;src\core\gbprinter.c:120: if ((error = printer_wait(PRN_COMPLETION_TIMEOUT, PRN_STATUS_BUSY, 0)) & PRN_STATUS_MASK_ERRORS) return error;
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 1
	ld	a, #0x02
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x04b0
;	genCall
	call	_printer_wait
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genAnd
	and	a, #0xf0
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00110$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00265$.
;	skipping generated iCode
;	genRet
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
	jp	00131$
;	genLabel
00110$:
	C$gbprinter.c$123$6_1$183	= .
	.globl	C$gbprinter.c$123$6_1$183
;src\core\gbprinter.c:123: PRINTER_SEND_COMMAND(PRN_PKT_INIT);
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 1
	ld	a, #0x0a
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_PRN_PKT_INIT
;	genCall
	call	_printer_send_command
	C$gbprinter.c$124$6_1$183	= .
	.globl	C$gbprinter.c$124$6_1$183
;src\core\gbprinter.c:124: if (error = printer_wait(PRN_SEIKO_RESET_TIMEOUT, PRN_STATUS_MASK_ANY, PRN_STATUS_OK)) return error;
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 1
	ld	a, #0xff
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x000a
;	genCall
	call	_printer_wait
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
;	genMove_o size 0
;	genIfx
;	genRet
;	genMove_o size 1
	ld	c,a
	or	a,a
; common peephole 151 used value still in a instead of reloading from c.
;	genMove_o size 0
;	genLabel
	jp	NZ,00131$
; common peephole 82 removed jp by using inverse jump logic
00127$:
	C$gbprinter.c$100$4_1$180	= .
	.globl	C$gbprinter.c$100$4_1$180
;src\core\gbprinter.c:100: for (uint8_t x = 0, *row = map; x != 20; x++, row++) {
;	genPlus
;	AOP_STK for _gbprinter_print_overlay_sloc4_1_0
	ldhl	sp,	#22
	inc	(hl)
;	genPlus
;	AOP_STK for _gbprinter_print_overlay_sloc3_1_0
	dec	hl
	dec	hl
	inc	(hl)
	jp	NZ,00126$
; common peephole 84 jumped to 00126$ directly instead of via 00266$.
	inc	hl
	inc	(hl)
; common peephole 158 removed unused label 00266$.
;	genGoto
	jp	00126$
;	genLabel
00130$:
	C$gbprinter.c$99$2_1$178	= .
	.globl	C$gbprinter.c$99$2_1$178
;src\core\gbprinter.c:99: for (uint8_t y = packets << 1; y != 0; y--, map += 0x20) {
;	genMinus
;	AOP_STK for _gbprinter_print_overlay_sloc2_1_0
	ldhl	sp,	#19
	dec	(hl)
;	genPlus
;	AOP_STK for _gbprinter_print_overlay_sloc1_1_0
;fetchPairLong
	dec	hl
	dec	hl
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0020
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#19
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#18
	ld	(hl), a
;	genMove_o size 0
;	genGoto
	jp	00129$
;	genLabel
00116$:
	C$gbprinter.c$129$1_1$177	= .
	.globl	C$gbprinter.c$129$1_1$177
;src\core\gbprinter.c:129: if (pkt_count) {
;	genIfx
;	AOP_STK for _gbprinter_print_overlay_sloc0_1_0
	ldhl	sp,	#16
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00122$
	C$gbprinter.c$130$2_1$184	= .
	.globl	C$gbprinter.c$130$2_1$184
;src\core\gbprinter.c:130: PRINTER_SEND_COMMAND(PRN_PKT_EOF);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 1
	ld	a, #0x0a
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_PRN_PKT_EOF
;	genCall
	call	_printer_send_command
;src\core\gbprinter.c:132: gbprinter_set_print_params(margins, PRN_PALETTE_NORMAL, PRN_EXPOSURE_DARK);
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#31
	ld	c, (hl)
;	genMove_o size 0
;include/gbprinter.h:133: PRN_PKT_START.crc = ((PRN_CMD_PRINT + 0x04u + 0x01u) + (PRN_PKT_START.margins = margins) + (PRN_PKT_START.palette = palette) + (PRN_PKT_START.exposure = exposure));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_PRN_PKT_START + 7)
	ld	(hl), c
;	genAssign
;	(locations are the same)
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	ld	b, #0x00
;	genPlus
;fetchLitPair	hl
	ld	hl, #_PRN_PKT_START + 8
;	genAssign (pointer)
	ld	(hl), #0xe4
;	genPlus
;fetchLitPair	hl
	ld	hl, #_PRN_PKT_START + 9
;	genAssign (pointer)
	ld	(hl), #0x7f
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x016a
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_PRN_PKT_START + 10)
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 1
	ld	a, #0x0e
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_PRN_PKT_START
;	genCall
	call	_printer_send_command
	C$gbprinter.c$135$2_1$184	= .
	.globl	C$gbprinter.c$135$2_1$184
;src\core\gbprinter.c:135: if ((error = printer_wait(PRN_BUSY_TIMEOUT, PRN_STATUS_BUSY, PRN_STATUS_BUSY)) & PRN_STATUS_MASK_ERRORS) return error;
;	genIpush
;	genMove_o size 1
	ld	a, #0x02
	push	af
	inc	sp
;	genSend
;	genMove_o size 1
	ld	a, #0x02
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0078
;	genCall
	call	_printer_wait
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genAnd
	and	a, #0xf0
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00118$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00267$.
;	skipping generated iCode
;	genRet
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00131$
;	genLabel
00118$:
	C$gbprinter.c$136$2_1$184	= .
	.globl	C$gbprinter.c$136$2_1$184
;src\core\gbprinter.c:136: if ((error = printer_wait(PRN_COMPLETION_TIMEOUT, PRN_STATUS_BUSY, 0)) & PRN_STATUS_MASK_ERRORS) return error;
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genSend
;	genMove_o size 1
	ld	a, #0x02
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x04b0
;	genCall
	call	_printer_wait
;	genMove_o size 1
;	genAssign
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genAnd
	and	a, #0xf0
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00122$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00268$.
;	skipping generated iCode
;	genRet
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00131$
;	genLabel
00122$:
	C$gbprinter.c$138$1_1$177	= .
	.globl	C$gbprinter.c$138$1_1$177
;src\core\gbprinter.c:138: return PRINTER_SEND_COMMAND(PRN_PKT_STATUS);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genSend
;	genMove_o size 1
	ld	a, #0x0a
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_PRN_PKT_STATUS
;	genCall
	call	_printer_send_command
;	genMove_o size 1
;	genRet
;	genMove_o size 1
;	genLabel
00131$:
	C$gbprinter.c$139$1_1$176	= .
	.globl	C$gbprinter.c$139$1_1$176
;src\core\gbprinter.c:139: }
;	genEndFunction
;	adjustStack by 23
	add	sp, #23
	C$gbprinter.c$139$1_1$176	= .
	.globl	C$gbprinter.c$139$1_1$176
	XG$gbprinter_print_overlay$0$0	= .
	.globl	XG$gbprinter_print_overlay$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
Fgbprinter$__xinit_PRN_PKT_START$0_0$0 == .
__xinit__PRN_PKT_START:
	.dw #0x3388
	.dw #0x0002
	.dw #0x0004
	.db #0x01	; 1
	.db #0x00	; 0
	.db #0xe4	; 228
	.db #0x7f	; 127
	.dw #0x0000
	.dw #0x0000
	.area _CABS (ABS)
