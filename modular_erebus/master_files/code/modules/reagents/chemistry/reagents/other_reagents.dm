/datum/reagent/barbers_aid/expose_mob(mob/living/exposed_mob, methods=TOUCH, reac_volume, show_message=TRUE, touch_protection = 0)
	var/mob/living/carbon/human/exposed_human = exposed_mob
	if(!istype(exposed_human) || istype(exposed_human.dna.species, GLOB.species_list[SPECIES_SKRELL]))
		return

	. = ..()
	if(!HAS_TRAIT(exposed_human, TRAIT_SHAVED))
		var/datum/sprite_accessory/facial_hair/picked_beard = pick(exposed_human.dna.species.all_facial_hairstyles) // EREBUS EDIT -- original uses `SSaccessories.facial_hairstyles_list`
		exposed_human.set_facial_hairstyle(picked_beard, update = FALSE)
	if(!HAS_TRAIT(exposed_human, TRAIT_BALD))
		var/datum/sprite_accessory/hair/picked_hair = pick(exposed_human.dna.species.all_hairstyles) // EREBUS EDIT -- original uses `SSaccessories.hairstyles_list`
		exposed_human.set_hairstyle(picked_hair, update = TRUE)

/datum/reagent/baldium/expose_mob(mob/living/exposed_mob, methods=TOUCH, reac_volume, show_message=TRUE, touch_protection = 0)
	var/mob/living/carbon/human/exposed_human = exposed_mob
	if(!istype(exposed_human) || istype(exposed_human.dna.species, GLOB.species_list[SPECIES_SKRELL]))
		return

	return ..()
