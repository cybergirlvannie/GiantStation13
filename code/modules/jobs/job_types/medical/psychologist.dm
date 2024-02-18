/*
Psychologist
*/
/datum/job/
	title = "Psychologist"
	flag = MED_PSYCH
	department_head = list("Chief Medical Officer", "Head of Personnel")
	department_flag = MEDSCI
	faction = "Station"
	total_positions = 1
	spawn_positions = 1
	minimal_player_age = 1
	supervisors = "the chief medical officer, and head of personnel"
	selection_color = "#ffeef0"
	exp_requirements = 240
	exp_type = EXP_TYPE_CREW

	outfit = /datum/outfit/job/doctor/psychologist

	access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_CLONING, ACCESS_MINERAL_STOREROOM, ACCESS_PSYCH)
	minimal_access = list(ACCESS_MEDICAL, ACCESS_MORGUE, ACCESS_CLONING, ACCESS_MINERAL_STOREROOM, ACCESS_PSYCH)

/datum/outfit/job/doctor/psychologist
	name = "Psychologist"
	jobtype = /datum/job/psychologist

	belt = /obj/item/pda/medical
	ears = /obj/item/radio/headset/headset_med
	uniform = /obj/item/clothing/under/lawyer/blacksuit
	shoes = /obj/item/clothing/shoes/laceup
	l_hand = /obj/item/clipboard

	backpack_contents = list(/obj/item/storage/pill_bottle/mannitol, /obj/item/storage/pill_bottle/psicodine, /obj/item/storage/pill_bottle/paxpsych, /obj/item/storage/pill_bottle/happinesspsych, /obj/item/storage/pill_bottle/lsdpsych)

	backpack = /obj/item/storage/backpack/medic
	satchel = /obj/item/storage/backpack/satchel/med
	duffelbag = /obj/item/storage/backpack/duffelbag/med
