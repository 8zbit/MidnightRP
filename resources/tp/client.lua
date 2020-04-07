local color = { r = 220, g = 220, b = 220, alpha = 255 } -- Color of the text 
local font = 0 -- Font of the text
local dropShadow = true
local default_timer = 2
local teleport_ready = true

local background = {
    enable = true,
    color = { r = 25, g = 25, b = 25, alpha = 255 },
} 

local entrance_points = {
    {name = "Factory 1", x = 1443.97, y = 1131.49, z = 114.33},
    {name = "Laundromat", x = 661.32, y = 1282.26, z = 360.3},
    {name = "Factory 2", x = 116.99, y = -1989.56, z = 18.4},
    {name = "spiceden", x = 1147.58, y = -1008.22, z = 45.42},
    {name = "The Underground", x = 195.149, y = -3167.268, z = 5.79},
    {name = "And Sanchez & Smith private jets", x = -942.14, y = -2955.99, z = 13.95},
    {name = "church", x = -325.12, y = 2818.33, z = 59.45},
    {name = "bowling", x = -138.69, y = -250.8, z = 43.77},
    {name = "restaurant", x = 113.61, y = -1039.56, z = 29.31},
    --{name = "bahama", x = -1388.01, y = -586.71, z = 30.22},
    {name = "pillbox", x = 327.56, y = -603.49, z = 43.28}
}

local exit_points = {
    {name = "Factory 1", x = 1088.61, y = -3188.4, z = -38.99},
    {name = "Laundromat", x = 1138.16, y = -3198.65, z = -39.67},
    {name = "Factory 2", x = 1066.0, y = -3183.39, z = -39.16},
    {name = "spiceden", x = 1258.78, y = 3125.89, z = -72.96},
    {name = "The Underground", x = -1569.331, y = -3017.389, z = -74.406},
    {name = "And Sanchez & Smith private jets", x = -1242.86, y = -2996.59, z = -42.89},
    {name = "church", x = -785.52, y = -14.05, z = -16.78},
    {name = "bowling", x = -143.37, y = -248.48, z = 44.05},
    {name = "restaurant", x = 114.01, y = -1042.71, z = 29.26},
    --{name = "bahama", x = -1390.94, y = -591.44, z = 30.32},
    {name = "pillbox", x = 339.54, y = -584.58, z = 74.17}
}





Citizen.CreateThread(function()

    if Config.Blip then

	    for a = 1, #entrance_points do

            Blips = AddBlipForCoord(entrance_points[a].x, entrance_points[a].y, entrance_points[a].z)

            SetBlipSprite (Blips, 40)
            SetBlipDisplay(Blips, 4)
            SetBlipScale  (Blips, 0.8)
            SetBlipAsShortRange(Blips, true)
        
            SetBlipScale  (blip, 0.8)
            SetBlipColour (Blips, 39)
        
            BeginTextCommandSetBlipName("STRING")
            AddTextComponentString(entrance_points[a].name)
            EndTextCommandSetBlipName(Blips)

        end
    end
end)


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for a = 1, #entrance_points do
            local plyCoords = GetEntityCoords(GetPlayerPed(PlayerId()), false)
            local distance = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, entrance_points[a].x, entrance_points[a].y, entrance_points[a].z)
            local entrance_name = entrance_points[a].name

            if distance <= 1.5 then
                if teleport_ready then
                    DrawText3D(entrance_points[a].x, entrance_points[a].y, entrance_points[a].z, "Press ~r~[E]~w~ to Enter "..entrance_name.."")
                end
                if IsControlJustPressed(1, 38) and teleport_ready then
                    teleport_ready = false
                    TeleportToExit(entrance_name)
                    timer()
                end
            end
        end
    end
end)

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for b = 1, #exit_points do
            local plyCoords = GetEntityCoords(GetPlayerPed(PlayerId()), false)
            local distance = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, exit_points[b].x, exit_points[b].y, exit_points[b].z)
            local exit_name = exit_points[b].name

            if distance <= 1.5 then
                if teleport_ready then
                    DrawText3D(exit_points[b].x, exit_points[b].y, exit_points[b].z, "Press ~r~[E]~w~ to Exit "..exit_name.."")
                end
                if IsControlJustPressed(1, 38) and teleport_ready then
                    teleport_ready = false
                    TeleportToEntrance(exit_name)
                    timer()
                end
            end
        end
    end
end)

function DrawText3D(x,y,z, text)
    local onScreen,_x,_y = World3dToScreen2d(x,y,z)
    local px,py,pz = table.unpack(GetGameplayCamCoord())
    local dist = GetDistanceBetweenCoords(px,py,pz, x,y,z, 1)
 
    local scale = ((1/dist)*2)*(1/GetGameplayCamFov())*45

    if onScreen then

        -- Formalize the text
        SetTextColour(color.r, color.g, color.b, color.alpha)
        SetTextScale(0.0*scale, 0.45*scale)
        SetTextFont(font)
        SetTextProportional(1)
        SetTextCentre(true)
        if dropShadow then
            SetTextDropshadow(10, 100, 100, 100, 255)
        end

        -- Calculate width and height
        BeginTextCommandWidth("STRING")
        AddTextComponentString(text)
        local height = GetTextScaleHeight(0.55*scale, font)
        local width = EndTextCommandGetWidth(font)

        -- Diplay the text
        SetTextEntry("STRING")
        AddTextComponentString(text)
        EndTextCommandDisplayText(_x, _y)

        if background.enable then
            DrawRect(_x, _y+scale/58, width, height, background.color.r, background.color.g, background.color.b , background.color.alpha)
        end
    end
end
function timer()
    local time = default_timer
    for i = 1, time do
        Citizen.Wait(0)
    end
    teleport_ready = true
end
function TeleportToExit(name)
    for a = 1, #exit_points do
        if exit_points[a].name == name then
            DoScreenFadeOut(500)
            Citizen.Wait(1000)
            SetEntityCoords(GetPlayerPed(PlayerId()), exit_points[a].x, exit_points[a].y, exit_points[a].z, 0.0, 0.0, 0.0, false)
            Citizen.Wait(1000)
            DoScreenFadeIn(500)
            Citizen.Wait(1000)
            return
        end
    end
end
function TeleportToEntrance(name)
    for b = 1, #entrance_points do
        if entrance_points[b].name == name then
            DoScreenFadeOut(500)
            Citizen.Wait(1000)
            SetEntityCoords(GetPlayerPed(PlayerId()), entrance_points[b].x, entrance_points[b].y, entrance_points[b].z, 0.0, 0.0, 0.0, false)
            Citizen.Wait(1000)
            DoScreenFadeIn(500)
            Citizen.Wait(1000)
            return
        end
    end
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        for k in pairs(Config.MarkerZones) do
		
            DrawMarker(25, Config.MarkerZones[k].x, Config.MarkerZones[k].y, Config.MarkerZones[k].z, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 3.0, 3.0, 1.0, 0, 150, 150, 100, 0, 0, 0, 0)	
		end
    end
end)
