local function BD3(clsid)
	return {CLSID = clsid, arg_value = 0.15 }
end

local function MBD(clsid)
	return {CLSID = clsid, arg_value = 0.25 }
end

return plane( "Su-33", _("Su-33"),
    {
        
        EmptyWeight = "19680", 
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
        MaxFuelWeight = "9500",
		defFuelRatio    = 0.5, -- топливо по умолчанию в долях от полного
        MaxHeight = "17000",
        MaxSpeed = "2300",
        MaxTakeOffWeight = "33000",
        Picture = "Su-33.png",
        Rate = "50",
        Shape = "Su-33",		
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier With Tramplin",
            }, -- end of [1]
        }, -- end of TakeOffRWCategories
        WingSpan = "14.7",
        WorldID = 4,
		country_of_origin = "RUS",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 96,
			-- PPR-26
			chaff = {default = 48, increment = 3, chargeSz = 1},
			-- PPI-26
			flare = {default = 48, increment = 3, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, Su_33,
        "Fighters", "Refuelable"
        },
        Categories = {
            pl_cat("{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_AVERAGE),

        Sensors = {
            RADAR = "N-001",
            IRST = "OLS-27",
            RWR = "Abstract RWR"
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
			--{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
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
		pylons_enumeration = {12, 1, 11, 2, 3, 10, 4, 9, 5, 8, 7, 6},
    },
    {
        pylon(1, 0, -1.943000, 0.173000, -7.280000,
            {
				arg = 308 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },	--R-73
                { CLSID = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}" , arg = 308 ,arg_value = 1, required = {{station = 12,loadout = {"{44EE8698-89F9-48EE-AF36-5FD31896A82A}"}}}},--Sorbciya
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },	--Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },	--Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },	--Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },	--Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },	--Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },	--Smoke Generator - orange
            }
        ),
        pylon(2, 0, -2.535000, -0.165000, -6.168000,
            {
				arg = 309 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },	--R-73
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"),			--FAB-250
				BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"),			--SAB-100
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },	--Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },	--Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },	--Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },	--Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },	--Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },	--Smoke Generator - orange
            }
        ),
        pylon(3, 0, -1.137000, -0.321000, -4.524000,
            {
				arg = 310 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },	--R-73
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },	--R-27R
                { CLSID = "{88DAC840-9F75-4531-8689-B46E64E42E53}" },	--R-27T
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },	--R-27ET
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },	--R-27ER
                
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"),			--FAB-250
                BD3("{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"),			--BetAB-500
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74884}"),			--KMGU-2 - 96 AO-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74881}"),			--KMGU-2 - 96 PTAB-2.5KO
                BD3("{4203753F-8198-4E85-9924-6F8FF679F9FF}"),			--RBK-250 PTAB-2.5M
				BD3("{RBK_250_275_AO_1SCH}"),							--RBK-250-275 AO-1SCh
				BD3("{RBK_500U_OAB_2_5RT}"),							--RBK-500U OAB-2.5RT
                BD3("{D5435F26-F120-4FA3-9867-34ACE562EF1B}"),			--RBK-500 PTAB-10-5
				BD3("{7AEC222D-C523-425e-B714-719C0D1EB14D}"),			--RBK-500 PTAB-1M
                BD3("{37DCC01E-9E02-432F-B61D-10C166CA2798}"),			--FAB-500 M62
                BD3("{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"),			--B-8M1 - 20 S-8KOM
                BD3("{FC56DF80-9B09-44C5-8976-DCFAFF219062}"),			--B-13L - 5 S-13 OF
                BD3("{A0648264-4BC0-4EE8-A543-D119F6BA4257}"),			--S-25 OFM
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },	--Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },	--Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },	--Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },	--Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },	--Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },	--Smoke Generator - orange
				BD3("B-8M1 - 20 S-8OFP2"),								--B-8M1 - 20 S-8OFP2
				BD3("{3DFB7320-AB0E-11d7-9897-000476191836}"),			--B-8M1 - 20 S-8TsM
				BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"),			--SAB-100
				{ CLSID = "{TWIN_S25}" 				, arg_value = 1},	--2* S-25 OFM
				{ CLSID = "{TWIN_B13L_5OF}" 		, arg_value = 1},	--2* B-13L - 5 S-13 OF
				{ CLSID = "{TWIN_B_8M1_S_8KOM}" 	, arg_value = 1},	--2* B-8M1 - 20 S-8KOM
				{ CLSID = "{TWIN_B_8M1_S_8TsM}" 	, arg_value = 1},	--2* B-8M1 - 20 S-8TsM
				{ CLSID = "{TWIN_B_8M1_S_8_OFP2}"	, arg_value = 1},	--2* B-8M1 - 20 S-8OFP2
				MBD("{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}"),			-- 6 * FAB-100
				MBD("{MBD3_U6_3*FAB-250_fwd}"),							-- 3 * FAB-250
            }
        ),
        pylon(4, 0, -0.091000, -0.321000, -3.253000,
            {
				arg = 311 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },	--R-27R
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },	--R-27ER
                
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"),			--FAB-250
                BD3("{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"),			--BetAB-500
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74884}"),			--KMGU-2 - 96 AO-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74881}"),			--KMGU-2 - 96 PTAB-2.5KO
                BD3("{4203753F-8198-4E85-9924-6F8FF679F9FF}"),			--RBK-250 PTAB-2.5M
				BD3("{RBK_250_275_AO_1SCH}"),							--RBK-250-275 AO-1SCh
				BD3("{RBK_500U_OAB_2_5RT}"),							--RBK-500U OAB-2.5RT
                BD3("{D5435F26-F120-4FA3-9867-34ACE562EF1B}"),			--RBK-500 PTAB-10-5
				BD3("{7AEC222D-C523-425e-B714-719C0D1EB14D}"),			--RBK-500 PTAB-1M
                BD3("{37DCC01E-9E02-432F-B61D-10C166CA2798}"),			--FAB-500 M62
                BD3("{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"),			--B-8M1 - 20 S-8KOM
                BD3("{FC56DF80-9B09-44C5-8976-DCFAFF219062}"),			--B-13L - 5 S-13 OF
                BD3("{A0648264-4BC0-4EE8-A543-D119F6BA4257}"),			--S-25 OFM
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },	--Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },	--Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },	--Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },	--Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },	--Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },	--Smoke Generator - orange
				BD3("B-8M1 - 20 S-8OFP2"),								--B-8M1 - 20 S-8OFP2
				BD3("{3DFB7320-AB0E-11d7-9897-000476191836}"),			--B-8M1 - 20 S-8TsM
				BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"),			--SAB-100
            }
        ),
        pylon(5, 1, -0.075000, -1.218000, -1.192000,
            {
				arg = 312 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },	--R-27R
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },	--R-27ER
                
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"),			--FAB-250
                BD3("{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"),			--BetAB-500
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74884}"),			--KMGU-2 - 96 AO-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74881}"),			--KMGU-2 - 96 PTAB-2.5KO
                BD3("{4203753F-8198-4E85-9924-6F8FF679F9FF}"),			--RBK-250 PTAB-2.5M
				BD3("{RBK_250_275_AO_1SCH}"),							--RBK-250-275 AO-1SCh
				BD3("{RBK_500U_OAB_2_5RT}"),							--RBK-500U OAB-2.5RT
                BD3("{D5435F26-F120-4FA3-9867-34ACE562EF1B}"),			--RBK-500 PTAB-10-5
				BD3("{7AEC222D-C523-425e-B714-719C0D1EB14D}"),			--RBK-500 PTAB-1M
                BD3("{37DCC01E-9E02-432F-B61D-10C166CA2798}"),			--FAB-500 M62
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },	--Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },	--Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },	--Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },	--Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },	--Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },	--Smoke Generator - orange
				MBD("{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}"),			-- 6 * FAB-100
				MBD("{3E35F8C1-052D-11d6-9191-00A0249B6F00}"),			-- 4 * FAB-250
				BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"),			--SAB-100
            }
        ),
        pylon(6, 1, -3.751000, -0.384000, 0.000000,
            {
				arg = 313 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },	--R-27R
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },	--R-27ER
                
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"),			--FAB-250
                BD3("{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"),			--BetAB-500
                BD3("{4203753F-8198-4E85-9924-6F8FF679F9FF}"),			--RBK-250 PTAB-2.5M
				BD3("{RBK_250_275_AO_1SCH}"),							--RBK-250-275 AO-1SCh
				BD3("{RBK_500U_OAB_2_5RT}"),							--RBK-500U OAB-2.5RT
                BD3("{D5435F26-F120-4FA3-9867-34ACE562EF1B}"),			--RBK-500 PTAB-10-5
				BD3("{7AEC222D-C523-425e-B714-719C0D1EB14D}"),			--RBK-500 PTAB-1M
                BD3("{37DCC01E-9E02-432F-B61D-10C166CA2798}"),			--FAB-500 M62
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },	--Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },	--Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },	--Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },	--Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },	--Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },	--Smoke Generator - orange
				MBD("{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}"),			--6 * FAB-100
				MBD("{53BE25A4-C86C-4571-9BC0-47D668349595}"),			--6 * FAB-250
				BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"),			--SAB-100

            }
        ),
        pylon(7, 1, 0.986000, -0.384000, 0.000000,
            {
				arg = 314 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },	--R-27R
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },	--R-27ER
                
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"),			--FAB-250
                BD3("{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"),			--BetAB-500
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74884}"),			--KMGU-2 - 96 AO-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74881}"),			--KMGU-2 - 96 PTAB-2.5KO
                BD3("{4203753F-8198-4E85-9924-6F8FF679F9FF}"),			--RBK-250 PTAB-2.5M
				BD3("{RBK_250_275_AO_1SCH}"),							--RBK-250-275 AO-1SCh
				BD3("{RBK_500U_OAB_2_5RT}"),							--RBK-500U OAB-2.5RT
                BD3("{D5435F26-F120-4FA3-9867-34ACE562EF1B}"),			--RBK-500 PTAB-10-5
				BD3("{7AEC222D-C523-425e-B714-719C0D1EB14D}"),			--RBK-500 PTAB-1M
                BD3("{37DCC01E-9E02-432F-B61D-10C166CA2798}"),			--FAB-500 M62
				MBD("{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}"),			-- 6 * FAB-100
				MBD("{53BE25A4-C86C-4571-9BC0-47D668349595}"),			-- 6 * FAB-250
				BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"),			--SAB-100
            }
        ),
        pylon(8, 1, -0.075000, -1.218000, 1.192000,
            {
				arg = 315 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },	--R-27R
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },	--R-27ER
                
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"),			--FAB-250
                BD3("{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"),			--BetAB-500
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74884}"),			--KMGU-2 - 96 AO-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74881}"),			--KMGU-2 - 96 PTAB-2.5KO
                BD3("{4203753F-8198-4E85-9924-6F8FF679F9FF}"),			--RBK-250 PTAB-2.5M
				BD3("{RBK_250_275_AO_1SCH}"),							--RBK-250-275 AO-1SCh
				BD3("{RBK_500U_OAB_2_5RT}"),							--RBK-500U OAB-2.5RT
                BD3("{D5435F26-F120-4FA3-9867-34ACE562EF1B}"),			--RBK-500 PTAB-10-5
				BD3("{7AEC222D-C523-425e-B714-719C0D1EB14D}"),			--RBK-500 PTAB-1M
                BD3("{37DCC01E-9E02-432F-B61D-10C166CA2798}"),			--FAB-500 M62
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },	--Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },	--Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },	--Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },	--Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },	--Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },	--Smoke Generator - orange
				MBD("{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}"),			-- 6 * FAB-100
				MBD("{3E35F8C1-052D-11d6-9191-00A0249B6F00}"),			-- 4 * FAB-250
				BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"),			--SAB-100
            }
        ),
        pylon(9, 0, -0.091000, -0.321000, 3.253000,
            {
				arg = 316 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },	--R-27R
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },	--R-27ER
                
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"),			--FAB-250
                BD3("{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"),			--BetAB-500
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74884}"),			--KMGU-2 - 96 AO-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74881}"),			--KMGU-2 - 96 PTAB-2.5KO
                BD3("{4203753F-8198-4E85-9924-6F8FF679F9FF}"),			--RBK-250 PTAB-2.5M
				BD3("{RBK_250_275_AO_1SCH}"),							--RBK-250-275 AO-1SCh
				BD3("{RBK_500U_OAB_2_5RT}"),							--RBK-500U OAB-2.5RT
                BD3("{D5435F26-F120-4FA3-9867-34ACE562EF1B}"),			--RBK-500 PTAB-10-5
				BD3("{7AEC222D-C523-425e-B714-719C0D1EB14D}"),			--RBK-500 PTAB-1M
                BD3("{37DCC01E-9E02-432F-B61D-10C166CA2798}"),			--FAB-500 M62
                BD3("{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"),			--B-8M1 - 20 S-8KOM
                BD3("{FC56DF80-9B09-44C5-8976-DCFAFF219062}"),			--B-13L - 5 S-13 OF
                BD3("{A0648264-4BC0-4EE8-A543-D119F6BA4257}"),			--S-25 OFM
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },	--Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },	--Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },	--Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },	--Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },	--Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },	--Smoke Generator - orange
				BD3("B-8M1 - 20 S-8OFP2"),								--B-8M1 - 20 S-8OFP2
				BD3("{3DFB7320-AB0E-11d7-9897-000476191836}"),			--B-8M1 - 20 S-8TsM
				BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"),			--SAB-100
            }
        ),
        pylon(10, 0, -1.137000, -0.321000, 4.524000,
            {
				arg = 317 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },	--R-73
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },	--R-27R
                { CLSID = "{88DAC840-9F75-4531-8689-B46E64E42E53}" },	--R-27T
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },	--R-27ET
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },	--R-27ER
                
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"),			--FAB-250
                BD3("{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"),			--BetAB-500
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74884}"),			--KMGU-2 - 96 AO-2.5RT
                BD3("{96A7F676-F956-404A-AD04-F33FB2C74881}"),			--KMGU-2 - 96 PTAB-2.5KO
                BD3("{4203753F-8198-4E85-9924-6F8FF679F9FF}"),			--RBK-250 PTAB-2.5M
				BD3("{RBK_250_275_AO_1SCH}"),							--RBK-250-275 AO-1SCh
				BD3("{RBK_500U_OAB_2_5RT}"),							--RBK-500U OAB-2.5RT
                BD3("{D5435F26-F120-4FA3-9867-34ACE562EF1B}"),			--RBK-500 PTAB-10-5
				BD3("{7AEC222D-C523-425e-B714-719C0D1EB14D}"),			--RBK-500 PTAB-1M
                BD3("{37DCC01E-9E02-432F-B61D-10C166CA2798}"),			--FAB-500 M62
                BD3("{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"),			--B-8M1 - 20 S-8KOM
                BD3("{FC56DF80-9B09-44C5-8976-DCFAFF219062}"),			--B-13L - 5 S-13 OF
                BD3("{A0648264-4BC0-4EE8-A543-D119F6BA4257}"),			--S-25 OFM
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },	--Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },	--Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },	--Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },	--Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },	--Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },	--Smoke Generator - orange
				BD3("B-8M1 - 20 S-8OFP2"),								--B-8M1 - 20 S-8OFP2
				BD3("{3DFB7320-AB0E-11d7-9897-000476191836}"),			--B-8M1 - 20 S-8TsM
				BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"),			--SAB-100
				{ CLSID = "{TWIN_S25}" 				, arg_value = 1},	--2* S-25 OFM
				{ CLSID = "{TWIN_B13L_5OF}" 		, arg_value = 1},	--2* B-13L - 5 S-13 OF
				{ CLSID = "{TWIN_B_8M1_S_8KOM}" 	, arg_value = 1},	--2* B-8M1 - 20 S-8KOM
				{ CLSID = "{TWIN_B_8M1_S_8TsM}" 	, arg_value = 1},	--2* B-8M1 - 20 S-8TsM
				{ CLSID = "{TWIN_B_8M1_S_8_OFP2}"	, arg_value = 1},	--2* B-8M1 - 20 S-8OFP2
				MBD("{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}"),			-- 6 * FAB-100
				MBD("{MBD3_U6_3*FAB-250_fwd}"),							-- 3 * FAB-250
            }
        ),
        pylon(11, 0, -2.535000, -0.165000, 6.168000,
            {
				arg = 318 ,arg_value = 0,
				use_full_connector_position = true,
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },	--R-73
                BD3("{3C612111-C7AD-476E-8A8E-2485812F4E5C}"),			--FAB-250
				BD3("{0511E528-EA28-4caf-A212-00D1408DF10A}"),			--SAB-100
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },	--Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },	--Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },	--Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },	--Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },	--Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },	--Smoke Generator - orange
            }
        ),
        pylon(12, 0, -1.943000, 0.173000, 7.280000,
            {
				arg = 319 ,arg_value = 0,
 				use_full_connector_position = true,
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" }, --R-73
				{ CLSID = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}" , arg = 319 ,arg_value = 1, required = {{station = 1,loadout = {"{44EE8698-89F9-48EE-AF36-5FD31896A82F}"}}}},--Sorbciya
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" }, --Smoke Generator - red
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" }, --Smoke Generator - green
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" }, --Smoke Generator - blue
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" }, --Smoke Generator - white
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" }, --Smoke Generator - yellow
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" }, --Smoke Generator - orange
            }
        ),
    },
    {
        aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(Intercept),
        --aircraft_task(GAI),
        aircraft_task(AFAC),
        aircraft_task(CAS),
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
		aircraft_task(AntishipStrike),
    },
	aircraft_task(CAP)
	
	
);
