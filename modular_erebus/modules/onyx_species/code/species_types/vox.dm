/datum/species/vox
	name = "\improper Vox"
	plural_form = "Vox"
	id = SPECIES_VOX
	examine_limb_id = SPECIES_VOX

	inherent_traits = list(
		TRAIT_HARDLY_WOUNDED,
	)
	changesource_flags = MIRROR_BADMIN | WABBAJACK | MIRROR_MAGIC | MIRROR_PRIDE | ERT_SPAWN | RACE_SWAP | SLIME_EXTRACT
	payday_modifier = 0.8
	species_language_holder = /datum/language_holder/vox

	inherent_respiration_type = RESPIRATION_N2
	breathid = GAS_N2
	mutantbrain = /obj/item/organ/brain/vox
	mutanttongue = /obj/item/organ/tongue/vox
	mutanteyes = /obj/item/organ/eyes/vox
	mutantlungs = /obj/item/organ/lungs/vox
	smoker_lungs = /obj/item/organ/lungs/vox/vox_smoker
	meat = /obj/item/food/meat/slab/human/mutant/vox
	skinned_type = /obj/item/stack/sheet/animalhide/carbon/vox
	exotic_bloodtype = "V"
	outfit_important_for_life = /datum/outfit/vox

	bodypart_overrides = list(
		BODY_ZONE_HEAD = /obj/item/bodypart/head/vox,
		BODY_ZONE_CHEST = /obj/item/bodypart/chest/vox,
		BODY_ZONE_L_ARM = /obj/item/bodypart/arm/left/vox,
		BODY_ZONE_R_ARM = /obj/item/bodypart/arm/right/vox,
		BODY_ZONE_L_LEG = /obj/item/bodypart/leg/left/vox,
		BODY_ZONE_R_LEG = /obj/item/bodypart/leg/right/vox,
	)

/datum/species/vox/New()
	. = ..()
	all_hairstyles = SSaccessories.hairstyles_vox_list
	male_hairstyles = all_hairstyles
	female_hairstyles = all_hairstyles
	all_facial_hairstyles = list(/datum/sprite_accessory/facial_hair/shaved)
	male_facial_hairstyles = all_facial_hairstyles
	female_facial_hairstyles = all_facial_hairstyles

/datum/species/vox/pre_equip_species_outfit(datum/job/job, mob/living/carbon/human/equipping, visuals_only = FALSE)
	give_important_for_life(equipping)

/datum/species/vox/prepare_human_for_preview(mob/living/carbon/human/vox)
	vox.set_hairstyle("Vox Quills Long", update = TRUE)
	vox.set_haircolor("#845837", update = FALSE)
	vox.update_body(is_creating = TRUE)

/datum/species/vox/get_scream_sound(mob/living/carbon/human/vox)
	if(vox.physique == MALE)
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

/datum/species/vox/get_cough_sound(mob/living/carbon/human/vox)
	if(vox.physique == FEMALE)
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

/datum/species/vox/get_cry_sound(mob/living/carbon/human/vox)
	if(vox.physique == FEMALE)
		return pick(
			'sound/mobs/humanoids/human/cry/female_cry1.ogg',
			'sound/mobs/humanoids/human/cry/female_cry2.ogg',
		)
	return pick(
		'sound/mobs/humanoids/human/cry/male_cry1.ogg',
		'sound/mobs/humanoids/human/cry/male_cry2.ogg',
		'sound/mobs/humanoids/human/cry/male_cry3.ogg',
	)


/datum/species/vox/get_sneeze_sound(mob/living/carbon/human/vox)
	if(vox.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sneeze/female_sneeze1.ogg'
	return 'sound/mobs/humanoids/human/sneeze/male_sneeze1.ogg'

/datum/species/vox/get_laugh_sound(mob/living/carbon/human/vox)
	if(vox.physique == FEMALE)
		return 'sound/mobs/humanoids/human/laugh/womanlaugh.ogg'
	return pick(
		'sound/mobs/humanoids/human/laugh/manlaugh1.ogg',
		'sound/mobs/humanoids/human/laugh/manlaugh2.ogg',
	)

/datum/species/vox/get_sigh_sound(mob/living/carbon/human/vox)
	if(vox.physique == FEMALE)
		return SFX_FEMALE_SIGH
	return SFX_MALE_SIGH

/datum/species/vox/get_sniff_sound(mob/living/carbon/human/vox)
	if(vox.physique == FEMALE)
		return 'sound/mobs/humanoids/human/sniff/female_sniff.ogg'
	return 'sound/mobs/humanoids/human/sniff/male_sniff.ogg'

/datum/species/vox/get_snore_sound(mob/living/carbon/human/vox)
	if(vox.physique == FEMALE)
		return SFX_SNORE_FEMALE
	return SFX_SNORE_MALE

/datum/species/vox/get_hiss_sound(mob/living/carbon/human/vox)
	return 'sound/mobs/humanoids/human/hiss/human_hiss.ogg'

/datum/species/vox/get_physical_attributes()
	return "The Vox's unique biology requires them to breathe pure nitrogen. \
		As such, they are pretty much forced to wear a mask with a N2 tank at all times aboard the station."

/datum/species/vox/get_species_description()
	return "The Vox are a race of nitrogen-breathing avian humanoids. Not much is known about their origin or culture. \
		Nonetheless, as of recently, NanoTrasen began employing capable Vox workers on their space stations."

/datum/species/vox/get_species_lore()
	return list(
		"The Vox's origin is mostly shrouded in mystery. It is known that they lack a home world - it's unknown whether it's due to  \
		voluntary or involuntary abandonment or destruction. The Vox live aboard massive space vessels which they call their \"arks\". \
		There are about twenty known Vox arks in the galaxy sector, some as large as whole planetoids and housing as much as five hundred million Vox aboard.",

		"Despite the ragtag looks of their fleet and crew, technologically, the Vox are no less advanced than any other race. \
		Most of their designs appear to be stolen or copied from other spacefaring races. However, the FTL travel engines \
		of Vox vessels are a mystifying piece of technology, as they are much more efficient and durable than any other known design. \
		Due to their extreme complexity, it has proven to be impossible to reverse-engineer them, and even the Vox themself may not know much about them.",

		"Most, if not all Vox are proficient at understanding Galcom, but experience difficulties speaking it. They often screech in between words, \
		and may have an unusual manner of speaking. The Vox also like to insult or belittle other races, and especially their rivals and victims. \
		Though, their insults rarely seem to have much meaning behind them, and the Vox tend to not think about it too much.",
	)

/datum/species/vox/create_pref_unique_perks()
	var/list/to_add = list()

	to_add += list(
		list(
		SPECIES_PERK_TYPE = SPECIES_POSITIVE_PERK,
		SPECIES_PERK_ICON = FA_ICON_BONE,
		SPECIES_PERK_NAME = "Wound Resistance",
		SPECIES_PERK_DESC = "The Vox have higher tolerance for damage that would wound others.",
		))

	return to_add
