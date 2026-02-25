/obj/item/organ/brain/tajara
	name = "tajara brain"
	desc = "Some folks debate about the existence of these."
	icon = 'modular_erebus/icons/onyx_species/organs.dmi'
	icon_state = "brain_tajara"
	shade_color = "violetish pink"

/obj/item/organ/brain/skrell
	name = "skrell brain"
	desc = "It's slimy and kinda uncomfortable. Like skrell are."
	icon = 'modular_erebus/icons/onyx_species/organs.dmi'
	icon_state = "brain_skrell"
	shade_color = "deep blue"
	actions_types = list(/datum/action/cooldown/mob_cooldown/noosphere)

/obj/item/organ/brain/vox
	name = "vox brain"
	desc = "Birdbrain! Literally."
	icon = 'modular_erebus/icons/onyx_species/organs.dmi'
	icon_state = "brain_vox"
	shade_color = "bright celadon"

/obj/item/organ/ears/tajara
	name = "tajara ears"
	icon = 'modular_erebus/icons/onyx_species/organs.dmi'
	worn_icon = 'modular_erebus/icons/onyx_species/tajara/tajara_ears.dmi'
	icon_state = "tajara_ears"

	dna_block = /datum/dna_block/feature/accessory/ears_tajara

	bodypart_overlay = /datum/bodypart_overlay/mutant/cat_ears/tajara_ears

// Why does this randomly and inexplicably work?
// Why did 4 hours of my suffering get fixed just by making it a subtype of `cat_ears`?
// I have fuck all clue, mate. But at this point I'll just take it.
/datum/bodypart_overlay/mutant/cat_ears/tajara_ears
	feature_key = FEATURE_EARS_TAJARA
	sprite_datum = /datum/sprite_accessory/ears/tajara
	color_source = ORGAN_COLOR_HAIR
	dyable = TRUE

/obj/item/organ/ears/tajara/cybernetic
	name = "basic cybernetic tajara ears"
	icon = 'icons/obj/medical/organs/organs.dmi'
	icon_state = "ears-c-cat"
	desc = "A basic cybernetic organ designed to mimic the operation of ears."
	damage_multiplier = 1.5
	bodypart_overlay = /datum/bodypart_overlay/mutant/cat_ears/tajara_ears/cybernetic
	organ_flags = ORGAN_ROBOTIC
	failing_desc = "seems to be broken."

/obj/item/organ/ears/tajara/cybernetic/upgraded
	name = "cybernetic tajara ears"
	icon_state = "ears-c-cat-u"
	desc = "Cybernetic tajara ears, still less durable than human ears."
	damage_multiplier = 1

/datum/bodypart_overlay/mutant/cat_ears/tajara_ears/cybernetic
	sprite_datum = /datum/sprite_accessory/ears/cat/cybernetic
	color_source = null
	dyable = FALSE

/obj/item/organ/tail/tajara
	name = "tajara tail"

	dna_block = /datum/dna_block/feature/accessory/tail_tajara
	bodypart_overlay = /datum/bodypart_overlay/mutant/tail/tajara
	restyle_flags = EXTERNAL_RESTYLE_FLESH

	wag_flags = WAG_ABLE

/obj/item/organ/tail/tajara/get_butt_sprite()
	return icon('icons/mob/butts.dmi', BUTT_SPRITE_CAT)

/datum/bodypart_overlay/mutant/tail/tajara
	feature_key = FEATURE_TAIL_TAJARA
	sprite_datum = /datum/sprite_accessory/tails/tajara

/obj/item/organ/tongue/tajara
	name = "tajara tongue"
	desc = "A fleshy, spiky muscle mostly used for licking fur."
	icon = 'modular_erebus/icons/onyx_species/organs.dmi'
	icon_state = "tongue_tajara"
	say_mod = "mrowls"
	liked_foodtypes = SEAFOOD | RAW
	disliked_foodtypes = GROSS | GORE | CLOTH
	organ_traits = list(TRAIT_SPEAKS_CLEARLY, TRAIT_FISH_EATER)
	languages_native = list(/datum/language/tajara)
	modifies_speech = TRUE
	var/static/list/speech_replacements = list(
		new /regex("r+", "g") = "rrr",
		new /regex("R+", "g") = "RRR",
		new /regex("р+", "g") = "ррр",
		new /regex("Р+", "g") = "РРР",
	)

/obj/item/organ/tongue/tajara/Initialize(mapload)
	. = ..()
	AddComponent(/datum/component/speechmod, replacements = speech_replacements, should_modify_speech = CALLBACK(src, PROC_REF(should_modify_speech)))

/obj/item/organ/tongue/tajara/get_possible_languages()
	RETURN_TYPE(/list)
	. = ..()
	. += /datum/language/tajara
	return .

/obj/item/organ/tongue/skrell
	name = "skrell tongue"
	desc = "A slimy muscle mostly used for snobby talking."
	icon = 'modular_erebus/icons/onyx_species/organs.dmi'
	icon_state = "tongue_skrell"
	say_mod = "warbles"
	liked_foodtypes = VEGETABLES | GRAIN | FRUIT | NUTS
	disliked_foodtypes = CLOTH | GROSS
	toxic_foodtypes = TOXIC | GORE | MEAT | ALCOHOL | SEAFOOD | BUGS
	languages_native = list(/datum/language/skrell)

/obj/item/organ/tongue/skrell/get_possible_languages()
	RETURN_TYPE(/list)
	. = ..()
	. += /datum/language/skrell
	return .

/obj/item/organ/tongue/vox
	name = "vox tongue"
	desc = "A fleshy muscle mostly used for screeching."
	icon = 'modular_erebus/icons/onyx_species/organs.dmi'
	icon_state = "tongue_vox"
	say_mod = "screeches"
	languages_native = list(/datum/language/vox)

/obj/item/organ/tongue/vox/get_possible_languages()
	RETURN_TYPE(/list)
	. = ..()
	. += /datum/language/vox
	return .

/obj/item/organ/eyes/night_vision/tajara
	name = "tajara eyes"
	desc = "Feline eyes. They're proficient at seeing in the dark."
	icon = 'modular_erebus/icons/onyx_species/organs.dmi'
	icon_state = "eyes_tajara"
	low_light_cutoff = list(0, 15, 20)
	medium_light_cutoff = list(0, 20, 35)
	high_light_cutoff = list(0, 40, 50)
	pupils_name = "slit pupils"
	penlight_message = "have vertically slit pupils that contract rapidly"

/obj/item/organ/eyes/skrell
	name = "skrell eyes"
	icon = 'modular_erebus/icons/onyx_species/organs.dmi'
	icon_state = "eyes_skrell"
	pupils_name = "dark voids"
	penlight_message = "are totally black with no discernible features"

/obj/item/organ/eyes/vox
	name = "vox eyes"
	icon = 'modular_erebus/icons/onyx_species/organs.dmi'
	icon_state = "eyes_vox"
	penlight_message = "have small pupils with no scleras"

/obj/item/organ/lungs/vox
	name = "vox lungs"
	desc = "A celadon alien-looking organ. It can only breathe pure nitrogen."
	icon = 'modular_erebus/icons/onyx_species/organs.dmi'
	icon_state = "lungs_vox"
	breath_noise = "an unnatural breathing sound"
	safe_oxygen_min = 0 // We don't breathe this
	safe_oxygen_max = 0.05
	oxy_damage_type = TOX // In fact, for us it's basically like breathing plasma
	safe_nitro_min = 16 // We breathe THIS!

#define SMOKER_ORGAN_HEALTH (STANDARD_ORGAN_THRESHOLD * 0.75)
#define SMOKER_LUNG_HEALING (STANDARD_ORGAN_HEALING * 0.75)

/obj/item/organ/lungs/vox/vox_smoker
	name = "smoker vox lungs"
	desc = "A discolored alien-looking organ. It can only breathe pure nitrogen. And nicotine, apparently."
	icon_state = "lungs_vox_smoker"
	breath_noise = "an unnatural and rough breathing sound"
	maxHealth = SMOKER_ORGAN_HEALTH
	healing_factor = SMOKER_LUNG_HEALING

#undef SMOKER_ORGAN_HEALTH
#undef SMOKER_LUNG_HEALING
