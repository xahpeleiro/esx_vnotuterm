ESX = nil

TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)

ESX.RegisterUsableItem('visaonoturna', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	  TriggerClientEvent('Nightvision', source) 
end)

ESX.RegisterUsableItem('visaotermica', function(source)
	local xPlayer = ESX.GetPlayerFromId(source)
	  TriggerClientEvent('Thermalvision', source)
end)
