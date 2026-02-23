/obj/item/bodypart/head/vox
	icon_greyscale = 'modular_erebus/modules/onyx_species/icons/vox/bodyparts.dmi'
	limb_id = SPECIES_VOX
	is_dimorphic = FALSE
	head_flags = HEAD_HAIR|HEAD_LIPS|HEAD_EYEHOLES|HEAD_DEBRAIN

/obj/item/bodypart/chest/vox
	icon_greyscale = 'modular_erebus/modules/onyx_species/icons/vox/bodyparts.dmi'
	limb_id = SPECIES_VOX
	is_dimorphic = FALSE

/obj/item/bodypart/chest/vox/get_butt_sprite()
	return icon('icons/mob/butts.dmi', BUTT_SPRITE_LIZARD)

/obj/item/bodypart/arm/left/vox
	icon_greyscale = 'modular_erebus/modules/onyx_species/icons/vox/bodyparts.dmi'
	limb_id = SPECIES_VOX
	unarmed_attack_verbs = list("slash", "scratch", "claw")
	unarmed_attack_verbs = list("slashed", "scratched", "clawed")
	grappled_attack_verb = "lacerate"
	grappled_attack_verb_continuous = "lacerates"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/items/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/items/weapons/slashmiss.ogg'

/obj/item/bodypart/arm/right/vox
	icon_greyscale = 'modular_erebus/modules/onyx_species/icons/vox/bodyparts.dmi'
	limb_id = SPECIES_VOX
	unarmed_attack_verbs = list("slash", "scratch", "claw")
	unarmed_attack_verbs = list("slashed", "scratched", "clawed")
	grappled_attack_verb = "lacerate"
	grappled_attack_verb_continuous = "lacerates"
	unarmed_attack_effect = ATTACK_EFFECT_CLAW
	unarmed_attack_sound = 'sound/items/weapons/slash.ogg'
	unarmed_miss_sound = 'sound/items/weapons/slashmiss.ogg'

/obj/item/bodypart/leg/left/vox
	icon_greyscale = 'modular_erebus/modules/onyx_species/icons/vox/bodyparts.dmi'
	limb_id = SPECIES_VOX

/obj/item/bodypart/leg/right/vox
	icon_greyscale = 'modular_erebus/modules/onyx_species/icons/vox/bodyparts.dmi'
	limb_id = SPECIES_VOX
