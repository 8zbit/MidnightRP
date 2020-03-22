Config = {}

Config.AlignMenu = "center" 
Config.TransferDistance = 5.0
Config.CreateDBTable = true -- Set this to true if you don't have the table pluto_storageunits in database.
Config.KeyPrice = 2500 -- Price to buy extra key.

Config.Coords = {
    ["Test 2"] = { -- Name of place.
        ["pos"] = vector3(3.607218503952, -707.01593017578, 45.973087310791), -- Position vector3(xyz)
        ["cost"] = 50, -- Price
        ["callback"] = function(storagePlace, storageData) -- DO NOT TOUCH THESE!
            StorageMenu(storagePlace, storageData) -- DO NOT TOUCH THESE!
        end -- DO NOT TOUCH THESE!
    },
    ["Union Depository"] = {
        ["pos"] = vector3(6.1606516838074, -705.64672851563, 45.973087310791),
        ["cost"] = 52,
        ["callback"] = function(storagePlace, storageData) -- DO NOT TOUCH THESE!
            StorageMenu(storagePlace, storageData) -- DO NOT TOUCH THESE!
        end -- DO NOT TOUCH THESE!
    },
    ["Maze Bank"] = {
        ["pos"] = vector3(7.8047313690186, -708.4052734375, 45.973041534424),
        ["cost"] = 55,
        ["callback"] = function(storagePlace, storageData) -- DO NOT TOUCH THESE!
            StorageMenu(storagePlace, storageData) -- DO NOT TOUCH THESE!
        end -- DO NOT TOUCH THESE!
    },
    ["Locksmith"] = {
        ["pos"] = vector3(5.0008645057678, -709.79241943359, 45.973041534424),
        ["callback"] = function() -- DO NOT TOUCH THESE!
            LockSmith() -- DO NOT TOUCH THESE!
        end -- DO NOT TOUCH THESE!
    },
    -- EXAMPLE ON HOW TO ADD MORE.
    -- ["MecanoVault"] = {
    --     ["pos"] = vector3(7.8047313690186, -708.4052734375, 45.973041534424),
    --     ["cost"] = 55,
    --     ["callback"] = function(storagePlace, storageData) -- DO NOT TOUCH THESE!
    --         StorageMenu(storagePlace, storageData) -- DO NOT TOUCH THESE!
    --     end -- DO NOT TOUCH THESE!
    -- },


    ["PoliceVault"] = {
        ["pos"] = vector3(461.737,-987.594,23.97),
        ["cost"] = 55,
        ["callback"] = function(storagePlace, storageData) -- DO NOT TOUCH THESE!
            StorageMenu(storagePlace, storageData) -- DO NOT TOUCH THESE!
        end -- DO NOT TOUCH THESE!
    },
    ["MecanoVault"] = {
        ["pos"] = vector3(-204.65,-1341.41,35.03),
        ["cost"] = 55,
        ["callback"] = function(storagePlace, storageData) -- DO NOT TOUCH THESE!
            StorageMenu(storagePlace, storageData) -- DO NOT TOUCH THESE!
        end -- DO NOT TOUCH THESE!
    },
    ["TaxiVault"] = {
        ["pos"] = vector3(901.34,-155.522,82.49),
        ["cost"] = 55,
        ["callback"] = function(storagePlace, storageData) -- DO NOT TOUCH THESE!
            StorageMenu(storagePlace, storageData) -- DO NOT TOUCH THESE!
        end -- DO NOT TOUCH THESE!
    },

    ["PearlsVault"] = {
        ["pos"] = vector3(-2248.9,-638.13,13.9),
        ["cost"] = 55,
        ["callback"] = function(storagePlace, storageData) -- DO NOT TOUCH THESE!
            StorageMenu(storagePlace, storageData) -- DO NOT TOUCH THESE!
        end -- DO NOT TOUCH THESE!
    },
    ["midnightclub"] = {
        ["pos"] = vector3(1000.72,-2314.68,35.31),
        ["cost"] = 55,
        ["callback"] = function(storagePlace, storageData) -- DO NOT TOUCH THESE!
            StorageMenu(storagePlace, storageData) -- DO NOT TOUCH THESE!
        end -- DO NOT TOUCH THESE!
    },
    ["CarVault"] = {
        ["pos"] = vector3(-1179.61,-1696.51,4.44),
        ["cost"] = 55,
        ["callback"] = function(storagePlace, storageData) -- DO NOT TOUCH THESE!
            StorageMenu(storagePlace, storageData) -- DO NOT TOUCH THESE!
        end -- DO NOT TOUCH THESE!
    },
    ["soaVault"] = {
        ["pos"] = vector3(987.28,-92.48,74.85),
        ["cost"] = 55,
        ["callback"] = function(storagePlace, storageData) -- DO NOT TOUCH THESE!
            StorageMenu(storagePlace, storageData) -- DO NOT TOUCH THESE!
        end -- DO NOT TOUCH THESE!
    },
    ["airVault"] = {
        ["pos"] = vector3(-1240.92,-3008.12,-43.89),
        ["cost"] = 55,
        ["callback"] = function(storagePlace, storageData) -- DO NOT TOUCH THESE!
            StorageMenu(storagePlace, storageData) -- DO NOT TOUCH THESE!
        end -- DO NOT TOUCH THESE!
    },
    ["UnicornVault"] = {
        ["pos"] = vector3(95.75,-1288.05,28.27),
        ["cost"] = 55,
        ["callback"] = function(storagePlace, storageData) -- DO NOT TOUCH THESE!
            StorageMenu(storagePlace, storageData) -- DO NOT TOUCH THESE!
        end -- DO NOT TOUCH THESE!
    },
    ["hospital"] = {
        ["pos"] = vector3(298.75,-598.43,43.28),
        ["cost"] = 55,
        ["callback"] = function(storagePlace, storageData) -- DO NOT TOUCH THESE!
            StorageMenu(storagePlace, storageData) -- DO NOT TOUCH THESE!
        end -- DO NOT TOUCH THESE!
    },
}