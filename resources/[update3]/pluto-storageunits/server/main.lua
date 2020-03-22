local ESX

cachedData = {
	["cbData"] = {},
}

TriggerEvent("esx:getSharedObject", function(library) 
	ESX = library 
end)

if Config.CreateDBTable then
	local sqlQuery = {}
	MySQL.ready(function()
		table.insert(sqlQuery, function(callback)
            MySQL.Async.execute([[
				CREATE TABLE IF NOT EXISTS `pluto_storageunits` (
					`storageId` varchar(50) NOT NULL,
					`storageInventory` longtext NOT NULL,
					`storagePlace` varchar(50) NOT NULL,
					`storageOwner` varchar(50) NOT NULL,
					PRIMARY KEY (`storageId`)
				) ENGINE=InnoDB DEFAULT CHARSET=latin1;
			]], {}, function(rowsChanged)
                callback(rowsChanged > 0)
            end)
        end)

		Async.parallel(sqlQuery, function(responses)
			if #responses >= #sqlQuery then
				print("Created table [pluto_storageunits] in db.")
			end
		end)
    end)
end

ESX.RegisterServerCallback("pluto-storageunits:buyStorage", function(source, cb, storagePlace)
	local player = ESX.GetPlayerFromId(source)
	local playerMoney = player.getMoney()
	if not player then return cb(false) end

	if playerMoney < Config.Coords[storagePlace]["cost"] then TriggerClientEvent("esx:showNotification", source, "Not enough money") return cb(false) end

	local sqlQuery = [[
		INSERT
			INTO
		pluto_storageunits
			(storageId, storageInventory, storagePlace, storageOwner)
		VALUES
			(@storageId, @storageInventory, @storagePlace, @storageOwner)
	]]

	local storageId = "storage-"..math.random(11111111, 99999999)
	local storageTable = {}

	MySQL.Async.execute(sqlQuery, {
		["@storageId"] = storageId,
		["@storageInventory"] = json.encode(storageTable),
		["@storagePlace"] = storagePlace,		
		["@storageOwner"] = player["identifier"]
	}, function(rowsChanged)
		if rowsChanged > 0 then
			player.removeMoney(Config.Coords[storagePlace]["cost"])
			cb(storageId)
		else
			cb(false)
		end
	end)
end)



ESX.RegisterServerCallback("pluto-storageunits:fetchInventory", function(source, cb, storageId)
	FetchStorageUnit(storageId, function(fetchedData)

		if fetchedData then

			local menuElements = {
				{
					["label"] = "Put in",
					["action"] = "add"
				},
			}

			for _, itemData in ipairs(fetchedData) do

				table.insert(menuElements, {
					["label"] = itemData["label"] .. "-" ..itemData["amount"],
					["realLabel"] = itemData["label"],
					["item"] = itemData["item"],
					["amount"] = itemData["amount"],
					["action"] = "take"
				})
			end

			cb(menuElements)

		else

			cb(false)

		end
	end)
end)

ESX.RegisterServerCallback("pluto-storageunits:removeItem", function(source, cb, itemData, storageId)
	local player = ESX.GetPlayerFromId(source)["identifier"]
	local xPlayer = ESX.GetPlayerFromId(source)

	if player then
		RemoveItem(player, itemData, storageId, function(removedItem)
			if removedItem then
				xPlayer.addInventoryItem(itemData["item"], itemData["amount"])
				cb(true)
			else
				cb(false)
			end
		end)
	else
		cb(false)
	end
end)

ESX.RegisterServerCallback("pluto-storageunits:addItem", function(source, cb, itemData, storageId)

	local player = ESX.GetPlayerFromId(source)["identifier"]
	local xPlayer = ESX.GetPlayerFromId(source)

	if player then

		AddItem(player, itemData, storageId, function(addedItem)

			if addedItem then
				xPlayer.removeInventoryItem(itemData["item"], itemData["amount"])
				cb(true)
			else
				cb(false)
			end

		end)

	else

		cb(false)

	end

end)

ESX.RegisterServerCallback("pluto-storageunits:fetchStorages", function(source, cb, storagePlace)
	FetchStorages(storagePlace, function(fetchedData)
		if fetchedData then
			cb(fetchedData)
		else
			cb(false)
		end
	end)
end)


ESX.RegisterServerCallback("pluto-storageunits:fetchOwnedStorages", function(source, cb)
	local player = ESX.GetPlayerFromId(source)
	if not player then return cb(false) end
	FetchOwnedStorages(player["identifier"], function(fetchedData)
		if fetchedData then
			cb(fetchedData)
		else
			cb(false)
		end
	end)
end)

ESX.RegisterServerCallback("pluto-storageunits:buyKey", function(source, cb)
	local player = ESX.GetPlayerFromId(source)
	local playerMoney = player.getMoney()
	if not player then return cb(false) end
	if playerMoney >= Config.KeyPrice then
		player.removeMoney(Config.KeyPrice)
		cb(true)
	else
		cb(false)
	end
end)

RemoveItem = function(player, removeItemData, storageId, cb)
	FetchStorageUnit(storageId, function(fetchedItems)
			
		if fetchedItems then

			local updatedItems = {}

			for _, itemData in ipairs(fetchedItems) do

				if itemData["item"] ~= removeItemData["item"] then
					table.insert(updatedItems, {
						["label"] = itemData["label"],
						["item"] = itemData["item"],
						["amount"] = itemData["amount"]
					})
				elseif itemData["item"] == removeItemData["item"] and itemData["amount"] > removeItemData["amount"] then
					table.insert(updatedItems, {
						["label"] = itemData["label"],
						["item"] = itemData["item"],
						["amount"] = itemData["amount"] - removeItemData["amount"]
					})
				end
			end

			local sqlQuery = [[
				UPDATE
					pluto_storageunits
				SET
					storageInventory = @storageInventory
				WHERE
					storageId = @storageId
			]]

			MySQL.Async.execute(sqlQuery, {
				["@storageInventory"] = json.encode(updatedItems),
				["@storageId"] = storageId
			}, function(rowsChanged)
				if rowsChanged > 0 then
					cb(true)
				else
					cb(false)
				end
			end)

		else
			cb(false)
		end
	end)
end

AddItem = function(player, newItemData, storageId, cb)
	FetchStorageUnit(storageId, function(fetchedItems)
		
		local newItems = {}
		local added = false

		if fetchedItems then

			print(#fetchedItems)

			if #fetchedItems > 0 then

				for _, itemData in ipairs(fetchedItems) do

					if itemData["item"] == newItemData["item"] then
						print("inte samma")
						table.insert(newItems, {
							["label"] = itemData["label"],
							["item"] = itemData["item"],
							["amount"] = itemData["amount"] + newItemData["amount"]
						})
						added = true
					else
						table.insert(newItems, {
							["label"] = itemData["label"],
							["item"] = itemData["item"],
							["amount"] = itemData["amount"]
						})
					end
				end
				if not added then
					table.insert(newItems, {
						["label"] = newItemData["label"],
						["item"] = newItemData["item"],
						["amount"] = newItemData["amount"]
					})
				end
			else
				print("inga items")
				table.insert(newItems, {
					["label"] = newItemData["label"],
					["item"] = newItemData["item"],
					["amount"] = newItemData["amount"]
				})
			end
		
			local sqlQuery = [[
				UPDATE
					pluto_storageunits
				SET
					storageInventory = @storageInventory
				WHERE
					storageId = @storageId
			]]

			MySQL.Async.execute(sqlQuery, {
				["@storageInventory"] = json.encode(newItems),
				["@storageId"] = storageId
			}, function(rowsChanged)
				if rowsChanged > 0 then
					cb(true)
				else
					cb(false)
				end
			end)
		else
			ESX.Trace("Something didn't go right.")
		end
	end)
end

FetchStorages = function(storagePlace, cb)
	local fetchSqlQuery = [[
		SELECT
			storageId
		FROM
			pluto_storageunits
		WHERE
			storagePlace = @storagePlace
	]]

	MySQL.Async.fetchAll(fetchSqlQuery, {
		["storagePlace"] = storagePlace
	}, function(retrievedStorages)
		if not retrievedStorages[1] then return cb(false) end

		if cb then
			cb(retrievedStorages)
		end
	end)
end

FetchOwnedStorages = function(player, cb)

	local fetchSqlQuery = [[
		SELECT
			*
		FROM
			pluto_storageunits
		WHERE
			storageOwner = @storageOwner
	]]

	MySQL.Async.fetchAll(fetchSqlQuery, {
		["@storageOwner"] = player
	}, function(retrievedStorages)
		if not retrievedStorages[1] then return cb(false) end

		if cb then
			cb(retrievedStorages)
		end
	end)
end

FetchStorageUnit = function(storageId, cb)

	local fetchSqlQuery = [[
		SELECT
			storageInventory
		FROM
			pluto_storageunits
		WHERE
			storageId = @storageId
	]]

	MySQL.Async.fetchAll(fetchSqlQuery, {
		["@storageId"] = storageId
	}, function(retrievedStorage)
		if not retrievedStorage[1] then return cb(false) end

		if cb then
			for _, decodeData in pairs(retrievedStorage) do
				local decodedItems = json.decode(decodeData["storageInventory"])

				cb(decodedItems)
			end
		end
	end)
end