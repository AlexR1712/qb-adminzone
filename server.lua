local QBCore = exports['qb-core']:GetCoreObject()
local zones = {}


QBCore.Commands.Add("setzone", "Set Report Zone (Admin Only)", {}, false, function(source)
	    local src = source
        local Player = QBCore.Functions.GetPlayer(src)
		local license = Player.PlayerData.license
        local zone = false
        for i, j in pairs(zones) do
            if j.id == license then
                zone = true
                break
            end
        end
        if zone then
            TriggerClientEvent("chatMessage", src, "^*^1You already have an active zone!  Clear it before trying to create another!.")
        else
            TriggerClientEvent("adminzone:getCoords", src, "setzone", Config.pass)
        end
end, "admin")


QBCore.Commands.Add("clearzone", "Set Report Zone (Admin Only)", {}, false, function(source)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	local license = Player.PlayerData.license
	for i, j in pairs(zones) do
		if j.id == license then
			table.remove(zones, i)
			break
		end
	end
	TriggerClientEvent("adminzone:UpdateZones", -1, zones , Config.pass)
end, "admin")


AddEventHandler('playerDropped', function (reason)
	local src = source
	if QBCore.Players[src] then
		local license = Player.PlayerData.license
		for i, j in pairs(zones) do
			if j.id == license then
				table.remove(zones, i)
				break
			end
		end
    end
end)

RegisterNetEvent('adminzone:sendCoords')
AddEventHandler('adminzone:sendCoords', function(command, coords)
	local src = source
	local Player = QBCore.Functions.GetPlayer(src)
	if  QBCore.Functions.HasPermission(src, 'admin') or QBCore.Functions.HasPermission(src, 'god') then
		if command == 'setzone' then
			table.insert(zones, {id = Player.PlayerData.license, coord = coords})
			TriggerClientEvent("chatMessage", source, "^*Added Zone!")
			TriggerClientEvent("adminzone:UpdateZones", -1, zones , Config.pass)
		end
	end
end)

RegisterNetEvent('adminzone:ServerUpdateZone')
AddEventHandler('adminzone:ServerUpdateZone', function()
	TriggerClientEvent('adminzone:UpdateZones', source, zones, Config.pass)
end)