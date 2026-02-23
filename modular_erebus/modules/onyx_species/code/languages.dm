/datum/language/tajara
	name = "Siik'maas"
	desc = "The traditionally employed tongue of Ahdomai, composed of expressive yowls and chirps. Native to the Tajaran."
	key = "j"
	space_chance = 0
	sentence_chance = 0
	between_word_sentence_chance = 0
	between_word_space_chance = 0
	additional_syllable_low = -1
	additional_syllable_high = 1
	syllables = list("mrr","rr","tajr","kir","raj","kii","mir","kra","ahk","nal","vah","khaz","jri","ran","darr",
	"mi","jri","dynh","manq","rhe","zar","rrhaz","kal","chur","eech","thaa","dra","jurl","mah","sanu","dra","ii'r",
	"ka","aasi","far","wa","baq","ara","qara","zir","sam","mak","hrar","nja","rir","khan","jun","dar","rik","kah",
	"hal","ket","jurl","mah","tul","cresh","azu","ragh","mro","mra","mrro","mrra")
	icon_state = "neko"
	default_priority = 90
	default_name_syllable_min = 2
	default_name_syllable_max = 4

/datum/language/tajara/get_random_name(
	gender = NEUTER,
	name_count = 1,
	syllable_min = 2,
	syllable_max = 4,
	force_use_syllables = FALSE,
)

	var/new_name = ..(gender, 1, syllable_min, syllable_max, force_use_syllables)
	if(prob(50))
		new_name += " [pick(list("Hadii","Kaytam","Nazkiin","Zhan-Khazan","Hharar","Njarir'Akhan","Faaira'Nrezi","Rhezar","Mi'dynh","Rrhazkal","Bayan","Al'Manq","Mi'jri","Chur'eech","Sanu'dra","Ii'rka"))]"
	else
		new_name += " [..(gender, 1, syllable_min, syllable_max, force_use_syllables)]"
	return new_name

/datum/language/skrell
	name = "Skrellian"
	desc = "A melodic and complex language spoken by the Skrell of Qerrbalak. Some of the notes are inaudible to humans."
	key = "k"
	space_chance = 0
	sentence_chance = 0
	between_word_sentence_chance = 0
	between_word_space_chance = 0
	additional_syllable_low = -1
	additional_syllable_high = 1
	syllables = list("qr","qrr","xuq","qil","quum","xuqm","vol","xrim","zaoo","qu-uu","qix","qoo","zix","*","!")
	icon_state = "neko"
	default_priority = 90
	default_name_syllable_min = 2
	default_name_syllable_max = 4

/datum/language/vox
	name = "Vox-pidgin"
	desc = "The common tongue of the various Vox ships making up the Shoal. It sounds like chaotic shrieking to everyone else."
	key = "5"
	space_chance = 0
	sentence_chance = 0
	between_word_sentence_chance = 0
	between_word_space_chance = 0
	additional_syllable_low = -1
	additional_syllable_high = 1
	syllables = list("ti","ti","ti","hi","hi","ki","ki","ki","ki","ya","ta","ha","ka","ya","chi","cha","kah", \
	"SKRE","AHK","EHK","RAWK","KRA","AAA","EEE","KI","II","KRI","KA")
	icon_state = "neko"
	default_priority = 90
	default_name_syllable_min = 2
	default_name_syllable_max = 4

/datum/language/vox/get_random_name(
	gender = NEUTER,
	name_count = 1,
	syllable_min = 6,
	syllable_max = 6,
	force_use_syllables = FALSE,
)
	return ..(FEMALE, 1, syllable_min, syllable_max, force_use_syllables)

/datum/language_holder/tajara
	understood_languages = list(
		/datum/language/common = list(LANGUAGE_ATOM),
		/datum/language/tajara = list(LANGUAGE_ATOM),
	)
	spoken_languages = list(
		/datum/language/common = list(LANGUAGE_ATOM),
		/datum/language/tajara = list(LANGUAGE_ATOM),
	)

/datum/language_holder/skrell
	understood_languages = list(
		/datum/language/common = list(LANGUAGE_ATOM),
		/datum/language/skrell = list(LANGUAGE_ATOM),
	)
	spoken_languages = list(
		/datum/language/common = list(LANGUAGE_ATOM),
		/datum/language/skrell = list(LANGUAGE_ATOM),
	)

/datum/language_holder/vox
	understood_languages = list(
		/datum/language/common = list(LANGUAGE_ATOM),
		/datum/language/vox = list(LANGUAGE_ATOM),
	)
	spoken_languages = list(
		/datum/language/common = list(LANGUAGE_ATOM),
		/datum/language/vox = list(LANGUAGE_ATOM),
	)
