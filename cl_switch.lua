Weapons = {
    ["WEAPON_COMBATPISTOL"] = 35,

    --[[
        Table Info:

        ["WEAPON_HASH"] -> This is the hash key for the weapon you want to set.
        = COUNT -> This is the amount of ammo that the ped's weapon should be set to.
    ]]
}

local notify = 'esx' -- esx/mythic/bulletin -> add your own if you know what you're doing (Line )

local playerPed = PlayerPedId()

function loadanimdict(dictname)
    if not HasAnimDictLoaded(dictname) then
        RequestAnimDict(dictname)
        while not HasAnimDictLoaded(dictname) do
            Citizen.Wait(1)
        end
    end
end

RegisterNetEvent('spoody:switch')
AddEventHandler('spoody:switch', function(source, _type)
    TriggerEvent('esx_inventoryhud:closeInventory')
    Wait(50)
    loadanimdict('missmic4')
    TaskPlayAnim(playerPed, 'missmic4', 'michael_tux_fidget', 8.0, -8, -1, 49, 0.0, false, false, false)
    exports['progressBars']:startUI(6000, "Installing Switch...")
    Citizen.Wait(6500)
    ClearPedTasks(playerPed)
    if notify ~= nil and notify ~= '' and notify ~= 'none' then
        if notify == 'esx' then
            ESX.ShowNotification('You installed a switch if caught with it you will be arrested!')
        elseif notify == 'mythic' then
            exports['mythic_notify']:DoHudText('success', 'You installed a switch if caught with it you will be arrested!')
        elseif notify == 'bulletin' then
            exports.bulletin:Send('You installed a switch if caught with it you will be arrested!')
        elseif notify == 'print' then
            print('You installed a switch if caught with it you will be arrested!')
        elseif notify == 'custom' then
            -- code here
        end
    end
    usingSwitch = true
    switchType = _type
end)

CreateThread(function()
    if switchType='switch' then
        for k, v in pairs(Weapons) do
            SetPedAmmo(playerPed, GetHashKey(k), v)
            while true do
                if not usingSwitch then
                    waitTimer = 500 -- Feel free to change this!
                else
                    waitTimer = 85 -- Feel free to change this!
                    ClearPedTasks(playerPed)
                    Wait(waitTimer)
                    PedSkipNextReloading(playerPed)
                end
            end
        end
    elseif switchType == 'better_switch' then
        for k, v in pairs(Weapons) do
            SetPedAmmo(playerPed, GetHashKey(k), v*2)
            while true do
                if not usingSwitch then
                    waitTimer = 500 -- Feel free to change this!
                else
                    waitTimer = 85 -- Feel free to change this!
                    ClearPedTasks(playerPed)
                    Wait(waitTimer)
                    PedSkipNextReloading(playerPed)
                end
            end
        end
    end
end)
