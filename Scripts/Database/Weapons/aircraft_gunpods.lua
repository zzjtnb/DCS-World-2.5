weapons_table.aircraft_gunpods = namespace();


function aircraft_gunpod(gunpod_name, ...)
    local type = _G[gunpod_name];
    if type == nil then
        error("Unknown type for "..gunpod_name);
    end
	aircraft_gunpod_with_wstype(gunpod_name,type,{...})
end

function aircraft_gunpod_with_wstype(gunpod_name,wstype,mounts)
	--print(gunpod_name)
    local res = dbtype("wAircraftGunpodEquipment", {
        ws_type     = wstype;
		gunpod_name  = gunpod_name;
    });
	if not res.short_name then 
		   res.short_name = gunpod_name
	end
	if not res.display_name then 
		   res.display_name = res.short_name
	end
    res.mounts = {};
	
    for i, v in ipairs(mounts) do
        res.mounts[i] = v;
    end
    weapons_table.aircraft_gunpods[gunpod_name] = res
end

--- M134
function M134_gun(muzle_con_,gatl_trigger_,fire_ef_,heat_ef_)

return gun_mount("M_134", { count = 3200}, {muzzle_pos_connector = muzle_con_,  ejector_pos = {-0.7, -0.1,  0.0},
				effects = { heat_ef_, fire_ef_, smoke_effect()}, 
				barrel_circular_error = 0.005}, gatl_trigger_)
end

aircraft_gunpod("M134_L",M134_gun("POINT_MGUN_03",GatlingTrigger(44),fire_effect(43),heat_VEffect(45,7.823,0.462 * 16.0)));
aircraft_gunpod("M134_R",M134_gun("POINT_MGUN_03",GatlingTrigger(44),fire_effect(43),heat_VEffect(45,7.823,0.462 * 16.0)));

--- M134 side
function M134_side_gun(muzle_con_,gatl_trigger_,fire_ef_,heat_ef_,  door_arg)

return gun_mount("M_134", { count = 3200}, {muzzle_pos_connector = muzle_con_,  ejector_pos = {-0.7, -0.1,  0.0},
				effects = { heat_ef_, fire_ef_, smoke_effect(),
				{name = "FeedBelt", arg_main = 552, arg_tail = 553, full_load = 3200, tail_load = 70},
				{name = "CustomArguments", args = {{"ArmedLight",425}} }}, 
				barrel_circular_error = 0.005,
	turret = {	name = "M_134_Turret", Door_Arg	= door_arg,}
	}, gatl_trigger_)
end

aircraft_gunpod("M134_SIDE_L",M134_side_gun("POINT_MGUN",GatlingTrigger(441),fire_effect(46),heat_VEffect(444,7.823,0.462 * 16.0),43));
aircraft_gunpod("M134_SIDE_R",M134_side_gun("POINT_MGUN_01",GatlingTrigger(441),fire_effect(46),heat_VEffect(444,7.823,0.462 * 16.0),44));

-------------------------------------------
-- M60
function M60_side_gun(door_arg)

return gun_mount("M_60", { count = 750 },{muzzle_pos_connector = "POINT_MGUN", 
	ejector_pos = {-0.8, 0.0, 0.05}, 
	ejector_dir = {0.0, 0.0, 4.0},
	effects 	= {fire_effect(46,0.05),smoke_effect(),{name = "FeedBeltBox", arg_v = 552, arg_h = 553, full_load = 750}},
	barrel_circular_error = 0.005,
	turret = {name = "M_60_Turret",  Door_Arg	= door_arg,
						}}
	)
end
	
aircraft_gunpod("M60_SIDE_L",M60_side_gun(43))	
aircraft_gunpod("M60_SIDE_R",M60_side_gun(44))


function KORD_side_gun(muzle_con_,gatl_arg_,effect_arg_number_,heat_arg_,heat_desc_)

return gun_mount("KORD_12_7", { count = 600, reload_every = 50, reload_time = 7, reload_arg = 500 },{muzzle_pos_connector = "POINT_MGUN", 
	ejector_pos = {-1.2, 0.0, 0.05}, 
	ejector_dir = {3.0, 0.0, 0.0},
--	ejector_pos_connector = "ejector_1",
	effects 	= {fire_effect(46,0.05),smoke_effect(),{name = "FeedBeltBox", arg_v = 46, full_load = 600}},
	barrel_circular_error = 0.0007,
	turret = {	name = "KORD_side_gun"}})
end

function PKT_side_gun(muzle_con_,gatl_arg_,effect_arg_number_,heat_arg_,heat_desc_)

return gun_mount("PK_mix_1", { count = 750, reload_every = 250, reload_time = 7, reload_arg = 500 },{muzzle_pos_connector = "POINT_MGUN", 
	ejector_pos = {-1.0, 0.0, -0.05}, 
	ejector_dir = {0.0, 0.0, -4.0},
	effects 	= {fire_effect(46,0.05),smoke_effect(),{name = "FeedBeltBox", arg_v = 552, arg_h = 553, full_load = 750}},
	barrel_circular_error = 0.001,
	turret = {	name = "PKT_tail_gun"}})
end

aircraft_gunpod("KORD_12_7",KORD_side_gun())	
aircraft_gunpod("PKT_7_62",PKT_side_gun())
----------------------------------------------------------------------
--MI-8 pods	
aircraft_gunpod("UPK_23_25",gun_mount("GSh_23_UPK", { count = 250}, {muzzle_pos = {1.257,-0.12,0.0}, ejector_pos = {-0.7, -0.1,  0.0},
				effects = {fire_effect(15),smoke_effect()} } ));
				
aircraft_gunpod("SPPU_22",gun_mount("GSh_23_SPUU22", { count = 260}, {muzzle_pos = {0.189,-0.315,0.0}, ejector_pos = {-0.7, -0.1,  0.0},
				effects = {fire_effect(15),smoke_effect()} } ));
				
GSHG_7_62_heat_desc = 
{ shot_heat = 1.3, barrel_k = 0.462 * 8.0, body_k = 0.462 * 11.0}

YakB_12_7_heat_desc = 
{ shot_heat = 7.0, barrel_k = 0.462 * 18.0, body_k = 0.462 * 28.0}
				
aircraft_gunpod("GUV_YakB_GSHP",
				gun_mount("GSHG_7_62", { count = 1800}, {muzzle_pos_connector = "Point_Gun_R",ejector_pos = {-0.6, -0.12,  -0.47}, 
															effects = {gatling_effect(2, 4, 0.25 * 0.33, 0.5 * 0.33), 
															fire_effect(5),smoke_effect(),
															heat_effect(1.3, 0.462 * 8.0, 0.462 * 11.0)},
															barrel_circular_error = 0.002}),
															
				gun_mount("GSHG_7_62", { count = 1800}, {muzzle_pos_connector = "Point_Gun_L", ejector_pos = {-0.6, -0.12,  -0.12}, 
															effects = {gatling_effect(3, 4, 0.25 * 0.33, 0.5 * 0.33), 
															fire_effect(6),smoke_effect(),
															heat_effect(1.3, 0.462 * 8.0, 0.462 * 11.0)},
															barrel_circular_error = 0.002 }),
															
				gun_mount("YakB_12_7", { count = 750}, {muzzle_pos_connector = "Point_Gun", ejector_pos = {-0.9, -0.12,  -0.32}, 
															effects = {gatling_effect(1, 4, 0.25 * 0.33, 0.5 * 0.33), 
															fire_effect(4),smoke_effect(),
															heat_effect(7.0, 0.462 * 18.0, 0.462 * 28.0)},
															barrel_circular_error = 0.002, heat_desc = YakB_12_7_heat_desc}));
				
aircraft_gunpod("GUV_VOG", gun_mount("AP_30_PLAMYA", { count = 300}, {muzzle_pos_connector = "Point_Gun", ejector_pos = {-0.7, -0.1,  0.0}, 
effects = {fire_effect(15),smoke_effect()} }));
----------------------------------------------------------------

aircraft_gunpod("OH_58_BRAUNING",gun_mount("M2_OH58D", { count = 250}, {muzzle_pos = {0.189,-0.315,0.0}, ejector_pos = {-0.7, -0.1,  0.0},
				effects = {fire_effect(15),smoke_effect()} } ));