return plane( "F-111F", _("F-111F"),
    {
        
        EmptyWeight = "20943",
        MaxFuelWeight = "15500",
        MaxHeight = "13700",
        MaxSpeed = "2221.2",
        MaxTakeOffWeight = "45400",
        Picture = "F-111F.png",
        Rate = "50",
        Shape = "F-111F",
        WingSpan = "19.2",
        WorldID = 15,
		country_of_origin = "USA",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 180,
			-- RR-170
			chaff = {default = 90, increment = 30, chargeSz = 1},
			-- MJU-7
			flare = {default = 45, increment = 15, chargeSz = 2}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, F_111,
        "Bombers", "Refuelable"
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_BAD, LOOK_AVERAGE, LOOK_BAD),
        Sensors = {
            RWR = "Abstract RWR"
        },
        mapclasskey = "P0091000027",
    },
    {
        aim9_station(1, 0, -1.409000, -0.295000, -2.829000,
            {
                FiZ = -1.64,
            },
            {
                { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
                { CLSID = "{3C7CD675-7D39-41C5-8735-0F4F537818A8}" },
                { CLSID = "{752B9782-F962-11d5-9190-00A0249B6F00}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{F06B775B-FC70-44B5-8A9F-5B5E2EB839C7}" },
                { CLSID = "{FAAFA032-8996-42BF-ADC4-8E2C86BCE536}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{34759BBC-AF1E-4AEE-A581-498FF7A6EBCE}" },
            }
        ),
        aim9_station(2, 0, 0.089000, -0.278000, -2.137000,
            {
                FiZ = -1.64,
            },
            {
                { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
                { CLSID = "{3C7CD675-7D39-41C5-8735-0F4F537818A8}" },
                { CLSID = "{752B9782-F962-11d5-9190-00A0249B6F00}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{34759BBC-AF1E-4AEE-A581-498FF7A6EBCE}" },
            }
        ),
        pylon(3, 0, 0.000000, 0.000000, 0.000000,
            {
            },
            {
                { CLSID = "{199D6D51-1764-497E-9AE5-7D07C8D4D87E}" },
            }
        ),
        pylon(4, 2, 3.811000, -0.224000, 0.000000,
            {
            },
            {
                { CLSID = "{027563C9-D87E-4A85-B317-597B510E3F03}" },
                { CLSID = "{E79759F7-C622-4AA4-B1EF-37639A34D924}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{F06B775B-FC70-44B5-8A9F-5B5E2EB839C7}" },
                { CLSID = "{FAAFA032-8996-42BF-ADC4-8E2C86BCE536}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{34759BBC-AF1E-4AEE-A581-498FF7A6EBCE}" },
            }
        ),
        aim9_station(5, 0, -0.001000, -0.278000, 2.108000,
            {
                FiZ = -1.64,
            },
            {
                { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
                { CLSID = "{3C7CD675-7D39-41C5-8735-0F4F537818A8}" },
                { CLSID = "{752B9782-F962-11d5-9190-00A0249B6F00}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{34759BBC-AF1E-4AEE-A581-498FF7A6EBCE}" },
            }
        ),
        aim9_station(6, 0, -1.457000, -0.295000, 2.783000,
            {
                FiZ = -1.64,
            },
            {
                { CLSID = "{1C97B4A0-AA3B-43A8-8EE7-D11071457185}" },
                { CLSID = "{3C7CD675-7D39-41C5-8735-0F4F537818A8}" },
                { CLSID = "{752B9782-F962-11d5-9190-00A0249B6F00}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{F06B775B-FC70-44B5-8A9F-5B5E2EB839C7}" },
                { CLSID = "{FAAFA032-8996-42BF-ADC4-8E2C86BCE536}" },
                { CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}" },
                { CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}" },
                { CLSID = "{34759BBC-AF1E-4AEE-A581-498FF7A6EBCE}" },
            }
        ),
    },
    {
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
        aircraft_task(PinpointStrike),
        aircraft_task(AFAC),
    },
	aircraft_task(GroundAttack)
);
