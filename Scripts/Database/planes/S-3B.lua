return plane( "S-3B", _("S-3B"),
    {
        
        EmptyWeight = "12088",
        LandRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier",
            }, -- end of [1]
        }, -- end of LandRWCategories
        MaxFuelWeight = "5500",
        MaxHeight = "10700",
        MaxSpeed = "840",
        MaxTakeOffWeight = "23831",
        Picture = "S-3B.png",
        Rate = "50",
        Shape = "S-3A",
        TakeOffRWCategories = 
        {
            [1] = 
            {
                Name = "AircraftCarrier With Catapult",
            }, -- end of [1]
        }, -- end of TakeOffRWCategories
        WingSpan = "20.93",
        WorldID = 42,
		country_of_origin = "USA",

		-- Countermeasures, ALE-39, typical 30 Chaff; 30 Flares (60)
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 60,
			chaff = {default = 30, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 30, chargeSz = 1}
        },
        
        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_Cruiser, S_3A,
        "Aux",
        },
        Categories = {
            pl_cat("{8A302789-A55D-4897-B647-66493FA6826F}", ""),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_GOOD, LOOK_GOOD, LOOK_BAD),
        Sensors = {
            RADAR = "AN/APS-137",
            RWR = "Abstract RWR"
        },
        mapclasskey = "P0091000063",
		--[[topdown_view =  -- данные для классификатора карты
		{
			classKey = "PIC_S-3B",
			w = 22.3,
			h = 22.3,			
			file = "topdown_view_S-3B.png",
			zOrder = 20,
		},]]
    },
    {
        pylon(1, 0, -0.723000, 0.281000, -3.893000,
            {
                FiZ = -3,
            },
            {
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" }, -- 3 Mk-82
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" }, -- 3 Mk-20 Rockeye
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20
                { CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" }, -- AGM-65D
                { CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" }, -- AGM-65K
                { CLSID = "{8B7CADF9-4954-46B3-8CFB-93F2F5B90B03}", Type =1 }, -- AGM-84A
                { CLSID = "{AF42E6DF-9A60-46D8-A9A0-1708B241AADB}", Type =1 }, -- AGM-84E
                { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" }, -- LAU-10 - 4 ZUNI MK 71
                { CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" }, -- LAU-61*3 - 57 2.75' rockets MK151 (HE)
                { CLSID = "{A504D93B-4E80-4B4F-A533-0D9B65F2C55F}" }, -- Fuel tank S-3-PTB 
            }
        ),
        pylon(2, 2, -0.069000, -0.050000, -0.858000,
            {
            },
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20
            }
        ),
        pylon(3, 2, -0.069000, -0.050000, -0.500000,
            {
            },
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20
            }
        ),
        pylon(4, 2, -0.069000, -0.050000, 0.500000,
            {
            },
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20
            }
        ),
        pylon(5, 2, -0.069000, -0.050000, 0.858000,
            {
            },
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20
            }
        ),
        pylon(6, 0, -0.723000, 0.281000, 3.893000,
            {
                FiZ = -3,
            },
            {
                { CLSID = "{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}" }, -- 3 Mk-82
                { CLSID = "{B83CB620-5BBE-4BEA-910C-EB605A327EF9}" }, -- 3 Mk-20 Rockeye
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- Mk-82
                { CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- Mk-84
                { CLSID = "{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}" }, -- Mk-20
                { CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}" }, -- AGM-65D
                { CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}" }, -- AGM-65K
                { CLSID = "{8B7CADF9-4954-46B3-8CFB-93F2F5B90B03}", Type =1 }, -- AGM-84A
                { CLSID = "{AF42E6DF-9A60-46D8-A9A0-1708B241AADB}", Type =1 }, -- AGM-84E
                { CLSID = "{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}" }, -- LAU-10 - 4 ZUNI MK 71
                { CLSID = "{A76344EB-32D2-4532-8FA2-0C1BDC00747E}" }, -- LAU-61*3 - 57 2.75' rockets MK151 (HE)
                { CLSID = "{A504D93B-4E80-4B4F-A533-0D9B65F2C55F}" }, -- Fuel tank S-3-PTB 
            }
        ),
    },
    {
        aircraft_task(GroundAttack),
        aircraft_task(AntishipStrike),
        aircraft_task(PinpointStrike),
    
    },
	aircraft_task(AntishipStrike)
);
