/*
 * Copied directly from moonwater.dm and tweaked to fit!
 * Thanks to BurgerBB :3
*/

/turf/open/water/nitrodesert

	name = "lunar water"
	gender = PLURAL
	desc = "Semi-shallow water containing a variety of natural and invasive fish species."

	icon = 'icons/turf/floors/moonwater.dmi'
	base_icon_state = "moonwater"
	icon_state = "moonwater-255"

	baseturfs = /turf/open/water/nitrodesert
	turf_flags = NO_RUST | TURF_BLOCKS_POPULATE_TERRAIN_FLORAFEATURES | NO_LAVA_GEN

	tiled_turf = FALSE

	initial_gas_mix = NITRODESERT_ATMOS
	planetary_atmos = TRUE

	fishing_datum = /datum/fish_source/lunar

	//Copied from lava because why not.
	smoothing_flags = SMOOTH_BITMASK | SMOOTH_BORDER
	smoothing_groups = SMOOTH_GROUP_TURF_OPEN + SMOOTH_GROUP_MOONWATER
	canSmoothWith = SMOOTH_GROUP_MOONWATER

/turf/open/water/nitrodesert/infested

	name = "carp-infested deep treacherous lunar water"
	desc = "Very dangerous lunar water. You feel like it would be a very bad idea to enter this water unprepared."

	immerse_overlay = "immerse_deep"
	is_swimming_tile = TRUE

	stamina_entry_cost = 25
	ticking_stamina_cost = 15
	ticking_oxy_damage = 2
	exhaust_swimmer_prob = 100

/turf/open/water/nitrodesert/surface

	name = "lunar surface water"

	icon = 'icons/turf/floors/moonwater_surface.dmi'
	base_icon_state = "moonwater_surface"
	icon_state = "moonwater_surface-255"

	fishing_datum = /datum/fish_source/nitrodesert/surface

#define NITRO_FISH_MYTHICAL 1
#define NITRO_FISH_RARE 2
#define NITRO_FISH_UNCOMMON 4
#define NITRO_FISH_COMMON 8

/datum/fish_source/nitrodesert
	catalog_description = "Lunar Waters"
	radial_state = "fryer"
	overlay_state = "portal_ocean"
	fish_table = list(
		FISHING_DUD = 20,
		/obj/item/fish/armorfish = NITRO_FISH_COMMON,
		/obj/item/fish/boned = NITRO_FISH_RARE,
		/obj/item/fish/dolphish = NITRO_FISH_MYTHICAL,
		/obj/item/fish/gullion = NITRO_FISH_MYTHICAL,
		/obj/item/fish/mastodon = NITRO_FISH_RARE,
		/obj/item/fish/monkfish = NITRO_FISH_COMMON,
		/obj/item/fish/plaice = NITRO_FISH_COMMON,
		/obj/item/fish/sacabambaspis = NITRO_FISH_RARE,
		/obj/item/fish/moonfish/dwarf = NITRO_FISH_RARE,
	)
	fishing_difficulty = FISHING_DEFAULT_DIFFICULTY + 30
	fish_source_flags = FISH_SOURCE_FLAG_EXPLOSIVE_MALUS
	associated_safe_turfs = list(/turf/open/water/nitrodesert)


/datum/fish_source/nitrodesert/surface
	catalog_description = "Lunar Waters"
	radial_state = "fryer"
	overlay_state = "portal_ocean"
	fish_table = list(
		FISHING_DUD = 20,
		/obj/item/fish/bumpy = NITRO_FISH_COMMON,
		/obj/item/fish/monkfish = NITRO_FISH_COMMON,
		/obj/item/fish/plaice = NITRO_FISH_COMMON,
		/obj/item/fish/sand_crab = NITRO_FISH_UNCOMMON,
		/obj/item/fish/sand_surfer = NITRO_FISH_COMMON,
		/obj/item/fish/stingray = NITRO_FISH_RARE,
		/obj/item/fish/tadpole = NITRO_FISH_COMMON,
		/obj/item/stack/sheet/bone = NITRO_FISH_COMMON,
		/obj/item/food/grown/material_sand = NITRO_FISH_RARE
	)
	fishing_difficulty = FISHING_DEFAULT_DIFFICULTY + 20
	fish_source_flags = FISH_SOURCE_FLAG_EXPLOSIVE_MALUS
	associated_safe_turfs = list(/turf/open/water/nitrodesert/surface)



#undef NITRO_FISH_MYTHICAL
#undef NITRO_FISH_RARE
#undef NITRO_FISH_UNCOMMON
#undef NITRO_FISH_COMMON

// WIP, crimson ocean + humid jungle-like terrain on the intermediary level between lavaland and the surface
/*
/turf/open/water/nitrodesert/blood // Movies are cool okay?

	name = "crimson water"
	desc = "Deep water with the consistency and appearance of blood. In fact, scans show it is almost exactly the same..."

*/
