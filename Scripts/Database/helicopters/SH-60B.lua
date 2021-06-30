return helicopter( "SH-60B", _("SH-60B"),
    {
        InternalCargo = {
			nominalCapacity = 400,
			maximalCapacity = 400
		},
        EmptyWeight = "7619",
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
        MaxFuelWeight = "1100",
        MaxHeight = "5800",
        MaxSpeed = "240",
        MaxTakeOffWeight = "9980",
        Picture = "SH-60B.png",
        Rate = "30",
        Shape = "SH-60B",
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
        WorldID = 161,
		country_of_origin = "USA",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			chaff = {default = 30, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 30, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Helicopter, wsType_Battleplane, SH_60B,
        "Attack helicopters",
        },
        Categories = {
        },
        CanopyGeometry = makeHelicopterCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_BAD),
        mapclasskey = "P0091000062",
	--[[	topdown_view =  -- данные для классификатора карты
		{
			classKey = "PIC_SH-60B",
			w = 17.2,
			h = 17.2,			
			file = "topdown_view_SH-60B.png",
			zOrder = 20,
		},]]
		Sensors = {
			RADAR = "AN/APS-142",
			OPTIC = "NTS",
			RWR = "Abstract RWR"
		}
    },
    {
        pylon(1, 0, -1.485000, -0.594000, -1.295000,
            {
            },
            {
                { CLSID = "{7B8DCEB4-820B-4015-9B48-1028A4195692}" },
            }
        ),
    },
    {
        aircraft_task(AntishipStrike),
        aircraft_task(Transport),
        
    },
	aircraft_task(Transport)
);
