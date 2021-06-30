return plane( "MiG-29G", _("MiG-29G"),
    {
        
        EmptyWeight = "10922", --11000 - unusable fuel 78kg 
        MaxFuelWeight = "3376",
        MaxHeight = "18000",
        MaxSpeed = "2450",
        MaxTakeOffWeight = "19700",
        Picture = "MIG-29.png",
        Rate = "50",
        Shape = "MiG-29G",
        WingSpan = "11.36",
        WorldID = 49,
		country_of_origin = "GER",
		
		effects_presets = {
			{effect = "OVERWING_VAPOR", preset = "MiG29"},
		},
		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			-- PPR-26
			chaff = {default = 30, increment = 30, chargeSz = 1},
			-- PPI-26
			flare = {default = 30, increment = 30, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, MiG_29G,
        "Fighters",
        },
        Categories = {
            pl_cat("{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"),
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

		HumanRadio = {
			frequency = 124.0,
			modulation = MODULATION_AM
		},		
        Sensors = {
            RADAR = "N-019",
            IRST = "KOLS",
            RWR = "Abstract RWR"
        },
		Failures = {
			{ id = 'aoa_limiter',	label = _('AOA LIMITER'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 }, -- "COC"
			{ id = 'damper', 		label = _('DAMPER'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 }, -- "ƒ≈Ãœ‘≈–"
			{ id = 'apus', 			label = _('APUS'), 			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 }, -- "¿œ”—" (ASC?)
			{ id = 'slats', 		label = _('SLATS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 }, -- "ÕŒ— »  –€À¿"
			{ id = 'autopilot',		label = _('AUTOPILOT'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  		label = _('HYDRO'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',		label = _('L-ENGINE'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',		label = _('R-ENGINE'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  		label = _('RADAR'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'eos',  			label = _('EOS'), 			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'helmet',  		label = _('HELMET'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'mlws',  		label = _('MLWS'), 			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  			label = _('RWS'), 			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'ecm',  		label = _('ECM'), 			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  			label = _('HUD'), 			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  			label = _('MFD'), 			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
		},
        mapclasskey = "P0091000024",
    },
    {
        pylon(1, 0, -1.671000, -0.121000, -3.927000,
            {
				arg = 308 ,
				arg_value = 0,
				use_full_connector_position = true,
            },
			FULCRUM_TIPS
        ),
        pylon(2, 0, -1.090000, -0.097000, -3.245000,
            {
				arg = 309 ,
				arg_value = 0,
				use_full_connector_position = true,
            },
			FULCRUM_OUTBOARD
        ),
        pylon(3, 0, -0.553000, -0.122000, -2.440000,
            {
				arg = 310 ,
				arg_value = 0,
				use_full_connector_position = true,
            },
			FULCRUM_INBOARD
        ),
		-----------------------------------------------------------------------
        pylon(4, 1, -0.783000, -0.150000, 0.000000,{},FULCRUM_CENTRAL_STATION),
		-----------------------------------------------------------------------
        pylon(5, 0, -0.553000, -0.122000, 2.440000,
            {
				arg = 312 ,
				arg_value = 0,
				use_full_connector_position = true,
            },
			FULCRUM_INBOARD
        ),
        pylon(6, 0, -1.090000, -0.097000, 3.245000,
            {
				arg = 313 ,
				arg_value = 0,
				use_full_connector_position = true,
			},
			FULCRUM_OUTBOARD
		),
		pylon(7, 0, -1.671000, -0.121000, 3.927000,
			{
				arg = 314 ,
				arg_value = 0,
				use_full_connector_position = true,
			},
			FULCRUM_TIPS
		),
    },
    {
        aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(Intercept),
        --aircraft_task(GAI),
        aircraft_task(AFAC),
    },
	aircraft_task(CAP)
	
	
);
