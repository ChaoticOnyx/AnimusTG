/datum/preference/choiced/hairstyle
	var/hairstyles
	// Fuck you BYOND for not working if I try to use `GLOB.species_list` for this`
	var/list/intended_species = list(/datum/species/human,
									 /datum/species/human/felinid,
									 /datum/species/ethereal,)

/datum/preference/choiced/hairstyle/New()
	. = ..()
	hairstyles = SSaccessories.hairstyles_list

/datum/preference/choiced/hairstyle/has_relevant_feature(datum/preferences/preferences)
	var/species_type = preferences.read_preference(/datum/preference/choiced/species)
	var/datum/species/species_real = GLOB.species_prototypes[species_type]

	return ..() && hairstyles == species_real.all_hairstyles

/datum/preference/choiced/hairstyle/init_possible_values()
	return assoc_to_keys_features(hairstyles)

/datum/preference/choiced/hairstyle/icon_for(value)
	var/datum/sprite_accessory/hair/hairstyle = hairstyles[value]
	return generate_icon_with_head_accessory(hairstyle, hairstyle?.y_offset)

/datum/preference/choiced/hairstyle/apply_to_human(mob/living/carbon/human/target, value)
	var/datum/species/target_species = target.dna.species
	if(target_species.type in intended_species)
		target.set_hairstyle(value, update = FALSE)

/datum/preference/choiced/hairstyle/create_informed_default_value(datum/preferences/preferences)
	var/gender = preferences.read_preference(/datum/preference/choiced/gender)
	var/species = pick(intended_species)
	var/datum/species/species_real = GLOB.species_prototypes[species]
	if(!gender || !species_real || !species_real.sexes)
		return ..()

	var/picked_hair = species_real.random_hairstyle(gender)
	var/datum/sprite_accessory/hair_style = hairstyles[picked_hair]
	if(!hair_style || !hair_style.natural_spawn || hair_style.locked) // Invalid, go with god(bald)
		return ..()

	return picked_hair

/datum/preference/choiced/facial_hairstyle
	var/facial_hairstyles
	var/list/intended_species = list(/datum/species/human,
								 	 /datum/species/human/felinid,
								 	 /datum/species/ethereal,)

/datum/preference/choiced/facial_hairstyle/New()
	. = ..()
	facial_hairstyles = SSaccessories.facial_hairstyles_list

/datum/preference/choiced/facial_hairstyle/has_relevant_feature(datum/preferences/preferences)
	var/species_type = preferences.read_preference(/datum/preference/choiced/species)
	var/datum/species/species_real = GLOB.species_prototypes[species_type]

	return facial_hairstyles == species_real.all_facial_hairstyles

/datum/preference/choiced/facial_hairstyle/init_possible_values()
	return assoc_to_keys_features(facial_hairstyles)

/datum/preference/choiced/facial_hairstyle/icon_for(value)
	return generate_icon_with_head_accessory(facial_hairstyles[value])

/datum/preference/choiced/facial_hairstyle/apply_to_human(mob/living/carbon/human/target, value)
	var/datum/species/target_species = target.dna.species
	if(target_species.type in intended_species)
		target.set_facial_hairstyle(value, update = FALSE)

/datum/preference/choiced/facial_hairstyle/create_informed_default_value(datum/preferences/preferences)
	var/gender = preferences.read_preference(/datum/preference/choiced/gender)
	var/species_type = preferences.read_preference(/datum/preference/choiced/species)
	var/datum/species/species_real = GLOB.species_prototypes[species_type]
	if(!gender || !species_real || !species_real.sexes)
		return ..()

	var/picked_beard = species_real.random_facial_hairstyle(gender)
	var/datum/sprite_accessory/beard_style = facial_hairstyles[picked_beard]
	if(!beard_style || !beard_style.natural_spawn || beard_style.locked)
		return ..()

	return picked_beard
