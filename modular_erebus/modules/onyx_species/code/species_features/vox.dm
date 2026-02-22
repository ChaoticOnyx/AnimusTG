/datum/preference/choiced/hairstyle/vox_hair
	savefile_key = "hairstyle_vox_name"
	intended_species = list(/datum/species/vox)

/datum/preference/choiced/hairstyle/vox_hair/New()
	. = ..()
	hairstyles = SSaccessories.hairstyles_vox_list
