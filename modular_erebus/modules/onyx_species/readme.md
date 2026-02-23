## Название: Расы с OnyxBay

**MODULE ID:** onyx_species

**Pull Request:** https://github.com/ChaoticOnyx/AnimusTG/pull/5

### Описание:

Добавляет некоторые расы с билда OnyxBay: таяр, скреллов и воксов. Расы доступны для выбора в сетапе.

<!-- TODO: описание механа каждой из рас -->

### Изменения файлов или проков TG:

- `code\controllers\subsystem\sprite_accessories.dm`
-- `/datum/controller/subsystem/accessories/setup_lists()` -- добавлены списки со всеми волосами и бородами, списки волос, доступных только таярам, скреллам и воксам, а также список бород, доступных только таярам.
-- `/datum/controller/subsystem/accessories/init_sprite_accessory_subtypes(prototype, add_blank = FALSE)` -- логика для создания вышеописанных списков.

- `code\modules\client\preferences\species_features\basic.dm` -- изменена логика проков у преференсов волос и бороды для реализации эксклюзивных для определённых рас причёсок и бород.
-- `/datum/preference/choiced/hairstyle/New()`
-- `/datum/preference/choiced/hairstyle/has_relevant_feature(datum/preferences/preferences)`
-- `/datum/preference/choiced/hairstyle/init_possible_values()`
-- `/datum/preference/choiced/hairstyle/icon_for(value)`
-- `/datum/preference/choiced/hairstyle/apply_to_human(mob/living/carbon/human/target, value)`
-- `/datum/preference/choiced/hairstyle/create_informed_default_value(datum/preferences/preferences)`
-- А также аналогичные проки у типа `/datum/preference/choiced/facial_hairstyle`.

- `code\modules\mob\living\carbon\human\_species.dm`
-- `/datum/species/New()` -- новые переменные со списками волос и бород, доступных данной расе.

- `code\modules\surgery\bodyparts\head_hair_and_lips.dm`
-- `/obj/item/bodypart/head/get_hair_and_lips_icon(dropped)` -- оверрайднут весь прок ради двух строчек (боже помилуй). Используются новые списки волос и бород из `SSaccessories`. Также убрано `SHOULD_CALL_PARENT(TRUE)` в базовом файле, чтобы не ругались проверки на гитхабе.

- `code\modules\holiday\holidays.dm` -- косметические изменения строк: ящеры и их язык переименованы в унатхов и Синта'унати соответственно.
-- `/datum/holiday/draconic_day/greet()`
-- `/datum/holiday/draconic_day/getStationPrefix()`

- `code\modules\mob\living\carbon\human\species_types\lizardpeople.dm` -- аналогично вышеописанному.
-- `/datum/species/lizard/get_physical_attributes()`
-- `/datum/species/lizard/ashwalker/get_physical_attributes()`
-- `/datum/species/lizard/silverscale/get_physical_attributes()`

- `code/datums/dna/blocks/dna_identity_block.dm` -- Используются новые списки волос и бород из `SSaccessories`.
-- `/datum/dna_block/identity/hair_style/create_unique_block(mob/living/carbon/human/target)`
-- `/datum/dna_block/identity/hair_style/apply_to_mob(mob/living/carbon/human/target, dna_hash)`
-- `/datum/dna_block/identity/facial_style/create_unique_block(mob/living/carbon/human/target)`
-- `/datum/dna_block/identity/facial_style/apply_to_mob(mob/living/carbon/human/target, dna_hash)`

- `modular_erebus/master_files/code/game/objects/structures/mirror.dm` -- аналогично.
-- `/obj/structure/mirror/change_beard(mob/living/carbon/human/beard_dresser)`
-- `/obj/structure/mirror/change_hair(mob/living/carbon/human/hairdresser)`
-- `/obj/structure/mirror/magic/change_beard(mob/living/carbon/human/beard_dresser)`

- `code/modules/mob/dead/observer/observer.dm` -- аналогично.
-- `/mob/dead/observer/update_icon(updates=ALL, new_form)`

- `code/modules/reagents/chemistry/reagents/other_reagents.dm` -- аналогично.
-- `/datum/reagent/barbers_aid/expose_mob(mob/living/exposed_mob, methods=TOUCH, reac_volume, show_message=TRUE, touch_protection = 0)`
== `/datum/reagent/baldium/expose_mob(mob/living/exposed_mob, methods=TOUCH, reac_volume, show_message=TRUE, touch_protection = 0)`

**Изменение TGUI:**
- `tgui\packages\tgui\interfaces\PreferencesMenu\preferences\features\species_features.tsx` -- добавлено что-то там, чтобы работал выбор хвостов и ушей таяр в лодауте. I don't dig TGUI.

### Дефайны:

SPECIES_TAJARA -- "tajara"
SPECIES_SKRELL -- "skrell"
SPECIES_VOX -- "vox"

FEATURE_EARS_TAJARA -- "ears_tajara"
FEATURE_TAIL_TAJARA -- "tail_tajara"

### Авторы:

**TheUnknownOne (aka Tim Ermolt)** -- код, работа со спрайтами;
**FloweYStyle** -- геймдизайн, помощь с кодом, моральная поддержка.
