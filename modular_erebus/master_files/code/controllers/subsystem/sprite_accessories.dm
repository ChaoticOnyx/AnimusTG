/// The list containing ALL accessory sprites
#define ALL_SPRITE_LIST "all_sprites"
/// The list containing "default" accessory sprites, basically all base TG ones
#define DEFAULT_SPRITE_LIST "default_sprites"
/// The male specific list that we get from init_sprite_accessory_subtypes()
#define MALE_SPRITE_LIST "male_sprites"
/// The female specific list that we get from init_sprite_accessory_subtypes()
#define FEMALE_SPRITE_LIST "female_sprites"
/// Tajara accessory sprites, Erebus-added
#define TAJARA_SPRITE_LIST "tajara_sprites"
/// Skrell accessory sprites, Erebus-added
#define SKRELL_SPRITE_LIST "skrell_sprites"
/// Vox accessory sprites, Erebus-added
#define VOX_SPRITE_LIST "vox_sprites"

/// Use this to init a sprite accessory list for a feature where mobs are required to have one selected
#define INIT_ACCESSORY(sprite_accessory) init_sprite_accessory_subtypes(sprite_accessory, add_blank = FALSE)[DEFAULT_SPRITE_LIST]
/// Use this to init a sprite accessory list for a feature where mobs can opt to not have one selected
#define INIT_OPTIONAL_ACCESSORY(sprite_accessory) init_sprite_accessory_subtypes(sprite_accessory, add_blank = TRUE)[DEFAULT_SPRITE_LIST]

/datum/controller/subsystem/accessories
	var/list/all_hairstyles_list //! stores all /datum/sprite_accessory/hair indexed by name
	var/list/hairstyles_tajara_list //! stores /datum/sprite_accessory/hair/tajara indexed by name
	var/list/hairstyles_skrell_list //! stores /datum/sprite_accessory/hair/skrell indexed by name
	var/list/hairstyles_vox_list //! stores /datum/sprite_accessory/hair/vox indexed by name
	var/list/all_facial_hairstyles_list // //! stores all /datum/sprite_accessory/facial_hair indexed by name
	var/list/facial_hairstyles_tajara_list //! stores /datum/sprite_accessory/facial_hair/tajara indexed by name

/datum/controller/subsystem/accessories/setup_lists()
	. = ..()
	var/hair_lists = init_sprite_accessory_subtypes(/datum/sprite_accessory/hair)
	all_hairstyles_list = hair_lists[ALL_SPRITE_LIST]
	hairstyles_tajara_list = hair_lists[TAJARA_SPRITE_LIST]
	hairstyles_skrell_list = hair_lists[SKRELL_SPRITE_LIST]
	hairstyles_vox_list = hair_lists[VOX_SPRITE_LIST]

	var/facial_hair_lists = init_sprite_accessory_subtypes(/datum/sprite_accessory/facial_hair)
	all_facial_hairstyles_list = facial_hair_lists[ALL_SPRITE_LIST]
	facial_hairstyles_tajara_list = facial_hair_lists[TAJARA_SPRITE_LIST]

	feature_list[FEATURE_EARS_TAJARA] = INIT_ACCESSORY(/datum/sprite_accessory/ears/tajara)
	feature_list[FEATURE_TAIL_TAJARA] = INIT_ACCESSORY(/datum/sprite_accessory/tails/tajara)

/// This reads the applicable sprite accessory datum's subtypes and adds it to the subsystem's list of sprite accessories.
/// The boolean `add_blank` argument just adds a "None" option to the list of sprite accessories, like if a felinid doesn't want a tail or something, typically good for gated-off things.
/datum/controller/subsystem/accessories/init_sprite_accessory_subtypes(prototype, add_blank = FALSE)
	RETURN_TYPE(/list)
	var/returnable_list = list(
		ALL_SPRITE_LIST = list(),
		DEFAULT_SPRITE_LIST = list(),
		MALE_SPRITE_LIST = list(),
		FEMALE_SPRITE_LIST = list(),
		TAJARA_SPRITE_LIST = list(),
		SKRELL_SPRITE_LIST = list(),
		VOX_SPRITE_LIST = list(),
	)

	for(var/path in subtypesof(prototype))
		var/datum/sprite_accessory/accessory = new path

		if(accessory.icon_state)
			returnable_list[ALL_SPRITE_LIST][accessory.name] = accessory
		else
			returnable_list[ALL_SPRITE_LIST] += accessory.name

		if(istype(accessory, /datum/sprite_accessory/hair/tajara) || istype(accessory, /datum/sprite_accessory/facial_hair/tajara))
			returnable_list[TAJARA_SPRITE_LIST][accessory.name] = accessory
			continue
		if(istype(accessory, /datum/sprite_accessory/hair/skrell))
			returnable_list[SKRELL_SPRITE_LIST][accessory.name] = accessory
			continue
		if(istype(accessory, /datum/sprite_accessory/hair/vox))
			returnable_list[VOX_SPRITE_LIST][accessory.name] = accessory
			continue

		if(accessory.icon_state)
			returnable_list[DEFAULT_SPRITE_LIST][accessory.name] = accessory
		else
			returnable_list[DEFAULT_SPRITE_LIST] += accessory.name

		switch(accessory.gender)
			if(MALE)
				returnable_list[MALE_SPRITE_LIST] += accessory.name
			if(FEMALE)
				returnable_list[FEMALE_SPRITE_LIST] += accessory.name
			else
				returnable_list[MALE_SPRITE_LIST] += accessory.name
				returnable_list[FEMALE_SPRITE_LIST] += accessory.name

	if(add_blank)
		returnable_list[DEFAULT_SPRITE_LIST][SPRITE_ACCESSORY_NONE] = new /datum/sprite_accessory/blank

	return returnable_list

#undef INIT_ACCESSORY
#undef INIT_OPTIONAL_ACCESSORY
#undef DEFAULT_SPRITE_LIST
#undef MALE_SPRITE_LIST
#undef FEMALE_SPRITE_LIST
#undef TAJARA_SPRITE_LIST
#undef SKRELL_SPRITE_LIST
