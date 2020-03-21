--######################
--######################

RegisterNetEvent("TrevLol")
AddEventHandler("TrevLol",function()
    DisplayOnscreenKeyboard(false, "FMMC_KEY_TIP8", "", "", "", "", "", 20)
    local input = true
    Citizen.CreateThread(function()
    while input do
        if input == true then
            HideHudAndRadarThisFrame()
            if UpdateOnscreenKeyboard() == 3 then
                input = false
            elseif UpdateOnscreenKeyboard() == 1 then
                local inputText = GetOnscreenKeyboardResult()
                if string.len(inputText) > 0 then
                    TriggerServerEvent('TrevNotify', inputText)
                    input = false
                else
                    DisplayOnscreenKeyboard(false, "FMMC_KEY_TIP8", "", "", "", "", "", 20)
                end
            elseif UpdateOnscreenKeyboard() == 2 then
                input = false
            end
        end
        Citizen.Wait(0)
    end
end)
end)

RegisterNetEvent('TrevNotifyText')
AddEventHandler('TrevNotifyText',function(inputText)

SetNotificationTextEntry("STRING");
AddTextComponentString(inputText);
SetNotificationMessage("CHAR_TREVOR", "CHAR_TREVOR", true, 1, "T-Dog", "");
DrawNotification(false, true);
end)

--######################
--######################

RegisterNetEvent("LamarLol")
AddEventHandler("LamarLol",function()
    DisplayOnscreenKeyboard(false, "FMMC_KEY_TIP8", "", "", "", "", "", 20)
    local input = true
    Citizen.CreateThread(function()
    while input do
        if input == true then
            HideHudAndRadarThisFrame()
            if UpdateOnscreenKeyboard() == 3 then
                input = false
            elseif UpdateOnscreenKeyboard() == 1 then
                local inputText = GetOnscreenKeyboardResult()
                if string.len(inputText) > 0 then
                    TriggerServerEvent('LamarNotify', inputText)
                    input = false
                else
                    DisplayOnscreenKeyboard(false, "FMMC_KEY_TIP8", "", "", "", "", "", 20)
                end
            elseif UpdateOnscreenKeyboard() == 2 then
                input = false
            end
        end
        Citizen.Wait(0)
    end
end)
end)

RegisterNetEvent('LamarNotifyText')
AddEventHandler('LamarNotifyText',function(inputText)

SetNotificationTextEntry("STRING");
AddTextComponentString(inputText);
SetNotificationMessage("CHAR_LAMAR", "CHAR_LAMAR", true, 1, "LD", "");
DrawNotification(false, true);
end)