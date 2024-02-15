GLOBAL_VAR_INIT(security_level, SEC_LEVEL_GREEN)
//SEC_LEVEL_GREEN = Condition Green
//SEC_LEVEL_YELLOW = Condition Yellow
//SEC_LEVEL_AMBER = Condition Amber
//SEC_LEVEL_RED = Condition Red
//SEC_LEVEL_OMEGA = Condition Omega

//config.alert_desc_blue_downto

/proc/set_security_level(level)
	switch(level)
		if("green")
			level = SEC_LEVEL_GREEN
		if("yellow")
			level = SEC_LEVEL_YELLOW
		if("amber")
			level = SEC_LEVEL_AMBER
		if("red")
			level = SEC_LEVEL_RED
		if("omega")
			level = SEC_LEVEL_OMEGA

	//Will not be announced if you try to set to the same level as it already is
	if(level >= SEC_LEVEL_GREEN && level <= SEC_LEVEL_OMEGA && level != GLOB.security_level)
		switch(level)
			if(SEC_LEVEL_GREEN)
				minor_announce(CONFIG_GET(string/alert_green), "Attention! Alert status lowered to green:")
				if(SSshuttle.emergency.mode == SHUTTLE_CALL || SSshuttle.emergency.mode == SHUTTLE_RECALL)
					if(GLOB.security_level >= SEC_LEVEL_RED)
						SSshuttle.emergency.modTimer(4)
					else if(GLOB.security_level == SEC_LEVEL_AMBER)
						SSshuttle.emergency.modTimer(2.5)
					else
						SSshuttle.emergency.modTimer(1.66)
				GLOB.security_level = SEC_LEVEL_GREEN
				for(var/obj/machinery/firealarm/FA in GLOB.machines)
					if(is_station_level(FA.z))
						FA.update_icon()
			if(SEC_LEVEL_YELLOW)
				if(GLOB.security_level < SEC_LEVEL_YELLOW)
					minor_announce(CONFIG_GET(string/alert_yellow_upto), "Attention! Alert status elevated to yellow:",1)
					if(SSshuttle.emergency.mode == SHUTTLE_CALL || SSshuttle.emergency.mode == SHUTTLE_RECALL)
						SSshuttle.emergency.modTimer(0.6)
				else
					minor_announce(CONFIG_GET(string/alert_yellow_downto), "Attention! Alert status lowered to yellow:")
					if(SSshuttle.emergency.mode == SHUTTLE_CALL || SSshuttle.emergency.mode == SHUTTLE_RECALL)
						if(GLOB.security_level >= SEC_LEVEL_RED)
							SSshuttle.emergency.modTimer(2.4)
						else
							SSshuttle.emergency.modTimer(1.5)
				GLOB.security_level = SEC_LEVEL_YELLOW
				sound_to_playing_players('sound/misc/voybluealert.ogg') // Citadel change - Makes alerts play a sound
				for(var/obj/machinery/firealarm/FA in GLOB.machines)
					if(is_station_level(FA.z))
						FA.update_icon()
			if(SEC_LEVEL_AMBER)
				if(GLOB.security_level < SEC_LEVEL_AMBER)
					minor_announce(CONFIG_GET(string/alert_amber_upto), "Attention! Alert status elevated to amber:",1)
					if(SSshuttle.emergency.mode == SHUTTLE_CALL || SSshuttle.emergency.mode == SHUTTLE_RECALL)
						if(GLOB.security_level == SEC_LEVEL_GREEN)
							SSshuttle.emergency.modTimer(0.4)
						else
							SSshuttle.emergency.modTimer(0.66)
				else
					minor_announce(CONFIG_GET(string/alert_amber_downto), "Attention! Alert status lowered to amber:")
					if(SSshuttle.emergency.mode == SHUTTLE_CALL || SSshuttle.emergency.mode == SHUTTLE_RECALL)
						SSshuttle.emergency.modTimer(1.6)
				GLOB.security_level = SEC_LEVEL_AMBER
				sound_to_playing_players('sound/effects/alert.ogg') // Citadel change - Makes alerts play a sound
				for(var/obj/machinery/firealarm/FA in GLOB.machines)
					if(is_station_level(FA.z))
						FA.update_icon()
			if(SEC_LEVEL_RED)
				if(GLOB.security_level < SEC_LEVEL_RED)
					minor_announce(CONFIG_GET(string/alert_red_upto), "Attention! Red Alert! All hands to battle stations!",1)
					if(SSshuttle.emergency.mode == SHUTTLE_CALL || SSshuttle.emergency.mode == SHUTTLE_RECALL)
						if(GLOB.security_level == SEC_LEVEL_GREEN)
							SSshuttle.emergency.modTimer(0.25)
						else if(GLOB.security_level == SEC_LEVEL_YELLOW)
							SSshuttle.emergency.modTimer(0.416)
						else
							SSshuttle.emergency.modTimer(0.625)
				else
					minor_announce(CONFIG_GET(string/alert_red_downto), "Attention! Red Alert! Stay alert and aware!")
				GLOB.security_level = SEC_LEVEL_RED
				sound_to_playing_players('sound/misc/voyalert.ogg') // Citadel change - Makes alerts play a sound

				for(var/obj/machinery/firealarm/FA in GLOB.machines)
					if(is_station_level(FA.z))
						FA.update_icon()
				for(var/obj/machinery/computer/shuttle/pod/pod in GLOB.machines)
					pod.admin_controlled = 0
			if(SEC_LEVEL_OMEGA)
				minor_announce(CONFIG_GET(string/alert_omega), "Attention! Condition Omega reached!",1)
				if(SSshuttle.emergency.mode == SHUTTLE_CALL || SSshuttle.emergency.mode == SHUTTLE_RECALL)
					if(GLOB.security_level < SEC_LEVEL_YELLOW)
						SSshuttle.emergency.modTimer(0.25)
					else if(GLOB.security_level == SEC_LEVEL_YELLOW)
						SSshuttle.emergency.modTimer(0.416)
					else
						SSshuttle.emergency.modTimer(0.625)
				GLOB.security_level = SEC_LEVEL_OMEGA
				sound_to_playing_players('sound/misc/deltakalaxon.ogg') // Citadel change - Makes alerts play a sound
				for(var/obj/machinery/firealarm/FA in GLOB.machines)
					if(is_station_level(FA.z))
						FA.update_icon()
				for(var/obj/machinery/computer/shuttle/pod/pod in GLOB.machines)
					pod.admin_controlled = 0
		if(level >= SEC_LEVEL_RED)
			for(var/obj/machinery/door/D in GLOB.machines)
				if(D.red_alert_access)
					D.visible_message("<span class='notice'>[D] whirrs as it automatically lifts access requirements!</span>")
					playsound(D, 'sound/machines/boltsup.ogg', 50, TRUE)
		SSblackbox.record_feedback("tally", "security_level_changes", 1, get_security_level())
		SSnightshift.check_nightshift()
	else
		return

/proc/get_security_level()
	switch(GLOB.security_level)
		if(SEC_LEVEL_GREEN)
			return "green"
		if(SEC_LEVEL_YELLOW)
			return "yellow"
		if(SEC_LEVEL_AMBER)
			return "amber"
		if(SEC_LEVEL_RED)
			return "red"
		if(SEC_LEVEL_OMEGA)
			return "omega"

/proc/num2seclevel(num)
	switch(num)
		if(SEC_LEVEL_GREEN)
			return "green"
		if(SEC_LEVEL_YELLOW)
			return "yellow"
		if(SEC_LEVEL_AMBER)
			return "amber"
		if(SEC_LEVEL_RED)
			return "red"
		if(SEC_LEVEL_OMEGA)
			return "omega"

/proc/seclevel2num(seclevel)
	switch( lowertext(seclevel) )
		if("green")
			return SEC_LEVEL_GREEN
		if("yellow")
			return SEC_LEVEL_YELLOW
		if("amber")
			return SEC_LEVEL_AMBER
		if("red")
			return SEC_LEVEL_RED
		if("omega")
			return SEC_LEVEL_OMEGA
