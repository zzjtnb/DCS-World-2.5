db.Units.Planes = {};
db.Units.Planes.Plane = {}
db.Units.Planes.RouteTaskCategories = {};
db.Units.Planes.Tasks = {};
----------------------------------------------------------------------
-- TASKS
-- OldID is here for backward compatibility with old brain-damaged code
-- TODO: remove oldId completely!
----------------------------------------------------------------------
local function task(name, id, oldId)
    local res = { WorldID = id, Name = name }
    if oldId then
        res.OldID = oldId
    end
    return res
end

-- tasks mapped by task ID
local taskById = { }

local function add_task(name, id, oldId)
    local task = task(name, id, oldId)
    taskById[id] = task
    table.insert(db.Units.Planes.Tasks, task);
end

function check_crew_roles(crew)
	if not crew then
		return 
	end
	local c_size = #crew
	for i,c in ipairs(crew) do 
		if  c.role == nil then
			if 	   i == 1 then		c.role = "pilot"
			elseif i == 2 then		c.role = "copilot"
			else					c.role = "flight_officer"
			end
		end
		if c.role_display_name == nil then
			if crew_size == 1 then 				c.role_display_name = _("Pilot")
			elseif i == 1 then					c.role_display_name = _("Pilot in command")
			elseif i == 2 then					c.role_display_name = _("Copilot")
			else								c.role_display_name = _("Flight officer")
			end
		end
	end
end

function registerTask(name, id)
  _G[name] = id;
end

registerTask("Nothing",15);
registerTask("SEAD",29);
registerTask("AntishipStrike",30);
registerTask("AWACS",14);
registerTask("CAS",31);
registerTask("CAP",11);
registerTask("Escort",18);
registerTask("FighterSweep",19);
registerTask("GAI",20);
registerTask("GroundAttack",32);
registerTask("Intercept",10);
registerTask("AFAC",16);
registerTask("PinpointStrike",33);
registerTask("Reconnaissance",17);
registerTask("Refueling",13);
registerTask("RunwayAttack",34);
registerTask("Transport",35);
registerTask("Airborne",36);

add_task(_("Nothing"), Nothing, "Nothing");
add_task(_("SEAD"), SEAD, "SEAD");
add_task(_("Antiship Strike"), AntishipStrike, "Antiship Strike");
add_task(_("AWACS"), AWACS, "AWACS");
add_task(_("CAS"), CAS, "CAS");
add_task(_("CAP"), CAP, "CAP");
add_task(_("Escort"), Escort, "Escort");
add_task(_("Fighter Sweep"), FighterSweep, "Fighter Sweep");
add_task(_("Ground Attack"), GroundAttack, "Ground Attack");
add_task(_("Intercept"), Intercept, "Intercept");
add_task(_("AFAC"), AFAC, "AFAC");
add_task(_("Pinpoint Strike"), PinpointStrike, "Pinpoint Strike");
add_task(_("Reconnaissance"), Reconnaissance, "Reconnaissance");
add_task(_("Refueling"), Refueling, "Refueling");
add_task(_("Runway Attack"), RunwayAttack, "Runway Attack");
add_task(_("Transport"), Transport, "Transport");

if not ED_PUBLIC_AVAILABLE then
	add_task(_("Airborne"), Airborne, "Airborne");
end

db.Units.Planes.DefaultTask = { WorldID = Nothing };

----------------------------------------------------------------------
-- Route task categories
----------------------------------------------------------------------
local function route_task_cat(clsid, name, id, tasks)
	local res = {};
	
	res.CLSID = clsid;
	res.Name = name;
	res.ID = id;
	res.Tasks = tasks;
	
	table.insert(db.Units.Planes.RouteTaskCategories, res);
	
	return res;
end

               
route_task_cat("{8297D481-DF12-4adc-94EE-C4E1B94EE777}", _("TakeOff"), 1, {
	task(_("From Runway"), 13),
	task(_("From Parking Area"), 50),
});

route_task_cat("{1FA1B84A-3AD3-4353-8E0F-E9BB48251997}", _("Land"), 2, {
	task(_("Landing"), 14),
});

route_task_cat("{C039E533-6F90-43a1-A23E-0436D6D532F5}", _("Attack"), 3, {
	task(_("Attack Target"), 2),
});

route_task_cat("{6156D907-5E76-438d-8B73-64337E63703E}", _("Refueling"), 4, {
	task(_("Refueling"), 8),
});

route_task_cat("{2D0C3C57-2AB3-48ee-A1C2-BE75934F76F6}", _("Turning Point"), 5, {
	task(_("TurningPoint"), 0),
	task(_("FlyOverPoint"), 1),
	task(_("LockAltitude"), 9),
	task(_("UnlockAltitude"), 10),
	task(_("BeginLoop"), 11),
	task(_("EndLoop"), 12),
});


function fill_mechanimation(res)
    if res.mechanimations == nil then
        res.mechanimations = "Default"
    end
    if res.mechanimations ~= nil then
        if type(res.mechanimations)=="string" then
            res.mechanimations = mechanimations[res.mechanimations]
        end
    end
end

function move_separated_data_to_obj_table(res)

	local p_table   = PlaneConst[res.WorldID]
	if p_table then 
		for i,o in pairs(p_table) do
			res[i] = o
		end
	else
		p_table = HelConst[res.WorldID]
		if p_table then 
			for i,o in pairs(p_table) do
				res[i] = o
			end
		end
	end
	
	--res.mech_timing  = 			          res.mech_timing or mech_timing[DefMechTimeIdx]

    fill_mechanimation(res)

	res.SFM_Data  	 = 				SFM_Data[res.WorldID] or res.SFM_Data
	res.Damage 		 = planes_dmg_properties[res.WorldID] or res.Damage
	if not res.Damage then 
		   res.Damage  = default_cells_properties
	end
	res.DamageParts  = 		planes_dmg_parts[res.WorldID] or res.DamageParts
	res.lights_data  = 	   lights_prototypes[res.WorldID] or res.lights_data
	
	res.exhaust_data = 			exhaust_data[res.WorldID] or res.exhaust_data
	
	if  res.exhaust_data and not res.engines_nozzles then  
		res.engines_nozzles = {}
		for i,o in ipairs(res.exhaust_data.nozzle) do
		res.engines_nozzles[i] = 	{
			pos					= o.pos,
			orientation 		= o.orientation,
			diameter    	    = 3.0,
			exhaust_length_ab   = 3.0,
			exhaust_length_ab_K = exhaust_data.nozzle_coefficient,
			engine_number 		= i
		}
		end
		res.exhaust_data = nil
	end
	
	res.Guns		 = guns_by_wstype			[res.WorldID] or res.Guns
	res.AmmoWeight 	 = get_aircraft_ammo_mass(res.Guns);

	check_crew_roles(res.crew_members)
end
-------------------------------------------------------------------------
-- Planes
-------------------------------------------------------------------------
function plane( name, displayName, params, pylons, --[[payloads,]] tasks, default_task)
    local res = params;
 	res.HumanCockpit = false;--will be setted to true in plugin declaration
	res.Name = name;
    res.DisplayName = displayName;
    res.Pylons = pylons;
    res.Tasks = tasks;
	res.DefaultTask = default_task;
	
	if res.HumanRadio   == nil then
	   res.HumanRadio = {
			frequency = 251.0,
			editable = true,
			minFrequency = 225.000,
			maxFrequency = 399.975,
			modulation = MODULATION_AM
			}
	end
 
	if (res.Picture == nil) then
		res.Picture = res.Name .. ".dds";
	end
	
	move_separated_data_to_obj_table(res)
	
	table.insert(db.Units.Planes.Plane, res);
	return res;
end

function pylon(number, tp, x, y, z, params, wcs, order)
	local res = params;
	
	res.Number = number;
	res.Type = tp;
	res.X = x;
	res.Y = y;
	res.Z = z;
	res.Launchers = wcs;
	res.Order = order or number;
	
	return res;
end


function aim9_station(number, tp, x, y, z, params, wcs)
	local res = params;
	
	res.Number = number;
	res.Type = tp;
	res.X = x;
	res.Y = y;
	res.Z = z;
	res.Launchers = wcs or {};
	
	res.Launchers[#res.Launchers + 1] = { CLSID = "{6CEB49FC-DED8-4DED-B053-E1F033FF72D3}" } --AIM-9M
	res.Launchers[#res.Launchers + 1] = { CLSID = "{9BFD8C90-F7AE-4e90-833B-BFD0CED0E536}" } --AIM-9P
	res.Launchers[#res.Launchers + 1] = { CLSID = "{AIM-9P5}"							   } --AIM-9P5
	res.Launchers[#res.Launchers + 1] = { CLSID = "{AIM-9L}"							   } --AIM-9L

	return res;
end


function aircraft_task(id)
    local task = taskById[id]
    if not task then
        print('WARNING: task ' .. id .. ' is missing')
    end
    return task
end

function pl_cat(clsid, name)
	local res = {};
	
	res.CLSID = clsid;
	res.Name = name;
	
	return res;
end


function plane_file(f)
	dofile(db_path..f)._file = db_path..f;
end

plane_file("planes\\Tornado_GR4.lua");
plane_file("planes\\Tornado_IDS.lua");
plane_file("planes\\FA-18A.lua");
plane_file("planes\\FA-18C.lua");
plane_file("planes\\F-14A.lua");
plane_file("planes\\Tu-22M3.lua");
plane_file("planes\\F-4E.lua");
plane_file("planes\\B-52H.lua");
plane_file("planes\\MiG-27K.lua");
plane_file("planes\\F-111F.lua");
--plane_file("planes\\A-10A.lua"); -- Moved to CoreMods
plane_file("planes\\Su-27.lua");
plane_file("planes\\MiG-23MLD.lua");
plane_file("planes\\Su-25.lua");
plane_file("planes\\Su-25TM.lua");
plane_file("planes\\Su-25T.lua");
plane_file("planes\\Su-33.lua");
plane_file("planes\\MiG-25PD.lua");
plane_file("planes\\MiG-25RBT.lua");
plane_file("planes\\Su-30.lua");
plane_file("planes\\Su-17M4.lua");
plane_file("planes\\MiG-31.lua");
plane_file("planes\\Tu-95MS.lua");
plane_file("planes\\Su-24M.lua");
plane_file("planes\\Su-24MR.lua");
plane_file("planes\\Tu-160.lua");
plane_file("planes\\F-117A.lua");
plane_file("planes\\B-1B.lua");
plane_file("planes\\S-3B.lua");
plane_file("planes\\S-3B-2.lua");
plane_file("planes\\Mirage_2000-5.lua");
plane_file("planes\\F-15C.lua");
plane_file("planes\\F-15E.lua");
--FULCRUM-------------------------
plane_file("planes\\MiG-29A.lua");
plane_file("planes\\MiG-29G.lua");
plane_file("planes\\MiG-29S.lua");
plane_file("planes\\MiG-29K.lua");
----------------------------------
plane_file("planes\\Tu-142.lua");
plane_file("planes\\C-130.lua");
plane_file("planes\\An-26B.lua");
plane_file("planes\\An-30M.lua");
plane_file("planes\\C-17A.lua");
plane_file("planes\\A-50.lua");
plane_file("planes\\E-3A.lua");
plane_file("planes\\IL-78M.lua");
--plane_file("planes\\KC-10A.lua");
plane_file("planes\\E-2C.lua");
plane_file("planes\\IL-76MD.lua");
plane_file("planes\\F-16C.lua");
plane_file("planes\\F-16C-2.lua");
plane_file("planes\\F-16A.lua");
plane_file("planes\\F-16A-2.lua");
--plane_file("planes\\BAE_Harrier.lua");
plane_file("planes\\RQ-1A_Predator.lua");
plane_file("planes\\yak-40.lua");
--plane_file("planes\\A-10C.lua"); -- Moved to CoreMods
plane_file("planes\\KC-135.lua");
--plane_file("planes\\P-51D.lua");
--plane_file("planes\\TF-51D.lua");


	