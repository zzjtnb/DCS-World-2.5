-- AAV-7
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.AAV7);

GT.visual.shape = "AAV-7";
GT.visual.shape_dstr = "AAV-7_p_1";

-- Turbine
GT.turbine = false;
-- Turbine

--chassis
GT.swing_on_run = false;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 3.263;

--Burning after hit
GT.visual.fire_size = 1.0; --relative burning size
GT.visual.fire_pos[1] = 1.0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0;-- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1200; --burning time (seconds)
GT.visual.dust_pos = {2.6, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.5, 0.4, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {-0.04, 0.02, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;
GT.WS.smoke = {"SMOKE_02", "SMOKE_05", "SMOKE_04", "SMOKE_07", "SMOKE_01", "SMOKE_06", "SMOKE_03", "SMOKE_08",};

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = "CENTER_TOWER";
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(133), math.rad(-2), math.rad(28)},
					{math.rad(133), math.rad(27), math.rad(5), math.rad(28)},
					{math.rad(27), math.rad(-16), math.rad(-5), math.rad(28)},
					{math.rad(-16), math.rad(-160), math.rad(-8), math.rad(28)},
					{math.rad(-160), math.rad(-180), math.rad(-2), math.rad(28)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(40);
GT.WS[ws].pidY = {p=15,i=0.2,d=4.5, inn=3};
GT.WS[ws].pidZ = {p=15,i=0.2,d=4.5, inn=3};
GT.WS[ws].pointer = 'POINT_SIGHT_01';
GT.WS[ws].cockpit = {"AAV-7/AAV-7_sight", {0.0, 0.0, 0.0} }

-- Mk19
local __LN = add_launcher(GT.WS[ws], GT_t.LN_t.MK19);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[4]);
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;
__LN.BR[1].connector_name = "POINT_GUN";
__LN.PL[1].ammo_capacity = 96;
__LN.PL[1].portionAmmoCapacity = 96;
__LN.PL[1].reload_time = 60;
__LN.PL[1].switch_on_delay = 60;
for i=2,9 do
	__LN.PL[i] = {};
	set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end
-- .50 M2
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[4]);
__LN.fireAnimationArgument = 45;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;
__LN.BR[1].connector_name = "POINT_MGUN_01";

GT.Name = "AAV7";
GT.DisplayName = _("APC AAV-7");
GT.Rate = 8;

GT.Sensors = { OPTIC = {"AAV day"}};

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[2].distanceMax;
GT.mapclasskey = "P0091000004";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericAPC,
                "APC",
                };
GT.category = "Armor";
