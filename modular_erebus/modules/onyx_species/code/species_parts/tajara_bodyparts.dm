/obj/item/bodypart/head/tajara
	icon_greyscale = 'modular_erebus/icons/onyx_species/tajara/bodyparts.dmi'
	limb_id = SPECIES_TAJARA
	is_dimorphic = TRUE
	head_flags = HEAD_DEFAULT_FEATURES

/obj/item/bodypart/chest/tajara
	icon_greyscale = 'modular_erebus/icons/onyx_species/tajara/bodyparts.dmi'
	limb_id = SPECIES_TAJARA
	is_dimorphic = TRUE

/obj/item/bodypart/chest/tajara/get_butt_sprite()
	return icon('icons/mob/butts.dmi', BUTT_SPRITE_CAT)

/obj/item/bodypart/arm/left/tajara
	icon_greyscale = 'modular_erebus/icons/onyx_species/tajara/bodyparts.dmi'
	limb_id = SPECIES_TAJARA
	unarmed_attack_verbs = list("slash", "scratch", "claw")
	unarmed_attack_verbs = list("slashed", "scratched", "clawed")
	grappled_attack_verb = "lacerate"
	grappled_attack_verb_continuous = "lacerates"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/items/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/items/weapons/slashmiss.ogg'

/obj/item/bodypart/arm/right/tajara
	icon_greyscale = 'modular_erebus/icons/onyx_species/tajara/bodyparts.dmi'
	limb_id = SPECIES_TAJARA
	unarmed_attack_verbs = list("slash", "scratch", "claw")
	unarmed_attack_verbs = list("slashed", "scratched", "clawed")
	grappled_attack_verb = "lacerate"
	grappled_attack_verb_continuous = "lacerates"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/items/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/items/weapons/slashmiss.ogg'

/obj/item/bodypart/leg/left/tajara
	icon_greyscale = 'modular_erebus/icons/onyx_species/tajara/bodyparts.dmi'
	limb_id = SPECIES_TAJARA

/obj/item/bodypart/leg/right/tajara
	icon_greyscale = 'modular_erebus/icons/onyx_species/tajara/bodyparts.dmi'
	limb_id = SPECIES_TAJARA
