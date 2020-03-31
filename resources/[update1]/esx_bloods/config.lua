Config                            = {}

Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 0.5 }
Config.MarkerColor                = { r = 255, g = 0, b = 0 }

Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- enable if you're using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableLicenses             = true -- enable if you're using esx_license

Config.EnableHandcuffTimer        = true -- enable handcuff timer? will unrestrain player after the time ends
Config.HandcuffTimer              = 10 * 60000 -- 10 mins

Config.EnableJobBlip              = false -- enable blips for colleagues, requires esx_society

Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.Bloods = {

	Bloods = {

		Blip = {
			Coords  = vector3(-164.08, -1073.6, 38.47),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Armories = {
			vector3(1404.15, 1154.55, 114.33)
		},

		Vehicles = {
			{
				Spawner = vector3(1392.39, 1138.23, 114.44),
				InsideShop = vector3(1365.85, 1140.1, 113.76),
				SpawnPoints = {
					{ coords = vector3(1365.85, 1140.1, 113.76), heading = 114.49, radius = 6.0 },
			
				}
			},

		
		},

		BossActions = {
			vector3(1396.22, 1159.77, 114.33)
		}

	}

}

Config.AuthorizedVehicles = {
	Shared = {
	},

	prospect = {
		{ model = 'gmt900escalade', label = 'gmt900escalade', price = 1 }
	},

	enforcer = {
		{ model = 'gmt900escalade', label = 'gmt900escalade', price = 1 }
	},

	lieutenant = {
		{ model = 'gmt900escalade', label = 'gmt900escalade', price = 1 }
	},
	
	vicepresident = {
		{ model = 'wraith', label = 'wraith', price = 1 },
		{ model = 'gmt900escalade', label = 'gmt900escalade', price = 1 }
		
	},

	boss = {
		{ model = 'urus', label = 'urus', price = 1 },
		{ model = 'gmt900escalade', label = 'gmt900escalade', price = 1 }
	
	}
}
