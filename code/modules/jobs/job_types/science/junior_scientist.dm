/*
Junior Scientist
*/
/datum/job/junior_scientist
	title = "Research Student"
	flag = JR_SCIENTIST
	department_head = list("Research Director")
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 2
	spawn_positions = 1
	minimal_player_age = 0
	supervisors = "the research director, and any other senior science staff"
	selection_color = "#ffeeff"
	exp_requirements = 120
	exp_type = EXP_TYPE_CREW


	outfit = /datum/outfit/job/scientist/junior

	access = list(ACCESS_ROBOTICS, ACCESS_RESEARCH, ACCESS_MINERAL_STOREROOM, ACCESS_TECH_STORAGE, ACCESS_GENETICS)
	minimal_access = list(ACCESS_RESEARCH, ACCESS_MINERAL_STOREROOM)
	override_roundstart_spawn = /obj/effect/landmark/start/scientist

/datum/outfit/job/scientist/junior
	name = "Research Student"
	jobtype = /datum/job/junior_scientist

	belt = /obj/item/pda/toxins
	ears = /obj/item/radio/headset/headset_sci
	uniform = /obj/item/clothing/under/rank/scientist
	shoes = /obj/item/clothing/shoes/sneakers/white
	suit = /obj/item/clothing/suit/toggle/labcoat/science

	backpack = /obj/item/storage/backpack/science
	satchel = /obj/item/storage/backpack/satchel/tox
