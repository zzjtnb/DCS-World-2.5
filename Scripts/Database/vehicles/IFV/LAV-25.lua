-- LAV-25
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_wheel_IFV)
set_recursive_metatable(GT.chassis, GT_t.CH_t.LAV);

GT.visual.shape = "lav-25"
GT.visual.shape_dstr = "Lav-25_p1"

-- Turbine
GT.turbine = false;
-- Turbine

--chassis
GT.swing_on_run = false

GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.height = 2.692

--Burning after hit
GT.visual.fire_size = 0.8 --relative burning size
GT.visual.fire_pos[1] = 1.256 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0.516 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000 --burning time (seconds)

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.05, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithLLTV"

-- weapon systems
GT.WS = {}
GT.WS.maxTargetDetectionRange = 5000;
GT.WS.smoke = {"SMOKE_02", "SMOKE_05", "SMOKE_04", "SMOKE_07", "SMOKE_01", "SMOKE_06", "SMOKE_03", "SMOKE_08",};

--GT.WS[1]
local ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_TOWER';
GT.WS[ws].angles = {
					{math.rad(180), math.rad(150), math.rad(-3.5), math.rad(59)},
					{math.rad(150), math.rad(21), math.rad(-9), math.rad(59)},
                    {math.rad(21), math.rad(-20), math.rad(-5), math.rad(59)},
					{math.rad(-20), math.rad(-155), math.rad(-9), math.rad(59)},
					{math.rad(-150), math.rad(-180), math.rad(-3.5), math.rad(59)},
                    };
GT.WS[ws].drawArgument1 = 0;
GT.WS[ws].drawArgument2 = 1;
GT.WS[ws].omegaY = math.rad(30);
GT.WS[ws].omegaZ = math.rad(30);
GT.WS[ws].laser = true;
GT.WS[ws].stabilizer = true;
GT.WS[ws].pointer = 'POINT_SIGHT_01';
GT.WS[ws].cockpit = {"LAV-25/LAV-25_sight", {0.0, 0.0, 0.0} }

__LN = add_launcher(GT.WS[ws], GT_t.LN_t.automatic_gun_25mm);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[4]);
__LN.fireAnimationArgument = 23;
__LN.PL[1].ammo_capacity = 150; -- HE
__LN.PL[1].portionAmmoCapacity = 150;
__LN.PL[1].reload_time = 900;
__LN.PL[1].feedSlot = 1;
__LN.PL[2].ammo_capacity = 60; -- AP
__LN.PL[1].portionAmmoCapacity = 60;
__LN.PL[2].reload_time = 300;
__LN.PL[2].feedSlot = 2;
__LN.BR[1].connector_name = 'POINT_GUN';
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;


--GT.WS[1].LN[2]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_M240C);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[4]);
__LN.PL[1].ammo_capacity = 440;
__LN.PL[1].portionAmmoCapacity = 440;
__LN.BR[1].connector_name = 'POINT_MGUN_01';
__LN.fireAnimationArgument = 45;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 3;

--GT.WS[2]
ws = GT_t.inc_ws();
GT.WS[ws] = {};
GT.WS[ws].center = 'CENTER_MGUN';
GT.WS[ws].base = 1;
GT.WS[ws].angles = {
                    {math.rad(100), math.rad(-100), math.rad(-8), math.rad(25)},
                    };
GT.WS[ws].drawArgument1 = 25;
GT.WS[ws].drawArgument2 = 26;
GT.WS[ws].pidY = {p=100, i=0.1, d=10, inn=10};
GT.WS[ws].pidZ = {p=100, i=0.1, d=10, inn=10};
GT.WS[ws].omegaY = math.rad(120);
GT.WS[ws].omegaZ = math.rad(120);
GT.WS[ws].cockpit = { "IronSight/IronSight", {-1.1, 0.18, 0 }, };

--GT.WS[2].LN[1]
__LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_M240C);
__LN.PL[1].ammo_capacity = 220;
__LN.PL[1].portionAmmoCapacity = 220;
__LN.PL[1].switch_on_delay = 6;
__LN.PL[1].reload_time = 10;
for i=2,5 do
    __LN.PL[i] = {};
    set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end;
__LN.BR[1].connector_name = 'POINT_MGUN';
__LN.fireAnimationArgument = 44;
__LN.sightMasterMode = 1
__LN.sightIndicationMode = 1;
__LN = nil;

GT.Name = "LAV-25";
GT.DisplayName = _("APC LAV-25");
GT.Rate = 8;

GT.Sensors = {  OPTIC = {"ITSS_HIRE_III day", "ITSS_HIRE_III night", },
             };

GT.DetectionRange  = 0;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_Gun,wsType_GenericIFV,
                "APC",
                };
GT.category = "Armor";

GT.DropWeight = 14000.0;

GT.Transportable = {
	size = GT.DropWeight
}

GT.InternalCargo = {
			nominalCapacity = 600,
			maximalCapacity = 600, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
		}