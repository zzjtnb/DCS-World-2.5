return plane( "MiG-29K", _("MiG-29K"),
    {
        EmptyWeight = 12700,
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
        MaxFuelWeight = 4500,
        MaxHeight = 17000,
        MaxSpeed = 2300,
        MaxTakeOffWeight = 22400,
        Picture = "MIG-29.png",
        Rate = "50",
        Shape = "MiG-29K",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier With Tramplin",
            }, -- end of [1]
        }, -- end of TakeOffRWCategories
        WingSpan = 11.99,
        WorldID = 32,
		country_of_origin = "RUS",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			-- PPR-26
			chaff = {default = 30, increment = 30, chargeSz = 1},
			-- PPI-26
			flare = {default = 30, increment = 30, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, MIG_29K,
        "Multirole fighters", "Refuelable"
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_AVERAGE, LOOK_AVERAGE),

--		mech_timing = {{0.0, 0.21}, -- CANOPY_OPEN_TIMES
--					   {0.0, 0.6; 0.12, 1.0; 0.25, 0.3; 0.75, 1.0; 0.85, 0.5; 0.9, 0.25; 0.95, 0.125}, -- CANOPY_CLOSE_TIMES
--					  },
        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {
                        {C = {{"Arg", 38, "to", 0.12 * 0.9, "at", 0.6, "sign" , 2}}},
                        {C = {{"Arg", 38, "to", 0.25 * 0.9, "at", 1.0, "sign" , 2}}},
                        {C = {{"Arg", 38, "to", 0.75 * 0.9, "at", 0.3, "sign" , 2}}},
                        {C = {{"Arg", 38, "to", 0.85 * 0.9, "at", 1.0, "sign" , 2}}},
                        {C = {{"Arg", 38, "to", 0.90 * 0.9, "at", 0.5}}},
                        {C = {{"Arg", 38, "to", 0.90 * 0.9, "at", 0.5}}},
                        {C = {{"Arg", 38, "to", 0.90 * 0.9, "at", 0.5}}},
                    }, Flags = {"Reversible"}},
                {Transition = {"Open", "Close"},  Sequence = {
                        {C = {{"Arg", 38, "to", 0.00 * 0.9, "at", 0.6}}},
                        {C = {{"Arg", 38, "to", 0.12 * 0.9, "at", 1.0, "sign" , -2}}},
                        {C = {{"Arg", 38, "to", 0.25 * 0.9, "at", 0.3, "sign" , -2}}},
                        {C = {{"Arg", 38, "to", 0.75 * 0.9, "at", 1.0, "sign" , -2}}},
                        {C = {{"Arg", 38, "to", 0.85 * 0.9, "at", 0.5, "sign" , -2}}},
                        {C = {{"Arg", 38, "to", 0.90 * 0.9, "at", 0.25, "sign" , -2}}},
                        {C = {{"Arg", 38, "to", 0.95 * 0.9, "at", 0.125, "sign" , -1}}},
                    }, Flags = {"Reversible", "StepsBackwards"}},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0}}}}},
            },
            HeadLights = {
                {Transition = {"Any", "Retract"}, Sequence = {{C = {{"Arg", 208, "set", 0.0},},},},},
                {Transition = {"Any", "Off"},     Sequence = {{C = {{"Arg", 208, "set", 0.0},},},},},
                {Transition = {"Any", "Taxi"},    Sequence = {{C = {{"Arg", 208, "set", 0.5},},},},},
                {Transition = {"Any", "High"},    Sequence = {{C = {{"Arg", 208, "set", 1.0},},},},},
            },
        },

        Sensors = {
            RADAR = "N-019M",
            IRST = "KOLS",
            RWR = "Abstract RWR"
        },
		HumanRadio = {
			frequency = 124.0,
			modulation = MODULATION_AM
		},
		Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		},
        Countermeasures = {
            ECM = "Gardenia"
        },
        mapclasskey = "P0091000024",
    },
    {
        pylon(1, 1, -1.750000, -0.204000, -4.608000,
            {
                FiZ = -2,
            },
            {
            }
        ),
        pylon(2, 0, -1.208000, -0.183000, -3.924000,
            {
                FiZ = -2,
            },
            {
            }
        ),
        pylon(3, 0, -0.517000, -0.280000, -3.253000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                { CLSID = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}" },
            }
        ),
        pylon(4, 0, 0.099000, -0.269000, -2.508000,
            {
                FiZ = -2,
            },
            {
            }
        ),
        pylon(5, 1, 0.000000, 0.000000, 0.000000,
            {
            },
            {
            }
        ),
        pylon(6, 0, 0.099000, -0.269000, 2.508000,
            {
                FiZ = -2,
            },
            {
            }
        ),
        pylon(7, 0, -0.517000, -0.280000, 3.253000,
            {
                FiZ = -2,
            },
            {
            }
        ),
        pylon(8, 0, -1.208000, -0.183000, 3.924000,
            {
                FiZ = -2,
            },
            {
            }
        ),
        pylon(9, 1, -1.750000, -0.204000, 4.608000,
            {
                FiZ = -2,
            },
            {
            }
        ),
    },
    {
        aircraft_task(SEAD),
        aircraft_task(AntishipStrike),
        aircraft_task(CAS),
        aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        --aircraft_task(GAI),
        aircraft_task(GroundAttack),
        aircraft_task(Intercept),
        aircraft_task(AFAC),
        aircraft_task(PinpointStrike),
        aircraft_task(RunwayAttack),
    },
	aircraft_task(CAP)
);
