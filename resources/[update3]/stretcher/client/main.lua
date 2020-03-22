ESX = nil

Citizen.CreateThread(function()
    while ESX == nil do
        Citizen.Wait(5)

        ESX = exports["es_extended"]:getSharedObject()
    end

    if ESX.IsPlayerLoaded() then
		ESX.PlayerData = ESX.GetPlayerData()
	end
end)

RegisterNetEvent("esx:playerLoaded")
AddEventHandler("esx:playerLoaded", function(response)
	ESX.PlayerData = response
end)

RegisterNetEvent("esx:setJob")
AddEventHandler("esx:setJob", function(job)
	ESX.PlayerData["job"] = job
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)

	while true do
		local sleepThread = 500

		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)

		local closestStretcher = GetClosestObjectOfType(pedCoords, 1.0, Config.StretcherHash, false)

		if DoesEntityExist(closestStretcher) then
			sleepThread = 5

			local stretcherCoords = GetEntityCoords(closestStretcher)
			local layCoords = stretcherCoords + GetEntityForwardVector(closestStretcher)
			local pushCoords = stretcherCoords + GetEntityForwardVector(closestStretcher) * -1.3

			ESX.Game.Utils.DrawText3D(layCoords, "[~g~E~s~] Lay down")
			ESX.Game.Utils.DrawText3D(pushCoords, "[~g~G~s~] Push")

			if IsControlJustReleased(0, 38) then
				LayStretcher(closestStretcher)
			elseif IsControlJustReleased(0, 47) then
				PushStretcher(closestStretcher)
			end
		end

		Citizen.Wait(sleepThread)
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)

	while true do
		local sleepThread = 500

		local ped = PlayerPedId()
		local pedCoords = GetEntityCoords(ped)

		local closestStretcher = GetClosestObjectOfType(pedCoords, 1.0, Config.LayStretcherHash, false)

		if DoesEntityExist(closestStretcher) then
			sleepThread = 5

			local stretcherCoords = GetEntityCoords(closestStretcher)
			local layCoords = stretcherCoords + GetEntityForwardVector(closestStretcher)

			ESX.Game.Utils.DrawText3D(layCoords, "[~g~E~s~] go to bed")

			if IsControlJustReleased(0, 38) then
				LayStretcher(closestStretcher, true)
			end
		end

		Citizen.Wait(sleepThread)
	end
end)

Citizen.CreateThread(function()
	Citizen.Wait(100)

	while true do
		local sleepThread = 500

		if ESX.PlayerData["job"] and ESX.PlayerData["job"]["name"] == "ambulance" then
			local ped = PlayerPedId()
			local pedCoords = GetEntityCoords(ped)

			local dstCheck = GetDistanceBetweenCoords(pedCoords, Config.Storage["Menu"], true)

			if dstCheck <= 2.5 then
				sleepThread = 5

				if dstCheck <= 1.1 then
					local displayText = "~INPUT_DETONATE~ Equip stretcher."

					ESX.ShowHelpNotification(displayText)

					if IsControlJustReleased(0, 47) then
						SpawnStretcher()
					end
				end

				DrawScriptMarker({
					["type"] = 6,
					["pos"] = Config.Storage["Menu"]
				})
			end
		else
			sleepThread = 2500
		end

		Citizen.Wait(sleepThread)
	end
end)