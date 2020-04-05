local Keys = {
    ["ESC"] = 322,
    ["F1"] = 288,
    ["F2"] = 289,
    ["F3"] = 170,
    ["F5"] = 166,
    ["F6"] = 167,
    ["F7"] = 168,
    ["F8"] = 169,
    ["F9"] = 56,
    ["F10"] = 57,
    ["~"] = 243,
    ["1"] = 157,
    ["2"] = 158,
    ["3"] = 160,
    ["4"] = 164,
    ["5"] = 165,
    ["6"] = 159,
    ["7"] = 161,
    ["8"] = 162,
    ["9"] = 163,
    ["-"] = 84,
    ["="] = 83,
    ["BACKSPACE"] = 177,
    ["TAB"] = 37,
    ["Q"] = 44,
    ["W"] = 32,
    ["E"] = 38,
    ["R"] = 45,
    ["T"] = 245,
    ["Y"] = 246,
    ["U"] = 303,
    ["P"] = 199,
    ["["] = 39,
    ["]"] = 40,
    ["ENTER"] = 18,
    ["CAPS"] = 137,
    ["A"] = 34,
    ["S"] = 8,
    ["D"] = 9,
    ["F"] = 23,
    ["G"] = 47,
    ["H"] = 74,
    ["K"] = 311,
    ["L"] = 182,
    ["LEFTSHIFT"] = 21,
    ["Z"] = 20,
    ["X"] = 73,
    ["C"] = 26,
    ["V"] = 0,
    ["B"] = 29,
    ["N"] = 249,
    ["M"] = 244,
    [","] = 82,
    ["."] = 81,
    ["-"] = 84,
    ["LEFTCTRL"] = 36,
    ["LEFTALT"] = 19,
    ["SPACE"] = 22,
    ["RIGHTCTRL"] = 70,
    ["HOME"] = 213,
    ["PAGEUP"] = 10,
    ["PAGEDOWN"] = 11,
    ["DELETE"] = 178,
    ["LEFT"] = 174,
    ["RIGHT"] = 175,
    ["TOP"] = 27,
    ["DOWN"] = 173,
    ["NENTER"] = 201,
    ["N4"] = 108,
    ["N5"] = 60,
    ["N6"] = 107,
    ["N+"] = 96,
    ["N-"] = 97,
    ["N7"] = 117,
    ["N8"] = 61,
    ["N9"] = 118
}

Config = {}

Config.CheckOwnership = false -- If true, Only owner of vehicle can store items in trunk.
Config.AllowPolice = true -- If true, police will be able to search players' trunks.

Config.Locale = "en"

Config.OpenKey = Keys["Y"]

-- Limit, unit can be whatever you want. Originally grams (as average people can hold 25kg)
Config.Limit = 9000

-- Default weight for an item:
-- weight == 0 : The item do not affect character inventory weight
-- weight > 0 : The item cost place on inventory
-- weight < 0 : The item add place on inventory. Smart people will love it.
Config.DefaultWeight = 100

Config.localWeight = {
    bandage = 15,
    beer = 15,
    binoculars = 20,
    blowpipe = 10,
    bread = 10,
    cannabis = 30,
    carokit = 45,
    carotool = 45,
    clothe = 100,
    coffee = 15,
    coke = 50,
    crack = 55,
    fabric = 35,
    fish = 25,
    fishbait = 45,
    fishingrod = 15,
    fixkit = 45,
    fixtool = 35,
    gazbottle = 45,
    handcuffs = 25,
	jammeth = 55,
	jewels = 100,
	lockpick = 15,
	lotteryticket = 5,
	lsd = 25,
	lsd_pooch = 45,
	marijuana = 50,
	medikit = 25,
	phone = 15,
	rope = 15,
	shark = 45,
	turtle = 35,
	turtle_pooch = 25,
	turtlebait = 30,
	vodka = 25,
	water = 15,
    wool = 50,
    battery = 50,
    lowradio = 25,
    stockrim = 100,
    airbag = 35,
    highradio = 35,
    highrim = 150,
    alive_chicken = 20000,
    slaughtered_chicken = 20000,
    packaged_chicken = 20000,
    fish = 20000,
    stone = 20000,
    washed_stone = 20000,
    copper = 20000,
    iron = 20000,
    gold = 20000,
    diamond = 20000,
    wood = 20000,
    cutted_wood = 20000,
    packaged_plank = 20000,
    petrol = 20000,
    petrol_raffin = 20000,
    essence = 20000,
    wool = 20000,
    fabric = 20000,
    clothe = 20000,
    turbo = 55
}

Config.VehicleLimit = {
    [0] = 8000, --Compact
    [1] = 8000, --Sedan
    [2] = 10000, --SUV
    [3] = 5000, --Coupes
    [4] = 8000, --Muscle
    [5] = 2000, --Sports Classics
    [6] = 5000, --Sports
    [7] = 2000, --Super
    [8] = 1000, --Motorcycles
    [9] = 8000, --Off-road
    [10] = 20000, --Industrial
    [11] = 20000, --Utility
    [12] = 15000, --Vans
    [13] = 0, --Cycles
    [14] = 8000, --Boats
    [15] = 8000, --Helicopters
    [16] = 0, --Planes
    [17] = 8000, --Service
    [18] = 8000, --Emergency
    [19] = 0, --Military
    [20] = 8000, --Commercial
    [21] = 0 --Trains
}

Config.VehiclePlate = {
    taxi = "TAXI",
    cop = "LSPD",
    ambulance = "EMS0",
}
