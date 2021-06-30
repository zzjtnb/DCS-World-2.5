--SENSOR CATEGORY
SENSOR_OPTICAL = 0
SENSOR_RADAR = 1
SENSOR_IRST = 2
SENSOR_RWR = 3
--RADAR
RADAR_AS = 0
RADAR_SS = 1
RADAR_MULTIROLE = 2
--
ASPECT_HEAD_ON = 0
ASPECT_TAIL_ON = 1
--
HEMISPHERE_UPPER = 0
HEMISPHERE_LOWER = 1
--IRST
ENGINE_MODE_FORSAGE = 0
ENGINE_MODE_MAXIMAL = 1
ENGINE_MODE_MINIMAL = 2
--OPTIC
OPTIC_SENSOR_TV = 0
OPTIC_SENSOR_LLTV = 1
OPTIC_SENSOR_IR = 2

local predefined = 
{
    [SENSOR_OPTICAL] =
    {
        ["Shkval"] = {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-35.0, 35.0},
                elevation = {-85.0, 15.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 2.5,
                elevation_sector = 2.5
            },          
            magnifications = {28, 100},
            resolution = 0.025,
            laserRanger = true,
        },
        ["Merkury LLTV"] = {
            type = OPTIC_SENSOR_LLTV,
            scan_volume =
            {
                azimuth = {-35.0, 35.0},
                elevation = {-85.0, 15.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 5.5,
                elevation_sector = 7.3
            },
            lightness_limit = 0.04,
            magnifications = {12, 24, 60},
            resolution = 0.025,
        },
        ["Raduga-Sh"] = {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-50.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 9.0,
                elevation_sector = 9.0
            },
            magnifications = {7.78, 35},
            resolution = 0.022,
        },
        ["Kaira-1"] = {
            type = OPTIC_SENSOR_TV,
            scan_volume = 
            {
                azimuth = {-35.0, 35.0},
                elevation = {-130.0, 5.0},
            },
            view_volume_max = {
                azimuth_sector = 7.0,
                elevation_sector = 7.0
            },
            magnifications = {10, 20},
            resolution = 0.028,
            laserRanger = true,
        },
        ["Mi-28N TV"] = {
            type = OPTIC_SENSOR_TV,
            scan_volume = 
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0},
            },
            view_volume_max = {
                azimuth_sector = 2.5,
                elevation_sector = 2.5
            },
            magnifications = {25, 100},
            resolution = 0.07,
            laserRanger = true,
        },
        ["Mi-28N FLIR"] = {
            type = OPTIC_SENSOR_IR,
            scan_volume = 
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0},
            },
            view_volume_max = {
                azimuth_sector = 50.0,
                elevation_sector = 50.0
            },
            magnifications = {1.5, 5.0, 60.0},
            resolution = 0.08,
            laserRanger = true,
        },
        ["Ka-52 TV"] = {
            type = OPTIC_SENSOR_TV,
            scan_volume = 
            {
                azimuth = {-110.0, 110.0},
                elevation = {-60.0, 30.0},
            },
            view_volume_max = {
                azimuth_sector = 2.5,
                elevation_sector = 2.5
            },
            magnifications = {25, 100},
            resolution = 0.07,
            laserRanger = true,
        },
        ["Ka-52 FLIR"] = {
            type = OPTIC_SENSOR_IR,
            scan_volume = 
            {
                azimuth = {-110.0, 110.0},
                elevation = {-60.0, 30.0},
            },
            view_volume_max = {
                azimuth_sector = 50.0,
                elevation_sector = 50.0
            },
            magnifications = {1.5, 5.0, 60.0},
            resolution = 0.06,
            laserRanger = true,
        },
        ["Su-34 FLIR"] = {
            type = OPTIC_SENSOR_IR,
            scan_volume = 
            {
                azimuth = {-35.0, 35.0},
                elevation = {-60.0, 30.0},
            },
            view_volume_max = {
                azimuth_sector = 50.0,
                elevation_sector = 50.0
            },
            magnifications = {1.5, 5.0, 60.0},
            resolution = 0.06,
            laserRanger = true,
        },
        ["IRADS"] = {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-140.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 50.0,
                elevation_sector = 50.0
            },
            magnifications = {1.4, 10, 80.0},
            resolution = 0.07,
            laserRanger = true,
        },
        ["Sniper XR FLIR"] = {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-150.0, 150.0},
                elevation = {-155.0, 35.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 4.0,
                elevation_sector = 4.0
            },
            magnifications = {17.5, 70.0},
            resolution = 0.07, 
            laserRanger = true,
        },
        ["Sniper XR CCD TV"] = {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-150.0, 150.0},
                elevation = {-155.0, 35.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 4.0,
                elevation_sector = 4.0
            },
            magnifications = {17.5, 70.0},
            resolution = 0.1,
        },
        ["Litening AN/AAQ-28 FLIR"] = {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-150.0, 150.0},
                elevation = {-150.0, 45.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 18.4,
                elevation_sector = 24.1
            },
            magnifications = {3, 25, 90},
            resolution = 0.07, 
            laserRanger = true,
        },
        ["Litening AN/AAQ-28 CCD TV"] = {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-150.0, 150.0},
                elevation = {-150.0, 45.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 3.5,
                elevation_sector = 3.5
            },
            magnifications = {20.0, 100.0, 280.0},
            resolution = 0.085,
        },
        ["LANTIRN AAQ-14 FLIR"] = {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-150.0, 150.0},
                elevation = {-150.0, 5.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 6.0,
                elevation_sector = 6.0
            },
            magnifications = {11.7, 41.0},
            resolution = 0.09,
        },
        ["AN/AAS-38 FLIR/LDT"] = {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-35.0, 35.0},
                elevation = {-150.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 12.0,
                elevation_sector = 12.0
            },
            magnifications = {5.8, 23.3},
            resolution = 0.05,
            laserRanger = true,
        },
        ["TADS DTV"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 4.0,
                elevation_sector = 4.0
            },
            magnifications = {17.5, 127},
            resolution = 0.1,
            laserRanger = true,
        },
        ["TADS DVO"] =
        {
            type = OPTIC_SENSOR_LLTV,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 18.0,
                elevation_sector = 18.0
            },
            lightness_limit = 0.027,
            magnifications = {4, 16},
            resolution = 0.09,
        },
        ["TADS FLIR"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 50.0,
                elevation_sector = 50.0
            },
            magnifications = {1.4, 7, 22.5, 43.75},
            resolution = 0.07,
        },
        ["NTS"] = --AH-1W Super Cobra Night Targeting System
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 50.0,
                elevation_sector = 50.0
            },
            magnifications = {1.4, 7, 22.5, 43.75},
            resolution = 0.07,
            laserRanger = true,
        },
        ["TVS"] = --OH-58 Kiowa TeleVision System
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 4.0,
                elevation_sector = 4.0
            },
            magnifications = {17.5, 127},
            resolution = 0.1,
            laserRanger = true,
        },
        ["TIS"] = --OH-58 Kiowa Thermal Imaging System
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 50.0,
                elevation_sector = 50.0
            },
            magnifications = {1.4, 7, 22.5, 43.75},
            resolution = 0.07,
        },
        ["Harrier GR_5 FLIR"] = {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-140.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 10.0,
                elevation_sector = 10.0
            },
            magnifications = {7.0, 15.0, 45.0},
            resolution = 0.06,
            laserRanger = true,
        },
        ["Tornado GR_4 FLIR"] = {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-140.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 10.0,
                elevation_sector = 10.0
            },
            magnifications = {7.0, 15.0, 45.0},
            resolution = 0.07,
            laserRanger = true,
        },
        ["RQ-1 Predator CAM"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 4.0,
                elevation_sector = 4.0
            },
            magnifications = {17.5, 127},
            resolution = 0.1,
            laserRanger = true,
        },
        ["RQ-1 Predator FLIR"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 50.0,
                elevation_sector = 50.0
            },
            magnifications = {1.4, 7, 22.5, 43.75},
            resolution = 0.07,
        },
        ["generic tank nightsight"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-10.0, 60.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 50.0,
                elevation_sector = 50.0,
            },
            magnifications = {10,},
            resolution = 0.1,
            laserRanger = true,
        },
        ["generic tank daysight"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-10.0, 40.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 16.0,
                elevation_sector = 16.0,
            },
            magnifications = {4,},
            resolution = 1.0,
        },
        ["long-range naval optics"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 4.0,
                elevation_sector = 4.0
            },
            magnifications = {17.5, 127},
            resolution = 0.1,
        },
        ["long-range naval LLTV"] =
        {
            type = OPTIC_SENSOR_LLTV,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 18.0,
                elevation_sector = 18.0
            },
            lightness_limit = 0.027,
            magnifications = {4, 16},
            resolution = 0.08,
        },
        ["long-range naval FLIR"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-120.0, 120.0},
                elevation = {-60.0, 30.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 50.0,
                elevation_sector = 50.0
            },
            magnifications = {1.4, 7, 22.5, 43.75},
            resolution = 0.02,
        },
        --["human nightsight"] =
        --{
            -- type = OPTIC_SENSOR_IR,
            -- scan_volume =
            -- {
                -- azimuth = {-180.0, 180.0},
                -- elevation = {-10.0, 90.0},
            -- },
            -- view_volume_max = 
            -- {
                -- azimuth_sector = 50.0,
                -- elevation_sector = 50.0,
            -- },
            -- magnifications = {1,},
            -- resolution = 0.03,
        -- },
        -- ["human daysight"] =
        -- {
            -- type = OPTIC_SENSOR_TV,
            -- scan_volume =
            -- {
                -- azimuth = {-180.0, 180.0},
                -- elevation = {-10.0, 90.0},
            -- },
            -- view_volume_max = 
            -- {
                -- azimuth_sector = 50.0,
                -- elevation_sector = 50.0,
            -- },
            -- magnifications = {1,},
			-- resolution = 1.0,
        -- },
        ["1P22"] = -- панорамный МСТА 
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 20.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 30.0,
                elevation_sector = 25.0,
            },
            magnifications = {3.7,},
            resolution = 0.3,
        },
        ["1P23"] = -- прямой прицел МСТА 
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-4.0, 55.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 10.0,
                elevation_sector = 10.0,
            },
            magnifications = {5.5,},
            resolution = 0.3,
        },
        ["PG2"] = -- панорамный прицел Акация, Гвоздика
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-10.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 10.0,
                elevation_sector = 10.0,
            },
            magnifications = {3.7,},
            resolution = 0.3,
        },
        ["PG2_direct"] = -- прямой прицел Акация, Гвоздика
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-6.0, 70.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 11.0,
                elevation_sector = 11.0,
            },
            magnifications = {5.5,},
            resolution = 0.3,
        },
        ["MP7"] = -- САУ Paladin Panoramic Sight
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-6.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 10.0,
                elevation_sector = 10.0,
            },
            magnifications = {4,},
            resolution = 0.3,
        },
        ["TNPP220"] = -- БМД-1
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-6.0, 15.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 10.0,
                elevation_sector = 10.0,
            },
            magnifications = {1.5},
            resolution = 0.3,
        },
		["TPKU-2B"] = 
		{
			type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 25.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 7.5,
                elevation_sector = 7.5,
            },
            magnifications = {5.0,},
            resolution = 0.3,
		},
		["TKN-1S"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 25.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 12.0,
                elevation_sector = 12.0,
            },
            magnifications = {4.2,},
            resolution = 0.01,
        },
        -- комбинированный (дневной и подсветочный ночной) прибор наблюдения командира БМП-1, БМП-2
        ["TKN-3B day"] = 
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-135.0, 135.0}, -- методичка БМП-1 ТО и ИЭ
                elevation = {-5.0, 25.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 10.0,
                elevation_sector = 30.0,
            },
            magnifications = {5.0,},
            resolution = 0.5,
        },
        ["TKN-3B night"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 25.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 7.0,
                elevation_sector = 15.0,
            },
            magnifications = {4.2,},
            resolution = 0.07,
        },
		-- T-90
		["TKN-4S day"] = 
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-135.0, 135.0}, -- методичка БМП-1 ТО и ИЭ
                elevation = {-5.0, 25.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 7.0,
                elevation_sector = 7.0,
            },
            magnifications = {8.0,},
            resolution = 0.3,
        },
        ["TKN-4S night"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 25.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 9.0,
                elevation_sector = 9.0,
            },
            magnifications = {7.0},
            resolution = 0.1,
        },
        -- прицел BMP1
        ["1PN22M1 day"] = 
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},-- исходя из углов наведения орудия
                elevation = {-4.0, 15.0}, -- исходя из углов наведения орудия
            },
            view_volume_max = 
            {
                azimuth_sector = 15.0,
                elevation_sector = 15.0,
            },
            magnifications = {6,},
            resolution = 0.3,
        },
        ["1PN22M1 night"] =
        {
            type = OPTIC_SENSOR_LLTV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0}, -- исходя из углов наведения орудия
                elevation = {-4.0, 15.0}, -- исходя из углов наведения орудия
            },
            view_volume_max = 
            {
                azimuth_sector = 6.0,
                elevation_sector = 6.0,
            },
            magnifications = {6.7,},
            resolution = 0.04
        },
        -- комбинированный (дневной, активно-пассивный ночной) прицел оператора-наводчика БМП-2
        ["BPK-2-42 day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-3.0, 70.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 10.0,
                elevation_sector = 10.0,
            },
            magnifications = {6,},
            resolution = 0.3,
        },
        ["BPK-2-42 night"] =
        {
            type = OPTIC_SENSOR_LLTV, -- вообще это IR, но для его работы нужен источник IR, пока так
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-3.0, 70.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 6.66,
                elevation_sector = 6.66,
            },
            magnifications = {5.5,},
            resolution = 0.04,
        },
        -- прицел командира перископический дневной BMP-2
        ["1PZ-3"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 74.0}, -- исходя из углов наведения орудия
            },
            view_volume_max = 
            {
                azimuth_sector = 14.0,
                elevation_sector = 14.0,
            },
            magnifications = {1.2, 4,},
            resolution = 0.3,
        },
        -- прицел-прибор наведения 1К13-2 наводчика-оператора комбинированный (БМП-3)
        ["1K13-2 day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0}, -- исходя из углов наведения орудия
                elevation = {-2.0, 60.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 10.0,
                elevation_sector = 10.0,
            },
            magnifications = {8,},
            resolution = 0.3,
        },
        ["1K13-2 night"] =
        {
            type = OPTIC_SENSOR_LLTV, -- вообще это IR, но для его работы нужен источник IR, пока так
            scan_volume =
            {
                azimuth = {-180.0, 180.0}, -- исходя из углов наведения орудия
                elevation = {-2.0, 60.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 6.66,
                elevation_sector = 6.66,
            },
            magnifications = {5.5,},
            resolution = 0.04,
        },
        -- дополнительный прицел наводчика-оператора ППБ-2 (БМП-3)
        ["PPB-2"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0}, -- исходя из углов наведения орудия
                elevation = {-2.0, 60.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 25.0,
                elevation_sector = 25.0,
            },
            magnifications = {2.6,},
            resolution = 0.8,
        },
        -- комбинированный прибор ННДВ (Боман)
        ["NNDV day"] = 
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0}, -- исходя из углов наведения орудия
                elevation = {-8.0, 10.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 7.0,
                elevation_sector = 7.0,
            },
            magnifications = {2.7,7,},
            resolution = 0.3,
        },
        ["NNDV night"] =
        {
            type = OPTIC_SENSOR_IR, -- вообще это IR, но для его работы нужен источник IR, пока так
            scan_volume =
            {
                azimuth = {-180.0, 180.0}, -- исходя из углов наведения орудия
                elevation = {-8.0, 10.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 4.5,
                elevation_sector = 4.5,
            },
            magnifications = {6.2,},
            resolution = 0.04,
        },
        -- стереоскопический дальномер ДС-1 (Боман)
        ["DS-1"] = 
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0}, -- исходя из углов наведения орудия
                elevation = {-18.0, 18.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 5.0,
                elevation_sector = 5.0,
            },
            magnifications = {12,},
            resolution = 0.3,
        },
        -- панорамический визир ВОП-7А
        ["VOP-7A"] = 
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0}, -- исходя из углов наведения орудия
                elevation = {-18.0, 18.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 10.0,
                elevation_sector = 10.0,
            },
            magnifications = {6,},
            resolution = 0.3,
        },
        -- ITSS (include HIRE III)
        ["ITSS_HIRE_III day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0}, -- исходя из углов наведения орудия
                elevation = {-8.0, 10.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 3.6,
                elevation_sector = 2.0,
            },
            magnifications = {3,10},
            resolution = 0.3,
        },
        ["ITSS_HIRE_III night"] =
        {
            type = OPTIC_SENSOR_LLTV, -- вообще это IR, но для его работы нужен источник IR, пока так
            scan_volume =
            {
                azimuth = {-180.0, 180.0}, -- исходя из углов наведения орудия
                elevation = {-8.0, 10.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 3.6,
                elevation_sector = 2.0,
            },
            magnifications = {3,10},
            resolution = 0.06,
        },
        -- AAV
        ["AAV day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0}, -- исходя из углов наведения орудия
                elevation = {-15.0, 28.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 40.0,
                elevation_sector = 20.0,
            },
            magnifications = {1.0,3.0,},
            resolution = 0.8,
        },
        -- M2 Bradley
        ["M2 sight day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0}, -- исходя из углов наведения орудия
                elevation = {-5.0, 28.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 5.0,
                elevation_sector = 5.0,
            },
            magnifications = {4,12,},
            resolution = 0.3,
        },
        ["M2 sight night"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0}, -- исходя из углов наведения орудия
                elevation = {-5.0, 60.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 17.0,
                elevation_sector = 17.0,
            },
            magnifications = {4,12},
            resolution = 0.06,
        },
        -- TOW sight HMMWV M1045
        ["TAS4 TOW day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-35.0, 35.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 6.0,
                elevation_sector = 6.0,
            },
            magnifications = {4,12,},
            resolution = 0.3,
        },
        ["TAS4 TOW night"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-35.0, 35.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 6.0,
                elevation_sector = 6.0,
            },
            magnifications = {4,12},
            resolution = 0.06,
        },
        -- Marder
        ["PERI-Z11 day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0}, -- исходя из углов наведения орудия
                elevation = {-35.0, 35.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 16.0,
                elevation_sector = 16.0,
            },
            magnifications = {2.0,6.0,},
            resolution = 0.3,
        },
        -- Challenger 2
        ["Challenger2 sight day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 6.0,
                elevation_sector = 6.0,
            },
            magnifications = {3,10,},
            resolution = 0.3,
        },
        -- gun sight for Challenger2, 
        ["TOGS2 night"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 4.0,
                elevation_sector = 4.0,
            },
            magnifications = {4,11.5},
            resolution = 0.16,
        },
        -- Challenger2, 
        ["VS580-10 day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 5.0,
                elevation_sector = 5.0,
            },
            magnifications = {3.2,10.5,},
            resolution = 0.3,
        },
        -- Leclerc HL-60
        ["HL-60 day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 6.0,
                elevation_sector = 6.0,
            },
            magnifications = {3.0,10.0,},
            resolution = 0.3,
        },
        ["HL-60 night"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 4.0,
                elevation_sector = 4.0,
            },
            magnifications = {3.0,10.0},
            resolution = 0.06,
        },
        -- Leclerc HL-70
        ["HL-70 day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 6.6,
                elevation_sector = 6.6,
            },
            magnifications = {2.5,10.0,},
            resolution = 0.3,
        },
        ["HL-70 night"] =
        {
            type = OPTIC_SENSOR_LLTV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 6.0,
                elevation_sector = 6.0,
            },
            magnifications = {2.5, 10.0},
            resolution = 0.2,
        },
        -- Leopard 2A5
        ["EMES 15 day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 5.5,
                elevation_sector = 5.5,
            },
            magnifications = {4.0, 12.0,},
            resolution = 0.25,
        },
        ["EMES 15 night"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 5.0,
                elevation_sector = 5.0,
            },
            magnifications = {4.0, 12.0,},
            resolution = 0.16,
        },
        ["PERI-R17A2 day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 6.3,
                elevation_sector = 6.3,
            },
            magnifications = {2.0, 8.0},
            resolution = 0.3,
        },
        ["PERI-R17A2 night"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 6.3,
                elevation_sector = 6.3,
            },
            magnifications = {2.0, 8.0},
            resolution = 0.06,
        },
        ["CITV day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 6.6,
                elevation_sector = 6.6,
            },
            magnifications = {3.0, 10.0},
            resolution = 0.3,
        },
        ["CITV night"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 5.0,
                elevation_sector = 5.0,
            },
            magnifications = {3.0, 13.0},
            resolution = 0.15,
        },
		["MGS sight day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 6.6,
                elevation_sector = 6.6,
            },
            magnifications = {3.0, 10.0},
            resolution = 0.3,
        },
		["MGS sight night"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 6.0,
                elevation_sector = 6.0,
            },
            magnifications = {3.0, 10.0},
            resolution = 0.2,
        },
        -- T-55
		["TPKU-2B"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 7.5,
                elevation_sector = 7.5,
            },
            magnifications = {5.0},
            resolution = 0.45,
        },
        ["TSH-2-22 day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 9.0,
                elevation_sector = 9.0,
            },
            magnifications = {3.5, 7.0},
            resolution = 0.3,
        },
        -- T-55 TPN1
        ["TPN1"] =
        {
            type = OPTIC_SENSOR_IR, -- need IR spotlight (not implemented)
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0}, 
            },
            view_volume_max = 
            {
                azimuth_sector = 15.0,
                elevation_sector = 15.0,
            },
            magnifications = {1.0, 3.0},
            resolution = 0.055,
        },
        -- T-72 TPN3-49 = BPK-2-42 night
        ["1G42"] = 
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 8.4,
                elevation_sector = 8.4,
            },
            magnifications = {3.9, 9.0},
            resolution = 0.3,
        },
        -- Tunguska optic sight
        ["Tunguska optic sight"] = 
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 80.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 8.0,
                elevation_sector = 8.0,
            },
            magnifications = {8.0},
            resolution = 0.3,
        },
        ["generic SAM search visir"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-3.0, 70.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 15.0,
                elevation_sector = 15.0,
            },
            magnifications = {2.5},
            resolution = 1.0,
        },
        ["generic SAM LL search visir"] = 
        {
            type = OPTIC_SENSOR_LLTV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-3.0, 90.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 15.0,
                elevation_sector = 15.0,
            },
            magnifications = {1.0},
            resolution = 1.0,
			lightness_limit = 0.1
        },
        ["generic SAM IR search visir"] = 
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-3.0, 70.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 15.0,
                elevation_sector = 15.0,
            },
            magnifications = {2.5},
            resolution = 0.06,
        },
        -- optic search visir "Karat" 9SH38 for OSA, 
        ["Karat visir"] = 
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-3.0, 27.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 3.5,
                elevation_sector = 2.5,
            },
            magnifications = {4.0, 10.0,},
            resolution = 0.3,
        },
        -- M6 Linebacker
        ["Linebacker day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 60.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 9.0,
                elevation_sector = 9.0,
            },
            magnifications = {4.0, 10.0,},
            resolution = 0.3,
        },
        ["Linebacker IR"] =
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 60.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 9.0,
                elevation_sector = 9.0,
            },
            magnifications = {4.0, 10.0,},
            resolution = 0.06,
        },
        ["Shilka visir"] = 
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 70.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 1.0,
                elevation_sector = 1.0,
            },
            magnifications = {100.0,},
            resolution = 0.3,
        },
        -- Leopard 1A3 panoramic sight
        ["TRP-2A day"] = 
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 20.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 12.0,
                elevation_sector = 12.0,
            },
            magnifications = {6.0, 20.0},
            resolution = 0.2,
        },
        ["TRP-2A night"] = 
        {
            type = OPTIC_SENSOR_LLTV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 20.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 14.0,
                elevation_sector = 14.0,
            },
            magnifications = {6.0, 20.0},
            resolution = 0.03,
        },
		-- MCV-80 Warrior
		["Raven day"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 50.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 9.0,
                elevation_sector = 9.0,
            },
            magnifications = {1.0, 8.0},
            resolution = 0.6,
        },
		["Raven night"] = 
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 50.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 9.0,
                elevation_sector = 9.0,
            },
            magnifications = {8.0},
            resolution = 0.2,
        },
        ["AN/VSG-2 day"] = 
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 20.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 10.0,
                elevation_sector = 21.0,
            },
            magnifications = {1.0, 8.0,},
            resolution = 0.3,
        },
        ["AN/VSG-2 night"] = 
        {
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-5.0, 20.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 7.74,
                elevation_sector = 15.0,
            },
            magnifications = {1.0, 8.0,},
            resolution = 0.075,
        },
        ["M151 Protector RWS day"]  = { -- Remote Weapon System (M1126 Stryker)
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-20.0, 60.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 45.0,
                elevation_sector = 45.0,
            },
            magnifications = {1.0, 5.0, 10.0, 20.0, 30.0},
            resolution = 0.1,
        },
        ["M151 Protector RWS IR"]  = { -- Remote Weapon System (M1126 Stryker)
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-20.0, 60.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 25.0,
                elevation_sector = 25.0,
            },
            magnifications = {1.0, 5.0, 10.0},
            resolution = 0.1,
        },
		["AGM-65D"]  = { --AGM-65D/G seeker
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-42.0, 42.0},
                elevation = {-54.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 3.0,
                elevation_sector = 3.0,
            },
            magnifications = {1.0, 2},
            resolution = 0.028,
		},
		["AGM_65D"]  = { --AGM-65D/G seeker
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-42.0, 42.0},
                elevation = {-54.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 3.0,
                elevation_sector = 3.0,
            },
            magnifications = {1.0, 2},
            resolution = 0.82 -- 0.028,
		},
		["AGM_65G"]  = { --AGM-65D/G seeker
            type = OPTIC_SENSOR_IR,
            scan_volume =
            {
                azimuth = {-42.0, 42.0},
                elevation = {-54.0, 30.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 3.0,
                elevation_sector = 3.0,
            },
            magnifications = {1.0, 2},
            resolution = 0.82 -- 0.028,
		},
		["AGM-65K"]  = { --AGM-65H/K seeker
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-25.0, 25.0},
                elevation = {-25.0, 25.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 2.5,
                elevation_sector = 2.5,
            },
            magnifications = {1.0, 1.67},
            resolution = 0.028,
		},
		["AGM_65H"]  = { --AGM-65H/K seeker
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-25.0, 25.0},
                elevation = {-25.0, 25.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 2.5,
                elevation_sector = 2.5,
            },
            magnifications = {1.0, 1.67},
            resolution = 0.82 -- 0.028,
		},
		["AGM_65K"]  = { --AGM-65H/K seeker
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-25.0, 25.0},
                elevation = {-25.0, 25.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 2.5,
                elevation_sector = 2.5,
            },
            magnifications = {1.0, 1.67},
            resolution = 0.82 -- 0.028,
		},
		["JTAC_sensor"] = 
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-10.0, 80.0},
            },
            view_volume_max = 
            {
                azimuth_sector = 6.0,
                elevation_sector = 6.0,
            },
            magnifications = {7.0},
            resolution = 0.8,
			laserRanger = true
        },
		----   TEMP
		["long-range air defence optics"] =
        {
            type = OPTIC_SENSOR_TV,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-30.0, 90.0}
            },
            view_volume_max = 
            {
                azimuth_sector = 4.0,
                elevation_sector = 4.0
            },
            magnifications = {17.5, 127},
            resolution = 0.1,
        },
		----   TEMP
    },
    [SENSOR_RADAR] =
    {
        ["Orion-A"] = {
            vehicles_detection = true,
            type = RADAR_SS,
            scan_volume =
            {
                azimuth = {-40.0, 40.0},
                elevation = {-30.0, 10.0}
            },          
            max_measuring_distance = 150000.0,
            scan_period = 5.0,
            RCS = 100.0,
            RBM_detection_distance = 180000.0
        },
        ["PNA-D Leninets"] = {

            type = RADAR_SS,
            scan_volume =
            {
                azimuth = {-150.0, 150.0},
                elevation = {-20.0, 10.0}
            },
            max_measuring_distance = 300000.0,
            scan_period = 10.0,
			RCS = 100.0,
            RBM_detection_distance = 210000.0
        },
        ["Rubidy MM"] = {
            type = RADAR_SS,
            scan_volume =
            {
                azimuth = {-17.5, 17.5},
                elevation = {-20.0, 10.0}
            },
            max_measuring_distance = 400000.0,
            scan_period = 7.0,
			RCS = 100.0,
            RBM_detection_distance = 250000.0          
        },
        ["Berkut-95"] = {
            type = RADAR_SS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-20.0, 10.0}
            },
            max_measuring_distance = 450000.0,
            scan_period = 5.0,
			RCS = 100.0,
            RBM_detection_distance = 300000.0          
        },
        ["Poisk"] = {
            type = RADAR_SS,
            scan_volume =
            {
                azimuth = {-150.0, 150.0},
                elevation = {-30.0, 10.0}
            },
            max_measuring_distance = 400000.0,
            scan_period = 5.0,
			RCS = 100.0,
            RBM_detection_distance = 300000.0          
        },
        ["Shmel"] = {
            type = RADAR_MULTIROLE,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-30.0, 30.0}
            },
            max_measuring_distance = 400000.0,
            scan_period = 10.0,
            air_search = {
				RCS = 6,
                detection_distance =
                {
                    [HEMISPHERE_UPPER] =
                    {
                        [ASPECT_HEAD_ON] = 320000.0,
                        [ASPECT_TAIL_ON] = 320000.0
                    },
                    [HEMISPHERE_LOWER] =
                    {
                        [ASPECT_HEAD_ON] = 320000.0,
                        [ASPECT_TAIL_ON] = 320000.0
                    }
                },
                velocity_limits =
                {
                    radial_velocity_min = 100.0 / 3.6,
                    relative_radial_velocity_min = 100.0 / 3.6,
                },
            },
            surface_search = {          
                vehicles_detection = true,
				RCS = 100,
				RBM_detection_distance = 250000.0,
				GMTI_detection_distance = 300000.0,                
            }           
        },
        ["N-005"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-56.0, 56.0},
                elevation = {-15.0, 10.0}
            },
            max_measuring_distance = 150000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 56000.0,
                    [ASPECT_TAIL_ON] = 36000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 56000.0,
                    [ASPECT_TAIL_ON] = 22000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 250.0 / 3.6,
                relative_radial_velocity_min = 250.0 / 3.6,
            },
            scan_period = 3.5,
        },
        ["N-008"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-30.0, 30.0},
                elevation = {-30.0, 30.0}
            },
            centered_scan_volume =
            {
                azimuth_sector = 30.0,
                elevation_sector = 30.0
            },
            max_measuring_distance = 150000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 50000.0,
                    [ASPECT_TAIL_ON] = 34000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 50000.0,
                    [ASPECT_TAIL_ON] = 18000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 250.0 / 3.6,
                relative_radial_velocity_min = 250.0 / 3.6,
            },
            scan_period = 3.5,
        },
        ["N-019"] =
        {
			type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-30.0, 30.0}
            },
            centered_scan_volume =
            {
                azimuth_sector = 30.0,
                elevation_sector = 30.0
            },
            max_measuring_distance = 200000.0,
            RCS = 3.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = (50 + 70) * 1E3 / 2,
                    [ASPECT_TAIL_ON] = (25 + 35) * 1E3 / 2
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = (50 + 70) * 1E3 / 2,
                    [ASPECT_TAIL_ON] = (25 + 35) * 1E3 / 2
                }
            },
            lock_on_distance_coeff = (40 / 50 + 60 / 70 + 20 / 25 + 35 / 35) * 4,
            velocity_limits =
            {
                radial_velocity_min = 150.0 / 3.6,
                relative_radial_velocity_min = 150.0 / 3.6,
            },
            scan_period = 5,
        },
        ["N-019M"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-40.0, 40.0}
            },
            centered_scan_volume =
            {
                azimuth_sector = 30.0,
                elevation_sector = 30.0
            },
            max_measuring_distance = 200000.0,
            RCS = 3.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = (50 + 70) * 1E3 / 2,
                    [ASPECT_TAIL_ON] = (25 + 35) * 1E3 / 2
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = (50 + 70) * 1E3 / 2,
                    [ASPECT_TAIL_ON] = (25 + 35) * 1E3 / 2
                }
            },
            lock_on_distance_coeff = (40 / 50 + 60 / 70 + 20 / 25 + 35 / 35) / 4,
            velocity_limits =
            {
                radial_velocity_min = 150.0 / 3.6,
                relative_radial_velocity_min = 150.0 / 3.6,
            },
            scan_period = 5,
        },      
        ["N-001"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-30.0, 30.0}
            },
            centered_scan_volume =
            {
                azimuth_sector = 30.0,
                elevation_sector = 30.0
            },
            max_measuring_distance = 200000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 68400.0,
                    [ASPECT_TAIL_ON] = 38000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 68400.0,
                    [ASPECT_TAIL_ON] = 26600.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 210.0 / 3.6,
                relative_radial_velocity_min = 150.0 / 3.6,
            },
            scan_period = 5,
        },
        ["BRLS-8B"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-70.0, 70.0},
                elevation = {-70.0, 70.0}
            },
            centered_scan_volume =
            {
                azimuth_sector = 70.0,
                elevation_sector = 70.0
            },
            max_measuring_distance = 200000.0,
            RCS = 19.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 200000.0,
                    [ASPECT_TAIL_ON] = 80000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 200000.0,
                    [ASPECT_TAIL_ON] = 80000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            multiple_targets_tracking = true,
			TWS_max_targets = 4,
            velocity_limits =
            {
                radial_velocity_min = 200.0 / 3.6,
                relative_radial_velocity_min = 150.0 / 3.6,
            },
            scan_period = 5.0,
        },
        ["N-011M"] =
        {
            type = RADAR_MULTIROLE,
            scan_volume =
            {
                azimuth = {-70.0, 70.0},
                elevation = {-50.0, 50.0}
            },
            max_measuring_distance = 350000.0,
            scan_period = 5.0,
            
            air_search = {
                centered_scan_volume =
                {
                    azimuth_sector = 70.0,
                    elevation_sector = 40.0
                },
                detection_distance =
                {
                    [HEMISPHERE_UPPER] =
                    {
                        [ASPECT_HEAD_ON] = 120000.0,
                        [ASPECT_TAIL_ON] = 53000.0
                    },
                    [HEMISPHERE_LOWER] =
                    {
                        [ASPECT_HEAD_ON] = 120000.0,
                        [ASPECT_TAIL_ON] = 40000.0
                    }
                },
                velocity_limits =
                {
                    radial_velocity_min = 100.0 / 3.6,
                    relative_radial_velocity_min = 100.0 / 3.6,
                },
                lock_on_distance_coeff = 0.7,
				TWS_max_targets = 4,
                multiple_targets_tracking = true,
            },          
            surface_search = {
                vehicles_detection = true,
                RCS = 100,
				RBM_detection_distance = 200000.0,
				GMTI_detection_distance = 250000.0,
                HRM_detection_distance = 50000.0,
            }
        },
        ["Kopyo"] =
        {
            type = RADAR_MULTIROLE,
            scan_volume =
            {
                azimuth = {-40.0, 40.0},
                elevation = {-30.0, 30.0}
            },
            max_measuring_distance = 150000.0,
            scan_period = 3.0,
            
            air_search = {
                centered_scan_volume =
                {
                    azimuth_sector = 40.0,
                    elevation_sector = 40.0,
                },
                detection_distance =
                {
                    [HEMISPHERE_UPPER] =
                    {
                        [ASPECT_HEAD_ON] = 57000.0,
                        [ASPECT_TAIL_ON] = 30000.0
                    },
                    [HEMISPHERE_LOWER] =
                    {
                        [ASPECT_HEAD_ON] = 57000.0,
                        [ASPECT_TAIL_ON] = 20000.0
                    }
                },
                lock_on_distance_coeff = 0.85,
                velocity_limits =
                {
                    radial_velocity_min = 200.0 / 3.6,
                    relative_radial_velocity_min = 150.0 / 3.6,
                },
            },
            surface_search = {
                RCS = 100.0,
                RBM_detection_distance = 150000.0
            }           
        },
        ["AN/APG-71"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-30.0, 30.0}
            },
            centered_scan_volume =
            {
                azimuth_sector = 30.0,
                elevation_sector = 30.0
            },
            max_measuring_distance = 740000.0,
            RCS = 5.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 167000.0,
                    [ASPECT_TAIL_ON] = 167000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 167000.0,
                    [ASPECT_TAIL_ON] = 0.0
                }
            },
            lock_on_distance_coeff = 0.54,
            multiple_targets_tracking = true,
			TWS_max_targets = 6,
            velocity_limits =
            {
                radial_velocity_min = 100.0 / 3.6,
                relative_radial_velocity_min = 100.0 / 3.6,
            },
            scan_period = 5.0,
        },
        ["AN/APG-63"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-30.0, 30.0}
            },
            centered_scan_volume =
            {
                azimuth_sector = 30.0,
                elevation_sector = 30.0
            },
            max_measuring_distance = 265000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 88400.0,
                    [ASPECT_TAIL_ON] = 44000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 88400.0,
                    [ASPECT_TAIL_ON] = 44200.0
                }
            },			
            lock_on_distance_coeff = 0.85,
			TWS_max_targets = 4,
            velocity_limits =
            {
                radial_velocity_min = 100.0 / 3.6,
                relative_radial_velocity_min = 100.0 / 3.6,
            },
            scan_period = 5.0,

        },
        ["AN/APG-68"] =
        {
            type = RADAR_MULTIROLE,         
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-30.0, 30.0}
            },
            max_measuring_distance = 265000.0,
            scan_period = 5.0,
            
            air_search = {          
                centered_scan_volume =
                {
                    azimuth_sector = 30.0,
                    elevation_sector = 30.0
                },
                detection_distance =
                {
                    [HEMISPHERE_UPPER] =
                    {
                        [ASPECT_HEAD_ON] = 68400.0,
                        [ASPECT_TAIL_ON] = 54000.0
                    },
                    [HEMISPHERE_LOWER] =
                    {
                        [ASPECT_HEAD_ON] = 68400.0,
                        [ASPECT_TAIL_ON] = 32000.0
                    }
                },
                lock_on_distance_coeff = 0.85,
				TWS_max_targets = 4,
                velocity_limits =
                {
                    radial_velocity_min = 100.0 / 3.6,
                    relative_radial_velocity_min = 100.0 / 3.6,
                },
            },
            surface_search = {
                vehicles_detection = true,
				RCS = 100,
                RBM_detection_distance = 150000.0,				
				GMTI_detection_distance = 180000.0,
				HRM_detection_distance = 20000.0                
            }           
        },
        ["AN/APG-73"] =
        {
            type = RADAR_MULTIROLE,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-30.0, 10.0}
            },
            max_measuring_distance = 265000.0,
            scan_period = 5.0,

            air_search = {          
                centered_scan_volume =
                {
                    azimuth_sector = 30.0,
                    elevation_sector = 30.0
                },          
                detection_distance =
                {
                    [HEMISPHERE_UPPER] =
                    {
                        [ASPECT_HEAD_ON] = 76000.0,
                        [ASPECT_TAIL_ON] = 46000.0
                    },
                    [HEMISPHERE_LOWER] =
                    {
                        [ASPECT_HEAD_ON] = 76000.0,
                        [ASPECT_TAIL_ON] = 35000.0
                    }
                },
                lock_on_distance_coeff = 0.85,
				TWS_max_targets = 4,
                velocity_limits =
                {
                    radial_velocity_min = 100.0 / 3.6,
                    relative_radial_velocity_min = 100.0 / 3.6,
                },
            },
            surface_search = {
                vehicles_detection = true,
				RCS = 100,
                RBM_detection_distance = 180000.0,
				GMTI_detection_distance = 220000.0,
                HRM_detection_distance = 20000.0
            }
        },
        ["RDY"] =
        {
            type = RADAR_MULTIROLE,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-30.0, 30.0}
            },
            max_measuring_distance = 200000.0,
            scan_period = 5.0,
            
            air_search = {
                centered_scan_volume =
                {
                    azimuth_sector = 30.0,
                    elevation_sector = 30.0
                },          
                detection_distance =
                {
                    [HEMISPHERE_UPPER] =
                    {
                        [ASPECT_HEAD_ON] = 80000.0,
                        [ASPECT_TAIL_ON] = 80000.0
                    },
                    [HEMISPHERE_LOWER] =
                    {
                        [ASPECT_HEAD_ON] = 80000.0,
                        [ASPECT_TAIL_ON] = 53000.0
                    }
                },
                lock_on_distance_coeff = 0.85,
				TWS_max_targets = 4,
                velocity_limits =
                {
                    radial_velocity_min = 100.0 / 3.6,
                    relative_radial_velocity_min = 100.0 / 3.6,
                },
            },
            surface_search = {
                vehicles_detection = true,
				RCS = 100,
                RBM_detection_distance = 15000.0,				
				GMTI_detection_distance = 185000.0,
				HRM_detection_distance = 22000.0
            }           
        },
        ["AN/APQ-120"] =
        {
            type = RADAR_MULTIROLE,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-10.0, 10.0}
            },
            max_measuring_distance = 150000.0,
            scan_period = 5.0,
            
            air_search = {
                centered_scan_volume =
                {
                    azimuth_sector = 30.0,
                    elevation_sector = 10.0
                },              
                detection_distance =
                {
                    [HEMISPHERE_UPPER] =
                    {
                        [ASPECT_HEAD_ON] = 42000.0,
                        [ASPECT_TAIL_ON] = 42000.0
                    },
                    [HEMISPHERE_LOWER] =
                    {
                        [ASPECT_HEAD_ON] = 0.0,
                        [ASPECT_TAIL_ON] = 0.0
                    }
                },
                lock_on_distance_coeff = 0.85,
            },
            surface_search = {
				RCS = 100,
                RBM_detection_distance = 50000.0
            }       
        },
        ["AN/APQ-153"] =
        {
			type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-45.0, 45.0},
                elevation = {-10.0, 10.0}
            },
            max_measuring_distance = 150000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 37000.0,
                    [ASPECT_TAIL_ON] = 37000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 37000.0,
                    [ASPECT_TAIL_ON] = 37000.0
                }
            },
            lock_on_distance_coeff = 0.5,
            scan_period = 3.0,
        },
        ["AN/APQ-159"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-45.0, 45.0},
                elevation = {-10.0, 10.0}
            },
            max_measuring_distance = 150000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 74000.0,
                    [ASPECT_TAIL_ON] = 74000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 74000.0,
                    [ASPECT_TAIL_ON] = 74000.0
                }
            },
            lock_on_distance_coeff = 0.25,
            scan_period = 3.0,
        },
        ["AN/APY-1"] =
        {
            type = RADAR_MULTIROLE,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 10.0}
            },
            max_measuring_distance = 500000.0,
            scan_period = 10.0,
            
            air_search = {
				RCS = 6,
                detection_distance =
                {
                    [HEMISPHERE_UPPER] =
                    {
                        [ASPECT_HEAD_ON] = 400000.0,
                        [ASPECT_TAIL_ON] = 400000.0
                    },
                    [HEMISPHERE_LOWER] =
                    {
                        [ASPECT_HEAD_ON] = 400000.0,
                        [ASPECT_TAIL_ON] = 400000.0
                    }
                },
            },
            surface_search ={
                vehicles_detection = true,
				RCS = 100,
                RBM_detection_distance = 300000.0,
				GMTI_detection_distance = 340000.0
            }           
        },
        ["AN/APS-138"] =
        {
            type = RADAR_MULTIROLE,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 10.0}
            },
            max_measuring_distance = 540000.0,
            scan_period = 10.0,
            air_search = {
				RCS = 6,
                detection_distance =
                {
                    [HEMISPHERE_UPPER] =
                    {
                        [ASPECT_HEAD_ON] = 330000.0,
                        [ASPECT_TAIL_ON] = 330000.0
                    },
                    [HEMISPHERE_LOWER] =
                    {
                        [ASPECT_HEAD_ON] = 330000.0,
                        [ASPECT_TAIL_ON] = 330000.0
                    }
                },          
            },
            surface_search = {
				RCS = 100,
                RBM_detection_distance = 280000.0
            }           
        },
        ["AN/APG-78"] = {
            type = RADAR_SS,
			vehicles_detection = true,
			RCS = 5,
			RBM_detection_distance = 10000.0,
			GMTI_detection_distance = 40000.0,
			HRM_detection_distance = 15000.0,
            scan_volume =
            {
                azimuth = {-45.0, 45.0},
                elevation = {-30.0, 5.0}
            },
            max_measuring_distance = 50000.0,
            scan_period = 7.0,
        },
        ["Tornado SS radar"] = {
            vehicles_detection = true,
            RCS = 100,
			RBM_detection_distance = 160000.0,
            HRM_detection_distance = 18000.0,
            type = RADAR_SS,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-30.0, 15.0}
            },
            max_measuring_distance = 250000.0,
            scan_period = 4.0
        },
        ["B-1B SS radar"] = {
            type = RADAR_SS,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-30.0, 15.0}
            },
			RCS = 100,
            max_measuring_distance = 2350000.0,
            RBM_detection_distance = 300000.0,
            scan_period = 5.0,
        },
        ["B-52H SS radar"] = {
            type = RADAR_SS,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-30.0, 15.0}
            },
			RCS = 100,
            max_measuring_distance = 400000.0,
            RBM_detection_distance = 300000.0,
            scan_period = 7.0,
        },
        ["AN/APS-137"] = {
            type = RADAR_SS,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-30.0, 15.0}
            },
			RCS = 100,
            max_measuring_distance = 450000.0,
            RBM_detection_distance = 280000.0,
            scan_period = 7.0,
        },
        ["AN/APS-142"] = {
            type = RADAR_SS,
            scan_volume =
            {
                azimuth = {-60.0, 60.0},
                elevation = {-30.0, 15.0}
            },
			RCS = 100,
            max_measuring_distance = 400000.0,
            RBM_detection_distance = 200000.0,
            scan_period = 7.0,
        },      
        ["RQ-1 Predator SAR"] =
        {
			type = RADAR_SS,
            vehicles_detection = true,
			RCS = 5,
			RBM_detection_distance = 40000.0,
			HRM_detection_distance = 28000.0,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-90.0, 20.0}
            },
            max_measuring_distance = 100000.0,
            scan_period = 5.0,
        },
        ["2S6 Tunguska"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 18000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 18000.0,
                    [ASPECT_TAIL_ON] = 18000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 18000.0,
                    [ASPECT_TAIL_ON] = 18000.0
                }
            },
			lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 10,
            },
			RCS = 2.0,
            scan_period = 1.0,
        },
        ["ZSU-23-4 Shilka"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 7500.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 7500.0,
                    [ASPECT_TAIL_ON] = 7500.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 7500.0,
                    [ASPECT_TAIL_ON] = 7500.0
                }
            },
			lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 0,
            },
            scan_period = 1.0,
        },
        ["Osa 9A33 ln"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 30000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 30000.0,
                    [ASPECT_TAIL_ON] = 30000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 30000.0,
                    [ASPECT_TAIL_ON] = 30000.0
                }
            },
			lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 10,
            },
            scan_period = 1.0,
        },
        ["Tor 9A331"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 25000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 25000.0,
                    [ASPECT_TAIL_ON] = 25000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 25000.0,
                    [ASPECT_TAIL_ON] = 25000.0
                }
            },
			lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 10,
            },
            scan_period = 1.0,
        },
        ["Gepard"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 15000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 15000.0,
                    [ASPECT_TAIL_ON] = 15000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 15000.0,
                    [ASPECT_TAIL_ON] = 15000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 10,
            },
            scan_period = 1.0,
        },
        ["Roland ADS"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 12000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 12000.0,
                    [ASPECT_TAIL_ON] = 12000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 12000.0,
                    [ASPECT_TAIL_ON] = 12000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 10,
            },
            scan_period = 1.0,
        },
        ["1L13 EWR"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 120000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 120000.0,
                    [ASPECT_TAIL_ON] = 120000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 120000.0,
                    [ASPECT_TAIL_ON] = 120000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 50,
            },
            scan_period = 1.0,
        },
        ["Kub 1S91 str"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 70000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 70000.0,
                    [ASPECT_TAIL_ON] = 70000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 70000.0,
                    [ASPECT_TAIL_ON] = 70000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 10.0,
            },
            scan_period = 1.0,
        },
        ["S-300PS 40B6M tr"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 260000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 160000.0,
                    [ASPECT_TAIL_ON] = 160000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 160000.0,
                    [ASPECT_TAIL_ON] = 160000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 10.0,
            },
            scan_period = 1.0,
        },
        ["S-300PS 40B6M tr navy"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 400000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 160000.0,
                    [ASPECT_TAIL_ON] = 160000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 160000.0,
                    [ASPECT_TAIL_ON] = 160000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 10.0,
            },
            scan_period = 1.0,
        },
        ["S-300PS 40B6MD sr"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 260000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 120000.0,
                    [ASPECT_TAIL_ON] = 120000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 120000.0,
                    [ASPECT_TAIL_ON] = 120000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 15.0,
            },
            scan_period = 1.0,
        },
        ["55G6 EWR"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 120000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 120000.0,
                    [ASPECT_TAIL_ON] = 120000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 120000.0,
                    [ASPECT_TAIL_ON] = 120000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 50,
            },
            scan_period = 1.0,
        },
        ["S-300PS 64H6E sr"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 200000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 200000.0,
                    [ASPECT_TAIL_ON] = 200000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 200000.0,
                    [ASPECT_TAIL_ON] = 200000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 15,
            },
            scan_period = 1.0,
        },
        ["SA-11 Buk SR 9S18M1"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 100000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 100000.0,
                    [ASPECT_TAIL_ON] = 100000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 100000.0,
                    [ASPECT_TAIL_ON] = 100000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 15,
            },
            scan_period = 1.0,
        },
        ["SA-11 Buk TR"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 60000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 60000.0,
                    [ASPECT_TAIL_ON] = 60000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 60000.0,
                    [ASPECT_TAIL_ON] = 60000.0
                }
            },
            lock_on_distance_coeff = 0.6,
            velocity_limits =
            {
                radial_velocity_min = 10,
            },
            scan_period = 1.0,
        },
        ["Dog Ear radar"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 35000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 35000.0,
                    [ASPECT_TAIL_ON] = 35000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 35000.0,
                    [ASPECT_TAIL_ON] = 35000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 15,
            },
            scan_period = 1.0,
        },
        ["Hawk tr"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 90000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 90000.0,
                    [ASPECT_TAIL_ON] = 90000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 90000.0,
                    [ASPECT_TAIL_ON] = 90000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 10,
            },
            scan_period = 1.0,
        },
        ["Hawk sr"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 90000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 90000.0,
                    [ASPECT_TAIL_ON] = 90000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 90000.0,
                    [ASPECT_TAIL_ON] = 90000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 15,
            },
            scan_period = 1.0,
        },
        ["snr s-125 tr"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 90000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 90000.0,
                    [ASPECT_TAIL_ON] = 90000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 90000.0,
                    [ASPECT_TAIL_ON] = 90000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 10,
            },
            scan_period = 1.0,
        },
        ["p-19 s-125 sr"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 45.0}
            },
            max_measuring_distance = 160000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 160000.0,
                    [ASPECT_TAIL_ON] = 160000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 160000.0,
                    [ASPECT_TAIL_ON] = 160000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 15,
            },
            scan_period = 6.0,
        },
        ["Patriot str"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 260000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 260000.0,
                    [ASPECT_TAIL_ON] = 260000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 260000.0,
                    [ASPECT_TAIL_ON] = 260000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 15,
            },
            scan_period = 1.0,
        },
        ["Roland Radar"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 35000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 35000.0,
                    [ASPECT_TAIL_ON] = 35000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 35000.0,
                    [ASPECT_TAIL_ON] = 35000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 15,
            },
            scan_period = 1.0,
        },
        ["seasparrow tr"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-15.0, 60.0}
            },
            max_measuring_distance = 30000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 30000.0,
                    [ASPECT_TAIL_ON] = 30000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 30000.0,
                    [ASPECT_TAIL_ON] = 30000.0
                }
            },
            lock_on_distance_coeff = 0.85,
            velocity_limits =
            {
                radial_velocity_min = 10,
            },
            scan_period = 1.0,
        },
        ["KKS R-790 Tsunami-BM"] = -- комплекс космической связи Р-790 "Цунами-БМ" РКР "Москва" класс "Слава"
        {
            type = RADAR_SS,
            vehicles_detection = true;
            airborne_radar = false;
            scan_volume = 
            {
                azimuth = {-180, 180},
                elevation = {-3, 10}
            },
            max_measuring_distance = 550000,
            detection_distance = 
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 550000.0,
                    [ASPECT_TAIL_ON] = 550000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 550000.0,
                    [ASPECT_TAIL_ON] = 550000.0
                }
            },
            lock_on_distance_coeff = 1.0,
            velocity_limits = 
            {
                radial_velocity_min = 15,
            },
            scan_period = 10.0,
            RCS = 100.0,
            RBM_detection_distance = 300000.0
        },
        ["piotr velikiy search radar"] = -- сенсор для радара освещения надводной обстановки(усредненные параметры:
                                        --                                  высота мачты радара - 40м
                                        --                              )
        {
            type = RADAR_SS,
            vehicles_detection = true;
            airborne_radar = false;
            scan_volume = 
            {
                azimuth = {-180, 180},
                elevation = {-3, 10}
            },
            max_measuring_distance = 40000,
            detection_distance = 
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 40000.0,
                    [ASPECT_TAIL_ON] = 40000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 40000.0,
                    [ASPECT_TAIL_ON] = 40000.0
                }
            },
            lock_on_distance_coeff = 1.0,
            velocity_limits = 
            {
                radial_velocity_min = 15,
            },
            scan_period = 12.0,
            RCS = 100.0,
            RBM_detection_distance = 40000.0
        },
        ["moskva search radar"] = -- сенсор для радара освещения надводной обстановки(усредненные параметры:
                                        --                                  высота мачты радара - 40м
                                        --                              )
        {
            type = RADAR_SS,
            vehicles_detection = true;
            airborne_radar = false;
            scan_volume = 
            {
                azimuth = {-180, 180},
                elevation = {-3, 10}
            },
            max_measuring_distance = 40000,
            detection_distance = 
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 40000.0,
                    [ASPECT_TAIL_ON] = 40000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 40000.0,
                    [ASPECT_TAIL_ON] = 40000.0
                }
            },
            lock_on_distance_coeff = 1.0,
            velocity_limits = 
            {
                radial_velocity_min = 15,
            },
            scan_period = 12.0,
            RCS = 100.0,
            RBM_detection_distance = 40000.0
        },
        ["ticonderoga search radar"] = -- сенсор для радара освещения надводной обстановки(усредненные параметры:
                                        --                                  высота мачты радара - 30м
                                        --                              )
        {
            type = RADAR_SS,
            vehicles_detection = true;
            airborne_radar = false;
            scan_volume = 
            {
                azimuth = {-180, 180},
                elevation = {-3, 10}
            },
            max_measuring_distance = 35000,
            detection_distance = 
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 35000.0,
                    [ASPECT_TAIL_ON] = 35000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 35000.0,
                    [ASPECT_TAIL_ON] = 35000.0
                }
            },
            lock_on_distance_coeff = 1.0,
            velocity_limits = 
            {
                radial_velocity_min = 15,
            },
            scan_period = 12.0,
            RCS = 100.0,
            RBM_detection_distance = 35000.0
        },
        ["perry search radar"] = -- сенсор для радара освещения надводной обстановки(усредненные параметры:
                                        --                                  высота мачты радара - 25м
                                        --                              )
        {
            type = RADAR_SS,
            vehicles_detection = true;
            airborne_radar = false;
            scan_volume = 
            {
                azimuth = {-180, 180},
                elevation = {-3, 10}
            },
            max_measuring_distance = 33620,
            detection_distance = 
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 33620.0,
                    [ASPECT_TAIL_ON] = 33620.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 33620.0,
                    [ASPECT_TAIL_ON] = 33620.0
                }
            },
            lock_on_distance_coeff = 1.0,
            velocity_limits = 
            {
                radial_velocity_min = 15,
            },
            scan_period = 12.0,
            RCS = 100.0,
            RBM_detection_distance = 33620.0
        },
        ["rezki search radar"] = -- сенсор для радара освещения надводной обстановки(усредненные параметры:
                                        --                                  высота мачты радара - 22м
                                        --                              )
        {
            type = RADAR_SS,
            vehicles_detection = true;
            airborne_radar = false;
            scan_volume = 
            {
                azimuth = {-180, 180},
                elevation = {-3, 10}
            },
            max_measuring_distance = 32350,
            detection_distance = 
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 32350.0,
                    [ASPECT_TAIL_ON] = 32350.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 32350.0,
                    [ASPECT_TAIL_ON] = 32350.0
                }
            },
            lock_on_distance_coeff = 1.0,
            velocity_limits = 
            {
                radial_velocity_min = 15,
            },
            scan_period = 12.0,
            RCS = 100.0,
            RBM_detection_distance = 32350.0
        },
        ["albatros search radar"] = -- сенсор для радара освещения надводной обстановки(усредненные параметры:
                                        --                                  высота мачты радара - 16м
                                        --                              )
        {
            type = RADAR_SS,
            vehicles_detection = true;
            airborne_radar = false;
            scan_volume = 
            {
                azimuth = {-180, 180},
                elevation = {-3, 10}
            },
            max_measuring_distance = 29500,
            detection_distance = 
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 29500.0,
                    [ASPECT_TAIL_ON] = 29500.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 29500.0,
                    [ASPECT_TAIL_ON] = 29500.0
                }
            },
            lock_on_distance_coeff = 1.0,
            velocity_limits = 
            {
                radial_velocity_min = 15,
            },
            scan_period = 12.0,
            RCS = 100.0,
            RBM_detection_distance = 30000.0
        },

		["molniya search radar"] = 
		{
            type = RADAR_MULTIROLE,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {-4.0, 70.0}
            },
            max_measuring_distance = 28430.0,
            scan_period = 12.0,
            air_search = {
                detection_distance =
                {
                    [HEMISPHERE_UPPER] =
                    {
                        [ASPECT_HEAD_ON] = 28430.0,
                        [ASPECT_TAIL_ON] = 18000.0
                    },
                    [HEMISPHERE_LOWER] =
                    {
                        [ASPECT_HEAD_ON] = 28430.0,
                        [ASPECT_TAIL_ON] = 18000.0
                    }
                },
                velocity_limits =
                {
                    radial_velocity_min = 100.0 / 3.6,
                    relative_radial_velocity_min = 100.0 / 3.6,
                },
				lock_on_distance_coeff = 1.0,
            },
			surface_search = {
				RCS = 100.0,
				RBM_detection_distance = 28430.0,
			},
        },
        ["neustrashimy search radar"] = -- сенсор для радара освещения надводной обстановки(усредненные параметры:
                                        --                                  высота мачты радара - 25м
                                        --                              )
        {
            type = RADAR_SS,
            vehicles_detection = true;
            airborne_radar = false;
            scan_volume = 
            {
                azimuth = {-180, 180},
                elevation = {-3, 10}
            },
            max_measuring_distance = 33620,
            detection_distance = 
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 33620.0,
                    [ASPECT_TAIL_ON] = 33620.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 33620.0,
                    [ASPECT_TAIL_ON] = 33620.0
                }
            },
            lock_on_distance_coeff = 1.0,
            velocity_limits = 
            {
                radial_velocity_min = 15,
            },
            scan_period = 12.0,
            RCS = 100.0,
            RBM_detection_distance = 33620.0
        },
        ["carrier search radar"] = -- сенсор для радара освещения надводной обстановки(усредненные параметры:
                                        --                                  высота мачты радара - 40м
                                        --                              )
        {
            type = RADAR_SS,
            vehicles_detection = true;
            airborne_radar = false;
            scan_volume = 
            {
                azimuth = {-180, 180},
                elevation = {-3, 10}
            },
            max_measuring_distance = 39000,
            detection_distance = 
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 39000.0,
                    [ASPECT_TAIL_ON] = 39000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 39000.0,
                    [ASPECT_TAIL_ON] = 39000.0
                }
            },
            lock_on_distance_coeff = 1.0,
            velocity_limits = 
            {
                radial_velocity_min = 15,
            },
            scan_period = 12.0,
            RCS = 100.0,
            RBM_detection_distance = 39000.0
        },
		["VIRTUAL_AUDIO_SENSOR"] =
        {
            type = RADAR_AS,
            scan_volume =
            {
                azimuth = {-180.0, 180.0},
                elevation = {0.0, 90.0}
            },
            max_measuring_distance = 15000.0,
            detection_distance =
            {
                [HEMISPHERE_UPPER] =
                {
                    [ASPECT_HEAD_ON] = 15000.0,
                    [ASPECT_TAIL_ON] = 15000.0
                },
                [HEMISPHERE_LOWER] =
                {
                    [ASPECT_HEAD_ON] = 15000.0,
                    [ASPECT_TAIL_ON] = 15000.0
                }
            },
			RCS = 0.4,
			lock_on_distance_coeff = 1.0,
            scan_period = 2.0,
        },
    },
    [SENSOR_IRST] =
    {
        ["OLS-27"] = {
            scan_volume =
            {
                azimuth = {-30.0, 30.0},
                elevation = {-30.0, 30.0}
            },
            detection_distance_for_tail_on_Su_27 =
            {
                [ENGINE_MODE_FORSAGE] = 80000.0,
                [ENGINE_MODE_MAXIMAL] = 40000.0,
                [ENGINE_MODE_MINIMAL] = 25000.0
            },
            head_on_distance_coeff = 0.333,
            scan_period = 5.0,
            background_factor = 0.5,
            laserRanger = true,
        },
        ["KOLS"] = {
            scan_volume =
            {
                azimuth = {-30.0, 30.0},
                elevation = {-30.0, 30.0}
            },
            detection_distance_for_tail_on_Su_27 =
            {
                [ENGINE_MODE_FORSAGE] = 20000.0,
                [ENGINE_MODE_MAXIMAL] = 12000.0,
                [ENGINE_MODE_MINIMAL] = 6000.0
            },
            head_on_distance_coeff = 0.25,
            scan_period = 3.0,
            background_factor = 0.3,
            laserRanger = true,
        },
        ["TP-23M"] = {
            scan_volume =
            {
                azimuth = {-30.0, 30.0},
                elevation = {-20.0, 20.0}
            },
            detection_distance_for_tail_on_Su_27 =
            {
                [ENGINE_MODE_FORSAGE] = 35000.0,
                [ENGINE_MODE_MAXIMAL] = 15000.0,
                [ENGINE_MODE_MINIMAL] = 8000.0
            },
            head_on_distance_coeff = 0.25,
            scan_period = 5.0,
            background_factor = 0.25
        },
        ["26Sh-1"] = {
            scan_volume =
            {
                azimuth = {-30.0, 30.0},
                elevation = {-20.0, 20.0}
            },
            detection_distance_for_tail_on_Su_27 =
            {
                [ENGINE_MODE_FORSAGE] = 35000.0,
                [ENGINE_MODE_MAXIMAL] = 15000.0,
                [ENGINE_MODE_MINIMAL] = 8000.0
            },
            head_on_distance_coeff = 0.25,
            scan_period = 5.0,
            background_factor = 0.25
        },
        ["8TP"] = {
            scan_volume =
            {
                azimuth = {-30.0, 30.0},
                elevation = {-30.0, 30.0}
            },
            detection_distance_for_tail_on_Su_27 =
            {
                [ENGINE_MODE_FORSAGE] = 50000.0,
                [ENGINE_MODE_MAXIMAL] = 25000.0,
                [ENGINE_MODE_MINIMAL] = 15000.0
            },
            head_on_distance_coeff = 0.333,
            scan_period = 5.0,
            background_factor = 0.5
        },
    },
    [SENSOR_RWR] =
    {
        ["Abstract RWR"] =
        {
            detection_dist_to_radar_detection_dist_max_ratio = 0.85,
            lock_on_detection = true
        }
    }
}

Sensors    = {}
db.Sensors = { Sensor = {} }

function register_sensor(name,category,params)
    local 		 res = params;
    res.Name 		 = name;
	res.category     = category;
    res.SensorType   = category;
	
	if  not res.DisplayName then
		res.DisplayName = _(name);  
	end
    
	
	if Sensors[name] ~= nil then
		error ("dublicate sensor :"..name)
		return
	end
	Sensors[name] = res
    table.insert(db.Sensors.Sensor, res);
end

for category, sensors in pairs(predefined) do
    for name, sensor  in pairs(sensors) do
		register_sensor(name,category,sensor)
	end
end
