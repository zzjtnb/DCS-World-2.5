db.Targets = {
  Tasks = {
    [Nothing] = {
      Planes = false,
      Helicopters = false,
      Ships = false,
      Vehicles = false,
      Airfields = false,
      Fortifications = false,
      Buildings = false,
      Point = false,
    },
    [AWACS] = {
    },
    [AntishipStrike] = {
      Ships = true,
    },
    [CAP] = {
      Planes = true,
      Helicopters = true,
    },
    [CAS] = {
      Planes = true,
      Helicopters = true,
      Vehicles = true,
      Fortifications = false,
      Buildings = false,
      Point = false,	  
    },
    [Escort] = {
      Planes = true,
      Helicopters = true,
    },
    [FighterSweep] = {
      Planes = true,
      Helicopters = false,
    },
    [GroundAttack] = {
      Planes = false,
      Helicopters = false,
      Vehicles = false,
      Airfields = false,
      Fortifications = false,
      Buildings = false,
      Point = true,
    },
    [Intercept] = {
      Planes = true,
      Helicopters = true,
    },
    [PinpointStrike] = {
      Vehicles = false,
      Airfields = false,
      Fortifications = false,
      Buildings = false,
      Point = true,
    },
    [Reconnaissance] = {
    },
    [Refueling] = {
      Planes = false,
      Helicopters = false,
      Ships = false,
      Vehicles = false,
      Airfields = false,
      Fortifications = false,
      Buildings = false,
    },
    [RunwayAttack] = {
		Airfields = true,
    },
    [SEAD] = {
      Ships = true,
      Vehicles = true,
    },
    [Transport] = {
    },
    [AFAC] = {
      Ships = true,
      Vehicles = true,
      Airfields = true,
      Fortifications = true,
      Buildings = true,
      Point = true,
    },
-- there are no such tasks as "ship nothing" ans ground nothing"
-- if you know what is it, add it to wsTypes
--[[    [GroundNothing] = {
      Point = true,
    },
    [ShipNothing] = {
      Point = true,
    }, --]]
  };
};
