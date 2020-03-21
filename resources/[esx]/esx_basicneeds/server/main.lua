ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('bread', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('bread', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_bread'))
end)

ESX.RegisterUsableItem('chocolate', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chocolate', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 40000)
	TriggerClientEvent('esx_basicneeds:onEatChocolate', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_chocolate'))
end)

ESX.RegisterUsableItem('sandwich', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sandwich', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 150000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_basicneeds:onEatSandwich', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_sandwich'))
end)

ESX.RegisterUsableItem('hamburger', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('hamburger', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 350000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 70000)
	TriggerClientEvent('esx_basicneeds:onEat', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_hamburger'))
end)

ESX.RegisterUsableItem('jello', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('jello', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 300000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 300000)
	TriggerClientEvent('esx_basicneeds:onEatjello', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_jello'))
end)

ESX.RegisterUsableItem('chips', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chips', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 25000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 30000)
	TriggerClientEvent('esx_basicneeds:onEatChips', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_chips'))
end)


ESX.RegisterUsableItem('cupcake', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cupcake', 1)

	TriggerClientEvent('esx_status:add', source, 'hunger', 25000)
	TriggerClientEvent('esx_status:add', source, 'thirst', 30000)
	TriggerClientEvent('esx_basicneeds:onEatcupcake', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_cupcake'))
end)


ESX.RegisterUsableItem('water', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('water', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 30000)
	TriggerClientEvent('esx_basicneeds:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_water'))
end)

ESX.RegisterUsableItem('cocacola', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cocacola', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 60000)
	TriggerClientEvent('esx_basicneeds:onDrinkCocaCola', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_cocacola'))
end)
-------------------------COFFEE
ESX.RegisterUsableItem('icetea', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('icetea', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 80000)
	TriggerClientEvent('esx_basicneeds:onDrinkIceTea', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_icetea'))
end)

ESX.RegisterUsableItem('icecoffee', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('icecoffee', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 400000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 100000)
	TriggerClientEvent('esx_basicneeds:onDrinkicecoffee', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_icecoffee'))
end)


ESX.RegisterUsableItem('fullwhite', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('fullwhite', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 400000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrinkfullwhite', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_fullwhite'))
end)


ESX.RegisterUsableItem('cappuccino', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cappuccino', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 400000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrinkcappuccino', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_cappuccino'))
end)


ESX.RegisterUsableItem('black', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('black', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 400000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrinkblack', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_black'))
end)


ESX.RegisterUsableItem('turkish', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('turkish', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 400000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrinkturkish', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_turkish'))
end)


ESX.RegisterUsableItem('pumpkin', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pumpkin', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 400000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrinkpumpkin', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_pumpkin'))
end)

ESX.RegisterUsableItem('latte', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('latte', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 400000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrinklatte', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_latte'))
end)


ESX.RegisterUsableItem('coffee', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('coffee', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 400000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 10000)
	TriggerClientEvent('esx_basicneeds:onDrinkCoffee', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_coffee'))
end)
---------------------
-------------------pearls
ESX.RegisterUsableItem('shellfishspecial', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('shellfishspecial', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatshellfishspecial', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_shellfishspecial'))
end)

ESX.RegisterUsableItem('freshmussels', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('freshmussels', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatfreshmussels', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_freshmussels'))
end)

ESX.RegisterUsableItem('mangojuice', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('mangojuice', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onDrinkmangojuice', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_mangojuice'))
end)


ESX.RegisterUsableItem('mangojuice', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('mangojuice', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onDrinkmangojuice', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_mangojuice'))
end)

ESX.RegisterUsableItem('mixedseafood', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('mixedseafood', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatmixedseafood', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_mixedseafood'))
end)


ESX.RegisterUsableItem('calamari', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('calamari', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatcalamari', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_calamari'))
end)
ESX.RegisterUsableItem('seafoodpizza', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('seafoodpizza', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatseafoodpizza', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_seafoodpizza'))
end)
ESX.RegisterUsableItem('pearlsturkishcoffee', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pearlsturkishcoffee', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onDrinkpearlsturkishcoffee', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_pearlsturkishcoffee'))
end)
ESX.RegisterUsableItem('pearlsclam', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pearlsclam', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatpearlsclam', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_pearlsclam'))
end)
ESX.RegisterUsableItem('seafoodcocktail', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('seafoodcocktail', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatseafoodcocktail', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_seafoodcocktail'))
end)
ESX.RegisterUsableItem('coconutshrimp', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('coconutshrimp', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatcoconutshrimp', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_coconutshrimp'))
end)


ESX.RegisterUsableItem('shellfishspecial', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('shellfishspecial', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatshellfishspecial', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_shellfishspecial'))
end)

----------------------
ESX.RegisterUsableItem('baklava', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('baklava', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatbaklava', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_baklava'))
end)

ESX.RegisterUsableItem('cherrypie', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('cherrypie', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatcherrypie', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_cherrypie'))
end)

ESX.RegisterUsableItem('sushiplatter', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('sushiplatter', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatsushiplatter', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_sushiplatter'))
end)

ESX.RegisterUsableItem('icecreammix', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('icecreammix', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEaticecreammix', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_icecreammix'))
end)

ESX.RegisterUsableItem('strawberryicecream', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('strawberryicecream', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatstrawberryicecream', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_strawberryicecream'))
end)

ESX.RegisterUsableItem('icecreamsandwich', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('icecreamsandwich', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEaticecreamsandwich', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_icecreamsandwich'))
end)

ESX.RegisterUsableItem('ultimatedesert', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('ultimatedesert', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatultimatedesert', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_ultimatedesert'))
end)

ESX.RegisterUsableItem('pearlscrepe', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('pearlscrepe', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatpearlscrepe', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_pearlscrepe'))
end)

ESX.RegisterUsableItem('braisedseabass', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('braisedseabass', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatbraisedseabass', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_braisedseabass'))
end)

ESX.RegisterUsableItem('waffle', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('waffle', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatwaffle', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_waffle'))
end)


ESX.RegisterUsableItem('chocolatecrepe', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chocolatecrepe', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatchocolatecrepe', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_chocolatecrepe'))
end)


ESX.RegisterUsableItem('strawberryyogurt', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('strawberryyogurt', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatstrawberryyogurt', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_strawberryyogurt'))
end)

ESX.RegisterUsableItem('seafoodpasta', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('seafoodpasta', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatseafoodpasta', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_seafoodpasta'))
end)

ESX.RegisterUsableItem('smokedsalamon', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('smokedsalamon', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatsmokedsalamon', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_smokedsalamon'))
end)

ESX.RegisterUsableItem('chocolateicecream', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('chocolateicecream', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatchocolateicecream', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_chocolateicecream'))
end)

ESX.RegisterUsableItem('mexicantilapia', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('mexicantilapia', 1)

	TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
	TriggerClientEvent('esx_basicneeds:onEatmexicantilapia', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_mexicantilapia'))
end)


-- Bar stuff
ESX.RegisterUsableItem('wine', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('wine', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 100000)
	TriggerClientEvent('esx_basicneeds:onDrinkWine', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_wine'))
end)

ESX.RegisterUsableItem('beer', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('beer', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 150000)
	TriggerClientEvent('esx_basicneeds:onDrinkBeer', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_beer'))
end)

ESX.RegisterUsableItem('vodka', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('vodka', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 350000)
	TriggerClientEvent('esx_basicneeds:onDrinkVodka', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_vodka'))
end)

ESX.RegisterUsableItem('whisky', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('whisky', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 250000)
	TriggerClientEvent('esx_basicneeds:onDrinkWhisky', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_whisky'))
end)

ESX.RegisterUsableItem('tequila', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('tequila', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 200000)
	TriggerClientEvent('esx_basicneeds:onDrinkTequila', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_tequila'))
end)

ESX.RegisterUsableItem('mleko', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('mleko', 1)
	TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_status:add', source, 'hunger', 20000)
	TriggerClientEvent('esx_status:add', source, 'drunk', -100000)
	TriggerClientEvent('esx_basicneeds:onDrinkMilk', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_milk'))
end)

-- Disco Stuff
ESX.RegisterUsableItem('gintonic', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('gintonic', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 150000)
	TriggerClientEvent('esx_basicneeds:onDrinkGin', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_gintonic'))
end)

ESX.RegisterUsableItem('absinthe', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('absinthe', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 400000)
	TriggerClientEvent('esx_basicneeds:onDrinkAbsinthe', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_absinthe'))
end)

ESX.RegisterUsableItem('champagne', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('champagne', 1)

	TriggerClientEvent('esx_status:add', source, 'drunk', 50000)
	TriggerClientEvent('esx_basicneeds:onDrinkChampagne', source)
	TriggerClientEvent('esx:showNotification', source, _U('used_champagne'))
end)

-- Cigarett
ESX.RegisterUsableItem('cigarett', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	local lighter = xPlayer.getInventoryItem('lighter')
	
		if lighter.count > 0 then
			xPlayer.removeInventoryItem('cigarett', 1)
			TriggerClientEvent('esx_cigarett:startSmoke', source)
		else
			TriggerClientEvent('esx:showNotification', source, ('You dont have a lighter'))
		end
end)



ESX.RegisterUsableItem('donut', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('donut', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 100000)
	TriggerClientEvent('esx_donut:onEat', source)
	TriggerClientEvent('esx:showNotification', source, 'you have used 1x donut')
end)

ESX.RegisterUsableItem('donut2', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('donut2', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_donut2:onEat', source)
	TriggerClientEvent('esx:showNotification', source, 'you have used 1x donut')
end)

ESX.RegisterUsableItem('taco4', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('taco4', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 5000000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 5000000)
	TriggerClientEvent('esx_taco4:onEat', source)
	TriggerClientEvent('esx:showNotification', source, 'you have used 1x taco')
end)

ESX.RegisterUsableItem('monster', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('monster', 1)

    TriggerClientEvent('esx_status:add', source, 'thirst', 200000)
	TriggerClientEvent('esx_monster:onDrink', source)
	TriggerClientEvent('esx:showNotification', source, 'you have used 1x monster')
end)


ESX.RegisterUsableItem('hotdog', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('hotdog', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 100000)
	TriggerClientEvent('esx_hotdog:onEat', source)
	TriggerClientEvent('esx:showNotification', source, 'you have used 1x hotdog')
end)

ESX.RegisterUsableItem('taco', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('taco', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 100000)
	TriggerClientEvent('esx_taco:onEat', source)
	TriggerClientEvent('esx:showNotification', source, 'you have used 1x taco')
end)

ESX.RegisterUsableItem('taco2', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('taco2', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 100000)
	TriggerClientEvent('esx_taco2:onEat', source)
	TriggerClientEvent('esx:showNotification', source, 'you have used 1x taco')
end)

ESX.RegisterUsableItem('taco3', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)

	xPlayer.removeInventoryItem('taco3', 1)

    TriggerClientEvent('esx_status:add', source, 'hunger', 200000)
    TriggerClientEvent('esx_status:add', source, 'thirst', 100000)
	TriggerClientEvent('esx_taco3:onEat', source)
	TriggerClientEvent('esx:showNotification', source, 'you have used 1x taco')
end)

TriggerEvent('es:addGroupCommand', 'heal', 'admin', function(source, args, user)
	-- heal another player - don't heal source
	if args[1] then
		local target = tonumber(args[1])
		
		-- is the argument a number?
		if target ~= nil then
			
			-- is the number a valid player?
			if GetPlayerName(target) then
				print('esx_basicneeds: ' .. GetPlayerName(source) .. ' is healing a player!')
				TriggerClientEvent('esx_basicneeds:healPlayer', target)
				TriggerClientEvent('chatMessage', target, "HEAL", {223, 66, 244}, "You have been healed!")
			else
				TriggerClientEvent('chatMessage', source, "HEAL", {255, 0, 0}, "Player not found!")
			end
		else
			TriggerClientEvent('chatMessage', source, "HEAL", {255, 0, 0}, "Incorrect syntax! You must provide a valid player ID")
		end
	else
		-- heal source
		print('esx_basicneeds: ' .. GetPlayerName(source) .. ' is healing!')
		TriggerClientEvent('esx_basicneeds:healPlayer', source)
	end
end, function(source, args, user)
	TriggerClientEvent('chatMessage', source, "HEAL", {255, 0, 0}, "Insufficient Permissions.")
end, {help = "Heal a player, or yourself - restores thirst, hunger and health."})



local win1 = 0  -- lottery ticket
local win2 = 60
local win3 = 100

-- locales --
local winText = "You won ~g~$"
local ticketEmpty = "Your ticket was ~r~empty"
-------------
ESX.RegisterUsableItem('lotteryticket', function(source)
	local src = source
	local xPlayer = ESX.GetPlayerFromId(src)
	local rndm = math.random(1,11)
	xPlayer.removeInventoryItem('lotteryticket', 1)

	if rndm == 1 then              -- WIN 1
		xPlayer.addMoney(win1)
		TriggerClientEvent('99kr-burglary:Sound', src, "LOCAL_PLYR_CASH_COUNTER_COMPLETE", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS")
		TriggerClientEvent('esx:showNotification', src, winText .. win1)
	end

	if rndm == 2 then              -- WIN 2
		xPlayer.addMoney(win2)
		TriggerClientEvent('99kr-burglary:Sound', src, "LOCAL_PLYR_CASH_COUNTER_COMPLETE", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS")
		TriggerClientEvent('esx:showNotification', src, winText .. win2)
	end

	if rndm == 3 then              -- WIN 3
		xPlayer.addMoney(win3)
		TriggerClientEvent('99kr-burglary:Sound', src, "LOCAL_PLYR_CASH_COUNTER_COMPLETE", "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS")
		TriggerClientEvent('esx:showNotification', src, winText .. win3)
	end

	if rndm >= 4 then
		TriggerClientEvent('99kr-burglary:Sound', src, "NO", "HUD_FRONTEND_DEFAULT_SOUNDSET")
		TriggerClientEvent('esx:showNotification', src, ticketEmpty)
	end

end)