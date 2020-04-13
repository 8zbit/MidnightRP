Config = {}

Config.Locale = 'en'

Config.Delays = {
	WeedProcessing = 1000 * 1,
	CokeProcessing = 1000 * 1,
	SpiceProcessing = 1000 * 1,
}

Config.DrugDealerItems = {  -- add any item here to be sold
	
	clothe = 50, -- clothes price
	meat = 300,
	leather = 300,
	ring = 50,
	goldNecklace = 100,
	samsungS10 = 100,
	rolex = 300,
	camera = 50,
	laptop = 100,
	gold = 2500,
	diamond = 3000,
	rolex = 450,
	--[[ bagofdope = 1500, ]]
--[[ 	weed4g = 55,
	meth1g = 90,
	coke1g = 70,
	spice = 60,
	marijuana = 30,
	coke = 50,
	opium1g = 120,
	mdma1g = 100,
	hashish4g = 60,
	goldbar = 600, ]]
	
	
	
}

--[[	]]

Config.DealerBlip = false
Config.LicenseEnable = false -- enable processing licenses? The player will be required to buy a license in order to process drugs. Requires esx_license

Config.LicensePrices = {
	weed_processing = {label = _U('license_weed'), price = 30000},
	coke_processing = {label = _U('license_coke'), price = 50000},
	spice_processing = {label = _U('license_spice'), price = 40000}
}

Config.GiveBlack = true -- give black money? if disabled it'll give regular cash.

Config.CircleZones = {
	
	WeedField = {coords = vector3(310.91, 4290.87, 45.15), name = _U('blip_weedfield'), color = 25, sprite = 496, radius = 100.0},
	CokeField = {coords = vector3(2410.21, 3327.89, 47.38), name = _U('blip_cokefield'), color = 37, sprite = 501, radius = 100.0},
	SpiceField = {coords = vector3(-893.87, 6045.55, 46.59), name = _U('blip_spicefield'), color = 37, sprite = 501, radius = 100.0},
}

Config.ProcessZones = {

	WeedProcessing = {coords = vector3(1035.68, -3204.92, -38.17)--[[, name = _U('blip_weedprocessing'), color = 25, sprite = 496, radius = 100.0]]},
	CokeProcessing = {coords = vector3(-1870.42, 2061.16, 135.43)--[[, name = _U('blip_cokeprocessing'), color = 30, sprite = 501, radius = 100.0]]},
	SpiceProcessing = {coords = vector3(1257.19, 3133.56, -72.31)--[[, name = _U('blip_spiceprocessing'), color = 30, sprite = 501, radius = 100.0]]},
}

Config.DealerCoords = {

	DrugDealer = {coords = vector3(2675.84, 3499.31, 53.5), name = _U('blip_drugdealer'), color = 6, sprite = 378, radius = 50.0},
}

Config.MarkerZones = { 

	{x = 2675.84,y = 3499.31,z = 52.5}, ---sales
	{x = 1035.68,y = -3204.92,z = -38.17}, ---weed prosessing
	{x = -1870.42,y = 2061.16,z =  135.43}, ---coke
	{x = 1257.19,y = 3133.56,z = -74.31}, ----spice


}