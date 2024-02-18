/*
Junior Engineer
*/
/datum/job/junior_engineer
	title = "Engineering Intern"
	flag = JR_ENGINEER
	department_head = list("Chief Engineer")
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 0
	supervisors = "the chief engineer, and any other more experienced engineers"
	selection_color = "#fff5cc"
	exp_requirements = 120
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/engineer/junior

	access = list(ACCESS_TECH_STORAGE, ACCESS_ENGINE, ACCESS_ENGINE_EQUIP, ACCESS_MAINT_TUNNELS,
									ACCESS_EXTERNAL_AIRLOCKS, ACCESS_CONSTRUCTION, ACCESS_ATMOSPHERICS, ACCESS_TCOMSAT, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_TECH_STORAGE, ACCESS_ENGINE, ACCESS_ENGINE_EQUIP, ACCESS_MAINT_TUNNELS,
									ACCESS_EXTERNAL_AIRLOCKS, ACCESS_CONSTRUCTION, ACCESS_TCOMSAT, ACCESS_MINERAL_STOREROOM)
	override_roundstart_spawn = /obj/effect/landmark/start/station_engineer

/datum/outfit/job/engineer/junior
	name = "Engineering Intern"
	jobtype = /datum/job/junior_engineer

	belt = /obj/item/storage/belt/utility/full/engi
	l_pocket = /obj/item/pda/engineering
	ears = /obj/item/radio/headset/headset_eng
	uniform = /obj/item/clothing/under/rank/engineer
	shoes = /obj/item/clothing/shoes/workboots
	head = /obj/item/clothing/head/hardhat
	r_pocket = /obj/item/t_scanner

	backpack = /obj/item/storage/backpack/industrial
	satchel = /obj/item/storage/backpack/satchel/eng
	duffelbag = /obj/item/storage/backpack/duffelbag/engineering
	box = /obj/item/storage/box/engineer
	pda_slot = SLOT_L_STORE
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/advanced=1)

/datum/outfit/job/engineer/junior/gloved/
	name = "Station Engineer (Gloves)"
	gloves = /obj/item/clothing/gloves/color/yellow

/datum/outfit/job/engineer/junior/gloved/rig/junior
	name = "Station Engineer (Hardsuit)"

	mask = /obj/item/clothing/mask/breath
	suit = /obj/item/clothing/suit/space/hardsuit/engine
	suit_store = /obj/item/tank/internals/oxygen
	head = null
	internals_slot = SLOT_S_STORE
