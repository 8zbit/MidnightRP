-------------------------------------
------- Created by T1GER#9080 -------
------------------------------------- 

Config = {}

-- Police Settings:
Config.PoliceDatabaseName = "police"	-- set the exact name from your jobs database for police
Config.PoliceNotfiyEnabled = true		-- police notification upon truck robbery enabled (true) or disabled (false)
Config.PoliceBlipShow = true			-- enable or disable blip on map on police notify
Config.PoliceBlipTime = 30				-- miliseconds that blip is active on map (this value is multiplied with 4 in the script)
Config.PoliceBlipRadius = 50.0			-- set radius of the police notify blip
Config.PoliceBlipAlpha = 250			-- set alpha of the blip
Config.PoliceBlipColor = 5				-- set blip color

-- Job Settings:
Config.CooldownTime = 60					-- Set cooldown time for doing drug jobs in minutes
Config.HackerDevice = "hackerDevice"		-- Name in database for hacker device
Config.HackingBlocks = 5					-- Amount of code-blocks, player needs to match per side.
Config.HackingTime = 30						-- Amount of time player has to complete the minigame.
Config.JobVan = 'rumpo2'					-- spawn name for job van

-- List of Drugs:
Config.ListOfDrugs = {
	{ drug = 'opium', label = 'opium', Enabled = true, BuyPrice = 5500, MinReward = 1, MaxReward = 3 },
	{ drug = 'mdma', label = 'mdma', Enabled = true, BuyPrice = 4000, MinReward = 2, MaxReward = 6 },
	{ drug = 'hashish', label = 'hashish', Enabled = true, BuyPrice = 2500, MinReward = 4, MaxReward = 10 },
}

-- Job Location & Settings:
Config.Jobs = {
    { 
		Spot = vector3(-219.13305664063,6382.3969726563,31.604875564575),
		Heading = 46.104721069336,
		LockpickPos = vector3(-220.72117614746,6381.3217773438,31.556158065796),
		LockpickHeading = 316.11254882812,
		InProgress = false,
		VanSpawned = false,
		GoonsSpawned = false,
		JobPlayer = false,
		Goons = {
			NPC1 = { x = -224.59748840332, y = 6383.2241210938, z = 31.51745223999, h = 347.59951782226, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_PISTOL', },
			NPC2 = { x = -222.18724060059, y = 6390.8276367188, z = 31.731483459473, h = 132.96998596192, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_PISTOL', },
			NPC3 = { x = -207.90756225586, y = 6375.7329101563, z = 31.543397903442, h = 77.105667114258, ped = 'G_M_Y_SalvaBoss_01', animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base', animName = 'base', weapon = 'WEAPON_PISTOL' },
			NPC4 = { x = -215.0399017334, y = 6369.32421875, z = 31.49330329895, h = 3.3780143260956, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_ASSAULTRIFLE', },
			NPC5 = { x = -225.0399017334, y = 6369.32421875, z = 31.49330329895, h = 3.3780143260956, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_ASSAULTRIFLE', },
			NPC6 = { x = -235.0399017334, y = 6369.32421875, z = 31.49330329895, h = 3.3780143260956, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_ASSAULTRIFLE', },
			NPC7 = { x = -205.0399017334, y = 6369.32421875, z = 31.49330329895, h = 3.3780143260956, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_ASSAULTRIFLE', },
			NPC8 = { x = -221.62728881836, y = 6375.7763671875, z = 35.193054199219, h = 36.372509002686, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_ASSAULTRIFLE', }
		}
	},
	{ 
		Spot = vector3(-679.55017089844,5797.9360351563,17.330942153931),
		Heading = 243.62330627442,
		LockpickPos = vector3(-678.30072021484,5799.3623046875,17.330938339233),
		LockpickHeading = 158.37776184082,
		InProgress = false,
		VanSpawned = false,
		GoonsSpawned = false,
		JobPlayer = false,
		Goons = {
			NPC1 = { x = -679.2060546875, y = 5801.8061523438, z = 19.747180938721, h = 188.85772705078, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_PISTOL', },
			NPC2 = { x = -684.60620117188, y = 5796.0415039063, z = 17.330934524536, h = 155.99533081054, ped = 'G_M_Y_MexGang_01', animDict = 'rcmme_amanda1', animName = 'stand_loop_cop', weapon = 'WEAPON_MICROSMG', },
			NPC3 = { x = -679.90759277344, y = 5796.826171875, z = 17.330947875977, h = 133.18479919434, ped = 'G_M_Y_SalvaBoss_01', animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base', animName = 'base', weapon = 'WEAPON_ASSAULTRIFLE' },
			NPC4 = { x = -689.90759277344, y = 5796.826171875, z = 17.330947875977, h = 133.18479919434, ped = 'G_M_Y_SalvaBoss_01', animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base', animName = 'base', weapon = 'WEAPON_ASSAULTRIFLE' },
			NPC5 = { x = -659.90759277344, y = 5796.826171875, z = 17.330947875977, h = 133.18479919434, ped = 'G_M_Y_SalvaBoss_01', animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base', animName = 'base', weapon = 'WEAPON_ASSAULTRIFLE' },
			NPC6 = { x = -649.90759277344, y = 5796.826171875, z = 17.330947875977, h = 133.18479919434, ped = 'G_M_Y_SalvaBoss_01', animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base', animName = 'base', weapon = 'WEAPON_ASSAULTRIFLE' },
			NPC7 = { x = -669.90759277344, y = 5796.826171875, z = 17.330947875977, h = 133.18479919434, ped = 'G_M_Y_SalvaBoss_01', animDict = 'amb@world_human_leaning@male@wall@back@legs_crossed@base', animName = 'base', weapon = 'WEAPON_ASSAULTRIFLE' },
			NPC8 = { x = -676.41986083984, y = 5790.3002929688, z = 17.330978393555, h = 238.11218261718, ped = 'G_M_Y_Lost_02', animDict = 'amb@world_human_cop_idles@female@base', animName = 'base', weapon = 'WEAPON_ASSAULTRIFLE', }
		}
	},
}

-- Job Delivery Location:
Config.DeliverySpot = {
	vector3(1243.6381835938,-3263.3635253906,5.5918521881104),
}

-- Job Delivery Marker Setting:
Config.DeliveryDrawDistance  = 50.0
Config.DeliveryMarkerType  = 27
Config.DeliveryMarkerScale  = { x = 5.0, y = 5.0, z = 1.0 }
Config.DeliveryMarkerColor  = { r = 240, g = 52, b = 52, a = 100 }

-- Drug Sale Settings:
Config.maxCap = 150								-- max amount of drugs to be sold per server restart, to disable do not set to 0, instead set to 999999
Config.DrugSaleCooldown = 5						-- Cooldown between each selling in seconds.
Config.SellDrugsBarText = "SELLING DRUGS"		-- Progress Bar Text for selling drugs
Config.SellDrugsTime = 3						-- time taken to negotiate with NPC in seconds
Config.Enable3DTextToSell = true				-- true = 3D text | false = HelpNotification
Config.ReceiveDirtyCash = true					-- true = dirty cash | false = normal cash
Config.opiumDrug = "opium1g"						-- item name in database 				
Config.mdmaDrug = "mdma1g"						-- item name in database 
Config.hashishDrug = "hashish4g"						-- item name in database
Config.CallPoliceChance = 2						-- 2 means 50%, 3 means 33%, 4 means 25% and etc

-- Set sell prices here. Remember, values are multiplied with 10, so 11 means $110, 7 means $70 and etc. etc.
Config.opiumSale = {
	min = 35,
	max = 40
}
Config.mdmaSale = {
	min = 30,
	max = 35
}	
Config.hashishSale = {
	min = 20,
	max = 25
}				

-- Conversion Settings:
Config.DrugEffects = {
	{ 
		UsableItem 				= "opium1g",						-- item name in database for usable item
		ProgressBarText			= "SMOKING HEROIN COCAINE",		-- progress bar text
		UsableTime 				= 5000,							-- Smoking time in MS
		EffectDuration 			= 30,							-- Duration for effect in seconds
		FasterSprint 			= false,							-- Enable or disable faster sprint while on drugs
		SprintValue 			= 1.2,							-- 1.0 is default
		MotionBlur 				= true,							-- Enable or disable motion blur while on drugs
		TimeCycleModifier		= true,							-- Enable or disable time cycle modifer while on drugs
		TimeCycleModifierType	= "spectator5",					-- Set type of time cycle modificer, see full list here: https://pastebin.com/kVPwMemE 
		UnlimitedStamina		= true,							-- Apply unlimited stamina while on drugs 
		BodyArmor				= true,						-- Apply Body Armor when taking drugs
		AddArmorValue			= 100,							-- Set value for body armor thats going to be added
		PlayerHealth			= true,						-- Apply health to player when taking drugs
		AddHealthValue			= 100,							-- Set value for player health thats going to be added
	},
	{ 
		UsableItem 				= "mdma1g",						-- item name in database for usable item
		ProgressBarText			= "SMOKING mdma",				-- progress bar text
		UsableTime 				= 5000,							-- item name in database for usable item
		EffectDuration 			= 30,							-- Duration for effect in seconds
		FasterSprint 			= true,						-- Enable or disable faster sprint while on drugs
		SprintValue 			= 1.7,							-- 1.0 is default
		MotionBlur 				= true,							-- Enable or disable motion blur while on drugs
		TimeCycleModifier		= true,							-- Enable or disable time cycle modifer while on drugs
		TimeCycleModifierType	= "spectator5",					-- Set type of time cycle modificer, see full list here: https://pastebin.com/kVPwMemE 
		UnlimitedStamina		= false,						-- Apply unlimited stamina while on drugs 
		BodyArmor				= false,						-- Apply Body Armor when taking drugs
		AddArmorValue			= 10,							-- Set value for body armor thats going to be added
		PlayerHealth			= true,							-- Apply health to player when taking drugs
		AddHealthValue			= 0,							-- Set value for player health thats going to be added
	},
	{ 
		UsableItem 				= "hashishjoint2g",					-- item name in database for usable item
		ProgressBarText			= "SMOKING HASH JOINT",				-- progress bar text
		UsableTime 				= 5000,							-- item name in database for usable item
		EffectDuration 			= 600,							-- Duration for effect in seconds
		FasterSprint 			= false,						-- Enable or disable faster sprint while on drugs
		SprintValue 			= 1.0,							-- 1.0 is default
		MotionBlur 				= true,							-- Enable or disable motion blur while on drugs
		TimeCycleModifier		= true,							-- Enable or disable time cycle modifer while on drugs
		TimeCycleModifierType	= "spectator5",					-- Set type of time cycle modificer, see full list here: https://pastebin.com/kVPwMemE 
		UnlimitedStamina		= false,						-- Apply unlimited stamina while on drugs 
		BodyArmor				= true,							-- Apply Body Armor when taking drugs
		AddArmorValue			= 50,							-- Set value for body armor thats going to be added
		PlayerHealth			= false,						-- Apply health to player when taking drugs
		AddHealthValue			= 10,							-- Set value for player health thats going to be added
	}
}

-- Conversion Settings:
Config.DrugConversion = {
	{ 
		UsableItem 				= "opiumbrick",					-- item name in database for usable item
		RewardItem 				= "opium10g",					-- item name in database for required item
		RewardAmount 			= {a = 6, b = 10},				-- Amount of RewardItem player receives. "a" is without scale and "b" is with scale
		MaxRewardItemInv		= {e = 44, f = 40},				-- Amount of RewardItem player can hold in inventory. "e" is without scale and "f" is with scale
		RequiredItem 			= "drugbags",					-- item name in database for required item
		RequiredItemAmount 		= {c = 6, d = 10},				-- Amount of RequiredItem for conversion. "c" is without scale and "d" is with scale
		HighQualityScale		= true,							-- enable/disable scale feature for the drugType
		hqscale					= "hqscale",					-- item name in database for hiqh quality scale item
		ProgressBarText			= "opium BRICK > opium 10G",		-- progress bar text
		ConversionTime			= 5000,							-- set conversion time in MS.
	},
	{ 
		UsableItem 				= "mdmabrick",					-- item name in database for usable item
		RewardItem 				= "mdma10g",					-- item name in database for required item
		RewardAmount 			= {a = 6, b = 10},				-- Amount of RewardItem player receives. "a" is without scale and "b" is with scale
		MaxRewardItemInv		= {e = 44, f = 40},				-- Amount of RewardItem player can hold in inventory. "e" is without scale and "f" is with scale
		RequiredItem 			= "drugbags",					-- item name in database for required item
		RequiredItemAmount 		= {c = 6, d = 10},				-- Amount of RequiredItem for conversion. "c" is without scale and "d" is with scale
		HighQualityScale		= true,							-- enable/disable scale feature for the drugType
		hqscale					= "hqscale",					-- item name in database for hiqh quality scale item
		ProgressBarText			= "mdma BRICK > mdma 10G",		-- progress bar text
		ConversionTime			= 5000,							-- set conversion time in MS.
	},
	{ 
		UsableItem 				= "hashishbrick",					-- item name in database for usable item
		RewardItem 				= "hashish20g",					-- item name in database for required item
		RewardAmount 			= {a = 8, b = 10},				-- Amount of RewardItem player receives. "a" is without scale and "b" is with scale
		MaxRewardItemInv		= {e = 44, f = 40},				-- Amount of RewardItem player can hold in inventory. "e" is without scale and "f" is with scale
		RequiredItem 			= "drugbags",					-- item name in database for required item
		RequiredItemAmount 		= {c = 8, d = 10},				-- Amount of RequiredItem for conversion. "c" is without scale and "d" is with scale
		HighQualityScale		= true,							-- enable/disable scale feature for the drugType
		hqscale					= "hqscale",					-- item name in database for hiqh quality scale item
		ProgressBarText			= "hashish BRICK > hashish 20G",		-- progress bar text
		ConversionTime			= 5000,							-- set conversion time in MS.
	},
	{ 
		UsableItem 				= "opium10g",					-- item name in database for usable item
		RewardItem 				= "opium1g",						-- item name in database for required item
		RewardAmount 			= {a = 6, b = 10},				-- Amount of RewardItem player receives. "a" is without scale and "b" is with scale
		MaxRewardItemInv		= {e = 44, f = 40},				-- Amount of RewardItem player can hold in inventory. "e" is without scale and "f" is with scale
		RequiredItem 			= "drugbags",					-- item name in database for required item
		RequiredItemAmount 		= {c = 6, d = 10},				-- Amount of RequiredItem for conversion. "c" is without scale and "d" is with scale
		HighQualityScale		= true,							-- enable/disable scale feature for the drugType
		hqscale					= "hqscale",					-- item name in database for hiqh quality scale item
		ProgressBarText			= "opium 10G > opium 1G",			-- progress bar text
		ConversionTime			= 5000,							-- set conversion time in MS.
	},
	{ 
		UsableItem 				= "mdma10g",					-- item name in database for usable item
		RewardItem 				= "mdma1g",						-- item name in database for required item
		RewardAmount 			= {a = 6, b = 10},				-- Amount of RewardItem player receives. "a" is without scale and "b" is with scale
		MaxRewardItemInv		= {e = 44, f = 40},				-- Amount of RewardItem player can hold in inventory. "e" is without scale and "f" is with scale
		RequiredItem 			= "drugbags",					-- item name in database for required item
		RequiredItemAmount 		= {c = 6, d = 10},				-- Amount of RequiredItem for conversion. "c" is without scale and "d" is with scale
		HighQualityScale		= true,							-- enable/disable scale feature for the drugType
		hqscale					= "hqscale",					-- item name in database for hiqh quality scale item
		ProgressBarText			= "mdma 10G > mdma 1G",			-- progress bar text
		ConversionTime			= 5000,							-- set conversion time in MS.
	},
	{ 
		UsableItem 				= "hashish20g",					-- item name in database for usable item
		RewardItem 				= "hashish4g",						-- item name in database for required item
		RewardAmount 			= {a = 4, b = 5},				-- Amount of RewardItem player receives. "a" is without scale and "b" is with scale
		MaxRewardItemInv		= {e = 46, f = 45},				-- Amount of RewardItem player can hold in inventory. "e" is without scale and "f" is with scale
		RequiredItem 			= "drugbags",					-- item name in database for required item
		RequiredItemAmount 		= {c = 4, d = 5},				-- Amount of RequiredItem for conversion. "c" is without scale and "d" is with scale
		HighQualityScale		= true,							-- enable/disable scale feature for the drugType
		hqscale					= "hqscale",					-- item name in database for hiqh quality scale item
		ProgressBarText			= "hashish 20G > hashish 4G",			-- progress bar text
		ConversionTime			= 5000,							-- set conversion time in MS.
	},
	{ 
		UsableItem 				= "hashish4g",						-- item name in database for usable item
		RewardItem 				= "hashishjoint2g",					-- item name in database for required item
		RewardAmount 			= 2,							-- Amount of RewardItem player receives
		MaxRewardItemInv		= {e = 44, f = 40},				-- Amount of RewardItem player can hold in inventory. "e" is without scale and "f" is with scale
		RequiredItem 			= "rolpaper",					-- item name in database for required item
		RequiredItemAmount 		= 2,							-- Amount of RequiredItem for conversion
		HighQualityScale		= false,						-- enable/disable scale feature for the drugType
		hqscale					= "hqscale",					-- item name in database for hiqh quality scale item
		ProgressBarText			= "hashish 4G > JOINT 2G",			-- progress bar text
		ConversionTime			= 5000,							-- set conversion time in MS.
	}
}

