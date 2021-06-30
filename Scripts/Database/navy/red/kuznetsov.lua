-- Kuznetsov 1143.5 CV (OREL Class Carrier) 63
GT = {};
dofile(db_path..'/navy/red/kuznetsovRunwaysAndRoutes.lua')
GT_t.ws = 0;

set_recursive_metatable(GT, GT_t.generic_ship)

GT.visual = {}
GT.visual.shape = "kuznecow"
GT.visual.shape_dstr = ""

GT.life = 7000
GT.mass = 7.05e+007
GT.max_velocity = 16.4622
GT.race_velocity = 15.4333
GT.economy_velocity = 9.26
GT.economy_distance = 1.4816e+007
GT.race_distance = 4.63e+006
GT.shipLength = 276.6
GT.Width = 77.1
GT.Height = 53.1
GT.Length = 304.5
GT.DeckLevel = 16.257
GT.X_nose = 164
GT.X_tail = -113.5
GT.Tail_Width = 28
GT.Gamma_max = 0.35
GT.Om = 0.02
GT.speedup = 0.148333
GT.R_min = 609
GT.distFindObstacles = 963.5

GT.numParking = 3
GT.Plane_Num_ = 24
GT.Helicopter_Num_ = 12

GT.animation_arguments.water_propeller = -1;

GT.airWeaponDist = 12000
GT.airFindDist = 25000

GT.exhaust =
{
	[1] = { size = 0.75 , pos = {-5,41, 23 } },
 }

GT.ArrestingGears = {
	{
		Left = {	pos = {-72.046,   16.683, -21.694} },
		Right = {	pos = {-68.261,   16.683, 7.259} }
	},
	{	
		Left = {	pos = {-59.487,   16.683, -23.633} },
		Right = {	pos = {-55.702,   16.683, 5.32} }
	},
	{	
		Left = {	pos = {-47.662,   16.683, -24.952} },
		Right = {	pos = {-43.877,   16.683, 4.001} }
	},
	{	
		Left = {	pos = {-35.03,    16.683, -26.578} },
		Right = {	pos = {-31.244,   16.683, 2.375} }
	}
}
GT.ArrestingGears.ArrestingGearsNumber = #GT.ArrestingGears

GT.Landing_Point = {71.0, 16.26,-30.0}

GT.LSOView = {cockpit = "empty", position = {--[[connector = "",]] offset = {13.0, 16.2, -17.9, -172.5, 4.0}}}
GT.OLS = {Type = GT_t.OLS_TYPE.Luna, MeatBallArg = 100}

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 550000;
GT.WS.radar_type = 104
GT.WS.searchRadarMaxElevation = math.rad(50);

local ws = 0;

--left center
ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].board = 3
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK630)
GT.WS[ws].angles = {{math.rad(80), math.rad(-80), math.rad(-12), math.rad(88)}};
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].pos = {29.735,16.622,-36.422}

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].board = 3
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK630)
GT.WS[ws].angles = {{math.rad(80), math.rad(-80), math.rad(-12), math.rad(88)}};
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].pos = {33.327,16.622,-36.422}
--right center
ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].board = 4
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK630)
GT.WS[ws].angles = {{math.rad(80), math.rad(-80), math.rad(-12), math.rad(88)}};
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].pos = {29.735,16.622,29.317}

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].board = 4
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK630)
GT.WS[ws].angles = {{math.rad(100), math.rad(-80), math.rad(-12), math.rad(88)}};
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].pos = {33.327,16.622,29.317}

--left back
ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].board = 2
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK630)
GT.WS[ws].angles = {{math.rad(30), math.rad(-135), math.rad(-12), math.rad(88)}};
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].pos = {-112.364,9.925,-21.725}

--right back
ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].board = 2
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.AK630)
GT.WS[ws].angles = {{math.rad(135), math.rad(-30), math.rad(-12), math.rad(88)}};
GT.WS[ws].LN[1].beamWidth = math.rad(90);
GT.WS[ws].pos = {-112.364,9.925,23.337}

-- left front
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].angles[1][1] = math.rad(50);
GT.WS[ws].board = 3
GT.WS[ws].pos = {110.11,15.194,-19.876}

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].angles[1][1] = math.rad(45);
GT.WS[ws].board = 3
GT.WS[ws].pos = {102.11,15.194,-19.876}
--left back
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].angles[1][2] = math.rad(-45);
GT.WS[ws].board = 3
GT.WS[ws].pos = {-91.49,14.644,-25.068}

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].angles[1][2] = math.rad(-50);
GT.WS[ws].board = 3
GT.WS[ws].pos = {-99.49,14.644,-25.068}

--right front
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].angles[1][2] = math.rad(-60);
GT.WS[ws].board = 4
GT.WS[ws].pos = {110.11,15.194,21.741}

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].angles[1][2] = math.rad(-30);
GT.WS[ws].board = 4
GT.WS[ws].pos = {102.11,15.194,21.741}
--right back
ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].angles[1][1] = math.rad(30);
GT.WS[ws].board = 4
GT.WS[ws].pos = {-91.346,14.644,26.503}

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.kortik)
GT.WS[ws].angles[1][1] = math.rad(60);
GT.WS[ws].board = 4
GT.WS[ws].pos = {-99.346,14.644,26.503}

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_klinok)
GT.WS[ws].LN[1].PL[1].ammo_capacity = 8 * 6; -- 6 VLU
GT.WS[ws].pos = {93.93,11,-21.23}

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_klinok)
GT.WS[ws].LN[1].PL[1].ammo_capacity = 8 * 6; -- 6 VLU
GT.WS[ws].pos = {93.93,11,23.19}

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_klinok)
GT.WS[ws].LN[1].PL[1].ammo_capacity = 8 * 6; -- 6 VLU
GT.WS[ws].pos = {-84.93,11,-25}

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_klinok)
GT.WS[ws].LN[1].PL[1].ammo_capacity = 8 * 6; -- 6 VLU
GT.WS[ws].pos = {-84.93,11,26.988}

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ship_granit)
GT.WS[ws].pos = {125.2,11.4,0}
GT.WS[ws].LN[1].PL[1].ammo_capacity = 12;
GT.WS[ws].LN[1].max_number_of_missiles_channels = 12;
GT.WS[ws].LN[1].BR = {}
local cos60 = math.cos(-math.rad(60));
local sin60 = math.sin(-math.rad(60));
for i = 0,5 do
	local r = (2.5 - i)*2.9
	GT.WS[ws].LN[1].BR[i*2+1] = {pos = {r*cos60, r*sin60, -1.7}};
	GT.WS[ws].LN[1].BR[i*2+2] = {pos = {r*cos60, r*sin60, 1.7}};
end

GT.Name = _("KUZNECOW")
GT.Name = "KUZNECOW"
GT.DisplayName = _("CV 1143.5 Admiral Kuznetsov")
GT.Rate = 5500

GT.Sensors = {  OPTIC = {"long-range naval optics", "long-range naval LLTV"},
                RADAR = {
                            "Tor 9A331",
                            "2S6 Tunguska",
                            "carrier search radar",
                        }
            }

GT.DetectionRange  = GT.airFindDist;
GT.ThreatRange = GT.airWeaponDist;
GT.Singleton   ="yes";
GT.mapclasskey = "P0091000065";
GT.attribute = {wsType_Navy,wsType_Ship,wsType_AirCarrier,Kuznecow,
                    "Aircraft Carriers",
                    "Arresting Gear",
                    "ski_jump",
                    "RADAR_BAND1_FOR_ARM",
					"DetectionByAWACS",
					"Straight_in_approach_type"
				};
GT.Categories = {
					{name = "AircraftCarrier"},
					{name = "AircraftCarrier With Tramplin"},
					{name = "Armed Ship"},
				};
--[[
local deck_crew_names = {
				"tug_3913",
				"sailor_01",
				"sailor_01a",
				"sailor_02",
				"sailor_02a",
				"sailor_03",
				"tech_01",
				"tech_02",
				"tech_03",
				"tech_03a",
				"tech_04a",
				"tech_05",
				"tech_05a",
				"tech_06",
				"tech_07",
				"tech_07a",
			}

local deck_crew_points = {{-61.801476,	16.259766,	16.965755},
{-50.237778,	16.259766,	9.254064},
{-39.958954,	16.259766,	11.567554},
{-28.395269,	16.259766,	6.426416},
{-15.032796,	16.259766,	12.595793},
{10.664286,	16.259766,	2.056450},
{-14.004911,	16.259766,	5.398204},
{23.512829,	16.259766,	0.514106},
{37.646210,	16.259766,	11.310513},
{48.182014,	16.259766,	21.592787},
{55.377193,	16.259766,	10.796379},
{60.002678,	16.259766,	-5.655257},
{72.337265,	16.259766,	15.680478},
{79.789421,	16.259766,	-18.765156},
{78.761536,	16.259766,	-22.621016},
{79.532440,	16.259766,	17.736927},
{-108.540375,	13.396484,	24.070667},
{-98.713036,	13.376953,	-23.295298},
{-46.383213,	16.259766,	-30.075665},
{-71.309380,	16.259766,	-29.304489},
{-78.247604,	16.259766,	12.852858},
{-7.066702,	16.259766,	1.799410},
{41.243797,	16.259766,	5.912309},
{99.576141,	16.259766,	19.022202},
{110.111946,	16.259766,	18.508099},
{-21.200090,	16.259766,	-31.360947},
{-39.188038,	16.259766,	-31.360945},
{-72.337273,	16.259766,	11.824618},
{-102.916794,	16.259766,	12.852859},
{-48.952923,	16.259766,	26.219820},
{-2.184259,	16.259766,	2.827622},
{30.708008,	16.259766,	2.056450},
{30.451038,	16.259766,	2.056450},
{44.584427,	16.259766,	5.398203},
{63.343281,	16.259766,	8.482890},
{52.293541,	16.259766,	26.990988},
}


GT.deck_crew = {}

local shapes_size = #deck_crew_names

for i,pnt in ipairs(deck_crew_points) do
	GT.deck_crew[i] = 
	{
		pos   = pnt,
		shape = deck_crew_names[math.fmod (i,shapes_size) + 1]
	}
	

end
--]]
