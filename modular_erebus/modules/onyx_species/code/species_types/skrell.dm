/datum/species/skrell
	name = "\improper Skrell"
	plural_form = "Skrell"
	id = SPECIES_SKRELL
	examine_limb_id = SPECIES_SKRELL

	inherent_traits = list(
		TRAIT_MUTANT_COLORS,
		TRAIT_SNOB,
	)
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	damage_modifier = -20 // 20% more damage taken from physical sources. Yeah they're weak frogs.
	coldmod = 1.75
	heatmod = 0.4
	payday_modifier = 1.2
	species_language_holder = /datum/language_holder/skrell

	mutantbrain = /obj/item/organ/brain/skrell
	mutanttongue = /obj/item/organ/tongue/skrell
	mutanteyes = /obj/item/organ/eyes/skrell
	meat = /obj/item/food/meat/slab/human/mutant/skrell
	skinned_type = /obj/item/stack/sheet/animalhide/carbon/skrell
	exotic_bloodtype = "S"

	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/skrell,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/skrell,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/skrell,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/skrell,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/skrell,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/skrell,
	)

/datum/species/skrell/New()
	. = ..()
	all_hairstyles = SSaccessories.hairstyles_skrell_list
	male_hairstyles = all_hairstyles
	female_hairstyles = all_hairstyles
	all_facial_hairstyles = list(/datum/sprite_accessory/facial_hair/shaved)
	male_facial_hairstyles = all_facial_hairstyles
	female_facial_hairstyles = all_facial_hairstyles

/// Skrell are cold blooded and do not stabilize body temperature naturally
/datum/species/skrell/body_temperature_core(mob/living/carbon/human/humi, seconds_per_tick)
	return

/datum/species/skrell/prepare_human_for_preview(mob/living/carbon/human/skrell)
	skrell.dna.features[FEATURE_MUTANT_COLOR] = "#72FFB7"
	skrell.set_hairstyle("Short Headtails", update = TRUE)
	skrell.set_haircolor("#72FFB7", update = FALSE)
	skrell.update_body(is_creating = TRUE)

/datum/species/skrell/get_scream_sound(mob/living/carbon/human/skrell)
	if(skrell.physique == MALE)
		if(prob(1))
			return 'sound/mobs/humanoids/human/scream/wilhelm_scream.ogg'
		return pick(
			'sound/mobs/humanoids/human/scream/malescream_1.ogg',
			'sound/mobs/humanoids/human/scream/malescream_2.ogg',
			'sound/mobs/humanoids/human/scream/malescream_3.ogg',
			'sound/mobs/humanoids/human/scream/malescream_4.ogg',
			'sound/mobs/humanoids/human/scream/malescream_5.ogg',
			'sound/mobs/humanoids/human/scream/malescream_6.ogg',
		)

	return pick(
		'sound/mobs/humanoids/human/scream/femalescream_1.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_2.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_3.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_4.ogg',
		'sound/mobs/humanoids/human/scream/femalescream_5.ogg',
	)

/datum/species/skrell/get_cough_sound(mob/living/carbon/human/skrell)
	if(skrell.physique == FEMALE)
		return pick(
			'sound/mobs/humanoids/human/cough/female_cough1.ogg',
			'sound/mobs/humanoids/human/cough/female_cough2.ogg',
			'sound/mobs/humanoids/human/cough/female_cough3.ogg',
			'sound/mobs/humanoids/human/cough/female_cough4.ogg',
			'sound/mobs/humanoids/human/cough/female_cough5.ogg',
			'sound/mobs/humanoids/human/cough/female_cough6.ogg',
		)
	return pick(
		'sound/mobs/humanoids/human/cough/male_cough1.ogg',
		'sound/mobs/humanoids/human/cough/male_cough2.ogg',
		'sound/mobs/humanoids/human/cough/male_cough3.ogg',
		'sound/mobs/humanoids/human/cough/male_cough4.ogg',
		'sound/mobs/humanoids/human/cough/male_cough5.ogg',
		'sound/mobs/humanoids/human/cough/male_cough6.ogg',
	)

/datum/species/skrell/get_cry_sound(mob/living/carbon/human/skrell)
	if(skrell.physique == FEMALE)
		return pick(
			'sound/mobs/humanoids/human/cry/female_cry1.ogg',
			'sound/mobs/humanoids/human/cry/female_cry2.ogg',
		)
	return pick(
		'sound/mobs/humanoids/human/cry/male_cry1.ogg',
		'sound/mobs/humanoids/human/cry/male_cry2.ogg',
		'sound/mobs/humanoids/human/cry/male_cry3.ogg',
	)


/datum/species/skrell/get_sneeze_sound(mob/living/carbon/human/skrell)
	if(skrell.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sneeze/female_sneeze1.ogg'
	return 'sound/mobs/humanoids/human/sneeze/male_sneeze1.ogg'

/datum/species/skrell/get_laugh_sound(mob/living/carbon/human/skrell)
	if(skrell.physique == FEMALE)
		return 'sound/mobs/humanoids/human/laugh/womanlaugh.ogg'
	return pick(
		'sound/mobs/humanoids/human/laugh/manlaugh1.ogg',
		'sound/mobs/humanoids/human/laugh/manlaugh2.ogg',
	)

/datum/species/skrell/get_sigh_sound(mob/living/carbon/human/skrell)
	if(skrell.physique == FEMALE)
		return SFX_FEMALE_SIGH
	return SFX_MALE_SIGH

/datum/species/skrell/get_sniff_sound(mob/living/carbon/human/skrell)
	if(skrell.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sniff/female_sniff.ogg'
	return 'sound/mobs/humanoids/human/sniff/male_sniff.ogg'

/datum/species/skrell/get_snore_sound(mob/living/carbon/human/skrell)
	if(skrell.physique == FEMALE)
		return SFX_SNORE_FEMALE
	return SFX_SNORE_MALE

/datum/species/skrell/get_hiss_sound(mob/living/carbon/human/skrell)
	return 'sound/mobs/humanoids/human/hiss/human_hiss.ogg'

/datum/species/skrell/get_physical_attributes()
	return "Due to their aquatic biolody, Skrell can't regulate their body temperature internally, \
		and are very vulnerable to low temperature environments. However, their heat resilience surpasses even that of Unathi."

/datum/species/skrell/get_species_description()
	return "The Skrell are amphibious humanoids from the humid world of Querr'balak. \
		They are primarily intellectuals, and their vegetarian diet checks out with that. \
		Despite their weak physique, Skrell have a connection to the Noosphere, which allows them to communicate remotely."

/datum/species/skrell/get_species_lore()
	return list(
		"The Skrell Empire was born on Querr'balak, a rainforest world in the star system of the same name. \
		Their highly intellectual society is built upon a strict optimized caste system, of which there are five in total: \
		the Supreme Caste, comprising their leaders and rulers, and then the Castes of Mind, Builders, Creators, and Warriors.",

		"A skrell's caste is decided by their ancestry, and so each group has distinct details in appearance. \
		The Supremes' skin color is usually a bright green; the Mind's is pale green, sky blue, or pale yellow; \
		Creators' is violet, blue, pink, or purple; Warriors' can be green, blue, black, brown, or yellow. \
		The Caste of Builders is the most diverse of the bunch and contains a mix of most other skin colors.",

		"Most Skrell are not only well-versed in science, technology, and often art, but are also prideful \
		of their communities and civilization and race as a whole, and don't hesitate to make it known to others. \
		Yet, Skrell typically remain tolerant, calm, and peaceful, not in small part due to their physical weakness.",
	)

/datum/species/skrell/create_pref_unique_perks()
	var/list/to_add = list()

	to_add += list(
		list(
		SPECIES_PERK_TYPE = SPECIES_NEUTRAL_PERK,
		SPECIES_PERK_ICON = "thermometer-empty",
		SPECIES_PERK_NAME = "Slimy Skin",
		SPECIES_PERK_DESC = "The Skrell's aquatic origin grants them a great tolerance to heat, but a drastic \
			vulnerability to low temperature environments. Moreover, they are cold-blooded and unable to \
			self-regulate their body temperature. Make sure to stay warm.",
		),
		list(
		SPECIES_PERK_TYPE = SPECIES_NEGATIVE_PERK,
		SPECIES_PERK_ICON = FA_ICON_LEAF,
		SPECIES_PERK_NAME = "Hard Vegetarian",
		SPECIES_PERK_DESC = "The Skrell's bodies are unable to process animal nutrients and ethanol. \
			As such, meats and especially alcohol are toxic to them. Stick to a strict vegetarian diet.",
		),
		list(
		SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
		SPECIES_PERK_ICON = FA_ICON_BRAIN,
		SPECIES_PERK_NAME = "Noosphere",
		SPECIES_PERK_DESC = "All Skrell possess a connection to the Noosphere, which allows them to communicate remotely, even when unconscious.",
		))

	return to_add
