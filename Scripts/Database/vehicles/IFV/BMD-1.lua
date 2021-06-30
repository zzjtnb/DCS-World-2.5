-- BMD-1
GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV)
set_recursive_metatable(GT.chassis, GT_t.CH_t.BMD1);
GT.chassis.life = 2;
GT.DropWeight = 8700.0;

GT.visual.shape = "bmd-1"
GT.visual.shape_dstr = "Bmd-1_p_1"

GT.snd.move = "GndTech/TankMoveLight";
GT.snd.move_pitch = {{0.0, 0.6}, {10.0, 1.0}};
GT.snd.move_gain = {{0.0, 0.01}, {0.5, 0.5}, {12.0, 1.0}};

--chassis
GT.swing_on_run = false

GT.sensor = {}
set_recursive_metatable(GT.sensor, GT_t.SN_visual)
GT.sensor.height = 1.97

--Burning after hit
GT.visual.fire_size = 0.6 --relative burning size
GT.visual.fire_pos[1] = 0 -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0 -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0 -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000 --burning time (seconds)
GT.visual.dust_pos = {1.8, 0.0, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-2.7, 0.5, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT", offset = {0.05, 0.0, 0.0}}
GT.driverCockpit = "DriverCockpit/DriverCockpitWithIR"

-- weapon systems

GT.WS = {}
GT.WS.maxTargetDetectionRange = 5000;

local ws = 0;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT_t.WS_t._2A28_GROM)
GT.WS[ws].center = 'CENTER_TOWER'
GT.WS[ws].pointer = 'POINT_SIGHT_01'
GT.WS[ws].LN[1].BR[1] = { connector_name = 'POINT_GUN',
						  recoilArgument = 23,
						  recoilTime = 0.3 }
GT.WS[ws].LN[3].BR[1].connector_name = 'POINT_MGUN'

ws = GT_t.inc_ws();
GT.WS[ws] = {}
GT.WS[ws].center = 'CENTER_MGUN_R'
GT.WS[ws].angles = {
                    {math.rad(5), math.rad(-30), math.rad(-5), math.rad(15)},
                    };
GT.WS[ws].drawArgument1 = 37
GT.WS[ws].drawArgument2 = 36
GT.WS[ws].omegaY = math.rad(50);
GT.WS[ws].omegaZ = math.rad(30);
GT.WS[ws].pidY = {p=60, i=0.1, d=8, inn=5.5};
GT.WS[ws].pidZ = {p=60, i=0.1, d=8, inn=5.5};

local __LN = add_launcher(GT.WS[ws], GT_t.LN_t.machinegun_7_62);
__LN.PL[1].switch_on_delay = 15;
__LN.PL[1].ammo_capacity = 250;
__LN.PL[1].portionAmmoCapacity = 250;
__LN.PL[1].reload_time = 15;
for i = 2,4 do
	__LN.PL[i] = {};
	set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end
__LN.BR[1].connector_name = 'POINT_MGUN_R';
__LN.fireAnimationArgument = 46;

ws = GT_t.inc_ws();
GT.WS[ws] = {}
set_recursive_metatable(GT.WS[ws], GT.WS[ws-1]);
GT.WS[ws].center = 'CENTER_MGUN_L'
GT.WS[ws].angles = {
                    {math.rad(30), math.rad(-5), math.rad(-5), math.rad(15)},
                    };
GT.WS[ws].drawArgument1 = 39
GT.WS[ws].drawArgument2 = 38
GT.WS[ws].LN[1].BR[1].connector_name = 'POINT_MGUN_L';
GT.WS[ws].LN[1].fireAnimationArgument = 47;

GT.Name = "BMD-1";
GT.DisplayName = _("IFV BMD-1");
GT.Rate = 8;

GT.Sensors = { OPTIC = {"TKN-3B day", "TKN-3B night", -- командирский
                        --"1PN22M1 day", "1PN22M1 night" -- наводчика,
                        },
            };

GT.DetectionRange  = 0;
GT.airWeaponDist = GT.WS[1].LN[3].distanceMax;
GT.ThreatRange = GT.WS[1].LN[2].distanceMax;
GT.mapclasskey = "P0091000002";
GT.attribute = {wsType_Ground,wsType_Tank,wsType_MissGun,wsType_GenericIFV,
                "IFV",
                "ATGM",
                };
GT.category = "Armor";

GT.Transportable = {
	size = GT.DropWeight
}
GT.InternalCargo = {
		nominalCapacity = 400,
		maximalCapacity = 400, --максимальный объем, который может вместить в усл. ед., складываются все transportable.size
	}