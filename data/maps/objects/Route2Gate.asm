Route2Gate_Object:
	db $a ; border block

	def_warp_events
	warp_event  0,  0, LAST_MAP, 4
	warp_event  1,  0, LAST_MAP, 4
	warp_event  0,  3, LAST_MAP, 5
	warp_event  1,  3, LAST_MAP, 5

	def_bg_events

	def_object_events
	object_event  0,  1, SPRITE_SCIENTIST, STAY, RIGHT, 1 ; person
	object_event  0,  2, SPRITE_YOUNGSTER, STAY, LEFT_RIGHT, 2 ; person

	def_warps_to ROUTE_2_GATE
