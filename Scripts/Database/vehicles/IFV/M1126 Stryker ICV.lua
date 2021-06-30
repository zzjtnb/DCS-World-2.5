-- M1126 Stryker ICV
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.STRYKER);

GT.visual.shape = "M1126";
GT.visual.shape_dstr = "M1126_P1";

-- Turbine
GT.turbine = false;
-- Turbine

--chassis
GT.swing_on_run = false;

GT.sensor = {};
set_recursive_metatable(GT.sensor, GT_t.SN_visual);
GT.sensor.height = 2.6;

--Burning after hit
GT.visual.fire_size = 0.9; --relative burning size
GT.visual.fire_pos[1] = 1; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.00, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 5000;
GT.WS.smoke = {"SMOKE_02", "SMOKE_05", "SMOKE_04", "SMOKE_07", "SMOKE_01", "SMOKE_06", "SMOKE_03", "SMOKE_08",};

local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles_mech = {
                    {math.rad(180), math.rad(-180), math.rad(-22), math.rad(55)},
                    };
GT.WS[ws].angles = {
                    {math.rad(180), math.rad(125), math.rad(-9), math.rad(55)},
					{math.rad(125), math.rad(-150), math.rad(-16), math.rad(55)},
					{math.rad(-150), math.rad(-180), math.rad(-9), math.rad(55)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].pidY = {p=100,i=2.0,d=10,inn=10,};
GT.WS[ws].pidZ = {p=100,i=2.0,d=10,inn=10,};
GT.WS[ws].omegaY = math.rad(70);
GT.WS[ws].omegaZ = math.rad(90);
GT.WS[ws].stabilizer = true;
GT.WS[ws].laser = true;

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_12_7_M2);
__LN.beamWidth = math.rad(1);
for i=1,5 do
    __LN.PL[i].switch_on_delay = 20;
    __LN.PL[i].ammo_capacity = 200;
	__LN.PL[i].portionAmmoCapacity = 200;
	__LN.PL[i].reload_time = 25;
end;
__LN.fireAnimationArgument = 23
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[11]);
__LN.BR[1].connector_name = 'POINT_GUN'
__LN.customViewPoint = { "genericAAA", {-1.5, 0.2, 0 }, };

GT.Name = "M1126 Stryker ICV";
GT.DisplayName = _("APC M1126 Stryker ICV");
GT.Rate = 10;

GT.Sensors = { OPTIC = {
                    "M151 Protector RWS day",
                    "M151 Protector RWS IR",
                }
            };
            
GT.EPLRS = true

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000004";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_Stryker,
                "APC",
                "Datalink",
                };
GT.category = "Armor";
GT.InternalCargo = {
			nominalCapacity = 900,
			maximalCapacity = 900, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}