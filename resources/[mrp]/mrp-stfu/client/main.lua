local isTalkDisabled = false

function ShowInfo(text)
	SetNotificationTextEntry("STRING")
	AddTextComponentString(text)
	DrawNotification(false, false)
end

function STFU()
    local player = PlayerId()
    SetPlayerTalkingOverride(player, false)
    isTalkDisabled = true
end

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        if NetworkIsPlayerTalking(player) then
            ShowInfo("~r~In game voice not allowed.")
        end
        if isTalkDisabled == false then
            STFU()
        end
    end
end)