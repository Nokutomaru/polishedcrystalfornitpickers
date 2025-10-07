	db  20,  15,  20,  80,  10,  55 ; 200 BST
	;   hp  atk  def  spe  sat  sdf

	db WATER, WATER ; type
	db 255 ; catch rate
	db 20 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_F50, HATCH_MEDIUM_SLOW ; gender ratio, step cycles to hatch

	abilities_for FEEBAS, SWIFT_SWIM, OBLIVIOUS, ADAPTABILITY
	db GROWTH_FAST ; growth rate
	dn EGG_WATER_1, EGG_DRAGON ; egg groups

	ev_yield 1 Spe

	; tm/hm learnset
	tmhm CURSE, TOXIC, HAIL, HIDDEN_POWER, LIGHT_SCREEN, ICE_BEAM, BLIZZARD, PROTECT, RAIN_DANCE, RETURN, DOUBLE_TEAM, SUBSTITUTE, FACADE, REST, ATTRACT, SCALD, WATER_PULSE, SURF, WHIRLPOOL, WATERFALL, ENDURE, SWIFT, IRON_TAIL, DOUBLE_EDGE, ICY_WIND, SLEEP_TALK, SWAGGER
	; end
