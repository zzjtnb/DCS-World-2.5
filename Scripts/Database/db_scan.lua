-- requires: lfs, io, i_18n
plugins_to_load = {}

local function is_a_module(path)
    if lfs.attributes(path..'/entry.lua', 'mode') == 'file' then return true end
    if _ManifestName and lfs.attributes(path..'/'.._ManifestName, 'mode') == 'file' then return true end
    return false
end

local function try_plugin(path, requireManifest, ptype)
    if is_a_module(path) then
        local manifestOK = false
        if requireManifest and _AttachModule then
            manifestOK = _AttachModule(path)
        elseif not requireManifest and ptype == "terrain" and _ValidateTerrain then
            if not _ValidateTerrain(path) then return end
        end
        table.insert(plugins_to_load, {dirName = path, requiresManifest = requireManifest, manifestOK = manifestOK, type = ptype})
    end
end

local function scan_subdirs(path, requireManifest, ptype)
    local dirs = {}
    -- scan
    for file in lfs.dir(path) do
        if string.sub(file, 1, 1) ~= '.' then
           local dir = path.."/"..file
           if lfs.attributes (dir, "mode") == "directory" then
               table.insert(dirs, dir)
           end
        end
    end
    table.sort(dirs)
    -- load
    for i,dir in ipairs(dirs) do
        try_plugin(dir, requireManifest, ptype)
    end
end

local function scan_categories(path, requireManifest)
    --print('Scanning path: '..path)
    scan_subdirs(path..'/tech',      requireManifest, "tech")
    scan_subdirs(path..'/aircraft',  requireManifest, "aircraft")
    scan_subdirs(path..'/terrains',  requireManifest, "terrain")
    scan_subdirs(path..'/campaigns', requireManifest, "campaign")
    scan_subdirs(path..'/resource',  requireManifest, "resource")
    scan_subdirs(path..'/services',  requireManifest, "services")
end

-- Core Mods 
scan_subdirs("./CoreMods"		   , true, "core")
scan_subdirs("./CoreMods/tech"     , true, "core")
scan_subdirs("./CoreMods/aircraft" , true, "core")
scan_subdirs("./CoreMods/resource" , true, "core")
scan_subdirs("./CoreMods/services" , true, "core")

-- scan mods
scan_categories("./Mods", true)

--scan user mods
if not blank_run and not __NO_USERMODS__ then
    print('Scanning usermods...')
    scan_categories(lfs.writedir().."CoreMods", false)
    scan_categories(lfs.writedir()..'Mods', false)
end


local function get_mods_path_config()
    local file = "./Config/mods_path.cfg"
    local b = lfs.attributes(file) 
    if not b or b.mode ~= 'file' then  
        return
    end
        
    local func, err = loadfile(file)            
    if func then
        local env = {}		
        setfenv(func, env)
        local ok, err = pcall(func)
        if ok then
            return env
        else
            print("ERROR pcall: ", err, file)
        end
    else
        print("ERROR loadfile: ", err, file)
    end    
    return nil
end


if __FINAL_VERSION__==false then
    local cfg = get_mods_path_config()
    if cfg and cfg.terrain then
        for i,path_terrain in ipairs(cfg.terrain) do
            if lfs.attributes(path_terrain, 'mode') == 'directory' then
                table.insert(plugins_to_load, {dirName = path_terrain, requiresManifest=false, manifestOK = false, type="terrain"})
            end    
        end
    end    
end

-- scan demos
local function get_retail_config()
    
	if blank_run then 
		return nil 
	end
        local rtl, err = io.open("Config/retail.cfg", "r")
        if rtl then
		local cfg = rtl:read("*line")
		rtl:close()
		return cfg
	end
	return nil
end


if get_retail_config() ~= '1' then
    scan_categories("./DemoMods", true)
end

local
function get_plugins_enabled()
    if blank_run then 
        return nil 
    end

    local f,err = loadfile(lfs.writedir()..'Config/pluginsEnabled.lua')
    if not f then
       return
    end
    local env = {_ = function(p) return p end} -- ;
    setfenv(f, env)
    local ok, err = pcall(f)
    if not ok then
       return 
    end
    
    return env.pluginsEnabled
end
pluginsEnabled = get_plugins_enabled() or {}

--[[
local function get_plugins_owned(moduls_tbl)
    if not moduls_tbl then return nil end
    local owned = {}
    for i,v in ipairs(moduls_tbl) do
        local uid = v.update_id
        if uid then
            owned[uid] = true
            print('Owns: ' .. uid)
        end
    end
    return owned
end
pluginsOwned = get_plugins_owned(moduls) or {}
]]

db_path = db_path or "./Scripts/Database/";
dofile(db_path.."db_main.lua");
