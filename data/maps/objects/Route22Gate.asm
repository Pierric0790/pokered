Route22Gate_Object:
	db $a ; border block

	def_warp_events
	warp_event  0,  1, LAST_MAP, 1
	warp_event  1,  1, LAST_MAP, 1
	warp_event  0,  0, LAST_MAP, 1
	warp_event  1,  0, LAST_MAP, 2

	def_bg_events

	def_object_events
	object_event  1,  1, SPRITE_GUARD, STAY, LEFT, 1 ; person

	def_warps_to ROUTE_22_GATE
