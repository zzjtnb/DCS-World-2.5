local available_payload  =
{
	{ CLSID = "MK_82*28" }, -- on CBM 
	{ CLSID = "CBU87*10" }, -- on CBM 
	{ CLSID = "CBU97*10" }, -- on CBM 
	{ CLSID = "B-1B_Mk-84*8" 							,Type = 8 },-- on rotary launcher ( 8 sides )
    { CLSID = "GBU-31*8" 								,Type = 8 },-- on rotary launcher ( 8 sides )
	{ CLSID = "GBU-31V3B*8"								,Type = 8 },-- on rotary launcher ( 8 sides )
	--{ CLSID = "TEST_ROTARY_LAUNCHER_MK82"   			,Type = 8 },-- on rotary launcher ( 8 sides )
	{ CLSID = "{AABA1A14-78A1-4E85-94DD-463CF75BD9E4}"  ,Type = 4 },-- AGM-154 on 4 side rotary launcher
	{ CLSID = "GBU-38*16" },
}

return plane( "B-1B", _("B-1B"),
    {
        
        EmptyWeight = "87090",
        MaxFuelWeight = "88450",
        MaxHeight = "18000",
        MaxSpeed = "1530",
        MaxTakeOffWeight = "216360",
        Picture = "B-1B.png",
        Rate = "100",
        Shape = "B-1B",
        WingSpan = "41.67",
        WorldID = 19,
		country_of_origin = "USA",
                
		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 120,
			chaff = {default = 60, increment = 30, chargeSz = 1},
			flare = {default = 30, increment = 15, chargeSz = 2}
        },

        singleInFlight = false,

        attribute = {wsType_Air, wsType_Airplane, wsType_F_Bomber, B_1,
			"Strategic bombers", "Refuelable", "Datalink", "Link16"
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_BAD, LOOK_AVERAGE, LOOK_GOOD),
        Sensors = {
            OPTIC = {"Sniper XR FLIR", "Sniper XR CCD TV"},
            RADAR = "B-1B SS radar",
            RWR = "Abstract RWR"
        },
        Countermeasures = {
            ECM = "AN/ALQ-161"
        },
		EPLRS = true,
        mapclasskey = "P0091000027",
    },
    {
        pylon(1, 2, 8.843000, 0.400000, 0.000000,{},available_payload),
        pylon(2, 2, 3.977000, 0.400000, 0.000000,{},available_payload),
        pylon(3, 2,    -6.25, 0.400000, 0.000000,{},available_payload),
    },
    {
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
        aircraft_task(PinpointStrike),
		aircraft_task(CAS),        
    },
	aircraft_task(GroundAttack)
);
