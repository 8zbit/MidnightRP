Config                            = {}
Config.DrawDistance               = 100.0
Config.MarkerType                 = 1
Config.MarkerSize                 = { x = 1.5, y = 1.5, z = 1.0 }
Config.MarkerColor                = { r = 50, g = 50, b = 204 }
Config.EnablePlayerManagement     = true
Config.EnableArmoryManagement     = true
Config.EnableESXIdentity          = true -- only turn this on if you are using esx_identity
Config.EnableNonFreemodePeds      = false -- turn this on if you want custom peds
Config.EnableSocietyOwnedVehicles = false
Config.EnableLicenses             = false
Config.MaxInService               = -1
Config.Locale                     = 'en'

Config.MafiaStations = {

  Mafia = {

    Blip = {
      Pos     = { x = 425.130, y = -979.558, z = 30.711 },
      Sprite  = 60,
      Display = 4,
      Scale   = 1.2,
      Colour  = 29,
    },

    AuthorizedWeapons = {
      { name = 'WEAPON_COMBATPISTOL',     price = 4000 },
      
	  
    },

	  AuthorizedVehicles = {
		  { name = 'denali16',  label = 'denali16' },
      { name = 'superd',  label = 'Bentley' }
      
	  },

    Cloakrooms = {
      { x = -1631.63, y = 105.79, z = -48.97 },
    },

    Armories = {
      { x = -1519.72, y = 110.05, z = -49.97 },
    },

    Vehicles = {
      {
        Spawner    = { x = -1534.65, y = 137.86, z = 55.67 },
        SpawnPoint = { x = -1563.41, y = 120.86, z = 57.25 },
        Heading    = 80.42,
      }
    },
	
	Helicopters = {
      {
        Spawner    = { x = -1563.52, y = 120.86, z = -49.74 },
        SpawnPoint = { x = 3.40, y = 525.56, z = 177.919 },
        Heading    = 0.0,
      }
    },

    VehicleDeleters = {
      { x = -1527.47, y = 85.53, z = 56.6 },
      
    },

    BossActions = {
      { x = -1496.1, y = 125.69, z = 55.3 }
    },

  },

}
