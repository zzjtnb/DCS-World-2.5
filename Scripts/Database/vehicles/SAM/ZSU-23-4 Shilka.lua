-- ZSU-23-4 'Shilka'

GT = {};
GT_t.ws = 0;
set_recursive_metatable(GT, GT_t.generic_track_IFV);
set_recursive_metatable(GT.chassis, GT_t.CH_t.GM575);

GT.visual.shape = "zsu-23-4";
GT.visual.shape_dstr = "Zsu-23-4_p_1";
 
--chassis
GT.swing_on_run = false;
GT.toggle_alarm_state_interval = 4.0;


GT.sensor = {};
GT.sensor.max_range_finding_target = 5000;
GT.sensor.min_range_finding_target = 0;
GT.sensor.max_alt_finding_target = 2500;
GT.sensor.min_alt_finding_target = 0;
GT.sensor.height = 3.458;

--Burning after hit
GT.visual.fire_size = 0.8; --relative burning size
GT.visual.fire_pos[1] = 0; -- center of burn at long axis shift(meters)
GT.visual.fire_pos[2] = 0; -- center of burn shift at vertical shift(meters)
GT.visual.fire_pos[3] = 0; -- center of burn at transverse axis shift(meters)
GT.visual.fire_time = 1000; --burning time (seconds)
GT.visual.dust_pos = {3.15, 0.1, -GT.chassis.Z_gear_1}
GT.visual.dirt_pos = {-2.9, 0.5, -GT.chassis.Z_gear_2}

GT.driverViewConnectorName = {"DRIVER_POINT"}

-- weapon systems

GT.WS = {};
GT.WS.maxTargetDetectionRange = 10000;
GT.WS.radar_type = 104;

local ws;

-- ws = GT_t.inc_ws();
-- GT.WS[ws] = {};
-- GT.WS[ws].center = "CENTER_TOWER";
-- GT.WS[ws].angles = {
                    -- {math.rad(180), math.rad(-180), -0.1, math.rad(90)},
                    -- };
-- GT.WS[ws].omegaY = math.rad(120);
-- GT.WS[ws].omegaZ = math.rad(160);
-- GT.WS[ws].pidY = {p=100, i=2.0, d=12.0, inn = 10.0};
-- GT.WS[ws].pidZ = {p=100, i=4.0, d=10.0, inn = 10.0};
-- GT.WS[ws].LN = {};
-- GT.WS[ws].LN[1] = {
    -- type = 103,
    -- reactionTime = 6,
    -- distanceMin = 0,
    -- distanceMax = GT.sensor.max_range_finding_target,
    -- min_trg_alt = 0,
    -- max_trg_alt = GT.sensor.max_alt_finding_target,
    -- max_number_of_missiles_channels = 1,
    -- beamWidth = math.rad(5)
-- }

ws = GT_t.inc_ws();
GT.WS[ws] = {};
set_recursive_metatable(GT.WS[ws], GT_t.WS_t.ZU_23);
GT.WS[ws].reference_angle_Z = math.rad(15);
GT.WS[ws].center = "CENTER_TOWER";
GT.WS[ws].angles = {
					{math.rad(150), math.rad(-150), -0.1, 1.48},
					{math.rad(-150), math.rad(150), math.rad(-4.5), 1.48},
}
GT.WS[ws].omegaY = math.rad(120);
GT.WS[ws].omegaZ = math.rad(160);
GT.WS[ws].pidY = {p=100, i=3.0, d=10.0, inn = 12.0};
GT.WS[ws].pidZ = {p=100, i=3.0, d=10.0, inn = 12.0};
GT.WS[ws].stabilizer = true;
GT.WS[ws].isoviewOffset = {0.0, 4.0, 0.0};
GT.WS[ws].pointer = 'POINT_SIGHT_01';

local __LN = GT.WS[ws].LN[1]
__LN.name = "2A14_4"
__LN.display_name = _("2A14_4")
__LN.beamWidth = math.rad(90);
--__LN.depends_on_unit = {{{'self', 1}}};
--__LN.reactionTime = 2;
__LN.reactionTime = 6;
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[5]);
__LN.sound  = {cycle_shot = "Weapons/Automatic/ZU_23_4", end_burst = "Weapons/Automatic/ZU_23_4_End"};
__LN.PL = {{}};
set_recursive_metatable(__LN.PL[1], GT_t.LN_t.automatic_gun_2A14.PL[1]);
__LN.PL[1].ammo_capacity = 2000;
__LN.PL[1].portionAmmoCapacity = 2000;
__LN.PL[1].reload_time = 1224
__LN.BR = {
                        {connector_name = 'POINT_GUN_01'},
                        {connector_name = 'POINT_GUN_02'},
                        {connector_name = 'POINT_GUN_03'},
                        {connector_name = 'POINT_GUN_04'},
                    };

__LN.customViewPoint = { "genericAAA", {0.05,0.0,0.0}};
                    
GT.Name = "ZSU-23-4 Shilka";
GT.DisplayName = _("AAA ZSU-23-4 Shilka");
GT.Rate = 10;

GT.Sensors = { RADAR = GT.Name, };

GT.DetectionRange  = GT.sensor.max_range_finding_target;
GT.ThreatRange = GT.WS[1].LN[1].distanceMax;
GT.mapclasskey = "P0091000017";
GT.attribute = {wsType_Ground,wsType_SAM,wsType_Radar_Gun,Shilka_,
                "AA_flak",
                "Mobile AAA",
                "SAM TR",
                "RADAR_BAND1_FOR_ARM",
                };
GT.category = "Air Defence";