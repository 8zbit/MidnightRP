-- Script Made By Aljunier | Made For ESX Framework --

Config = {}

Config.MarkerType = 25 --https://docs.fivem.net/game-references/markers/

--Rental Cars
Config.RentalCars = {
    ['skart'] = {
        ['Rental Info'] = {
            ['model'] = 'skart',
            ['information'] = 'skart 200$',
            ['price'] = 250
        }
    },
    ['kart'] = {
        ['Rental Info'] = {
            ['model'] = 'kart',
            ['information'] = 'kart 250$',
            ['price'] = 250
        }
    },

--[[    Example

    ['Name'] = {                                        -- Name (Doesn't Matter What Name)
        ['Rental Info'] = {                             -- Keep As 'Rental Info'
            ['model'] = 'modelname',                    -- Here goes the vehicle model name you want to spawn
            ['information'] = 'Vehicle Name price$',    -- Here is what will be displayed in the menu. Ex: 'Panto $150'
            ['price'] = price                           -- Here goes the price you want the vehicle to go for. Also mark this price down in ['information'] so that the price appears in the menu
        }
    },

]]

}

Config.CommercialRentals = {
    ['Swift'] = {
        ['Rental Info'] = {
            ['model'] = 'Swift',
            ['information'] = 'Swift 50,000$',
            ['price'] = 50000
        }
    },


}


----NOTE: There is not a need to lower your 'Z' value by 1 anymore, the script handles that by itself!----
Config.RentalLocations = {

    -- Car Rentals
    ['Prison'] = {
        ['Marker'] = {
            ['Type'] = 'Car Rental',
            ['x'] = -386.09,
            ['y'] = -1858.73,
            ['z'] = 20.94,
        },
        ['VehicleReturn'] = {
            ['x'] = -366.05,
            ['y'] = -1860.58,
            ['z'] = 20.53,
        },
        ['VehicleSpawn'] = {
            ['x'] = -393.21,
            ['y'] = -1873.86,
            ['z'] = 20.53,
            ['Heading'] = 213.7
        }
    },
   

    -- Commercial Rentals
    ['LS East Commercial'] = {
        ['Marker'] = {
            ['Type'] = 'Commercial Rental',
            ['x'] = -1230.96,
            ['y'] = -2270.09,
            ['z'] = 13.94,
        },
        ['VehicleReturn'] = {
            ['x'] = -1220.7,
            ['y'] = -2298.57,
            ['z'] = 13.94,
        },
        ['VehicleSpawn'] = {
            ['x'] = -1230.96,
            ['y'] = -2270.09,
            ['z'] = 13.94,
            ['Heading'] = 210.64
        }
    },

--[[    Example

    ['Whatever Name Your Want'] = {                 -- Name (Doesn't Matter What Name)
        ['Marker'] = {                              -- Keep as 'Marker'
            ['Type'] = 'Rental Type',               -- Enter The Type Of Rental. Available Types: Car Rental    OR    Commercial Rental
            ['x'] = x,                              -- X Coordinate for where you want people to go to to rent vehicles
            ['y'] = y,                              -- Y Coordinate for where you want people to go to to rent vehicles
            ['z'] = z,                              -- Z Coordinate for where you want people to go to to rent vehicles
        },
        ['VehicleReturn'] = {                       -- Keep as 'VehicleReturn'
            ['x'] = x,                              -- X Coordinate for where you want the vehicle return to be at
            ['y'] = y,                              -- Y Coordinate for where you want the vehicle return to be at
            ['z'] = z,                              -- Z Coordinate for where you want the vehicle return to be at
        },
        ['VehicleSpawn'] = {                        -- Keep as 'VehicleSpawn'
            ['x'] = x,                              -- X Coordinate for where you want the vehicle spawn to be at (Make sure it's a place where cars wont spawn naturally)
            ['y'] = y,                              -- Y Coordinate for where you want the vehicle spawn to be at (Make sure it's a place where cars wont spawn naturally)
            ['z'] = z,                              -- Z Coordinate for where you want the vehicle spawn to be at (Make sure it's a place where cars wont spawn naturally)
            ['Heading'] = heading                   -- Heading value that you want the vehicle to face upon spawning
        }
    },

]]
}