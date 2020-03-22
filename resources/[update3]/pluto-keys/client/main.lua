ESX = nil

cachedData = {}

Citizen.CreateThread(function()
	
	while not ESX do

		TriggerEvent("esx:getSharedObject", function(library) 
			ESX = library 
		end)

		Citizen.Wait(0)
	end

	if ESX.IsPlayerLoaded() then
		FetchKeys()
	end

end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(playerData)
	ESX.PlayerData = playerData
	Wait(500)
	FetchKeys()
end)

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(newJob)
	ESX.PlayerData["job"] = newJob
end)

RegisterNetEvent("pluto-keys:insertKey")
AddEventHandler("pluto-keys:insertKey", function(key)
	table.insert(cachedData["fetchedKeys"], key)
end)

RegisterCommand("keymenu", function()
	if not cachedData["fetchedKeys"] then
		ESX.TriggerServerCallback("pluto-keys:fetchKeys", function(fetchedKeys)
			if fetchedKeys then
				cachedData["fetchedKeys"] = fetchedKeys
				KeyMenu()
			else
				print("Couldn't fetch keys")
			end
		end)
	else
		KeyMenu()
	end
end)