ViridianCity_Object:
	db $f ; border block

	def_warp_events
	warp_event  7, 11, VIRIDIAN_POKECENTER, 1
	warp_event 11,  9, VIRIDIAN_MART, 1
	warp_event  5,  7, VIRIDIAN_SCHOOL_HOUSE, 1
	warp_event  5,  3, VIRIDIAN_NICKNAME_HOUSE, 1
	warp_event 11,  1, VIRIDIAN_GYM, 1

	def_bg_events
	bg_event  5,  5,  8 ; ViridianCityText8
	bg_event  5,  1,  9 ; ViridianCityText9
	bg_event  5, 11, 10 ; ViridianCityText10
	bg_event 12,  9, 11 ; MartSignText
	bg_event  8, 11, 12 ; PokeCenterSignText
	bg_event  9,  1, 13 ; ViridianCityText13

	def_object_events
	object_event  1,  5, SPRITE_YOUNGSTER, WALK, ANY_DIR, 1 ; person
	object_event  9,  0, SPRITE_GAMBLER, STAY, NONE, 2 ; person
	object_event 13, 11, SPRITE_YOUNGSTER, WALK, ANY_DIR, 3 ; person
	object_event  1,  2, SPRITE_GIRL, STAY, RIGHT, 4 ; person
	object_event  2,  2, SPRITE_GAMBLER_ASLEEP, STAY, NONE, 5 ; person
	object_event  0, 10, SPRITE_FISHER, STAY, DOWN, 6 ; person
	object_event  2,  2, SPRITE_GAMBLER, STAY, LEFT_RIGHT, 7 ; person

	def_warps_to VIRIDIAN_CITY
