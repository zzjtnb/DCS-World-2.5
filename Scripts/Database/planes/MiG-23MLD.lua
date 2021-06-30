return plane( "MiG-23MLD", _("MiG-23MLD"),
    {
        
        EmptyWeight = "10550",
        MaxFuelWeight = "3800",
        MaxHeight = "18600",
        MaxSpeed = "2500",
        MaxTakeOffWeight = "17800",
        Picture = "MiG-23MLD.png",
        Rate = "30",
        Shape = "mig-23",
        WingSpan = "14",
        WorldID = 1,
		country_of_origin = "RUS",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 120,
			-- PPR-26
			chaff = {default = 60, increment = 30, chargeSz = 1},
			-- PPI-26
			flare = {default = 60, increment = 30, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, MiG_23,
        "Fighters",
        },
        Categories = {
            pl_cat("{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_BAD, LOOK_AVERAGE, LOOK_BAD),
        Sensors = {
            RADAR = "N-008",
            IRST = "TP-23M",
            RWR = "Abstract RWR"
        },
        mapclasskey = "P0091000024",
    },
    {
        pylon(1, 0, -2.356000, -0.256000, -2.146000,
            {
                absent = 1,
            },
            {
            }
        ),
        pylon(2, 1, 0.000000, -0.116000, -1.554000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}" },
                { CLSID = "{6980735A-44CC-4BB9-A1B5-591532F1DC69}" },
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" },
                { CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}" },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },
            }
        ),
        pylon(3, 0, 1.055000, -1.071000, -0.328000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}" },
                { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}" },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },
            }
        ),
        pylon(4, 1, -0.308000, -1.151000, 0.000000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}" },
            }
        ),
        pylon(5, 0, 1.055000, -1.071000, 0.328000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{275A2855-4A79-4B2D-B082-91EA2ADF4691}" },
                { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}" },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },
            }
        ),
        pylon(6, 1, 0.000000, -0.116000, 1.554000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}" },
                { CLSID = "{6980735A-44CC-4BB9-A1B5-591532F1DC69}" },
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" },
                { CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}" },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },
            }
        ),
        pylon(7, 0, -2.356000, -0.256000, 2.146000,
            {
                absent = 1,
            },
            {
            }
        ),
    },
    {
        aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(Intercept),
        --aircraft_task(GAI),
        aircraft_task(GroundAttack),
        aircraft_task(CAS),
    },
	aircraft_task(CAP)
);
