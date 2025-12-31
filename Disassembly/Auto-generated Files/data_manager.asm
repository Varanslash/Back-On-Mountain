;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module data_manager
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl b_do_load_palette
	.globl _do_load_palette
	.globl b_load_background
	.globl _load_background
	.globl b_load_bkg_tileset
	.globl _load_bkg_tileset
	.globl b_ui_load_tiles
	.globl _ui_load_tiles
	.globl b_trigger_reset
	.globl _trigger_reset
	.globl b_scroll_reset
	.globl _scroll_reset
	.globl b_projectiles_init
	.globl _projectiles_init
	.globl b_actor_set_anim_idle
	.globl _actor_set_anim_idle
	.globl b_activate_actor
	.globl _activate_actor
	.globl _IndexOfFarPtr
	.globl _MemcpyBanked
	.globl _ReadBankedUWORD
	.globl _ReadBankedFarPtr
	.globl _SetBankedSpriteData
	.globl _SetBankedBkgData
	.globl b_script_execute
	.globl _script_execute
	.globl _memset
	.globl _memcpy
	.globl _scene_sprites_base_tiles
	.globl _scene_stack_ptr
	.globl _scene_stack
	.globl _scene_LCD_type
	.globl _scene_type
	.globl _player_sprite_len
	.globl _projectiles_len
	.globl _actors_len
	.globl _sprites_len
	.globl _image_height
	.globl _image_width
	.globl _image_tile_height
	.globl _image_tile_width
	.globl _collision_ptr
	.globl _collision_bank
	.globl _image_attr_ptr
	.globl _image_attr_bank
	.globl _image_ptr
	.globl _image_bank
	.globl _current_scene
	.globl _spritesheet_none_far
	.globl b_load_init
	.globl _load_init
	.globl b_load_sprite
	.globl _load_sprite
	.globl _load_animations
	.globl b_load_bounds
	.globl _load_bounds
	.globl b_load_scene
	.globl _load_scene
	.globl b_load_player
	.globl _load_player
	.globl b_load_emote
	.globl _load_emote
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
G$current_scene$0_0$0==.
_current_scene::
	.ds 3
G$image_bank$0_0$0==.
_image_bank::
	.ds 1
G$image_ptr$0_0$0==.
_image_ptr::
	.ds 2
G$image_attr_bank$0_0$0==.
_image_attr_bank::
	.ds 1
G$image_attr_ptr$0_0$0==.
_image_attr_ptr::
	.ds 2
G$collision_bank$0_0$0==.
_collision_bank::
	.ds 1
G$collision_ptr$0_0$0==.
_collision_ptr::
	.ds 2
G$image_tile_width$0_0$0==.
_image_tile_width::
	.ds 1
G$image_tile_height$0_0$0==.
_image_tile_height::
	.ds 1
G$image_width$0_0$0==.
_image_width::
	.ds 2
G$image_height$0_0$0==.
_image_height::
	.ds 2
G$sprites_len$0_0$0==.
_sprites_len::
	.ds 1
G$actors_len$0_0$0==.
_actors_len::
	.ds 1
G$projectiles_len$0_0$0==.
_projectiles_len::
	.ds 1
G$player_sprite_len$0_0$0==.
_player_sprite_len::
	.ds 1
G$scene_type$0_0$0==.
_scene_type::
	.ds 1
G$scene_LCD_type$0_0$0==.
_scene_LCD_type::
	.ds 1
G$scene_stack$0_0$0==.
_scene_stack::
	.ds 64
G$scene_stack_ptr$0_0$0==.
_scene_stack_ptr::
	.ds 2
G$scene_sprites_base_tiles$0_0$0==.
_scene_sprites_base_tiles::
	.ds 64
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
	G$load_animations$0$0	= .
	.globl	G$load_animations$0$0
	C$data_manager.c$146$1_1$369	= .
	.globl	C$data_manager.c$146$1_1$369
;src\core\data_manager.c:146: void load_animations(const spritesheet_t *sprite, UBYTE bank, UWORD animation_set, animation_t * res_animations) NONBANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function load_animations
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 3 bytes.
_load_animations::
;	adjustStack by -3
	add	sp, #-3
;	genReceive
;	genMove_o size 2
	ld	c, e
	ld	b, d
;	genMove_o size 0
;	genReceive
;	genMove_o size 1
	ld	e, a
;	genMove_o size 0
	C$data_manager.c$147$2_0$369	= .
	.globl	C$data_manager.c$147$2_0$369
;src\core\data_manager.c:147: UBYTE _save = CURRENT_BANK;
;	genAssign
;	AOP_STK for _load_animations_sloc0_1_0
	ldh	a, (__current_bank + 0)
	ldhl	sp,	#0
	ld	(hl), a
	C$data_manager.c$148$1_0$369	= .
	.globl	C$data_manager.c$148$1_0$369
;src\core\data_manager.c:148: SWITCH_ROM(bank);
;	genAssign
	ld	a, e
	ldh	(__current_bank + 0), a
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_rROMB0
	ld	(hl), e
	C$data_manager.c$149$1_0$369	= .
	.globl	C$data_manager.c$149$1_0$369
;src\core\data_manager.c:149: memcpy(res_animations, sprite->animations + sprite->animations_lookup[animation_set], sizeof(animation_t) * 8);
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0005
	add	hl, bc
;	genPointerGet
;	AOP_STK for _load_animations_sloc1_1_0
;fetchPairLong
	ld	e, l
	ld	d, h
	ld	a, (de)
	ldhl	sp,	#1
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
	ld	(hl), a
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0007
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
	ldhl	sp,	#5
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
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genLeftShift
;fetchPairLong
	sla	c
	rl	b
;	genPlus
;	AOP_STK for _load_animations_sloc1_1_0
;fetchPairLong
	ldhl	sp,	#1
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
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#7
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
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
	call	_memcpy
	C$data_manager.c$150$1_0$369	= .
	.globl	C$data_manager.c$150$1_0$369
;src\core\data_manager.c:150: SWITCH_ROM(_save);
;	genAssign
;	AOP_STK for _load_animations_sloc0_1_0
	ldhl	sp,	#0
	ld	a, (hl)
	ldh	(__current_bank + 0), a
;	genAssign
;	AOP_STK for _load_animations_sloc0_1_0
;	genMove_o size 1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_rROMB0),a
; common peephole 19 loaded (#_rROMB0) from a directly instead of using hl.
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$data_manager.c$151$1_0$369	= .
	.globl	C$data_manager.c$151$1_0$369
;src\core\data_manager.c:151: }
;	genEndFunction
;	adjustStack by 3
	add	sp, #3
	pop	hl
;	adjustStack by 4
	add	sp, #4
	jp	(hl)
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE_255
	G$load_init$0$0	= .
	.globl	G$load_init$0$0
	C$data_manager.c$52$0_0$334	= .
	.globl	C$data_manager.c$52$0_0$334
;src\core\data_manager.c:52: void load_init(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function load_init
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_load_init	= 255
_load_init::
	C$data_manager.c$53$1_0$334	= .
	.globl	C$data_manager.c$53$1_0$334
;src\core\data_manager.c:53: actors_len = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actors_len
	ld	(hl), #0x00
	C$data_manager.c$54$1_0$334	= .
	.globl	C$data_manager.c$54$1_0$334
;src\core\data_manager.c:54: player_sprite_len = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_player_sprite_len
	ld	(hl), #0x00
	C$data_manager.c$55$1_0$334	= .
	.globl	C$data_manager.c$55$1_0$334
;src\core\data_manager.c:55: scene_stack_ptr = scene_stack;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scene_stack_ptr
	ld	(hl), #<(_scene_stack)
;fetchLitPair	hl
	inc	hl
	ld	(hl), #>(_scene_stack)
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$data_manager.c$56$1_0$334	= .
	.globl	C$data_manager.c$56$1_0$334
;src\core\data_manager.c:56: }
;	genEndFunction
	C$data_manager.c$56$1_0$334	= .
	.globl	C$data_manager.c$56$1_0$334
	XG$load_init$0$0	= .
	.globl	XG$load_init$0$0
	ret
G$spritesheet_none_far$0_0$0 == .
_spritesheet_none_far:
	.byte ___bank_spritesheet_none
	.dw _spritesheet_none
	G$load_bkg_tileset$0$0	= .
	.globl	G$load_bkg_tileset$0$0
	C$data_manager.c$58$1_0$336	= .
	.globl	C$data_manager.c$58$1_0$336
;src\core\data_manager.c:58: void load_bkg_tileset(const tileset_t* tiles, UBYTE bank) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function load_bkg_tileset
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_load_bkg_tileset	= 255
_load_bkg_tileset::
	C$data_manager.c$59$1_0$336	= .
	.globl	C$data_manager.c$59$1_0$336
;src\core\data_manager.c:59: if ((!bank) || (!tiles)) return;
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#8
	ld	a, (hl)
	or	a, a
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 84 jumped to 00119$ directly instead of via 00101$.
;	genIfx
;	AOP_STK for 
	dec	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
;	genLabel
; common peephole 158 removed unused label 00101$.
;	genRet
;	genLabel
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00102$.
	C$data_manager.c$61$1_1$337	= .
	.globl	C$data_manager.c$61$1_1$337
;src\core\data_manager.c:61: UWORD n_tiles = ReadBankedUWORD(&(tiles->n_tiles), bank);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genSend
;	AOP_STK for 
;	genMove_o size 1
; common peephole 96d move inc hl before push (de)
; common peephole 96b move inc hl before ld b, d
; common peephole 96b move inc hl before ld c, e
	ld	a, (hl+)
	ld	d, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	c, e
	ld	b, d
	push	de
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
	C$data_manager.c$64$1_1$337	= .
	.globl	C$data_manager.c$64$1_1$337
;src\core\data_manager.c:64: UBYTE * data = tiles->tiles;
;	genPlus
	inc	de
	inc	de
	C$data_manager.c$65$1_1$337	= .
	.globl	C$data_manager.c$65$1_1$337
;src\core\data_manager.c:65: if (n_tiles < 128) {
;	genCmpLt
	ld	a, c
	sub	a, #0x80
	ld	a, b
	sbc	a, #0x00
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00107$
;	skipping generated iCode
	C$data_manager.c$66$2_1$338	= .
	.globl	C$data_manager.c$66$2_1$338
;src\core\data_manager.c:66: if ((UBYTE)n_tiles) SetBankedBkgData(0, n_tiles, data, bank);
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genIfx
	or	a, a
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 84 jumped to 00119$ directly instead of via 00105$.
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
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
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
	add	sp, #5
;	genLabel
; common peephole 158 removed unused label 00105$.
	C$data_manager.c$67$2_1$338	= .
	.globl	C$data_manager.c$67$2_1$338
;src\core\data_manager.c:67: return;
;	genRet
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00107$:
	C$data_manager.c$69$1_1$337	= .
	.globl	C$data_manager.c$69$1_1$337
;src\core\data_manager.c:69: SetBankedBkgData(0, 128, data, bank);
;	genIpush
	push	bc
	push	de
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
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
; common peephole 37b pushed hl instead of pushing a twice.
; common peephole 1 removed dead load from #0x80 into a.
	ld	hl, #0x8000
; common peephole 93d combined constant loads into register pair.
	push	hl
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
	add	sp, #5
	pop	de
	pop	bc
	C$data_manager.c$70$1_1$337	= .
	.globl	C$data_manager.c$70$1_1$337
;src\core\data_manager.c:70: n_tiles -= 128; data += 128 * 16;
;	genMinus
	ld	a, c
	add	a, #0x80
	ld	c, a
	ld	a, b
	adc	a, #0xff
	ld	b, a
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0800
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
	C$data_manager.c$73$1_1$337	= .
	.globl	C$data_manager.c$73$1_1$337
;src\core\data_manager.c:73: if (n_tiles < 128) {
;	genCmpLt
	ld	a, c
	sub	a, #0x80
	ld	a, b
	sbc	a, #0x00
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00116$
;	skipping generated iCode
	C$data_manager.c$74$2_1$339	= .
	.globl	C$data_manager.c$74$2_1$339
;src\core\data_manager.c:74: if (n_tiles < 65) {
;	genCmpLt
	ld	a, c
	sub	a, #0x41
	ld	a, b
	sbc	a, #0x00
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00113$
;	skipping generated iCode
	C$data_manager.c$77$3_1$340	= .
	.globl	C$data_manager.c$77$3_1$340
;src\core\data_manager.c:77: if ((UBYTE)n_tiles) SetBankedBkgData(192 - n_tiles, n_tiles, data, bank);
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genIfx
	or	a, a
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 84 jumped to 00119$ directly instead of via 00114$.
;	genCast
;	genMove_o size 1
;	genCast
;	genMove_o size 1
	ld	b, c
;	genMove_o size 0
;	genMinus
	ld	a, #0xc0
	sub	a, b
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	push	hl
	inc	sp
;	genIpush
	push	de
;	genIpush
;	genMove_o size 1
	ld	h, c
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
;	genGoto
	ret
; common peephole 160 replaced jump by return.
; common peephole 83 jumped to 00119$ directly instead of via 00114$.
;	genLabel
00113$:
	C$data_manager.c$84$3_1$341	= .
	.globl	C$data_manager.c$84$3_1$341
;src\core\data_manager.c:84: if ((UBYTE)n_tiles) SetBankedBkgData(128, n_tiles, data, bank);
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genIfx
	or	a, a
	ret	Z
; common peephole 161 replaced jump by return.
; common peephole 84 jumped to 00119$ directly instead of via 00114$.
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
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
;	genMove_o size 1
	ld	a, #0x80
	push	af
	inc	sp
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
	add	sp, #5
;	genLabel
; common peephole 158 removed unused label 00114$.
	C$data_manager.c$86$2_1$339	= .
	.globl	C$data_manager.c$86$2_1$339
;src\core\data_manager.c:86: return;
;	genRet
	ret
; common peephole 160 replaced jump by return.
;	genLabel
00116$:
	C$data_manager.c$88$1_1$337	= .
	.globl	C$data_manager.c$88$1_1$337
;src\core\data_manager.c:88: SetBankedBkgData(128, 128, data, bank);
;	genIpush
	push	bc
	push	de
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#12
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
; common peephole 37a pushed hl instead of pushing a twice.
; common peephole 1 removed dead load from #0x80 into a.
	ld	hl, #0x8080
; common peephole 93d combined constant loads into register pair.
	push	hl
;	genCall
	call	_SetBankedBkgData
;	adjustStack by 5
	add	sp, #5
	pop	de
	pop	bc
	C$data_manager.c$89$1_1$337	= .
	.globl	C$data_manager.c$89$1_1$337
;src\core\data_manager.c:89: n_tiles -= 128; data += 128 * 16;
;	genMinus
	ld	a, c
	add	a, #0x80
	ld	c, a
; common peephole 6b removed dead adc a, #0xff
; common peephole 1 removed dead load from a into l.
;	spillPairReg hl
;	spillPairReg hl
;	genPlus
; common peephole 41a remove double load to a.
	ld	a, d
	add	a, #0x08
	ld	d, a
	C$data_manager.c$92$1_1$337	= .
	.globl	C$data_manager.c$92$1_1$337
;src\core\data_manager.c:92: if ((UBYTE)n_tiles) SetBankedSpriteData(0, n_tiles, data, bank);
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genIfx
	or	a, a
	ret	Z
; common peephole 161 replaced jump by return.
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
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
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genCall
	call	_SetBankedSpriteData
;	adjustStack by 5
	add	sp, #5
;	genLabel
; common peephole 158 removed unused label 00119$.
	C$data_manager.c$93$1_1$336	= .
	.globl	C$data_manager.c$93$1_1$336
;src\core\data_manager.c:93: }
;	genEndFunction
	C$data_manager.c$93$1_1$336	= .
	.globl	C$data_manager.c$93$1_1$336
	XG$load_bkg_tileset$0$0	= .
	.globl	XG$load_bkg_tileset$0$0
	ret
	G$load_background$0$0	= .
	.globl	G$load_background$0$0
	C$data_manager.c$95$1_1$343	= .
	.globl	C$data_manager.c$95$1_1$343
;src\core\data_manager.c:95: void load_background(const background_t* background, UBYTE bank) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function load_background
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 14 bytes.
	b_load_background	= 255
_load_background::
;	adjustStack by -14
	add	sp, #-14
	C$data_manager.c$97$1_0$343	= .
	.globl	C$data_manager.c$97$1_0$343
;src\core\data_manager.c:97: MemcpyBanked(&bkg, background, sizeof(bkg), bank);
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#20
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x000e
	push	de
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
	ld	hl, #3
	add	hl, sp
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCall
	call	_MemcpyBanked
	C$data_manager.c$99$1_0$343	= .
	.globl	C$data_manager.c$99$1_0$343
;src\core\data_manager.c:99: image_bank = bkg.tilemap.bank;
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#8
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_image_bank),a
; common peephole 19 loaded (#_image_bank) from a directly instead of using hl.
	C$data_manager.c$100$1_0$343	= .
	.globl	C$data_manager.c$100$1_0$343
;src\core\data_manager.c:100: image_ptr = bkg.tilemap.ptr;
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl)
;	genMove_o size 0
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_image_ptr
	ld	(hl), c
;fetchLitPair	hl
	inc	hl
	ld	(hl), a
	C$data_manager.c$102$1_0$343	= .
	.globl	C$data_manager.c$102$1_0$343
;src\core\data_manager.c:102: image_attr_bank = bkg.cgb_tilemap_attr.bank;
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#11
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_image_attr_bank),a
; common peephole 19 loaded (#_image_attr_bank) from a directly instead of using hl.
	C$data_manager.c$103$1_0$343	= .
	.globl	C$data_manager.c$103$1_0$343
;src\core\data_manager.c:103: image_attr_ptr = bkg.cgb_tilemap_attr.ptr;
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl)
;	genMove_o size 0
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_image_attr_ptr
	ld	(hl), c
;fetchLitPair	hl
	inc	hl
	ld	(hl), a
	C$data_manager.c$105$1_0$343	= .
	.globl	C$data_manager.c$105$1_0$343
;src\core\data_manager.c:105: image_tile_width = bkg.width;
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_image_tile_width),a
; common peephole 19 loaded (#_image_tile_width) from a directly instead of using hl.
	C$data_manager.c$106$1_0$343	= .
	.globl	C$data_manager.c$106$1_0$343
;src\core\data_manager.c:106: image_tile_height = bkg.height;
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#1
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_image_tile_height),a
; common peephole 19 loaded (#_image_tile_height) from a directly instead of using hl.
	C$data_manager.c$107$1_0$343	= .
	.globl	C$data_manager.c$107$1_0$343
;src\core\data_manager.c:107: image_width = image_tile_width * 8;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_tile_width
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
	ld	e, l
	ld	d, h
;fetchLitPair	hl
	ld	hl, #_image_width
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
	C$data_manager.c$108$1_0$343	= .
	.globl	C$data_manager.c$108$1_0$343
;src\core\data_manager.c:108: scroll_x_max = image_width - ((UINT16)SCREENWIDTH);
;	genMinus
;fetchLitPair	hl
	ld	a, (#_image_width)
; common peephole 17 loaded a from (#_image_width) directly instead of using hl.
	add	a, #0x60
;fetchLitPair	hl
	ld	(#_scroll_x_max),a
; common peephole 19 loaded (#_scroll_x_max) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_image_width + 1)
	adc	a, #0xff
;fetchLitPair	hl
	ld	(#_scroll_x_max + 1),a
; common peephole 20 loaded (#_scroll_x_max) from a directly instead of using hl.
	C$data_manager.c$109$1_0$343	= .
	.globl	C$data_manager.c$109$1_0$343
;src\core\data_manager.c:109: image_height = image_tile_height * 8;
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_image_tile_height
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
	ld	e, l
	ld	d, h
;fetchLitPair	hl
	ld	hl, #_image_height
;fetchLitPair	hl
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
	C$data_manager.c$110$1_0$343	= .
	.globl	C$data_manager.c$110$1_0$343
;src\core\data_manager.c:110: scroll_y_max = image_height - ((UINT16)SCREENHEIGHT);
;	genMinus
;fetchLitPair	hl
	ld	a, (#_image_height)
; common peephole 17 loaded a from (#_image_height) directly instead of using hl.
	add	a, #0x70
;fetchLitPair	hl
	ld	(#_scroll_y_max),a
; common peephole 19 loaded (#_scroll_y_max) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_image_height + 1)
	adc	a, #0xff
;fetchLitPair	hl
	ld	(#_scroll_y_max + 1),a
; common peephole 20 loaded (#_scroll_y_max) from a directly instead of using hl.
	C$data_manager.c$112$1_0$343	= .
	.globl	C$data_manager.c$112$1_0$343
;src\core\data_manager.c:112: load_bkg_tileset(bkg.tileset.ptr, bkg.tileset.bank);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#2
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
;	genCall
	ld	e, #b_load_bkg_tileset
	ld	hl, #_load_bkg_tileset
	call	___sdcc_bcall_ehl
;	adjustStack by 3
	add	sp, #3
	C$data_manager.c$114$1_0$343	= .
	.globl	C$data_manager.c$114$1_0$343
;src\core\data_manager.c:114: if ((_is_CGB) && (bkg.cgb_tileset.ptr)) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2
	ldhl	sp,	#6
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genIfx
	ld	c,a
	or	a,(hl)
; common peephole 99 removed load by reordering or arguments.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
	C$data_manager.c$115$2_0$344	= .
	.globl	C$data_manager.c$115$2_0$344
;src\core\data_manager.c:115: VBK_REG = 1;
;	genAssign
	C$data_manager.c$116$2_0$344	= .
	.globl	C$data_manager.c$116$2_0$344
;src\core\data_manager.c:116: load_bkg_tileset(bkg.cgb_tileset.ptr, bkg.cgb_tileset.bank);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
; common peephole 96b move dec hl before ldh (_VBK_REG + 0), a
; common peephole 96b move dec hl before ld a, #0x01
	dec	hl
; common peephole 96b move dec hl before ldh (_VBK_REG + 0), a
; common peephole 96b move dec hl before ld a, #0x01
	dec	hl
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
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
;	genCall
	ld	e, #b_load_bkg_tileset
	ld	hl, #_load_bkg_tileset
	call	___sdcc_bcall_ehl
;	adjustStack by 3
	add	sp, #3
	C$data_manager.c$117$2_0$344	= .
	.globl	C$data_manager.c$117$2_0$344
;src\core\data_manager.c:117: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
;	genLabel
00104$:
	C$data_manager.c$120$1_0$343	= .
	.globl	C$data_manager.c$120$1_0$343
;src\core\data_manager.c:120: }
;	genEndFunction
;	adjustStack by 14
	add	sp, #14
	C$data_manager.c$120$1_0$343	= .
	.globl	C$data_manager.c$120$1_0$343
	XG$load_background$0$0	= .
	.globl	XG$load_background$0$0
	ret
	G$load_sprite$0$0	= .
	.globl	G$load_sprite$0$0
	C$data_manager.c$128$1_0$351	= .
	.globl	C$data_manager.c$128$1_0$351
;src\core\data_manager.c:128: UBYTE load_sprite(UBYTE sprite_offset, const spritesheet_t * sprite, UBYTE bank) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function load_sprite
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 7 bytes.
	b_load_sprite	= 255
_load_sprite::
;	adjustStack by -7
	add	sp, #-7
	C$data_manager.c$130$1_0$351	= .
	.globl	C$data_manager.c$130$1_0$351
;src\core\data_manager.c:130: ReadBankedFarPtr(&data, (void *)&sprite->tileset, bank);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#14
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x000d
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
	ldhl	sp,	#16
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
;src\core\data_manager.c:131: UBYTE n_tiles = load_sprite_tileset(sprite_offset, data.ptr, data.bank);
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
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#13
	ld	a, (hl)
;	genMove_o size 0
;	genAssign
;	AOP_STK for _load_sprite_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	(hl), c
;	genMove_o size 0
;	genAssign
;	AOP_STK for _load_sprite_sloc1_1_0
;	genMove_o size 2
	inc	hl
	ld	(hl), e
	inc	hl
	ld	(hl), d
;	genMove_o size 0
;	genAssign
;	AOP_STK for _load_sprite_sloc2_1_0
;	genMove_o size 1
	inc	hl
	ld	(hl), a
;	genMove_o size 0
;src\core\data_manager.c:123: UBYTE n_tiles = ReadBankedUBYTE(&(tileset->n_tiles), bank);
;	genAssign
;	(locations are the same)
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
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genAssign
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;src\core\data_manager.c:131: UBYTE n_tiles = load_sprite_tileset(sprite_offset, data.ptr, data.bank);
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00109$
;	genPlus
;	AOP_STK for _load_sprite_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#4
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genIpush
;	AOP_STK for _load_sprite_sloc0_1_0
;	genMove_o size 1
; common peephole 96d move dec hl before push (bc)
; common peephole 96c move dec hl before inc de
; common peephole 96c move dec hl before inc de
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96d move dec hl before push (bc)
; common peephole 96c move dec hl before inc de
; common peephole 96c move dec hl before inc de
; common peephole 96b move dec hl before ld d, a
	dec	hl
	ld	d, a
	inc	de
	inc	de
	push	bc
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
	push	de
;	genIpush
	push	bc
	inc	sp
;	genIpush
;	AOP_STK for _load_sprite_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#12
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genCall
	call	_SetBankedSpriteData
;	adjustStack by 5
	add	sp, #5
	pop	bc
;	genLabel
00109$:
;	genAssign
;	AOP_STK for _load_sprite_sloc3_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	(hl), b
;	genMove_o size 0
	C$data_manager.c$133$1_1$352	= .
	.globl	C$data_manager.c$133$1_1$352
;src\core\data_manager.c:133: if (_is_CGB) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#__is_CGB)
; common peephole 17 loaded a from (#__is_CGB) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
	C$data_manager.c$134$2_1$353	= .
	.globl	C$data_manager.c$134$2_1$353
;src\core\data_manager.c:134: ReadBankedFarPtr(&data, (void *)&sprite->cgb_tileset, bank);
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#14
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0010
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
	ldhl	sp,	#16
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
	C$data_manager.c$135$2_1$353	= .
	.globl	C$data_manager.c$135$2_1$353
;src\core\data_manager.c:135: if (data.ptr) {
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2
	ldhl	sp,	#1
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genIfx
	ld	c,a
	or	a,(hl)
; common peephole 99 removed load by reordering or arguments.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00106$
	C$data_manager.c$136$3_1$354	= .
	.globl	C$data_manager.c$136$3_1$354
;src\core\data_manager.c:136: VBK_REG = 1;
;	genAssign
;src\core\data_manager.c:137: UBYTE n_cgb_tiles = load_sprite_tileset(sprite_offset, data.ptr, data.bank);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
; common peephole 96b move dec hl before ldh (_VBK_REG + 0), a
; common peephole 96b move dec hl before ld a, #0x01
	dec	hl
; common peephole 96b move dec hl before ldh (_VBK_REG + 0), a
; common peephole 96b move dec hl before ld a, #0x01
	dec	hl
	ld	a, #0x01
	ldh	(_VBK_REG + 0), a
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
;	genMove_o size 2
	ld	e, c
	ld	d, a
;	genMove_o size 0
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#13
	ld	c, (hl)
;	genMove_o size 0
;	genAssign
;	AOP_STK for _load_sprite_sloc4_1_0
;	genMove_o size 1
	ldhl	sp,	#4
;	genMove_o size 0
;	genAssign
;	AOP_STK for _load_sprite_sloc5_1_0
;	genMove_o size 2
	ld	a, b
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), d
;	genMove_o size 0
;	genAssign
;	(locations are the same)
;src\core\data_manager.c:123: UBYTE n_tiles = ReadBankedUBYTE(&(tileset->n_tiles), bank);
;	genAssign
;	(locations are the same)
;	genCast
;	(locations are the same)
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
	ld	d, b
;	genMove_o size 0
	pop	bc
;	genCast
;	genMove_o size 1
	ld	a, e
;	genMove_o size 0
;	genAssign
;	genMove_o size 1
	ld	b, a
;	genMove_o size 0
;src\core\data_manager.c:137: UBYTE n_cgb_tiles = load_sprite_tileset(sprite_offset, data.ptr, data.bank);
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00113$
;	genPlus
;	AOP_STK for _load_sprite_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#5
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genIpush
;	AOP_STK for _load_sprite_sloc4_1_0
;	genMove_o size 1
; common peephole 96d move dec hl before push (bc)
; common peephole 96c move dec hl before inc de
; common peephole 96c move dec hl before inc de
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96d move dec hl before push (bc)
; common peephole 96c move dec hl before inc de
; common peephole 96c move dec hl before inc de
; common peephole 96b move dec hl before ld d, a
	dec	hl
	ld	d, a
	inc	de
	inc	de
	push	bc
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
	push	de
;	genIpush
;	genIpush
;	genMove_o size 1
;	genMove_o size 0
; common peephole 0a removed redundant load from c into c.
; common peephole 43 combined pushing of b and c.
	push	bc
;	genCall
	call	_SetBankedSpriteData
;	adjustStack by 5
	add	sp, #5
	pop	bc
;	genLabel
00113$:
;	genAssign
;	genMove_o size 1
	ld	c, b
;	genMove_o size 0
	C$data_manager.c$138$3_2$355	= .
	.globl	C$data_manager.c$138$3_2$355
;src\core\data_manager.c:138: VBK_REG = 0;
;	genAssign
; common peephole 123 optimize ld a, 0x00
	xor	a, a
	ldh	(_VBK_REG + 0), a
	C$data_manager.c$139$3_2$355	= .
	.globl	C$data_manager.c$139$3_2$355
;src\core\data_manager.c:139: if (n_cgb_tiles > n_tiles) return n_cgb_tiles;
;	genCmpGt
;	AOP_STK for _load_sprite_sloc3_1_0
	ldhl	sp,	#3
	ld	a, (hl)
	sub	a, b
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00106$
;	skipping generated iCode
;	genRet
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00115$
;	genLabel
00106$:
	C$data_manager.c$143$1_1$352	= .
	.globl	C$data_manager.c$143$1_1$352
;src\core\data_manager.c:143: return n_tiles;
;	genRet
;	AOP_STK for _load_sprite_sloc3_1_0
;	genMove_o size 1
	ldhl	sp,	#3
	ld	a, (hl)
;	genMove_o size 0
;	genLabel
00115$:
	C$data_manager.c$144$1_1$351	= .
	.globl	C$data_manager.c$144$1_1$351
;src\core\data_manager.c:144: }
;	genEndFunction
;	adjustStack by 7
	add	sp, #7
	C$data_manager.c$144$1_1$351	= .
	.globl	C$data_manager.c$144$1_1$351
	XG$load_sprite$0$0	= .
	.globl	XG$load_sprite$0$0
	ret
	G$load_bounds$0$0	= .
	.globl	G$load_bounds$0$0
	C$data_manager.c$153$1_0$371	= .
	.globl	C$data_manager.c$153$1_0$371
;src\core\data_manager.c:153: void load_bounds(const spritesheet_t *sprite, UBYTE bank, bounding_box_t * res_bounds) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function load_bounds
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_load_bounds	= 255
_load_bounds::
	C$data_manager.c$154$1_0$371	= .
	.globl	C$data_manager.c$154$1_0$371
;src\core\data_manager.c:154: MemcpyBanked(res_bounds, &sprite->bounds, sizeof(sprite->bounds), bank);
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
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0009
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#9
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96b move dec hl before ld d, a
	dec	hl
	ld	d, a
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0004
	push	hl
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;	genCall
	call	_MemcpyBanked
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$data_manager.c$155$1_0$371	= .
	.globl	C$data_manager.c$155$1_0$371
;src\core\data_manager.c:155: }
;	genEndFunction
	C$data_manager.c$155$1_0$371	= .
	.globl	C$data_manager.c$155$1_0$371
	XG$load_bounds$0$0	= .
	.globl	XG$load_bounds$0$0
	ret
	G$do_load_palette$0$0	= .
	.globl	G$do_load_palette$0$0
	C$data_manager.c$157$1_0$373	= .
	.globl	C$data_manager.c$157$1_0$373
;src\core\data_manager.c:157: UBYTE do_load_palette(palette_entry_t * dest, const palette_t * palette, UBYTE bank) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function do_load_palette
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 6 bytes.
	b_do_load_palette	= 255
_do_load_palette::
;	adjustStack by -6
	add	sp, #-6
;src\core\data_manager.c:158: UBYTE mask = ReadBankedUBYTE(&palette->mask, bank);
;	genAssign
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#16
;	genMove_o size 0
;	genAssign
;	AOP_STK for 
;	genMove_o size 2
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96b move dec hl before ld b, a
	dec	hl
	ld	b, a
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genAssign
;	genMove_o size 2
	ld	c, e
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genSend
	push	de
;	genMove_o size 1
	ld	a, b
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	e, c
	ld	d, l
;	genMove_o size 0
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
	pop	de
;	genCast
;	genMove_o size 1
;	genAssign
;	AOP_STK for _do_load_palette_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
;	genMove_o size 0
	C$data_manager.c$159$1_0$373	= .
	.globl	C$data_manager.c$159$1_0$373
;src\core\data_manager.c:159: palette_entry_t * sour = palette->cgb_palette;
;	genPlus
;	AOP_STK for _do_load_palette_sloc1_1_0
;	genMove_o size 2
; common peephole 96c move inc hl before inc de
; common peephole 96c move inc hl before inc de
; common peephole 96c move inc hl before inc de
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	inc	de
	inc	de
	inc	de
	ld	a, e
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
;	genMove_o size 0
	C$data_manager.c$160$3_0$374	= .
	.globl	C$data_manager.c$160$3_0$374
;src\core\data_manager.c:160: for (UBYTE i = mask; (i); i >>= 1, dest++) {
;	genAssign
;	AOP_STK for _do_load_palette_sloc2_1_0
;	genMove_o size 1
	ld	a, d
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), c
;	genMove_o size 0
;	genAssign
;	AOP_STK for 
;	AOP_STK for _do_load_palette_sloc3_1_0
;	genMove_o size 2
	ldhl	sp,	#12
	ld	a, (hl)
	ldhl	sp,	#4
	ld	(hl), a
	ldhl	sp,	#13
	ld	a, (hl)
	ldhl	sp,	#5
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00107$:
;	genIfx
;	AOP_STK for _do_load_palette_sloc2_1_0
	ldhl	sp,	#3
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00104$
	C$data_manager.c$161$3_0$375	= .
	.globl	C$data_manager.c$161$3_0$375
;src\core\data_manager.c:161: if ((i & 1) == 0) continue;
;	genAnd
;	AOP_STK for _do_load_palette_sloc2_1_0
	push	hl
	bit	0, (hl)
	pop	hl
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00103$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00129$.
;	skipping generated iCode
	C$data_manager.c$162$3_0$375	= .
	.globl	C$data_manager.c$162$3_0$375
;src\core\data_manager.c:162: MemcpyBanked(dest, sour, sizeof(palette_entry_t), bank);
;	genCast
;	AOP_STK for _do_load_palette_sloc1_1_0
;	genMove_o size 2
	ldhl	sp,	#1
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genCast
;	AOP_STK for _do_load_palette_sloc3_1_0
;	genMove_o size 2
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move inc hl before ld b, a
	inc	hl
	ld	b, a
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#16
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
	C$data_manager.c$163$3_0$375	= .
	.globl	C$data_manager.c$163$3_0$375
;src\core\data_manager.c:163: sour++;
;	genPlus
;	AOP_STK for _do_load_palette_sloc1_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#1
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
	ldhl	sp,	#3
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#2
	ld	(hl), a
;	genMove_o size 0
;	genLabel
00103$:
	C$data_manager.c$160$2_0$374	= .
	.globl	C$data_manager.c$160$2_0$374
;src\core\data_manager.c:160: for (UBYTE i = mask; (i); i >>= 1, dest++) {
;	genRightShift
;	AOP_STK for _do_load_palette_sloc2_1_0
	ldhl	sp,	#3
	ld	a, (hl)
	srl	a
;	genPlus
;	AOP_STK for _do_load_palette_sloc3_1_0
;fetchPairLong
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
; common peephole 156b removed inc hl / dec hl pair.
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
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00107$
;	genLabel
00104$:
	C$data_manager.c$165$1_0$373	= .
	.globl	C$data_manager.c$165$1_0$373
;src\core\data_manager.c:165: return mask;
;	genRet
;	AOP_STK for _do_load_palette_sloc0_1_0
;	genMove_o size 1
	ldhl	sp,	#0
	ld	a, (hl)
;	genMove_o size 0
;	genLabel
; common peephole 158 removed unused label 00108$.
	C$data_manager.c$166$1_0$373	= .
	.globl	C$data_manager.c$166$1_0$373
;src\core\data_manager.c:166: }
;	genEndFunction
;	adjustStack by 6
	add	sp, #6
	C$data_manager.c$166$1_0$373	= .
	.globl	C$data_manager.c$166$1_0$373
	XG$do_load_palette$0$0	= .
	.globl	XG$do_load_palette$0$0
	ret
	G$load_scene$0$0	= .
	.globl	G$load_scene$0$0
	C$data_manager.c$188$1_0$388	= .
	.globl	C$data_manager.c$188$1_0$388
;src\core\data_manager.c:188: UBYTE load_scene(const scene_t * scene, UBYTE bank, UBYTE init_data) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function load_scene
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 70 bytes.
	b_load_scene	= 255
_load_scene::
;	adjustStack by -70
	add	sp, #-70
	C$data_manager.c$192$1_0$388	= .
	.globl	C$data_manager.c$192$1_0$388
;src\core\data_manager.c:192: MemcpyBanked(&scn, scene, sizeof(scn), bank);
;	genCast
;	AOP_STK for 
;	genMove_o size 2
	ldhl	sp,	#76
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl)
;	genMove_o size 0
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x003b
	push	de
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
	ld	hl, #3
	add	hl, sp
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCall
	call	_MemcpyBanked
	C$data_manager.c$194$1_0$388	= .
	.globl	C$data_manager.c$194$1_0$388
;src\core\data_manager.c:194: current_scene.bank  = bank;
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;	AOP_STK for 
;fetchPairLong
;fetchLitPair	de
	ld	de, #_current_scene
	ldhl	sp,	#78
	C$data_manager.c$195$1_0$388	= .
	.globl	C$data_manager.c$195$1_0$388
;src\core\data_manager.c:195: current_scene.ptr   = (void *)scene;
;	skipping iCode since result will be rematerialized
;	genCast
;	AOP_STK for 
;	genMove_o size 2
; common peephole 96b move dec hl before ld (de), a
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
; common peephole 96b move dec hl before ld (de), a
	dec	hl
	ld	(de), a
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_current_scene + 1)
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$data_manager.c$198$1_0$388	= .
	.globl	C$data_manager.c$198$1_0$388
;src\core\data_manager.c:198: scene_type      = scn.type;
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#2
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_scene_type),a
; common peephole 19 loaded (#_scene_type) from a directly instead of using hl.
	C$data_manager.c$199$1_0$388	= .
	.globl	C$data_manager.c$199$1_0$388
;src\core\data_manager.c:199: actors_len      = MIN(scn.n_actors + 1,     MAX_ACTORS);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#3
	ld	c, (hl)
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;	genMove_o size 1
	xor	a, a
;	genPlus
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	inc	bc
;	genCmpLt
	ld	a, c
	sub	a, #0x15
	ld	a, b
	rla
	ccf
	rra
	sbc	a, #0x80
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00162$
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ld	a, (hl)
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genPlus
	inc	a
;	genCast
;	genMove_o size 0
;	genMove_o size 1
	ld	c, a
	rlca
; common peephole 6b removed dead sbc a, a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00163$
;	genLabel
00162$:
;	genAssign
;	genMove_o size 2
	ld	c, #0x15
; common peephole 6b removed dead xor a, a
;	genLabel
00163$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actors_len
	ld	(hl), c
	C$data_manager.c$200$1_0$388	= .
	.globl	C$data_manager.c$200$1_0$388
;src\core\data_manager.c:200: triggers_len    = MIN(scn.n_triggers,       MAX_TRIGGERS);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#4
;	genMove_o size 0
;	genCmpLt
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ld	a,(hl)
	cp	a,#0x1f
; common peephole 107 removed load from (hl) into a by replacing sub with cp
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genGoto
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00165$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00164$.
;	genAssign
;	genMove_o size 1
	ld	a, #0x1f
;	genLabel
00165$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_triggers_len),a
; common peephole 19 loaded (#_triggers_len) from a directly instead of using hl.
	C$data_manager.c$201$1_0$388	= .
	.globl	C$data_manager.c$201$1_0$388
;src\core\data_manager.c:201: projectiles_len = MIN(scn.n_projectiles,    MAX_PROJECTILE_DEFS);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#5
;	genMove_o size 0
;	genCmpLt
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ld	a,(hl)
	cp	a,#0x05
; common peephole 107 removed load from (hl) into a by replacing sub with cp
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genGoto
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00167$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00166$.
;	genAssign
;	genMove_o size 1
	ld	a, #0x05
;	genLabel
00167$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_projectiles_len),a
; common peephole 19 loaded (#_projectiles_len) from a directly instead of using hl.
	C$data_manager.c$202$1_0$388	= .
	.globl	C$data_manager.c$202$1_0$388
;src\core\data_manager.c:202: sprites_len     = MIN(scn.n_sprites,        MAX_SCENE_SPRITES);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#6
;	genMove_o size 0
;	genCmpLt
;	skipping generated iCode
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ld	a,(hl)
	cp	a,#0x40
; common peephole 107 removed load from (hl) into a by replacing sub with cp
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genGoto
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00169$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00168$.
;	genAssign
;	genMove_o size 1
	ld	a, #0x40
;	genLabel
00169$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_sprites_len),a
; common peephole 19 loaded (#_sprites_len) from a directly instead of using hl.
	C$data_manager.c$204$1_0$388	= .
	.globl	C$data_manager.c$204$1_0$388
;src\core\data_manager.c:204: collision_bank  = scn.collisions.bank;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#14
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_collision_bank),a
; common peephole 19 loaded (#_collision_bank) from a directly instead of using hl.
	C$data_manager.c$205$1_0$388	= .
	.globl	C$data_manager.c$205$1_0$388
;src\core\data_manager.c:205: collision_ptr   = scn.collisions.ptr;
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2
	ldhl	sp,	#15
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl)
;	genMove_o size 0
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_collision_ptr
	ld	(hl), c
;fetchLitPair	hl
	inc	hl
	ld	(hl), a
	C$data_manager.c$208$1_0$388	= .
	.globl	C$data_manager.c$208$1_0$388
;src\core\data_manager.c:208: ui_load_tiles();
;	genCall
	ld	e, #b_ui_load_tiles
	ld	hl, #_ui_load_tiles
	call	___sdcc_bcall_ehl
	C$data_manager.c$211$1_0$388	= .
	.globl	C$data_manager.c$211$1_0$388
;src\core\data_manager.c:211: load_background(scn.background.ptr, scn.background.bank);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#11
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
;	genCall
	ld	e, #b_load_background
	ld	hl, #_load_background
	call	___sdcc_bcall_ehl
;	adjustStack by 3
	add	sp, #3
;src\core\data_manager.c:213: load_bkg_palette(scn.palette.ptr, scn.palette.bank);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#17
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
;	genMove_o size 2
	ld	e, c
	ld	d, a
;	genMove_o size 0
;src\core\data_manager.c:169: UBYTE mask = do_load_palette(BkgPalette, palette, bank);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
	push	de
	push	bc
	inc	sp
;	genIpush
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_BkgPalette
	push	hl
;	genCall
	ld	e, #b_do_load_palette
	ld	hl, #_do_load_palette
	call	___sdcc_bcall_ehl
;	adjustStack by 5
	add	sp, #5
	pop	de
	pop	bc
;src\core\data_manager.c:170: DMG_palette[0] = ReadBankedUBYTE(palette->palette, bank);
;	skipping iCode since result will be rematerialized
;	genPlus
	inc	de
;include/bankdata.h:113: return (UBYTE)ReadBankedUWORD(ptr, bank);
;	genSend
;	genMove_o size 1
	ld	a, b
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;	genCast
;	genMove_o size 1
;src\core\data_manager.c:170: DMG_palette[0] = ReadBankedUBYTE(palette->palette, bank);
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_DMG_palette
	ld	(hl), c
;src\core\data_manager.c:214: load_sprite_palette(scn.sprite_palette.ptr, scn.sprite_palette.bank);
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#20
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
;	genMove_o size 2
	ld	e, c
	ld	d, a
;	genMove_o size 0
;src\core\data_manager.c:182: do_load_palette(SprPalette, palette, bank);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
	push	bc
	push	de
	push	bc
	inc	sp
;	genIpush
	push	de
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_SprPalette
	push	hl
;	genCall
	ld	e, #b_do_load_palette
	ld	hl, #_do_load_palette
	call	___sdcc_bcall_ehl
;	adjustStack by 5
	add	sp, #5
	pop	de
	pop	bc
;src\core\data_manager.c:183: UWORD data = ReadBankedUWORD(palette->palette, bank);
;	genPlus
	inc	de
;	genSend
;	genMove_o size 1
	ld	a, b
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_ReadBankedUWORD
;	genMove_o size 2
;src\core\data_manager.c:184: DMG_palette[1] = (UBYTE)data;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	(#(_DMG_palette + 1)),a
; common peephole 19 loaded (#(_DMG_palette + 1)) from a directly instead of using hl.
;src\core\data_manager.c:185: DMG_palette[2] = (UBYTE)(data >> 8);
;	skipping iCode since result will be rematerialized
;	genGetByte
;	genMove_o size 1
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_DMG_palette + 2)
	ld	(hl), b
	C$data_manager.c$217$1_0$388	= .
	.globl	C$data_manager.c$217$1_0$388
;src\core\data_manager.c:217: memcpy(&parallax_rows, &scn.parallax_rows, sizeof(parallax_rows));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0012
	push	de
;	genSend
;	genMove_o size 2
	ld	hl, #43
	add	hl, sp
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_parallax_rows
;	genCall
	call	_memcpy
	C$data_manager.c$218$1_0$388	= .
	.globl	C$data_manager.c$218$1_0$388
;src\core\data_manager.c:218: if (scn.parallax_rows[0].next_y == 0) {
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#42
	ld	a, (hl)
;	genMove_o size 0
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00102$
	C$data_manager.c$219$2_0$389	= .
	.globl	C$data_manager.c$219$2_0$389
;src\core\data_manager.c:219: scene_LCD_type = (scene_type == SCENE_TYPE_LOGO) ? LCD_fullscreen : LCD_simple;
;	genIfx
;fetchLitPair	hl
	ld	hl, #_scene_type
	bit	0, (hl)
;	genAssign
;	genMove_o size 1
;	genGoto
;	genLabel
;	genAssign
;	genMove_o size 1
;	genLabel
	ld	a, #0x02
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00171$
; common peephole 169xz used double assignment in case of Z condition.
; common peephole 158 removed unused label 00170$.
	xor	a, a
00171$:
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	(#_scene_LCD_type),a
; common peephole 19 loaded (#_scene_LCD_type) from a directly instead of using hl.
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00103$
;	genLabel
00102$:
	C$data_manager.c$221$2_0$390	= .
	.globl	C$data_manager.c$221$2_0$390
;src\core\data_manager.c:221: scene_LCD_type = LCD_parallax;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_scene_LCD_type
	ld	(hl), #0x01
;	genLabel
00103$:
	C$data_manager.c$224$1_0$388	= .
	.globl	C$data_manager.c$224$1_0$388
;src\core\data_manager.c:224: if (scene_type != SCENE_TYPE_LOGO) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #_scene_type
	bit	0, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00105$
	C$data_manager.c$226$2_0$391	= .
	.globl	C$data_manager.c$226$2_0$391
;src\core\data_manager.c:226: PLAYER.sprite = scn.player_sprite;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0003
	push	de
;	genSend
;	genMove_o size 2
	ld	hl, #10
	add	hl, sp
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #(_actors + 34)
;	genCall
	call	___memcpy
	C$data_manager.c$227$2_1$392	= .
	.globl	C$data_manager.c$227$2_1$392
;src\core\data_manager.c:227: UBYTE n_loaded = load_sprite(PLAYER.base_tile = 0, scn.player_sprite.ptr, scn.player_sprite.bank);
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#8
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
;	genMove_o size 2
	ld	e, c
	ld	d, a
;	genMove_o size 0
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 10
;	genAssign (pointer)
	ld	(hl), #0x00
;	genIpush
	push	bc
	inc	sp
;	genIpush
	push	de
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genCall
	ld	e, #b_load_sprite
	ld	hl, #_load_sprite
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	C$data_manager.c$228$2_1$392	= .
	.globl	C$data_manager.c$228$2_1$392
;src\core\data_manager.c:228: allocated_sprite_tiles = (n_loaded > scn.reserve_tiles) ? n_loaded : scn.reserve_tiles;
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#7
;	genMove_o size 0
;	genCmpGt
; common peephole 9 loaded a from (hl) directly instead of going through b.
	ld	a, (hl)
	sub	a, c
;	skipping generated iCode
;	genAssign
;	(locations are the same)
;	genGoto
;	genLabel
; common peephole 163 changed absolute to relative conditional jump.
	jr	C, 00173$
; common peephole 79 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00172$.
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#7
	ld	c, (hl)
;	genMove_o size 0
;	genLabel
00173$:
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_allocated_sprite_tiles
	ld	(hl), c
	C$data_manager.c$229$2_1$392	= .
	.globl	C$data_manager.c$229$2_1$392
;src\core\data_manager.c:229: load_animations(scn.player_sprite.ptr, scn.player_sprite.bank, ANIM_SET_DEFAULT, PLAYER.animations);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#8
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2
	ld	a, (hl+)
	ld	b, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genCast
;	genMove_o size 2
; common peephole 9 loaded d from (hl) directly instead of going through a.
	ld	d, (hl)
;	genMove_o size 0
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #(_actors + 18)
	push	hl
;	genIpush
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0000
	push	hl
;	genSend
;	genMove_o size 1
	ld	a, b
;	genMove_o size 0
;	genSend
;	genMove_o size 2
	ld	e, c
;	genMove_o size 0
;	genCall
	call	_load_animations
	C$data_manager.c$230$2_1$392	= .
	.globl	C$data_manager.c$230$2_1$392
;src\core\data_manager.c:230: load_bounds(scn.player_sprite.ptr, scn.player_sprite.bank, &PLAYER.bounds);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#8
;	genMove_o size 0
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
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #(_actors + 6)
	push	de
;	genIpush
	push	bc
	inc	sp
;	genIpush
;	genMove_o size 2
	ld	b, a
;	genMove_o size 0
	push	bc
;	genCall
	ld	e, #b_load_bounds
	ld	hl, #_load_bounds
	call	___sdcc_bcall_ehl
;	adjustStack by 5
	add	sp, #5
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00106$
;	genLabel
00105$:
	C$data_manager.c$233$2_0$393	= .
	.globl	C$data_manager.c$233$2_0$393
;src\core\data_manager.c:233: PLAYER.base_tile = allocated_sprite_tiles = 0x68;
;	skipping iCode since result will be rematerialized
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 10
;	genAssign
;	genMove_o size 1
	ld	a, #0x68
	ld	(_allocated_sprite_tiles), a
;	genAssign (pointer)
	ld	(hl), #0x68
	C$data_manager.c$234$2_0$393	= .
	.globl	C$data_manager.c$234$2_0$393
;src\core\data_manager.c:234: PLAYER.sprite = spritesheet_none_far;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0003
	push	de
;	genSend
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #_spritesheet_none_far
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #(_actors + 34)
;	genCall
	call	___memcpy
	C$data_manager.c$235$2_0$393	= .
	.globl	C$data_manager.c$235$2_0$393
;src\core\data_manager.c:235: memset(PLAYER.animations, 0, sizeof(PLAYER.animations));
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
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
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #(_actors + 18)
	push	de
;	genCall
	call	_memset
;	adjustStack by 6
	add	sp, #6
;	genLabel
00106$:
	C$data_manager.c$239$1_0$388	= .
	.globl	C$data_manager.c$239$1_0$388
;src\core\data_manager.c:239: if (sprites_len != 0) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_sprites_len)
; common peephole 17 loaded a from (#_sprites_len) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
	C$data_manager.c$240$2_0$394	= .
	.globl	C$data_manager.c$240$2_0$394
;src\core\data_manager.c:240: far_ptr_t * scene_sprite_ptrs = scn.sprites.ptr;
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2
	ldhl	sp,	#30
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	a, (hl)
;	genMove_o size 0
;	genCast
;	AOP_STK for _load_scene_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#67
	ld	(hl), c
	inc	hl
;	genMove_o size 0
	C$data_manager.c$242$4_0$396	= .
	.globl	C$data_manager.c$242$4_0$396
;src\core\data_manager.c:242: for (i = 0; i != sprites_len; i++) {
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	AOP_STK for _load_scene_sloc1_1_0
;	genMove_o size 1
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #0x00
;	genLabel
00149$:
;	genCmpEq
;	AOP_STK for _load_scene_sloc1_1_0
;fetchLitPair	hl
	ld	a, (#_sprites_len)
; common peephole 17 loaded a from (#_sprites_len) directly instead of using hl.
	ldhl	sp,	#69
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00429$.
;	skipping generated iCode
	C$data_manager.c$243$4_0$396	= .
	.globl	C$data_manager.c$243$4_0$396
;src\core\data_manager.c:243: if (i == MAX_SCENE_SPRITES) break;
;	genCmpEq
;	AOP_STK for _load_scene_sloc1_1_0
	ldhl	sp,	#69
	ld	a, (hl)
	sub	a, #0x40
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00111$
; common peephole 81 removed jp by using inverse jump logic
; common peephole 158 removed unused label 00430$.
;	skipping generated iCode
	C$data_manager.c$244$4_0$396	= .
	.globl	C$data_manager.c$244$4_0$396
;src\core\data_manager.c:244: ReadBankedFarPtr(&tmp_ptr, (UBYTE *)scene_sprite_ptrs, scn.sprites.bank);
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#29
	ld	a, (hl)
;	genMove_o size 0
;	genCast
;	AOP_STK for _load_scene_sloc0_1_0
;	genMove_o size 2
	ldhl	sp,	#67
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genIpush
	push	af
	inc	sp
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
	ld	hl, #60
	add	hl, sp
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCall
	call	_ReadBankedFarPtr
	C$data_manager.c$245$4_0$396	= .
	.globl	C$data_manager.c$245$4_0$396
;src\core\data_manager.c:245: scene_sprites_base_tiles[i] = allocated_sprite_tiles;
;	genPlus
;	AOP_STK for _load_scene_sloc1_1_0
;fetchPairLong
;fetchLitPair	de
	ld	de, #_scene_sprites_base_tiles
;fetchPairLong
	ldhl	sp,	#69
	ld	l, (hl)
	ld	h, #0x00
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchLitPair	hl
	ld	a, (#_allocated_sprite_tiles)
; common peephole 17 loaded a from (#_allocated_sprite_tiles) directly instead of using hl.
	ld	(bc), a
	C$data_manager.c$246$4_0$396	= .
	.globl	C$data_manager.c$246$4_0$396
;src\core\data_manager.c:246: allocated_sprite_tiles += load_sprite(allocated_sprite_tiles, tmp_ptr.ptr, tmp_ptr.bank);
;	genPointerGet
;	genMove_o size 1
	ldhl	sp,	#59
;	genMove_o size 0
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
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_allocated_sprite_tiles)
; common peephole 17 loaded a from (#_allocated_sprite_tiles) directly instead of using hl.
	push	af
	inc	sp
;	genCall
	ld	e, #b_load_sprite
	ld	hl, #_load_sprite
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genMove_o size 1
;	genPlus
;fetchLitPair	hl
	ld	hl, #_allocated_sprite_tiles
	add	a, (hl)
;fetchLitPair	hl
	ld	(hl), a
	C$data_manager.c$247$4_0$396	= .
	.globl	C$data_manager.c$247$4_0$396
;src\core\data_manager.c:247: scene_sprite_ptrs++;
;	genPlus
;	AOP_STK for _load_scene_sloc0_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#67
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
	ldhl	sp,	#69
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#68
;	genMove_o size 0
	C$data_manager.c$242$3_0$395	= .
	.globl	C$data_manager.c$242$3_0$395
;src\core\data_manager.c:242: for (i = 0; i != sprites_len; i++) {
;	genPlus
;	AOP_STK for _load_scene_sloc1_1_0
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	inc	(hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00149$
;	genLabel
00111$:
	C$data_manager.c$251$1_0$388	= .
	.globl	C$data_manager.c$251$1_0$388
;src\core\data_manager.c:251: if (init_data) {
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#79
	ld	a, (hl)
	or	a, a
	jp	Z, 00134$
;include/camera.h:27: camera_deadzone_x = camera_deadzone_y = 0;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_camera_deadzone_y
	ld	(hl), #0x00
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_camera_deadzone_x
	ld	(hl), #0x00
	C$data_manager.c$255$2_0$397	= .
	.globl	C$data_manager.c$255$2_0$397
;src\core\data_manager.c:255: memcpy(&PLAYER.script, &scn.script_p_hit1, sizeof(far_ptr_t));
;	genAddrOf
	ldhl	sp,	#26
	ld	c, l
	ld	b, h
;	genCast
;	(locations are the same)
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0003
	push	de
;	genSend
;	genMove_o size 2
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #(_actors + 37)
;	genCall
	call	_memcpy
	C$data_manager.c$257$2_0$397	= .
	.globl	C$data_manager.c$257$2_0$397
;src\core\data_manager.c:257: player_moving = FALSE;
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_player_moving
	ld	(hl), #0x00
	C$data_manager.c$260$2_0$397	= .
	.globl	C$data_manager.c$260$2_0$397
;src\core\data_manager.c:260: actors_active_head = NULL;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_actors_active_head
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$data_manager.c$261$2_0$397	= .
	.globl	C$data_manager.c$261$2_0$397
;src\core\data_manager.c:261: actors_inactive_head = NULL;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_actors_inactive_head
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$data_manager.c$264$2_0$397	= .
	.globl	C$data_manager.c$264$2_0$397
;src\core\data_manager.c:264: PLAYER.active = FALSE;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_actors
;	genPackBits
	res	0, (hl)
	C$data_manager.c$265$2_0$397	= .
	.globl	C$data_manager.c$265$2_0$397
;src\core\data_manager.c:265: actors_active_tail = &PLAYER;
;	skipping iCode since result will be rematerialized
;	genCast
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_active_tail
;fetchLitPair	hl
	ld	a, #<(_actors)
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	C$data_manager.c$266$2_0$397	= .
	.globl	C$data_manager.c$266$2_0$397
;src\core\data_manager.c:266: DL_PUSH_HEAD(actors_inactive_head, actors_active_tail);
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, #>(_actors)
	ld	(hl-), a
; sm83 peephole 5b used ldd to decrement hl after load
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_active_tail
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_actors_inactive_head
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genIfx
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00113$
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_actors_active_tail
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genLabel
00113$:
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	a, (#_actors_active_tail)
; common peephole 17 loaded a from (#_actors_active_tail) directly instead of using hl.
;fetchLitPair	hl
	ld	(#_actors_inactive_head),a
; common peephole 19 loaded (#_actors_inactive_head) from a directly instead of using hl.
;fetchLitPair	hl
; common peephole 18 loaded 1 into a directly instead of using hl.
	ld	a, (#_actors_active_tail + 1)
;fetchLitPair	hl
	ld	(#_actors_inactive_head + 1),a
; common peephole 20 loaded (#_actors_inactive_head) from a directly instead of using hl.
	C$data_manager.c$267$2_0$397	= .
	.globl	C$data_manager.c$267$2_0$397
;src\core\data_manager.c:267: activate_actor(&PLAYER);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_actors
	push	de
;	genCall
	ld	e, #b_activate_actor
	ld	hl, #_activate_actor
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
	C$data_manager.c$270$2_0$397	= .
	.globl	C$data_manager.c$270$2_0$397
;src\core\data_manager.c:270: if (actors_len != 0) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_actors_len)
; common peephole 17 loaded a from (#_actors_len) directly instead of using hl.
	or	a, a
	jp	Z, 00135$
	C$data_manager.c$271$3_0$399	= .
	.globl	C$data_manager.c$271$3_0$399
;src\core\data_manager.c:271: actor_t * actor = actors + 1;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
	C$data_manager.c$272$3_0$399	= .
	.globl	C$data_manager.c$272$3_0$399
;src\core\data_manager.c:272: MemcpyBanked(actor, scn.actors.ptr, sizeof(actor_t) * (actors_len - 1), scn.actors.bank);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	AOP_STK for _load_scene_sloc2_1_0
;	genMove_o size 1
	ldhl	sp,	#32
	ld	a, (hl)
	ldhl	sp,	#67
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_actors_len
	ld	c, (hl)
;	genMove_o size 1
	ld	b, #0x00
;	genMinus
	dec	bc
;	genMult
;fetchPairLong
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	AOP_STK for _load_scene_sloc3_1_0
;	genMove_o size 2
	ldhl	sp,	#33
	ld	a, (hl)
	ldhl	sp,	#68
	ld	(hl), a
	ldhl	sp,	#34
	ld	a, (hl)
	ldhl	sp,	#69
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genIpush
;	AOP_STK for _load_scene_sloc2_1_0
;	genMove_o size 1
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
;	genMove_o size 0
;	genIpush
;	genSend
;	AOP_STK for _load_scene_sloc3_1_0
;	genMove_o size 2
; common peephole 96d move inc hl before push (bc)
; common peephole 96c move inc hl before inc sp
; common peephole 96d move inc hl before push (af)
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	push	af
	inc	sp
	push	bc
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #(_actors + 52)
;	genCall
	call	_MemcpyBanked
	C$data_manager.c$273$4_0$400	= .
	.globl	C$data_manager.c$273$4_0$400
;src\core\data_manager.c:273: for (i = actors_len - 1; i != 0; i--, actor++) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_actors_len)
; common peephole 17 loaded a from (#_actors_len) directly instead of using hl.
;	genMinus
;	AOP_STK for _load_scene_sloc4_1_0
; common peephole 155c turned add into dec.
	dec	a
	ldhl	sp,	#67
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	AOP_STK for _load_scene_sloc5_1_0
;	genMove_o size 2
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), #<((_actors + 52))
	inc	hl
	ld	(hl), #>((_actors + 52))
;	genLabel
00152$:
;	genIfx
;	AOP_STK for _load_scene_sloc4_1_0
	ldhl	sp,	#67
	ld	a, (hl)
	or	a, a
	jp	Z, 00135$
	C$data_manager.c$274$5_0$401	= .
	.globl	C$data_manager.c$274$5_0$401
;src\core\data_manager.c:274: if (actor->reserve_tiles) {
;	genPlus
;	AOP_STK for _load_scene_sloc5_1_0
;fetchPairLong
	inc	hl
; common peephole 156b removed inc hl / dec hl pair.
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0011
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _load_scene_sloc6_1_0
	ld	a, (bc)
;	genMove_o size 1
	ldhl	sp,	#66
;	genMove_o size 0
;	genIfx
;	AOP_STK for _load_scene_sloc6_1_0
	ld	(hl), a
; common peephole 98 removed redundant load from (hl) into a.
	or	a, a
	jp	Z, 00115$
	C$data_manager.c$276$6_0$402	= .
	.globl	C$data_manager.c$276$6_0$402
;src\core\data_manager.c:276: actor->base_tile = allocated_sprite_tiles;
;	genPlus
;	AOP_STK for _load_scene_sloc5_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#68
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000a
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchLitPair	hl
	ld	a, (#_allocated_sprite_tiles)
; common peephole 17 loaded a from (#_allocated_sprite_tiles) directly instead of using hl.
	ld	(bc), a
	C$data_manager.c$277$6_1$403	= .
	.globl	C$data_manager.c$277$6_1$403
;src\core\data_manager.c:277: UBYTE n_loaded = load_sprite(allocated_sprite_tiles, actor->sprite.ptr, actor->sprite.bank);
;	genPlus
;	AOP_STK for _load_scene_sloc5_1_0
;	AOP_STK for _load_scene_sloc7_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#68
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0022
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#67
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#66
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _load_scene_sloc7_1_0
;	AOP_STK for _load_scene_sloc8_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move dec hl before ld a, (de)
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96b move dec hl before ld a, (de)
; common peephole 96b move dec hl before ld d, a
	dec	hl
	ld	d, a
	ld	a, (de)
	ld	(hl), a
;	genPlus
;	AOP_STK for _load_scene_sloc5_1_0
;	AOP_STK for _load_scene_sloc9_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#68
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0022
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#64
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#63
;	genMove_o size 0
;	genPlus
;	AOP_STK for _load_scene_sloc9_1_0
;	AOP_STK for _load_scene_sloc10_1_0
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
	ldhl	sp,	#67
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#66
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _load_scene_sloc10_1_0
;	AOP_STK for _load_scene_sloc11_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
; common peephole 96b move dec hl before ld a, (de)
	ld	a, (hl-)
	ld	d, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	a, (de)
	ld	(hl+), a
; sm83 peephole 7 used ldi to increment hl
	inc	de
	ld	a, (de)
;	genCast
;	AOP_STK for _load_scene_sloc11_1_0
;	AOP_STK for _load_scene_sloc12_1_0
;	(locations are the same)
;	genIpush
;	AOP_STK for _load_scene_sloc8_1_0
;	genMove_o size 1
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
;	genMove_o size 0
;	genIpush
;	AOP_STK for _load_scene_sloc12_1_0
;	genMove_o size 2
; common peephole 96c move inc hl before inc sp
; common peephole 96d move inc hl before push (af)
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	push	af
	inc	sp
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_allocated_sprite_tiles)
; common peephole 17 loaded a from (#_allocated_sprite_tiles) directly instead of using hl.
	push	af
	inc	sp
;	genCall
	ld	e, #b_load_sprite
	ld	hl, #_load_sprite
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	C$data_manager.c$278$6_1$403	= .
	.globl	C$data_manager.c$278$6_1$403
;src\core\data_manager.c:278: allocated_sprite_tiles += (n_loaded > actor->reserve_tiles) ? n_loaded : actor->reserve_tiles;
;	genPlus
;	AOP_STK for _load_scene_sloc5_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#68
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0011
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genMove_o size 0
;	genCmpGt
; common peephole 9 loaded a from a directly instead of going through b.
; common peephole 0a removed redundant load from a into a.
	sub	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00174$
;	skipping generated iCode
;	genAssign
;	genMove_o size 1
	ld	a, c
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00175$
;	genLabel
00174$:
;	genPlus
;	AOP_STK for _load_scene_sloc5_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#68
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0011
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
	ld	a, (de)
;	genMove_o size 1
;	genLabel
00175$:
;	genPlus
;fetchLitPair	hl
	ld	hl, #_allocated_sprite_tiles
	add	a, (hl)
;fetchLitPair	hl
	ld	(hl), a
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00116$
;	genLabel
00115$:
	C$data_manager.c$281$6_0$404	= .
	.globl	C$data_manager.c$281$6_0$404
;src\core\data_manager.c:281: UBYTE idx = IndexOfFarPtr(scn.sprites.ptr, scn.sprites.bank, sprites_len, &actor->sprite);
;	genPlus
;	AOP_STK for _load_scene_sloc5_1_0
;	AOP_STK for _load_scene_sloc13_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#68
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0022
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#64
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#63
	ld	(hl), a
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _load_scene_sloc14_1_0
;	genMove_o size 1
	ldhl	sp,	#29
	ld	a, (hl)
	ldhl	sp,	#64
	ld	(hl), a
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _load_scene_sloc15_1_0
;	genMove_o size 2
	ldhl	sp,	#30
	ld	a, (hl)
	ldhl	sp,	#65
	ld	(hl), a
	ldhl	sp,	#31
	ld	a, (hl)
	ldhl	sp,	#66
;	genMove_o size 0
;	genCast
;	AOP_STK for _load_scene_sloc15_1_0
;	genMove_o size 2
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;	genMove_o size 0
;	genIpush
;	AOP_STK for _load_scene_sloc13_1_0
;	genMove_o size 2
	ldhl	sp,	#62
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
	push	bc
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_sprites_len)
; common peephole 17 loaded a from (#_sprites_len) directly instead of using hl.
	push	af
	inc	sp
;	genSend
;	AOP_STK for _load_scene_sloc14_1_0
;	genMove_o size 1
	ldhl	sp,	#67
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_IndexOfFarPtr
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	C$data_manager.c$282$6_0$404	= .
	.globl	C$data_manager.c$282$6_0$404
;src\core\data_manager.c:282: actor->base_tile = (idx < sprites_len) ? scene_sprites_base_tiles[idx] : 0;
;	genPlus
;	AOP_STK for _load_scene_sloc5_1_0
;	AOP_STK for _load_scene_sloc16_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#68
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000a
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#65
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#64
	ld	(hl), a
;	genMove_o size 0
;	genCmpLt
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_sprites_len
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00176$
;	skipping generated iCode
;	genPlus
;	AOP_STK for _load_scene_sloc17_1_0
;fetchPairLong
	ld	e, c
	ld	d, #0x00
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_scene_sprites_base_tiles
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#67
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#66
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _load_scene_sloc17_1_0
;fetchPairLong
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
	ld	a, (de)
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00177$
;	genLabel
00176$:
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genLabel
00177$:
;	genCast
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _load_scene_sloc16_1_0
;fetchPairLong
	ldhl	sp,	#63
	ld	a,	(hl+)
	ld	h, (hl)
	ld	l, a
	ld	(hl), c
;	genLabel
00116$:
	C$data_manager.c$284$5_0$401	= .
	.globl	C$data_manager.c$284$5_0$401
;src\core\data_manager.c:284: load_animations((void *)actor->sprite.ptr, actor->sprite.bank, ANIM_SET_DEFAULT, actor->animations);
;	genPlus
;	AOP_STK for _load_scene_sloc5_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#68
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0012
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPlus
;	AOP_STK for _load_scene_sloc5_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#68
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0022
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _load_scene_sloc18_1_0
	ld	a, (de)
;	genMove_o size 1
	ldhl	sp,	#66
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;	AOP_STK for _load_scene_sloc5_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#68
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
;	genMove_o size 2
;	genMove_o size 0
;	genPlus
;	genMove_o size 2
; common peephole 1 removed dead load from l into e.
; common peephole 0b removed redundant load from e back into l.
;	spillPairReg hl
;	spillPairReg hl
; common peephole 9 loaded h from h directly instead of going through a.
; common peephole 0a removed redundant load from h into h.
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
	ld	hl,#0x23
	add	hl,de
; common peephole 129a moved increment of hl to constant.
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
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 2
;fetchLitPair	bc
	ld	bc, #0x0000
	push	bc
;	genSend
;	AOP_STK for _load_scene_sloc18_1_0
;	genMove_o size 1
	ldhl	sp,	#70
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_load_animations
	C$data_manager.c$286$5_0$401	= .
	.globl	C$data_manager.c$286$5_0$401
;src\core\data_manager.c:286: actor->active = FALSE;
;	genAssign
;	AOP_STK for _load_scene_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#68
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genAssign (pointer)
;	genPackBits
	C$data_manager.c$287$5_0$401	= .
	.globl	C$data_manager.c$287$5_0$401
;src\core\data_manager.c:287: DL_PUSH_HEAD(actors_inactive_head, actor);
;	genPlus
;	AOP_STK for _load_scene_sloc5_1_0
;fetchPairLong
; common peephole 96b move dec hl before ld (bc), a
; common peephole 96b move dec hl before and a, #0xfe
; common peephole 96b move dec hl before ld a, (bc)
	ld	a, (hl-)
	ld	b, a
; sm83 peephole 3 used ldd to decrement hl after load
	ld	a, (bc)
	and	a, #0xfe
	ld	(bc), a
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
	xor	a, a
	ld	(bc), a
	inc	bc
	ld	(bc), a
;	genPlus
;	AOP_STK for _load_scene_sloc5_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#68
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_actors_inactive_head
;fetchLitPair	hl
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genIfx
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl-)
; sm83 peephole 3b used ldd to decrement hl after load
	or	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00118$
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0032
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genAssign (pointer)
;	AOP_STK for _load_scene_sloc5_1_0
;fetchPairLong
	ldhl	sp,	#68
	ld	a, (hl+)
; sm83 peephole 8 used ldi to increment hl
	ld	(bc), a
	inc	bc
	ld	a, (hl)
	ld	(bc), a
;	genLabel
00118$:
;	genAssign
;	AOP_STK for _load_scene_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#68
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_actors_inactive_head),a
; common peephole 19 loaded (#_actors_inactive_head) from a directly instead of using hl.
	ldhl	sp,	#69
	ld	a, (hl)
;fetchLitPair	hl
	ld	(#_actors_inactive_head + 1),a
; common peephole 20 loaded (#_actors_inactive_head) from a directly instead of using hl.
	C$data_manager.c$290$5_0$401	= .
	.globl	C$data_manager.c$290$5_0$401
;src\core\data_manager.c:290: if ((actor->pinned) || (actor->persistent)) activate_actor(actor);
;	genAssign
;	AOP_STK for _load_scene_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#68
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
	ld	l, a
	ld	h, c
;	genUnpackBits
	ld	a, (hl)
	rrca
;	genIfx
	and	a,#0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	NZ, 00119$
;	genAssign
;	AOP_STK for _load_scene_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#68
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	ld	c, (hl)
;	genMove_o size 0
;	genPointerGet
;fetchPairLong
	ld	l, a
	ld	h, c
;	genUnpackBits
	ld	a, (hl)
	rlca
;	genIfx
	and	a,#0x01
; common peephole 100 removed redundant or after and.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00153$
;	genLabel
00119$:
;	genIpush
;	AOP_STK for _load_scene_sloc5_1_0
;	genMove_o size 2
	ldhl	sp,	#68
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;	genMove_o size 0
	push	de
;	genCall
	ld	e, #b_activate_actor
	ld	hl, #_activate_actor
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
;	genLabel
00153$:
	C$data_manager.c$273$4_0$400	= .
	.globl	C$data_manager.c$273$4_0$400
;src\core\data_manager.c:273: for (i = actors_len - 1; i != 0; i--, actor++) {
;	genMinus
;	AOP_STK for _load_scene_sloc4_1_0
	ldhl	sp,	#67
	dec	(hl)
;	genPlus
;	AOP_STK for _load_scene_sloc5_1_0
;fetchPairLong
	inc	hl
; common peephole 156b removed inc hl / dec hl pair.
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0034
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#70
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#69
	ld	(hl), a
;	genMove_o size 0
;	genGoto
	jp	00152$
;	genLabel
00134$:
	C$data_manager.c$296$2_0$406	= .
	.globl	C$data_manager.c$296$2_0$406
;src\core\data_manager.c:296: if (actors_len != 0) {
;	genIfx
;fetchLitPair	hl
	ld	hl, #_actors_len
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00129$
	C$data_manager.c$297$3_0$407	= .
	.globl	C$data_manager.c$297$3_0$407
;src\core\data_manager.c:297: actor_t * actor = actors + 1;
;	genAddrOf
	ld	bc, #_actors+52
;	genCast
;	(locations are the same)
	C$data_manager.c$298$4_0$408	= .
	.globl	C$data_manager.c$298$4_0$408
;src\core\data_manager.c:298: for (i = actors_len - 1; i != 0; i--, actor++) {
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (hl)
;	genMinus
;	AOP_STK for _load_scene_sloc19_1_0
; common peephole 155c turned add into dec.
	dec	a
	ldhl	sp,	#69
	ld	(hl), a
;	genLabel
00155$:
;	genIfx
;	AOP_STK for _load_scene_sloc19_1_0
	ldhl	sp,	#69
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00129$
	C$data_manager.c$300$5_0$409	= .
	.globl	C$data_manager.c$300$5_0$409
;src\core\data_manager.c:300: if (actor->reserve_tiles) load_sprite(actor->base_tile, actor->sprite.ptr, actor->sprite.bank);
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0011
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIfx
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00156$
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0022
	add	hl, bc
;	genPointerGet
;	AOP_STK for _load_scene_sloc20_1_0
	ld	a, (hl)
;	genMove_o size 1
	ldhl	sp,	#68
	ld	(hl), a
;	genMove_o size 0
;	genPlus
;fetchPairLong
;fetchLitPair	hl
;	genPlus
	ld	hl,#0x23
	add	hl,bc
; common peephole 129a moved increment of hl to constant.
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
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x000a
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genIpush
	push	bc
;	AOP_STK for _load_scene_sloc20_1_0
;	genMove_o size 1
	ldhl	sp,	#70
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
;	genCall
	ld	e, #b_load_sprite
	ld	hl, #_load_sprite
	call	___sdcc_bcall_ehl
;	adjustStack by 4
	add	sp, #4
	pop	bc
;	genLabel
00156$:
	C$data_manager.c$298$4_0$408	= .
	.globl	C$data_manager.c$298$4_0$408
;src\core\data_manager.c:298: for (i = actors_len - 1; i != 0; i--, actor++) {
;	genMinus
;	AOP_STK for _load_scene_sloc19_1_0
	ldhl	sp,	#69
	dec	(hl)
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #0x0034
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00155$
;	genLabel
00129$:
	C$data_manager.c$304$3_0$410	= .
	.globl	C$data_manager.c$304$3_0$410
;src\core\data_manager.c:304: actor_t *actor = actors_active_head;
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_actors_active_head
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
	C$data_manager.c$305$2_1$410	= .
	.globl	C$data_manager.c$305$2_1$410
;src\core\data_manager.c:305: while (actor) {
;	genLabel
00130$:
;	genIfx
	ld	a, b
	or	a, c
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00135$
	C$data_manager.c$306$3_1$411	= .
	.globl	C$data_manager.c$306$3_1$411
;src\core\data_manager.c:306: actor_set_anim_idle(actor);
;	genIpush
	push	bc
	push	bc
;	genCall
	ld	e, #b_actor_set_anim_idle
	ld	hl, #_actor_set_anim_idle
;	adjustStack by 2
	call	___sdcc_bcall_ehl
; peephole sp10c increased SP by 2 through pop
	pop	hl
	pop	bc
	C$data_manager.c$307$3_1$411	= .
	.globl	C$data_manager.c$307$3_1$411
;src\core\data_manager.c:307: actor = actor->next;
;	genPlus
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0030
	add	hl, bc
;	genPointerGet
;fetchPairLong
;	_moveFrom_tpair_()
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	_moveFrom_tpair_()
	ld	b, (hl)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00130$
;	genLabel
00135$:
	C$data_manager.c$312$1_0$388	= .
	.globl	C$data_manager.c$312$1_0$388
;src\core\data_manager.c:312: projectiles_init();
;	genCall
	ld	e, #b_projectiles_init
	ld	hl, #_projectiles_init
	call	___sdcc_bcall_ehl
	C$data_manager.c$313$1_0$388	= .
	.globl	C$data_manager.c$313$1_0$388
;src\core\data_manager.c:313: if (projectiles_len  != 0) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_projectiles_len)
; common peephole 17 loaded a from (#_projectiles_len) directly instead of using hl.
	or	a, a
	jp	Z, 00138$
	C$data_manager.c$314$3_0$412	= .
	.globl	C$data_manager.c$314$3_0$412
;src\core\data_manager.c:314: projectile_def_t * projectile_def = projectile_defs;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
	C$data_manager.c$315$2_0$412	= .
	.globl	C$data_manager.c$315$2_0$412
;src\core\data_manager.c:315: MemcpyBanked(projectile_def, scn.projectiles.ptr, sizeof(projectile_def_t) * projectiles_len, scn.projectiles.bank);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	AOP_STK for _load_scene_sloc21_1_0
;	genMove_o size 1
	ldhl	sp,	#38
	ld	a, (hl)
	ldhl	sp,	#67
	ld	(hl), a
;	genMove_o size 0
;	genMult
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_projectiles_len
	ld	c, (hl)
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, bc
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	AOP_STK for _load_scene_sloc22_1_0
;	genMove_o size 2
	ldhl	sp,	#39
	ld	a, (hl)
	ldhl	sp,	#68
	ld	(hl), a
	ldhl	sp,	#40
	ld	a, (hl)
	ldhl	sp,	#69
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	genIpush
;	AOP_STK for _load_scene_sloc21_1_0
;	genMove_o size 1
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
;	genMove_o size 0
;	genIpush
;	genSend
;	AOP_STK for _load_scene_sloc22_1_0
;	genMove_o size 2
; common peephole 96d move inc hl before push (bc)
; common peephole 96c move inc hl before inc sp
; common peephole 96d move inc hl before push (af)
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	push	af
	inc	sp
	push	bc
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_projectile_defs
;	genCall
	call	_MemcpyBanked
	C$data_manager.c$316$3_0$413	= .
	.globl	C$data_manager.c$316$3_0$413
;src\core\data_manager.c:316: for (i = projectiles_len; i != 0; i--, projectile_def++) {
;	genAssign
;	AOP_STK for _load_scene_sloc23_1_0
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_projectiles_len)
; common peephole 17 loaded a from (#_projectiles_len) directly instead of using hl.
	ldhl	sp,	#67
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	AOP_STK for _load_scene_sloc24_1_0
;	genMove_o size 2
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	a, #<(_projectile_defs)
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), #>(_projectile_defs)
;	genLabel
00158$:
;	genIfx
;	AOP_STK for _load_scene_sloc23_1_0
	ldhl	sp,	#67
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00138$
	C$data_manager.c$318$4_0$414	= .
	.globl	C$data_manager.c$318$4_0$414
;src\core\data_manager.c:318: UBYTE idx = IndexOfFarPtr(scn.sprites.ptr, scn.sprites.bank, sprites_len, &projectile_def->sprite);
;	genPlus
;	AOP_STK for _load_scene_sloc24_1_0
;fetchPairLong
	inc	hl
; common peephole 156b removed inc hl / dec hl pair.
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0004
	add	hl, de
;	genMove_o size 2
	ld	c, l
	ld	b, h
;	genMove_o size 0
;	genPointerGet
;	AOP_STK for _load_scene_sloc25_1_0
;	genMove_o size 1
	ldhl	sp,	#29
	ld	a, (hl)
	ldhl	sp,	#66
	ld	(hl), a
;	genMove_o size 0
;	genPointerGet
;	genMove_o size 2
	ldhl	sp,	#30
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
;	genIpush
	push	bc
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_sprites_len)
; common peephole 17 loaded a from (#_sprites_len) directly instead of using hl.
	push	af
	inc	sp
;	genSend
;	AOP_STK for _load_scene_sloc25_1_0
;	genMove_o size 1
	ldhl	sp,	#69
	ld	a, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;	genCall
	call	_IndexOfFarPtr
;	genMove_o size 1
	ld	c, a
;	genMove_o size 0
	C$data_manager.c$319$4_0$414	= .
	.globl	C$data_manager.c$319$4_0$414
;src\core\data_manager.c:319: projectile_def->base_tile = (idx < sprites_len) ? scene_sprites_base_tiles[idx] : 0;
;	genPlus
;	AOP_STK for _load_scene_sloc24_1_0
;fetchPairLong
; sm83 peephole 10d combined ld and dec.
	ldhl	sp,#68
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0008
	add	hl, de
;	genMove_o size 2
	ld	e, l
	ld	d, h
;	genMove_o size 0
;	genCmpLt
	ld	a, c
;fetchLitPair	hl
	ld	hl, #_sprites_len
	sub	a, (hl)
; common peephole 163 changed absolute to relative conditional jump.
	jr	NC, 00178$
;	skipping generated iCode
;	genPlus
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_scene_sprites_base_tiles
	ld	b, #0x00
	add	hl, bc
;	genPointerGet
	ld	a, (hl)
;	genCast
;	(locations are the same)
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00179$
;	genLabel
00178$:
;	genAssign
;	genMove_o size 1
	xor	a, a
;	genLabel
00179$:
;	genCast
;	(locations are the same)
;	genAssign (pointer)
	ld	(de), a
	C$data_manager.c$316$3_0$413	= .
	.globl	C$data_manager.c$316$3_0$413
;src\core\data_manager.c:316: for (i = projectiles_len; i != 0; i--, projectile_def++) {
;	genMinus
;	AOP_STK for _load_scene_sloc23_1_0
	ldhl	sp,	#67
	dec	(hl)
;	genPlus
;	AOP_STK for _load_scene_sloc24_1_0
;fetchPairLong
	inc	hl
; common peephole 156b removed inc hl / dec hl pair.
	ld	a, (hl+)
	ld	e, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	d, (hl)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #0x0017
	add	hl, de
;	genMove_o size 2
	push	hl
	ld	a, l
	ldhl	sp,	#70
	ld	(hl), a
	pop	hl
	ld	a, h
	ldhl	sp,	#69
	ld	(hl), a
;	genMove_o size 0
;	genGoto
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00158$
;	genLabel
00138$:
	C$data_manager.c$324$1_0$388	= .
	.globl	C$data_manager.c$324$1_0$388
;src\core\data_manager.c:324: if (triggers_len != 0) {
;	genIfx
;fetchLitPair	hl
	ld	a, (#_triggers_len)
; common peephole 17 loaded a from (#_triggers_len) directly instead of using hl.
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00140$
	C$data_manager.c$325$2_0$415	= .
	.globl	C$data_manager.c$325$2_0$415
;src\core\data_manager.c:325: MemcpyBanked(&triggers, scn.triggers.ptr, sizeof(trigger_t) * triggers_len, scn.triggers.bank);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	AOP_STK for _load_scene_sloc26_1_0
;	genMove_o size 1
	ldhl	sp,	#35
	ld	a, (hl)
	ldhl	sp,	#67
	ld	(hl), a
;	genMove_o size 0
;	genCast
;	genMove_o size 1
;fetchLitPair	hl
	ld	hl, #_triggers_len
	ld	l, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 1
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;	genLeftShift
	add	hl, hl
	add	hl, hl
	add	hl, hl
;fetchPairLong
	ld	c, l
	ld	b, h
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	AOP_STK for _load_scene_sloc27_1_0
;	genMove_o size 2
	ldhl	sp,	#36
	ld	a, (hl)
	ldhl	sp,	#68
	ld	(hl), a
	ldhl	sp,	#37
	ld	a, (hl)
	ldhl	sp,	#69
;	genMove_o size 0
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genIpush
;	AOP_STK for _load_scene_sloc26_1_0
;	genMove_o size 1
	ld	(hl-), a
; sm83 peephole 5 used ldd to decrement hl after load
	dec	hl
;	genMove_o size 0
;	genIpush
;	genSend
;	AOP_STK for _load_scene_sloc27_1_0
;	genMove_o size 2
; common peephole 96d move inc hl before push (bc)
; common peephole 96c move inc hl before inc sp
; common peephole 96d move inc hl before push (af)
	ld	a, (hl+)
; sm83 peephole 2 used ldi to increment hl after load
	push	af
	inc	sp
	push	bc
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
;	genMove_o size 0
;	genSend
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #_triggers
;	genCall
	call	_MemcpyBanked
;	genLabel
00140$:
	C$data_manager.c$328$1_0$388	= .
	.globl	C$data_manager.c$328$1_0$388
;src\core\data_manager.c:328: scroll_reset();
;	genCall
	ld	e, #b_scroll_reset
	ld	hl, #_scroll_reset
	call	___sdcc_bcall_ehl
	C$data_manager.c$329$1_0$388	= .
	.globl	C$data_manager.c$329$1_0$388
;src\core\data_manager.c:329: trigger_reset();
;	genCall
	ld	e, #b_trigger_reset
	ld	hl, #_trigger_reset
	call	___sdcc_bcall_ehl
	C$data_manager.c$331$1_0$388	= .
	.globl	C$data_manager.c$331$1_0$388
;src\core\data_manager.c:331: emote_actor = NULL;
;	genAssign
;	genMove_o size 2
	xor	a, a
;fetchLitPair	hl
	ld	hl, #_emote_actor
;fetchLitPair	hl
	ld	(hl+), a
; sm83 peephole 4 used ldi to increment hl after load
	ld	(hl), a
	C$data_manager.c$333$1_0$388	= .
	.globl	C$data_manager.c$333$1_0$388
;src\core\data_manager.c:333: if ((init_data) && (scn.script_init.ptr != NULL)) {
;	genIfx
;	AOP_STK for 
	ldhl	sp,	#79
	ld	a, (hl)
	or	a, a
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00142$
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2
	ldhl	sp,	#24
	ld	a, (hl+)
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genIfx
	ld	c,a
	or	a,(hl)
; common peephole 99 removed load by reordering or arguments.
; common peephole 163 changed absolute to relative conditional jump.
	jr	Z, 00142$
	C$data_manager.c$334$2_0$416	= .
	.globl	C$data_manager.c$334$2_0$416
;src\core\data_manager.c:334: return (script_execute(scn.script_init.bank, scn.script_init.ptr, 0, 0) != 0);
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genPointerGet
;	genMove_o size 2
	dec	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
;	genMove_o size 0
;	genCast
;	(locations are the same)
;	genPointerGet
;	genMove_o size 1
	ld	a, (hl-)
; sm83 peephole 3 used ldd to decrement hl after load
; common peephole 96b move dec hl before ld b, a
	dec	hl
	ld	b, a
	ld	h, (hl)
;	spillPairReg hl
;	spillPairReg hl
;	genMove_o size 0
;	genIpush
;	genMove_o size 1
	xor	a, a
	push	af
	inc	sp
;	genIpush
;	genMove_o size 2
;fetchLitPair	de
	ld	de, #0x0000
	push	de
;	genIpush
	push	bc
;	genIpush
	push	hl
	inc	sp
;	genCall
	ld	e, #b_script_execute
	ld	hl, #_script_execute
	call	___sdcc_bcall_ehl
;	adjustStack by 6
	add	sp, #6
;	genMove_o size 2
;	genNot
	ld	a, b
	or	a, c
	sub	a, #0x01
	ld	a, #0x00
	rla
;	genMove_o size 0
;	genNot
	xor	a, #0x01
;	genCast
;	(locations are the same)
;	genRet
;	genMove_o size 1
; common peephole 162 changed absolute to relative unconditional jump.
	jr	00160$
;	genLabel
00142$:
	C$data_manager.c$336$1_0$388	= .
	.globl	C$data_manager.c$336$1_0$388
;src\core\data_manager.c:336: return FALSE;
;	genRet
;	genMove_o size 1
	xor	a, a
;	genLabel
00160$:
	C$data_manager.c$337$1_0$388	= .
	.globl	C$data_manager.c$337$1_0$388
;src\core\data_manager.c:337: }
;	genEndFunction
;	adjustStack by 70
	add	sp, #70
	C$data_manager.c$337$1_0$388	= .
	.globl	C$data_manager.c$337$1_0$388
	XG$load_scene$0$0	= .
	.globl	XG$load_scene$0$0
	ret
	G$load_player$0$0	= .
	.globl	G$load_player$0$0
	C$data_manager.c$339$1_0$431	= .
	.globl	C$data_manager.c$339$1_0$431
;src\core\data_manager.c:339: void load_player(void) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function load_player
; ---------------------------------
;	Register assignment might be sub-optimal.
; Stack space usage: 0 bytes.
	b_load_player	= 255
_load_player::
	C$data_manager.c$340$1_0$431	= .
	.globl	C$data_manager.c$340$1_0$431
;src\core\data_manager.c:340: PLAYER.pos.x = start_scene_x;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_start_scene_x
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 1)
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$data_manager.c$341$1_0$431	= .
	.globl	C$data_manager.c$341$1_0$431
;src\core\data_manager.c:341: PLAYER.pos.y = start_scene_y;
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 2
;fetchLitPair	hl
	ld	hl, #_start_scene_y
;fetchLitPair	hl
	ld	a, (hl+)
	ld	c, a
; sm83 peephole 2b used ldi to increment hl after load
	ld	b, (hl)
;	genCast
;	(locations are the same)
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #(_actors + 3)
	ld	a, c
	ld	(hl+), a
; sm83 peephole 4b used ldi to increment hl after load
	ld	(hl), b
	C$data_manager.c$342$1_0$431	= .
	.globl	C$data_manager.c$342$1_0$431
;src\core\data_manager.c:342: PLAYER.dir = start_scene_dir;
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_start_scene_dir)
; common peephole 17 loaded a from (#_start_scene_dir) directly instead of using hl.
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	(#(_actors + 5)),a
; common peephole 19 loaded (#(_actors + 5)) from a directly instead of using hl.
	C$data_manager.c$343$1_0$431	= .
	.globl	C$data_manager.c$343$1_0$431
;src\core\data_manager.c:343: PLAYER.move_speed = start_player_move_speed;
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_start_player_move_speed)
; common peephole 17 loaded a from (#_start_player_move_speed) directly instead of using hl.
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	(#(_actors + 15)),a
; common peephole 19 loaded (#(_actors + 15)) from a directly instead of using hl.
	C$data_manager.c$344$1_0$431	= .
	.globl	C$data_manager.c$344$1_0$431
;src\core\data_manager.c:344: PLAYER.anim_tick = start_player_anim_tick;
;	skipping iCode since result will be rematerialized
;	genAssign
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_start_player_anim_tick)
; common peephole 17 loaded a from (#_start_player_anim_tick) directly instead of using hl.
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	(#(_actors + 14)),a
; common peephole 19 loaded (#(_actors + 14)) from a directly instead of using hl.
	C$data_manager.c$345$1_0$431	= .
	.globl	C$data_manager.c$345$1_0$431
;src\core\data_manager.c:345: PLAYER.frame = 0;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 11
;	genAssign (pointer)
	ld	(hl), #0x00
	C$data_manager.c$346$1_0$431	= .
	.globl	C$data_manager.c$346$1_0$431
;src\core\data_manager.c:346: PLAYER.frame_start = 0;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 12
;	genAssign (pointer)
	ld	(hl), #0x00
	C$data_manager.c$347$1_0$431	= .
	.globl	C$data_manager.c$347$1_0$431
;src\core\data_manager.c:347: PLAYER.frame_end = 2;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 13
;	genAssign (pointer)
	ld	(hl), #0x02
	C$data_manager.c$348$1_0$431	= .
	.globl	C$data_manager.c$348$1_0$431
;src\core\data_manager.c:348: PLAYER.pinned = FALSE;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_actors
;	genPackBits
	res	1, (hl)
	C$data_manager.c$349$1_0$431	= .
	.globl	C$data_manager.c$349$1_0$431
;src\core\data_manager.c:349: PLAYER.collision_group = COLLISION_GROUP_PLAYER;
;	genPlus
;fetchLitPair	hl
	ld	hl, #_actors + 47
;	genAssign (pointer)
	ld	(hl), #0x01
	C$data_manager.c$350$1_0$431	= .
	.globl	C$data_manager.c$350$1_0$431
;src\core\data_manager.c:350: PLAYER.collision_enabled = TRUE;
;	skipping iCode since result will be rematerialized
;	skipping iCode since result will be rematerialized
;	genAssign (pointer)
;fetchPairLong
;fetchLitPair	hl
	ld	hl, #_actors
;	genPackBits
	set	5, (hl)
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$data_manager.c$351$1_0$431	= .
	.globl	C$data_manager.c$351$1_0$431
;src\core\data_manager.c:351: }
;	genEndFunction
	C$data_manager.c$351$1_0$431	= .
	.globl	C$data_manager.c$351$1_0$431
	XG$load_player$0$0	= .
	.globl	XG$load_player$0$0
	ret
	G$load_emote$0$0	= .
	.globl	G$load_emote$0$0
	C$data_manager.c$353$1_0$433	= .
	.globl	C$data_manager.c$353$1_0$433
;src\core\data_manager.c:353: void load_emote(const unsigned char *tiles, UBYTE bank) BANKED {
;	genLabel
;	genFunction
;	---------------------------------
; Function load_emote
; ---------------------------------
;	Register assignment is optimal.
; Stack space usage: 0 bytes.
	b_load_emote	= 255
_load_emote::
	C$data_manager.c$354$1_0$433	= .
	.globl	C$data_manager.c$354$1_0$433
;src\core\data_manager.c:354: SetBankedSpriteData(allocated_sprite_tiles, EMOTE_SPRITE_SIZE, tiles + 0, bank);
;	genIpush
;	AOP_STK for 
;	genMove_o size 1
	ldhl	sp,	#8
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
;	genIpush
;	genMove_o size 1
	ld	a, #0x04
	push	af
	inc	sp
;	genIpush
;	genMove_o size 1
;fetchLitPair	hl
	ld	a, (#_allocated_sprite_tiles)
; common peephole 17 loaded a from (#_allocated_sprite_tiles) directly instead of using hl.
	push	af
	inc	sp
;	genCall
	call	_SetBankedSpriteData
;	adjustStack by 5
	add	sp, #5
;	genLabel
; common peephole 158 removed unused label 00101$.
	C$data_manager.c$355$1_0$433	= .
	.globl	C$data_manager.c$355$1_0$433
;src\core\data_manager.c:355: }
;	genEndFunction
	C$data_manager.c$355$1_0$433	= .
	.globl	C$data_manager.c$355$1_0$433
	XG$load_emote$0$0	= .
	.globl	XG$load_emote$0$0
	ret
	.area _CODE_255
	.area _INITIALIZER
	.area _CABS (ABS)
