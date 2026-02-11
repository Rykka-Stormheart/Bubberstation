/*
 * Station Areas
 * Added as needed!
 * If adding additional areas in the future, add a comment above stating where and why they were added.
*/
area/dunepost
	name = "DO NOT USE"
	icon = 'icons/area/areas_station.dmi'
	icon_state = "mining"
	default_gravity = STANDARD_GRAVITY
	flags_1 = NONE
	area_flags = NONE
	area_flags_mapping = UNIQUE_AREA | FLORA_ALLOWED
	ambience_index = AMBIENCE_NITRODESERT_SURFACE
	sound_environment = SOUND_ENVIRONMENT_OUTPOST
	ambient_buzz = 'sound/ambience/lavaland/magma.ogg'
	allow_shuttle_docking = TRUE

/area/dunepost/surface
	name = "\improper Desert Surface"
	icon_state = "explored"
	outdoors = TRUE
	always_unpowered = TRUE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	requires_power = TRUE
	area_flags_mapping = UNIQUE_AREA | FLORA_ALLOWED
	min_ambience_cooldown = 70 SECONDS
	max_ambience_cooldown = 220 SECONDS

/area/dunepost/surface/LateInitialize()

	//Lighting
	var/sunlight_freq = 6
	for(var/turf/lighting_turf in contents)
		if(lighting_turf.light)
			continue
		if(lighting_turf.x % sunlight_freq)
			continue
		var/bonus = !(lighting_turf.x % (sunlight_freq*2)) && sunlight_freq > 1 ? sunlight_freq*0.5 : 0
		if((lighting_turf.y+bonus) % sunlight_freq)
			continue
		lighting_turf.set_light(
			1 + sunlight_freq,
			1,
			"#0fc9bf"
		)

/area/dunepost/surface/unexplored //monsters and ruins spawn here
	icon_state = "unexplored"
	area_flags = VALID_TERRITORY
	area_flags_mapping = UNIQUE_AREA | CAVES_ALLOWED | FLORA_ALLOWED | MOB_SPAWN_ALLOWED
	map_generator = /datum/map_generator/cave_generator/dunepost

/area/dunepost/underground
	name = "\improper Desert Swamp"
	outdoors = TRUE
	always_unpowered = TRUE
	requires_power = TRUE
	power_environ = FALSE
	power_equip = FALSE
	power_light = FALSE
	area_flags = NONE
	area_flags_mapping = UNIQUE_AREA | FLORA_ALLOWED
	min_ambience_cooldown = 70 SECONDS
	max_ambience_cooldown = 220 SECONDS

/area/dunepost/underground/unexplored
	icon_state = "unexplored"
	area_flags = VALID_TERRITORY
	area_flags_mapping = UNIQUE_AREA | CAVES_ALLOWED | FLORA_ALLOWED | MOB_SPAWN_ALLOWED
	map_generator = /datum/map_generator/cave_generator/dunepost/cave
