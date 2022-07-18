Route2_Object:
	db $f ; border block

	def_warp_events
	warp_event  8,  1, DIGLETTS_CAVE_ROUTE_2, 1
	warp_event  2,  1, VIRIDIAN_FOREST_NORTH_GATE, 2
	warp_event  5,  5, ROUTE_2_TRADE_HOUSE, 1
	warp_event  9,  7, ROUTE_2_GATE, 2
	warp_event  7,  9, ROUTE_2_GATE, 3
	warp_event  1,  7, VIRIDIAN_FOREST_SOUTH_GATE, 3

	def_bg_events
	bg_event 3, 9, 3 ; Route2Text3
	bg_event 9, 3, 4 ; Route2Text4

	def_object_events
	object_event 5, 10, SPRITE_POKE_BALL, STAY, NONE, 1, MOON_STONE
	object_event 5,  9, SPRITE_POKE_BALL, STAY, NONE, 2, HP_UP

	def_warps_to ROUTE_2

	; unused
	warp_to 2, 7, 4
	db $12, $c7, $9, $7
	warp_to 2, 7, 4
	warp_to 2, 7, 4
	warp_to 2, 7, 4
