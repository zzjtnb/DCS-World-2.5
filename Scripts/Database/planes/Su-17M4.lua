return plane( "Su-17M4", _("Su-17M4"),
    {
        
        EmptyWeight = "10670",
        MaxFuelWeight = "3770",
        MaxHeight = "14000",
        MaxSpeed = "1860",
        MaxTakeOffWeight = "19430",
        Picture = "Su-17M4.png",
        Rate = "40",
        Shape = "SU-17",
        WingSpan = "13.68",
        WorldID = 48,
		country_of_origin = "RUS",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 128,
			-- PPR-26
			chaff = {default = 64, increment = 32, chargeSz = 1},
			-- PPI-26
			flare = {default = 64, increment = 32, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, SU_17M4,
        "Bombers",
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_BAD),
        Sensors = {
            RWR = "Abstract RWR"
        },
        mapclasskey = "P0091000025",
		pylons_enumeration = {3, 6, 4, 5, 1, 8, 2, 7},
    },
    {
        pylon(1, 0, -1.784000, -0.430000, -2.526000,
            {
            },
            {
                { CLSID = "B-8M1 - 20 S-8OFP2" },
                { CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}" },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
                { CLSID = "{6A367BB4-327F-4A04-8D9E-6D86BDC98E7E}" },
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },
                { CLSID = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}" },
                { CLSID = "{E659C4BE-2CD8-4472-8C08-3F28ACB61A8A}" },
                { CLSID = "{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}" },
                { CLSID = "{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}" },	-- Kh-25MPU
                { CLSID = "{292960BB-6518-41AC-BADA-210D65D5073C}" },
                { CLSID = "{414E383A-59EB-41BC-8566-2B5E0788ED1F}" },
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" },
                { CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}" },
                { CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" },
				{ CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },	
				{ CLSID = "{Kh-25MP}" },				
            }
        ),
        pylon(2, 0, 1.150000, -0.304000, -1.853000,
            {
            },
            {
                { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },--R-60
            }
        ),
        pylon(3, 0, 1.500000, -0.384000, -1.220000,
            {
            },
            {
                { CLSID = "B-8M1 - 20 S-8OFP2" },
                { CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}" },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
                { CLSID = "{6A367BB4-327F-4A04-8D9E-6D86BDC98E7E}" },
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },
                { CLSID = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}" },
                { CLSID = "{E659C4BE-2CD8-4472-8C08-3F28ACB61A8A}" },
                { CLSID = "{3E35F8C1-052D-11d6-9191-00A0249B6F00}" },
                { CLSID = "{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}" },
                { CLSID = "{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}" },
                { CLSID = "{292960BB-6518-41AC-BADA-210D65D5073C}" },
                { CLSID = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}", Type = 1},--Kh-29l
                { CLSID = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}", Type = 1},--Kh-29T
                { CLSID = "{FE382A68-8620-4AC0-BDF5-709BFE3977D7}", Type = 1},--Kh-58
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" },
                { CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}" },
                { CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{E92CBFE5-C153-11d8-9897-000476191836}" },
                { CLSID = "{F75187EF-1D9E-4DA9-84B4-1A1A14A3973A}" },
				{ CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },	
				{ CLSID = "{RBK_250_275_AO_1SCH}" },
				{ CLSID = "{Kh-25MP}" },
            }
        ),
        pylon(4, 1, 1.180000, -0.745000, -0.417000,
            {
            },
            {
                { CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}" },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
                { CLSID = "{6A367BB4-327F-4A04-8D9E-6D86BDC98E7E}" },
                { CLSID = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}" },
                { CLSID = "{E659C4BE-2CD8-4472-8C08-3F28ACB61A8A}" },
                { CLSID = "{414E383A-59EB-41BC-8566-2B5E0788ED1F}" },
                { CLSID = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}" },
				{ CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },	
				{ CLSID = "{Kh-28}" },					
            }
        ),
        pylon(5, 1, 1.180000, -0.745000, 0.417000,
            {
            },
            {
                { CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}" },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
                { CLSID = "{6A367BB4-327F-4A04-8D9E-6D86BDC98E7E}" },
                { CLSID = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}" },
                { CLSID = "{E659C4BE-2CD8-4472-8C08-3F28ACB61A8A}" },
                { CLSID = "{414E383A-59EB-41BC-8566-2B5E0788ED1F}" },
                { CLSID = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}" },
				{ CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },
            }
        ),
        pylon(6, 0, 1.500000, -0.384000, 1.220000,
            {
            },
            {
                { CLSID = "B-8M1 - 20 S-8OFP2" },
                { CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}" },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
                { CLSID = "{6A367BB4-327F-4A04-8D9E-6D86BDC98E7E}" },
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },
                { CLSID = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}" },
                { CLSID = "{3E35F8C1-052D-11d6-9191-00A0249B6F00}" },
                { CLSID = "{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}" },
                { CLSID = "{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}" },
                { CLSID = "{292960BB-6518-41AC-BADA-210D65D5073C}" },
                { CLSID = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}", Type = 1},--Kh-29l
                { CLSID = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}", Type = 1},--Kh-29T
                { CLSID = "{FE382A68-8620-4AC0-BDF5-709BFE3977D7}", Type = 1},--Kh-58
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" },
                { CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}" },
                { CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{E92CBFE5-C153-11d8-9897-000476191836}" },
				{ CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },	
				{ CLSID = "{RBK_250_275_AO_1SCH}" },
				{ CLSID = "{Kh-25MP}" },				
            }
        ),
        pylon(7, 0, 1.150000, -0.304000, 1.853000,
            {
            },
            {
                { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },--R-60
            }
        ),
        pylon(8, 0, -1.784000, -0.430000, 2.526000,
            {
            },
            {
                { CLSID = "B-8M1 - 20 S-8OFP2" },
                { CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}" },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
                { CLSID = "{6A367BB4-327F-4A04-8D9E-6D86BDC98E7E}" },
                { CLSID = "{E659C4BE-2CD8-4472-8C08-3F28ACB61A8A}" },
                { CLSID = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}" },
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },
                { CLSID = "{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}" },
                { CLSID = "{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}" },
                { CLSID = "{292960BB-6518-41AC-BADA-210D65D5073C}" },
                { CLSID = "{414E383A-59EB-41BC-8566-2B5E0788ED1F}" },
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" },
                { CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}" },
                { CLSID = "{3DFB7320-AB0E-11d7-9897-000476191836}" },
				{ CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },
				{ CLSID = "{Kh-25MP}" },				
            }
        ),
    },
    {
        aircraft_task(GroundAttack),
        aircraft_task(CAS),
        aircraft_task(PinpointStrike),
        aircraft_task(SEAD),
        aircraft_task(AFAC),
        aircraft_task(RunwayAttack),
		aircraft_task(AntishipStrike),
    },
	aircraft_task(GroundAttack)
);
