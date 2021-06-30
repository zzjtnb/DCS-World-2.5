db.Units.Ships = {};

local function task(name, id)
    return { WorldID =  id, Name = name };
end

function register_ship(GT, params, cats)
    local res = GT;
    for k,v in pairs(params) do res[k] = v; end;
    res.Categories = cats;
    
    table.insert(db.Units.Ships.Ship, res);
end

db.Units.Ships.Tasks =              { task(_("Nothing"), 15) } 
db.Units.Ships.Ship = {};

-- FIXME: replace dofile with loadfile+setfenv+pcall
local function navy_file(f)
	GT = nil
	dofile(db_path..f)
	if(GT) then
		if 	GT.categories then
			for i,o in ipairs(GT.categories) do
				GT.attributes[#GT.attributes + 1] = GT.categories.name
			end
		end
		table.insert(db.Units.Ships.Ship, GT)
	else
		error("GT empty in file "..f)
	end;
end

--- BEGIN Navy
navy_file("navy/speedboat.lua")

navy_file("navy/blue/nimitz.lua")
navy_file("navy/blue/oliver_hazard_perry.lua")
navy_file("navy/blue/ticonderoga.lua")

navy_file("navy/red/albatros.lua")
navy_file("navy/red/kuznetsov.lua")
navy_file("navy/red/molniya.lua")
navy_file("navy/red/moskva.lua")
navy_file("navy/red/neustrashimy.lua")
navy_file("navy/red/piotr_velikiy.lua")
navy_file("navy/red/rezki.lua")

navy_file("navy/red/civil/elnya.lua")
navy_file("navy/red/civil/ivanov.lua")
navy_file("navy/red/civil/yakushev.lua")
navy_file("navy/red/civil/zwezdny.lua")

navy_file("navy/red/submarine/kilo.lua")
navy_file("navy/red/submarine/tango.lua")
--- END Navy
