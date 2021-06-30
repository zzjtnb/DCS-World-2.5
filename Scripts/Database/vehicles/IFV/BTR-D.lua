-- BTR-D
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV)
set_recursive_metatable(GT.chassis, GT_t.CH_t.BTRD);

GT.visual.shape = "btr-d"
GT.visual.shape_dstr = "BTR-D_P_1"

GT.snd.move = "GndTech/TankMoveLight";
GT.snd.move_pitch = {{0.0, 0.6}, {10.0, 1.0}};
GT.snd.move_gain = {{0.0, 0.01}, {0.5, 0.5}, {12.0, 1.0}};

--chassis
GT.swing_on_run = false

GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)

--Burning after hit
GT.visual.fire_size = 0.5 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900 --burning time (seconds)
GT.visual.dust_pos = {2.0, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.0, 0.55, -GT.chassis.Z_gear_2}
GT.animation_arguments.crew_presence = 50;

GT.CustomAimPoint = {0,1.0,0}
GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

GT.WS = {}
GT.WS.maxTargetDetectionRange = 6000;
GT.WS.smoke = {"SMOKE_02", "SMOKE_03", "SMOKE_01", "SMOKE_04"};

local ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_TOWER'
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(-180), math.rad(-5), math.rad(12)},
                    };
GT.WS[ws].drawArgument1 = 0
GT.WS[ws].drawArgument2 = 1
GT.WS[ws].omegaY = math.rad(40)
GT.WS[ws].omegaZ = math.rad(10)
GT.WS[ws].reference_angle_Y = 0
GT.WS[ws].reference_angle_Z = 0
GT.WS[ws].pidY = { p=100, i=0.5, d=9, inn=8 };
GT.WS[ws].pidZ = { p=100, i=0.5, d=9, inn=8 };
GT.WS[ws].pointer = 'POINT_SIGHT_01';
GT.WS[ws].cockpit = {"genericMissileAT", {0.01, 0.0, 0.0}, }

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.Fagot)
__LN.BR = {{ connector_name = 'POINT_ROCKET', drawArgument = 4}};
__LN.sightMasterMode = 1
__LN.sightIndicationMode = 1;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_MGUN_R'
GT.WS[ws].angles = {
                    {math.rad(12), math.rad(-25), math.rad(-9), math.rad(15)},
                    };
GT.WS[ws].drawArgument1 = 37
GT.WS[ws].drawArgument2 = 36
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(50);
GT.WS[ws].pidY = {p=60, i=0.1, d=8, inn = 5.5};
GT.WS[ws].pidZ = {p=60, i=0.1, d=8, inn = 5.5};
GT.WS[ws].reference_angle_Y = 0
GT.WS[ws].reference_angle_Z = 0

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_7_62);
for i=2,4 do
    __LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;
__LN.BR[1].connector_name = 'POINT_MGUN_R';
__LN.fireAnimationArgument = 46;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT.WS[ws-1])
GT.WS[ws].center = 'CENTER_MGUN_L'
GT.WS[ws].angles = {
                    {math.rad(25), math.rad(-12), math.rad(-9), math.rad(15)},
                    };
GT.WS[ws].drawArgument1 = 39
GT.WS[ws].drawArgument2 = 38
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_MGUN_L';
__LN.fireAnimationArgument = 47;
__LN = nil;

GT.Name = "BTR_D"
GT.DisplayName = _("ARV BTR-RD")
GT.Rate = 10

GT.Sensors = { OPTIC = {"TKN-3B day", "TKN-3B night", -- командира
                        },
            };

GT.DetectionRange  = 0;
GT.airWeaponDist = GT.WS[2].LN[1].distanceMax;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000203";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_MissGun,wsType_GenericAPC,
                "APC", "ATGM",
				"CustomAimPoint"
                };
GT.category = "Armor";
GT.InternalCargo = {
			nominalCapacity = 1000,
			maximalCapacity = 1000, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}