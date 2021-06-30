
local function R73_APU_470_arg(index)
	if index == 3 or index == 5 then
		--АПУ-470 для внутренних пилонов - при значении 0.7...0.8 (арг. 310, 312) 
		return 0.71
	else
		return 0
	end
end

function FULCRUM_STATION(index,add)
	local t = 
	{
		{ CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" , arg_value = 0.6 },--R-60
		{ CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" , arg_value = R73_APU_470_arg(index)},--R-73
		{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },--SMOKE
		{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },--SMOKE
		{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },--SMOKE
		{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },--SMOKE
		{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },--SMOKE
		{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },--SMOKE
		{ CLSID = "<CLEAN>",	arg_value = 1},
	}
	if add then 
		for i,o in ipairs(add) do
			t[#t + 1] = o
		end
	end
	return t
end

FULCRUM_TIPS     = FULCRUM_STATION(1)

function FULCRUM_MERGE_STATION(st,add)
	for i,o in ipairs(add) do
		st[#st + 1] = o
	end
	return st
end

FULCRUM_AG_WEAPON = 
{
	{ CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" ,arg_value = 0.35},--betab500
	{ CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" ,arg_value = 0.35},--betab500shp
	{ CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" ,arg_value = 0.35},--FAB250
	{ CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" ,arg_value = 0.35},--FAB500
	{ CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" ,arg_value = 0.35},--RBK250
	{ CLSID = "{RBK_250_275_AO_1SCH}" 				   ,arg_value = 0.35},
	{ CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" ,arg_value = 0.35},--RBK-500-255 PTAB-10-5
	{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" ,arg_value = 0.35},--RBK-500 PTAB-1M
	{ CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" ,arg_value = 0.35},--KMGU2
	{ CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" ,arg_value = 0.35},--KMGU2
	--------------------------------------------------------------------------
	{ CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" ,arg_value = 0.35},--B-8M1 - 20 S-8KOM
	{ CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" ,arg_value = 0.35},--S-24B	
	{ CLSID = "B-8M1 - 20 S-8OFP2"					   ,arg_value = 0.35},
	{ CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" ,arg_value = 0.35},-- S-8TsM
}

FULCRUM_OUTBOARD = FULCRUM_STATION(2,FULCRUM_AG_WEAPON)
FULCRUM_INBOARD  = FULCRUM_MERGE_STATION(FULCRUM_STATION(3,FULCRUM_AG_WEAPON),
{
	--------------------------------------------------------------------------------
	{ CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },--R-27R
	{ CLSID = "{88DAC840-9F75-4531-8689-B46E64E42E53}" },--R-27T
	{ CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },--R-27ER
	{ CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },--R-27ET
	--------------------------------------------------------------------------------
	{ CLSID = "{C0FF4842-FBAC-11d5-9190-00A0249B6F00}" ,arg_value = 0.1},--fuel tank
})

FULCRUM_CENTRAL_STATION = {
	{ CLSID = "{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}" },--fuel tank
	{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },--SMOKE
	{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },--SMOKE
	{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },--SMOKE
	{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },--SMOKE
	{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },--SMOKE
	{ CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },--SMOKE
}

return plane( "MiG-29A", _("MiG-29A"),
    {
        
        EmptyWeight = "10922", --11000 - unusable fuel 78kg 
        MaxFuelWeight = "3376",
        MaxHeight = "18000",
        MaxSpeed = "2450",
        MaxTakeOffWeight = "19700",
        Picture = "MIG-29.png",
        Rate = "50",
        Shape = "MiG-29",
        WingSpan = "11.36",
        WorldID = 2,
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
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, MiG_29,
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
		aircraft_task(AFAC),
		aircraft_task(GroundAttack),
		aircraft_task(CAS),
		aircraft_task(RunwayAttack),
		aircraft_task(AntishipStrike),
	},
	aircraft_task(CAP)
	
	
);
