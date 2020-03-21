Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = true -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = true -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.PoliceStations = {

	LSPD = {

		Blip = {
			Coords  = vector3(425.1, -979.5, 30.7),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(452.6, -992.8, 30.6)
		},

		Armories = {
			vector3(451.7, -980.1, -3000.6)
		},

		Vehicles = {
			{
				Spawner = vector3(454.6, -1017.4, 28.4),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(438.4, -1018.3, 27.7), heading = 90.0, radius = 6.0 },
					{ coords = vector3(441.0, -1024.2, 28.3), heading = 90.0, radius = 6.0 },
					{ coords = vector3(453.5, -1022.2, 28.0), heading = 90.0, radius = 6.0 },
					{ coords = vector3(450.9, -1016.5, 28.1), heading = 90.0, radius = 6.0 }
				}
			},

			{
				Spawner = vector3(473.3, -1018.8, 28.0),
				InsideShop = vector3(228.5, -993.5, -99.0),
				SpawnPoints = {
					{ coords = vector3(475.9, -1021.6, 28.0), heading = 276.1, radius = 6.0 },
					{ coords = vector3(484.1, -1023.1, 27.5), heading = 302.5, radius = 6.0 }
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(461.1, -981.5, 43.6),
				InsideShop = vector3(477.0, -1106.4, 43.0),
				SpawnPoints = {
					{ coords = vector3(449.5, -981.2, 43.6), heading = 92.6, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(448.4, -973.2, 30.6)
		}

	},

	SANDY = {

		Blip = {
			Coords  = vector3(1853.44, 3686.52, 34.28),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(1860.17, 3690.11, 34.28)
		},

		Armories = {
			vector3(1849.57, -3693.89, 34.28)
		},

		Vehicles = {
			{
				Spawner = vector3(1853.11, 3684.15, 34.28),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(1863.1, 3672.33, 33.87), heading = 309.01, radius = 6.0 },
					{ coords = vector3(1864.1, 3672.33, 33.87), heading = 305.01, radius = 6.0 }
				}
			},
		},

		Helicopters = {
			{
				Spawner = vector3(1866.62,3687.59,34.27),
				InsideShop = vector3(1177.679,3027.222,52.678),
				SpawnPoints = {
					{ coords = vector3(1862.77,3646.89,33.87), heading = 161.39, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(1843.16, 3690.7, 34.28)
		}

	},

	RIBJAIL = {

		Blip = {
			Coords  = vector3(1241.88,3046.814,40.574),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(1214.037, 3079.909, 42.47)
		},

		Armories = {
			vector3(1214.748, 3077.502, 42.47)
		},

		Vehicles = {
			{
				Spawner = vector3(1163.527,3059.045,42.431),
				InsideShop = vector3(228.5, -993.5, -99.5),
				SpawnPoints = {
					{ coords = vector3(1159.145,3065.996,42.18), heading = 101.885, radius = 6.0 },
					{ coords = vector3(1159.072,3069.069,42.209), heading = 103.257, radius = 6.0 }
				}
			},
		},

		Helicopters = {
			{
				Spawner = vector3(1147.089,3020.861,40.343),
				InsideShop = vector3(1177.679,3027.222,52.678),
				SpawnPoints = {
					{ coords = vector3(1132.931,3023.745,40.534), heading = 80.999, radius = 10.0 }
				}
			}
		},

		BossActions = {
			vector3(1216.072,3068.413,42.431)
		}

	}

}

Config.AuthorizedWeapons = {
	recruit = {
		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		{ weapon = 'WEAPON_STUNGUN', price = 0 },
		{ weapon = 'WEAPON_COMBATPISTOL', price = 500 },
		{ weapon = 'WEAPON_PUMPSHOTGUN', price = 500 },
		{ weapon = 'WEAPON_CARBINERIFLE', price = 500 }
	},

	officer = {
		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		{ weapon = 'WEAPON_STUNGUN', price = 0 },
		{ weapon = 'WEAPON_COMBATPISTOL', price = 500 },
		{ weapon = 'WEAPON_PUMPSHOTGUN', price = 500 },
		{ weapon = 'WEAPON_CARBINERIFLE', price = 500 }
	},

	sergeant = {
		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		{ weapon = 'WEAPON_STUNGUN', price = 0 },
		{ weapon = 'WEAPON_COMBATPISTOL', price = 500 },
		{ weapon = 'WEAPON_PUMPSHOTGUN', price = 500 },
		{ weapon = 'WEAPON_CARBINERIFLE', price = 500 }
	},

	intendent = {
		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		{ weapon = 'WEAPON_STUNGUN', price = 0 },
		{ weapon = 'WEAPON_COMBATPISTOL', price = 500 },
		{ weapon = 'WEAPON_PUMPSHOTGUN', price = 500 },
		{ weapon = 'WEAPON_CARBINERIFLE', price = 500 }
	},

	lieutenant = {
		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		{ weapon = 'WEAPON_STUNGUN', price = 0 },
		{ weapon = 'WEAPON_COMBATPISTOL', price = 500 },
		{ weapon = 'WEAPON_PUMPSHOTGUN', price = 500 },
		{ weapon = 'WEAPON_CARBINERIFLE', price = 500 }
	},

	chef = {
		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		{ weapon = 'WEAPON_STUNGUN', price = 0 },
		{ weapon = 'WEAPON_COMBATPISTOL', price = 500 },
		{ weapon = 'WEAPON_PUMPSHOTGUN', price = 500 },
		{ weapon = 'WEAPON_CARBINERIFLE', price = 500 }
	},

	boss = {
		{ weapon = 'WEAPON_NIGHTSTICK', price = 0 },
		{ weapon = 'WEAPON_STUNGUN', price = 0 },
		{ weapon = 'WEAPON_COMBATPISTOL', price = 500 },
		{ weapon = 'WEAPON_PUMPSHOTGUN', price = 500 },
		{ weapon = 'WEAPON_CARBINERIFLE', price = 500 }
	}
}

Config.AuthorizedVehicles = {
	Shared = {
	},
	recruit = {
	
		{ model = 'fbi2', label = 'Police Crown Vic', price = 10 },
		
	},

	officer = {
		{ model = 'fbi2', label = 'Police Crown Vic', price = 10 },
		{ model = 'police3', label = 'Police Interceptor', price = 10 },
		{ model = 'pd4', label = 'Police Interceptor V2', price = 10 },
		{ model = 'pd2', label = 'Police Charger', price = 10 },
		{ model = 'pd9', label = 'Police Caprice', price = 10 },
		{ model = 'PBus', label = 'Prison Bus', price = 10 },

	
	
		
	},

	sergeant = {
		{ model = 'fbi2', label = 'Police Crown Vic', price = 10 },
		{ model = 'police3', label = 'Police Interceptor', price = 10 },
		{ model = 'pd4', label = 'Police Interceptor V2', price = 10 },
		{ model = 'pd2', label = 'Police Charger', price = 10 },
		{ model = 'pd9', label = 'Police Caprice', price = 10 },
		{ model = 'police3', label = 'Police Taurus', price = 10 },
		{ model = 'unmarked7', label = 'Police Taurus V2', price = 10 },
		{ model = 'pranger', label = 'Police Charger HP', price = 10 },
		{ model = 'police', label = 'Police Interceptor HP', price = 10 },
		{ model = 'policeb', label = 'Police Bike', price = 10 },
		{ model = 'PBus', label = 'Prison Bus', price = 10 },
	

		
	},

	intendent = {
	
		{ model = 'fbi2', label = 'Police Crown Vic', price = 10 },
		{ model = 'police3', label = 'Police Interceptor', price = 10 },
		{ model = 'pd4', label = 'Police Interceptor V2', price = 10 },
		{ model = 'pd2', label = 'Police Charger', price = 10 },
		{ model = 'pd9', label = 'Police Caprice', price = 10 },
		{ model = 'police3', label = 'Police Taurus', price = 10 },
		{ model = 'unmarked7', label = 'Police Taurus V2', price = 10 },
		{ model = 'pranger', label = 'Police Charger HP', price = 10 },
		{ model = 'police', label = 'Police Interceptor HP', price = 10 },
		{ model = 'sv2', label = 'Unmarked Charger', price = 10 },
		{ model = 'unmarked9', label = 'Unmarked Charger V2', price = 10 },
		{ model = 'unmarked3', label = 'Unmarked Camry', price = 10 },
		{ model = 'fbi', label = 'Unmarked Crown Vic', price = 10 },
		{ model = 'pd8', label = 'Unmarked Tahoe', price = 10 },
		{ model = 'policeb', label = 'Police Bike', price = 10 },
		{ model = 'PBus', label = 'Prison Bus', price = 10 },

	
	},

	lieutenant = {
		{ model = 'fbi2', label = 'Police Crown Vic', price = 10 },
		{ model = 'police3', label = 'Police Interceptor', price = 10 },
		{ model = 'pd4', label = 'Police Interceptor V2', price = 10 },
		{ model = 'pd2', label = 'Police Charger', price = 10 },
		{ model = 'pd9', label = 'Police Caprice', price = 10 },
		{ model = 'police3', label = 'Police Taurus', price = 10 },
		{ model = 'unmarked7', label = 'Police Taurus V2', price = 10 },
		{ model = 'pranger', label = 'Police Charger HP', price = 10 },
		{ model = 'police', label = 'Police Interceptor HP', price = 10 },
		{ model = 'sv2', label = 'Unmarked Charger', price = 10 },
		{ model = 'unmarked9', label = 'Unmarked Charger V2', price = 10 },
		{ model = 'unmarked3', label = 'Unmarked Camry', price = 10 },
		{ model = 'fbi', label = 'Unmarked Crown Vic', price = 10 },
		{ model = 'pd8', label = 'Unmarked Tahoe', price = 10 },
		{ model = 'unmarked8', label = 'Unmarked Tahoe V2', price = 10 },
		{ model = 'unmarked4', label = 'Unmarked Mustang', price = 10 },
		{ model = 'unmarked5', label = 'Unmarked F350', price = 10 },
		{ model = 'policeb', label = 'Police Bike', price = 10 },
		{ model = 'PBus', label = 'Prison Bus', price = 10 },


	
	},

	chef = {
		{ model = 'pranger', label = 'Police Charger HP', price = 10 },
		{ model = 'police2', label = 'Police Interceptor', price = 10 },
		{ model = 'police', label = 'Police Interceptor HP', price = 10 },
		{ model = 'police3', label = 'Police Taurus', price = 10 },
		{ model = 'policet', label = 'Police Transport Van', price = 10 },
		{ model = 'police4', label = 'Police Crown Vic HP', price = 10 },
		{ model = 'sheriff', label = 'Sheriff Crown Vic', price = 10 },
		
		{ model = 'fbi', label = 'Undercover Crown Vic', price = 10 },
		{ model = 'fbi2', label = 'Police Crown Vic', price = 10 },
		{ model = 'PBus', label = 'Prison Bus', price = 10 },
		{ model = 'sv2', label = 'Unmarked Charger', price = 10 },
		{ model = 'lssdchgr', label = 'DOC Charger', price = 10 },
		{ model = 'lssdfpis', label = 'DOC Taurus', price = 10 },
		{ model = 'lssdfpiu', label = 'DOC Interceptor', price = 10 },
		{ model = 'lssdsilv18', label = 'DOC Silverado', price = 10 },
		{ model = 'lssdtahoe17', label = 'DOC Tahoe', price = 10 },
		{ model = 'mcraptor', label = 'Undercover Raptor', price = 10 },
		{ model = 'policeb', label = 'Police Bike', price = 10 },
		{ model = 'pd2', label = 'Police Charger', price = 10 },
		{ model = 'pd4', label = 'Police Interceptor V2', price = 10 },
		{ model = 'pd8', label = 'Unmarked Tahoe', price = 10 },
		{ model = 'pd9', label = 'Police Caprice', price = 10 },
		{ model = 'unmarked1', label = 'Unmarked Interceptor', price = 10 },
		{ model = 'unmarked3', label = 'Unmarked Camry', price = 10 },
		{ model = 'unmarked4', label = 'Unmarked Mustang', price = 10 },
		{ model = 'unmarked5', label = 'Unmarked F350', price = 10 },
		{ model = 'unmarked6', label = 'Unmarked Crown Vic', price = 10 },
		{ model = 'unmarked7', label = 'Police Taurus V2', price = 10 },
		{ model = 'unmarked8', label = 'Unmarked Tahoe V2', price = 10 },
		{ model = 'unmarked9', label = 'Unmarked Charger V2', price = 10 },

	
	},

	boss = {
		{ model = 'pranger', label = 'Police Charger HP', price = 10 },
		{ model = 'police2', label = 'Police Interceptor', price = 10 },
		{ model = 'police', label = 'Police Interceptor HP', price = 10 },
		{ model = 'police3', label = 'Police Taurus', price = 10 },
		{ model = 'policet', label = 'Police Transport Van', price = 10 },
		{ model = 'police4', label = 'Police Crown Vic HP', price = 10 },
		{ model = 'sheriff', label = 'Sheriff Crown Vic', price = 10 },
		{ model = 'fbi', label = 'Unmarked Crown Vic', price = 10 },
		{ model = 'fbi2', label = 'Police Crown Vic', price = 10 },
		{ model = 'PBus', label = 'Prison Bus', price = 10 },
		{ model = 'sv2', label = 'Unmarked Charger', price = 10 },
		{ model = 'lssdchgr', label = 'DOC Charger', price = 10 },
		{ model = 'lssdfpis', label = 'DOC Taurus', price = 10 },
		{ model = 'lssdfpiu', label = 'DOC Interceptor', price = 10 },
		{ model = 'lssdsilv18', label = 'DOC Silverado', price = 10 },
		{ model = 'lssdtahoe17', label = 'DOC Tahoe', price = 10 },
		{ model = 'mcraptor', label = 'Undercover Raptor', price = 10 },
		{ model = 'policeb', label = 'Police Bike', price = 10 },
		{ model = 'pd2', label = 'Police Charger', price = 10 },
		{ model = 'pd4', label = 'Police Interceptor V2', price = 10 },
		{ model = 'pd8', label = 'Unmarked Tahoe', price = 10 },
		{ model = 'pd9', label = 'Police Caprice', price = 10 },
		{ model = 'unmarked1', label = 'Unmarked Interceptor', price = 10 },
		{ model = 'unmarked3', label = 'Unmarked Camry', price = 10 },
		{ model = 'unmarked4', label = 'Unmarked Mustang', price = 10 },
		{ model = 'unmarked5', label = 'Unmarked F350', price = 10 },
		{ model = 'unmarked6', label = 'Unmarked Crown Vic', price = 10 },
		{ model = 'unmarked7', label = 'Police Taurus V2', price = 10 },
		{ model = 'unmarked8', label = 'Unmarked Tahoe V2', price = 10 },
		{ model = 'unmarked9', label = 'Unmarked Charger V2', price = 10 },
	
	}
}

Config.AuthorizedHelicopters = {
	recruit = {},

	officer = {},

	sergeant = {},

	intendent = {},
		
	lieutenant = {
		{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 10 }
	},

	chef = {
		{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 10 }
	},

	boss = {
		{ model = 'polmav', label = 'Police Maverick', livery = 0, price = 10 }
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements

Config.Uniforms = {
	recruit_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = 46,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = 45,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	officer_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 0,   ['decals_2'] = 0,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	sergeant_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 1,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 1,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	intendent_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	lieutenant_wear = { -- currently the same as intendent_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 2,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 2,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	chef_wear = {
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	boss_wear = { -- currently the same as chef_wear
		male = {
			['tshirt_1'] = 58,  ['tshirt_2'] = 0,
			['torso_1'] = 55,   ['torso_2'] = 0,
			['decals_1'] = 8,   ['decals_2'] = 3,
			['arms'] = 41,
			['pants_1'] = 25,   ['pants_2'] = 0,
			['shoes_1'] = 25,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		},
		female = {
			['tshirt_1'] = 35,  ['tshirt_2'] = 0,
			['torso_1'] = 48,   ['torso_2'] = 0,
			['decals_1'] = 7,   ['decals_2'] = 3,
			['arms'] = 44,
			['pants_1'] = 34,   ['pants_2'] = 0,
			['shoes_1'] = 27,   ['shoes_2'] = 0,
			['helmet_1'] = -1,  ['helmet_2'] = 0,
			['chain_1'] = 0,    ['chain_2'] = 0,
			['ears_1'] = 2,     ['ears_2'] = 0
		}
	},
	bullet_wear = {
		male = {
			['bproof_1'] = 11,  ['bproof_2'] = 1
		},
		female = {
			['bproof_1'] = 13,  ['bproof_2'] = 1
		}
	},
	gilet_wear = {
		male = {
			['tshirt_1'] = 59,  ['tshirt_2'] = 1
		},
		female = {
			['tshirt_1'] = 36,  ['tshirt_2'] = 1
		}
	}

}