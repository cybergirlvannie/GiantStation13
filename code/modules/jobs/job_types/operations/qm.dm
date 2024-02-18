/*
Quartermaster is a real head fuck you
*/
/datum/job/qm
	title = "Quartermaster"
	flag = QUARTERMASTER
	department_head = list("Captain")
	department_flag = CIVILIAN
	head_announce = list(RADIO_CHANNEL_SUPPLY)
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	supervisors = "the captain"
	selection_color = "#d7b088"
	minimal_player_age = 7
	exp_type = EXP_TYPE_SUPPLY
	exp_type_department = EXP_TYPE_SUPPLY
	exp_requirements = 1200

	outfit = /datum/outfit/job/quartermaster

	access = list(ACCESS_MAINT_TUNNELS, ACCESS_MAILSORTING, ACCESS_CARGO, ACCESS_CARGO_BOT, ACCESS_QM, ACCESS_MINING, ACCESS_MINING_STATION, ACCESS_MINERAL_STOREROOM, ACCESS_KEYCARD_AUTH, ACCESS_RC_ANNOUNCE, ACCESS_SEC_DOORS, ACCESS_HEADS, ACCESS_VAULT)
	minimal_access = list(ACCESS_MAINT_TUNNELS, ACCESS_MAILSORTING, ACCESS_CARGO, ACCESS_CARGO_BOT, ACCESS_QM, ACCESS_MINING, ACCESS_MINING_STATION, ACCESS_MINERAL_STOREROOM, ACCESS_KEYCARD_AUTH, ACCESS_RC_ANNOUNCE, ACCESS_SEC_DOORS, ACCESS_HEADS, ACCESS_VAULT)

	blacklisted_quirks = list(/datum/quirk/mute, /datum/quirk/brainproblems, /datum/quirk/insanity)

/datum/outfit/job/quartermaster
	name = "Quartermaster"
	jobtype = /datum/job/qm

	belt = /obj/item/pda/quartermaster
	ears = /obj/item/radio/headset/headset_cargo
	uniform = /obj/item/clothing/under/rank/cargo
	shoes = /obj/item/clothing/shoes/sneakers/brown
	glasses = /obj/item/clothing/glasses/sunglasses
	l_hand = /obj/item/clipboard

	id = /obj/item/card/id/silver
	ears = /obj/item/radio/headset/heads/qm
	backpack_contents = list(/obj/item/melee/classic_baton/telescopic=1, /obj/item/modular_computer/tablet/preset/advanced = 1)

	chameleon_extras = /obj/item/stamp/qm
