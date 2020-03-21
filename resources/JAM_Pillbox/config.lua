JAM_Pillbox = {}
local JPB = JAM_Pillbox
TriggerEvent('esx:getSharedObject', function(obj) ESX = obj; end)

Citizen.CreateThread(function(...)
  while not ESX do
    TriggerEvent('esx:getSharedObject', function(obj) ESX = obj; end)
    Citizen.Wait(0)
  end
end)

JPB.HospitalPosition = vector3(306.69,-591.16,43.29)
JPB.LoadZoneDist = 80.0
JPB.DrawTextDist = 15.0
JPB.InteractDist = 5.0
JPB.MaxCapacity = 7
JPB.AutoHealTimer = 30 -- seconds
JPB.HealingTimer = 5 -- seconds
JPB.OnlineEMSTimerMultiplier = 2 -- if ems > MinEMSCount and player in bed, time for auto heal = AutoHealTimer*OnlineEMSTimerMultiplier

JPB.UseHospitalClothing = true
JPB.UsingSkeletalSystem = true
JPB.UsingProgressBars = true
JPB.UsingBasicNeeds = true

JPB.MinEMSCount = 1
JPB.EMSJobLabel = "Ambulance"

JPB.PushToTalkKey = "N"

JPB.ActionMarkers = {
  [1] = vector3(309.37,-592.32,43.28),
}

JPB.ActionText = {
  [1] = "~h~Press [~r~E~s~] to check yourself in.",
  [2] = "~h~Press [~r~E~s~] to lay down on the bed.",
}

JPB.Actions = {
  [1] = "Check In",
  [2] = "Lay Down",
}

JPB.BedLocations = {
  [1] = vector3(314.76,-584.07,44.10),
  [2] = vector3(317.58,-585.42,44.10),
  [3] = vector3(322.74,-587.1,44.10),
  [4] = vector3(311.17,-582.84,44.10),
  [5] = vector3(307.89,-581.39,44.10),
  [6] = vector3(313.82,-579.4,44.10),
  [7] = vector3(319.29,-581.38,44.1),
}

JPB.BedRotations = {
  [vector3(314.76,-584.07,44.10)] = vector3(90.0, 339, 0.0),
  [vector3(317.58,-585.42,44.10)] = vector3(90.0,  339.0, 0.0),
  [vector3(322.74,-587.1,44.10)] = vector3(90.0,  339.0, 0.0),
  [vector3(311.17,-582.84,44.10)] = vector3(90.0, 339.0, 0.0),
  [vector3(307.89,-581.39,44.10)] = vector3(90.0, 339.0, 0.0),
  [vector3(313.82,-579.4,44.10)] = vector3(90.0, 160.0, 0.0),
  [vector3(319.29,-581.38,44.1)] = vector3(90.0, 160.0, 0.0),
}

JPB.GetUpLocations = {
  [vector3(314.76,-584.07,44.10)] = vector4(315.76,-584.07,44.10,224.31),
  [vector3(317.58,-585.42,44.10)] = vector4(318.58,-585.42,44.10,224.31),
  [vector3(322.74,-587.1,44.10)] = vector4(323.74,-587.1,44.10,224.31),
  [vector3(311.17,-582.84,44.10)] = vector4(312.17,-582.84,44.10,224.31),
  [vector3(307.89,-581.39,44.10)] = vector4(308.89,-581.39,44.10,224.31),
  [vector3(313.82,-579.4,44.10)] = vector4(314.82,-579.4,44.10,224.31),
  [vector3(319.29,-581.38,44.1)] = vector4(320.29,-581.38,44.1,224.31),
}

JPB.Outfits = {
  patient_wear = {
    male = {
      ['tshirt_1'] = 15,  ['tshirt_2'] = 0,
      ['torso_1']  = 146, ['torso_2']  = 6,
      ['decals_1'] = 0,   ['decals_2'] = 0,
      ['arms']     = 0, ['pants_1']  = 20,
      ['pants_2']  = 0,   ['shoes_1']  = 34,
      ['shoes_2']  = 0,  ['chain_1']  = 0,
      ['chain_2']  = 0
    },
    female = {
      ['tshirt_1'] = 15,   ['tshirt_2'] = 0,
      ['torso_1']  = 141,  ['torso_2']  = 1,
      ['decals_1'] = 0,   ['decals_2'] = 0,
      ['arms']     = 0,  ['pants_1'] = 47,
      ['pants_2']  = 3,  ['shoes_1']  = 35,
      ['shoes_2']  = 0,   ['chain_1']  = 0,
      ['chain_2']  = 0
    }
  }
}