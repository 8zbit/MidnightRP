SpawnStretcher = function()
    while not HasModelLoaded(Config.StretcherHash) do
        Citizen.Wait(0)

        RequestModel(Config.StretcherHash)
    end

    local networkedStretcher = CreateObject(Config.StretcherHash, Config.Storage["Spawn"], true, false, true)
    SetEntityHeading(networkedStretcher, 340.0)

    SetModelAsNoLongerNeeded(Config.StretcherHash)
end

LayStretcher = function(stretcherId, anim)
    local closestPlayer, closestPlayerDst = ESX.Game.GetClosestPlayer()

    if not DoesEntityExist(stretcherId) then
        return
    end
    
    if IsEntityAttached(PlayerPedId()) then
        return
    end

    if closestPlayer ~= -1 and closestPlayerDst <= 2.5 then
        if IsEntityPlayingAnim(GetPlayerPed(closestPlayer), Config.StretcherAnimation["lib"], Config.StretcherAnimation["anim"], 3) then
            return ESX.ShowNotification("Someone is already laying here!")
        end
    end

    while not HasAnimDictLoaded(Config.StretcherAnimation["lib"]) do
        Citizen.Wait(0)

        RequestAnimDict(Config.StretcherAnimation["lib"])
    end

    while not NetworkHasControlOfEntity(stretcherId) do
        NetworkRequestControlOfEntity(stretcherId)

        Citizen.Wait(0)
    end

    if anim then
        TaskPlayAnim(PlayerPedId(), Config.StretcherAnimation["lib"], Config.StretcherAnimation["anim"], 2.0, -8.0, -1, 1, 0, 0, 0, 0)

        Citizen.Wait(500)

        SetEntityCoords(PlayerPedId(), GetEntityCoords(stretcherId) + vector3(0.0, 0.0, 0.7))
        SetEntityRotation(PlayerPedId(), GetEntityRotation(stretcherId) + vector3(0.0, 0.0, -180.0))

        Citizen.Wait(500)

        SetEntityCoords(PlayerPedId(), GetEntityCoords(stretcherId) + vector3(0.0, 0.0, 0.7))
        SetEntityRotation(PlayerPedId(), GetEntityRotation(stretcherId) + vector3(0.0, 0.0, -180.0))
    else
        AttachEntityToEntity(PlayerPedId(), stretcherId, 0, 0, 0.0, 1.35, 0.0, 0.0, 180.0, 0.0, false, false, false, false, 2, true)
    end

    while true do
		Citizen.Wait(5)

		if not IsEntityPlayingAnim(PlayerPedId(), Config.StretcherAnimation["lib"], Config.StretcherAnimation["anim"], 3) then
			TaskPlayAnim(PlayerPedId(), Config.StretcherAnimation["lib"], Config.StretcherAnimation["anim"], 2.0, -8.0, -1, 1, 0, 0, 0, 0)
		end 

		if IsPedDeadOrDying(PlayerPedId()) then
            DetachEntity(PlayerPedId(), true, true)
            
            return
		end

		if IsControlJustPressed(0, 73) then
            DetachEntity(PlayerPedId(), true, true)

            local pushCoords = GetEntityCoords(stretcherId) + GetEntityForwardVector(stretcherId) * -1.5
            local fakeCoords = GetEntityCoords(stretcherId) + GetEntityForwardVector(stretcherId) * 5.0

            SetEntityCoords(PlayerPedId(), fakeCoords)

            Citizen.Wait(25)

            SetEntityCoords(PlayerPedId(), pushCoords)

            return
		end
	end
end

PushStretcher = function(stretcherId)
    if not DoesEntityExist(stretcherId) then
        return
    end

    if IsEntityAttached(stretcherId) then
        ESX.ShowNotification("Someone is already driving the stretcher!")
        return
    end

    while not HasAnimDictLoaded(Config.PushAnimation["lib"]) do
        Citizen.Wait(0)

        RequestAnimDict(Config.PushAnimation["lib"])
    end
    
    while not NetworkHasControlOfEntity(stretcherId) do
        NetworkRequestControlOfEntity(stretcherId)

        Citizen.Wait(0)
    end

    local teleportCoords = (GetEntityCoords(stretcherId) + GetEntityForwardVector(stretcherId) * -1.3) + vector3(0.0, 0.0, -0.9)

    SetEntityCoords(PlayerPedId(), teleportCoords)
    SetEntityRotation(PlayerPedId(), GetEntityRotation(stretcherId))

    AttachEntityToEntity(stretcherId, PlayerPedId(), -1, 0.0, 2.0, -0.45, 0.0, 0.0, 0.0, 0.0, false, false, false, false, 2, false)
    ProcessEntityAttachments(stretcherId)

    while IsEntityAttachedToEntity(stretcherId, PlayerPedId()) do
		Citizen.Wait(5)

        if not IsEntityPlayingAnim(PlayerPedId(), Config.PushAnimation["lib"], Config.PushAnimation["anim"], 3) then
			TaskPlayAnim(PlayerPedId(), Config.PushAnimation["lib"], Config.PushAnimation["anim"], 8.0, 8.0, -1, 50, 0, false, false, false)
		end

		if IsPedDeadOrDying(PlayerPedId()) then
			DetachEntity(stretcherId, true, true)
		end

        if IsControlJustPressed(0, 73) then
            ClearPedTasks(PlayerPedId())

            DetachEntity(stretcherId, true, true)
		end
    end
    
    RemoveAnimDict(Config.PushAnimation["lib"])
end

DrawScriptMarker = function(markerData)
    DrawMarker(markerData["type"] or 1, markerData["pos"] or vector3(0.0, 0.0, 0.0), 0.0, 0.0, 0.0, (markerData["type"] == 6 and -90.0 or markerData["rotate"] and -180.0) or 0.0, 0.0, 0.0, markerData["sizeX"] or 1.0, markerData["sizeY"] or 1.0, markerData["sizeZ"] or 1.0, markerData["r"] or 1.0, markerData["g"] or 1.0, markerData["b"] or 1.0, 100, false, true, 2, false, false, false, false)
end