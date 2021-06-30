return plane( "MiG-27K", _("MiG-27K"),
    {
        
        EmptyWeight = "11000",
        MaxFuelWeight = "4500",
        MaxHeight = "15600",
        MaxSpeed = "1810",
        MaxTakeOffWeight = "18900",
        Picture = "MiG-27K.png",
        Rate = "50",
        Shape = "MiG-27",
        WingSpan = "14",
        WorldID = 11,
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
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, MiG_27,
        "Bombers",
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_BAD, LOOK_AVERAGE, LOOK_BAD),
        Sensors = {
            OPTIC = "Kaira-1",
            RWR = "Abstract RWR"
        },
        Countermeasures = {
            ECM = "Siren SPS-141"
        },
        mapclasskey = "P0091000025",
		pylons_enumeration = {9, 1, 2, 8, 4, 6, 3, 7, 5},
    },
    {
        pylon(1, 1, -2.356000, -0.256000, -2.146000,
            {
            },
            {
            }
        ),
        pylon(2, 1, 0.154000, -0.041000, -1.554000,
            {
            },
            {
                { CLSID = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}" },
                { CLSID = "{752AF1D2-EBCC-4bd7-A1E7-2357F5601C70}" },	-- Kh-25MPU
                { CLSID = "{292960BB-6518-41AC-BADA-210D65D5073C}" },
                { CLSID = "{D4A8D9B9-5C45-42e7-BBD2-0E54F8308432}" },
                { CLSID = "{601C99F7-9AF3-4ed7-A565-F8B8EC0D7AAC}" },
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
				{ CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
                { CLSID = "{BA565F89-2373-4A84-9502-A0E017D3A44A}" },
                { CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{E659C4BE-2CD8-4472-8C08-3F28ACB61A8A}" },
                { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
				{ CLSID = "{Kh-25MP}" },
            }
        ),
        pylon(3, 1, 1.055000, -1.071000, -0.328000,
            {
            },
            {
                { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
            }
        ),
        pylon(4, 1, -3.584000, -0.701000, -0.760000,
            {
            },
            {
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },
            }
        ),
        pylon(5, 1, -0.234000, -1.131000, 0.000000,
            {
            },
            {
                { CLSID = "{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}" },
            }
        ),
        pylon(6, 1, -3.584000, -0.701000, 0.760000,
            {
            },
            {
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },
            }
        ),
        pylon(7, 1, 1.055000, -1.071000, 0.328000,
            {
            },
            {
                { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
            }
        ),
        pylon(8, 1, 0.154000, -0.041000, 1.554000,
            {
            },
            {
                { CLSID = "{79D73885-0801-45a9-917F-C90FE1CE3DFC}" },
                { CLSID = "{752AF1D2-EBCC-4bd7-A1E7-2357F5601C70}" },	-- Kh-25MPU
                { CLSID = "{292960BB-6518-41AC-BADA-210D65D5073C}" },
                { CLSID = "{D4A8D9B9-5C45-42e7-BBD2-0E54F8308432}" },
                { CLSID = "{601C99F7-9AF3-4ed7-A565-F8B8EC0D7AAC}" },
                { CLSID = "{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" },
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
				{ CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
                { CLSID = "{BA565F89-2373-4A84-9502-A0E017D3A44A}" },
                { CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{E659C4BE-2CD8-4472-8C08-3F28ACB61A8A}" },
                { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
				{ CLSID = "{Kh-25MP}" },
            }
        ),
        pylon(9, 1, -2.356000, -0.256000, 2.146000,
            {
            },
            {
            }
        ),
    },
    {
        aircraft_task(PinpointStrike),
        aircraft_task(CAS),
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
        aircraft_task(SEAD),
		aircraft_task(AntishipStrike),
    },
	aircraft_task(GroundAttack)
);
