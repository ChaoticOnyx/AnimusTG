/obj/item/tank/internals/nitrogen
	name = "nitrogen tank"
	desc = "A tank of nitrogen, this one is red."
	icon_state = "oxygen_fr"
	inhand_icon_state = "oxygen_fr_tank"
	tank_holder_icon_state = "holder_oxygen_fr"
	distribute_pressure = TANK_DEFAULT_RELEASE_PRESSURE
	force = 10
	dog_fashion = /datum/dog_fashion/back

/obj/item/tank/internals/nitrogen/populate_gas()
	air_contents.assert_gas(/datum/gas/nitrogen)
	air_contents.gases[/datum/gas/nitrogen][MOLES] = (6*ONE_ATMOSPHERE)*volume/(R_IDEAL_GAS_EQUATION*T20C)

/obj/item/tank/internals/nitrogen/empty/populate_gas()
	return

/obj/item/tank/internals/emergency_nitrogen
	name = "emergency nitrogen tank"
	desc = "Used for emergencies. Contains very little nitrogen, so try to conserve it until you actually need it."
	icon = 'modular_erebus/modules/onyx_species/icons/tanks.dmi'
	icon_state = "emergency_nitrogen"
	inhand_icon_state = "emergency_tank"
	worn_icon_state = "emergency"
	tank_holder_icon_state = "holder_emergency_nitrogen"
	worn_icon = null
	obj_flags = CONDUCTS_ELECTRICITY
	slot_flags = ITEM_SLOT_BELT
	w_class = WEIGHT_CLASS_SMALL
	force = 4
	distribute_pressure = TANK_DEFAULT_RELEASE_PRESSURE
	volume = 6

/obj/item/tank/internals/emergency_nitrogen/populate_gas()
	air_contents.assert_gas(/datum/gas/nitrogen)
	air_contents.gases[/datum/gas/nitrogen][MOLES] = (10*ONE_ATMOSPHERE)*volume/(R_IDEAL_GAS_EQUATION*T20C)

/obj/item/tank/internals/emergency_nitrogen/empty/populate_gas()
	return

/obj/item/storage/box/survival/vox
	name = "vox survival box"
	desc = "A box with the bare essentials of ensuring the survival of you and other voxes. Humans won't find that nitrogen tank too useful."
	illustration = "extendedtank"
	internal_type = /obj/item/tank/internals/emergency_nitrogen

/datum/outfit/vox
	name = "Vox Equipment"

	mask = /obj/item/clothing/mask/breath
	r_hand = /obj/item/tank/internals/nitrogen
	l_hand = /obj/item/storage/box/survival/vox
	internals_slot = ITEM_SLOT_HANDS
