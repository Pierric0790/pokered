Route1_Object:
	db $f ; border block

	def_warp_events

	def_bg_events
	bg_event  1, 3, 3 ; Route1Text3

	def_object_events
	object_event 1, 1, SPRITE_YOUNGSTER, STAY, UP_DOWN, 1 ; person
	object_event 9, 5, SPRITE_YOUNGSTER, STAY, LEFT_RIGHT, 2 ; person

	def_warps_to ROUTE_1

	; unused
	warp_to 2, 7, 4
