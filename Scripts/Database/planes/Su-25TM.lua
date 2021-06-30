return plane( "Su-25TM", _("Su-25TM"),
    {
        
        EmptyWeight = "11496",
        MaxFuelWeight = "3790",
        MaxHeight = "12000",
        MaxSpeed = "950",
        MaxTakeOffWeight = "19500",
        Picture = "Su-25TM.png",
        Rate = "50",
        Shape = "Su-39",
        WingSpan = "14.36",
        WorldID = 38,
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
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Battleplane, Su_39,
        "Battleplanes",
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_AVERAGE, LOOK_AVERAGE),

        Sensors = {
            OPTIC = "Shkval",
            RWR = "Abstract RWR"
        },
        Countermeasures = {
            IRCM = "Sukhogruz"
        },
        mapclasskey = "P0091000025",
		pylons_enumeration = {1, 11, 2, 10, 3, 9, 4, 8, 5, 7, 6},
    },
    {
        pylon(1, 0, -0.313000, -0.359000, -5.110000,
            {
                FiZ = -2,
                arg = 308,
            },
            {
				{CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",arg_value = 0.5,},-- R-60M
				{CLSID = "{44EE8698-89F9-48EE-AF36-5FD31896A82D}",arg_value = 1,connector = "hardpoint-zero-1"},-- MPS-410
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}",arg_value = 0.5,},-- Smoke Generator - red
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}",arg_value = 0.5,},-- Smoke Generator - green
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}",arg_value = 0.5,},-- Smoke Generator - blue
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}",arg_value = 0.5,},-- Smoke Generator - white
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}",arg_value = 0.5,},-- Smoke Generator - yellow
				{CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}",arg_value = 0.5,},-- Smoke Generator - orange
            }
        ),
        pylon(2, 0, -0.610000, -0.325000, -4.359000,
            {
                FiZ = -3,
                arg = 309,
            },
            {
				{CLSID = "B-8M1 - 20 S-8OFP2",arg_value = 0,},-- B-8M1 - 20 S-8OFP2
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
				{CLSID = "{CBC29BFE-3D24-4C64-B81D-941239D12249}",arg_value = 0.5,},-- R-73
				{CLSID = "{B4C01D60-A8A3-4237-BD72-CA7655BC0FEC}",arg_value = 0.6,connector = "hardpoint_APU_170-2"},-- R-77
            }
        ),
        pylon(3, 0, -0.367000, -0.301000, -3.574000,
            {
                FiZ = -3,
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
				{CLSID = "{752AF1D2-EBCC-4bd7-A1E7-2357F5601C70}",arg_value = 0.5,},-- Kh-25MPU
				{CLSID = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",arg_value = 0.5,},-- Kh-25ML
				{CLSID = "{0180F983-C14A-11d8-9897-000476191836}"},-- S-25L
				{CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}"},-- UB-32A - 32 S-5KO
				{CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"},-- B-8M1 - 20 S-8KOM
				{CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}"},-- B-13L - 5 S-13 OF
				{CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",arg_value = 0.5,},-- S-24B
				{CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}"},-- S-25 OFM
				{CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}"},-- B-8M1 - 20 S-8TsM
				{CLSID = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}"},-- Fuel tank 800L Wing
				{CLSID = "{Kh-25MP}",arg_value = 0.5,},				-- Kh-25MP	
            }
        ),
        pylon(4, 0, -0.150000, -0.288000, -2.794000,
            {
                FiZ = -3,
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
				{CLSID = "{752AF1D2-EBCC-4bd7-A1E7-2357F5601C70}",arg_value = 0.5,},-- Kh-25MPU
				{CLSID = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",arg_value = 0.5,},-- Kh-25ML
				{CLSID = "{F789E86A-EE2E-4E6B-B81E-D5E5F903B6ED}",arg_value = 0.5,},-- APU-8 - 8 9A4172 Vikhr
				{CLSID = "{0180F983-C14A-11d8-9897-000476191836}"},-- S-25L
				{CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}"},-- UB-32A - 32 S-5KO
				{CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"},-- B-8M1 - 20 S-8KOM
				{CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}"},-- B-13L - 5 S-13 OF
				{CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",arg_value = 0.5,},-- S-24B
				{CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}"},-- S-25 OFM
				{CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}"},-- B-8M1 - 20 S-8TsM
				{CLSID = "{E92CBFE5-C153-11d8-9897-000476191836}"},-- SPPU-22-1 Gun pod
				{CLSID = "{Kh-25MP}",arg_value = 0.5,},				-- Kh-25MP	
            }
        ),
        pylon(5, 1, 0.072000, -0.263000, -2.042000,
            {
                FiZ = -3,
                arg = 312,
            },
            {
				{CLSID = "B-8M1 - 20 S-8OFP2"},-- B-8M1 - 20 S-8OFP2
				{CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}"},-- FAB-100
				{CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}"},-- SAB-100
				{CLSID = "{29A828E2-C6BB-11d8-9897-000476191836}"},-- MBD-2-67U - 4 FAB-100
				{CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}"},-- FAB-250
				{CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}"},-- RBK-250 PTAB-2.5M
				{CLSID = "{RBK_250_275_AO_1SCH}" },				-- RBK-250-275 AO-1SCh
				{CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}"},-- FAB-500 M62
				{CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}"},-- KAB-500Kr
				{CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}"},-- RBK-500 PTAB-10-5
				{CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}"},-- RBK-500 PTAB-1M
				{CLSID = "{RBK_500U_OAB_2_5RT}" },					-- RBK-500U OAB-2.5RT
				{CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"},-- BetAB-500
				{CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}"},-- BetAB-500ShP
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}",arg_value = 0.5,},-- KMGU-2 - 96 AO-2.5RT
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}",arg_value = 0.5,},-- KMGU-2 - 96 PTAB-2.5KO
				{CLSID = "{0180F983-C14A-11d8-9897-000476191836}"},-- S-25L
				{CLSID = "{D4A8D9B9-5C45-42e7-BBD2-0E54F8308432}",arg_value = 0.7,connector = "hardpoint_AKU_58-5"},-- Kh-29L
				{CLSID = "{601C99F7-9AF3-4ed7-A565-F8B8EC0D7AAC}",arg_value = 0.7,connector = "hardpoint_AKU_58-5"},-- Kh-29T
				{CLSID = "{B5CA9846-776E-4230-B4FD-8BCC9BFB1676}",arg_value = 0.7,connector = "hardpoint_AKU_58-5"},-- Kh-58U
				{CLSID = "{4D13E282-DF46-4B23-864A-A9423DFDE50A}",arg_value = 0.7,connector = "hardpoint_AKU_58-5"},-- Kh-31A
				{CLSID = "{D8F2C90B-887B-4B9E-9FE2-996BC9E9AF0A}",arg_value = 0.7,connector = "hardpoint_AKU_58-5"},-- Kh-31P
				{CLSID = "{2234F529-1D57-4496-8BB0-0150F9BDBBD3}",arg_value = 0.7,connector = "hardpoint_AKU_58-5"},-- Kh-35
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
        pylon(6, 0, -0.078000, -0.947000, 0.000000,
            {
                FiZ = -2,
                arg = 313,
            },
            {
				{CLSID = "{B1EF6B0E-3D91-4047-A7A5-A99E7D8B4A8B}",arg_value = 0.5,},-- Mercury LLTV Pod
				{CLSID = "{F4920E62-A99A-11d8-9897-000476191836}",arg_value = 0.5,},-- Kopyo radar pod
				{CLSID = "{0519A264-0AB6-11d6-9193-00A0249B6F00}",arg_value = 0.5,},-- L-081 Fantasmagoria ELINT pod
            }
        ),
        pylon(7, 1, 0.072000, -0.263000, 2.042000,
            {
                FiZ = -3,
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
				{CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}"},-- KAB-500Kr
				{CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}"},-- RBK-500 PTAB-10-5
				{CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}"},-- RBK-500 PTAB-1M
				{CLSID = "{RBK_500U_OAB_2_5RT}" },					-- RBK-500U OAB-2.5RT
				{CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}"},-- BetAB-500
				{CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}"},-- BetAB-500ShP
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}",arg_value = 0.5,},-- KMGU-2 - 96 AO-2.5RT
				{CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}",arg_value = 0.5,},-- KMGU-2 - 96 PTAB-2.5KO
				{CLSID = "{0180F983-C14A-11d8-9897-000476191836}"},-- S-25L
				{CLSID = "{D4A8D9B9-5C45-42e7-BBD2-0E54F8308432}",arg_value = 0.7,connector = "hardpoint_AKU_58-7"},-- Kh-29L
				{CLSID = "{601C99F7-9AF3-4ed7-A565-F8B8EC0D7AAC}",arg_value = 0.7,connector = "hardpoint_AKU_58-7"},-- Kh-29T
				{CLSID = "{B5CA9846-776E-4230-B4FD-8BCC9BFB1676}",arg_value = 0.7,connector = "hardpoint_AKU_58-7"},-- Kh-58U
				{CLSID = "{4D13E282-DF46-4B23-864A-A9423DFDE50A}",arg_value = 0.7,connector = "hardpoint_AKU_58-7"},-- Kh-31A
				{CLSID = "{D8F2C90B-887B-4B9E-9FE2-996BC9E9AF0A}",arg_value = 0.7,connector = "hardpoint_AKU_58-7"},-- Kh-31P
				{CLSID = "{2234F529-1D57-4496-8BB0-0150F9BDBBD3}",arg_value = 0.7,connector = "hardpoint_AKU_58-7"},-- Kh-35
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
        pylon(8, 0, -0.150000, -0.288000, 2.794000,
            {
                FiZ = -3,
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
				{CLSID = "{752AF1D2-EBCC-4bd7-A1E7-2357F5601C70}",arg_value = 0.5,},-- Kh-25MPU
				{CLSID = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",arg_value = 0.5,},-- Kh-25ML
				{CLSID = "{F789E86A-EE2E-4E6B-B81E-D5E5F903B6ED}",arg_value = 0.5,},-- APU-8 - 8 9A4172 Vikhr
				{CLSID = "{0180F983-C14A-11d8-9897-000476191836}"},-- S-25L
				{CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}"},-- UB-32A - 32 S-5KO
				{CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"},-- B-8M1 - 20 S-8KOM
				{CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}"},-- B-13L - 5 S-13 OF
				{CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",arg_value = 0.5,},-- S-24B
				{CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}"},-- S-25 OFM
				{CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}"},-- B-8M1 - 20 S-8TsM
				{CLSID = "{E92CBFE5-C153-11d8-9897-000476191836}"},-- SPPU-22-1 Gun pod
				{CLSID = "{Kh-25MP}",arg_value = 0.5,},				-- Kh-25MP	
            }
        ),
        pylon(9, 0, -0.367000, -0.301000, 3.574000,
            {
                FiZ = -3,
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
				{CLSID = "{752AF1D2-EBCC-4bd7-A1E7-2357F5601C70}",arg_value = 0.5,},-- Kh-25MPU
				{CLSID = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}",arg_value = 0.5,},-- Kh-25ML
				{CLSID = "{0180F983-C14A-11d8-9897-000476191836}"},-- S-25L
				{CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}"},-- UB-32A - 32 S-5KO
				{CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"},-- B-8M1 - 20 S-8KOM
				{CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}"},-- B-13L - 5 S-13 OF
				{CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",arg_value = 0.5,},-- S-24B
				{CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}"},-- S-25 OFM
				{CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}"},-- B-8M1 - 20 S-8TsM
				{CLSID = "{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}"},-- Fuel tank 800L Wing
				{CLSID = "{Kh-25MP}",arg_value = 0.5,},				-- Kh-25MP	
            }
        ),
        pylon(10, 0, -0.610000, -0.325000, 4.359000,
            {
                FiZ = -3,
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
				{CLSID = "{CBC29BFE-3D24-4C64-B81D-941239D12249}",arg_value = 0.5,},-- R-73
            }
        ),
        pylon(11, 0, -0.313000, -0.359000, 5.110000,
            {
                FiZ = -2,
                arg = 318,
            },
            {
				{CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}",arg_value = 0.5,},-- R-60M
				{CLSID = "{44EE8698-89F9-48EE-AF36-5FD31896A82C}",arg_value = 1,connector = "hardpoint-zero-11"},-- MPS-410
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
        aircraft_task(SEAD),
        aircraft_task(AFAC),
        aircraft_task(AntishipStrike),
    },
	aircraft_task(CAS)
);
