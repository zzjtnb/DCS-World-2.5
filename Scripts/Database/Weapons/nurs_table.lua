weapons_table.weapons.nurs = namespace()

function form_unguided_rocket(name,
							  user_name, 
							  model, 
							  scheme, 
							  data,
							  amm_data, 
							  fm,
							  engine,
							  wstype_name)
	local wstype_name = wstype_name
	if  wstype_name == nil then
		wstype_name = _G[name]
	end
	
	if fm.rail_open == nil then
	   fm.rail_open = false
	end
	
	if fm.freq == nil then
	   fm.freq =  7
	end

	if engine.nozzle_orientationXYZ == nil then
		engine.nozzle_orientationXYZ = {{0, 0, 0}}
	end
	
    res = dbtype("wAmmunitionNURS", 
    {
        ws_type = {wsType_Weapon,wsType_NURS,wsType_Rocket, wstype_name },
        
        model = model,
    })
	
	copy_origin(res,data)
	
	if data.warhead ~= nil then
		data.warhead.caliber = data.fm.caliber * 1000 --mm
	end
	
	if data.launcher ~= nil then
		if data.launcher.ammunition_name ~= nil then
		   data.launcher.ammunition = weapons_table.weapons.bombs[data.launcher.ammunition_name]
		end
    end
 
	res.server = {}
    res.client = {}
    
    copy_recursive_with_metatables(res.server, data);
    copy_recursive_with_metatables(res.client, data);
	
	res.server.scheme = "schemes/rockets/"..scheme..".sch";  
    res.client.scheme = "schemes/rockets/"..scheme..".sch";
	
	
    if data.warhead ~= nil then 
        res.server.warhead.fantom = 0;
        res.client.warhead.fantom = 1;
    end
    
    if data.launcher ~= nil then
	    res.server.launcher.server = 1;
        res.client.launcher.server = 0;
    end
    
    res.sight_data =
    {
        engine = 
        {
            fuel_mass   = engine.fuel_mass,
            work_time   = engine.work_time;
            impulse     = engine.impulse,
        },
        fm = fm,
    }
    
    
    res.mass   = fm.mass -- database should have full mass as basis
	-- drag coefficent for carrier aircraft, normed to F-15 Wing area  56.5 sq.m
	if res.cx_pil == nil then
	   res.cx_pil = fm.cx_coeff[4]*fm.caliber*fm.caliber*0.78539816339744830961566084581988 / 56.5;
	end

    res.name         = name;
	res.display_name = user_name;
    res.type_name    = _("rocket");
	
	if not res.sounderName then 
		res.sounderName = "Weapons/Rocket"
	end
    
	if amm_data then
	   copy_recursive(res, amm_data);
    end
    return res;
end

function declare_nurs(name, user_name, model, scheme, data, amm_data,wstype_name)
	local res = form_unguided_rocket(name, 
								user_name, 
								model, 
								scheme, 
								data, 
								amm_data, 
								data.fm, 
								data.engine,
								wstype_name 
								);
	weapons_table.weapons.nurs[res.name] = res
	registerResourceName(res,CAT_ROCKETS)
    return res
end

declare_cluster_nurs = declare_nurs

-----------------------------------------------------------------
-- C_5, S-5KO
-----------------------------------------------------------------
declare_nurs("C_5", _("S-5KO"), "s-5ko", "nurs-standard",
{
        -- FM
        fm = 
        {
            mass        = 3.135 + 1.2953515,    -- start weight, kg
            caliber     = 0.057,   -- Caliber, meters 
            cx_coeff    = {1,1.2668931,0.67,0.4521834,2.08}, -- Cx
            L           = 1.081, -- Length, meters
            I           = 0.4313938, -- moment of inertia
            Ix          = 0.0017991, -- not used
            Ma          = 0.131698, -- dependence moment coefficient of  by  AoA
            Mw          = 1.4351299, --  dependence moment coefficient by angular speed
            shapeName   = "",
            
            wind_time   = 0.675, -- dispersion coefficient
            wind_sigma  = 5, -- dispersion coefficient
            
            wing_unfold_time = 0.02, -- Unfold time, sec
        },

        engine =
        {
            fuel_mass   = 1.2953515, -- Fuel mass, kg
            impulse     = 180, -- Specific impuls, sec
            boost_time  = 0, -- Time of booster action
            work_time   = 0.675, -- Time of mid-flight engine action
            boost_factor= 1, -- Booster to cruise trust ratio
            nozzle_position =  {{-0.471, 0, 0}}, -- meters
			nozzle_orientationXYZ =  {{0, 0, 0}},
            tail_width  = 0.052, -- contrail thickness
            boost_tail  = 1, 
            work_tail   = 1,
            
            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.5,
        },
    
    warhead = warheads["C_5"],
}, 
{
    dist_min = 600, -- min range, meters
    dist_max = 2500,    -- max range, meters
})

-----------------------------------------------------------------
-- C_8, S-8KOM
-----------------------------------------------------------------
declare_nurs("C_8", _("S-8KOM"), "s-8_kom", "nurs-standard",
{
        fm = 
        {
            mass        = 11.2,   
            caliber     = 0.08, 
            cx_coeff    = {1, 0.9309214, 0.67, 0.3322673, 2.08},
            L           = 1.7,
            I           = 2.79366,
            Ix          = 6,
            Ma          = 0.1316980,
            Mw          = 1.4351299,
            shapeName   = "",
            
            wind_time   = 1.55,
            wind_sigma  = 4,
        },

        engine =
        {
            fuel_mass   = 3.7137188,
            impulse     = 180,
            boost_time  = 0,
            work_time   = 1.55,
            boost_factor= 1,
            nozzle_position =  {{-0.65, 0, 0}},
			nozzle_orientationXYZ =  {{0, 0, 0}},
            tail_width  = 0.052,
            boost_tail  = 1,
            work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
			smoke_transparency = 0.5,
        },

    warhead = warheads["C_8"],
        
},{
    dist_min = 600,
    dist_max = 3000,    
})

-----------------------------------------------------------------
-- C_8OFP, S-8OFP
-----------------------------------------------------------------
declare_nurs("C_8OFP2", _("S-8OFP2"), "s-8_ofp2", "nurs-standard",
{
        fm = 
        {
            mass        = 16.7,   
            caliber     = 0.08, 
            cx_coeff    = {1, 0.9309214, 0.67, 0.3322673, 2.08},
            L           = 1.428,
            I           = 2.79366,
            Ix          = 6,
            Ma          = 0.1316980,
            Mw          = 1.4351299,
            shapeName   = "",
            
            wind_time   = 1.55,
            wind_sigma  = 4,
        },

        engine =
        {
            fuel_mass   = 3.7, 
            impulse     = 180,
            boost_time  = 0,
            work_time   = 1.55,
            boost_factor= 1,
            nozzle_position =  {{-0.67, 0, 0}},
			nozzle_orientationXYZ =  {{0, 0, 0}},
            tail_width  = 0.052,
            boost_tail  = 1,
            work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.5,
        },

    warhead = warheads["C_8OFP2"],
        
},{
    dist_min = 600,
    dist_max = 3000,    
})

-----------------------------------------------------------------
-- C_8OM, S-8OM
-----------------------------------------------------------------
declare_nurs("C_8OM", _("S-8OM"), "s-8_om", "nurs-light",
{
        fm = 
        {
            mass        = 12.1,   
            caliber     = 0.08, 
            cx_coeff    = {1, 0.9309214, 0.67, 0.3322673, 2.08},
            L           = 1.7,
            I           = 2.79366,
            Ix          = 6,
            Ma          = 0.1316980,
            Mw          = 1.4351299,
            shapeName   = "",
            
            wind_time   = 1.55,
            wind_sigma  = 4,
        },

        engine =
        {
            fuel_mass   = 3.7137188,
            impulse     = 180,
            boost_time  = 0,
            work_time   = 1.55,
            boost_factor= 1,
            nozzle_position =  {{-0.68, 0, 0}},
			nozzle_orientationXYZ =  {{0, 0, 0}},
            tail_width  = 0.052,
            boost_tail  = 1,
            work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.5,
        },

        launcher = 
        {
			ammunition = weapons_table.weapons.bombs["S-8OM_LE"],
        },
        
        control = 
        {
            delay = 7.7,
        },
},{
    dist_min = 4000,
    dist_max = 4500,
})


-----------------------------------------------------------------
-- C_8CM, S-8TsM
-----------------------------------------------------------------
declare_nurs("C_8CM", _("S-8TsM"), "s-8_sm", "nurs-marker",
{
        fm = 
        {
            mass        = 11.1,   
            caliber     = 0.08, 
            cx_coeff    = {1, 0.9309214, 0.67, 0.3322673, 2.08},
            L           = 1.7,
            I           = 2.79366,
            Ix          = 0.00928,
            Ma          = 0.1316980,
            Mw          = 1.4351299,
            shapeName   = "",
            
            wind_time   = 1.55,
            wind_sigma  = 4,
        },

        engine =
        {
            fuel_mass   = 3.7137188,
            impulse     = 180,
            boost_time  = 0,
            work_time   = 1.55,
            boost_factor= 1,
            nozzle_position =  {{-0.68, 0, 0}},
			nozzle_orientationXYZ =  {{0, 0, 0}},
            tail_width  = 0.052,
            boost_tail  = 1,
            work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.5,
        },

    warhead = warheads["C_8CM"],
},{
    dist_min = 600,
    dist_max = 3000,    
})


-----------------------------------------------------------------
-- C_13, S-13
-----------------------------------------------------------------
declare_nurs("C_13", _("S-13OF"), "c-13", "nurs-standard",
{
        fm = 
        {
            mass        = 69.0,  
            caliber     = 0.112,    
            cx_coeff    = {1,0.889005,0.67,0.3173064,2.08},
            L           = 2.643,
            I           = 39.00209,
            Ma          = 0.50851,
            Mw          = 3.28844,
            shapeName   = "",
            
            wind_time   = 2.1,
            wind_sigma  = 3,
        },

        engine =
        {
            fuel_mass   = 19.4897,
            impulse     = 180,
            boost_time  = 0,
            work_time   = 2.1,
            boost_factor= 1,
            nozzle_position =  {{-1.296, 0, 0}},
			nozzle_orientationXYZ =  {{0, 0, 0}},
            tail_width  = 0.052,
            boost_tail  = 1,
            work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.5,
        },

    warhead = warheads["C_13"],
},{
    dist_min = 1100,
    dist_max = 4000,    
})

-----------------------------------------------------------------
-- C_24, S-24
-----------------------------------------------------------------
declare_nurs("C_24", _("S-24B"), "c-24", "nurs-standard",
{
    
        fm = 
        {
            mass        = 235,    
            caliber     = 0.24, 
            cx_coeff    = {1,0.8889618,0.67,0.3172910,2.08},
            L           = 2.22,
            I           = 96.5145,
            Ma          = 0.1720553,
            Mw          = 6.106276,
            shapeName   = "",
            rail_open   = true,
            wind_time   = 1.3,
            wind_sigma  = 10,
        },

        engine =
        {
            fuel_mass   = 51.8,
            impulse     = 170,
            boost_time  = 0,
            work_time   = 1.3,
            boost_factor= 1,
            nozzle_position =  {{-1.18, 0, 0}},
			nozzle_orientationXYZ =  {{0, 0, 0}},
            tail_width  = 0.6,
            boost_tail  = 1,
            work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.5,
        },

    warhead = warheads["C_24"],
},{
    dist_min = 2000,
    dist_max = 3000,    
})

-----------------------------------------------------------------
-- C_25, S-25
-----------------------------------------------------------------
declare_nurs("C_25", _("S-25OFM"), "c-25", "nurs-standard",
{
        fm = 
        {
            mass        = 300.9 + 109.09637,    
            caliber     = 0.34, 
            cx_coeff    = {1,0.8459661,0.67,0.3019448,2.08},
            L           = 3.56,
            I           = 433.01467,
            Ma          = 0.192352,
            Mw          = 2.521688,
            shapeName   = "",
            
            wind_time   = 2.2,
            wind_sigma  = 3,
        },

        engine =
        {
            fuel_mass   = 109.09637,
            impulse     = 180,
            boost_time  = 0,
            work_time   = 2.2,
            boost_factor= 1,
			nozzle_position =  {{-1.8, 0.0, 0.0}} ,
			nozzle_orientationXYZ =  {{0.0, 0.0, 0.0}},
			tail_width  = 1.7,
            boost_tail  = 1,
            work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.5,
        },

    warhead = warheads["C_25"],
},{
    dist_min = 2000,
    dist_max = 3000,    
})

-----------------------------------------------------------------
-- 9M22U (grad)
-----------------------------------------------------------------
declare_nurs("GRAD_9M22U", _("GRAD"), "9M22U", "nurs-standard",
{
	fm = 
	{
		mass        = 46.5 + 20.5, 
		caliber     = 0.122,    
		cx_coeff    = {1,0.66,0.49,0.2,1.53},
		L           = 2.643,
		I           = 39.00209,
		Ma          = 0.50851,
		Mw          = 3.28844,
		shapeName   = "",
		
		wind_time   = 1.0,
		wind_sigma  = 7,
	},

	engine =
	{
		fuel_mass   = 20.5,
		impulse     = 200,
		boost_time  = 0,
		work_time   = 1.0,
		boost_factor= 1,
		nozzle_position =  { {-1.598, 0, 0} },
		nozzle_orientationXYZ =  {{0, 0, 0}},
		tail_width  = 0.52,
		boost_tail  = 0,
		work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.5,
	},

    warhead = warheads["GRAD_9M22U"],
},{
    dist_min = 0,       -- Не используется
    dist_max = 0,   
})

declare_cluster_nurs("SMERCH_9M55K", _("SMERCH"), "9M55", "nurs-ground-cluster",
{
    fm = 
    {
        mass        = 480.9 + 320.0,
        caliber     = 0.300,    
        cx_coeff    = {1,0.66,0.49,0.02,1.53},
        L           = 7.6,
        I           = 3898.8,
        Ma          = 0.192352,
        Mw          = 2.521688,
        shapeName   = "",
        
        wind_time   = 3,
        wind_sigma  = 2,
    },

    engine =
    {
        fuel_mass   = 320.0,
        impulse     = 220.0,
        boost_time  = 0,
        work_time   = 3,
        boost_factor= 1,
        nozzle_position =  { {-4.00, 0, 0} },
		nozzle_orientationXYZ =  {{0, 0, 0}},
        tail_width  = 3.0,
        boost_tail  = 0,
        work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.5,
    },
    
    launcher = 
    {
        cluster = cluster_desc("Bomb_Other", wsType_Bomb_Cluster, combine_cluster(Cluster_SMERCH_DATA,
        {
            cluster = {
                count        = 156, --96+ 6/360
                effect_count = 30, 
            
                wind_sigma  = 12,
                impulse_sigma = 49000,
                moment_sigma = 0.0005,
            }
        }))
    },
    
    fuze = 
    {
        fire_height = 1200,
    },
},{
    dist_min = 0,       -- Не используется
    dist_max = 0,   
})
--9M55F HE Smerch Rocket
declare_nurs("SMERCH_9M55F", _("SMERCH HE"), "9M55", "nurs-standard",
{
    fm = 
    {
        mass        = 810.0,
        caliber     = 0.300,    
        cx_coeff    = {1,0.66,0.49,0.02,1.53},
        L           = 7.6,
        I           = 3898.8,
        Ma          = 0.192352,
        Mw          = 2.521688,
        shapeName   = "",
        
        wind_time   = 3,
        wind_sigma  = 2,
    },

    engine =
    {
        fuel_mass   = 320.0,
        impulse     = 220.0,
        boost_time  = 0,
        work_time   = 3,
        boost_factor= 1,
        nozzle_position =  { {-4.00, 0, 0} },
		nozzle_orientationXYZ =  {{0, 0, 0}},
        tail_width  = 3.0,
        boost_tail  = 0,
        work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.5,
    },
    
    warhead = warheads["SMERCH_9M55F"],
},{
    dist_min = 0,       -- Не используется
    dist_max = 0,   
})

-- 9M27F Uragan Rocket
declare_nurs("URAGAN_9M27F", _("URAGAN"), "9m27f", "nurs-standard",
{
    fm = 
    {
        mass        = 280.0,
        caliber     = 0.220,    
        cx_coeff    = {1,0.66,0.49,0.02,1.53},
        L           = 5.178,
        I           = 625.606,
        Ma          = 0.192352,
        Mw          = 2.521688,
        shapeName   = "",
        
        wind_time   = 3,
        wind_sigma  = 2,
    },

    engine =
    {
        fuel_mass   = 120.0,
        impulse     = 180.0,
        boost_time  = 0,
        work_time   = 2,
        boost_factor= 1,
        nozzle_position =  { {-2.60, 0, 0} },
		nozzle_orientationXYZ =  {{0, 0, 0}},
        tail_width  = 1.0,
        boost_tail  = 0,
        work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.5,
    },
    
    warhead = warheads["URAGAN_9M27F"],
},{
    dist_min = 0,       -- Не используется
    dist_max = 0,   
})

-----------------------------------------------------------------
-- HYDRA-70 http://maic.jmu.edu/ordata/srdetaildesc.asp?ordid=283
-----------------------------------------------------------------
local mk66_rocket_motor =
{
	fuel_mass   			= 3.175,
	impulse     			= 210,
	boost_time  			= 0,
	work_time   			= 1.1,
	boost_factor			= 1,
	nozzle_position 	    =  {{-0.65, 0, 0}},
	nozzle_orientationXYZ   =  {{0, 0, 0}},
	tail_width  			= 0.052,
	boost_tail  			= 1,
	work_tail   			= 1,
            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.5,
}

local function fm_hydra70_derivative(t)
	local ret_val = 
	{
		mass        = 6.21+2.9,  -- Motor Mass + Warhead Mass 
		caliber     = 0.07,  
		cx_coeff    = {1,1.5,0.68,0.7,1.75},
		L           = 1.06+0.279, -- Motor Lenght + Warhead Lenght
		I           = 1.7240,
		Ma          = 0.23322,
		Mw          = 2.177036,
		shapeName   = "HYDRA-70 MK1",
		wind_time   = 1.1,
		wind_sigma  = 5,
	}
	for i,o in pairs(t) do
		ret_val[i] = o
	end
	return ret_val
end

declare_nurs("HYDRA_70_M156", _("HYDRA-70 M156 WP"), "hydra_m156",  "nurs-marker", -- M156 (WP)
{
		fm = fm_hydra70_derivative({
			mass        = 6.3863,        
			L           = 1.3815,
			shapeName   = "HYDRA-70 M156 WP",
		}),
		engine = mk66_rocket_motor,--MK66
		warhead = warheads["HYDRA_70WP"],
},{
    dist_min = 1000,
    dist_max = 2000,    
})

-- MK1  nonexplosive practice warhead
declare_nurs("HYDRA_70_MK1", _("HYDRA-70 MK1"), "hydra_m151he", "nurs-standard",
{
	fm		= fm_hydra70_derivative({}),
	engine  = mk66_rocket_motor,--MK66
	warhead = warheads["BDU"],
},{
	dist_min = 1000,
	dist_max = 2000,    
})

-- MK5 high-explosive antitank (HEAT) warhead with a shaped main charge
declare_nurs("HYDRA_70_MK5", _("HYDRA-70 MK5"), "hydra_m151he", "nurs-standard",
{
		fm = fm_hydra70_derivative({
			mass        = 6.21+2.6,  -- Motor Mass + Warhead Mass 
			L           = 1.06+0.228, -- Motor Lenght + Warhead Lenght
			shapeName   = "",
		}),
		engine  = mk66_rocket_motor,--MK66
		warhead = warheads["HYDRA_70_HE_ANTITANK"],
},{
	dist_min = 1000,
	dist_max = 2000,    
})

-- MK61  nonexplosive practice warhead
declare_nurs("HYDRA_70_MK61", _("HYDRA-70 MK61"), "hydra_m156", "nurs-marker",
{
		fm = fm_hydra70_derivative({
			shapeName   = "",
		}),
		engine  = mk66_rocket_motor,--MK66 (in real MK49 motor)
		warhead = warheads["HYDRA_70_SMOKE"],
},{
	dist_min = 1000,
	dist_max = 2000,    
})

-- M151 high-explosive fragmentation warhead
declare_nurs("HYDRA_70_M151", _("HYDRA-70 M151"), "hydra_m151he", "nurs-standard",
{
		fm = fm_hydra70_derivative({
			mass        = 6.21+3.9,  -- Motor Mass + Warhead Mass 
			L           = 1.06+0.328, -- Motor Lenght + Warhead Lenght
			shapeName   = "",
		}),
		engine  = mk66_rocket_motor,--MK66
		warhead = warheads["HYDRA_70"],
},{
	dist_min = 1000,
	dist_max = 2000,    
})

-- WTU1B nonexplosive practice warhead
declare_nurs("HYDRA_70_WTU1B", _("HYDRA-70 WTU-1/B"), "hydra_m156", "nurs-standard",
{
		fm = fm_hydra70_derivative({
			shapeName   = "",
		}),
		engine  = mk66_rocket_motor,--MK66
		warhead = warheads["BDU"],
},{
	dist_min = 1000,
	dist_max = 2000,    
})

-- M274 practice warhead incorporating a smoke charge designed to produce a flash, bang, and smoke signature on warhead impact
declare_nurs("HYDRA_70_M274", _("HYDRA-70 M274"), "hydra_m156", "nurs-marker",
{
		fm = fm_hydra70_derivative({
			mass        = 6.21+4.22,  -- Motor Mass + Warhead Mass 
			L           = 1.06+0.407, -- Motor Lenght + Warhead Lenght
			shapeName   = "",
		}),
		engine  = mk66_rocket_motor,--MK66
		warhead = warheads["HYDRA_70_SMOKE"],
},{
	dist_min = 1000,
	dist_max = 2000,    
})

-- M257 flare warhead is used to illuminate target areas
declare_nurs("HYDRA_70_M257", _("HYDRA-70 M257"), "Hydra_M278", "nurs-light",
{
		fm = fm_hydra70_derivative({
			mass        = 6.3863, -- Motor Mass + Warhead Mass 
			L           = 1.3815, -- Motor Lenght + Warhead Lenght
			shapeName   = "",
		}),
		engine   = mk66_rocket_motor,--MK66
		launcher = 
		{
			ammunition = weapons_table.weapons.bombs["LUU_2B"],
		},      
		control = 
		{
			delay = 17.0,
		},
},
{
	dist_min = 1000,
	dist_max = 2000,    
})






-----------------------------------------------------------------
-- ZUNI-127
-----------------------------------------------------------------
-- Сделаны из C-8!!!!
-----------------------------------------------------------------
declare_nurs("Zuni_127", _("Zuni-127"), "zuni",  "nurs-standard",
{
        fm = 
        {
            mass        = 47.5103,  
            caliber     = 0.112,    
            cx_coeff    = {1,0.889005,0.67,0.3173064,2.08},
            L           = 2.643,
            I           = 39.00209,
            Ma          = 0.50851,
            Mw          = 3.28844,
            shapeName   = "",
            
            wind_time   = 2.1,
            wind_sigma  = 3,
        },

        engine =
        {
            fuel_mass   = 19.4897,
            impulse     = 180,
            boost_time  = 0,
            work_time   = 2.1,
            boost_factor= 1,
            nozzle_position =  {{-1.0, 0, 0}},
			nozzle_orientationXYZ =  {{0, 0, 0}},
            tail_width  = 0.052,
            boost_tail  = 1,
            work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.5,
        },

    warhead = warheads["Zuni_127"],
},{
    dist_min = 1200,
    dist_max = 4000,    
})

declare_nurs("M26", _("M26"), "M26", "nurs-ground-cluster",
{
    fm = 
    {
        mass        = 306,    
        caliber     = 0.230,    
        cx_coeff    = {1, 0.66, 0.49, 0.2, 1.53},
        L           = 3.56,
        I           = 433.01467,
        Ma          = 0.192352,
        Mw          = 2.521688,
        shapeName   = "",
        
        wind_time   = 2.0,
        wind_sigma  = 3,
    },

    engine =
    {
        fuel_mass   = 85.0,
        impulse     = 270,
        boost_time  = 0,
        work_time   = 2.0,
        boost_factor= 1,
        nozzle_position =  { {-2.05, 0, 0} },
		nozzle_orientationXYZ =  {{0, 0, 0}},
        tail_width  = 1.0,
        boost_tail  = 1,
        work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 0.5,
    },
    
    launcher = 
    {
        cluster = cluster_desc("Bomb_Other", wsType_Bomb_Cluster, combine_cluster(Cluster_MLRS_DATA, --644 M77 DPICM submunitions
        {
            cluster = {
                count        = 644,
                effect_count = 50, 
            
                wind_sigma  = 7,
                impulse_sigma = 35000,
                moment_sigma = 0.0001,
            }
        }))
    },
    
    fuze = 
    {
        fire_height = 1200,
    },
},{
    dist_min = 0,       -- Не используется
    dist_max = 0,   
})


declare_nurs("HVAR", _("HVAR"), "HVAR_rocket", "nurs-standard",
{  
        fm = 
        {
            mass        = 64,    
            caliber     = 0.13, 
            cx_coeff    = {1,0.8889618,0.67,0.3172910,2.08},
            L           = 1.8,
            I           = 39.00209,
            Ma          = 0.50851,
            Mw          = 3.28844,
            shapeName   = "",
			rail_open   = true,          
            wind_time   = 1.3,
            wind_sigma  = 10,
        },

        engine =
        {
            fuel_mass   = 19.4897,
            impulse     = 130,
            boost_time  = 0,
            work_time   = 2.1,
            boost_factor= 1,
            nozzle_position =  {{-0.6,-0, 0}}, --{{-0.6,-0.065, 0}},
			nozzle_orientationXYZ =  {{0, 0, 0}},
            tail_width  = 0.052,
            boost_tail  = 1,
            work_tail   = 1,

            smoke_color = {0.9, 0.9, 0.9},
            smoke_transparency = 1.0,
        },

    warhead = warheads["HVAR"],
},{
    dist_min = 800,
    dist_max = 1500,    
})

