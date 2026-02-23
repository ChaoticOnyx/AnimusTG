/datum/preference/choiced/hairstyle/skrell_hair
	savefile_key = "hairstyle_skrell_name"
	intended_species = list(/datum/species/skrell)

/datum/preference/choiced/hairstyle/skrell_hair/New()
	. = ..()
	hairstyles = SSaccessories.hairstyles_skrell_list
