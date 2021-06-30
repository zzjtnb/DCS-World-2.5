guns_by_wstype = {}

function get_aircraft_ammo_mass(guns)
	if not guns then
		return 0 
	end
	local m = 0
    for i,v in ipairs(guns) do
        m = m + v.supply.get_mass();
    end
    return m;
end
local function reg_guns_wstype(wstype,res)
	if  wstype then
		guns_by_wstype[wstype] = res
	end
end
function aircraft_guns(craft_name, ...)
	local res = {};
    for i, v in ipairs{...} do
        res[i] = v;
    end

	if type(craft_name) == 'table' then 
		for i,o in ipairs(craft_name) do
			reg_guns_wstype(_G[o],res)
		end
	else
		reg_guns_wstype(_G[craft_name],res)
	end
end

function fire_effect(fire_arg,duration,attenuation,light_pos)  
	return { name = "FireEffect", arg = fire_arg,duration = duration or 0.02, attenuation = attenuation or 2 , light_pos = light_pos or {0.5,0,0}}
end

function smoke_effect()  
	return { name = "SmokeEffect"}
end

function heat_VEffect(heat_arg, shot_heat_, barrel_k_, body_k_ ) 
	return { name = "VisualHeatEffect", arg = heat_arg, shot_heat = shot_heat_, barrel_k = barrel_k_, body_k = body_k_}
end

function heat_effect(shot_heat_, barrel_k_, body_k_ ) 
	return { name = "HeatEffectExt", shot_heat = shot_heat_, barrel_k = barrel_k_, body_k = body_k_}
end

function gatling_effect(rotate_arg_, bar_, spin_up_, spin_down_) 
	return { name = "GatlingEffect", 
	arg = rotate_arg_, barrels_n = bar_, spin_up_t = spin_up_, spin_down_t = spin_down_}
end

function GatlingTrigger(rotate_arg_) 
	return { name = "DelayedGatlingTrigger", 
	arg = rotate_arg_, barrels_n = 6, spin_up_t = 0.25 * 0.33, spin_down_t = 0.25 * 0.33}
end

function gun_mount(template_name, ammo_override, mount_override, trigger_override)
    local template = gun_mount_templates[template_name];
    
    if template == nil then
        error("Unknown aircraft gun mount template: "..template_name);
    end
    
    local res = dbtype("wAircraftGunMount", {});
	
    res.supply_position      = {0, 0, 0}
	res.muzzle_pos		   	 = {3.11, -1.2, 0}
	res.muzzle_pos_connector = "Gun_point"
	res.azimuth_initial      = 0
	res.elevation_initial    = 0
	res.aft_gun_mount		 = false
	
	res.ejector_pos = {-0.5, -0.5,  0.0}
	res.ejector_dir = {-2.0, -5.0,  0.0}

    copy_recursive_with_metatables(res, template, 2);
    copy_recursive(res.supply, ammo_override);  
    if mount_override ~= nil then
        copy_recursive(res, mount_override); 
		if mount_override.max_burst_length then
		   res.gun.max_burst_length = mount_override.max_burst_length
		end
		if mount_override.impulse_vec_rot then
		   res.gun.impulse_vec_rot = mount_override.impulse_vec_rot
		end
	end

	if res.gun.impulse_vec_rot == nil then
	   res.gun.impulse_vec_rot = {x = 0,y = 0,z = 0}
    end
	
	if not res.short_name then 
		   res.short_name = template_name
	end
	
	if not res.display_name then 
		   res.display_name = res.short_name
	end
	if res.drop_cartridge == nil then
	   res.drop_cartridge = template.drop_cartridge or 0
	end   

	if trigger_override ~= nil then
		template.gun.trigger = trigger_override
	end
	
	--default fire effect
	if res.effects == nil then
		res.effects = {fire_effect(350),smoke_effect()}
	end
	
	--default gun trigger
	if template.gun.trigger ~= nil then
	   res.gun.trigger = template.gun.trigger 
	else
       res.gun.trigger = {name ="GunTrigger"}
	end
	
    res.supply.get_mass = function () return template.supply.get_mass_(res.supply) end        
    
    return res;
end

function Gatling_Effect(rotate_arg_, bar_) 
	return { name = "GatlingEffect", arg = rotate_arg_, barrels_n = bar_}
end

function A10C_Gatling_Effect(rotate_arg_,bar_) 
	return { name = "A10C_GatlingEffect", arg = rotate_arg_,barrels_n = bar_}
end

aircraft_guns("MiG_23", 
    gun_mount("GSh_23_2", { count = 260 },{muzzle_pos = {3.11, -1.2, 0.0}})
);

aircraft_guns({"MiG_29","MiG_29C","MiG_29G","MIG_29K"},
    gun_mount("GSh_30_1", { count = 150 },{muzzle_pos = {5.435,  0.268,-0.559}})
);


aircraft_guns("SU_17M4", 
    gun_mount("NR_30", { count = 80 },{muzzle_pos = {2.544,  0.113,-0.953}}), 
    gun_mount("NR_30", { count = 80 },{muzzle_pos = {2.544,  0.113, 0.953}})
);


aircraft_guns({"Su_27"},
    gun_mount("GSh_30_1",
	{
		count = 150 
	},
	{
		muzzle_pos 			  = {6.44,   0.34,  1.0},
		--elevation_initial	  = 2.0,
		drop_cartridge 		  = 203; --30mm
		ejector_dir 		  = {7.0 ,-1.0,0.5},
		ejector_pos_connector = "eject 1",
	})
);

aircraft_guns({"Su_33","Su_30"},
    gun_mount("GSh_30_1",
	{
		count = 150 
	},
	{
		muzzle_pos 			  = {6.44,   0.34,  1.0},
		elevation_initial	  = 2.0,
		drop_cartridge 		  = 203; --30mm
		ejector_pos 		  = {-2.47, -0.190827, 0.196687}, -- for old models without connectors , relative to muzzle pos
		ejector_dir 		  = {0.0     , 0.0, 4.0},
	})
);

aircraft_guns("MiG_31", 
    gun_mount("GSh_23_6", { count = 260 },{muzzle_pos = {-0.125, -0.458, 1.75},
	effects = {Gatling_Effect(351,6), fire_effect(350),smoke_effect()}})
);

aircraft_guns("MiG_27", 
    gun_mount("GSh_30_6", { count = 320 },{muzzle_pos = {3.138, -1.195, 0.0},
	effects = {Gatling_Effect(351,6), fire_effect(350),smoke_effect()}})  
);

aircraft_guns("Su_24",
    gun_mount("GSh_23_6", { count = 500 },{muzzle_pos = {3.273, -1.1, 0.605},
	effects = {Gatling_Effect(351,6), fire_effect(350),smoke_effect()}})
);


aircraft_guns("Su_25", 
    gun_mount("GSh_30_2", { count = 250 },{muzzle_pos = {5.120, -1.233,  -0.318}})
);

aircraft_guns({"Su_25T","Su_39"}, 
    gun_mount("GSh_30_2", { count = 250 },{muzzle_pos = {3.676, -1.132, 0.26}}) 
);

aircraft_guns("Su_34", 
    gun_mount("GSh_30_1", { count = 150 },{muzzle_pos = {5.9, 0.48,  1.5},elevation_initial = 2.0}) --,5.9,    0.48,  1.5)
);

function GSh_23_2_tail_defense(tbl) 
	tbl.barrel_circular_error = 0.007
	tbl.aft_gun_mount		  = true
	tbl.azimuth_initial		  = 180
	tbl.muzzle_pos			  = tbl.muzzle_pos or {-18.5, 1.95, -0.055}

	tbl.effects = {fire_effect(350),
				   smoke_effect(),
				   {name = "TurretOrietation" , azimuth_arg = 451 , elevation_arg = 452 , azimuth_k = 1/25, elevation_k = 1/17}}
	
	return gun_mount("GSh_23_2", { count = 1200 },tbl)
end

aircraft_guns("Tu_22M3" , GSh_23_2_tail_defense({muzzle_pos = {-18.5	, 1.95	, -0.055},	}))
aircraft_guns("Tu_95"	, GSh_23_2_tail_defense({muzzle_pos = {-26.772	, 0.623	, 0.0},	}))
aircraft_guns("Tu_142"	, GSh_23_2_tail_defense({muzzle_pos = {-26.816	, 0.672	, 0.0},	}))
aircraft_guns("IL_76"	, GSh_23_2_tail_defense({muzzle_pos = {-23.352	, 2.19	, 0.0},	}))

aircraft_guns("F_14", 
    gun_mount("M_61", { count = 675 },{muzzle_pos = {9.214, -0.029,-0.621}})
);

aircraft_guns("F_15", 
    gun_mount("M_61", { count = 940 },{muzzle_pos = {3.209,  0.372, 1.749},elevation_initial = 2.0})
);

aircraft_guns("F_15E", 
    gun_mount("M_61", { count = 940 },{muzzle_pos_connector = "GUN_POINT", muzzle_pos = {3.209,  0.372, 1.749},elevation_initial = 2.0})
);

aircraft_guns({"F_16","F_16A"},
    gun_mount("M_61", { count = 511 },{muzzle_pos = {3.183,  0.404,-0.79}}) 
);

aircraft_guns({"FA_18","FA_18C"},
    gun_mount("M_61", { count = 578 },{muzzle_pos = {6.934,  0.4, 0.0},elevation_initial = 2.0}) 
);

aircraft_guns("F_2", 
    gun_mount("BK_27", { count = 180 },{muzzle_pos = {5.834, -0.609,  0.646}})
);

aircraft_guns("TORNADO_IDS", 
    gun_mount("BK_27", { count = 180 },{muzzle_pos = {5.834, -0.609, -0.646}}), 
    gun_mount("BK_27", { count = 180 },{muzzle_pos = {5.834, -0.609,  0.646}})
);

-- Moved to CoreMods
--[[
aircraft_guns({"A_10A","A_10C"},
    gun_mount("GAU_8", 
        { count = 1150 },
        { 
		  supply_position 	   = {2.8, -0.18, 0.0},
		  muzzle_pos		   = {7.135, -0.149,-0.086},
		  effects = {Gatling_Effect(351,7), fire_effect(350,0.02,4), smoke_effect()}
		} 
    )
);
--]]

aircraft_guns("F_4E",
    gun_mount("M_61", { count = 640 },{muzzle_pos = {8.863, -0.849, 0.0}})
);

aircraft_guns("Mirage",
    gun_mount("DEFA_554", { count = 125 },{muzzle_pos = {1.519, -0.463,-0.31}}),
    gun_mount("DEFA_554", { count = 125 },{muzzle_pos = {1.519, -0.463, 0.31}})
);

aircraft_guns("AV_8B",
    gun_mount("ADEN", { count = 200 }),
    gun_mount("ADEN", { count = 200 })
);

aircraft_guns("MI_24W",
    gun_mount("YakB_12_7", { count = 1400 },{muzzle_pos = {6.689, -1.049,  0.0}, ejector_pos = {-1.2, -0.2, 0.0}, 
	effects = {Gatling_Effect(351,4), fire_effect(350),smoke_effect()}})
);

aircraft_guns({"KA_50","KA_52"},
    gun_mount("2A42", 
        {
			count1 = 240, 
			count2 = 220, 
			second_box_offset = {0.909, 0, 0} 
		}, 
        {
			supply_position = {0.305, -0.6, 0.0},
			muzzle_pos		= {2.793, -0.908, 0.905},
			ejector_pos = {-2.75, 0.0, 0.2}, 
            ejector_dir = {0.0, 0.0, 0.5},
		} 
    )
);


aircraft_guns("MI_28N",
    gun_mount("2A42", { count1 = 240, count2 = 220 },{muzzle_pos= {3.881, -1.821,  0.0}})
);

aircraft_guns({"AH_64A","AH_64D"},
    gun_mount("M_230", { count = 1200 },{muzzle_pos = {3.881, -1.821,  0.0}})
);

aircraft_guns("AH_1W",
    gun_mount("M_197", { count = 750 },{muzzle_pos = {5.375, -1.312,  0.0}, ejector_pos = {-1.45, -0.3, 0.0}, 
	effects = {Gatling_Effect(351,3), fire_effect(350),smoke_effect()}})
);

