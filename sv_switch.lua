Legacy = true

if not Legacy then
    ESX = exports['es_extended']:getSharedObject()
end


ESX.RegisterUsableItem('switch', function(source)
    local xPlayer = ESX.GetPlayerFromId(source)
    xPlayer.removeInventoryItem('switch', 1) --This removes the item from the players inventory

    TriggerClientEvent("spoody:switch", source)
end)