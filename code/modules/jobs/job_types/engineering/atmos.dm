/*
Atmospheric Technician
*/
/datum/job/atmos
	title = "Atmospheric Technician"
	flag = ATMOSTECH
	department_head = list("Chief Engineer")
	department_flag = ENGSEC
	faction = "Station"
	total_positions = 3
	spawn_positions = 2
	minimal_player_age = 2
	supervisors = "the chief engineer"
	selection_color = "#fff5cc"
	exp_requirements = 600
	exp_type = EXP_TYPE_ENGINEERING
	exp_type_department = EXP_TYPE_ENGINEERING

	outfit = /datum/outfit/job/atmos

	access = list(ACCESS_ENGINE, ACCESS_ENGINE_EQUIP, ACCESS_TECH_STORAGE, ACCESS_MAINT_TUNNELS,
									ACCESS_EXTERNAL_AIRLOCKS, ACCESS_CONSTRUCTION, ACCESS_ATMOSPHERICS, ACCESS_TCOMSAT, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_ENGINE, ACCESS_ENGINE_EQUIP, ACCESS_ATMOSPHERICS, ACCESS_MAINT_TUNNELS,
									ACCESS_EMERGENCY_STORAGE, ACCESS_CONSTRUCTION, ACCESS_MINERAL_STOREROOM)

/datum/outfit/job/atmos
	name = "Atmospheric Technician"
	jobtype = /datum/job/atmos

	belt = /obj/item/storage/belt/utility/atmostech
	l_pocket = /obj/item/pda/atmos
	ears = /obj/item/radio/headset/headset_eng
	uniform = /obj/item/clothing/under/rank/atmospheric_technician
	r_pocket = /obj/item/analyzer

	backpack = /obj/item/storage/backpack/industrial
	satchel = /obj/item/storage/backpack/satchel/eng
	duffelbag = /obj/item/storage/backpack/duffelbag/engineering
	box = /obj/item/storage/box/engineer
	pda_slot = SLOT_L_STORE
	backpack_contents = list(/obj/item/modular_computer/tablet/preset/advanced=1)

/datum/outfit/job/atmos/rig
	name = "Atmospheric Technician (Hardsuit)"

	mask = /obj/item/clothing/mask/gas
	suit = /obj/item/clothing/suit/space/hardsuit/engine/atmos
	suit_store = /obj/item/tank/internals/oxygen
	internals_slot = SLOT_S_STORE
