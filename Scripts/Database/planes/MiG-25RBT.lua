return plane( "MiG-25RBT", _("MiG-25RBT"),
    {
        
        EmptyWeight = "20000",
        MaxFuelWeight = "15245",
        MaxHeight = "20000",
        MaxSpeed = "3000",
        MaxTakeOffWeight = "41200",
        Picture = "MiG-25RBT.png",
        Rate = "30",
        Shape = "mig-25",
        WingSpan = "14",
        WorldID = 8,
		country_of_origin = "RUS",
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Intercepter, MiG_25,
        "Aux",
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_BAD, LOOK_BAD, LOOK_BAD),
        Sensors = {
            RWR = "Abstract RWR"
        },
        mapclasskey = "P0091000026",
    },
    {
        pylon(1, 0, -0.838000, 0.030000, -4.615000,
            {
            },
            {
                { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}" },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}" },
                { CLSID = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
            }
        ),
        pylon(2, 0, 0.100000, 0.030000, -3.483000,
            {
            },
            {
                { CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}" },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}" },
                { CLSID = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
                { CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
            }
        ),
        pylon(3, 1, 0.100000, 0.030000, 3.483000,
            {
            },
            {
                { CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}" },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}" },
                { CLSID = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
                { CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
            }
        ),
        pylon(4, 1, -0.838000, 0.030000, 4.615000,
            {
            },
            {
                { CLSID = "{682A481F-0CB5-4693-A382-D00DD4A156D7}" },
                { CLSID = "{FB3CE165-BF07-4979-887C-92B87F13276B}" },
                { CLSID = "{0511E528-EA28-4caf-A212-00D1408DF10A}" },
                { CLSID = "{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
                { CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{BD289E34-DF84-4C5E-9220-4B14C346E79D}" },
            }
        ),
    },
    {
        aircraft_task(Reconnaissance),
        aircraft_task(AFAC),
        aircraft_task(GroundAttack),
    },
	aircraft_task(Reconnaissance)
);
