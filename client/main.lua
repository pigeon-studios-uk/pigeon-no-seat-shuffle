--[[
    Pigeon No Seat Shuffle: client.

    GTA moves a passenger into the driver's seat by itself when the driver's seat is empty. Ped config
    flag 184 (CPED_CONFIG_FLAG_PreventAutoShuffleToDriversSeat) stops that for the ped it's set on, so
    it's set on the player's own character and kept set.

    Players can still change seats on purpose: the shuffle key moves them to the seat next to them, and
    /seat moves them to a seat by number.
]]

local RESOURCE = GetCurrentResourceName()
local PREVENT_SHUFFLE = 184               -- CPED_CONFIG_FLAG_PreventAutoShuffleToDriversSeat
local SHUFFLE_TIMEOUT_MS = 5000           -- give up waiting for a shuffle to finish after this long
local SPEED_FACTOR = { mph = 2.236936, kmh = 3.6 }

local strings = Locales[Config.Locale] or Locales.en
local shuffling = false

local function notify(key, kind)
    if not Config.ShowMessages then return end
    local text = strings[key] or Locales.en[key] or key
    local mode = Config.Notifications
    if mode == 'ox_lib' or (mode == 'auto' and GetResourceState('ox_lib') == 'started') then
        TriggerEvent('ox_lib:notify', { title = strings.title, description = text, type = kind or 'error' })
    else
        BeginTextCommandThefeedPost('STRING')
        AddTextComponentSubstringPlayerName(text)
        EndTextCommandThefeedPostTicker(false, false)
    end
end

local function prevent(ped, on)
    SetPedConfigFlag(ped, PREVENT_SHUFFLE, on)
end

--- The seat the ped is in, from -1 (driver) up. Checks IsVehicleSeatFree first, because
--- GetPedInVehicleSeat can create a random occupant in an empty seat of an ambient vehicle.
local function seatOf(ped, vehicle)
    for seat = -1, GetVehicleMaxNumberOfPassengers(vehicle) - 1 do
        if not IsVehicleSeatFree(vehicle, seat) and GetPedInVehicleSeat(vehicle, seat) == ped then return seat end
    end
end

--- The seat beside this one in the same row: driver and front passenger, then each pair behind.
local function besideSeat(seat)
    return (seat % 2 == 0) and seat - 1 or seat + 1
end

local function tooFast(vehicle)
    if not Config.MaxSpeed or Config.MaxSpeed <= 0 then return false end
    local factor = SPEED_FACTOR[Config.SpeedUnit] or SPEED_FACTOR.mph
    return GetEntitySpeed(vehicle) * factor > Config.MaxSpeed
end

--- The vehicle the player is in and their seat, after the checks every seat change shares.
local function seated()
    local ped = PlayerPedId()
    if not IsPedInAnyVehicle(ped, false) then notify('not_in_vehicle') return end
    local vehicle = GetVehiclePedIsIn(ped, false)
    if tooFast(vehicle) then notify('too_fast') return end
    local seat = seatOf(ped, vehicle)
    if not seat then return end
    return ped, vehicle, seat
end

---------------------------------------------------------------------------
-- Changing seats on purpose

local function shuffle()
    if shuffling then return end
    local ped, vehicle, seat = seated()
    if not ped then return end

    local target = besideSeat(seat)
    if target >= GetVehicleMaxNumberOfPassengers(vehicle) or GetVehicleClass(vehicle) == 8 or GetVehicleClass(vehicle) == 13 then
        notify('no_seat')       -- bikes, and seats with nothing beside them
        return
    end
    if not IsVehicleSeatFree(vehicle, target) then notify('seat_taken') return end

    shuffling = true
    prevent(ped, false)
    TaskShuffleToNextVehicleSeat(ped, vehicle)
    CreateThread(function()
        local giveUp = GetGameTimer() + SHUFFLE_TIMEOUT_MS
        while GetGameTimer() < giveUp and GetVehiclePedIsIn(ped, false) == vehicle and seatOf(ped, vehicle) == seat do
            Wait(100)
        end
        prevent(ped, true)
        shuffling = false
    end)
end

local function moveToSeat(number)
    local ped, vehicle, seat = seated()
    if not ped then return end

    -- Players count seats from 1 (the driver's seat); GTA counts from -1.
    local target = number and math.tointeger(number) and math.tointeger(number) - 2
    if not target or target < -1 or target >= GetVehicleMaxNumberOfPassengers(vehicle) then
        notify('seat_usage', 'inform')
        return
    end
    if target == seat then return end
    if not IsVehicleSeatFree(vehicle, target) then notify('seat_taken') return end

    SetPedIntoVehicle(ped, vehicle, target)
end

---------------------------------------------------------------------------
-- Keeping the flag set

CreateThread(function()
    while true do
        if not shuffling then prevent(PlayerPedId(), true) end
        Wait(math.floor((Config.ReapplySeconds or 1.0) * 1000))
    end
end)

-- A new character after respawning: set it straight away rather than waiting for the next pass.
AddEventHandler('playerSpawned', function()
    prevent(PlayerPedId(), true)
end)

AddEventHandler('onResourceStop', function(resource)
    if resource == RESOURCE then prevent(PlayerPedId(), false) end
end)

---------------------------------------------------------------------------
-- Key, commands and exports

if Config.ShuffleCommand then
    RegisterCommand(Config.ShuffleCommand, shuffle, false)
    if Config.ShuffleKey then RegisterKeyMapping(Config.ShuffleCommand, strings.key_description, 'keyboard', Config.ShuffleKey) end
end

if Config.SeatCommand then
    RegisterCommand(Config.SeatCommand, function(_, args) moveToSeat(tonumber(args[1])) end, false)
end

--- Moves the player to the seat beside them, as the shuffle key does.
exports('Shuffle', shuffle)

--- Moves the player to a seat by number, as /seat does: 1 is the driver's seat.
exports('MoveToSeat', moveToSeat)
