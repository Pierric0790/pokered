PalletTown_Object:
	db $b ; border block

	def_warp_events
	warp_event  1,  1, REDS_HOUSE_1F, 1
	warp_event 7,  1, BLUES_HOUSE, 1
	warp_event 7, 5, OAKS_LAB, 2

	def_bg_events
	bg_event 7, 7, 4 ; PalletTownText4
	bg_event  5,  7, 5 ; PalletTownText5
	bg_event  3,  3, 6 ; PalletTownText6
	bg_event 7,  3, 7 ; PalletTownText7

	def_object_events
	object_event  5,  5, SPRITE_OAK, STAY, NONE, 1 ; person
	object_event  1,  4, SPRITE_GIRL, WALK, ANY_DIR, 2 ; person
	object_event 2, 5, SPRITE_FISHER, WALK, ANY_DIR, 3 ; person

	def_warps_to PALLET_TOWN
