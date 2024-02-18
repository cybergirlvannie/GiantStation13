/*
Chemist
*/
/datum/job/chemist
	title = "Chemist"
	flag = CHEMIST
	department_head = list("Chief Medical Officer")
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 2
	spawn_positions = 2
	minimal_player_age = 1
	supervisors = "the chief medical officer"
	selection_color = "#ffeef0"
	exp_requirements = 480
	exp_type = EXP_TYPE_MEDICAL
	exp_type_department = EXP_TYPE_MEDICAL


	outfit = /datum/outfit/job/chemist

	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_CHEMISTRY, ACCESS_VIROLOGY, ACCESS_GENETICS, ACCESS_CLONING, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_CHEMISTRY, ACCESS_CLONING, ACCESS_MINERAL_STOREROOM)

/datum/outfit/job/chemist
	name = "Chemist"
	jobtype = /datum/job/chemist

	glasses = /obj/item/clothing/glasses/science
	belt = /obj/item/pda/chemist
	ears = /obj/item/radio/headset/headset_med
	uniform = /obj/item/clothing/under/rank/chemist
	shoes = /obj/item/clothing/shoes/sneakers/white
	suit =  /obj/item/clothing/suit/toggle/labcoat/chemist
	backpack = /obj/item/storage/backpack/chemistry
	satchel = /obj/item/storage/backpack/satchel/chem
	duffelbag = /obj/item/storage/backpack/duffelbag/med
	l_hand = /obj/item/fermichem/pHbooklet

	backpack_contents = list(/obj/item/storage/hypospraykit/regular)

	chameleon_extras = /obj/item/gun/syringe
