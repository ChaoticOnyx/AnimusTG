/datum/action/cooldown/mob_cooldown/noosphere
	name = "Noospheric Communication"
	desc = "Communicate with other Skrell via the noosphere. You don't have to be awake."
	button_icon = 'modular_erebus/modules/onyx_species/icons/skrell/actions.dmi'
	button_icon_state = "noosphere"
	background_icon_state = "bg_default"
	overlay_icon_state = "bg_default_border"
	check_flags = NONE
	cooldown_time = 5 SECONDS
	melee_cooldown_time = 0
	shared_cooldown = NONE
	click_to_activate = FALSE

/datum/action/cooldown/mob_cooldown/noosphere/Activate(trigger_flags)
	if(owner.stat == DEAD)
		owner.balloon_alert(owner, "dead!")
		return
	var/input = tgui_input_text(owner, "Input a message for all Skrell to know.", "Message", max_length = MAX_MESSAGE_LEN)
	if(!input || QDELETED(src) || QDELETED(owner) || !IsAvailable(feedback = TRUE) || owner.stat == DEAD)
		return
	communicate(owner, input)
	StartCooldown()

/datum/action/cooldown/mob_cooldown/noosphere/proc/communicate(mob/living/user, message)
	var/my_message = format_message(message)
	for(var/mob/living/carbon/human/human_player in GLOB.player_list)
		if(istype(human_player) && istype(human_player.dna.species, /datum/species/skrell))
			to_chat(human_player, my_message)
	for(var/ghost in GLOB.dead_mob_list)
		var/link = FOLLOW_LINK(ghost, user)
		to_chat(ghost, "[link] [my_message]")
	user.log_talk(message, LOG_SAY, tag = "skrell noosphere message")

/datum/action/cooldown/mob_cooldown/noosphere/proc/format_message(message)
	var/flavor_verb = pick("brings", "delivers", "warbles with", "carries")
	return span_green("<b>The <span class='hypnophrase'>Noosphere</span> [flavor_verb] a message:</b> [message]")
