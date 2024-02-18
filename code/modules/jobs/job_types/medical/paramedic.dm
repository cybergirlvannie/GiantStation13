/*
Paramedic
*/
/datum/job/paramedic
	title = "Paramedic"
	flag = PARAMEDIC
	department_head = list("Chief Medical Officer")
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 0
	supervisors = "the chief medical officer, and any other senior medical staff"
	selection_color = "#ffeef0"
	exp_requirements = 120
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/doctor/paramedic

	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_MAINT_TUNNELS, ACCESS_SURGERY, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ,ACCESS_MAINT_TUNNELS, ACCESS_MINERAL_STOREROOM)
	override_roundstart_spawn = /obj/effect/landmark/start/paramedic

/datum/outfit/job/doctor/paramedic
	name = "Paramedic"
	jobtype = /datum/job/paramedic

	belt = /obj/item/storage/belt/medical
	l_pocket = /obj/item/pda/medical
	ears = /obj/item/radio/headset/headset_med
	uniform = /obj/item/clothing/under/rank/medical/emt
	shoes = /obj/item/clothing/shoes/sneakers/white
	head = /obj/item/clothing/head/soft/emt
	suit =  /obj/item/clothing/suit/toggle/labcoat/emt
	l_hand = /obj/item/storage/firstaid/regular
	suit_store = /obj/item/flashlight/pen

	pda_slot = SLOT_L_STORE
	backpack_contents = list(/obj/item/roller)

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel/med
	duffelbag = /obj/item/storage/backpack/duffelbag/med

	chameleon_extras = /obj/item/gun/syringe
