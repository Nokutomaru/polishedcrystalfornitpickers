SilphCo1F_MapScriptHeader:
	def_scene_scripts

	def_callbacks
	callback MAPCALLBACK_OBJECTS, SilphCo1FMoveOfficerCallback

	def_warp_events
	warp_event  2,  7, SAFFRON_CITY, 7
	warp_event  3,  7, SAFFRON_CITY, 7
	warp_event 13,  0, SILPH_CO_2F, 1

	def_coord_events

	def_bg_events

	def_object_events
	object_event 13,  1, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SilphCoOfficerScript, -1
	object_event  2,  4, SPRITE_STEVEN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, 0, OBJECTTYPE_SCRIPT, 0, StevenBeldumScript, EVENT_SILPHCO_STEVEN
	object_event  4,  2, SPRITE_RECEPTIONIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BLUE, OBJECTTYPE_COMMAND, jumptextfaceplayer, SilphCoReceptionistText, -1
	object_event 11,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, PAL_NPC_BROWN, OBJECTTYPE_COMMAND, jumptextfaceplayer, SilphCo1FGentlemanText, -1
	object_event  8,  2, SPRITE_BATTLE_GIRL, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, PAL_NPC_RED, OBJECTTYPE_COMMAND, jumptextfaceplayer, SilphCo1FCooltrainerfText, -1

	object_const_def
	const SILPHCO1F_OFFICER
	const SILPHCO1F_STEVEN

SilphCo1FMoveOfficerCallback:
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iffalsefwd .Nothing
	moveobject SILPHCO1F_OFFICER, 14, 1
.SilphCo1FCheckForSteven:
	checkevent EVENT_GOT_BELDUM_FROM_STEVEN
	iftruefwd .StevenDisappear 
	checkevent EVENT_BEAT_STEVEN
	iffalsefwd .StevenDisappear 
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iffalsefwd .StevenDisappear
	readvar VAR_WEEKDAY
	ifequalfwd TUESDAY, .StevenAppear
.StevenDisappear
	disappear SILPHCO1F_STEVEN
	endcallback
.StevenAppear:
	appear SILPHCO1F_STEVEN
	endcallback
.Nothing
	endcallback

SilphCoOfficerScript:
	faceplayer
	opentext
	checkevent EVENT_RESTORED_POWER_TO_KANTO
	iftruefwd .OfficerScriptAfterPowerRestored
	jumpopenedtext SilphCoOfficerText

.OfficerScriptAfterPowerRestored
	jumpopenedtext SilphCoOfficerText_GotUpgrade

StevenBeldumScript:
	opentext
	checkevent EVENT_SILPHCO_STEVEN_INTRODUCED
	iftruefwd .HeardStevenBeldumIntro
	writetext StevenOnPhoneText
	waitbutton
	setevent EVENT_SILPHCO_STEVEN_INTRODUCED
.HeardStevenBeldumIntro:
	faceplayer
	checkevent EVENT_SILPHCO_STEVEN_ASKED_FOR_FORRETRESS
	iftruefwd .StevenAskForForretress
	writetext StevenTalkToPlayerText
	waitbutton
	setevent EVENT_SILPHCO_STEVEN_ASKED_FOR_FORRETRESS
.StevenAskForForretress:
	checkevent EVENT_SHOWED_FORRETRESS_TO_STEVEN
	iftruefwd .StevenGiveBeldum
	writetext StevenAskForForretressText
	yesorno
	iffalse_jumpopenedtext RefuseText
	scall .ExcitedToSee
	special Special_BillsGrandfather
	iffalse_jumpopenedtext DontHaveForretressText
	ifnotequal FORRETRESS, NotForretress
	scall .YesForretress
	setevent EVENT_SHOWED_FORRETRESS_TO_STEVEN
	sjumpfwd .StevenGiveBeldum
.StevenGiveBeldum:
	writetext StevenThankYouText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequalfwd PARTY_LENGTH, .BeldumNoRoom
	givepoke BELDUM, PLAIN_FORM, 5, ICE_STONE, POKE_BALL
	writetext TakeCareOfBeldum
	waitbutton
	closetext
	readvar VAR_FACING
	turnobject PLAYER, DOWN
	ifnotequal UP, .noleftstep
	applyonemovement SILPHCO1F_STEVEN, step_right
.noleftstep
	applymovement SILPHCO1F_STEVEN, .LeaveMovement
	playsound SFX_EXIT_BUILDING
	setevent EVENT_GOT_BELDUM_FROM_STEVEN
	disappear SILPHCO1F_STEVEN
	waitsfx
	end

.LeaveMovement:
	step_down
	step_down
	step_down
	step_end

.ExcitedToSee:
	writetext ShowForretressText
	promptbutton
	end

.YesForretress:
	writetext ShowedForretressText
	promptbutton
	end

.BeldumNoRoom:
	jumpthisopenedtext

	text "Your party is"
	line "full, though."

	para "Why don't you go"
	line "to the PC to make"
	cont "some room?"

	para "I'll be waiting"
	line "here."
	done

StevenOnPhoneText:
	text "Steven: Yes…"
	line "So it seems…"

	para "I think that"
	line "depends on how"
	cont "my dad feels…"

	para "I see…"
	line "I'll be on my"
	cont "way, then."

	para "See you soon."
	done

StevenTalkToPlayerText:
	text "Steven: Ah,"
	line "<PLAYER>."

	para "It's good to"
	line "see you again!"

	para "So you're also"
	line "in search of"
	cont "#mon, huh?"

	para "I think we can"
	line "help each other"
	cont "on that."

	para "You see, I've"
	line "been looking"
	cont "for Forretress."

	para "If you can show"
	line "me one, I'll"
	cont "give you"
	cont "something nice"
	cont "in return."
	done

StevenAskForForretressText:
	text "Steven: So, would"
	line "you show me a"
	cont "Forretress?"
	done

RefuseText:
	text "You seem to be"
	line "quite cautious."

	para "Are you afraid"
	line "I might trick"
	cont "you?"
	done

ShowForretressText:
	text "OK, show me!"
	done

DontHaveForretressText:
	text "You don't have"
	line "one?"

	para "Oh, well…"
	line "That's too bad."
	done

NotForretress:
	jumpthisopenedtext

	text "I don't think"
	line "that is a"
	cont "Forretress…"
	done


ShowedForretressText:
	text "Steven: So that's"
	line "Forretress?"
	cont "Fascinating!"

	para "You don't see"
	line "Forretress in the"
	cont "Hoenn region."

	para "This is my first"
	line "time seeing one,"
	cont "in fact."

	para "Thank you so"
	line "much!"

	para "Now, as for"
	line "your reward…"
	done

StevenThankYouText:
	text "Steven: Tell me,"
	line "do you happen to"
	cont "like Steel-type"
	cont "#mon?"

	para "Their particular"
	line "texture!"

	para "Their cool and"
	line "glowing bodies!"

	para "Such uniquenesses"
	line "are only seen"
	cont "on Steel-type"
	cont "#mon!"

	para "If you think"
	line "like I do, then"
	cont "I think you'll"
	cont "like this."
	done

TakeCareOfBeldum:
	text "Steven: When it"
	line "comes to the"
	cont "solitariness and"
	cont "nobleness you"
	cont "sense through"
	cont "the rugged body,"
	cont "which is almost"
	cont "rebuffing when"
	cont "you hug, nothing"
	cont "comes close to"
	cont "Beldum, I must"
	cont "say…"

	para "In short, my"
	line "Metagross is"
	cont "truly strong"
	cont "and cool!"

	para "…Oh, look at"
	line "the time."

	para "It seems that"
	line "I got carried"
	cont "away chatting."

	para "Anyways, take"
	line "good care of"
	cont "that Beldum."

	para "Your caring for"
	line "it will make me"
	cont "very happy."

	para "It was a pleasure"
	line "talking to you."

	para "Farewell!"
	done

SilphCoReceptionistText:
	text "Welcome. This is"
	line "Silph Co.'s Head"
	cont "Office Building."
	done

SilphCoOfficerText:
	text "Only employees are"
	line "permitted to go"
	cont "upstairs."

	para "The main power"
	line "isn't working,"

	para "and the CEO wants"
	line "high security in"

	para "case of an"
	line "emergency."

	para "We learned our"
	line "lesson about that"
	cont "three years ago."
	done

SilphCoOfficerText_GotUpgrade:
	text "You're responsible"
	line "for restoring the"
	cont "power supply?"

	para "Thank you! Now"
	line "R&D can continue."

	para "Feel free to take"
	line "a tour upstairs."
	done

SilphCo1FGentlemanText:
	text "I have an appoint-"
	line "ment with the"

	para "chief engineer"
	line "here at Silph Co."
	done

SilphCo1FCooltrainerfText:
	text "I'm trying to"
	line "pluck up the"
	cont "courage to ask"

	para "the receptionist"
	line "out on a date."

	para "Just as soon as"
	line "she's done on the"
	cont "phone…"
	done
