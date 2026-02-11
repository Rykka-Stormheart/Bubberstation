/datum/atmosphere/nitrodesert // Atmos for the nitrogen-desert planet.
	id = NITRODESERT_DEFAULT_ATMOS

	base_gases = list(
		/datum/gas/nitrogen=60,
	)
	normal_gases = list(
		/datum/gas/nitrogen=30,
		/datum/gas/carbon_dioxide=10,
	)
	restricted_gases = list(
		/datum/gas/oxygen=0.5,
		/datum/gas/plasma=5,
		/datum/gas/bz=1.2,
		/datum/gas/nitrous_oxide=1.2,
		/datum/gas/water_vapor=0.1,
	)
	restricted_chance = 10 // BUBBER EDIT: Original: 30 - TODO: Find out why Skyrat set this to 0, possiby revert

	minimum_pressure = HAZARD_LOW_PRESSURE + 10
	maximum_pressure = LAVALAND_EQUIPMENT_EFFECT_PRESSURE - 1

	minimum_temp = ICEBOX_MIN_TEMPERATURE // It gets cooooooooold at night.
	maximum_temp = LAVALAND_MAX_TEMPERATURE // It is a desert, though, so it also gets scorchingly hot at peak sunlight.
