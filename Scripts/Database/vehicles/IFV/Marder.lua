-- Marder IFV
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MARDER);

GT.visual.shape = "marder";
GT.visual.shape_dstr = "Marder_p_1";

-- Turbine
GT.turbine = false;
-- Turbine

--chassis
GT.swing_on_run = false;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.985;

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)
GT.visual.dust_pos = {3.25, 0.0, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-3.1, 0.5, -GT.chassis.Z_gear_2}

GT.driverViewPoint = {2.24, 1.66, -0.83};
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;
GT.WS.smoke = {"SMOKE_01", "SMOKE_04", "SMOKE_02", "SMOKE_05", "SMOKE_03", "SMOKE_06"};

--GT.WS{1]
local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
					{math.rad(-140), math.rad(140), math.rad(-5), math.rad(65)},
					{math.rad(140), math.rad(-140), math.rad(-10), math.rad(65)},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(30);
GT.WS[ws].laser = true;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_RH202);
__LN.beamWidth = math.rad(1);
__LN.BR = {{connector_name = 'POINT_GUN'}};
__LN.customViewPoint = { "genericAAA", {-1.2, 0.13, 0 }, };
__LN.fireAnimationArgument = 23;

--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_MG3);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[4]);
__LN.beamWidth = math.rad(1);
for i = 2, 20 do
	__LN.PL[i] = {};
	set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end
__LN.customViewPoint = { "genericAAA", {-0.3, 0.13, 0 }, };
__LN.BR[1].connector_name = 'POINT_MGUN_01';
__LN.fireAnimationArgument = 45;
__LN = nil;

-- Mk19

GT.Name = "Marder";
GT.DisplayName = _("IFV Marder");
GT.Rate = 12;

GT.Sensors = { OPTIC = {"PERI-Z11 day",},
                };

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericIFV,
				"IFV",
				"ATGM",
				};
GT.category = "Armor";
GT.InternalCargo = {
			nominalCapacity = 600,
			maximalCapacity = 600, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}