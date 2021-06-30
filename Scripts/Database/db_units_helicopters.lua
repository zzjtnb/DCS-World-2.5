db.Units.Helicopters = {};
db.Units.Helicopters.Helicopter = {}
db.Units.Helicopters.RouteTaskCategories = {};

----------------------------------------------------------------------
-- TASKS
----------------------------------------------------------------------
local function task(name, id)
	return { WorldID = id, Name = name };
end

----------------------------------------------------------------------
-- Route task categories
----------------------------------------------------------------------
local function route_task_cat(clsid, name, id, tasks)
	local res = {};
	
	res.CLSID = clsid;
	res.Name = name;
	res.ID = id;
	res.Tasks = tasks;
	
	table.insert(db.Units.Helicopters.RouteTaskCategories, res);
	
	return res;
end

route_task_cat("{4A84060C-0337-4adc-81AD-779FD829F2D0}", _("TakeOff"), 1, {
	task(_("From Runway"), 13),
	task(_("From Parking Area"), 50),
    task(_("From Ground Area"), 51),
    task(_("From Ground Area Hot"), 52),
});

route_task_cat("{BF771547-3FFF-45e9-AC0F-BE9148B45009}", _("Land"), 2, {
	task(_("Landing"), 14),
});

route_task_cat("{206EDA9D-F608-4762-A6FA-EDAC1F02E6EB}", _("Attack"), 3, {
	task(_("Attack Target"), 2),
});

route_task_cat("{4D330070-34AB-4aa6-B200-C1CE53A2C5C1}", _("Refueling"), 4, {
	task(_("Refueling"), 8),
});

route_task_cat("{75CE7C2C-A3D7-4767-AE67-411B40E1D8AE}", _("Turning Point"), 5, {
	task(_("TurningPoint"), 0),
	task(_("FlyOverPoint"), 1),
	task(_("LockAltitude"), 9),
	task(_("UnlockAltitude"), 10),
	task(_("BeginLoop"), 11),
	task(_("EndLoop"), 12),
});

-------------------------------------------------------------------------
-- Helicopters
-------------------------------------------------------------------------
function helicopter( name, displayName, params, pylons, --[[payloads,]] tasks, default_task)
    local res = params;
	res.HumanCockpit = false;--will be setted to true in plugin declaration
    res.Name = name;
    res.DisplayName = displayName;
    res.Pylons = pylons;
    res.Payloads = payloads;
    res.Tasks = tasks;
	res.DefaultTask = default_task;
  	
	if (res.Picture == nil) then
		res.Picture = res.Name .. ".png";
	end
	
	if res.HumanRadio   == nil then
	   res.HumanRadio   = 
	   {
			frequency  = 127.5,
			minFrequency = 100,
			maxFrequency = 400,
			modulation = MODULATION_AM
		}	
	end  
	
	move_separated_data_to_obj_table(res)

	table.insert(db.Units.Helicopters.Helicopter, res);
	return res;
end

function heli_file(f)
	dofile(db_path..f)._file = db_path..f;
end


heli_file("helicopters\\Ka-50.lua");
heli_file("helicopters\\Ka-52.lua");
heli_file("helicopters\\Mi-24V.lua");
heli_file("helicopters\\Mi-8MT.lua");
heli_file("helicopters\\Mi-26.lua");
heli_file("helicopters\\Ka-27.lua");
heli_file("helicopters\\UH-60A.lua");
heli_file("helicopters\\CH-53E.lua");
heli_file("helicopters\\CH-47D.lua");
heli_file("helicopters\\SH-3W.lua");
heli_file("helicopters\\AH-64A.lua");
heli_file("helicopters\\AH-64D.lua");
heli_file("helicopters\\AH-1W.lua");
heli_file("helicopters\\SH-60B.lua");
heli_file("helicopters\\AB-212ASW.lua");
heli_file("helicopters\\Mi-28N.lua");
heli_file("helicopters\\OH-58D.lua");
