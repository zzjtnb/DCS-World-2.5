return helicopter( "AH-64A", _("AH-64A"),
    {
        
        EmptyWeight = "5345",
		LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
            [2] = 
            {
                Name = "HelicopterCarrier",
            }, -- end of [2]
        }, -- end of LandRWCategories
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
        MaxFuelWeight = "1157",
        MaxHeight = "6400",
        MaxSpeed = "300",
        MaxTakeOffWeight = "9225",
        Picture = "AH-64A.png",
        Rate = "50",
        Shape = "AH-64A",
        WorldID = 157,
		country_of_origin = "USA",

		-- Countermeasures, 2xM-160 = 60 Chaffs/Flares (60)
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			chaff = {default = 30, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 30, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_Battleplane, AH_64A,
        "Attack helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_GOOD),
        Sensors = {
            OPTIC = {"TADS DTV", "TADS DVO", "TADS FLIR"},
            --OPTIC = {"PNVS", "TADS DTV", "TADS DVO", "TADS FLIR"},
            RWR = "Abstract RWR"
        },
        Countermeasures = {         
        },
        mapclasskey = "P0091000021",
    },
    {
        pylon(1, 0, 0.288000, -0.976000, -2.425000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
            }
        ),
        pylon(2, 0, 0.288000, -0.976000, -1.685000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
            }
        ),
        pylon(3, 0, 0.288000, -0.976000, 1.685000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
            }
        ),
        pylon(4, 0, 0.288000, -0.976000, 2.425000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}" },
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
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
