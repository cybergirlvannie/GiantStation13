/*
Virologist
*/
/datum/job/virologist
	title = "Virologist"
	flag = VIROLOGIST
	department_head = list("Chief Medical Officer")
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	minimal_player_age = 2
	supervisors = "the chief medical officer"
	selection_color = "#ffeef0"
	exp_requirements = 600
	exp_type = EXP_TYPE_MEDICAL
	exp_type_department = EXP_TYPE_MEDICAL

	outfit = /datum/outfit/job/virologist

	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_SURGERY, ACCESS_CHEMISTRY, ACCESS_VIROLOGY, ACCESS_GENETICS, ACCESS_CLONING, ACCESS_MINERAL_STOREROOM)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_VIROLOGY, ACCESS_CLONING, ACCESS_MINERAL_STOREROOM)

/datum/outfit/job/virologist
	name = "Virologist"
	jobtype = /datum/job/virologist

	belt = /obj/item/pda/viro
	ears = /obj/item/radio/headset/headset_med
	uniform = /obj/item/clothing/under/rank/virologist
	mask = /obj/item/clothing/mask/surgical
	shoes = /obj/item/clothing/shoes/sneakers/white
	suit =  /obj/item/clothing/suit/toggle/labcoat/virologist
	suit_store =  /obj/item/flashlight/pen

	backpack = /obj/item/storage/backpack/virology
	satchel = /obj/item/storage/backpack/satchel/vir
	duffelbag = /obj/item/storage/backpack/duffelbag/med