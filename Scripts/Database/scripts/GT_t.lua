local base = _G
local set_recursive_metatable = base.set_recursive_metatable;

GT_t = {}; setfenv(1, GT_t) --module('GT_t');

GEAR_TYPES = {
	WHEELS = 1,
	TRACKS = 2,
	HUMAN = 3,
	STATIONARY = 4
}

REQUIRED_UNIT = {
	NEED_PRESENT = 1,
	NEED_AI_ON = 2,
	NEED_ALARMED = 3
}
-- Tank Tower PIDs
TANK_TOWER_PIDY = {p=10, i = 2.0, d = 4.0, inn = 0.2}
TANK_TOWER_PIDZ = {p=10, i = 2.0, d = 4.0, inn = 0.2}

-- Modern Tank PIDs
MODERN_TANK_TOWER_PIDY = {p=60, i = 10.0, d = 22.0, inn = 0.4}
MODERN_TANK_TOWER_PIDZ = {p=60, i = 10.0, d = 22.0, inn = 0.4}

-- Machinegun Tower PIDs
MG_TOWER_PIDY = {p=100, i = 20.0, d = 15.0, inn = 10}
MG_TOWER_PIDZ = {p=100, i = 20.0, d = 15.0, inn = 10}

--- AAA PIDs
AAA_PIDY = {p=30, i = 20.0, d = 10.0, inn = 2}
AAA_PIDZ = {p=30, i = 20.0, d = 10.0, inn = 2}

-- CIWS PIDs
CIWS_PIDY = {p=100, i = 10.0, d = 20.0, inn = 3}
CIWS_PIDZ = {p=100, i = 10.0, d = 20.0, inn = 3}

-- Heavy Artillery PIDs
HEAVY_ARTILLERY_PIDY = {p=10, i = 1.0, d = 6.0, inn = 0.5}
HEAVY_ARTILLERY_PIDZ = {p=10, i = 1.0, d = 6.0, inn = 0.5}

ws = 0; -- GT_t.ws

function inc_ws()
    ws = ws + 1;
    return ws;
end;

function inc_cr()
	cr = cr + 1;
	return cr;
end;

BarrelsReloadTypes = {
	['ORDINARY'] = 1,
	['SIMULTANEOUSLY'] = 2,
	['SEQUENTIALY'] = 3
}
base.BarrelsReloadTypes = BarrelsReloadTypes

_ = _ or function() end;

-- platform sensors
SN_visual = {
							sensor_type = visual,
							max_range_finding_target = 5000,
							min_range_finding_target = 0,
							max_alt_finding_target = 5000,
							min_alt_finding_target = 0,
							laser = false,
							height = 1.9,
						};

-- armour scheme
unarmed_hull_elevation = { {-90, 90, 1 }, }
unarmed_hull_azimuth = { {0, 180, 1 }, }
unarmed_turret_elevation = { {-90, 90, 1 }, }
unarmed_turret_azimuth = { {0, 180, 1 }, }
unarmed_armour_scheme = {
										hull_elevation = unarmed_hull_elevation,
										hull_azimuth = unarmed_hull_azimuth,
										turret_elevation = unarmed_turret_elevation,
										turret_azimuth = unarmed_turret_azimuth
									};

tank_hull_elevation = { {-90, -45, 0.1}, {-45,11,1}, {11,19,2.9}, {19,40,1}, {40,90,0.15}, }
tank_hull_azimuth = { {0,10,2.9}, {10,30,1}, {30,150,0.67}, {150,180,0.20}, }
tank_turret_elevation = { {-90,18,2.9}, {18,90,1}, }
tank_turret_azimuth = { {0,10,2.9}, {10,30,1}, {30,150,0.67}, {150,180,0.25}, }
tank_armour_scheme = {
									hull_elevation = tank_hull_elevation,
									hull_azimuth = tank_hull_azimuth,
									turret_elevation = tank_turret_elevation,
									turret_azimuth = tank_turret_azimuth
								};

IFV_hull_elevation = { {-90, 30, 1 }, { 30, 90, 0.6 }, }
IFV_hull_azimuth = { {0, 30, 1 }, { 30, 150, 0.6 }, { 150,180, 0.5 }, }
IFV_turret_elevation = { {-90,18, 1 }, { 18,90, 0.5 }, }
IFV_turret_azimuth = { {0,180, 1 }, }
IFV_armour_scheme = {
									hull_elevation = IFV_hull_elevation,
									hull_azimuth = IFV_hull_azimuth,
									turret_elevation = IFV_turret_elevation,
									turret_azimuth = IFV_turret_azimuth
								};

T55_hull_elevation = { {-90, -45, 0.2 }, {-45, 30, 0.8 }, { 30, 90, 0.4 }, }
T55_hull_azimuth = { {0, 30, 1.2 }, { 30, 150, 1 }, { 150,180, 0.56 }, }
T55_turret_elevation = { {-90,23, 1.0}, { 23,90, 0.2 }, }
T55_turret_azimuth = { {0,30,2.0}, {30,150,1.6}, {150,180,0.65}, }
T55_armour_scheme = {
									hull_elevation = T55_hull_elevation,
									hull_azimuth = T55_hull_azimuth,
									turret_elevation = T55_turret_elevation,
									turret_azimuth = T55_turret_azimuth
								};

--global ground technic templates 
generic = {};
generic.chassis = {}
generic.fire_on_run = false
generic.visual = {
			fire_pos = {},
			min_time_agony = 4,
			max_time_agony = 60
			}

-- SOUND common template
generic.snd = {}

generic.armour_scheme = unarmed_armour_scheme;
-- номера аргументов анимации для всех
generic.animation_arguments = {
    alarm_state = 3, -- приведение в боевое состояние
    locator_rotation = -1 --11, -- вращение поискового радара
}

generic_ship = {};
set_recursive_metatable(generic_ship, generic);
-- номера аргументов анимации для корабликов
generic_ship.animation_arguments.alarm_state = -1;
generic_ship.animation_arguments.radar1_rotation = 1; -- вращение радара 1
generic_ship.animation_arguments.radar2_rotation = 2; -- вращение радара 2
generic_ship.animation_arguments.radar3_rotation = 3; -- вращение радара 3
generic_ship.animation_arguments.flag_animation = 314;  -- анимация колыщущегося флага
generic_ship.animation_arguments.blast_fences = {61, 62, 63, 64}; -- подъем газоотбойных плит на авианосце
generic_ship.animation_arguments.water_propeller = 65; -- анимация гребного винта
generic_ship.animation_arguments.nav_lights = 69; -- навигационные огни
generic_ship.animation_arguments.arresting_wires = {101, 102, 103, 104, 105, 106, 107, 108}; -- анимация тормозных тросов
--generic_ship.animation_arguments.state_flag_01 = 98; -- state flags with 0.01 step
--generic_ship.animation_arguments.state_flag_05 = 306; -- state flags with 0.05 step
generic_ship.chassis.armour_thickness = 0.005;

OLS_TYPE = {
	IFLOLS = 0,
	Luna = 1
}
--generic_ship.animation_arguments.luna_lights = -1; -- анимация системы "Луна" 
--(Obsolete. Use GT.OLS = {Type = "Luna", MeatBallArg = argID1} or GT.OLS = {Type = "IFLOLS", MeatBallArg = argID1, DatumAndWaveOffLightsArg = argID2, CutLightsArg = arg3ID})

generic_ship.animation_arguments.landing_strip_illumination = -1; -- огни посадочной полосы

generic_ship.radar1_period = 6.0; -- период полного оборота 1 радара (с)
generic_ship.radar2_period = 3.0; -- период полного оборота 2 радара
generic_ship.radar3_period = 1.0; -- период полного оборота 3 радара
generic_ship.propeller_omega_max = 300.0; -- частота вращения гребного вала
generic_ship.toggle_alarm_state_interval = 5.0; -- интервал приведения юнита в боевое состояния
generic_ship.snd.move = "Ships/ShipMove";
generic_ship.snd.engine = "Ships/ShipEngine";

generic_vehicle = {}
set_recursive_metatable(generic_vehicle, generic);
generic_vehicle.human_figure = false
generic_vehicle.mobile = true
--generic_vehicle.Sensors = { OPTIC = {"generic_tank_daysight"} }
generic_vehicle.Crew = 3;
generic_vehicle.CanopyGeometry = { azimuth = {-180.0, 180.0}, elevation = {-10.0, 70.0} };
--generic_vehicle.radar_rotation_period = 0.0; -- период оборота радара
generic_vehicle.toggle_alarm_state_interval = 2.0; -- интервал приведения юнита в боевое состояния

-- номера аргументов анимации для машинок
generic_vehicle.animation_arguments.body_swing_pitch = 20; -- качание при движении по тангажу
generic_vehicle.animation_arguments.body_swing_vertical = 21; -- качание при движении вверх-вниз
generic_vehicle.animation_arguments.body_swing_roll = 22; -- качание при движении по крену
--generic_vehicle.animation_arguments.exterior_randomization = -1;

generic_stationary = {}
set_recursive_metatable(generic_stationary, generic);
generic_stationary.mobile = false
generic_stationary.fire_on_run = false
generic_stationary.swing_on_run = false

generic_human = {}
set_recursive_metatable(generic_human, generic_stationary);
generic_human.human_figure = true
generic_human.animation_arguments.infantry_first_step = 2; -- анимация первого шага пехоты
generic_human.animation_arguments.agony_animation = 5;
generic_human.animation_arguments.wheels_rotation = 8;
generic_human.visual.min_time_agony = 1.0;
generic_human.visual.max_time_agony = 2.0;
generic_human.toggle_alarm_state_interval = 1.0; -- интервал приведения юнита в боевое состояния
generic_human.snd.hit = "Damage/FleshBulletHit" -- попадание в тело

generic_wheel_vehicle = {}
set_recursive_metatable(generic_wheel_vehicle, generic_vehicle);
generic_wheel_vehicle.max_rotate = 3.14159
generic_wheel_vehicle.animation_arguments.wheels_rotation = 8; -- вращение колес
generic_wheel_vehicle.animation_arguments.wheels_turn_angle = 9; -- угол поворота поворотных колес
generic_wheel_vehicle.snd.move = "GndTech/TruckMove";
generic_wheel_vehicle.snd.engine = "GndTech/TruckEngine";
generic_wheel_vehicle.snd.starter = "GndTech/TruckStarter";
generic_wheel_vehicle.snd.turn = "GndTech/TruckTurn";
generic_wheel_vehicle.snd.move_pitch = {{0.0, 0.7}, {20.0, 1.8}};
generic_wheel_vehicle.snd.move_vol = {{0.0, 0.01}, {0.5, 0.5}, {8.0, 1.0}};
generic_wheel_vehicle.snd.engine_pitch = {{0.0, 0.5}, {3.0, 1.0}, {3.0, 0.5}, {12.0, 1.2}, {12.0, 0.5},  {17.0, 1.2}, {17.0, 0.5}, {30.0, 1.5}};
generic_wheel_vehicle.snd.engine_vol_v = {{0.0, 0.8}, {3.0, 1.0}, {3.0, 0.9}, {12.0, 1.4}, {12.0, 1.2}, {17.0, 1.8}, {17.0, 1.6}, {30.0, 2.0}};
generic_wheel_vehicle.snd.engine_vol_a = {};

generic_track_vehicle = {}
set_recursive_metatable(generic_track_vehicle, generic_vehicle);
generic_track_vehicle.animation_arguments.rollers_rotation = 14; -- вращение траков
generic_track_vehicle.animation_arguments.tracks_rotation = 15; --вращение гусениц
-- звуковой шаблон
generic_track_vehicle.snd.move = "GndTech/TankMove";
generic_track_vehicle.snd.engine = "GndTech/TankEngine";
generic_track_vehicle.snd.starter = "GndTech/TruckStarter";
generic_track_vehicle.snd.turn = "";
generic_track_vehicle.snd.move_pitch = {{0.0, 0.7}, {20.0, 1.8}};
generic_track_vehicle.snd.move_vol = {{0.0, 0.01}, {0.5, 0.5}, {8.0, 1.0}};
generic_track_vehicle.snd.engine_pitch = {{0.0, 0.5}, {3.0, 0.9}, {3.0, 0.5}, {12.0, 1.1}, {12.0, 0.5},  {17.0, 1.1}, {17.0, 0.5}, {30.0, 1.25}};
generic_track_vehicle.snd.engine_vol_v = {{0.0, 0.8}, {3.0, 1.0}, {3.0, 0.9}, {12.0, 1.4}, {12.0, 1.2}, {17.0, 1.8}, {17.0, 1.6}, {30.0, 2.0}};
generic_track_vehicle.snd.engine_vol_a = {{0.0, 0.0}, {0.8, 0.5}};

generic_tank = {}
set_recursive_metatable(generic_tank, generic_track_vehicle);
generic_tank.armour_scheme = tank_armour_scheme

generic_track_IFV = {}
set_recursive_metatable(generic_track_IFV, generic_track_vehicle);
generic_track_IFV.armour_scheme = IFV_armour_scheme

generic_wheel_IFV = {}
set_recursive_metatable(generic_wheel_IFV, generic_wheel_vehicle);
generic_wheel_IFV.armour_scheme = IFV_armour_scheme

-- angle Z translation to argument options
ANGLE_Z_TRANSLATION_OPTIONS = {
	TRANSLATE_90_TO_ONE = 0,				-- [-90, 90] => [-1,1] - default translation, use for new models
	TRANSLATE_MIN_ANGLE_TO_MINUS_ONE = 1, 	-- [min_angle, max_angle] => [-1, 1]
	TRANSLATE_MAX_ANGLE_TO_ONE = 2  		-- [min_angle=0, max_angle] => [0, 1]; [-1,0) - no animation
}


-- Weapon System templates
