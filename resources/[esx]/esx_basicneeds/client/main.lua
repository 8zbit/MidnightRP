ESX          = nil
local IsDead = false
local IsAnimated = false
local IsAlreadyDrunk = false
local DrunkLevel     = -1

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

AddEventHandler('esx_basicneeds:resetStatus', function()
	TriggerEvent('esx_status:set', 'hunger', 500000)
	TriggerEvent('esx_status:set', 'thirst', 500000)
end)

RegisterNetEvent('esx_basicneeds:healPlayer')
AddEventHandler('esx_basicneeds:healPlayer', function()
	-- restore hunger & thirst
	TriggerEvent('esx_status:set', 'hunger', 1000000)
	TriggerEvent('esx_status:set', 'thirst', 1000000)

	-- restore hp
	local playerPed = PlayerPedId()
	SetEntityHealth(playerPed, GetEntityMaxHealth(playerPed))
end)

AddEventHandler('esx:onPlayerDeath', function()
	IsDead = true
end)

AddEventHandler('playerSpawned', function(spawn)
	if IsDead then
		TriggerEvent('esx_basicneeds:resetStatus')
	end

	IsDead = false
end)

AddEventHandler('esx_status:loaded', function(status)

	TriggerEvent('esx_status:registerStatus', 'hunger', 1000000, '#FFFF00', function(status) -- #CFAD0F -- Amarelo
		return false
	end, function(status)
		status.remove(200)
	end)

	TriggerEvent('esx_status:registerStatus', 'thirst', 1000000, '#0099FF', function(status) -- #0C98F1 -- Azul
		return false
	end, function(status)
		status.remove(250)
	end)

	Citizen.CreateThread(function()
		while true do
			Citizen.Wait(1000)

			local playerPed  = PlayerPedId()
			local prevHealth = GetEntityHealth(playerPed)
			local health     = prevHealth

			TriggerEvent('esx_status:getStatus', 'hunger', function(status)
				if status.val == 0 then
					if prevHealth <= 150 then
						health = health - 5
					else
						health = health - 1
					end
				end
			end)

			TriggerEvent('esx_status:getStatus', 'thirst', function(status)
				if status.val == 0 then
					if prevHealth <= 150 then
						health = health - 5
					else
						health = health - 1
					end
				end
			end)

			if health ~= prevHealth then
				SetEntityHealth(playerPed, health)
			end
		end
	end)
end)

AddEventHandler('esx_basicneeds:isEating', function(cb)
	cb(IsAnimated)
end)

RegisterNetEvent('esx_basicneeds:onEat')
AddEventHandler('esx_basicneeds:onEat', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_cs_burger_01'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.11, 0.045, 0.02, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)
RegisterNetEvent('esx_basicneeds:onEatChocolate')
AddEventHandler('esx_basicneeds:onEatChocolate', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_choc_ego'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.035, 0.009, -30.0, -240.0, -120.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onEatjello')
AddEventHandler('esx_basicneeds:onEatjello', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)



RegisterNetEvent('esx_basicneeds:onEatseafoodcocktail')
AddEventHandler('esx_basicneeds:onEatseafoodcocktail', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)




RegisterNetEvent('esx_basicneeds:onEatcalamari')
AddEventHandler('esx_basicneeds:onEatcalamari', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onEatpearlsclam')
AddEventHandler('esx_basicneeds:onEatpearlsclam', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onDrinkpearlsturkishcoffee')
AddEventHandler('esx_basicneeds:onDrinkpearlsturkishcoffee', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_fib_coffee'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.01, -0.03, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onEatcoconutshrimp')
AddEventHandler('esx_basicneeds:onEatcoconutshrimp', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onEatfreshmussels')
AddEventHandler('esx_basicneeds:onEatfreshmussels', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onDrinkstrawberryjuice')
AddEventHandler('esx_basicneeds:onDrinkstrawberryjuice', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_ecola_can' --ng_proc_sodacan_01a
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.008, 0.03, 240.0, -60.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)


RegisterNetEvent('esx_basicneeds:onDrinkmangojuice')
AddEventHandler('esx_basicneeds:onDrinkmangojuice', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_ecola_can' --ng_proc_sodacan_01a
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.008, 0.03, 240.0, -60.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)



RegisterNetEvent('esx_basicneeds:onEatmixedseafood')
AddEventHandler('esx_basicneeds:onEatmixedseafood', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onEatseafoodpizza')
AddEventHandler('esx_basicneeds:onEatseafoodpizza', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)


RegisterNetEvent('esx_basicneeds:onEatshellfishspecial')
AddEventHandler('esx_basicneeds:onEatshellfishspecial', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onEatcupcake')
AddEventHandler('esx_basicneeds:onEatcupcake', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onEatChips')
AddEventHandler('esx_basicneeds:onEatChips', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'v_ret_ml_chips4'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onEatSandwich')
AddEventHandler('esx_basicneeds:onEatSandwich', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_sandwich_01'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.03, -240.0, -180.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onDrink')
AddEventHandler('esx_basicneeds:onDrink', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_ld_flow_bottle'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.008, 0.03, 240.0, -60.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onDrinkCocaCola')
AddEventHandler('esx_basicneeds:onDrinkCocaCola', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_ecola_can' --ng_proc_sodacan_01a
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.008, 0.03, 240.0, -60.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onDrinkIceTea')
AddEventHandler('esx_basicneeds:onDrinkIceTea', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_ld_can_01' --ng_proc_sodacan_01b
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.008, 0.03, 240.0, -60.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onDrinkCoffee')
AddEventHandler('esx_basicneeds:onDrinkCoffee', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_fib_coffee'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.01, -0.03, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)


				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)

			
			end)
		end)

	end
end)
---------------------------------------

RegisterNetEvent('esx_basicneeds:onDrinklatte')
AddEventHandler('esx_basicneeds:onDrinklatte', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_fib_coffee'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.01, -0.03, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)

				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
			end)
		end)

	end
end)


RegisterNetEvent('esx_basicneeds:onDrinkblack')
AddEventHandler('esx_basicneeds:onDrinkblack', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_fib_coffee'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.01, -0.03, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)

				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
			end)
		end)

	end
end)


RegisterNetEvent('esx_basicneeds:onDrinkpumpkin')
AddEventHandler('esx_basicneeds:onDrinkpumpkin', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_fib_coffee'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.01, -0.03, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)

				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
			end)
		end)

	end
end)


RegisterNetEvent('esx_basicneeds:onDrinkturkish')
AddEventHandler('esx_basicneeds:onDrinkturkish', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_fib_coffee'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.01, -0.03, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
			end)
		end)

	end
end)


RegisterNetEvent('esx_basicneeds:onDrinkcappuccino')
AddEventHandler('esx_basicneeds:onDrinkcappuccino', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_fib_coffee'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.01, -0.03, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)

				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
			end)
		end)

	end
end)


RegisterNetEvent('esx_basicneeds:onDrinkfullwhite')
AddEventHandler('esx_basicneeds:onDrinkfullwhite', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_fib_coffee'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.01, -0.03, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)

				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
			end)
		end)

	end
end)


RegisterNetEvent('esx_basicneeds:onDrinkicecoffee')
AddEventHandler('esx_basicneeds:onDrinkicecoffee', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_fib_coffee'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.01, -0.03, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)

				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
			end)
		end)

	end
end)

-- Bar drinks
RegisterNetEvent('esx_basicneeds:onDrinkBeer')
AddEventHandler('esx_basicneeds:onDrinkBeer', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_amb_beer_bottle'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 28422)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.008, 0.03, 240.0, -60.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('amb@code_human_wander_drinking@beer@male@base', function()
				TaskPlayAnim(playerPed, 'amb@code_human_wander_drinking@beer@male@base', 'static', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onDrinkWine')
AddEventHandler('esx_basicneeds:onDrinkWine', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_wine_bot_01'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 28422)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.02, -0.3, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('amb@code_human_wander_drinking@beer@male@base', function()
				TaskPlayAnim(playerPed, 'amb@code_human_wander_drinking@beer@male@base', 'static', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onDrinkVodka')
AddEventHandler('esx_basicneeds:onDrinkVodka', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_vodka_bottle'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 28422)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.02, -0.3, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('amb@code_human_wander_drinking@beer@male@base', function()
				TaskPlayAnim(playerPed, 'amb@code_human_wander_drinking@beer@male@base', 'static', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onDrinkWhisky')
AddEventHandler('esx_basicneeds:onDrinkWhisky', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_cs_whiskey_bottle'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 28422)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.02, -0.2, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('amb@code_human_wander_drinking@beer@male@base', function()
				TaskPlayAnim(playerPed, 'amb@code_human_wander_drinking@beer@male@base', 'static', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onDrinkTequila')
AddEventHandler('esx_basicneeds:onDrinkTequila', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_tequila_bottle'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 28422)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.02, -0.3, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('amb@code_human_wander_drinking@beer@male@base', function()
				TaskPlayAnim(playerPed, 'amb@code_human_wander_drinking@beer@male@base', 'static', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onDrinkMilk')
AddEventHandler('esx_basicneeds:onDrinkMilk', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_cs_milk_01'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, -0.009, -0.03, -0.1, -90.0, 270.0, -90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_intdrink', function()
				TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

-- Disco
RegisterNetEvent('esx_basicneeds:onDrinkGin')
AddEventHandler('esx_basicneeds:onDrinkGin', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_rum_bottle'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 28422)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.02, -0.3, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('amb@code_human_wander_drinking@beer@male@base', function()
				TaskPlayAnim(playerPed, 'amb@code_human_wander_drinking@beer@male@base', 'static', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onDrinkAbsinthe')
AddEventHandler('esx_basicneeds:onDrinkAbsinthe', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_bottle_cognac'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 28422)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.02, -0.3, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('amb@code_human_wander_drinking@beer@male@base', function()
				TaskPlayAnim(playerPed, 'mamb@code_human_wander_drinking@beer@male@base', 'static', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onDrinkChampagne')
AddEventHandler('esx_basicneeds:onDrinkChampagne', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_wine_white'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 28422)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.008, -0.02, -0.3, 90.0, 270.0, 90.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('amb@code_human_wander_drinking@beer@male@base', function()
				TaskPlayAnim(playerPed, 'amb@code_human_wander_drinking@beer@male@base', 'static', 1.0, -1.0, 2000, 0, 1, true, true, true)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

-- Cigarett 
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
  PlayerData = xPlayer
end)

RegisterNetEvent('esx_cigarett:startSmoke')
AddEventHandler('esx_cigarett:startSmoke', function(source)
	SmokeAnimation()
end)

function SmokeAnimation()
	local playerPed = GetPlayerPed(-1)
	
	Citizen.CreateThread(function()
        TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_SMOKING", 0, true)               
	end)
end

-- Optionalneeds
function Drunk(level, start)
  
  Citizen.CreateThread(function()
     local playerPed = GetPlayerPed(-1)
     if start then
      DoScreenFadeOut(800)
      Wait(1000)
    end
     if level == 0 then
       RequestAnimSet("move_m@drunk@slightlydrunk")
      
      while not HasAnimSetLoaded("move_m@drunk@slightlydrunk") do
        Citizen.Wait(0)
      end
       SetPedMovementClipset(playerPed, "move_m@drunk@slightlydrunk", true)
     elseif level == 1 then
       RequestAnimSet("move_m@drunk@moderatedrunk")
      
      while not HasAnimSetLoaded("move_m@drunk@moderatedrunk") do
        Citizen.Wait(0)
      end
       SetPedMovementClipset(playerPed, "move_m@drunk@moderatedrunk", true)
     elseif level == 2 then
       RequestAnimSet("move_m@drunk@verydrunk")
      
      while not HasAnimSetLoaded("move_m@drunk@verydrunk") do
        Citizen.Wait(0)
      end
       SetPedMovementClipset(playerPed, "move_m@drunk@verydrunk", true)
     end
     SetTimecycleModifier("spectator5")
    SetPedMotionBlur(playerPed, true)
    SetPedIsDrunk(playerPed, true)
     if start then
      DoScreenFadeIn(800)
    end
   end)
 end
 function Reality()
   Citizen.CreateThread(function()
     local playerPed = GetPlayerPed(-1)
     DoScreenFadeOut(800)
    Wait(1000)
     ClearTimecycleModifier()
    ResetScenarioTypesEnabled()
    ResetPedMovementClipset(playerPed, 0)
    SetPedIsDrunk(playerPed, false)
    SetPedMotionBlur(playerPed, false)
     DoScreenFadeIn(800)
   end)
 end
 AddEventHandler('esx_status:loaded', function(status)
   TriggerEvent('esx_status:registerStatus', 'drunk', 0, '#8F15A5', --roxo
    function(status)
      if status.val > 0 then
        return true
      else
        return false
      end
    end,
    function(status)
      status.remove(1500)
    end
  )
 	Citizen.CreateThread(function()
 		while true do
 			Wait(1000)
 			TriggerEvent('esx_status:getStatus', 'drunk', function(status)
				
				if status.val > 0 then
					
          local start = true
           if IsAlreadyDrunk then
            start = false
          end
           local level = 0
           if status.val <= 250000 then
            level = 0
          elseif status.val <= 500000 then
            level = 1
          else
            level = 2
          end
           if level ~= DrunkLevel then
            Drunk(level, start)
          end
           IsAlreadyDrunk = true
          DrunkLevel     = level
				end
 				if status.val == 0 then
          
          if IsAlreadyDrunk then
            Reality()
          end
           IsAlreadyDrunk = false
          DrunkLevel     = -1
 				end
 			end)
 		end
 	end)
 end)
 RegisterNetEvent('esx_optionalneeds:onDrink')
AddEventHandler('esx_optionalneeds:onDrink', function()
  
  local playerPed = GetPlayerPed(-1)
  
  TaskStartScenarioInPlace(playerPed, "WORLD_HUMAN_DRINKING", 0, 1)
  Citizen.Wait(1000)
  ClearPedTasksImmediately(playerPed)
 end) 

 

 
RegisterNetEvent('esx_donut:onEat')
AddEventHandler('esx_donut:onEat', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_donut_01'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_donut2:onEat')
AddEventHandler('esx_donut2:onEat', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_donut_02'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)


RegisterNetEvent('esx_taco4:onEat')
AddEventHandler('esx_taco4:onEat', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_taco_01'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)


				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
			end)
		end)

	end
end)

RegisterNetEvent('esx_monster:onDrink')
AddEventHandler('esx_monster:onDrink', function(prop_name)
	if not IsAnimated then
		local prop_name = prop_name or 'ng_proc_sodacan_01a'
		IsAnimated = true
		local playerPed = GetPlayerPed(-1)
		Citizen.CreateThread(function()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			prop = CreateObject(GetHashKey(prop_name), x, y, z+0.2,  true,  true, true)			
	        AttachEntityToEntity(prop, playerPed, GetPedBoneIndex(playerPed, 18905), 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)
			RequestAnimDict('mp_player_intdrink')  
			while not HasAnimDictLoaded('mp_player_intdrink') do
				Wait(0)
			end
			TaskPlayAnim(playerPed, 'mp_player_intdrink', 'loop_bottle', 1.0, -1.0, 2000, 0, 1, true, true, true)
			Wait(3000)
	        IsAnimated = false
	        ClearPedSecondaryTask(playerPed)
			DeleteObject(prop)

			local player = PlayerId()
			SetRunSprintMultiplierForPlayer(player, 1.2)
			SetSwimMultiplierForPlayer(player, 1.2)

			Wait(5000)

			SetRunSprintMultiplierForPlayer(player, 1.0)
			SetSwimMultiplierForPlayer(player, 1.0)
		end)
	end
end)


RegisterNetEvent('esx_hotdog:onEat')
AddEventHandler('esx_hotdog:onEat', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_cs_hotdog_01'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)

RegisterNetEvent('esx_taco:onEat')
AddEventHandler('esx_taco:onEat', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_taco_01'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

				Citizen.Wait(3000)
				IsAnimated = false
				ClearPedSecondaryTask(playerPed)
				DeleteObject(prop)
			end)
		end)

	end
end)


RegisterNetEvent('esx_taco2:onEat')
AddEventHandler('esx_taco2:onEat', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_taco_01'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

				TaskWanderStandard(playerPed, 10.0, 10)
				SetPedMovementClipset(playerPed, "move_m@drunk@moderatedrunk", true)
				SetTimecycleModifier("spectator4")
				SetTimecycleModifierStrength(0.89)
				ShakeGameplayCam('DRUNK_SHAKE', 5.0)
				Citizen.Wait(15000)
				SetPedMotionBlur(playerPed, true)
				ShakeGameplayCam('DRUNK_SHAKE', 10.0)

				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)



			
				Wait(60000)
				ClearTimecycleModifier()
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ShakeGameplayCam('DRUNK_SHAKE', 0.0)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
			end)
		end)

	end
end)

RegisterNetEvent('esx_taco3:onEat')
AddEventHandler('esx_taco3:onEat', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'prop_taco_01'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.028, 0.001, 10.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)

				TaskWanderStandard(playerPed, 10.0, 10)
				SetPedMovementClipset(playerPed, "move_m@drunk@moderatedrunk", true)
				SetTimecycleModifier("spectator4")
				SetTimecycleModifierStrength(0.89)
				ShakeGameplayCam('DRUNK_SHAKE', 20.0)
				Citizen.Wait(15000)
				SetPedMotionBlur(playerPed, true)
				ShakeGameplayCam('DRUNK_SHAKE', 30.0)

				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)



			
				Wait(60000)
				ClearTimecycleModifier()
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ShakeGameplayCam('DRUNK_SHAKE', 0.0)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
			end)
		end)

	end
end)


----------------------newfood


RegisterNetEvent('esx_basicneeds:onEatbaklava')
AddEventHandler('esx_basicneeds:onEatbaklava', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)




RegisterNetEvent('esx_basicneeds:onEatcherrypie')
AddEventHandler('esx_basicneeds:onEatcherrypie', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)




RegisterNetEvent('esx_basicneeds:onEatsushiplatter')
AddEventHandler('esx_basicneeds:onEatsushiplatter', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)




RegisterNetEvent('esx_basicneeds:onEaticecreammix')
AddEventHandler('esx_basicneeds:onEaticecreammix', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)



RegisterNetEvent('esx_basicneeds:onEatstrawberryicecream')
AddEventHandler('esx_basicneeds:onEatstrawberryicecream', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onEaticecreamsandwich')
AddEventHandler('esx_basicneeds:onEaticecreamsandwich', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onEatultimatedesert')
AddEventHandler('esx_basicneeds:onEatultimatedesert', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)



RegisterNetEvent('esx_basicneeds:onEatpearlscrepe')
AddEventHandler('esx_basicneeds:onEatpearlscrepe', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)



RegisterNetEvent('esx_basicneeds:onEatbraisedseabass')
AddEventHandler('esx_basicneeds:onEatbraisedseabass', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)


RegisterNetEvent('esx_basicneeds:onEatwaffle')
AddEventHandler('esx_basicneeds:onEatwaffle', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)


RegisterNetEvent('esx_basicneeds:onEatchocolatecrepe')
AddEventHandler('esx_basicneeds:onEatchocolatecrepe', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onEatstrawberryyogurt')
AddEventHandler('esx_basicneeds:onEatstrawberryyogurt', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onEatseafoodpasta')
AddEventHandler('esx_basicneeds:onEatseafoodpasta', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)


RegisterNetEvent('esx_basicneeds:onEatsmokedsalamon')
AddEventHandler('esx_basicneeds:onEatsmokedsalamon', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)

RegisterNetEvent('esx_basicneeds:onEatchocolateicecream')
AddEventHandler('esx_basicneeds:onEatchocolateicecream', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)


RegisterNetEvent('esx_basicneeds:onEatmexicantilapia')
AddEventHandler('esx_basicneeds:onEatmexicantilapia', function(prop_name)
	if not IsAnimated then
		prop_name = prop_name or 'ng_proc_food_ornge1a'
		IsAnimated = true

		Citizen.CreateThread(function()
			local playerPed = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(playerPed))
			local prop = CreateObject(GetHashKey(prop_name), x, y, z + 0.2, true, true, true)
			local boneIndex = GetPedBoneIndex(playerPed, 18905)
			AttachEntityToEntity(prop, playerPed, boneIndex, 0.12, 0.045, 0.06, 45.0, 175.0, 0.0, true, true, false, true, 1, true)

			ESX.Streaming.RequestAnimDict('mp_player_inteat@burger', function()
				TaskPlayAnim(playerPed, 'mp_player_inteat@burger', 'mp_player_int_eat_burger_fp', 8.0, -8, -1, 49, 0, 0, 0, 0)
				
				SetPedMotionBlur(playerPed, true)
				local player = PlayerId()
				SetRunSprintMultiplierForPlayer(player, 1.3)
				SetSwimMultiplierForPlayer(player, 1.3)
			  
				Citizen.Wait(3000)
				IsAnimated = false
				DeleteObject(prop)

				Wait(60000)
				ResetScenarioTypesEnabled()
				ResetPedMovementClipset(GetPlayerPed(-1), 0)
				SetPedIsDrunk(GetPlayerPed(-1), false)
				SetPedMotionBlur(GetPlayerPed(-1), false)
				ClearPedTasksImmediately(GetPlayerPed(-1))
				SetRunSprintMultiplierForPlayer(player, 1.0)
				SetSwimMultiplierForPlayer(player, 1.0)
				
			end)
		end)

	end
end)

