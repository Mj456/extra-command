----------------------------------------------------------------------------
-- Extra --
----------------------------------------------------------------------------
RegisterCommand("extra", function(source, args, rawCommand)
    local ped = PlayerPedId()
    local veh = GetVehiclePedIsIn(ped, false)
    local extraID = tonumber(args[1])
    local toggle = tostring(args[2])
    if toggle == "true" then
        toggle = 0
    end
    if veh ~= nil and veh ~= 0 and veh ~= 1 then
        if extraID == "99" then
            SetVehicleAutoRepairDisabled(veh, true)
		SetVehicleExtra(veh, 1, toggle)
		SetVehicleExtra(veh, 2, toggle)
		SetVehicleExtra(veh, 3, toggle)
		SetVehicleExtra(veh, 4, toggle)
		SetVehicleExtra(veh, 5, toggle)				
		SetVehicleExtra(veh, 6, toggle)
		SetVehicleExtra(veh, 7, toggle)
		SetVehicleExtra(veh, 8, toggle)
		SetVehicleExtra(veh, 9, toggle)								
		SetVehicleExtra(veh, 10, toggle)
		SetVehicleExtra(veh, 11, toggle)
		SetVehicleExtra(veh, 12, toggle)
		SetVehicleExtra(veh, 13, toggle)
		SetVehicleExtra(veh, 14, toggle)
		SetVehicleExtra(veh, 15, toggle)
		SetVehicleExtra(veh, 16, toggle)
		SetVehicleExtra(veh, 17, toggle)
		SetVehicleExtra(veh, 18, toggle)
		SetVehicleExtra(veh, 19, toggle)
		SetVehicleExtra(veh, 20, toggle)
        else
            SetVehicleAutoRepairDisabled(Vehicle, true)
            SetVehicleExtra(veh, extraID, toggle)
        end
    
    end
end, false)