--[[

New Update:

Added SwitchTypes table which will be passed to the client so you can provide different stats for different switches
For example, I have added switch which is a default switch and better_switch which will give better stats pepega
Completely expermenting with this not sure if i'll even finish it 

]]

SwitchTypes={
    'switch',
    'better_switch'
}

for k, v in pairs(SwitchTypes) do
    ESX.RegisterUsableItem(v, function(source)
        xPlayer=ESX.GetPlayerFromId(source)
            
        TriggerClientEvent('spoody_switch', source, v)
    end)
end
