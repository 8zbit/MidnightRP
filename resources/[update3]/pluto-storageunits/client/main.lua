ESX = nil

cachedData = {
	["warehouses"] = {},
}

Citizen.CreateThread(function()
	
	while not ESX do

		TriggerEvent("esx:getSharedObject", function(library) 
			ESX = library 
		end)

		Citizen.Wait(0)
	end
	ESX.UI.Menu.CloseAll()
end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(playerData)
	ESX.PlayerData = playerData
end)

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(newJob)
	ESX.PlayerData["job"] = newJob
end)

Citizen.CreateThread(function()

	Wait(500)

	while true do 

		local sleepThread = 500
		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)

		for storagePlace, storageData in pairs(Config.Coords) do
			local dstCheck = #(pedCoords - storageData["pos"])

			if dstCheck < 5.0 then

				sleepThread = 5

				if dstCheck < 1.2 then

					if IsControlJustReleased(0, 38) then
						storageData["callback"](storagePlace, storageData)
					end

					ESX.ShowHelpNotification("Press ~INPUT_CONTEXT~ to access " ..storagePlace)

				end

				DrawScriptMarker({
					["type"] = 6,
					["pos"] = storageData["pos"] - vector3(0.0, 0.0, 0.975),
					["r"] = 55,
					["g"] = 100,
					["b"] = 200,
					["sizeX"] = 0.8,
					["sizeY"] = 0.8,
					["sizeZ"] = 0.8,
				})

			end
		end
		Citizen.Wait(sleepThread)
	end
end)