return plane( "B-52H", _("B-52H"),
    {
        
        EmptyWeight = "83460",
        MaxFuelWeight = "141135",
        MaxHeight = "17000",
        MaxSpeed = "1000",
        MaxTakeOffWeight = "256735",
        Picture = "B-52H.png",
        Rate = "100",
        Shape = "b-52",
        WingSpan = "56.4",
        WorldID = 23,
		country_of_origin = "USA",
                
        -- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = false,
			SingleChargeTotal = 1317,
			chaff = {default = 1125, increment = 1, chargeSz = 1},
			flare = {default = 192, increment = 1, chargeSz = 1}
        },
		
        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_Intruder,B_52,
			"Strategic bombers", "Refuelable", "Datalink", "Link16"
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_BAD),
        Sensors = {
            OPTIC = {"Litening AN/AAQ-28 FLIR", "Litening AN/AAQ-28 CCD TV"},
            RADAR = "B-52H SS radar",
            RWR = "Abstract RWR"
        },
        Countermeasures = {
            ECM = "AN/ALQ-172"
        },
		EPLRS = true,
        mapclasskey = "P0091000027",
    },
    {
        pylon(1, 1, 6.012000, -1.136000, -5.069000,
            {
            },
            {
                { CLSID = "{585D626E-7F42-4073-AB70-41E728C333E2}" }, -- MER*12 Mk-82
                { CLSID = "{4CD2BB0F-5493-44EF-A927-9760350F7BA1}" }, -- HSAB*9 Mk-20 Rockeye
                { CLSID = "{696CFFC4-0BDE-42A8-BE4B-0BE3D9DD723C}" }, -- HSAB*9 Mk-84
                { CLSID = "{45447F82-01B5-4029-A572-9AAD28AF0275}" }, -- MER*6 AGM-86C
            }
        ),
        pylon(2, 2, 0.576000, -2.000000, 0.000000,
            {
            },
            {
                { CLSID = "{6C47D097-83FF-4FB2-9496-EAB36DDF0B05}" }, -- 27 Mk-82
                { CLSID = "{8DCAF3A3-7FCF-41B8-BB88-58DEDA878EDE}" }, -- AGM-86C*8
                { CLSID = "{46ACDCF8-5451-4E26-BDDB-E78D5830E93C}" }, -- AGM-84A*8
            }
        ),
        pylon(3, 1, 6.012000, -1.136000, 5.069000,
            {
            },
            {
                { CLSID = "{585D626E-7F42-4073-AB70-41E728C333E2}" }, -- MER*12 Mk-82
                { CLSID = "{4CD2BB0F-5493-44EF-A927-9760350F7BA1}" }, -- HSAB*9 Mk-20 Rockeye
                { CLSID = "{696CFFC4-0BDE-42A8-BE4B-0BE3D9DD723C}" }, -- HSAB*9 Mk-84
                { CLSID = "{45447F82-01B5-4029-A572-9AAD28AF0275}" }, -- MER*6 AGM-86C
				{ CLSID = "{HSAB*9 GBU-31}" },
            }
        ),
    },
    {
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
        aircraft_task(PinpointStrike),
        aircraft_task(AntishipStrike),
		aircraft_task(CAS),
    },
	aircraft_task(GroundAttack)
);
