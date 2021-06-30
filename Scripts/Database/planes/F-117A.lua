return plane( "F-117A", _("F-117A"),
    {
        
        EmptyWeight = "13380",
        MaxFuelWeight = "3840",
        MaxHeight = "13700",
        MaxSpeed = "1000",
        MaxTakeOffWeight = "23810",
        Picture = "F-117A.png",
        Rate = "70",
        Shape = "f-117",
        WingSpan = "13.2",
        WorldID = 37,
		country_of_origin = "USA",
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Battleplane, F_117,
        "Bombers", "Refuelable"
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_BAD, LOOK_BAD),
        Sensors = {
            OPTIC = "IRADS",
            RWR = "Abstract RWR"
        },
        mapclasskey = "P0091000027",
    },
    {
        pylon(1, 2, 1.302000, 0.182000, -0.500000,
            {
            },
            {
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}" },
            }
        ),
        pylon(2, 2, 1.302000, 0.182000, 0.500000,
            {
            },
            {
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}" },
            }
        ),
    },
    {
        aircraft_task(PinpointStrike),
        
    },
	aircraft_task(PinpointStrike)
);
