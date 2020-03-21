Config                            = {}
Config.Locale                     = 'en'

--- #### BASICS
Config.EnablePrice = true -- false = bikes for free
Config.EnableEffects = true
Config.EnableBlips = true


--- #### PRICES	
Config.PriceTriBike = 89
Config.PriceScorcher = 99
Config.PriceCruiser = 129
Config.PriceBmx = 109


--- #### MARKER EDITS
Config.TypeMarker = 27
Config.MarkerScale = {{x = 2.000,y = 1.000,z = 0.500}}
Config.MarkerColor = {{r = 0,g = 255,b = 255}}
	
Config.MarkerZones = { 

    {x = 180.39,y = -922.88,z = 29.69},
    {x = -6.986,y = -1081.704,z = 25.7},
    {x = -1085.78,y = -263.01,z = 36.80}, 
    {x = -1262.36,y = -1438.98,z = 3.45},
    {x = 244.14,y = -569.67,z = 42.5},
    {x = -2093.56, y = -509.92, z = 12.1},

}


-- Edit blip titles
Config.BlipZones = { 

   {title="Bikes Rental", colour=2, id=376, x = 180.39, y =  -922.88, z = 30.69},
   {title="Bikes Rental", colour=2, id=376, x = -6.892, y = -1081.734, z = 26.829},
   {title="Bikes Rental", colour=2, id=376, x = -1262.36, y = -1438.98, z = 3.45},
   {title="Bikes Rental", colour=2, id=376, x = 244.14, y = -569.67, z = 43.27},
   {title="Bikes Rental", colour=2, id=376, x = -2093.56, y = -509.92, z = 12.1},
}
