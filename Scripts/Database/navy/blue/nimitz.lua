-- Carl Vinson CVN-70 (NIMITZ Class Carrier)

GT = {};
dofile(db_path..'/navy/blue/nimitzRunwaysAndRoutes.lua')
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "vinson"
GT.visual.shape_dstr = ""


GT.life = 7300;
GT.mass = 7.2916e+007;
GT.max_velocity = 15.4333;
GT.race_velocity = 15.4333;
GT.economy_velocity = 15.4333;
GT.economy_distance = 7.408e+007;
GT.race_distance = 7.408e+007;
GT.shipLength = 311.0;
GT.Width = 96;
GT.Height = 57.8;
GT.Length = 332.9;
GT.DeckLevel = 19.6;
GT.X_nose = 150.7;
GT.X_tail = -159.6;
GT.Tail_Width = 18;
GT.Gamma_max = 0.35;
GT.Om = 0.02;
GT.speedup = 0.119249;
GT.R_min = 665.8;
GT.distFindObstacles = 1048.7;
GT.TACAN = true;
--GT.ICLS = true;

GT.numParking = 4;
GT.Plane_Num_ = 72;
GT.Helicopter_Num_ = 6;

GT.animation_arguments.water_propeller = -1;

GT.airWeaponDist = 15000;
GT.airFindDist = 30000;
-- weapon systems

GT.ArrestingGears = {
	{
		Left = {	pos = {-110.701,  19.874, -17.033} },
		Right = {	pos = {-105.19,   19.874, 17.574} }
	},
	{
		Left = {	pos = {-98.849,   19.874, -19.022} },
		Right = {	pos = {-93.338,   19.874, 15.585} }
	},
	{
		Left = {	pos = {-86.718,   19.874, -20.494} },
		Right = {	pos = {-81.207,   19.874, 14.113} }
	},
	{
		Left = {	pos = {-74.601,   19.874, -22.845} },
		Right = {	pos = {-69.09,    19.874, 11.762} }
	}
}
GT.ArrestingGears.ArrestingGearsNumber = #GT.ArrestingGears

GT.LSOView = {cockpit = "empty", position = {--[[connector = "",]] offset = {-14.0, 19.7, -16.0, -171.0, 4.0}}}
GT.OLS = {Type = GT_t.OLS_TYPE.Luna, MeatBallArg = 100}

GT.Landing_Point = {-104.0, 19.6, -33.0}

GT.WS = {}
GT.WS.maxTargetDetectionRange = 30000;
GT.WS.radar_type = 104
GT.WS.searchRadarMaxElevation = math.rad(50);

local ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.phalanx )
GT.WS[ws].angles_mech = {
							{math.rad(95), math.rad(-95), math.rad(-5), math.rad(90)}
}
GT.WS[ws].angles[1][1] = math.rad(70);
GT.WS[ws].angles[1][2] = math.rad(-95);
GT.WS[ws].angles[2] = {math.rad(95), math.rad(70), math.rad(10), math.rad(85)};
GT.WS[ws].board = 3
GT.WS[ws].pos = {101.963,17.463,-21.153}
--GT.WS[ws].drawArgument1 = 23
--GT.WS[ws].drawArgument2 = 24

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.phalanx )
GT.WS[ws].angles_mech = {
							{math.rad(85), math.rad(-70), math.rad(-5), math.rad(90)}
}
GT.WS[ws].angles[1][1] = math.rad(85);
GT.WS[ws].angles[1][2] = math.rad(-45);
GT.WS[ws].angles[2] = {math.rad(-45), math.rad(-70), math.rad(10), math.rad(85)};
GT.WS[ws].board = 4
GT.WS[ws].pos = {90.953,16.097,23.294}
--GT.WS[ws].drawArgument1 = 25
--GT.WS[ws].drawArgument2 = 26

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.phalanx )
GT.WS[ws].angles[1][1] = math.rad(100);
GT.WS[ws].angles[1][2] = math.rad(-100);
GT.WS[ws].board = 2
GT.WS[ws].pos = {-163.792,10.061,14.483}
--GT.WS[ws].drawArgument1 = 29
--GT.WS[ws].drawArgument2 = 30

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.phalanx )
GT.WS[ws].angles[1][1] = math.rad(95);
GT.WS[ws].angles[1][2] =  math.rad(-70);
GT.WS[ws].board = 3
GT.WS[ws].pos = {-158.042,10.061,-17.74}
--GT.WS[ws].drawArgument1 = 27
--GT.WS[ws].drawArgument2 = 28

--forward
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.seasparrow )
GT.WS[ws].newZ = GT_t.ANGLE_Z_TRANSLATION_OPTIONS.TRANSLATE_MIN_ANGLE_TO_MINUS_ONE;
GT.WS[ws].pos = {98.225,17.196,21.628}
GT.WS[ws].angles_mech = {
							{math.rad(180), math.rad(-180), math.rad(-5), math.rad(95)}
}
GT.WS[ws].angles[1][1] = math.rad(10);
GT.WS[ws].angles[1][2] = math.rad(-120);
GT.WS[ws].angles[2] = {math.rad(-120), math.rad(10), math.rad(40), 1.48353};
GT.WS[ws].drawArgument1 = 21
GT.WS[ws].drawArgument2 = 22

--back left
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.seasparrow )
GT.WS[ws].board = 3
GT.WS[ws].pos = {-151.36,18.035,-18.969}
GT.WS[ws].newZ = GT_t.ANGLE_Z_TRANSLATION_OPTIONS.TRANSLATE_MIN_ANGLE_TO_MINUS_ONE;
GT.WS[ws].angles_mech = {
							{math.rad(90), math.rad(-90), math.rad(-5), math.rad(95)}
}
GT.WS[ws].angles[1][1] = math.rad(90);
GT.WS[ws].angles[1][2] = math.rad(-65);
GT.WS[ws].angles[2] = {math.rad(-65), math.rad(-90), math.rad(20), 1.48353};
GT.WS[ws].drawArgument1 = 17
GT.WS[ws].drawArgument2 = 18

--back right
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.seasparrow )
GT.WS[ws].board = 4
GT.WS[ws].pos = {-151.36,18.035,25.376}
GT.WS[ws].newZ = GT_t.ANGLE_Z_TRANSLATION_OPTIONS.TRANSLATE_MIN_ANGLE_TO_MINUS_ONE;
GT.WS[ws].angles_mech = {
							{math.rad(90), math.rad(-90), math.rad(-5), math.rad(95)}
}
GT.WS[ws].angles[1][1] = math.rad(70);
GT.WS[ws].angles[1][2] = math.rad(-90);
GT.WS[ws].drawArgument1 = 19
GT.WS[ws].drawArgument2 = 20

GT.Name = "VINSON"
GT.DisplayName = _("CVN-70 Carl Vinson")
GT.Rate = 5500.000000

GT.Sensors = {  OPTIC = {"long-range naval optics", "long-range naval LLTV"},
                RADAR = {
                    "seasparrow tr",
                    "carrier search radar",
                },
            };

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="yes";
GT.mapclasskey = "P0091000065";
--[[GT.topdown_view =  -- данные для классификатора карты
		{
			classKey = "PIC_CVN-70",
			w = 117,
			h = 333,			
			file = "topdown_view_CVN-70.png",
			zOrder = 10,
		};]]
GT.attribute = {wsType_Navy,wsType_Ship,wsType_AirCarrier,VINSON,
                    "Aircraft Carriers",
                    "Arresting Gear","catapult",
                    "RADAR_BAND1_FOR_ARM",
                    "RADAR_BAND2_FOR_ARM",
				};
GT.Categories = {
					{name = "AircraftCarrier"},
					{name = "AircraftCarrier With Catapult"},
					{name = "Armed Ship"}
				};