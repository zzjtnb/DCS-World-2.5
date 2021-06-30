-- Fire Direction Data Manager for BM-21 Grad
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV)
set_recursive_metatable(GT.chassis, GT_t.CH_t.MTLB);

GT.visual.shape = "BOMAN"
GT.visual.shape_dstr = "MTLB_P_1"

GT.snd.move = "GndTech/TankMoveLight";
GT.snd.move_pitch = {{0.0, 0.6}, {10.0, 1.0}};
GT.snd.move_gain = {{0.0, 0.01}, {0.5, 0.5}, {12.0, 1.0}};

--chassis
GT.swing_on_run = false

GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.height = 2.52

--Burning after hit
GT.visual.fire_size = 0.7 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000 --burning time (seconds)
GT.visual.dust_pos = {2.7, 0.0, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-2.8, 0.4, -GT.chassis.Z_gear_2}

GT.driverViewPoint = {2.4, 1.8, -0.55};
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

GT.WS = {}
GT.WS.maxTargetDetectionRange = 5000;

-- artillery director
local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].pos = {0.0, 2.4, 0.0};
GT.WS[ws].angles = {{math.rad(180), math.rad(-180), math.rad(-10), math.rad(70)}};
GT.WS[ws].drawArgument1 = 0
GT.WS[ws].omegaY = math.rad(20);
GT.WS[ws].omegaZ = math.pi;
GT.WS[ws].pidY = {p = 30, i = 0.0, d = 7, inn = 30};
GT.WS[ws].pidZ = {p = 30, i = 0.0, d = 7, inn = 30};
GT.WS[ws].mount_before_move = true;

GT.WS[ws].LN = {};
GT.WS[ws].LN[1] = {};
GT.WS[ws].LN[1].type = 34;
GT.WS[ws].LN[1].maxShootingSpeed = 0;
GT.WS[ws].LN[1].distanceMin = 5000;
GT.WS[ws].LN[1].distanceMax = 19000;
GT.WS[ws].LN[1].reactionTimeLOFAC = 3;
GT.WS[ws].LN[1].reactionTime = 40;
GT.WS[ws].LN[1].sensor = {};
set_recursive_metatable(GT.WS[ws].LN[1].sensor, GT_t.WSN_t[0]);
GT.WS[ws].LN[1].aiming_director = true

GT.WS[ws].LN[1].PL = {};
GT.WS[ws].LN[1].PL[1] = {};
GT.WS[ws].LN[1].PL[1].rocket_name = "weapons.nurs.GRAD_9M22U";
GT.WS[ws].LN[1].PL[1].ammo_capacity = 1;
GT.WS[ws].LN[1].PL[1].reload_time = 1;
GT.WS[ws].LN[1].PL[1].shot_delay = 0.01;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].base = ws-1;
GT.WS[ws].center = 'CENTER_MGUN'
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-10), math.rad(40)},
					};
GT.WS[ws].drawArgument1 = 25
GT.WS[ws].drawArgument2 = 26
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(50);
GT.WS[ws].reference_angle_Y = 0
GT.WS[ws].reference_angle_Z = 0
GT.WS[ws].cockpit = { "IronSight/IronSight", {-1.2, 0.1, 0 }, };

local __LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_7_62);
for i=2,10 do
    __LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[2]);
__LN.BR[1].connector_name = 'POINT_MGUN';
__LN.fireAnimationArgument = 44;
__LN.distanceMin = 1;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;


GT.Name = "Grad_FDDM"
GT.Aliases = {"Boman"}
GT.DisplayName = _("FDDM Grad")
GT.Rate = 8

GT.Sensors = { OPTIC = {
						"NNDV day", "NNDV night",
						--"DS-1",
						--"VOP-7A",
						},
			};

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[2].LN[1].distanceMax;
GT.mapclasskey = "P0091000050";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericAPC,
				"APC",
				};
GT.category = "Armor";