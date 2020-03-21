--[[local Keys = {
	["ESC"] = 322, ["F1"] = 288, ["F2"] = 289, ["F3"] = 170, ["F5"] = 166, ["F6"] = 167, ["F7"] = 168, ["F8"] = 169, ["F9"] = 56, ["F10"] = 57,
	["~"] = 243, ["1"] = 157, ["2"] = 158, ["3"] = 160, ["4"] = 164, ["5"] = 165, ["6"] = 159, ["7"] = 161, ["8"] = 162, ["9"] = 163, ["-"] = 84, ["="] = 83, ["BACKSPACE"] = 177,
	["TAB"] = 37, ["Q"] = 44, ["W"] = 32, ["E"] = 38, ["R"] = 45, ["T"] = 245, ["Y"] = 246, ["U"] = 303, ["P"] = 199, ["["] = 39, ["]"] = 40, ["ENTER"] = 18,
	["CAPS"] = 137, ["A"] = 34, ["S"] = 8, ["D"] = 9, ["F"] = 23, ["G"] = 47, ["H"] = 74, ["K"] = 311, ["L"] = 182,
	["LEFTSHIFT"] = 21, ["Z"] = 20, ["X"] = 73, ["C"] = 26, ["V"] = 0, ["B"] = 29, ["N"] = 249, ["M"] = 244, [","] = 82, ["."] = 81,
	["LEFTCTRL"] = 36, ["LEFTALT"] = 19, ["SPACE"] = 22, ["RIGHTCTRL"] = 70,
	["HOME"] = 213, ["PAGEUP"] = 10, ["PAGEDOWN"] = 11, ["DELETE"] = 178,
	["LEFT"] = 174, ["RIGHT"] = 175, ["TOP"] = 27, ["DOWN"] = 173,
	["NENTER"] = 201, ["N4"] = 108, ["N5"] = 60, ["N6"] = 107, ["N+"] = 96, ["N-"] = 97, ["N7"] = 117, ["N8"] = 61, ["N9"] = 118
}]]

ESX = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end

	while ESX.GetPlayerData().job == nil do
		Citizen.Wait(100)
	end

	PlayerData = ESX.GetPlayerData()
end)
 
RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	PlayerData = xPlayer
end)

RegisterNetEvent('esx:setJob')
AddEventHandler('esx:setJob', function(job)
	PlayerData.job = job
end)

-- RADIO ANIMATIONS --

Citizen.CreateThread(function()
	while true do
		Citizen.Wait( 0 )
		local ped = PlayerPedId()
		if PlayerData.job ~= nil and PlayerData.job.name == "police" then
			if DoesEntityExist( ped ) and not IsEntityDead( ped ) then
				if not IsPauseMenuActive() then 
					loadAnimDict( "random@arrests" )
					if IsControlJustReleased( 0, 19 ) then -- INPUT_CHARACTER_WHEEL (LEFT ALT)
						TriggerServerEvent('InteractSound_SV:PlayOnSource', 'off', 0.1)
						ClearPedTasks(ped)
						
					else
						if IsControlJustPressed( 0, 19 ) and not IsPlayerFreeAiming(PlayerId()) then -- INPUT_CHARACTER_WHEEL (LEFT ALT)
							TriggerServerEvent('InteractSound_SV:PlayOnSource', 'on', 0.1)
							TaskPlayAnim(ped, "random@arrests", "generic_radio_enter", 8.0, 2.0, -1, 50, 2.0, 0, 0, 0 )
						elseif IsControlJustPressed( 0, 19 ) and IsPlayerFreeAiming(PlayerId()) then -- INPUT_CHARACTER_WHEEL (LEFT ALT)
							TriggerServerEvent('InteractSound_SV:PlayOnSource', 'on', 0.1)
							TaskPlayAnim(ped, "random@arrests", "radio_chatter", 8.0, 2.0, -1, 50, 2.0, 0, 0, 0 )
						end 
						if IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "random@arrests", "generic_radio_enter", 3) then
							DisableActions(ped)
						elseif IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "random@arrests", "radio_chatter", 3) then
							DisableActions(ped)
						end
					end
				end 
			end
		end 
	end
end )

-- HOLD WEAPON HOLSTER ANIMATION --

Citizen.CreateThread( function()
	while true do 
		Citizen.Wait( 0 )
		local ped = PlayerPedId()
		if PlayerData.job ~= nil and PlayerData.job.name == "police" then
			if DoesEntityExist( ped ) and not IsEntityDead( ped ) and not IsPedInAnyVehicle(PlayerPedId(), true) then 
				DisableControlAction( 0, 20, true ) -- INPUT_MULTIPLAYER_INFO (Z)
				if not IsPauseMenuActive() then 
					loadAnimDict( "reaction@intimidation@cop@unarmed" )		
					if IsDisabledControlJustReleased( 0, 20 ) then -- INPUT_MULTIPLAYER_INFO (Z)
						ClearPedTasks(ped)
						SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true)
					else
						if IsDisabledControlJustPressed( 0, 20 ) then -- INPUT_MULTIPLAYER_INFO (Z)
							SetCurrentPedWeapon(ped, GetHashKey("WEAPON_UNARMED"), true) 
							TaskPlayAnim(ped, "reaction@intimidation@cop@unarmed", "intro", 8.0, 2.0, -1, 50, 2.0, 0, 0, 0 )
						end
						if IsEntityPlayingAnim(GetPlayerPed(PlayerId()), "reaction@intimidation@cop@unarmed", "intro", 3) then 
							DisableActions(ped)
						end
					end	
				end
			end 
		end 
	end
end )


-- DO NOT REMOVE THESE! --

--- DO NOT EDIT THIS
local holstered = true


function DisableActions(ped)
	DisableControlAction(1, 140, true)
	DisableControlAction(1, 141, true)
	DisableControlAction(1, 142, true)
	DisableControlAction(1, 37, true) -- Disables INPUT_SELECT_WEAPON (TAB)
	DisablePlayerFiring(ped, true) -- Disable weapon firing
end

function loadAnimDict( dict )
	while ( not HasAnimDictLoaded( dict ) ) do
		RequestAnimDict( dict )
		Citizen.Wait( 0 )
	end
end
