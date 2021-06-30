return helicopter( "AH-1W", _("AH-1W"),
    {
        
        EmptyWeight = "4814",
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
        MaxFuelWeight = "1250.0",
        MaxHeight = "5500",
        MaxSpeed = "290",
        MaxTakeOffWeight = "6690",
        Picture = "AH-1W.png",
        Rate = "30",
        Shape = "AH-1W",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
            [2] = 
            {
                Name = "HelicopterCarrier",
            }, -- end of [2]
        }, -- end of TakeOffRWCategories
        WorldID = 163,
		country_of_origin = "USA",

		-- Countermeasures, ALE-39, typical 30 Chaff; 30 Flares (60)
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			chaff = {default = 30, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 30, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_Battleplane, AH_1W,
        "Attack helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_GOOD),
        Sensors = {
            OPTIC = "NTS",
            RWR = "Abstract RWR"
        },
        Countermeasures = {         
        },
        mapclasskey = "P0091000021",
    },
    {
        pylon(1, 0, 0.376000, -0.840000, -1.440000,
            {
            },
            {
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{3EA17AB0-A805-4D9E-8732-4CE00CB00F17}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                
                { CLSID = "M260_HYDRA" },
            }
        ),
        pylon(2, 0, 0.605000, -0.979000, -0.806000,
            {
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                
                { CLSID = "M260_HYDRA" },
                { CLSID = "M260_HYDRA_WP" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
            }
        ),
        pylon(3, 0, 0.605000, -0.979000, 0.816000,
            {
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                
                { CLSID = "M260_HYDRA" },
                { CLSID = "M260_HYDRA_WP" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
            }
        ),
        pylon(4, 0, 0.376000, -0.840000, 1.452000,
            {
            },
            {
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "M260_HYDRA" },
                { CLSID = "{3EA17AB0-A805-4D9E-8732-4CE00CB00F17}" },
                
            }
        ),
    },
    {
        aircraft_task(CAS),
        aircraft_task(GroundAttack),
		aircraft_task(Escort),
        aircraft_task(AFAC),
        aircraft_task(AntishipStrike)
    },
	aircraft_task(CAS)
);
