-- requires: i_18n
local gettext = i_18n
db = db or {}
------------------------------------
-- script used in several states . it is enough to print errors once 

local log     = log
local print_  = print
local assert_ = assert
if  _TryAuthorize then
    if not log then
	log = require("log")
    end
else
	local devnull = function(...) end
	log = { 
		info  = devnull,
		error = devnull,
		debug = devnull,
		alert = devnull,
	}
	print_  = devnull
	assert_ = devnull
end

-------------------------------------
local WSTYPE_PLACEHOLDER = "</WSTYPE>"

local next_aircraft_index    	= 255
local next_bomb_index 	     	= 255
local next_missile_index 	 	= 255
local next_container_index	 	= 255
local parts_index_start      	= 255
local next_surface_unit_index 	= 255   -- !! ships AND ground vehicles

local multi_unit 			 = nil

plugins = {}

--ordered table with taking  "rules" in to accout
plugins_ordered = {}
plugins_by_id = {}

theatres = {}
theatresByName = {}

torpedoes ={}

local parts_by_shape =
{
	
}

local function next_bomb() 
	local v = next_bomb_index
	next_bomb_index = next_bomb_index + 1
	return v
end

local function next_missile()
	local v = next_missile_index
	next_missile_index = next_missile_index + 1
	return v
end

local function next_container()
	local v = next_container_index
	next_container_index = next_container_index + 1
	return v
end

local function next_aircraft()
	local v = next_aircraft_index
	next_aircraft_index   = next_aircraft_index   + 1
	return v
end

local function next_surface_unit()
	local v = next_surface_unit_index
	next_surface_unit_index   = next_surface_unit_index   + 1
	return v
end

local next_torpedo = next_missile

ModsModelPaths       = {}
ModsTexturePaths     = {}

ModsPreloadResources = {
textures   = {},
models     = {},
fonts      = {},
explosions = {},
}

ModsWeaponNames = {}

ModsShapeTable   = 
{
	PlaneTable     = {},
	MissileTable   = {},
	ContainerTable = {},
	BombTable	   = {},
	TechnicsTable  = {},
	ShipTable	   = {},
	PartsTable	   = {}
}

ModsShapeTableByShapeName   = 
{
	PlaneTable     = {},
	MissileTable   = {},
	ContainerTable = {},
	BombTable	   = {},
	TechnicsTable  = {},
	ShipTable	   = {},
	PartsTable	   = {}
}

local function add_shape_table(target_name,source,index)
	local target  	   = ModsShapeTable			  [target_name]
	local target_names = ModsShapeTableByShapeName[target_name]
	if source and source.shape_table_data then	
		for i,o in ipairs(source.shape_table_data) do
			if o.name == nil then 
			   o.name =  o.file
			end
			local saved = target_names[o.name]
			
			if  saved == nil then
				if index   ~= nil and 
				   o.index == WSTYPE_PLACEHOLDER then
				   o.index  = index
				end
				if  target 		 == ModsShapeTable.PlaneTable then
					o.classname   = "lLandPlane"
					o.positioning = "BYNORMAL"
				end
				target_names[o.name] = o
				table.insert(target,o)
			else
				o.index = saved.index
			end
		end
	end
end

local db_path 	= db_path or "./Scripts/Database/"

local function mount_vfs_model_path(path)
	if curPlugin then
	   curPlugin.ModsModelPaths[#curPlugin.ModsModelPaths + 1] = path
	end
end

local function mount_vfs_liveries_path(path)
	if curPlugin then
	   curPlugin.ModsLiveriesPaths[#curPlugin.ModsLiveriesPaths + 1] = path
	end
end

local function mount_vfs_texture_path(path)
	if curPlugin then
	   curPlugin.ModsTexturePaths[#curPlugin.ModsTexturePaths + 1] = path
	end
end

local function mount_vfs_animations_path(path)
	if curPlugin then
	   curPlugin.ModsAimationsPaths[#curPlugin.ModsAimationsPaths + 1] = path
	end
end

local function mount_vfs_sound_path(path)
	if curPlugin then
		local fn = current_file or '?'
		log.info('OBSOLETE mount_vfs_sound_path() used in ' .. fn)
	end
end


local payable_unit_catergories = 
{
	db.Units.Planes.Plane, 
	db.Units.Helicopters.Helicopter, 
	db.Units.Cars.Car, 
	db.Units.Ships.Ship,
}

local function find_unit(unit)
	for j,cat in ipairs(payable_unit_catergories) do
		for i, unit_data in pairs(cat) do
			if unit_data.Name == unit then 
				return unit_data
			end
		end
    end
	return nil
end


local function get_table_to_insert(root_table,t) 
	if not t.attribute then
		return nil
	end
	
	local L1 	= t.attribute[1] 
	local L2 	= t.attribute[2]
	local ret   = nil
	if     L1  == wsType_Air	   then
		if L2 == wsType_Airplane   then
			ret  = root_table.Units.Planes.Plane
			if not ret then 
				   ret  = {}
				   root_table.Units.Planes.Plane = ret
			end
		else
			ret  = root_table.Units.Helicopters.Helicopter
			if not ret then 
				   ret  = {}
				   root_table.Units.Helicopters.Helicopter = ret
			end
		end
	elseif L1 == wsType_Ground 	then
		ret  = root_table.Units.Cars.Car
		if not ret then 
			   ret  = {}
			   root_table.Units.Cars.Car = ret
		end
	elseif L1 == wsType_Navy 	then
		ret  = root_table.Units.Ships.Ship
		if not ret then 
			   ret  = {}
			   root_table.Units.Ships.Ship = ret
		end
 	else
		if t.category == "LTAvehicle" then
			ret = root_table.Units.LTAvehicles.LTAvehicle
		    if not ret then
				ret  = {}
				root_table.Units.LTAvehicles.LTAvehicle = ret
		   end
		   --if  root_table == db then
				--log.info(t.category) 
				--log.info(#ret)
			--end
        elseif t.category == "WWIIstructure" then
			ret = root_table.Units.WWIIstructures.WWIIstructure
		    if not ret then
				ret  = {}
				root_table.Units.WWIIstructures.WWIIstructure = ret
		   end 
		elseif t.category == "ADEquipment" then
			ret = root_table.Units.ADEquipments.ADEquipment
		    if not ret then
				ret  = {}
				root_table.Units.ADEquipments.ADEquipment = ret
		   end     
		elseif t.category == "Warehouse" then
			ret  = root_table.Units.Warehouses.Warehouse
			if not ret then 
				   ret  = {}
				   root_table.Units.Warehouses.Warehouse = ret
			end
		elseif t.category == "Cargo" then
			ret  = root_table.Units.Cargos.Cargo
			if not ret then 
				   ret  = {}
				   root_table.Units.Cargos.Cargo = ret
			end
		elseif t.category == "Heliport" then
			ret  = root_table.Units.Heliports.Heliport
			if not ret then 
				   ret  = {}
				   root_table.Units.Heliports.Heliport = ret
			end
		elseif t.category == "GroundObject" then
			ret  = root_table.Units.GroundObjects.GroundObject
			if not ret then 
				   ret  = {}
				   root_table.Units.GroundObjects.GroundObject = ret
			end
		elseif t.category == "Personnel" then
			ret  = root_table.Units.Personnel.Personnel
			if not ret then 
				   ret  = {}
				   root_table.Units.Personnel.Personnel = ret
			end
		elseif t.category == "Animal" then
			ret  = root_table.Units.Animals.Animal
			if not ret then 
				   ret  = {}
				   root_table.Units.Animals.Animal = ret
			end
		else
			ret  = root_table.Units.Fortifications.Fortification
			if not ret then 
				   ret  = {}
				   root_table.Units.Fortifications.Fortification = ret
			end
		end
	end
	return ret
end

local function register_as_unit(t)

	if not CurrentlyMergedPlugin then 
		log.error("register_as_unit should be called only in MERGE")
		return 
	end
	
	local units = get_table_to_insert(db,t)
	if units then
		local replaced_unit = false
		for i,o in ipairs(units) do
			if o.Name == t.Name then
				if  CurrentlyMergedPlugin._loader_info.manifestOK then -- signature verified 
					replaced_unit = true
					units[i] 	  = t;
					log.info ("plugin: "..CurrentlyMergedPlugin.id.. " unit replace ".. t.Name)
				else
					log.error("plugin: "..CurrentlyMergedPlugin.id.." unit replace " .. t.Name.. " not allowed")
					return
				end
				if plugin_signature_verified then
					return true
				end
				break
			end
		end
		if not replaced_unit then 
			table.insert(units,t)
		end
	end
	
	local target_countries_list = db.Countries
	if  t.Countries then 
		target_countries_list = {}
		for i,o in pairs(t.Countries) do
			local t = db.CountriesByName[o] 
			if t then 
			   target_countries_list[#target_countries_list + 1] = t
			end
		end
	end
	
	local inserted_to_coutry  = {Name = t.Name}
	for i,country in ipairs(target_countries_list) do
		local units = get_table_to_insert(country,t)
		local exist = false
		if units then
			for i,o in ipairs(units) do
				if o.Name == inserted_to_coutry.Name then
					exist = true
					break
				end
			end
			if not exist then
				table.insert(units,inserted_to_coutry)
			end
		end
	end
end

local function fixCanDrive(GT)
    if(GT) then
		local enablePlayerCanDrive = false
		if GT.driverViewConnectorName and GT.driverViewConnectorName ~= "" then
			enablePlayerCanDrive = true
		else
			if GT.driverViewPoint and type(GT.driverViewPoint) == "table" then
				for k,v in pairs(GT.driverViewPoint) do
					if v >= 0.001 then
						enablePlayerCanDrive = true
						break
					end
				end
			end
		end
		if enablePlayerCanDrive == false then
			if GT.WS then
				for k,v in pairs(GT.WS) do
					if v and type(v) == "table" then
						if v.cockpit ~= nil then
							enablePlayerCanDrive = true
							break
						end
						if v.LN then
							for kk,vv in pairs(v.LN) do
								enablePlayerCanDrive = enablePlayerCanDrive or (vv.customViewPoint ~= nil)
								if enablePlayerCanDrive then
									break
								end
							end
						end
					end
				end
			end
		end
		GT.enablePlayerCanDrive = enablePlayerCanDrive
    end
end


local function mark_origin(t)
	t._file   = current_file
	t._origin = curPlugin.id
end


local function add_surface_unit(t,message)
    local message = message or t.Name
	--========================
	if curPlugin then
		mark_origin(t)
		table.insert(curPlugin.units.technics,t);
		return
	end
	
	local index = nil
	
	if t.attribute and 
	   t.attribute[4]  ~= nil and 
	   t.attribute[4]  == WSTYPE_PLACEHOLDER then
	   ---------------------------------------
	   index = next_surface_unit()
	   ---------------------------------------
	   t.attribute[4]  = index 
	end
	
	add_shape_table("TechnicsTable",t,index)
	
    fixCanDrive(t)
	fixUnit(t) 
	register_as_unit(t)
end



local function form_helicopter(t)
    t.MaxSpeed  = t.V_max
end


local function check_parts_table_declaration(idx)
	if type(idx) == 'string' then --newly defined shape
		if parts_by_shape[idx] == nil then
		   add_shape_table("PartsTable",
		   {
				shape_table_data =
				{
					{
						file  = idx;
						life  = 60;
						fire  = { 0, 1};
						index = parts_index_start;
					},
				}
		   },
		   parts_index_start)
		   parts_by_shape[idx] = parts_index_start	   
		   parts_index_start   = parts_index_start + 1
		end
		return parts_by_shape[idx]
	end 
	return idx
end

local function form_plane(t)
	t.brakeshute_name = check_parts_table_declaration(t.brakeshute_name)
    t.WingSpan  	  = t.wing_span
    t.MaxSpeed  	  = t.V_max_h * 3.6
end

local function add_aircraft(t)
	if curPlugin then
		mark_origin(t)
		table.insert(curPlugin.units.aircrafts,t);
		return 
	end
	if  t.Picture == nil then
        t.Picture = res.Name .. ".dds";
    end 
	
	if not t.WorldID or 
		   t.WorldID == WSTYPE_PLACEHOLDER then
		   t.WorldID = next_aircraft()  
	end
	t._MAC_compatible	= nil
	t.attribute[4]  	= t.WorldID
	
	if  not t.Pylons then
		t.Pylons = {}
	end
	
    t.EmptyWeight       = t.M_empty
    t.MaxFuelWeight     = t.M_fuel_max
    t.MaxTakeOffWeight  = t.M_max
    t.MaxHeight         = t.H_max
	if t.HumanRadio   == nil then
       t.HumanRadio = {
            frequency = 251.0,
            editable = true,
            minFrequency = 225.000,
            maxFrequency = 399.975,
            modulation = MODULATION_AM
            }
    end
  
   	
	add_shape_table("PlaneTable",t,t.WorldID)

	t.AmmoWeight = get_aircraft_ammo_mass(t.Guns);

	for i,crew_member in pairs(t.crew_members) do
		crew_member.ejection_seat_name = check_parts_table_declaration(crew_member.ejection_seat_name)			   
		crew_member.drop_canopy_name   = check_parts_table_declaration(crew_member.drop_canopy_name)	
		crew_member.pilot_name		   = check_parts_table_declaration(crew_member.pilot_name)
	end
	
	if #t.Tasks == 0 then
		t.Tasks = {    
					aircraft_task(Reconnaissance)
				  }
	end
	
	fixUnit(t)
	if  t.attribute[2] == wsType_Airplane then
        form_plane(t)
    else -- helicopter
        form_helicopter(t)
    end
    
    fill_mechanimation(t)
    
	check_crew_roles(t.crew_members)
	register_as_unit(t)
end


local function reg_changes(self,db_table,index,value)
	if not self then 
		return
	end
	db_table[index] = value
	if not self.database_changes then
		   self.database_changes = {}
	end
	self.database_changes[#self.database_changes + 1] = {db_table,index}
end

local function revert_changes(self)
	if not self or not self.database_changes then 
		return
	end
	for i,o in pairs(self.database_changes) do
		if  o[1] ~= nil and 
			o[2] ~= nil then
			o[1][o[2]] = nil
		end
	end
	self.database_changes = {}
end

----------------------------------------------------------------------------------------
local function new_plugin()

	local plugin =  {}
	
	plugin._loader_info    			= curPluginLoaderInfo
	plugin.type            			= curPluginLoaderType

	plugin.reg    					= reg_changes
	plugin.revert 					= revert_changes
	
	plugin.discarded        		= false		
	plugin.dirName 					= current_mod_path
	plugin.shortName 				= dir_short_name
    plugin.ModsModelPaths   		= {}
    plugin.ModsTexturePaths 		= {}
    plugin.ModsLiveriesPaths 		= {}
    plugin.ModsAimationsPaths 		= {}
	plugin.weapon           		= {}
	plugin.loadout          		= {}
	plugin.sensors                  = {}
	plugin.various_unit_settings 	= {}
	plugin.units			   		= {
		aircrafts 			 = {},
		technics		 	 = {},	
	}
	plugin.units_added_to_countries	= {}
	plugin.executed_lua				= {}
	plugin.database_changes			= {}
	if gettext then
	   gettext.add_package("messages", plugin.dirName .. "/l10n")
	end
	return plugin
end

local function check_required_data(plugin)
	if plugin.discarded then
		if gettext then
		   gettext.remove_package("messages", plugin.dirName .. "/l10n")
		end
	   if not blank_run then
		  return
	   end
	end
	plugin._loader_info.supported = true
	if not plugin.id then
	        if (not plugin.update_id) and (not plugin.displayName) then 
			log.info("plugin ", current_mod_path, "has neither id, nor update_id, nor displayName - excluded")
			plugin._loader_info.supported = false
	        end
	        plugin.id = current_mod_path
	end
	if not plugin.displayName or 
	   not plugin.developerName then
		local o = string.find(plugin.id," by ")
		if not plugin.displayName then
			   plugin.displayName = plugin.id
			if o ~= nil then
				plugin.displayName = string.sub(plugin.displayName,1,o)
			end
		end
		if not plugin.developerName then
			if o ~= nil then
				plugin.developerName = string.sub(plugin.id,o + 4)
			else
				plugin.developerName = "Unknown"
			end
		end
	end
	if plugin.discarded then
		if not plugin_discarded then
			plugin_discarded = {}
		end
		plugin.order 					= #plugin_discarded + 1
		plugin_discarded[plugin.order]	= curPlugin
	else
		plugin.order 					= #plugins + 1
		plugins	     [plugin.order]		= curPlugin
		plugins_by_id[plugin.id] 		= curPlugin
	end

end


local function declare_plugin(plugin_id,info_table)
	
	if not curPlugin then
		curPlugin = new_plugin()
	end

	if  not plugin_id or 
		plugins_by_id[plugin_id] ~= nil then
		curPlugin.discarded		  = true
		if not blank_run then
			return
		end
	end
	local tbl = info_table or {}
	curPlugin.id 			   = plugin_id
	if tbl.shortName then
	   curPlugin.shortName = tbl.shortName
	end
	for i,o in pairs(tbl) do
		if curPlugin[i] == nil then
		   curPlugin[i]  = o
		end
	end
end

local function plugin_done()
	if curPlugin then 
	   check_required_data(curPlugin)
	   curPlugin.is_core = false
	end
	curPlugin = nil
end

local function plugin_done_core()
	if curPlugin then 
	   check_required_data(curPlugin)
	   curPlugin.is_core = true
	end 	   
	curPlugin = nil
end




local function add_unit_to_country(unit,countries)
  local c = nil
	if type(countries) == 'table' then
	   c = countries
	else
	   c = {countries}
	end
	if  curPlugin then
	    if curPlugin.units_added_to_countries[unit] == nil then
		   curPlugin.units_added_to_countries[unit] = {}
		end
	    local target_table = curPlugin.units_added_to_countries[unit]
	    for i,o in ipairs(c) do
		     target_table[#target_table + 1] = o
		end
		return
	end
 
	local t = find_unit(unit)
	
	if not t then
		return 
	end
	local target_countries_list = {}
	for i,o in pairs(c) do
		local cc = db.CountriesByName[o] 
		if cc then 
		   target_countries_list[#target_countries_list + 1] = cc
		end
	end
	local inserted_to_coutry  = {Name = t.Name}
	for i,country in ipairs(target_countries_list) do
		local units = get_table_to_insert(country,t)
		if units then
			table.insert(units,inserted_to_coutry)
		end
	end
end

local wstype_chunk,err = loadfile(db_path.."wsTypes.lua")

local function mod_handler_load(file_path,env)
    local f,err = loadfile(file_path)
    if not f then
        log.alert("loadfile: "..err)
        return nil,err
    end
	log.debug(file_path)
	current_file  	  									= file_path	
 	env.current_file  									= current_file 
    curPlugin.executed_lua[#curPlugin.executed_lua + 1] = current_file;	
    setfenv(f,env)
	return f
end

local function check_placeholder(wstype_table,indexer_function)
	if type(wstype_table[4]) == 'number' then
		return false;
	end
	wstype_table[4] = indexer_function();
	return true
end

local function registerWeaponName(tbl)

	if tbl.wsTypeOfWeapon ~= nil and (tbl.user_name ~= nil or tbl.display_name ~= nil) then
		local k = wsTypeToString(tbl.wsTypeOfWeapon)
		if ModsWeaponNames[k] == nil then
		   ModsWeaponNames[k]  = tbl.user_name or tbl.display_name
		end	
	end
	
	registerResourceName(tbl)
end


local function  logDuplicate(tbl_candidate,name_of_dup)	
	log.error("DUPLICATE not allowed :"..name_of_dup ..",\tfrom\t"..tbl_candidate._file)			
end

local function checkDuplicateBy_wstype(tbl_exist,tbl_candidate,user_mod)

    if not user_mod then 
	   return true
	end
	local lev4 = tbl_candidate.wsTypeOfWeapon[4]
	if lev4 ~= nil then
		for i,o in pairs(tbl_exist) do 
			 if o.Name == lev4 then
				logDuplicate(tbl_candidate,o._unique_resource_name)
				return false
			 end
		end
	end
	return true
end

local function checkDuplicateBy_name(tbl_exist,tbl_candidate,user_mod)
    if not user_mod then 
	   return true
	end
	
	local  o = tbl_exist[tbl_candidate.name]
	if  o ~= nil then
		logDuplicate(tbl_candidate,o._unique_resource_name)
		return false
	end
	return true
end

local nurses = weapons_table.weapons.nurs 
local shells = weapons_table.weapons.shells 

local function declare_weapon(tbl)
	if curPlugin then
		mark_origin(tbl)
		if tbl.category  == CAT_CLUSTER_DESC then
		   tbl.descriptor = {}
		end
		table.insert(curPlugin.weapon,tbl)
		return tbl
	end
	--clear declaration if someone tried to force in mod
	tbl._unique_resource_name = nil

	local user_mod =  not CurrentlyMergedPlugin._loader_info.requiresManifest

	if 	   		tbl.category == CAT_SHELLS then 
		if  not checkDuplicateBy_name(shells,tbl,user_mod) then 
			return
		end
		shell(tbl.name,tbl.user_name,tbl)
	elseif		tbl.category == CAT_GUN_MOUNT then 
		declare_gun_mount(tbl.name,tbl)
	elseif 	   tbl.category == CAT_BOMBS then
		-------------------------------------------------------------
		check_placeholder(tbl.wsTypeOfWeapon,next_bomb)
		if not checkDuplicateBy_wstype(bombs,tbl,user_mod) then
			return
		end		
		-------------------------------------------------------------
		local lev4 = tbl.wsTypeOfWeapon[4]
		
		declare_bomb(tbl.name, 
					 tbl.user_name,
					 tbl.model, 
					 tbl.wsTypeOfWeapon[3],
					 tbl.scheme,
					 tbl,
					 tbl.targeting_data,
					 tbl.class_name,
					 lev4)
		table.insert(bombs,{Name	  	 = lev4,
							type 	  	 = tbl.type,
							mass 	  	 = tbl.fm.mass,
							hMin    	 = tbl.hMin,
							hMax    	 = tbl.hMax,
							Cx      	 = tbl.Cx,
							VyHold  	 = tbl.VyHold,
							Ag      	 = tbl.Ag,
							warhead 	 = tbl.warhead,
							name 		 = tbl.name,
							display_name = tbl.user_name,
							type_name 	 = tbl.type_name,
							ws_type		 = tbl.wsTypeOfWeapon,
							_origin 	 = tbl._origin,
							_file	 	 = tbl._file,
							LaunchDistData		= tbl.LaunchDistData,
							MinLaunchDistData	= tbl.MinLaunchDistData,
							AspectDistData		= tbl.AspectDistData,
							MaxTOF				= tbl.MaxTOF,
							MinTOF				= tbl.MinTOF,
							MidTOF				= tbl.MidTOF,
							})
		
		add_shape_table("BombTable",tbl,lev4)
		-----------------------------------------------------
		if wstype_bombs[lev4] == nil then
		   wstype_bombs[lev4] =  tbl.wsTypeOfWeapon
		end
		-----------------------------------------------------
	elseif tbl.category == CAT_ROCKETS then
		-------------------------------------------------------------
		check_placeholder(tbl.wsTypeOfWeapon,next_missile)
		if  not checkDuplicateBy_name(nurses,tbl,user_mod) then 
			return
		end
		-------------------------------------------------------------
		declare_nurs(tbl.name, 
					 tbl.user_name,
					 tbl.model,
					 tbl.scheme,
					 tbl,
					 tbl.properties,
					 tbl.wsTypeOfWeapon[4])
		
		add_shape_table("MissileTable",tbl,tbl.wsTypeOfWeapon[4])
	elseif tbl.category == CAT_CLUSTER_DESC then
		check_placeholder(tbl.wsTypeOfWeapon,next_bomb)
		cluster_desc(tbl.wsTypeOfWeapon,tbl.wsTypeOfWeapon[3],tbl,tbl.descriptor);
	elseif tbl.category == CAT_TORPEDOES then
		-------------------------------------------------------------
		check_placeholder(tbl.wsTypeOfWeapon,next_torpedo)
		if not checkDuplicateBy_wstype(torpedoes,tbl,user_mod) then
			return
		end	
		-------------------------------------------------------------
		declare_torpedo(tbl)
		if not tbl.ws_type then 
			tbl.ws_type = tbl.wsTypeOfWeapon
		end
		tbl.Name = tbl.wsTypeOfWeapon[4]
		calcDamage(tbl)
		--table.insert(rockets,tbl)
		table.insert(torpedoes,tbl)		
		add_shape_table("MissileTable",tbl,tbl.wsTypeOfWeapon[4])
	elseif tbl.category == CAT_FUEL_TANKS or
		   tbl.category == CAT_PODS then
		 -- nothing todo
	else --missile
		-------------------------------------------------------------
		check_placeholder(tbl.wsTypeOfWeapon,next_missile)	
		if not checkDuplicateBy_wstype(rockets,tbl,user_mod) then
			return
		end		
		-------------------------------------------------------------
		if tbl.scheme ~= nil then
		   declare_missile(tbl.name,
						   tbl.user_name, 
						   tbl.model, 
						   tbl.class_name, 
						   tbl.wsTypeOfWeapon[3],
						   tbl.scheme, 
						   tbl,
						   tbl.properties,
						   tbl.wsTypeOfWeapon[4])
		end
		if not tbl.ws_type then 
			tbl.ws_type = tbl.wsTypeOfWeapon
		end
		tbl.Name = tbl.wsTypeOfWeapon[4]
		calcDamage(tbl)
		table.insert(rockets,tbl)	
		-----------------------------------------------------
		if wstype_missiles[tbl.Name] == nil then
		   wstype_missiles[tbl.Name] =  tbl.ws_type
		end
		-----------------------------------------------------
		add_shape_table("MissileTable",tbl,tbl.Name)
	end
	registerWeaponName(tbl);
end

local function declare_adapter(tbl)
	
	if Pylons[tbl.ShapeName] ~= nil then
	   return
	end
	
	local wstype_name 	  = next_container()
	
	Pylons[tbl.ShapeName] = {index = wstype_name, animation = tbl.animation}

	wstype_containers[wstype_name] = {wsType_Weapon,wsType_GContainer,wsType_Support,wstype_name}
	tbl.shape_table_data =
	{
		{
			file  	 = tbl.ShapeName;
			life  	 = 60;
			fire  	 = { 0, 1};
			username = tbl.ShapeName;
			index 	 = wstype_name;
		},
	}
	add_shape_table("ContainerTable",tbl,wstype_name)
end

local function declare_loadout(tbl)

	if curPlugin then
		mark_origin(tbl)
		table.insert(curPlugin.loadout,tbl)
		return
	end
	for i,o in ipairs(tbl.Elements) do
		if o.IsAdapter then 
		   declare_adapter(o)
		end
	end
	
	if  tbl.category	 == CAT_FUEL_TANKS or
	    tbl.category 	 == CAT_PODS or 
	    tbl.attribute[3] == wsType_Container then
		if  tbl.attribute[4] == nil or
			tbl.attribute[4] == WSTYPE_PLACEHOLDER then
			
			local LEV4 = next_container()
			tbl.attribute[4] =  LEV4

			if  tbl.attribute[1] == wsType_Weapon and 
				tbl.attribute[2] == wsType_GContainer and 
				tbl.attribute[3] == wsType_Cannon_Cont then
				if tbl.gun_mounts then
					aircraft_gunpod_with_wstype(tbl.CLSID,LEV4,tbl.gun_mounts)
				end
			end	
			if  tbl.control_container_data then
				Control_Containers[LEV4] = tbl.control_container_data
			end
			if  tbl.weapon_container_data then
				Weapon_containers [LEV4] = tbl.weapon_container_data
			end
			add_shape_table("ContainerTable",tbl,LEV4)
			wstype_containers[LEV4] = tbl.attribute
		end
    end
	if tbl.category ~= nil then
	   _WEAPON_(tbl.category,tbl)
	end
	local key = wsTypeToString(tbl.attribute)
	if ModsWeaponNames[key] == nil then
	   ModsWeaponNames[key]  = tbl.displayName
	end
end

local function declare_sensor(tbl)
    if curPlugin then
        mark_origin(tbl)
        if not tbl.category then
            log.error(tbl._file.." sensor categoty is absent")
        end
        if not tbl.Name then
            log.error(tbl._file.." sensor name is absent")
        end
        table.insert(curPlugin.sensors,tbl)
    else
        register_sensor(tbl.Name,tbl.category,tbl)
    end
    return tbl.Name
end

local function merge_preload(from,to)
	if  from == nil or type(from) ~= 'table' then
		return
	end
	for i,o in ipairs(from) do
		if type(o) == 'string' then
			to[#to + 1] = o
		end
	end
end

local function preload_resources(tbl)
	merge_preload(tbl.textures		,ModsPreloadResources.textures)
	merge_preload(tbl.models		,ModsPreloadResources.models)
	merge_preload(tbl.fonts			,ModsPreloadResources.fonts)
	merge_preload(tbl.explosions	,ModsPreloadResources.explosions)
end

-- these fields will be added to array inside unit
local incremental_field =
{
	["HumanCockpitPlugins"] = true,
}
-- these fields can be assigned only if HumanCockpit assigned first
local flyables_only = 
{
	["HumanCockpitPlugins"] = true,
}

local function do_various_unit_settings(unit,t)
	-- apply HumanCockpit first as it can be used in check 
	if  t.HumanCockpit then
		unit.HumanCockpit = t.HumanCockpit
	end
	
	for i,o in pairs(t)	do
		local field_applicable = true
		-- check field suitability for AI only aircraft
		if  not curPlugin then
			if  flyables_only[i] and not unit.HumanCockpit then
				field_applicable = false
			end		
		end

		if field_applicable then 
			if 	incremental_field[i] then
				if 	unit[i] == nil	then 
					unit[i] = {}
				end
				if  type(unit[i]) ~= 'table' then
					log.error(i.." is not table")
				end
				
				if type(o) == 'table' and  #o ~= 0 then
					for j,data in ipairs(o) do 
						table.insert(unit[i],data)
					end	
				else
					table.insert(unit[i],o)
				end
			else
				unit[i] = o
			end
		end
	end
end

local function various_unit_settings(unit,t)
	local unit_data = nil
	if curPlugin then
	    if not curPlugin.various_unit_settings[unit] then 
			   curPlugin.various_unit_settings[unit] = {}
		end
		unit_data = curPlugin.various_unit_settings[unit]
	elseif	type(unit) == "function" or unit == "*" then
		if  not multi_unit then 
			multi_unit = {}
		end
		if not multi_unit[unit] then 
			multi_unit[unit] = {HumanCockpit = true}
		end
		unit_data = multi_unit[unit]
	else
		unit_data = find_unit(unit)			
	end
	if  unit_data then
		do_various_unit_settings(unit_data,t)
	else
		log.error("unit "..unit.." not found")
	end
end

local function is_dir_exist(path)
    if lfs.attributes(path:gsub("\\$",""), "mode") == "directory" then
        return true
    else
        return false
    end
end


function string.ends(String,End)
   return End=='' or string.sub(String,-string.len(End))==End
end

local function get_resource_texture_paths(modDir)
    local textures = {}

    local texturesPath = modDir ..'/'..'Textures'
    if is_dir_exist(texturesPath) then
        table.insert(textures, texturesPath)
        for file in lfs.dir(texturesPath) do
            if string.sub(file, 1, 1) ~= '.' then
               local archive = texturesPath.."/"..file
               if lfs.attributes(archive, "mode") == "file" and string.ends(file, '.zip') then
                   table.insert(textures, archive)
               end
            end
        end
    end
    
    return textures
end

-------------------------------------------------------------------------


local campaign_attributes_map = {
    steam_appid         = 'steam_appid',
    update_id           = 'update_id',
    defDisplayName      = 'displayName',
    defDeveloperName    = 'developerName',
    DRM_controller      = 'DRM_controller',
    registryPath        = 'registryPath',
	developerLink		= 'developerLink',
	forModules			= 'forModules',
}

local resource_attributes_map = campaign_attributes_map


local function make_environment(t) 
	local env = {table                 = table, 
                pairs                  = pairs,
                ipairs                 = ipairs,
                type                   = type,
                assert                 = assert_,
                print                  = print_,
                math                   = math,
                tostring               = tostring,
				string                 = string,
                _ = _,
				--some global defines
				__DCS_VERSION__		   =  __DCS_VERSION__,
				__FINAL_VERSION__	   =  __FINAL_VERSION__,
				ED_FINAL_VERSION		= __FINAL_VERSION__,
				ED_PUBLIC_AVAILABLE		= ED_PUBLIC_AVAILABLE,
				MAC						= __MAC__,
				USE_TERRAIN4			= true,
				
				mount_vfs_model_path	    = mount_vfs_model_path,
				mount_vfs_animations_path	= mount_vfs_animations_path,
				mount_vfs_texture_path	    = mount_vfs_texture_path,
				mount_vfs_liveries_path	    = mount_vfs_liveries_path,
				mount_vfs_sound_path	    = mount_vfs_sound_path,
				declare_plugin			    = declare_plugin,
				plugin_done				    = plugin_done,
				WSTYPE_PLACEHOLDER		    = WSTYPE_PLACEHOLDER,
				--weapon loadout declaration
				CAT_BOMBS 	 			= CAT_BOMBS,
				CAT_MISSILES   			= CAT_MISSILES,
				CAT_ROCKETS	 			= CAT_ROCKETS, --!unguided!
				CAT_AIR_TO_AIR 			= CAT_AIR_TO_AIR,
				CAT_FUEL_TANKS 			= CAT_FUEL_TANKS,
				CAT_PODS	 	 		= CAT_PODS,
				CAT_SHELLS				= CAT_SHELLS,
				CAT_GUN_MOUNT	 		= CAT_GUN_MOUNT,
				CAT_CLUSTER_DESC		= CAT_CLUSTER_DESC,
				CAT_TORPEDOES			= CAT_TORPEDOES,
				
				declare_weapon			= declare_weapon,
				declare_loadout			= declare_loadout,	
				cluster_desc			= cluster_desc,		
				combine_cluster			= combine_cluster,
				--warheads 
				simple_aa_warhead			=	simple_aa_warhead,							
				enhanced_a2a_warhead        =   enhanced_a2a_warhead,
				directional_a2a_warhead     =   directional_a2a_warhead,
				simple_warhead              =   simple_warhead,
				cumulative_warhead          =   cumulative_warhead,
				penetrating_warhead         =   penetrating_warhead,
				antiship_penetrating_warhead=   antiship_penetrating_warhead,
				predefined_warhead 			=   predefined_warhead,
				
				get_bomb_munition		= function(nm) return weapons_table.weapons.bombs[nm] end,
				PTAB_2_5_DATA			= PTAB_2_5_DATA,
				PTAB_10_5_DATA 			= PTAB_10_5_DATA,
				AO_2_5_DATA				= AO_2_5_DATA,
				MK118_DATA				= MK118_DATA,
				BLU97B_DATA				= BLU97B_DATA,
				BLU108B_DATA			= BLU108B_DATA,
				HEAT_DATA				= HEAT_DATA,
										
				add_aircraft           = add_aircraft,
				pylon                  = pylon,
				aircraft_task          = aircraft_task,
				gun_mount              = gun_mount,
				gatling_effect 		   = gatling_effect,
				smoke_effect 		   = smoke_effect,
				fire_effect 		   = fire_effect,
				declare_gun_mount	   = declare_gun_mount,
				--tasks
				Nothing                 = Nothing,          
				SEAD                    = SEAD,            
				AntishipStrike          = AntishipStrike,  
				AWACS                   = AWACS,           
				CAS                     = CAS,             
				CAP                     = CAP ,            
				Escort                  = Escort,          
				FighterSweep            = FighterSweep ,   
				GroundAttack            = GroundAttack ,   
				Intercept               = Intercept   ,    
				AFAC                    = AFAC        ,    
				PinpointStrike          = PinpointStrike,   
				Reconnaissance          = Reconnaissance , 
				Refueling               = Refueling      , 
				RunwayAttack            = RunwayAttack   , 
				Transport               = Transport     ,
				MODULATION_AM			= MODULATION_AM,
				MODULATION_FM			= MODULATION_FM,
				MODULATION_AM_AND_FM	= MODULATION_AM_AND_FM,
				LOOK_BAD				= LOOK_BAD,
				LOOK_AVERAGE			= LOOK_AVERAGE,
				LOOK_GOOD				= LOOK_GOOD,
				LOOK_EXELLENT_B17 		= LOOK_EXELLENT_B17,
				add_unit_to_country		= add_unit_to_country,
				makeAirplaneCanopyGeometry = makeAirplaneCanopyGeometry,
				makeHelicopterCanopyGeometry = makeHelicopterCanopyGeometry,
				verbose_to_dmg_properties = verbose_to_dmg_properties, --damage
				verbose_to_failures_table = verbose_to_failures_table,
				set_manual_path		   	  = function(unit,manual_path)  		   various_unit_settings(unit,{ManualPath = manual_path}) end,
				make_view_settings		  = function(unit,ViewSettings,SnapViews)  various_unit_settings(unit,{ViewSettings = ViewSettings,SnapViews    = SnapViews}) end,
				--ground units adding support------------------------------
				set_recursive_metatable = set_recursive_metatable,
				new_reference			= new_reference,
				add_launcher            = add_launcher,
				add_surface_unit        = add_surface_unit,
				GT_t                    = db.Units.GT_t,
				------------------------------------------------------------	
				-- sensors declaration
				SENSOR_OPTICAL      = SENSOR_OPTICAL,
				SENSOR_RADAR        = SENSOR_RADAR,
				SENSOR_IRST         = SENSOR_IRST,
				SENSOR_RWR          = SENSOR_RWR,
				--RADAR
				RADAR_AS            = RADAR_AS,
				RADAR_SS            = RADAR_SS,
				RADAR_MULTIROLE     = RADAR_MULTIROLE,
				--
				ASPECT_HEAD_ON      = ASPECT_HEAD_ON,
				ASPECT_TAIL_ON      = ASPECT_TAIL_ON,
				--
				HEMISPHERE_UPPER    = HEMISPHERE_UPPER,
				HEMISPHERE_LOWER    = HEMISPHERE_LOWER,
				--IRST
				ENGINE_MODE_FORSAGE = ENGINE_MODE_FORSAGE,
				ENGINE_MODE_MAXIMAL = ENGINE_MODE_MAXIMAL,
				ENGINE_MODE_MINIMAL = ENGINE_MODE_MINIMAL,
				--OPTIC
				OPTIC_SENSOR_TV     = OPTIC_SENSOR_TV,
				OPTIC_SENSOR_LLTV   = OPTIC_SENSOR_LLTV,
				OPTIC_SENSOR_IR     = OPTIC_SENSOR_IR,
					
				FIXED_WING					= FIXED_WING,				
				VARIABLE_GEOMETRY			= VARIABLE_GEOMETRY,
				FOLDED_WING					= FOLDED_WING,				
				VARIABLE_GEOMETRY_FOLDED 	= VARIABLE_GEOMETRY_FOLDED, 
				
				declare_sensor		= declare_sensor,
                make_default_mech_animation = make_default_mech_animation,
				------------------------------------------------------------
                -- Aircraft Lights --------------------------------------------------------
                WOLALIGHT_STROBES           = WOLALIGHT_STROBES,
                WOLALIGHT_SPOTS             = WOLALIGHT_SPOTS,
                WOLALIGHT_LANDING_LIGHTS    = WOLALIGHT_LANDING_LIGHTS,
                WOLALIGHT_NAVLIGHTS         = WOLALIGHT_NAVLIGHTS,
                WOLALIGHT_FORMATION_LIGHTS  = WOLALIGHT_FORMATION_LIGHTS,
                WOLALIGHT_TIPS_LIGHTS       = WOLALIGHT_TIPS_LIGHTS,
                WOLALIGHT_TAXI_LIGHTS       = WOLALIGHT_TAXI_LIGHTS,
                WOLALIGHT_BEACONS           = WOLALIGHT_BEACONS,
                WOLALIGHT_CABIN_BOARDING    = WOLALIGHT_CABIN_BOARDING,
                WOLALIGHT_CABIN_NIGHT       = WOLALIGHT_CABIN_NIGHT,
                WOLALIGHT_REFUEL_LIGHTS     = WOLALIGHT_REFUEL_LIGHTS,
                WOLALIGHT_PROJECTORS        = WOLALIGHT_PROJECTORS,
                WOLALIGHT_AUX_LIGHTS        = WOLALIGHT_AUX_LIGHTS,
                WOLALIGHT_IR_FORMATION      = WOLALIGHT_IR_FORMATION,
                lamp_prototypes             = lamp_prototypes,
                -- end of Aircraft Lights--------------------------------------------------
	}
	if wstype_chunk then
		setfenv(wstype_chunk, env)
		wstype_chunk()
	end

	if t and type(t) == 'table' then
		for i,o in pairs(t) do
			env[i] = o
		end
	end
	env['_G']    = env
	env.loadfile = function(file) return mod_handler_load(file,env) end
	env.dofile   = function(file) 
		local old_file = current_file
		local f, err = env.loadfile(file) 
		if f then 
		   local status,res = pcall(f)
		   if not status then
				log.error(res)
		   end
		   env.current_file = old_file
		   current_file     = old_file
		   return res
		else
			--print(err)
		end 
	end
	
	env.lock_player_interaction = function (unit)
		various_unit_settings(unit,{ PlayerInteractionLocked = true}) 
	end
	
	env.unlock_player_interaction = function (unit)
		various_unit_settings(unit,{ PlayerInteractionLocked = false, _origin_interaction_unlock = curPlugin.id}) 
	end

	env.make_flyable = function (unit,cockpit_path,fm_module_info,comm_path)
		various_unit_settings(unit,{ HumanCockpit 		= true,
									 HumanCockpitPath   = cockpit_path,
									 HumanFM		    = fm_module_info,
									 HumanCommPanelPath = comm_path,
									 _file_flyable		= current_file,
									 _origin_flyable	= curPlugin.id,}) 

	end
	
	
	env.make_aircraft_carrier_capable = function (unit,variants )
		local variants = variants or {"AircraftCarrier","AircraftCarrier With Tramplin"}
		
		local rw = {}
		
		for i,o in ipairs(variants) do
			rw[#rw + 1] = {Name = o}
		end
		
		various_unit_settings(unit,
		{ 
			TakeOffRWCategories = rw,
			LandRWCategories 	= rw,
		})
	end
	
	env.MAC_flyable = function (unit,cockpit_path,fm_module_info,comm_path)
		env.make_flyable(unit,cockpit_path,fm_module_info,comm_path)
		various_unit_settings(unit,{ _MAC_compatible    = true }) 
	end
	
	env.turn_on_waypoint_panel = function (unit,enable_default_fields,enable_custom_fields)
		if enable_default_fields or enable_custom_fields then
			local t = {}
			if	enable_default_fields then
				t.Waypoint_Panel 		= true
			end
			if	enable_custom_fields then
				t.Waypoint_Custom_Panel = true
			end
			various_unit_settings(unit,t) 			
		end
	end
	
	env.add_plugin_systems = function (service_name,unit,path,per_unit_data)
		various_unit_settings(unit,{ 
			HumanCockpitPlugins = {
				name					= service_name,
				path    				= path,
				per_unit_data   		= per_unit_data, 
				_file   				= current_file,
				_origin 				= curPlugin.id,
				} 
		}) 
	end
	return env
end




local safe_environment_terrain   = make_environment() 
local safe_environment_aircraft  = make_environment() 
local safe_environment_tech 	 = make_environment()
local core_modules_environment   = make_environment({plugin_done = plugin_done_core})
local resource_environment       = 
{
	table                 = table, 
	pairs                  = pairs,
	ipairs                 = ipairs,
	type                   = type,
	assert                 = assert_,
	print                  = print_,
	math                   = math,
	tostring               = tostring,
	_ = _,
	mount_vfs_model_path	    = mount_vfs_model_path,
	mount_vfs_animations_path	= mount_vfs_animations_path,
	mount_vfs_texture_path	    = mount_vfs_texture_path,
	mount_vfs_liveries_path	    = mount_vfs_liveries_path,
	declare_plugin			    = declare_plugin,
    is_dir_exist                = is_dir_exist
}
resource_environment['_G']  = resource_environment
resource_environment.loadfile	 = function(file) return mod_handler_load(file,resource_environment) end
resource_environment.plugin_done = function () 
    plugin_done() 
    --clear campaign attributes for next campaign
    for i,o in pairs(resource_attributes_map) do
        resource_environment[i] = nil
    end
end

resource_environment.dofile  	 = function (file) 
    local old_file = current_file
    local f = resource_environment.loadfile(file) 
    if f then 
        local status,res = pcall(f)
		
		if status then
			-- cause global curPlugin can be cleared in plugin_done()
			local curPlugin = resource_environment.curPlugin
			
			if not curPlugin.entry_processed then
				--copy campaign attributes
				for i,o in pairs(resource_attributes_map) do
					local v  = resource_environment[i]
					if v ~= nil then
						curPlugin[o] = v
					end
				end
				
				if next(curPlugin.ModsTexturePaths) == nil then
					curPlugin.ModsTexturePaths = get_resource_texture_paths(current_mod_path)
				end

				local modelsPath   = current_mod_path ..'/'..'Shapes'
				if is_dir_exist(modelsPath) and next(curPlugin.ModsModelPaths) == nil then
					curPlugin.ModsModelPaths = { modelsPath }
				end
				
				curPlugin.entry_processed  = true
			end
		else
			log.error(res)
			return res
		end

        resource_environment.current_file    = old_file
        current_file                         = old_file
        return res
    end 
end
   
local    campaign_environment 		 = 
{
	table                 = table, 
	pairs                  = pairs,
	ipairs                 = ipairs,
	type                   = type,
	assert                 = assert_,
	print                  = print_,
	math                   = math,
	tostring               = tostring,
	_ = _,
	mount_vfs_model_path	    = mount_vfs_model_path,
	mount_vfs_animations_path	= mount_vfs_animations_path,
	mount_vfs_texture_path	    = mount_vfs_texture_path,
	mount_vfs_liveries_path	    = mount_vfs_liveries_path,
	declare_plugin			    = declare_plugin,
}


campaign_environment['_G']    	 = campaign_environment

campaign_environment.loadfile	 = function(file) return mod_handler_load(file,campaign_environment) end
campaign_environment.dofile  	 = function(file) 
	local old_file = current_file
	local f = campaign_environment.loadfile(file) 
	if f then 
	
		local status,res = pcall(f)
	    if not status then
			log.error(res)
	    end
	    if not curPlugin.entry_processed then
			--copy campaign attributes
			for i,o in pairs(campaign_attributes_map) do
				local v  = campaign_environment[i]
				if v ~= nil then
					curPlugin[o] = v
				end
			end
			curPlugin.entry_processed   = true
		end
		campaign_environment.current_file 	 = old_file
		current_file    		 			 = old_file
		return res
	end 
end

campaign_environment.plugin_done = function () 
	plugin_done() 
	--clear campaign attributes for next campaign
	for i,o in pairs(campaign_attributes_map) do
		campaign_environment[i] = nil
	end
end

local plugin_type_to_env = {
    core 	  = core_modules_environment,
    tech 	  = safe_environment_tech,
    aircraft  = safe_environment_aircraft,
    terrain   = safe_environment_terrain,
    campaign  = campaign_environment,
    resource  = resource_environment,
	services  = resource_environment,
}

local function try_load_plugin(p)
    --[[
    if we have in the folder root file named entry.lua, 
    only this file is executed, other files ommited, and we will think that they are resources 
    --]]
    local path = p.dirName
    dir_short_name = string.match(path, '.*[/\\](.*)$')

    local env = plugin_type_to_env[p.type]
    if not env then -- unknown plugin type
        log.error('Unknown plugin type '..tostring(p.type)..' for '..tostring(path))
        return
    end

    local entry_path 	   = path.."/".."entry.lua"
    current_mod_path       = path
    env.current_mod_path   = path
	curPluginLoaderInfo    = p
	curPluginLoaderType    = p.type
	
    curPlugin			   = new_plugin()

	--save plgin reference as it will be cleared in plugin_done , which can be called from entry.lua
	local pl = curPlugin
    --since since there's no information, if plugin_done will be called from resource entry.lua, save ref in env
    env.curPlugin = curPlugin
    env.dofile(entry_path)
    env.plugin_done()
    env.curPlugin = nil

	if not pl.type then
		   pl.type = p.type
	end
end

local function load_plugins()
    for i,p in ipairs(plugins_to_load) do
        try_load_plugin(p)
    end
end

local function make_set(...)
	local ret_val  = {}
	for i, v in ipairs{...} do
		ret_val[v] = true
	end
	return ret_val
end

local restricted_units = make_set(
'Ka-50',
'A-10A',
'A-10C',
'F-15C',
'MiG-29A',
'MiG-29G',
'MiG-29S',
'Su-25',
'Su-27',
'Su-33',
'J-11A',
'Su-25T',
'P-51D',
'TF-51D',
'F-86F Sabre',
'FW-190D9',
'FW-190A8',
'Mi-8MT',
'MiG-15bis',
'UH-1H',
'L-39C',
'L-39ZA',
'Bf-109K-4',
'SpitfireLFMkIX',
'SpitfireLFMkIXCW',
'Yak-52',
'C-101EB',		--AVIODEV OWNED
'C-101CC',		--AVIODEV OWNED
'F-5E',			--BST OWNED
'F-5E-3',		--BST OWNED
'MiG-21Bis',	--LEATHERNECK OWNED
'SA342M',		--POLYCHOP OWNED
'SA342L',		--POLYCHOP OWNED
'SA342Mistral', --POLYCHOP OWNED
'SA342Minigun', --POLYCHOP OWNED
'AJS37',		--HEATBLUR
--'F-14B',		--HEATBLUR (temporarily disabled per HEATBLUR request)
'M-2000C',		--RAZBAM OWNED
'AV8B',			--RAZBAM OWNED
'MiG-19P',		--RAZBAM OWNED
'I-16',			--OCTOPUS G
--'JF-17',		--Deka Ironwork Simulations (disabled per request from DEKA)
'Christen Eagle II', --Magnitude 3 LLC
-------------------------------------
"CVN_71",
"CVN_72",
"CVN_73",
"CVN_74",
"CV_1143_5",
"USS_Arleigh_Burke_IIa",
-------------------------------------
'FA-18C_hornet',
'F-16C_50'
)

local allowed_fields_for_unsigned = 
{
["TakeOffRWCategories"]	= true,
["LandRWCategories"]	= true,
}

local function check_allowed_modifications_for_restricted_units(v)
	local fails_count = 0
	--TODO insert manifest check here
	local plugin_signature_verified = v._loader_info.manifestOK
	
	if plugin_signature_verified then
		return true
	end
	
	for unit, settings in pairs(v.various_unit_settings) do
		if restricted_units[unit] ~= nil then
			local unit_fail = 0
			for field, o in pairs(settings) do
				if  allowed_fields_for_unsigned[field] == nil  then 
					unit_fail = unit_fail + 1
				end
			end 
			fails_count = fails_count + unit_fail
			if unit_fail > 0 then 
				log.error("plugin: "..v.id.." unit modification ".. unit.. " not allowed")
			end
		end
	end
	return fails_count == 0
end

local function IsAuthorized(v)
    if not v._loader_info.requiresManifest then
		return true
    end
    if not _IsAuthorized then
        return false
    end
    local ok = _IsAuthorized(v)
    if not ok and _TryAuthorize then
        ok = _TryAuthorize(v)
    end
    return ok
end

local function check_authorization(v)
	if v._loader_info.authorized == nil then
		v._loader_info.authorized = IsAuthorized(v)
	end
        if v._loader_info.authorized == false then
            return false
        end
	--automatic enabling by default
	pluginsEnabled[v.id] = true

	if blank_run then 
		return true 
	end

	return check_allowed_modifications_for_restricted_units(v)
end

local function apply_plugin(v)
	if not v then 
		return false
	end
	
	if __MAC__ and v.MAC_ignore then
		return false
	end	
	
	if v.reviewed then
		return v.applied
	end

	v.reviewed = true
	
	if pluginsEnabled[v.id] == false then
		log.info("plugin: SKIPPED '"..v.id.."': disabled by user")
		return false
	end

	if not v._loader_info.supported then
		log.info("plugin: SKIPPED '"..v.id.."': not supported")
		return false
	end

	local authorized = check_authorization(v)
	if not authorized then
		log.info("plugin: SKIPPED '"..v.id.."': not authorized")
		return false
	end
		
	if  v.rules ~= nil then
		for i,o in pairs(v.rules) do
			local rule_target = plugins_by_id[i]
			local result	  = apply_plugin(rule_target) 
			if  o.required then 
				if (not result) or rule_target.state ~= "installed" then
					log.info("plugin: SKIPPED '"..v.id.."': requirement '"..i.."' not found")
					return false
				end
			elseif  o.disabled then 
				if  result  and rule_target.state == "installed" then 
					log.info("plugin: SKIPPED '"..v.id.."': disabled by '"..i.."'")
					return false
				end
			end
		end
	end
	
	
	CurrentlyMergedPlugin = v
	
	v.applied   =  true
	log.debug("plugin: APPLIED '"..v.id.."'")

	-- mount the resources
	if _MountModResources then
		-- we are inside globalL
		_MountModResources(v)
	end

    for kk,vv in pairs(v.sensors) do
        declare_sensor(vv)
    end
	for kk,vv in pairs(v.weapon) do
		declare_weapon(vv)
	end
	for kk,vv in pairs(v.loadout) do
		declare_loadout(vv)
	end
	for kk,vv in pairs(v.units.aircrafts) do
		add_aircraft(vv)
	end
	for kk,vv in pairs(v.units.technics) do
		add_surface_unit(vv)
	end
	if  v.preload_resources then
		preload_resources(v.preload_resources)
	end
	for i, settings in pairs(v.various_unit_settings) do
		various_unit_settings(i,settings)
	end  

	for i, countries in pairs(v.units_added_to_countries) do
		add_unit_to_country(i,countries)
	end       
	--ordered table with taking  "rules" in to accout
	plugins_ordered[#plugins_ordered + 1] = v
	return v.applied
end

local function merge_multi_set(rule,unit,set)
	if type(rule) == "function" then
		if  rule(unit.Name) then 
			do_various_unit_settings(unit,set)
		end
	elseif rule == "*" then
		do_various_unit_settings(unit,set)
	end
end
	
local function merge_plugins()
	log.info("PLUGINS START-------------------------------------------------")
	curPlugin 	   = nil
	local plugins  = plugins or {}
	for i,v in ipairs(plugins) do
		v.applied   = false
		v.reviewed  = false
	end
	for i,v in ipairs(plugins) do
		apply_plugin(v)
	end
	--------------------------------------------------------------------------
	if multi_unit then
		for rule,set in pairs(multi_unit) do
			set.HumanCockpit 			= nil -- flush cockpit mark
			set.PlayerInteractionLocked = nil -- flush interaction mark

			for j,cat in ipairs(payable_unit_catergories) do
				for i, o in pairs(cat) do
					merge_multi_set(rule,o,set)
				end
			end
		end
	end
	--------------------------------------------------------------------------
	-- collecting ALL units added by ALL plugins
	merge_all_units_to_AGGRESSORS()
		
	log.info("PLUGINS DONE--------------------------------------------------")
	--[[
	for i,o in pairs(resource_by_unique_name) do
		if o._origin then
			log.info(o._origin..": "..i)
		else 
			log.info(i)
		end
	end
	--]]
end

local defaultMap = ".\\MissionEditor\\themes\\main\\images\\noMap.png"
local defaultNodesMapBorders	= {-410000, 120000, 18000, 940000}

local function createTheatre(theatre)
    local result = {}
    local folder = theatre.configFilename
   
    result.name             = theatre.id or getNewName()
    result.localizedName    = _(theatre.localizedName or "NoName")
    result.description	    = _(theatre.description or "NoDescription")	
    result.folder           = theatre.folder

    result.configFilename   = theatre.dirName.."\\terrain.cfg.lua"
    result.configFilenameDll= theatre.dirName.."\\terrain.cfg.lua.dll"
    result.folder           = theatre.dirName.."\\"
    
    local imagePath = result.folder..theatre.image
    if theatre.image then -- FIXME: check if the file exists
        result.image = imagePath
    else
        result.image = defaultMap
    end	
    result.beaconsFile		= result.folder .. 'Beacons.lua'
    result.nodesFile	    = result.folder .. (theatre.nodesFile or "")
    result.nodesMapFile     = result.folder .. (theatre.nodesMapFile or "")
    result.nodesMapBorders  = theatre.nodesMapBorders or defaultNodesMapBorders 
    return result
end

function getTerrainConfigPath(a_name)
    if theatresByName[a_name] then
        return theatresByName[a_name].configFilename
    end
    return nil    
end

local function index_terrain()
    for k,v in pairs(plugins) do
        if v.state == "installed" and v.applied == true and v.type == "terrain" then
            local theatreOfWar = createTheatre(v)
            table.insert(theatres, theatreOfWar) 
            theatresByName[theatreOfWar.name] = theatreOfWar     
        end
    end
end


function check_plugin_available(key)
	local  p = plugins_by_id[key]
	return p and p.applied and (p.state == "installed")
end


---------------------------------------------------------------------

load_plugins()
merge_plugins()

index_terrain()
