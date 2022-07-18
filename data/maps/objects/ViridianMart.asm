ViridianMart_Object:
	db $0 ; border block

	def_warp_events
	warp_event  3,  5, LAST_MAP, 2
	warp_event  4,  5, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  0,  3, SPRITE_CLERK, STAY, RIGHT, 1 ; person
	object_event  5,  4, SPRITE_YOUNGSTER, WALK, UP_DOWN, 2 ; person
	object_event  4,  2, SPRITE_COOLTRAINER_M, STAY, NONE, 3 ; person

	def_warps_to VIRIDIAN_MART
