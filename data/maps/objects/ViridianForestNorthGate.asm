ViridianForestNorthGate_Object:
	db $a ; border block

	def_warp_events
	warp_event  0,  0, LAST_MAP, 2
	warp_event  1,  0, LAST_MAP, 2
	warp_event  0,  3, VIRIDIAN_FOREST, 1
	warp_event  1,  3, VIRIDIAN_FOREST, 1

	def_bg_events

	def_object_events
	object_event  0,  1, SPRITE_SUPER_NERD, STAY, NONE, 1 ; person
	object_event  0,  2, SPRITE_GRAMPS, STAY, NONE, 2 ; person

	def_warps_to VIRIDIAN_FOREST_NORTH_GATE
