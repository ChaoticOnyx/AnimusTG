/atom/movable/screen/lobby/new_player_info/update_text()
	if(!hud || !show_static)
		maptext = null
		return

	var/round_started = SSticker.HasRoundStarted()
	if(!MC_RUNNING())
		maptext = MAPTEXT("<span style='text-align: center; vertical-align: middle'>[(round_started ? null : "[time_remaining_str()]<br />")]Loading...</span>")
		return
	if(SSticker.IsPostgame())
		maptext = MAPTEXT("<span style='text-align: center; vertical-align: middle'>Game ended, <br /> \
			restart soon</span>")
		return

	var/new_maptext
	if(round_started)
		new_maptext = "<span style='text-align: center; vertical-align: middle'>[SSmapping.current_map.map_name]<br /> \
			[LAZYLEN(GLOB.clients)] player\s online<br /> \
			[ROUND_TIME()] in<br />"
		new_maptext += "</span>"
	else

		if(hud.mymob.client?.holder)
			new_maptext = "<span style='text-align: center; vertical-align: middle'>[time_remaining_str()]<br /> \
				[LAZYLEN(GLOB.clients)] player\s<br /> \
				[SSticker.totalPlayersReady] players ready<br /> \
				[SSticker.total_admins_ready] / [length(GLOB.admins)] admins ready</span>"
		else
			// Erebus edit -- original uses 18px font-size
			new_maptext = "<span style='text-align: center; vertical-align: middle; font-size: 12px'>[time_remaining_str()]</span><br /> \
				<span style='text-align: center; vertical-align: middle'>[LAZYLEN(GLOB.clients)] player\s</span>"

	maptext = MAPTEXT(new_maptext)
