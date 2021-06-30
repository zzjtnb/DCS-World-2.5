-- _WS - chassis WS table (GT.WS), ss_pos - position for sensor {dx, dy, dz}

local _Base = _G;
GT_t.SS_t = {}; setfenv(1, GT_t.SS_t) --module('GT_t.SS_t');
local GT_t = _Base.GT_t;

-- РЛСУ "Вымпел-АМ" (СУО "Вымпел")
VYMPEL_TRACKER_LN = {}
VYMPEL_TRACKER_LN.type = 103;
VYMPEL_TRACKER_LN.reactionTime = 4;
VYMPEL_TRACKER_LN.distanceMin = 200;
VYMPEL_TRACKER_LN.distanceMax = 12000;
VYMPEL_TRACKER_LN.min_trg_alt = -1;
VYMPEL_TRACKER_LN.max_trg_alt = 12000;
VYMPEL_TRACKER_LN.beamWidth = _Base.math.rad(90);

VYMPEL_TRACKER = {}
VYMPEL_TRACKER[1] = {
	radar_type = 104, --short range
	omegaY = 2,
	omegaZ = 2,
	pidY = {p=100, i=0.05, d=12, inn = 50},
	pidZ = {p=100, i=0.05, d=12, inn = 50},
	angles = {
				{_Base.math.rad(150), _Base.math.rad(-150), _Base.math.rad(-4), _Base.math.rad(89)},
			},
	LN = {}
}
VYMPEL_TRACKER[1].LN[1] = {};
_Base.set_recursive_metatable(VYMPEL_TRACKER[1].LN[1], VYMPEL_TRACKER_LN);
VYMPEL_TRACKER[2] = { --!!!!!!! IMPORTANT: parameter 'base' must be set to primary tracker ID ('ws' variable) for this tracker in specific unit's script file
	radar_type = 104, --short range
	--base = !!!!!!!! ^^
	base_type = 3,
	pos = {0.0, 0.0, 0.0},
	omegaY = 2,
	omegaZ = 2,
	pidY = {p=100, i=0.05, d=12, inn = 50},
	pidZ = {p=100, i=0.05, d=12, inn = 50},
	angles = {
				{_Base.math.rad(10), _Base.math.rad(-10), _Base.math.rad(-10), _Base.math.rad(10)},
			},
	LN = {}
}
VYMPEL_TRACKER[2].LN[1] = {};
_Base.set_recursive_metatable(VYMPEL_TRACKER[2].LN[1], VYMPEL_TRACKER_LN);

-- РЛС "Оса-М"
OSA_tracker = {
				radar_type = 104, -- short range
				angles = {
					{_Base.math.rad(180), _Base.math.rad(-180), _Base.math.rad(-5), _Base.math.rad(60)},
				},
				omegaY = 2,
				omegaZ = 2,
				pidY = {p=10, i=0.02, d=5, inn = 2},
				pidZ = {p=10, i=0.02, d=5, inn = 2},
				LN = {
						{ -- LN[1]
							type = 102,
							reactionTime = 10,
							max_number_of_missiles_channels = 2,
							distanceMin = 1200,
							distanceMax = 30000,
							ECM_K = 0.65,
							min_trg_alt = 10,
							max_trg_alt = 5000,
							beamWidth = _Base.math.rad(90)
						}
					}
}

-- РЛС СУАО "Лев"
LEV = {
	radar_type = 103, -- mid range
	angles = {
				{_Base.math.rad(180), _Base.math.rad(-180), _Base.math.rad(-10), _Base.math.rad(85)},
			},
	omegaY = _Base.math.rad(35),
	omegaZ = _Base.math.rad(30),
	pidY = {p=10, i=0.02, d=5, inn = 2},
	pidZ = {p=10, i=0.02, d=5, inn = 2},
	LN = {
			{
				type = 103,
				distanceMin = 1000,
				distanceMax = 40000,
				min_trg_alt = 50,
				max_trg_alt = 5000,
			}
		}
}
--[[
-- ККС комплекс космической связи (для наведения ракет типа Базальт)
add_SS_KKS_WS = function(_WS, ss_pos, board, max_left, max_right, depends_on)

	local SS_KKS_WS_TRACKERS = {};
	local tempLN = {
		type = 102,
		distanceMin = 13000,
		distanceMax = 550000,
		min_trg_alt = 0,
		max_trg_alt = 20,
		max_number_of_missiles_channels = 2,
	};
	
	--create_SS_template(_WS, ss_pos, board, max_left, max_right, depends_on)
	for i=1,16 do
		_WS[GT_t.inc_ws()] = {
			radar_type = 102; -- long range
			pos = ss_pos;
			omegaY = 2;
			omegaZ = 2;
			pidY = {p=10, i=0.5, d=5, inn = 2};
			pidZ = {p=10, i=0.5, d=5, inn = 2};
			board = board;
			LN = {tempLN};
		}
		if depends_on then _WS[ws].LN[1].depends_on_unit = depends_on; end;
		_Base.table.insert(SS_KKS_WS_TRACKERS, {{'self', ws}});
	end;
	return SS_KKS_WS_TRACKERS;
end;
]]

-- MK92_CAS_WS
MK92_CAS_tracker = {
	type = 102,
	reactionTime = 16,
	distanceMin = 4000,
	distanceMax = 100000,
	ECM_K = 0.5,
	min_trg_alt = 20,
	max_trg_alt = 25000,
	max_number_of_missiles_channels = 1,
	beamWidth = _Base.math.rad(90),
};
MK92_CAS_WS = {}; -- 2 target channels
MK92_CAS_WS[1] = { -- primary tracker
	radar_type = 103, --mid range
	omegaY = 2,
	omegaZ = 2,
	pidY = {p=10, i=0.5, d=5, inn = 2},
	pidZ = {p=10, i=0.5, d=5, inn = 2},
	angles = {
				{_Base.math.rad(180), _Base.math.rad(-180), _Base.math.rad(-4), _Base.math.rad(90)},
			},
	LN = {}
};
MK92_CAS_WS[1].LN[1] = {};
_Base.set_recursive_metatable(MK92_CAS_WS[1].LN[1], MK92_CAS_tracker);
--!!!!!!! IMPORTANT: parameter 'base' must be set to primary tracker ID ('ws' variable) for this tracker in specific unit's script file
MK92_CAS_WS[2] = { -- slave tracker
	radar_type = 103, --mid range
	--base = !!!!!!!! ^^
	base_type = 3,
	pos = {0.0, 0.0, 0.0},
	angles = {
				{_Base.math.rad(10), _Base.math.rad(-10), _Base.math.rad(-10), _Base.math.rad(10)},
			},
	omegaY = 2,
	omegaZ = 2,
	pidY = {p=10, i=0.5, d=5, inn = 2},
	pidZ = {p=10, i=0.5, d=5, inn = 2},
	LN = {}
};
MK92_CAS_WS[2].LN[1] = {};
_Base.set_recursive_metatable(MK92_CAS_WS[2].LN[1], MK92_CAS_tracker);