
local function F15_aim9_station(number, tp, x, y, z, params, wcs)
	local res = params;
	
	res.Number = number;
	res.Type = tp;
	res.X = x;
	res.Y = y;
	res.Z = z;
	res.Launchers = wcs or {};
	
	res.Launchers[#res.Launchers + 1] = { CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}", arg_increment = -0.1} --AIM-9M
	res.Launchers[#res.Launchers + 1] = { CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}", arg_increment = -0.1} --AIM-9P
	res.Launchers[#res.Launchers + 1] = { CLSID = "{AIM-9P5}"							  , arg_increment = -0.1} --AIM-9P5
	res.Launchers[#res.Launchers + 1] = { CLSID = "{AIM-9L}"							  , arg_increment = -0.1} --AIM-9L

	return res;
end

return plane( "F-15C", _("F-15C"),
    {
        
        EmptyWeight = "13380",
        MaxFuelWeight = "6103",
        MaxHeight = "19700",
        MaxSpeed = "2650",
        MaxTakeOffWeight = "30845",
        Picture = "F-15C.png",
        Rate = "50",
        Shape = "f-15",
        WingSpan = "13.05",
        WorldID = 6,
		country_of_origin = "USA",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 240,
			-- RR-170
			chaff = {default = 120, increment = 30, chargeSz = 1},
			-- MJU-7
			flare = {default = 60, increment = 15, chargeSz = 2}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, F_15,
			"Fighters", "Refuelable", "Datalink", "Link16"
        },

        Categories = {
            pl_cat("{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_GOOD, LOOK_GOOD),

        mechanimations = {
            Door0 = {
                {Transition = {"Close", "Open"},  Sequence = {{C = {{"Arg", 38, "to", 0.9, "in", 8.08},},},}, Flags = {"Reversible"},},
                {Transition = {"Open", "Close"},  Sequence = {{C = {{"Arg", 38, "to", 0.0, "in", 6.743},},},}, Flags = {"Reversible", "StepsBackwards"},},
                {Transition = {"Any", "Bailout"}, Sequence = {{C = {{"JettisonCanopy", 0},},},},},
            },
            CrewLadder = {
                {Transition = {"Dismantle", "Erect"}, Sequence = {{C = {{"Arg", 91, "to", 0.9, "in", 1.5}}}, {C = {{"Sleep", "for", 5.0}}}}, Flags = {"Reversible"}},
                {Transition = {"Erect", "Dismantle"}, Sequence = {{C = {{"Arg", 91, "to", 0.0, "in", 2.7}}}, {C = {{"Sleep", "for", 0.0}}}}, Flags = {"Reversible", "StepsBackwards"}},
            },
            ServiceHatches = {
                {Transition = {"Close", "Open"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 120.0}}}, {C = {{"Arg", 428, "to", 0.9, "speed", 0.6}}}}},
                {Transition = {"Open", "Close"}, Sequence = {{C = {{"PosType", 3}, {"Sleep", "for", 120.0}}}, {C = {{"Arg", 428, "to", 0.0, "speed", 0.6}}}}},
            },
        }, -- end of mechanimations

        Sensors = {
            RADAR = "AN/APG-63",
            RWR = "Abstract RWR"
        },
        Countermeasures = {
            ECM = "AN/ALQ-135"
        },
		EPLRS = true,
		Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
		},
		HumanRadio = {
			frequency = 124.0,
			modulation = MODULATION_AM
		},
        mapclasskey = "P0091000024",
		pylons_enumeration = {1, 11, 10, 2, 3, 9, 4, 5, 7, 8, 6},
    },
    {
        F15_aim9_station(1, 0, 0.660000, -0.078000, -3.325000,
            {
				use_full_connector_position = true,
				arg 	  	  = 309,
				arg_increment = 0.0,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" ,arg_increment = -0.1},
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" ,arg_increment = -0.1},
                { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" ,arg_increment = -0.1},
                { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" ,arg_increment = -0.1},
                { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" ,arg_increment = -0.1},
                { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" ,arg_increment = -0.1},
                { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" ,arg_increment = -0.1},
                { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E746}" ,arg_increment = -0.1},
                { CLSID = "{AIS_ASQ_T50}" ,arg_increment = -0.1, attach_point_position = {0.30,  0.0,  0.0}},			-- ACMI pod
            }
        ),
        pylon(2, 0, -0.155000, -0.343000, -2.944000,
            {
				use_full_connector_position = true,
				arg 	  	  = 309,
				arg_increment = 1,
            },
            {
                { CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}" ,arg_value = 0,Cx_gain = 1/2.2},
            }
        ),
        F15_aim9_station(3, 0, 0.660000, -0.078000, -2.563000,
            {
				use_full_connector_position = true,
				arg 	  		= 309,
				arg_increment   = 0.0,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" ,arg_increment = -0.1},
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" ,arg_increment = -0.1},
            }
        ),
        pylon(4, 1, -2.590000, -0.760000, -1.470000,
            {
				use_full_connector_position = true,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
				{ CLSID = "{AIM-7F}" },
				{ CLSID = "{AIM-7H}" },
				{ CLSID = "{AIM-7E}" },
            }
        ),
        pylon(5, 1, 1.250000, -0.750000, -1.545000,
            {
				use_full_connector_position = true,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
				{ CLSID = "{AIM-7F}" },
				{ CLSID = "{AIM-7H}" },
				{ CLSID = "{AIM-7E}" },
            }
        ),
        pylon(6, 0, 0.184000, -1.030000, 0.000000,
            {
				use_full_connector_position = true,
				arg 	  = 313,
				arg_value = 1.0,
            },
            {
                { CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}" ,arg_value = 0},
            }
        ),
        pylon(7, 1, -2.590000, -0.760000, 1.470000,
            {
				use_full_connector_position = true,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
				{ CLSID = "{AIM-7F}" },
				{ CLSID = "{AIM-7H}" },
				{ CLSID = "{AIM-7E}" },
            }
        ),
        pylon(8, 1, 1.250000, -0.750000, 1.545000,
            {
				use_full_connector_position = true,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" },
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" },
                { CLSID = "{8D399DDA-FF81-4F14-904D-099B34FE7918}" },
				{ CLSID = "{AIM-7F}" },
				{ CLSID = "{AIM-7H}" },
				{ CLSID = "{AIM-7E}" },
            }
        ),
        F15_aim9_station(9, 0, 0.660000, -0.078000, 2.563000,
            {
				use_full_connector_position = true,
				arg 	  = 317,
				arg_increment = 0.0,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" ,arg_increment = -0.1},
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" ,arg_increment = -0.1},
            }
        ),
        pylon(10, 0, -0.155000, -0.343000, 2.944000,
            {
				use_full_connector_position = true,
				arg 	  = 317,
				arg_increment = 1.0,
            },
            {
                { CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}" ,arg_value = 0,Cx_gain = 1/2.2},
            }
        ),
        F15_aim9_station(11, 0, 0.660000, -0.078000, 3.325000,
            {
				use_full_connector_position = true,
				arg 	 	  = 317,
				arg_increment = 0.0,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" ,arg_increment = -0.1},
                { CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" ,arg_increment = -0.1},
                { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E741}" ,arg_increment = -0.1},
                { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E742}" ,arg_increment = -0.1},
                { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E743}" ,arg_increment = -0.1},
                { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E744}" ,arg_increment = -0.1},
                { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E745}" ,arg_increment = -0.1},
                { CLSID = "{A4BCC903-06C8-47bb-9937-A30FEDB4E746}" ,arg_increment = -0.1},
                { CLSID = "{AIS_ASQ_T50}" ,arg_increment = -0.1, attach_point_position = {0.30,  0.0,  0.0}},			-- ACMI pod
            }
        ),
    },
    {
        aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(Intercept),
    },
	aircraft_task(CAP)
	
	
);
