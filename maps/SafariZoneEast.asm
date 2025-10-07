SafariZoneEast_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, SafariZoneEastGible

	def_warp_events
	warp_event  2, 24, SAFARI_ZONE_HUB, 3
	warp_event  2, 25, SAFARI_ZONE_HUB, 4
	warp_event  2,  6, SAFARI_ZONE_NORTH, 1
	warp_event  2,  7, SAFARI_ZONE_NORTH, 2
	warp_event 27, 11, SAFARI_ZONE_EAST_REST_HOUSE, 1

	def_coord_events

	def_bg_events
	bg_event  6, 24, BGEVENT_JUMPTEXT, SafariZoneEastAreaSignText
	bg_event 28, 12, BGEVENT_JUMPTEXT, SafariZoneEastRestHouseSignText
	bg_event  8,  6, BGEVENT_JUMPTEXT, SafariZoneEastTrainerTipsSignText

	def_object_events
	object_event 27, 24, SPRITE_MON_ICON, SPRITEMOVEDATA_POKEMON, 0, GIBLE, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, NO_FORM, SafariZoneGible, EVENT_SAFARI_ZONE_EAST_GIBLE
	object_event  9, 11, SPRITE_COWGIRL, SPRITEMOVEDATA_SPINRANDOM_FAST, 0, 0, -1, 0, OBJECTTYPE_GENERICTRAINER, 2, GenericTrainerCowgirlApril, -1
	itemball_event 22, 15, CARBOS, 1, EVENT_SAFARI_ZONE_EAST_CARBOS
	itemball_event  7, 13, SILVERPOWDER, 1, EVENT_SAFARI_ZONE_EAST_SILVERPOWDER
	itemball_event  5,  3, FULL_RESTORE, 1, EVENT_SAFARI_ZONE_EAST_FULL_RESTORE

	object_const_def
	const SAFARIZONEEAST_GIBLE

GenericTrainerCowgirlApril:
	generictrainer COWGIRL, APRIL, EVENT_BEAT_COWGIRL_APRIL, CowgirlAprilSeenText, CowgirlAprilBeatenText

	text "Sometimes you'll"
	line "see 10 of the same"

	para "#mon, all in a"
	line "row!"
	done

CowgirlAprilSeenText:
	text "Yeehaw!"
	line "I just caught a"
	cont "whole herd of"
	cont "#mon!"
	done

CowgirlAprilBeatenText:
	text "Well, shoot!"
	done

SafariZoneEastAreaSignText:
	text "Safari Zone"
	line "East Area"
	done

SafariZoneEastRestHouseSignText:
	text "Rest House"
	done

SafariZoneEastTrainerTipsSignText:
	text "Trainer Tips"

	para "Search for rare"
	line "#mon at night"
	cont "or in the morning!"
	done

SafariZoneEastGible:
	checkevent EVENT_FOUGHT_SAFARI_ZONE_GIBLE
	iftruefwd .NoAppear
	readvar VAR_WEEKDAY
	ifequalfwd SUNDAY, .Appear
.NoAppear:
	disappear SAFARIZONEEAST_GIBLE
	endcallback
.Appear:
	appear SAFARIZONEEAST_GIBLE
	endcallback

SafariZoneGible:
	faceplayer
	cry GIBLE
	loadwildmon GIBLE, 44
	startbattle
	disappear SAFARIZONEEAST_GIBLE
	setevent EVENT_FOUGHT_SAFARI_ZONE_GIBLE
	reloadmapafterbattle
	special CheckBattleCaughtResult
	iffalsefwd .nocatch
	setflag ENGINE_PLAYER_CAUGHT_SAFARI_ZONE_GIBLE
.nocatch
	end
