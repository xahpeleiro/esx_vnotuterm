ESX              = nil
local PlayerData = {}

Citizen.CreateThread(function()
	while ESX == nil do
		TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
		Citizen.Wait(0)
	end
end)

local Nightvision = false
function setNightvision(noturna)
  Nightvision = noturna
end

Nightvision = true
RegisterNetEvent("Nightvision")
AddEventHandler("Nightvision", function()
	if (Nightvision) then
		SetNightvision(true)
		Nightvision = false
		local animDict = 'mp_masks@on_foot'
		local animName = 'put_on_mask'

		RequestAnimDict(animDict)

		while not HasAnimDictLoaded(animDict) do
			Citizen.Wait(10)
		end

		TaskPlayAnim(GetPlayerPed(-1), animDict, animName, 8.0, -8.0, -1, 50, 0, false, false, false)

			Citizen.Wait(800)

		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin.sex == 0 then
				local clothesSkin = {
            		['helmet_1'] = 116
						}
			  TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
			else
				local clothesSkin = {
            		['helmet_1'] = 116
        		}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				end
    end)
	else
		SetNightvision(false)
		Nightvision = true
		local animDict = 'missfbi4'
		local animName = 'takeoff_mask'

		RequestAnimDict(animDict)

		while not HasAnimDictLoaded(animDict) do
			Citizen.Wait(10)
		end

		TaskPlayAnim(GetPlayerPed(-1), animDict, animName, 8.0, -8.0, -1, 50, 0, false, false, false)

			Citizen.Wait(1000)

		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin.sex == 0 then
				local clothesSkin = {
            		['helmet_1'] = 117
						}
			  TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
			else
				local clothesSkin = {
            		['helmet_1'] = 117
        		}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				end
    end)
	end
end)
 
local Thermalvision = false
function SetThermalvision(termica)
  Thermalvision = termica
end

Thermalvision = true
RegisterNetEvent("Thermalvision")
AddEventHandler("Thermalvision", function()
	if (Thermalvision) then
		SetSeethrough(true)
		Thermalvision = false
		local animDict = 'mp_masks@on_foot'
		local animName = 'put_on_mask'

		RequestAnimDict(animDict)

		while not HasAnimDictLoaded(animDict) do
			Citizen.Wait(10)
		end

		TaskPlayAnim(GetPlayerPed(-1), animDict, animName, 8.0, -8.0, -1, 50, 0, false, false, false)

			Citizen.Wait(800)

		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin.sex == 0 then
				local clothesSkin = {
					['mask_1'] = 132, ['mask_2'] = 0,
					['helmet_1'] = -1
						}
			  TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
			else
				local clothesSkin = {
					['mask_1'] = 132, ['mask_2'] = 0, 
					['helmet_1'] = -1 
        		}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				end
    end)
		
	else
		SetSeethrough(false)
		Thermalvision = true
		local animDict = 'missfbi4'
		local animName = 'takeoff_mask'

		RequestAnimDict(animDict)

		while not HasAnimDictLoaded(animDict) do
			Citizen.Wait(10)
		end

		TaskPlayAnim(GetPlayerPed(-1), animDict, animName, 8.0, -8.0, -1, 50, 0, false, false, false)

			Citizen.Wait(1000)

		TriggerEvent('skinchanger:getSkin', function(skin)
			if skin.sex == 0 then
				local clothesSkin = {
            		['mask_1'] = 0, ['mask_2'] = 0
						}
			  TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
			else
				local clothesSkin = {
            		['mask_1'] = 0, ['mask_2'] 	= 0
        		}
				TriggerEvent('skinchanger:loadClothes', skin, clothesSkin)
				end
    end)
	end
end)
