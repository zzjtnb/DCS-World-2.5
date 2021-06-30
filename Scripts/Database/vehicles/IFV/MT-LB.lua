-- MT-LB
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MTLB);

GT.visual.shape = "MTLB";
GT.visual.shape_dstr = "MTLB_P_1";

GT.snd.move = "GndTech/TankMoveLight";
GT.snd.move_pitch = {{0.0, 0.6}, {10.0, 1.0}};
GT.snd.move_gain = {{0.0, 0.01}, {0.5, 0.5}, {12.0, 1.0}};

--chassis
GT.swing_on_run = false;

GT.visual.fire_pos[1] = -0.413;


GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.52;

--Burning after hit
GT.visual.fire_size = 0.6; --relative burning size
GT.visual.fire_pos[1] = 1; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 900; --burning time (seconds)
GT.visual.dust_pos = {2.7, 0.0, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-2.6, 0.3, -GT.chassis.Z_gear_2}

GT.CustomAimPoint = {0,1,0}
GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.06, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
					{math.rad(180), math.rad(144), math.rad(-5), math.rad(35)},
					{math.rad(144), math.rad(113), math.rad(20), math.rad(35)},
					{math.rad(113), math.rad(-180), math.rad(-5), math.rad(35)},
				};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(60);
GT.WS[ws].omegaZ = math.rad(30);
GT.WS[ws].cockpit = { "PP-61B/PP-61B", {-0.55, 0.12, 0 }};

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_7_62);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[2]);
__LN.fireAnimationArgument = 23;
for i=2,10 do
    __LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;
__LN.BR[1].connector_name = 'POINT_GUN';
__LN.sightMasterMode = 1
__LN.sightIndicationMode = 1;


GT.Name = "MTLB";
GT.DisplayName = _("APC MTLB");
GT.Rate = 10;

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000004";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericAPC,
				"APC",
				"CustomAimPoint",
				};
GT.category = "Armor";
GT.InternalCargo = {
			nominalCapacity = 1100,
			maximalCapacity = 1100, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}