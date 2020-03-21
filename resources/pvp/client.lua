Citizen.CreateThread(function()
	while true do
		Citizen.Wait(0)
		for i = 0,255 do
			if NetworkIsPlayerActive(i) then
				SetCanAttackFriendly(GetPlayerPed(i), true, true)
				NetworkSetFriendlyFireOption(true)
			end
		end
	end
end)