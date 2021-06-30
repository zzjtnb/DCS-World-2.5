return plane( "F-15E", _("F-15E"),
    {
        
        EmptyWeight = "17072",
        MaxFuelWeight = "10246",
        MaxHeight = "19700",
        MaxSpeed = "2650",
        MaxTakeOffWeight = "36741",
        Picture = "F-15E.png",
        Rate = "50",
        Shape = "f-15e",
        WingSpan = "13.05",
        WorldID = 59,
		country_of_origin = "USA",

		-- Countermeasures, 
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 240,
			-- RR-170
			chaff = {default = 120, increment = 30, chargeSz = 1},
			-- MJU-7
			flare = {default = 60, increment = 15, chargeSz = 2}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, F_15E,
			"Fighters", "Refuelable", "Datalink", "Link16"
        },
        Categories = {
            pl_cat("{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_GOOD, LOOK_GOOD),
        Sensors = {
            RADAR = "AN/APG-63",
            RWR = "Abstract RWR",
            OPTIC = {"Sniper XR FLIR", "Sniper XR CCD TV"},
        },
        Countermeasures = {
            ECM = "AN/ALQ-135"
        },
		EPLRS = true,
        mapclasskey = "P0091000024",
    },
    {
        aim9_station(1, 0, 0.660000, -0.078000, -3.325000,
            {
				use_full_connector_position=true,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" }, -- 	AIM-120B
				{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" }, --    AIM-120C
				{ CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.30,  0.0,  0.0}},			-- ACMI pod
            }
        ),
        pylon(2, 0, -0.155000, -0.343000, -2.944000,
            {
				use_full_connector_position=true,
            },
            {
                { CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}" },
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ CLSID = "{GBU-31}"}, -- GBU-31(V)1/B
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
				{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}"}, -- AGM-65D LAU-117
				{ CLSID = "{F16A4DE0-116C-4A71-97F0-2CF85B0313EC}"}, -- AGM-65E LAU-117
				{ CLSID = "LAU_117_AGM_65H"},
				{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}"}, -- AGM-65K LAU-117
				{ CLSID = "{9BCC2A2B-5708-4860-B1F1-053A18442067}"}, -- AGM-154
				{ CLSID = "LAU_117_AGM_65G"}, -- AGM-65G
				{ CLSID = "{GBU-31V3B}"}, -- GBU-31(V)3/B 
            }
        ),
        aim9_station(3, 0, 0.660000, -0.078000, -2.563000,
            {
				use_full_connector_position=true,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" }, -- 	AIM-120B
				{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" }, --    AIM-120C
            }
        ),
		------------ 
		pylon(4, 0, -3.55, -0.6000, -2.1,
            {
				use_full_connector_position=true,
			},
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
		),
		pylon(5, 0, -1.155000, -0.753000, -2.1,
            {
				use_full_connector_position=true,
			},
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
		),
		pylon(6, 0, 1.40, -0.77, -2.15,
            {
				use_full_connector_position=true,
			},
            {
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
		),
		------------
        pylon(7, 0, -3.20000, -0.880000, -1.75,
            {
				use_full_connector_position=true,
				arg 	  		= 314,
				arg_value 		= 0.1,
				--[[ 
					0040452: F-15E. The tail missiles suspennd not correctly
					GK	(developer) 2017-10-21 01:55
					130951	Исправил масштабирование коннекторов на F-15C, F-15E. 
					Для F-15E задействуйте, пожалуйста, арг. 314,316,318,320 при подвешивании ракет на пилоны 7,9,11,13 соответственно. 
					При значении аргумента 0...0,09 коннекторы находятся на позиции для подвешивания бомб, при значении 0,1...1,0 - на позициях для подвешивания ракет.
					
					примечание - на данный момент этим пилонам ракеты не назначены - откуда они взялись в миссии Чижа - вопрос 
				--]]
            },
            {
             	{ arg_value = 0, CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ arg_value = 0, CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ arg_value = 0, CLSID = "{Mk82AIR}" },
				{ arg_value = 0, CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ arg_value = 0, CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ arg_value = 0, CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ arg_value = 0, CLSID = "{GBU-31}"}, -- GBU-31(V)1/B
				{ arg_value = 0, CLSID = "{GBU-38}"},
				{ arg_value = 0, CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ arg_value = 0, CLSID = "{CBU-87}"},
				{ arg_value = 0, CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ arg_value = 0, CLSID = "{CBU_103}"},			
				{ arg_value = 0, CLSID = "{CBU_105}"},
				{ arg_value = 0, CLSID = "{GBU-31V3B}"}, -- GBU-31(V)3/B 
            }
        ),
		------------
		pylon(8, 0, -0.6, -1.10000, -1.75,
            {
				use_full_connector_position=true,
            },
            {
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
		),
		------------
        pylon(9, 0, 1.9000, -1.10000, -1.75,
            {
				use_full_connector_position=true,
				arg 	  		= 316,
				arg_value 		= 0.1,
            },
            {
				{ arg_value = 0, CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ arg_value = 0, CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ arg_value = 0, CLSID = "{Mk82AIR}" },
				{ arg_value = 0, CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ arg_value = 0, CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ arg_value = 0, CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ arg_value = 0, CLSID = "{GBU-31}"}, -- GBU-31(V)1/B
				{ arg_value = 0, CLSID = "{GBU-38}"},
				{ arg_value = 0, CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ arg_value = 0, CLSID = "{CBU-87}"},
				{ arg_value = 0, CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ arg_value = 0, CLSID = "{CBU_103}"},			
				{ arg_value = 0, CLSID = "{CBU_105}"},
				{ arg_value = 0, CLSID = "{GBU-31V3B}"}, -- GBU-31(V)3/B 
            }
        ),
        pylon(10, 0, 0.184000, -1.030000, 0.000000,
            {
				use_full_connector_position=true,
            },
            {
                { CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}" },
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ CLSID = "{GBU-31}"}, -- GBU-31(V)1/B
				{ CLSID = "{GBU-31V3B}" },
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
            }
        ),
        pylon(11, 0 , -3.20000, -0.880000, 1.75,
            {
				use_full_connector_position=true,
				arg 	  		= 318,
				arg_value 		= 0.1,
            },
            {
               	{ arg_value = 0, CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ arg_value = 0, CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ arg_value = 0, CLSID = "{Mk82AIR}" },
				{ arg_value = 0, CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ arg_value = 0, CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ arg_value = 0, CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ arg_value = 0, CLSID = "{GBU-31}"}, -- GBU-31(V)1/B
				{ arg_value = 0, CLSID = "{GBU-38}"},
				{ arg_value = 0, CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ arg_value = 0, CLSID = "{CBU-87}"},
				{ arg_value = 0, CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ arg_value = 0, CLSID = "{CBU_103}"},			
				{ arg_value = 0, CLSID = "{CBU_105}"},
				{ arg_value = 0, CLSID = "{GBU-31V3B}"}, -- GBU-31(V)3/B 
            }
        ),
		---------
		pylon(12, 0, -0.6, -1.10000, 1.75,
            {
				use_full_connector_position=true,
			},
            {
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
		),
		---------
        pylon(13, 0, 1.9000, -1.10000, 1.75,
            {
				use_full_connector_position=true,
				arg 	  		= 320,
				arg_value 		= 0.1,
            },
            {
          		{ arg_value = 0, CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ arg_value = 0, CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ arg_value = 0, CLSID = "{Mk82AIR}" },
				{ arg_value = 0, CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ arg_value = 0, CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ arg_value = 0, CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ arg_value = 0, CLSID = "{GBU-31}"}, -- GBU-31(V)1/B
				{ arg_value = 0, CLSID = "{GBU-38}"},
				{ arg_value = 0, CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ arg_value = 0, CLSID = "{CBU-87}"},
				{ arg_value = 0, CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ arg_value = 0, CLSID = "{CBU_103}"},			
				{ arg_value = 0, CLSID = "{CBU_105}"},
				{ arg_value = 0, CLSID = "{GBU-31V3B}"}, -- GBU-31(V)3/B 
            }
        ),
		
		------------ 
		pylon(14, 0, -3.55, -0.6000, 2.1,
            {
				use_full_connector_position=true,
			},
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
		),
		pylon(15, 0,  -1.155000, -0.753000, 2.1,
            {
				use_full_connector_position=true,
			},
            {
                { CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
		),
		pylon(16, 0, 1.40, -0.77, 2.15,
            {
				use_full_connector_position=true,
			},
            {
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
            }
		),
		------------
		
        aim9_station(17, 0, 0.660000, -0.078000, 2.563000,
            {
				use_full_connector_position=true,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" }, -- 	AIM-120B
				{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" }, --    AIM-120C
            }
        ),
        pylon(18, 0, -0.155000, -0.343000, 2.944000,
            {
				use_full_connector_position=true,
            },
            {
			    { CLSID = "{E1F29B21-F291-4589-9FD8-3272EEC69506}" },
				{ CLSID = "{BCE4E030-38E9-423E-98ED-24BE3DA87C32}" }, -- "Mk-82"
				{ CLSID = "{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}" }, -- "Mk-84"
				{ CLSID = "{Mk82AIR}" },
				{ CLSID = "{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}"}, -- GBU-10
				{ CLSID = "{DB769D48-67D7-42ED-A2BE-108D566C8B1E}"}, -- GBU-12
				{ CLSID = "{EF0A9419-01D6-473B-99A3-BEBDB923B14D}"}, -- GBU-27
				{ CLSID = "{GBU-31}"}, -- GBU-31(V)1/B
				{ CLSID = "{GBU-31V3B}" },
				{ CLSID = "{GBU-38}"},
				{ CLSID = "{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}"}, -- SU-25
				{ CLSID = "{CBU-87}"},
				{ CLSID = "{5335D97A-35A5-4643-9D9B-026C75961E52}"}, -- CBU-97
				{ CLSID = "{CBU_103}"},			
				{ CLSID = "{CBU_105}"},
				{ CLSID = "{444BA8AE-82A7-4345-842E-76154EFCCA46}"}, -- AGM-65D LAU-117
				{ CLSID = "{F16A4DE0-116C-4A71-97F0-2CF85B0313EC}"}, -- AGM-65E LAU-117
				{ CLSID = "LAU_117_AGM_65H"},
				{ CLSID = "{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}"}, -- AGM-65K LAU-117
				{ CLSID = "{9BCC2A2B-5708-4860-B1F1-053A18442067}"}, -- AGM-154
				{ CLSID = "LAU_117_AGM_65G"}, -- AGM-65G
            }
        ),
        aim9_station(19, 0, 0.660000, -0.078000, 3.325000,
            {
				use_full_connector_position=true,
            },
            {
                { CLSID = "{C8E06185-7CD6-4C90-959F-044679E90751}" }, -- 	AIM-120B
				{ CLSID = "{40EF17B7-F508-45de-8566-6FFECC0C1AB8}" }, --    AIM-120C
				{ CLSID = "{AIS_ASQ_T50}", attach_point_position = {0.30,  0.0,  0.0}},			-- ACMI pod
            }
        ),
    },
    {
        aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(Intercept),
        --aircraft_task(GAI),
        aircraft_task(PinpointStrike),
        aircraft_task(CAS),
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
        aircraft_task(AFAC),
        aircraft_task(Reconnaissance),
    },
	aircraft_task(GroundAttack)
);
