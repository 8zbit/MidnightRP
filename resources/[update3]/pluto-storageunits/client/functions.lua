StorageMenu = function(storagePlace, storageData)
	local menuElements = {}
	table.insert(menuElements, {
		["label"] = "Buy Storage Unit - $" ..storageData["cost"],
		["action"] = "Buy"
	})
	ESX.TriggerServerCallback("pluto-storageunits:fetchStorages", function(fetchedStorages)
		if fetchedStorages then
			for i=1, #fetchedStorages, 1 do
				print(fetchedStorages[i]["storageId"])
				table.insert(menuElements, {
					["label"] = fetchedStorages[i]["storageId"],
					["action"] = fetchedStorages[i]["storageId"],
				})
			end
		end
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'storage_menu', {
			["title"]    = 'Storage units - ' ..storagePlace,
			["align"]    = 'center-left',
			["elements"] = menuElements
		}, function(menuData, menuHandle)
			if menuData["current"]["action"] ~= "Buy" then
				if exports["pluto-keys"]:HasKey(menuData["current"]["action"]) then
					OpenStorageUnit(menuData["current"]["action"])
				else
					ESX.ShowNotification("You don't have the key for this storage unit.")
				end
			else
				DrawBusySpinner("Buying Storage..")
			ESX.TriggerServerCallback("pluto-storageunits:buyStorage", function(bought)
				if bought then
					DrawBusySpinner("Purchase successful!")

					exports["pluto-keys"]:AddKey({
						["label"] = storagePlace.. " - " ..bought,
						["keyId"] = bought
					})

				else
					DrawBusySpinner("Purchse failed, please try again!")
				end
				Wait(1500)
				RemoveLoadingPrompt()
			end, storagePlace)
			end
			menuHandle.close()
		end, function(menuData, menuHandle)
			menuHandle.close()
		end)
	end, storagePlace)
end

LockSmith = function()
	local menuElements = {}
	
	ESX.TriggerServerCallback("pluto-storageunits:fetchOwnedStorages", function(fetchedStorages)
		print(fetchedStorages)
		if fetchedStorages then
			for i=1, #fetchedStorages, 1 do
				print(fetchedStorages[i]["storageId"])
				table.insert(menuElements, {
					["label"] = fetchedStorages[i]["storagePlace"] .. " - " ..fetchedStorages[i]["storageId"],
					["action"] = fetchedStorages[i]["storageId"],
				})
			end
		else
			table.insert(menuElements, {
				["label"] = "You don't own any storageunits.",
				["action"] = "none",
			})

		end
		ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'storage_menu', {
			["title"]    = "Purchase key for $"..Config.KeyPrice,
			["align"]    = 'center-left',
			["elements"] = menuElements
		}, function(menuData, menuHandle)
			if menuData["current"]["action"] ~= "none" then
				DrawBusySpinner("Buying Key...")
				Citizen.Wait(2500)

				ESX.TriggerServerCallback("pluto-storageunits:buyKey", function(proccesed)
					if proccesed then
						DrawBusySpinner("Purchase successful, key recieved.")
						exports["pluto-keys"]:AddKey({
							["label"] = menuData["current"]["label"],
							["keyId"] = menuData["current"]["action"]
						})
					else
						DrawBusySpinner("Failed to proccess purchase.")
					end
				end)

				Wait(1500)

				RemoveLoadingPrompt()
			end
			menuHandle.close()
		end, function(menuData, menuHandle)
			menuHandle.close()
		end)
	end)
end

OpenStorageUnit = function(storageId)

	ESX.TriggerServerCallback("pluto-storageunits:fetchInventory", function(fetchedData)
		if fetchedData then
			ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'key_menu',
				{
					["title"]    = storageId,
					["align"]    = 'center',
					["elements"] = fetchedData,
				},
				function(menuData, menuHandle)
					if menuData["current"]["action"] == "take" then
						if menuData["current"]["amount"] > 0 then
							ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'inventory_item_count_give', {
								title = 'Write amount you want to take?'
							}, function(dialogData, dialogMenu)
								local amount = tonumber(dialogData["value"])
								print(amount)
									if amount > 0 then
										print(menuData["current"]["amount"])
										if menuData["current"]["amount"] - amount >= 0 then
											TakeItem({
												["item"] = menuData["current"]["item"],
												["amount"] = amount,
												["label"] = menuData["current"]["realLabel"]
											}, storageId)
										else
											ESX.ShowNotification("Amount to high.")
										end
									else
										ESX.ShowNotification("You need to type a number and it needs to be over 0.")
									end
									ESX.UI.Menu.CloseAll()
									Wait(500)
									OpenStorageUnit(storageId)
								end, function(dialogData, dialogMenu)
							end)
						end
					elseif menuData["current"]["action"] == "add" then
						local inventoryTable = {}
						local inventory = ESX.GetPlayerData().inventory
						for i=1, #inventory, 1 do
							if inventory[i]["count"] > 0 then
								table.insert(inventoryTable, {
									["label"] = inventory[i]["label"] .. " - " .. inventory[i]["count"],
									["realLabel"] = inventory[i]["label"],
									["amount"] = inventory[i]["count"],
									["item"] = inventory[i]["name"],
									["action"] = "insert"
								})
							end
						end
						ESX.UI.Menu.Open('default', GetCurrentResourceName(), 'inventory_menu',
							{
								["title"]    = "Your inventory",
								["align"]    = 'center',
								["elements"] = inventoryTable,
							},
							function(menuData2, menuHandle2)
								if menuData2["current"]["action"] then
									if menuData2["current"]["amount"] > 0 then
										ESX.UI.Menu.Open('dialog', GetCurrentResourceName(), 'inventory_item_count_give', {
											title = 'Vad vill du skriva'
										}, function(dialogData2, dialogMenu2)
											local amount = tonumber(dialogData2["value"])
											if amount > 0 then
												if menuData2["current"]["amount"] - amount >= 0 then
													PutInItem({
														["item"] = menuData2["current"]["item"],
														["amount"] = amount,
														["label"] = menuData2["current"]["realLabel"]
													}, storageId)
												else
													ESX.ShowNotification("Amount to high.")
												end
											else
												ESX.ShowNotification("Needs to be over 0.")
											end
											ESX.UI.Menu.CloseAll()
											Wait(500)
											OpenStorageUnit(storageId)
											end, 
										function(dialogData2, dialogMenu2)
											dialogMenu2.close()
										end)
									end
								end
							end,
						function(menuData2, menuHandle2)
							menuHandle2.close()
						end)
					end
				end,
			function(menuData, menuHandle)
				menuHandle.close()
			end)
		else
			print("something bad happend")
		end
	end, storageId)

end

PutInItem = function(itemData, storageId)
	ESX.TriggerServerCallback("pluto-storageunits:addItem", function(added)
		if added then
			ESX.ShowNotification("Added "..itemData["amount"] .. " " ..itemData["label"].. " to unit")
		else
			print("Failed to put in item.")
		end
	end, itemData, storageId)
end

TakeItem = function(itemData, storageId)
    ESX.TriggerServerCallback("pluto-storageunits:removeItem", function(removed)
		if removed then
			ESX.ShowNotification("Took " ..itemData["amount"].." "..itemData["label"].." from unit.")
		else
			print("Failed to take item.")
		end
	end, itemData, storageId)
end

DrawBusySpinner = function(text)
	SetLoadingPromptTextEntry("STRING")
	AddTextComponentSubstringPlayerName(text)
	ShowLoadingPrompt(3)
end

DrawScriptMarker = function(markerData)
	DrawMarker(markerData["type"] or 1, markerData["pos"] or vector3(0.0, 0.0, 0.0), 0.0, 0.0, 0.0, (markerData["type"] == 6 and -90.0 or markerData["rotate"] and -180.0) or 0.0, 0.0, 0.0, markerData["sizeX"] or 1.0, markerData["sizeY"] or 1.0, markerData["sizeZ"] or 1.0, markerData["r"] or 1.0, markerData["g"] or 1.0, markerData["b"] or 1.0, 100, markerData["bob"] and true or false, true, 2, false, false, false, false)
end