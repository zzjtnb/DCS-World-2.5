--[[
0039547: MiG-29 R-77 Adapter is not correct
Rev. 136453
АКУ-170 отрисовывается в диапазоне значений аргумента 0,2...0,3
Для пилонов 1,2,3 - аргументы 308,309,310
Для пилонов 5,6,7 - 312,313,314 
--]]

local R77 = 
{
	CLSID 		= loadout_R77.CLSID, --just missile
	Type		= 1,
	arg_value	= 0.2,
}

local function  FULCRUM_S_STATION(index,add)
	local t   = FULCRUM_STATION(index,add);
	t[#t + 1] = R77
	return t
end

FULCRUM_S_TIPS		= FULCRUM_S_STATION(1)
FULCRUM_S_OUTBOARD  = FULCRUM_S_STATION(2,FULCRUM_AG_WEAPON)
FULCRUM_S_INBOARD   = FULCRUM_MERGE_STATION(FULCRUM_S_STATION(3,FULCRUM_AG_WEAPON),
{
	--------------------------------------------------------------------------------
	{ CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },--R-27R
	{ CLSID = "{88DAC840-9F75-4531-8689-B46E64E42E53}" },--R-27T
	{ CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },--R-27ER
	{ CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },--R-27ET
	--------------------------------------------------------------------------------
	{ CLSID = "{C0FF4842-FBAC-11d5-9190-00A0249B6F00}" ,arg_value = 0.1},--fuel tank
})

return plane( "MiG-29S", _("MiG-29S"),
    {
        
        EmptyWeight = "11222", --11300 - unusable fuel 78kg 
        MaxFuelWeight = "3493",
        MaxHeight = "18000",
        MaxSpeed = "2450",
        MaxTakeOffWeight = "19700",
        Picture = "MIG-29.png",
        Rate = "50",
        Shape = "MIG-29C",
        WingSpan = "11.36",
        WorldID = 50,
		country_of_origin = "RUS",

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
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, MiG_29C,
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
            RADAR = "N-019M",
            IRST = "KOLS",
            RWR = "Abstract RWR"
        },
		Failures = {
			{ id = 'asc', 			label = _('DAMPER'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 }, -- "ДЕМПФЕР"
			{ id = 'autopilot',		label = _('AUTOPILOT'),		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'aoa_limiter',	label = _('AOA LIMITER'),	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 }, -- "COC"
			{ id = 'apus', 			label = _('APUS'), 			enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 }, -- "АПУС"
			{ id = 'slats', 		label = _('SLATS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 }, -- "НОСКИ КРЫЛА"
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
        Countermeasures = {
            ECM = "Gardenia"
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
			FULCRUM_S_TIPS
        ),
        pylon(2, 0, -1.090000, -0.097000, -3.245000,
            {
				arg = 309 ,
				arg_value = 0,
				use_full_connector_position = true,
            },
			FULCRUM_S_OUTBOARD
        ),
        pylon(3, 0, -0.553000, -0.122000, -2.440000,
            {
				arg = 310 ,
				arg_value = 0,
				use_full_connector_position = true,
            },
			FULCRUM_S_INBOARD
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
			FULCRUM_S_INBOARD
        ),
        pylon(6, 0, -1.090000, -0.097000, 3.245000,
            {
				arg = 313 ,
				arg_value = 0,
				use_full_connector_position = true,
            },
			FULCRUM_S_OUTBOARD
        ),
        pylon(7, 0, -1.671000, -0.121000, 3.927000,
            {
				arg = 314 ,
				arg_value = 0,
				use_full_connector_position = true,
            },
			FULCRUM_S_TIPS
        ),
    },
    {
        aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(Intercept),
        aircraft_task(AFAC),
        aircraft_task(GroundAttack),
        aircraft_task(CAS),
        aircraft_task(RunwayAttack),
		aircraft_task(AntishipStrike),
    },
	aircraft_task(CAP)
	
	
);
