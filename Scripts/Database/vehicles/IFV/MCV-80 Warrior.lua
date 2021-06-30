-- MCV-80 "Warrior"
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.MCV80);

GT.visual.shape = "mcv-80";
GT.visual.shape_dstr = "MCV-80_P1"; -- TOFIX

-- Turbine
GT.turbine = false;
-- Turbine

--chassis
GT.swing_on_run = false;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.76;

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = 1; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0.779; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)
GT.visual.dust_pos = {3.1, 0.0, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-2.9, 0.6, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 5500;
GT.WS.smoke = {"SMOKE_02", "SMOKE_05", "SMOKE_01", "SMOKE_06", "SMOKE_04", "SMOKE_07", "SMOKE_03", "SMOKE_08",};

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
					{math.rad(180), math.rad(-180), math.rad(-8), 0.5853},
					};
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = 1.0472;
GT.WS[ws].omegaZ = 1.0472;
GT.WS[ws].laser = true;
GT.WS[ws].pointer = "POINT_SIGHT"
GT.WS[ws].cockpit = { "MCV-80_Warrior/MCV-80_reticle", {0.0, 0.0, 0.0 }, };

local __LN = add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_L21A1);
__LN.beamWidth = math.rad(1);
__LN.BR = {{connector_name = 'POINT_GUN',
			recoilArgument = 23,
			recoilTime = 0.2}
		  };
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.L94A1);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[4]);
__LN.beamWidth = math.rad(1);
for i=2,5 do
    __LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;
__LN.BR[1].connector_name = 'POINT_MGUN';
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;
__LN.fireAnimationArgument = 45;
__LN = nil;

GT.Name = "MCV-80";
GT.DisplayName = _("IFV MCV-80");
GT.Rate = 15;

GT.Sensors = { OPTIC = {"Raven day", "Raven night"} }
 
GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericAPC,      
				"APC",
				};
GT.category = "Armor";
GT.InternalCargo = {
			nominalCapacity = 700,
			maximalCapacity = 700, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}