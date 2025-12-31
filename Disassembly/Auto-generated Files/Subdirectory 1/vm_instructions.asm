;--------------------------------------------------------
; File Created by SDCC : free open source ISO C Compiler 
; Version 4.4.1 #14650 (MINGW64)
;--------------------------------------------------------
	.module vm_instructions
	.optsdcc -msm83
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _script_cmds
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
	.area _CODE
	.area _CODE
G$script_cmds$0_0$0 == .
_script_cmds:
	.dw _vm_push
	.byte ___bank_VM_MAIN
	.db #0x02	; 2
	.dw _vm_pop
	.byte ___bank_VM_MAIN
	.db #0x01	; 1
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw _vm_call
	.byte ___bank_VM_MAIN
	.db #0x02	; 2
	.dw _vm_ret
	.byte ___bank_VM_MAIN
	.db #0x01	; 1
	.dw _vm_get_far
	.byte ___bank_VM_MAIN
	.db #0x06	; 6
	.dw _vm_loop
	.byte ___bank_VM_MAIN
	.db #0x05	; 5
	.dw _vm_switch
	.byte ___bank_VM_MAIN
	.db #0x04	; 4
	.dw _vm_jump
	.byte ___bank_VM_MAIN
	.db #0x02	; 2
	.dw _vm_call_far
	.byte ___bank_VM_MAIN
	.db #0x03	; 3
	.dw _vm_ret_far
	.byte ___bank_VM_MAIN
	.db #0x01	; 1
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw _vm_invoke
	.byte ___bank_VM_MAIN
	.db #0x06	; 6
	.dw _vm_beginthread
	.byte ___bank_VM_MAIN
	.db #0x06	; 6
	.dw _vm_if
	.byte ___bank_VM_MAIN
	.db #0x08	; 8
	.dw _vm_push_value_ind
	.byte ___bank_VM_MAIN
	.db #0x02	; 2
	.dw _vm_push_value
	.byte ___bank_VM_MAIN
	.db #0x02	; 2
	.dw _vm_reserve
	.byte ___bank_VM_MAIN
	.db #0x01	; 1
	.dw _vm_set
	.byte ___bank_VM_MAIN
	.db #0x04	; 4
	.dw _vm_set_const
	.byte ___bank_VM_MAIN
	.db #0x04	; 4
	.dw _vm_rpn
	.byte ___bank_VM_MAIN
	.db #0x00	; 0
	.dw _vm_join
	.byte ___bank_VM_MAIN
	.db #0x02	; 2
	.dw _vm_terminate
	.byte ___bank_VM_MAIN
	.db #0x02	; 2
	.dw _vm_idle
	.byte ___bank_VM_MAIN
	.db #0x00	; 0
	.dw _vm_get_tlocal
	.byte ___bank_VM_MAIN
	.db #0x04	; 4
	.dw _vm_if_const
	.byte ___bank_VM_MAIN
	.db #0x08	; 8
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw _vm_init_rng
	.byte ___bank_VM_MAIN
	.db #0x02	; 2
	.dw _vm_rand
	.byte ___bank_VM_MAIN
	.db #0x06	; 6
	.dw _vm_lock
	.byte ___bank_VM_MAIN
	.db #0x00	; 0
	.dw _vm_unlock
	.byte ___bank_VM_MAIN
	.db #0x00	; 0
	.dw _vm_raise
	.byte ___bank_VM_MAIN
	.db #0x02	; 2
	.dw _vm_set_indirect
	.byte ___bank_VM_MAIN
	.db #0x04	; 4
	.dw _vm_get_indirect
	.byte ___bank_VM_MAIN
	.db #0x04	; 4
	.dw _vm_test_terminate
	.byte ___bank_VM_MAIN
	.db #0x01	; 1
	.dw _vm_poll_loaded
	.byte ___bank_VM_MAIN
	.db #0x02	; 2
	.dw _vm_push_reference
	.byte ___bank_VM_MAIN
	.db #0x02	; 2
	.dw _vm_call_native
	.byte ___bank_VM_MAIN
	.db #0x03	; 3
	.dw _vm_save_peek
	.byte ___bank_VM_LOAD_SAVE
	.db #0x09	; 9
	.dw _vm_save_clear
	.byte ___bank_VM_LOAD_SAVE
	.db #0x01	; 1
	.dw _vm_actor_move_to
	.byte ___bank_VM_ACTOR
	.db #0x02	; 2
	.dw _vm_actor_activate
	.byte ___bank_VM_ACTOR
	.db #0x02	; 2
	.dw _vm_actor_set_dir
	.byte ___bank_VM_ACTOR
	.db #0x03	; 3
	.dw _vm_actor_deactivate
	.byte ___bank_VM_ACTOR
	.db #0x02	; 2
	.dw _vm_actor_set_anim
	.byte ___bank_VM_ACTOR
	.db #0x04	; 4
	.dw _vm_actor_set_pos
	.byte ___bank_VM_ACTOR
	.db #0x02	; 2
	.dw _vm_actor_emote
	.byte ___bank_VM_ACTOR
	.db #0x05	; 5
	.dw _vm_actor_set_bounds
	.byte ___bank_VM_ACTOR
	.db #0x06	; 6
	.dw _vm_actor_set_spritesheet
	.byte ___bank_VM_ACTOR
	.db #0x05	; 5
	.dw _vm_actor_replace_tile
	.byte ___bank_VM_ACTOR
	.db #0x08	; 8
	.dw _vm_actor_get_pos
	.byte ___bank_VM_ACTOR
	.db #0x02	; 2
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw _vm_actor_get_dir
	.byte ___bank_VM_ACTOR
	.db #0x04	; 4
	.dw _vm_actor_set_anim_tick
	.byte ___bank_VM_ACTOR
	.db #0x03	; 3
	.dw _vm_actor_set_move_speed
	.byte ___bank_VM_ACTOR
	.db #0x03	; 3
	.dw _vm_actor_set_flags
	.byte ___bank_VM_ACTOR
	.db #0x04	; 4
	.dw _vm_load_text
	.byte ___bank_VM_UI
	.db #0x01	; 1
	.dw _vm_display_text
	.byte ___bank_VM_UI
	.db #0x02	; 2
	.dw _vm_overlay_setpos
	.byte ___bank_VM_UI
	.db #0x02	; 2
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw _vm_overlay_wait
	.byte ___bank_VM_UI
	.db #0x02	; 2
	.dw _vm_overlay_move_to
	.byte ___bank_VM_UI
	.db #0x03	; 3
	.dw _vm_overlay_show
	.byte ___bank_VM_UI
	.db #0x04	; 4
	.dw _vm_overlay_clear
	.byte ___bank_VM_UI
	.db #0x06	; 6
	.dw _vm_choice
	.byte ___bank_VM_UI
	.db #0x04	; 4
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw _vm_set_font
	.byte ___bank_VM_UI
	.db #0x01	; 1
	.dw _vm_overlay_set_submap_ex
	.byte ___bank_VM_UI
	.db #0x02	; 2
	.dw _vm_overlay_scroll
	.byte ___bank_VM_UI
	.db #0x05	; 5
	.dw _vm_overlay_set_scroll
	.byte ___bank_VM_UI
	.db #0x05	; 5
	.dw _vm_overlay_set_submap
	.byte ___bank_VM_UI
	.db #0x06	; 6
	.dw _vm_load_tileset
	.byte ___bank_VM_GAMEBOY
	.db #0x05	; 5
	.dw _vm_set_sprites_visible
	.byte ___bank_VM_GAMEBOY
	.db #0x01	; 1
	.dw _vm_input_wait
	.byte ___bank_VM_GAMEBOY
	.db #0x01	; 1
	.dw _vm_input_attach
	.byte ___bank_VM_GAMEBOY
	.db #0x02	; 2
	.dw _vm_input_get
	.byte ___bank_VM_GAMEBOY
	.db #0x03	; 3
	.dw _vm_context_prepare
	.byte ___bank_VM_GAMEBOY
	.db #0x04	; 4
	.dw _vm_overlay_set_map
	.byte ___bank_VM_UI
	.db #0x09	; 9
	.dw _vm_fade
	.byte ___bank_VM_GAMEBOY
	.db #0x01	; 1
	.dw _vm_timer_prepare
	.byte ___bank_VM_GAMEBOY
	.db #0x04	; 4
	.dw _vm_timer_set
	.byte ___bank_VM_GAMEBOY
	.db #0x02	; 2
	.dw _vm_get_tile_xy
	.byte ___bank_VM_GAMEBOY
	.db #0x06	; 6
	.dw _vm_replace_tile
	.byte ___bank_VM_GAMEBOY
	.db #0x08	; 8
	.dw _vm_poll
	.byte ___bank_VM_GAMEBOY
	.db #0x05	; 5
	.dw _vm_set_sprite_mode
	.byte ___bank_VM_GAMEBOY
	.db #0x01	; 1
	.dw _vm_replace_tile_xy
	.byte ___bank_VM_GAMEBOY
	.db #0x07	; 7
	.dw _vm_input_detach
	.byte ___bank_VM_GAMEBOY
	.db #0x01	; 1
	.dw _vm_music_play
	.byte ___bank_VM_MUSIC
	.db #0x03	; 3
	.dw _vm_music_stop
	.byte ___bank_VM_MUSIC
	.db #0x00	; 0
	.dw _vm_music_mute
	.byte ___bank_VM_MUSIC
	.db #0x01	; 1
	.dw _vm_sound_mastervol
	.byte ___bank_VM_MUSIC
	.db #0x01	; 1
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw _vm_music_routine
	.byte ___bank_VM_MUSIC
	.db #0x04	; 4
	.dw _vm_sfx_play
	.byte ___bank_VM_MUSIC
	.db #0x05	; 5
	.dw _vm_music_setpos
	.byte ___bank_VM_MUSIC
	.db #0x02	; 2
	.dw _vm_scene_push
	.byte ___bank_VM_SCENE
	.db #0x00	; 0
	.dw _vm_scene_pop
	.byte ___bank_VM_SCENE
	.db #0x00	; 0
	.dw _vm_scene_pop_all
	.byte ___bank_VM_SCENE
	.db #0x00	; 0
	.dw _vm_scene_stack_reset
	.byte ___bank_VM_SCENE
	.db #0x00	; 0
	.dw _vm_sio_set_mode
	.byte ___bank_VM_SIO
	.db #0x01	; 1
	.dw _vm_sio_exchange
	.byte ___bank_VM_SIO
	.db #0x05	; 5
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw _vm_camera_move_to
	.byte ___bank_VM_CAMERA
	.db #0x04	; 4
	.dw _vm_camera_set_pos
	.byte ___bank_VM_CAMERA
	.db #0x02	; 2
	.dw _vm_timer_stop
	.byte ___bank_VM_GAMEBOY
	.db #0x01	; 1
	.dw _vm_timer_reset
	.byte ___bank_VM_GAMEBOY
	.db #0x01	; 1
	.dw _vm_actor_terminate_update
	.byte ___bank_VM_ACTOR
	.db #0x02	; 2
	.dw _vm_actor_set_anim_frame
	.byte ___bank_VM_ACTOR
	.db #0x02	; 2
	.dw _vm_memset
	.byte ___bank_VM_MAIN
	.db #0x06	; 6
	.dw _vm_memcpy
	.byte ___bank_VM_MAIN
	.db #0x06	; 6
	.dw _vm_rtc_latch
	.byte ___bank_VM_RTC
	.db #0x00	; 0
	.dw _vm_rtc_get
	.byte ___bank_VM_RTC
	.db #0x03	; 3
	.dw _vm_rtc_set
	.byte ___bank_VM_RTC
	.db #0x03	; 3
	.dw _vm_rtc_start
	.byte ___bank_VM_RTC
	.db #0x01	; 1
	.dw _vm_load_palette
	.byte ___bank_VM_PALETTE
	.db #0x02	; 2
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw _vm_sgb_transfer
	.byte ___bank_VM_SGB
	.db #0x00	; 0
	.dw _vm_rumble
	.byte ___bank_VM_GAMEBOY
	.db #0x01	; 1
	.dw _vm_projectile_launch
	.byte ___bank_VM_PROJECTILE
	.db #0x03	; 3
	.dw _vm_projectile_load_type
	.byte ___bank_VM_PROJECTILE
	.db #0x04	; 4
	.dw #0x0000
	.db #0x00	; 0
	.db #0x00	; 0
	.dw _vm_actor_get_anim_frame
	.byte ___bank_VM_ACTOR
	.db #0x02	; 2
	.dw _vm_actor_set_anim_set
	.byte ___bank_VM_ACTOR
	.db #0x04	; 4
	.dw _vm_switch_text_layer
	.byte ___bank_VM_UI
	.db #0x01	; 1
	.dw _vm_actor_get_angle
	.byte ___bank_VM_ACTOR
	.db #0x04	; 4
	.dw _vm_actor_set_spritesheet_by_ref
	.byte ___bank_VM_ACTOR
	.db #0x04	; 4
	.dw _vm_actor_move_cancel
	.byte ___bank_VM_ACTOR
	.db #0x02	; 2
	.dw _vm_sin_scale
	.byte ___bank_VM_MATH
	.db #0x05	; 5
	.dw _vm_cos_scale
	.byte ___bank_VM_MATH
	.db #0x05	; 5
	.dw _vm_set_text_sound
	.byte ___bank_VM_UI
	.db #0x04	; 4
	.dw _vm_print_detect
	.byte ___bank_VM_GBPRINTER
	.db #0x03	; 3
	.dw _vm_print_overlay
	.byte ___bank_VM_GBPRINTER
	.db #0x05	; 5
	.dw _vm_actor_begin_update
	.byte ___bank_VM_ACTOR
	.db #0x02	; 2
	.area _INITIALIZER
	.area _CABS (ABS)
