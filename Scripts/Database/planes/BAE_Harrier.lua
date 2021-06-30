return plane( "BAE Harrier", _("BAE Harrier"),
    {
        
        EmptyWeight = "9389",
        MaxFuelWeight = "4853",
        MaxHeight = "15000",
        MaxSpeed = "1070",
        MaxTakeOffWeight = "21081",
        Picture = "BAE Harrier.png",
        Rate = "50",
        Shape = "Harrier",
        WingSpan = "17.53",
        WorldID = 43,
		country_of_origin = "UK",
		
		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			chaff = {default = 30, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 30, chargeSz = 1}
        },
       
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter,AV_8B,
        "Bombers",
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_AVERAGE),
        Sensors = {
            OPTIC = "Harrier GR_5 FLIR",
            RWR = "Abstract RWR"
        },
        mapclasskey = "P0091000025",

		takeoff_and_landing_type = "VTOL",
		TakeOffRWCategories = 
		{
			{ Name = "AircraftCarrier" },
			{ Name = "HelicopterCarrier" },
		}, -- end of TakeOffRWCategories
		LandRWCategories = 
		{
			{  Name = "AircraftCarrier"},
			{  Name = "HelicopterCarrier"},
		}, -- end of LandRWCategories
    },
    {
        pylon(8, 0, -0.816000, -0.171000, 3.971000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}" },
            }
        ),
        pylon(6, 0, -0.296000, -0.134000, -3.232000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" },
                { CLSID = "{D7670BC7-881B-4094-906C-73879CF7EB28}" },
                { CLSID = "{907D835F-E650-4154-BAFD-C656882555C0}" },
                { CLSID = "{E6A6262A-CA08-4B3D-B030-E1A993B98452}" },
                { CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" },
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" },
            }
        ),
        pylon(4, 0, 0.378000, 0.069000, 2.595000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" },
                { CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" },
            }
        ),
        pylon(2, 0, 0.061000, -0.030000, -1.893000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
            }
        ),
        pylon(1, 0, 0.061000, -0.030000, 1.893000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
            }
        ),
        pylon(3, 0, 0.378000, 0.069000, -2.595000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" },
                { CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" },
            }
        ),
        pylon(5, 0, -0.296000, -0.134000, 3.232000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" },
                { CLSID = "{D7670BC7-881B-4094-906C-73879CF7EB27}" },
                { CLSID = "{907D835F-E650-4154-BAFD-C656882555C0}" },
                { CLSID = "{E6A6262A-CA08-4B3D-B030-E1A993B98453}" },
                { CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" },
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" },
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" },
            }
        ),
        pylon(7, 0, -0.816000, -0.171000, -3.971000,
            {
                FiZ = 0,
            },
            {
                { CLSID = "{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}" },
                { CLSID = "{3DFB7321-AB0E-11d7-9897-000476191836}" },
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" },
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" },
                { CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}" },
            }
        ),
    },
    {
        aircraft_task(GroundAttack),
        aircraft_task(CAS),
        aircraft_task(AFAC),
    },
	aircraft_task(CAS)
);
