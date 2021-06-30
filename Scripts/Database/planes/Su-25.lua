return plane( "Su-25", _("Su-25"),
    {
        
        EmptyWeight = "10099",
        MaxFuelWeight = "2835",
        MaxHeight = "7000",
        MaxSpeed = "980",
        MaxTakeOffWeight = "17350",
        Picture = "Su-25.png",
        Rate = "40",
        Shape = "Su-25",
        WingSpan = "14.35",
        WorldID = 16,
		country_of_origin = "RUS",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 256,
			-- PPR-26
			chaff = {default = 128, increment = 32, chargeSz = 1},
			-- PPI-26
			flare = {default = 128, increment = 32, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Battleplane, Su_25,
        "Battleplanes",
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_AVERAGE, LOOK_AVERAGE),
        Sensors = {
            RWR = "Abstract RWR"
        },
		Failures = {
			{ id = 'asc', 		label = _('ASC'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'autopilot', label = _('AUTOPILOT'), enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hydro',  	label = _('HYDRO'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'l_engine',  label = _('L-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'r_engine',  label = _('R-ENGINE'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'radar',  	label = _('RADAR'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'eos',  		label = _('EOS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'helmet',  	label = _('HELMET'), 	enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'mlws',  	label = _('MLWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'rws',  		label = _('RWS'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'ecm',   	label = _('ECM'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			{ id = 'hud',  		label = _('HUD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },
			--{ id = 'mfd',  		label = _('MFD'), 		enable = false, hh = 0, mm = 0, mmint = 1, prob = 100 },		
		},
		HumanRadio = {
			frequency = 124.0,
			modulation = MODULATION_AM
		},
        mapclasskey = "P0091000025",
		pylons_enumeration = {1, 10, 2, 9, 3, 8, 4, 7, 5, 6},
    },
    {
        pylon(1, 0, -0.958000, -0.604000, -5.149000,
            {
                FiZ = -2,
				arg = 308,
            },
            {
				{CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",arg_value = 0.5,},-- R-60M
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}",arg_value = 0.5,},-- Smoke Generator - red
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}",arg_value = 0.5,},-- Smoke Generator - green
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}",arg_value = 0.5,},-- Smoke Generator - blue
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}",arg_value = 0.5,},-- Smoke Generator - white
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}",arg_value = 0.5,},-- Smoke Generator - yellow
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}",arg_value = 0.5,},-- Smoke Generator - orange
            }
        ),
        pylon(2, 0, -0.827000, -0.496000, -4.383000,
            {
                FiZ = -2,
				arg = 309,
            },
            {
				{CLSID = "B-8M1 - 20 S-8OFP2"},-- B-8M1 - 20 S-8OFP2
				{CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}"},-- FAB-100
				{CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}"},-- SAB-100
				{CLSID = "{29A828E2-C6BB-11d8-9897-000476191836}"},-- MBD-2-67U - 4 FAB-100
				{CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}"},-- FAB-250
				{CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}"},-- RBK-250 PTAB-2.5M
				{CLSID = "{RBK_250_275_AO_1SCH}" },					-- RBK-250-275 AO-1SCh
				{CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}"},-- FAB-500 M62
				{CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}"},-- RBK-500 PTAB-10-5
				{CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}"},-- RBK-500 PTAB-1M
				{CLSID = "{RBK_500U_OAB_2_5RT}" },					-- RBK-500U OAB-2.5RT
				{CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"},-- BetAB-500
				{CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}"},-- BetAB-500ShP
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}",arg_value = 0.5,},-- KMGU-2 - 96 AO-2.5RT
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}",arg_value = 0.5,},-- KMGU-2 - 96 PTAB-2.5KO
				{CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}"},-- UB-32A - 32 S-5KO
				{CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"},-- B-8M1 - 20 S-8KOM
				{CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}"},-- B-13L - 5 S-13 OF
				{CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",arg_value = 0.5,},-- S-24B
				{CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}"},-- S-25 OFM
				{CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}"},-- B-8M1 - 20 S-8TsM
				{CLSID = "{0180F983-C14A-11d8-9897-000476191836}"},-- S-25L
            }
        ),
        pylon(3, 0, -0.608000, -0.465000, -3.549000,
            {
                FiZ = -2,
                arg = 310,
            },
            {
				{CLSID = "B-8M1 - 20 S-8OFP2"},-- B-8M1 - 20 S-8OFP2
				{CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}"},-- FAB-100
				{CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}"},-- SAB-100
				{CLSID = "{29A828E2-C6BB-11d8-9897-000476191836}"},-- MBD-2-67U - 4 FAB-100
				{CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}"},-- FAB-250
				{CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}"},-- RBK-250 PTAB-2.5M
				{CLSID = "{RBK_250_275_AO_1SCH}" },					-- RBK-250-275 AO-1SCh
				{CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}"},-- FAB-500 M62
				{CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}"},-- RBK-500 PTAB-10-5
				{CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}"},-- RBK-500 PTAB-1M
				{CLSID = "{RBK_500U_OAB_2_5RT}" },					-- RBK-500U OAB-2.5RT
				{CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"},-- BetAB-500
				{CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}"},-- BetAB-500ShP
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}",arg_value = 0.5,},-- KMGU-2 - 96 AO-2.5RT
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}",arg_value = 0.5,},-- KMGU-2 - 96 PTAB-2.5KO
				{CLSID = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",arg_value = 0.5,},-- Kh-25ML
				{CLSID = "{0180F983-C14A-11d8-9897-000476191836}"},-- S-25L
				{CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}"},-- UB-32A - 32 S-5KO
				{CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"},-- B-8M1 - 20 S-8KOM
				{CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}"},-- B-13L - 5 S-13 OF
				{CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",arg_value = 0.5,},-- S-24B
				{CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}"},-- S-25 OFM
				{CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}"},-- B-8M1 - 20 S-8TsM
				{CLSID = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}"},-- Fuel tank 800L Wing
            }
        ),
        pylon(4, 0, -0.398000, -0.434000, -2.776000,
            {
                FiZ = -2,
                arg = 311,
            },
            {
				{CLSID = "B-8M1 - 20 S-8OFP2"},-- B-8M1 - 20 S-8OFP2
				{CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}"},-- FAB-100
				{CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}"},-- SAB-100
				{CLSID = "{29A828E2-C6BB-11d8-9897-000476191836}"},-- MBD-2-67U - 4 FAB-100
				{CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}"},-- FAB-250
				{CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}"},-- RBK-250 PTAB-2.5M
				{CLSID = "{RBK_250_275_AO_1SCH}" },					-- RBK-250-275 AO-1SCh
				{CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}"},-- FAB-500 M62
				{CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}"},-- RBK-500 PTAB-10-5
				{CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}"},-- RBK-500 PTAB-1M
				{CLSID = "{RBK_500U_OAB_2_5RT}" },					-- RBK-500U OAB-2.5RT
				{CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"},-- BetAB-500
				{CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}"},-- BetAB-500ShP
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}",arg_value = 0.5,},-- KMGU-2 - 96 AO-2.5RT
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}",arg_value = 0.5,},-- KMGU-2 - 96 PTAB-2.5KO
				{CLSID = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",arg_value = 0.5,},-- Kh-25ML
				{CLSID = "{0180F983-C14A-11d8-9897-000476191836}"},-- S-25L
				{CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}"},-- UB-32A - 32 S-5KO
				{CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"},-- B-8M1 - 20 S-8KOM
				{CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}"},-- B-13L - 5 S-13 OF
				{CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",arg_value = 0.5,},-- S-24B
				{CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}"},-- S-25 OFM
				{CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}"},-- B-8M1 - 20 S-8TsM
				{CLSID = "{E92CBFE5-C153-11d8-9897-000476191836}"},-- SPPU-22-1 Gun pod
            }
        ),
        pylon(5, 1, -0.125000, -0.400000, -2.018000,
            {
                FiZ = -2,
                arg = 312,
            },
            {
				{CLSID = "B-8M1 - 20 S-8OFP2"},-- B-8M1 - 20 S-8OFP2
				{CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}"},-- FAB-100
				{CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}"},-- SAB-100
				{CLSID = "{29A828E2-C6BB-11d8-9897-000476191836}"},-- MBD-2-67U - 4 FAB-100
				{CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}"},-- FAB-250
				{CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}"},-- RBK-250 PTAB-2.5M
				{CLSID = "{RBK_250_275_AO_1SCH}" },					-- RBK-250-275 AO-1SCh
				{CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}"},-- FAB-500 M62
				{CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}"},-- RBK-500 PTAB-10-5
				{CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}"},-- RBK-500 PTAB-1M
				{CLSID = "{RBK_500U_OAB_2_5RT}" },					-- RBK-500U OAB-2.5RT
				{CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"},-- BetAB-500
				{CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}"},-- BetAB-500ShP
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}",arg_value = 0.5,},-- KMGU-2 - 96 AO-2.5RT
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}",arg_value = 0.5,},-- KMGU-2 - 96 PTAB-2.5KO
				{CLSID = "{D4A8D9B9-5C45-42e7-BBD2-0E54F8308432}",arg_value = 0.7,connector = "hardpoint_AKU_58-5"},-- Kh-29L
				{CLSID = "{0180F983-C14A-11d8-9897-000476191836}"},-- S-25L
				{CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}"},-- UB-32A - 32 S-5KO
				{CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"},-- B-8M1 - 20 S-8KOM
				{CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}"},-- B-13L - 5 S-13 OF
				{CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",arg_value = 0.5,},-- S-24B
				{CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}"},-- S-25 OFM
				{CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}"},-- B-8M1 - 20 S-8TsM
				{CLSID = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}"},-- Fuel tank 800L Wing
				{CLSID = "{E92CBFE5-C153-11d8-9897-000476191836}"},-- SPPU-22-1 Gun pod
            }
        ),
        pylon(6, 1, -0.125000, -0.400000, 2.018000,
            {
                FiZ = -2,
                arg = 314,
            },
            {
				{CLSID = "B-8M1 - 20 S-8OFP2"},-- B-8M1 - 20 S-8OFP2
				{CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}"},-- FAB-100
				{CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}"},-- SAB-100
				{CLSID = "{29A828E2-C6BB-11d8-9897-000476191836}"},-- MBD-2-67U - 4 FAB-100
				{CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}"},-- FAB-250
				{CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}"},-- RBK-250 PTAB-2.5M
				{CLSID = "{RBK_250_275_AO_1SCH}" },					-- RBK-250-275 AO-1SCh
				{CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}"},-- FAB-500 M62
				{CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}"},-- RBK-500 PTAB-10-5
				{CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}"},-- RBK-500 PTAB-1M
				{CLSID = "{RBK_500U_OAB_2_5RT}" },					-- RBK-500U OAB-2.5RT
				{CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"},-- BetAB-500
				{CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}"},-- BetAB-500ShP
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}",arg_value = 0.5,},-- KMGU-2 - 96 AO-2.5RT
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}",arg_value = 0.5,},-- KMGU-2 - 96 PTAB-2.5KO
				{CLSID = "{D4A8D9B9-5C45-42e7-BBD2-0E54F8308432}",arg_value = 0.7,connector = "hardpoint_AKU_58-6"},-- Kh-29L
				{CLSID = "{0180F983-C14A-11d8-9897-000476191836}"},-- S-25L
				{CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}"},-- UB-32A - 32 S-5KO
				{CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"},-- B-8M1 - 20 S-8KOM
				{CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}"},-- B-13L - 5 S-13 OF
				{CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",arg_value = 0.5,},-- S-24B
				{CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}"},-- S-25 OFM
				{CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}"},-- B-8M1 - 20 S-8TsM
				{CLSID = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}"},-- Fuel tank 800L Wing
				{CLSID = "{E92CBFE5-C153-11d8-9897-000476191836}"},-- SPPU-22-1 Gun pod
            }
        ),
        pylon(7, 0, -0.398000, -0.434000, 2.776000,
            {
                FiZ = -2,
                arg = 315,
            },
            {
				{CLSID = "B-8M1 - 20 S-8OFP2"},-- B-8M1 - 20 S-8OFP2
				{CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}"},-- FAB-100
				{CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}"},-- SAB-100
				{CLSID = "{29A828E2-C6BB-11d8-9897-000476191836}"},-- MBD-2-67U - 4 FAB-100
				{CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}"},-- FAB-250
				{CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}"},-- RBK-250 PTAB-2.5M
				{CLSID = "{RBK_250_275_AO_1SCH}" },					-- RBK-250-275 AO-1SCh
				{CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}"},-- FAB-500 M62
				{CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}"},-- RBK-500 PTAB-10-5
				{CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}"},-- RBK-500 PTAB-1M
				{CLSID = "{RBK_500U_OAB_2_5RT}" },					-- RBK-500U OAB-2.5RT
				{CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"},-- BetAB-500
				{CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}"},-- BetAB-500ShP
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}",arg_value = 0.5,},-- KMGU-2 - 96 AO-2.5RT
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}",arg_value = 0.5,},-- KMGU-2 - 96 PTAB-2.5KO
				{CLSID = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",arg_value = 0.5,},-- Kh-25ML
				{CLSID = "{0180F983-C14A-11d8-9897-000476191836}"},-- S-25L
				{CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}"},-- UB-32A - 32 S-5KO
				{CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"},-- B-8M1 - 20 S-8KOM
				{CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}"},-- B-13L - 5 S-13 OF
				{CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",arg_value = 0.5,},-- S-24B
				{CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}"},-- S-25 OFM
				{CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}"},-- B-8M1 - 20 S-8TsM
				{CLSID = "{E92CBFE5-C153-11d8-9897-000476191836}"},-- SPPU-22-1 Gun pod
            }
        ),
        pylon(8, 0, -0.608000, -0.465000, 3.549000,
            {
                FiZ = -2,
                arg = 316,
            },
            {
				{CLSID = "B-8M1 - 20 S-8OFP2"},-- B-8M1 - 20 S-8OFP2
				{CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}"},-- FAB-100
				{CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}"},-- SAB-100
				{CLSID = "{29A828E2-C6BB-11d8-9897-000476191836}"},-- MBD-2-67U - 4 FAB-100
				{CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}"},-- FAB-250
				{CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}"},-- RBK-250 PTAB-2.5M
				{CLSID = "{RBK_250_275_AO_1SCH}" },					-- RBK-250-275 AO-1SCh
				{CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}"},-- FAB-500 M62
				{CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}"},-- RBK-500 PTAB-10-5
				{CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}"},-- RBK-500 PTAB-1M
				{CLSID = "{RBK_500U_OAB_2_5RT}" },					-- RBK-500U OAB-2.5RT
				{CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"},-- BetAB-500
				{CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}"},-- BetAB-500ShP
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}",arg_value = 0.5,},-- KMGU-2 - 96 AO-2.5RT
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}",arg_value = 0.5,},-- KMGU-2 - 96 PTAB-2.5KO
				{CLSID = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",arg_value = 0.5,},-- Kh-25ML
				{CLSID = "{0180F983-C14A-11d8-9897-000476191836}"},-- S-25L
				{CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}"},-- UB-32A - 32 S-5KO
				{CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"},-- B-8M1 - 20 S-8KOM
				{CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}"},-- B-13L - 5 S-13 OF
				{CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",arg_value = 0.5,},-- S-24B
				{CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}"},-- S-25 OFM
				{CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}"},-- B-8M1 - 20 S-8TsM
				{CLSID = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}"},-- Fuel tank 800L Wing
				{CLSID = "{F75187EF-1D9E-4DA9-84B4-1A1A14A3973A}",arg_value = 0.5,},-- SPS-141
            }
        ),
        pylon(9, 0, -0.827000, -0.496000, 4.383000,
            {
                FiZ = -2,
                arg = 317,
            },
            {
				{CLSID = "B-8M1 - 20 S-8OFP2"},-- B-8M1 - 20 S-8OFP2
				{CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}"},-- FAB-100
				{CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}"},-- SAB-100
				{CLSID = "{29A828E2-C6BB-11d8-9897-000476191836}"},-- MBD-2-67U - 4 FAB-100
				{CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}"},-- FAB-250
				{CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}"},-- RBK-250 PTAB-2.5M
				{CLSID = "{RBK_250_275_AO_1SCH}" },					-- RBK-250-275 AO-1SCh
				{CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}"},-- FAB-500 M62
				{CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}"},-- RBK-500 PTAB-10-5
				{CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}"},-- RBK-500 PTAB-1M
				{CLSID = "{RBK_500U_OAB_2_5RT}" },					-- RBK-500U OAB-2.5RT
				{CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"},-- BetAB-500
				{CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}"},-- BetAB-500ShP
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}",arg_value = 0.5,},-- KMGU-2 - 96 AO-2.5RT
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}",arg_value = 0.5,},-- KMGU-2 - 96 PTAB-2.5KO
				{CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}"},-- UB-32A - 32 S-5KO
				{CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"},-- B-8M1 - 20 S-8KOM
				{CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}"},-- B-13L - 5 S-13 OF
				{CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",arg_value = 0.5,},-- S-24B
				{CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}"},-- S-25 OFM
				{CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}"},-- B-8M1 - 20 S-8TsM
				{CLSID = "{0180F983-C14A-11d8-9897-000476191836}"},-- S-25L
            }
        ),
        pylon(10, 0, -0.958000, -0.604000, 5.149000,
            {
                FiZ = -2,
                arg = 318,
            },
            {
				{CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",arg_value = 0.5,},-- R-60M
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}",arg_value = 0.5,},-- Smoke Generator - red
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}",arg_value = 0.5,},-- Smoke Generator - green
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}",arg_value = 0.5,},-- Smoke Generator - blue
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}",arg_value = 0.5,},-- Smoke Generator - white
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}",arg_value = 0.5,},-- Smoke Generator - yellow
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}",arg_value = 0.5,},-- Smoke Generator - orange
            }
        ),
    },
    {
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
        aircraft_task(PinpointStrike),
        aircraft_task(CAS),
        aircraft_task(AFAC),
		aircraft_task(AntishipStrike),
    },
	aircraft_task(CAS)
	
	
);
