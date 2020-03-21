Config                            = {}

Config.DrawDistance               = 100.0

Config.Marker                     = { type = 1, x = 1, y = 1, z = 1, r = 102, g = 0, b = 102, rotate = true } -- pillbox

Config.ReviveReward               = 1000  -- revive reward, set to 0 if you don't want it enabled
Config.AntiCombatLog              = false -- enable anti-combat logging?
Config.LoadIpl                    = false -- disable if you're using fivem-ipl or other IPL loaders

Config.Locale                     = 'en'

local second = 1000
local minute = 60 * second

Config.EarlyRespawnTimer          = 5 * minute  -- Time til respawn is available
Config.BleedoutTimer              = 30 * minute -- Time til the player bleeds out

Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false

Config.RemoveWeaponsAfterRPDeath  = true
Config.RemoveCashAfterRPDeath     = false
Config.RemoveItemsAfterRPDeath    = false

-- Let the player pay for respawning early, only if he can afford it.
Config.EarlyRespawnFine           = false
Config.EarlyRespawnFineAmount     = 100

Config.RespawnPoint = { coords = vector3(320.052, -593.575, 43.292), heading = 93.42} -- pillbox

Config.Hospitals = {

	CentralLosSantos = {

		Blip = {
			coords = vector3( 334.73, -593.22, 42.28), --pillbox
			sprite = 61,
			scale  = 0.7,
			color  = 2
		},

		AmbulanceActions = {
			vector3(299.55, -573.65, 43.26)
		},

		Pharmacies = {
			vector3(307.15, -601.12, 43.28) --pillbox
		},

		Vehicles = {
			{
				Spawner = vector3(297.12,-587.512,43.261), --pillbox
				InsideShop = vector3(289.532,-584.539, 42.832), --pillbox
				Marker = { type = 36, x = 1.0, y = 1.0, z = 1.0, r = 100, g = 50, b = 200, a = 100, rotate = true },
				SpawnPoints = { -- all pillbox
					{ coords = vector3(291.0,-610.95,43.042), heading = 68.186, radius = 4.0 }, 
				
				}
			}
		},

		Helicopters = {
			{
				Spawner = vector3(338.47, -588.34, 74.17),
				InsideShop = vector3(305.6, -1419.7, 41.5),
				Marker = { type = 34, x = 1.5, y = 1.5, z = 1.5, r = 100, g = 150, b = 150, a = 100, rotate = true },
				SpawnPoints = {
					{ coords = vector3(352.14, -588.77, 74.17), heading = 263.27, radius = 10.0 }
					
				}
			}
		},

		FastTravels = {
			
		},

		FastTravelsPrompt = {
		
		}

	}
}

Config.AuthorizedVehicles = {

    ambulance = {
		{ model = 'ambulance', label = 'Ambulance', price = 40 },
		--{ model = 'ambulance2', label = 'Ambulance 2', price = 40 },
		{ model = 'emscar', label = 'EMS Car', price = 40 },
		{ model = 'emscar2', label = 'Car 2', price = 40 },
		{ model = 'emsvan', label = 'VAN', price = 40 },
		{ model = 'sheriff2', label = 'Raptor', price = 40 },
		{ model = 'emssuv', label = 'SUV', price = 40 }
    },

	doctor = {
		{ model = 'ambulance', label = 'Ambulance', price = 40 },
		--{ model = 'ambulance2', label = 'Ambulance 2', price = 40 },
		{ model = 'emscar', label = 'EMS Car', price = 40 },
		{ model = 'emscar2', label = 'Car 2', price = 40 },
		{ model = 'emsvan', label = 'VAN', price = 40 },
		{ model = 'sheriff2', label = 'Raptor', price = 40 },
		{ model = 'emssuv', label = 'SUV', price = 40 }
	},

	chief_doctor = {
		{ model = 'ambulance', label = 'Ambulance', price = 40 },
		--{ model = 'ambulance2', label = 'Ambulance 2', price = 40 },
		{ model = 'emscar', label = 'EMS Car', price = 40 },
		{ model = 'emscar2', label = 'Car 2', price = 40 },
		{ model = 'emsvan', label = 'VAN', price = 40 },
		{ model = 'sheriff2', label = 'Raptor', price = 40 },
		{ model = 'emssuv', label = 'SUV', price = 40 }
	},

	boss = {
		{ model = 'ambulance', label = 'Ambulance', price = 40 },
		--{ model = 'ambulance2', label = 'Ambulance 2', price = 40 },
		{ model = 'emscar', label = 'EMS Car', price = 40 },
		{ model = 'emscar2', label = 'Car 2', price = 40 },
		{ model = 'emsvan', label = 'VAN', price = 40 },
		{ model = 'sheriff2', label = 'Raptor', price = 40 },
		{ model = 'emssuv', label = 'SUV', price = 40 }
	},

}

Config.AuthorizedHelicopters = {

	ambulance = {},



	chief_doctor = {
		{
			model = 'supervolito',
			label = 'ems',
			price = 1
		},

	
	},

	boss = {
		{
			model = 'supervolito',
			label = 'ems',
			price = 1
		},

	}

}


Config.MarkerZones = { 

    {x = 307.515,y = -594.306,z = 42.292},
  

}