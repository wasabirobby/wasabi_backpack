-----------------For support, scripts, and more----------------
--------------- https://discord.gg/wasabiscripts  -------------
---------------------------------------------------------------

ESX = exports["es_extended"]:getSharedObject()
local bagEquipped, bagObj
local hash = `p_michael_backpack_s`

RegisterNetEvent('esx:playerLoaded')
AddEventHandler('esx:playerLoaded', function(xPlayer)
	ESX.PlayerData = xPlayer
	ESX.PlayerLoaded = true
    Wait(4500)
    startBagCheck()
end)

startBagCheck = function()
    CreateThread(function()
        while true do
            local count = exports.ox_inventory:Search('count', Config.BackpackItem)
            if count > 0 and (not bagEquipped or not bagObj) then
                local x, y, z = table.unpack(GetOffsetFromEntityInWorldCoords(cache.ped,0.0,3.0,0.5))
                lib.requestModel(hash, 100)
                bagObj = CreateObjectNoOffset(hash, x, y, z, true, false)
                AttachEntityToEntity(bagObj, cache.ped, GetPedBoneIndex(cache.ped, 24818), 0.07, -0.11, -0.05, 0.0, 90.0, 175.0, true, true, false, true, 1, true)
                bagEquipped = true
            elseif count < 1 and bagEquipped then
                if DoesEntityExist(bagObj) then
                    DeleteObject(bagObj)
                end
                SetModelAsNoLongerNeeded(hash)
                bagObj = nil
                bagEquipped = nil
            end
            Wait(1500)
        end
    end)
end

exports('openBackpack', function(data, slot)
    if not slot?.metadata?.identifier then
        local identifier = lib.callback.await('wasabi_backpack:getNewIdentifier', 100, data.slot)
        exports.ox_inventory:openInventory('stash', 'bag_'..identifier)
    else
        TriggerServerEvent('wasabi_backpack:openBackpack', slot.metadata.identifier)
        exports.ox_inventory:openInventory('stash', 'bag_'..slot.metadata.identifier)
    end
end)
