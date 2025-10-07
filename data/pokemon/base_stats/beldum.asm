	db  40,  55,  80,  30,  35,  60 ; 300 BST
	;   hp  atk  def  spe  sat  sdf

	db STEEL, PSYCHIC ; type
	db 3 ; catch rate
	db 60 ; base exp
	db NO_ITEM, NO_ITEM ; held items
	dn GENDER_UNKNOWN, HATCH_SLOWEST ; gender ratio, step cycles to hatch

if DEF(FAITHFUL)
	abilities_for BELDUM, CLEAR_BODY, CLEAR_BODY, LIGHT_METAL
else
	abilities_for BELDUM, CLEAR_BODY, LEVITATE, LIGHT_METAL
endc
	db GROWTH_SLOW ; growth rate
	dn EGG_MINERAL, EGG_MINERAL ; egg groups

	ev_yield 1 Def

	; tm/hm learnset
	tmhm CURSE, HEADBUTT, FALSE_SWIPE, ZEN_HEADBUTT, IRON_HEAD, DEFENSE_CURL, DOUBLE_EDGE
	; end
