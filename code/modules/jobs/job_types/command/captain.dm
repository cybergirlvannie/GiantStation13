/*
Captain
*/
/datum/job/captain
	title = "Captain"
	flag = CAPTAIN
	department_head = list("CentCom")
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "GATO officials and Space law"
	selection_color = "#ccccff"
	req_admin_notify = 1
	minimal_player_age = 30
	exp_requirements = 3000
	exp_type = EXP_TYPE_COMMAND
	exp_type_department = EXP_TYPE_COMMAND

	outfit = /datum/outfit/job/captain

	access = list() 			//See get_access()
	minimal_access = list() 	//See get_access()

	mind_traits = list(TRAIT_CAPTAIN_METABOLISM, TRAIT_DISK_VERIFIER)

	blacklisted_quirks = list(/datum/quirk/mute, /datum/quirk/brainproblems, /datum/quirk/insanity)

/datum/job/captain/get_access()
	return get_all_accesses()

/datum/job/captain/announce(mob/living/carbon/human/H, tried=FALSE)
	if(!H)
		return
	if(!H.client && !tried)		//Roundstart mobs don't have clients when announce() gets called
		SSticker.OnRoundstart(CALLBACK(src, .proc/announce, H, TRUE))	//So we try again...
		return
	if(tried && !H.client)	//We don't want to endlessly call ourselves when we don't have a client
		throw EXCEPTION("[H.nameless ? "Captain" : "Captain [H.real_name]"] ([H.x],[H.y],[H.z]) has no client.")
		return

	var/displayed_rank = H.client?.prefs?.alt_titles_preferences[title]
	if(!displayed_rank)	//Default to Captain
		displayed_rank = "Captain"

	minor_announce("[displayed_rank] [H.nameless ? "" : "[H.real_name] "]on deck!")
	..()

/datum/outfit/job/captain
	name = "Captain"
	jobtype = /datum/job/captain

	id = /obj/item/card/id/gold
	belt = /obj/item/pda/captain
	glasses = /obj/item/clothing/glasses/sunglasses
	ears = /obj/item/radio/headset/heads/captain/alt
	gloves = /obj/item/clothing/gloves/color/captain
	uniform =  /obj/item/clothing/under/rank/captain
	suit = /obj/item/clothing/suit/armor/vest/capcarapace
	shoes = /obj/item/clothing/shoes/sneakers/brown
	head = /obj/item/clothing/head/caphat
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1, /obj/item/station_charter=1, /obj/item/modular_computer/tablet/preset/advanced = 1)

	backpack = /obj/item/storage/backpack/captain
	satchel = /obj/item/storage/backpack/satchel/cap
	duffelbag = /obj/item/storage/backpack/duffelbag/captain

	implants = list(/obj/item/implant/mindshield)
	accessory = /obj/item/clothing/accessory/medal/gold/captain

	chameleon_extras = list(/obj/item/gun/energy/e_gun, /obj/item/stamp/captain)

/datum/outfit/job/captain/hardsuit
	name = "Captain (Hardsuit)"

	mask = /obj/item/clothing/mask/gas/sechailer
	suit = /obj/item/clothing/suit/space/hardsuit/captain
	suit_store = /obj/item/tank/internals/oxygen
