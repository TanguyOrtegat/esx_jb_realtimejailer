local cJ = false
local IsPlayerUnjailed = false


--ESX base

Citizen.CreateThread(function()
    while ESX == nil do
        TriggerEvent('esx:getSharedObject', function(obj) ESX = obj end)
        Citizen.Wait(0)
    end
end)

RegisterNetEvent("esx_jb_jailer:JailPoliceStation1")
AddEventHandler("esx_jb_jailer:JailPoliceStation1", function(JailTime)
	if cJ == true then
		return
	end
	local PlayerPed = GetPlayerPed(-1)
	if DoesEntityExist(PlayerPed) then
		
		Citizen.CreateThread(function()
			local playerOldLoc = GetEntityCoords(PlayerPed, true)
			TriggerEvent('esx_society:setClothes', "police", "prison_wear")	
			SetEntityCoords(PlayerPed, 459.5500793457, -994.46508789063, 23.914855957031)--{x = 459.5500793457,y = -994.46508789063,z = 23.914855957031 },
			cJ = true
			IsPlayerUnjailed = false
			while JailTime > 0 and not IsPlayerUnjailed do
				local remainingjailseconds = JailTime/ 60
				local jailseconds =  math.floor(JailTime) % 60 
				local remainingjailminutes = remainingjailseconds / 60
				local jailminutes =  math.floor(remainingjailseconds) % 60
				local remainingjailhours = remainingjailminutes / 24
				local jailhours =  math.floor(remainingjailminutes) % 24
				local remainingjaildays = remainingjailhours / 365 
				local jaildays =  math.floor(remainingjailhours) % 365

				
				PlayerPed = GetPlayerPed(-1)
				-- RemoveAllPedWeapons(PlayerPed, true)
				-- SetEntityInvincible(PlayerPed, true)
				if IsPedInAnyVehicle(PlayerPed, false) then
					ClearPedTasksImmediately(PlayerPed)
				end
				if JailTime % 10 == 0 then
					if JailTime % 30 == 0 then
						TriggerEvent('chatMessage', 'SYSTEM', { 0, 0, 0 }, math.floor(jaildays).." jours, "..math.floor(jailhours).." heures,"..math.floor(jailminutes).." minutes, "..math.floor(jailseconds).." secondes avant d'être libéré.")
					end
				end
				Citizen.Wait(1000)
				local pL = GetEntityCoords(PlayerPed, true)
				local D = Vdist(459.5500793457, -994.46508789063, 23.914855957031, pL['x'], pL['y'], pL['z'])
				if D > 2 then -- distance#######################################################################################
					SetEntityCoords(PlayerPed, 459.5500793457, -994.46508789063, 23.914855957031)
				end
				JailTime = JailTime - 1.0
			end
			TriggerServerEvent('chatMessageEntered', "SYSTEM", { 0, 0, 0 }, GetPlayerName(PlayerId()) .." a été libéré de la prison.")
			TriggerServerEvent('esx_jb_jailer:UnJailplayer', GetPlayerServerId(PlayerId()))
			SetEntityCoords(PlayerPed, 432.95864868164, -981.41455078125, 29.710334777832)--{x = 432.95864868164,y = -981.41455078125,z = 29.710334777832 },
			cJ = false
			-- SetEntityInvincible(PlayerPed, false)
			TriggerEvent('esx_society:getPlayerSkin')
		end)
	end
end)

RegisterNetEvent("esx_jb_jailer:JailPoliceStation2")
AddEventHandler("esx_jb_jailer:JailPoliceStation2", function(JailTime)
	if cJ == true then
		return
	end
	local PlayerPed = GetPlayerPed(-1)
	if DoesEntityExist(PlayerPed) then
		
		Citizen.CreateThread(function()
			TriggerEvent('esx_society:setClothes', "police", "prison_wear")
			local playerOldLoc = GetEntityCoords(PlayerPed, true)
			SetEntityCoords(PlayerPed, 458.41693115234, -997.93572998047, 23.914854049683)-- {x = 458.41693115234,y = -997.93572998047,z = 23.914854049683 },
			cJ = true
			IsPlayerUnjailed = false
			while JailTime > 0 and not IsPlayerUnjailed do
				local remainingjailseconds = JailTime/ 60
				local jailseconds =  math.floor(JailTime) % 60 
				local remainingjailminutes = remainingjailseconds / 60
				local jailminutes =  math.floor(remainingjailseconds) % 60
				local remainingjailhours = remainingjailminutes / 24
				local jailhours =  math.floor(remainingjailminutes) % 24
				local remainingjaildays = remainingjailhours / 365 
				local jaildays =  math.floor(remainingjailhours) % 365
				PlayerPed = GetPlayerPed(-1)
				-- RemoveAllPedWeapons(PlayerPed, true)
				-- SetEntityInvincible(PlayerPed, true)
				if IsPedInAnyVehicle(PlayerPed, false) then
					ClearPedTasksImmediately(PlayerPed)
				end
				if JailTime % 10 == 0 then
					if JailTime % 30 == 0 then
						TriggerEvent('chatMessage', 'SYSTEM', { 0, 0, 0 }, math.floor(jaildays).." jours, "..math.floor(jailhours).." heures,"..math.floor(jailminutes).." minutes, "..math.floor(jailseconds).." secondes avant d'être libéré.")
					end
				end
				Citizen.Wait(1000)
				local pL = GetEntityCoords(PlayerPed, true)
				local D = Vdist(458.41693115234, -997.93572998047, 23.914854049683, pL['x'], pL['y'], pL['z'])
				if D > 2 then
					SetEntityCoords(PlayerPed, 458.41693115234, -997.93572998047, 23.914854049683)
				end
				JailTime = JailTime - 1.0
			end
			TriggerServerEvent('chatMessageEntered', "SYSTEM", { 0, 0, 0 }, GetPlayerName(PlayerId()) .." a été libéré de la prison.")
			TriggerServerEvent('esx_jb_jailer:UnJailplayer', GetPlayerServerId(PlayerId()))
			SetEntityCoords(PlayerPed, 432.95864868164, -981.41455078125, 29.710334777832)
			cJ = false
			-- SetEntityInvincible(PlayerPed, false)
			TriggerEvent('esx_society:getPlayerSkin')
		end)
	end
end)

RegisterNetEvent("esx_jb_jailer:JailPoliceStation3")
AddEventHandler("esx_jb_jailer:JailPoliceStation3", function(JailTime)
	if cJ == true then
		return
	end
	local PlayerPed = GetPlayerPed(-1)
	if DoesEntityExist(PlayerPed) then
		
		Citizen.CreateThread(function()
			TriggerEvent('esx_society:setClothes', "police", "prison_wear")
			local playerOldLoc = GetEntityCoords(PlayerPed, true)
			SetEntityCoords(PlayerPed, 458.29275512695, -1001.5576782227, 23.914852142334)-- {x = 458.29275512695,y = -1001.5576782227,z = 23.914852142334 },
			cJ = true
			IsPlayerUnjailed = false
			while JailTime > 0 and not IsPlayerUnjailed do
				local remainingjailseconds = JailTime/ 60
				local jailseconds =  math.floor(JailTime) % 60 
				local remainingjailminutes = remainingjailseconds / 60
				local jailminutes =  math.floor(remainingjailseconds) % 60
				local remainingjailhours = remainingjailminutes / 24
				local jailhours =  math.floor(remainingjailminutes) % 24
				local remainingjaildays = remainingjailhours / 365 
				local jaildays =  math.floor(remainingjailhours) % 365

				PlayerPed = GetPlayerPed(-1)
				-- RemoveAllPedWeapons(PlayerPed, true)
				-- SetEntityInvincible(PlayerPed, true)
				if IsPedInAnyVehicle(PlayerPed, false) then
					ClearPedTasksImmediately(PlayerPed)
				end
				if JailTime % 10 == 0 then
					if JailTime % 30 == 0 then
						TriggerEvent('chatMessage', 'SYSTEM', { 0, 0, 0 }, math.floor(jaildays).." jours, "..math.floor(jailhours).." heures,"..math.floor(jailminutes).." minutes, "..math.floor(jailseconds).." secondes avant d'être libéré.")
					end
				end
				Citizen.Wait(1000)
				local pL = GetEntityCoords(PlayerPed, true)
				local D = Vdist(458.29275512695, -1001.5576782227, 23.914852142334, pL['x'], pL['y'], pL['z'])
				if D > 2 then
					SetEntityCoords(PlayerPed, 458.29275512695, -1001.5576782227, 23.914852142334)
				end
				JailTime = JailTime - 1.0
			end
			TriggerServerEvent('chatMessageEntered', "SYSTEM", { 0, 0, 0 }, GetPlayerName(PlayerId()) .." a été libéré de la prison.")
			TriggerServerEvent('esx_jb_jailer:UnJailplayer', GetPlayerServerId(PlayerId()))
			SetEntityCoords(PlayerPed, 432.95864868164, -981.41455078125, 29.710334777832)
			cJ = false
			-- SetEntityInvincible(PlayerPed, false)
			TriggerEvent('esx_society:getPlayerSkin')
		end)
	end
end)

RegisterNetEvent("esx_jb_jailer:FederalJail")
AddEventHandler("esx_jb_jailer:FederalJail", function(JailTime)
	if cJ == true then
		return
	end
	local PlayerPed = GetPlayerPed(-1)
	if DoesEntityExist(PlayerPed) then
		
		Citizen.CreateThread(function()
			TriggerEvent('esx_society:setClothes', "police", "prison_wear")
			local playerOldLoc = GetEntityCoords(PlayerPed, true)
			SetEntityCoords(PlayerPed, 1643.7593994141, 2530.9877929688, 44.564888000488 )-- {x = 458.29275512695,y = -1001.5576782227,z = 23.914852142334 },
			cJ = true
			IsPlayerUnjailed = false
			while JailTime > 0 and not IsPlayerUnjailed do
				local remainingjailseconds = JailTime/ 60
				local jailseconds =  math.floor(JailTime) % 60 
				local remainingjailminutes = remainingjailseconds / 60
				local jailminutes =  math.floor(remainingjailseconds) % 60
				local remainingjailhours = remainingjailminutes / 24
				local jailhours =  math.floor(remainingjailminutes) % 24
				local remainingjaildays = remainingjailhours / 365 
				local jaildays =  math.floor(remainingjailhours) % 365

				PlayerPed = GetPlayerPed(-1)
				-- RemoveAllPedWeapons(PlayerPed, true)
				-- SetEntityInvincible(PlayerPed, true)
				if IsPedInAnyVehicle(PlayerPed, false) then
					ClearPedTasksImmediately(PlayerPed)
				end			
				if JailTime % 10 == 0 then
					if JailTime % 30 == 0 then
						TriggerEvent('chatMessage', 'SYSTEM', { 0, 0, 0 }, math.floor(jaildays).." jours, "..math.floor(jailhours).." heures,"..math.floor(jailminutes).." minutes, "..math.floor(jailseconds).." secondes avant d'être libéré.")
					end
				end
				Citizen.Wait(1000)
				local pL = GetEntityCoords(PlayerPed, true)
				local D = Vdist(1643.7593994141, 2530.9877929688, 44.564888000488 , pL['x'], pL['y'], pL['z'])
				if D > 80 then
					SetEntityCoords(PlayerPed, 1643.7593994141, 2530.9877929688, 44.564888000488 )
				end
				JailTime = JailTime - 1.0
			end
			TriggerServerEvent('chatMessageEntered', "SYSTEM", { 0, 0, 0 }, GetPlayerName(PlayerId()) .." a été libéré de la prison.")
			TriggerServerEvent('esx_jb_jailer:UnJailplayer', GetPlayerServerId(PlayerId()))
			SetEntityCoords(PlayerPed, 1847.5042724609, 2586.2209472656, 44.672046661377)
			cJ = false
			-- SetEntityInvincible(PlayerPed, false)
			TriggerEvent('esx_society:getPlayerSkin')
		end)
	end
end)

RegisterNetEvent("esx_jb_jailer:UnJail")
AddEventHandler("esx_jb_jailer:UnJail", function()
	IsPlayerUnjailed = true
end)
