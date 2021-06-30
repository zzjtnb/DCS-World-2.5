db_path    = db_path or "./Scripts/Database/";
dofile(db_path.."scripts/utils.lua")

-- Gettext
local gettext = i_18n

if gettext then
	if not i18n then -- mega hack whwn it called from ME we don't havee any gettext in global namespace , but have i18n
		gettext.add_package("dcs", "./l10n")
		_ = function (str)		return gettext.dtranslate("dcs", str) 	end
	else
		_ = gettext.translate
	end
else
	_ = function (str)		return str	end
end

function namespace()
  local res = {};
  
  if (__meta_namespace == nil) then
    __meta_namespace = { namespace = true };
  end
  
  setmetatable(res, __meta_namespace);
  
  return res;
end

function copy_origin(dest,src)
	dest._file   = src._file
	dest._origin = src._origin
end

function dbtype(name, table)
  local res = table;
  local meta;
  
  if name ~= "" then
    meta = { typename = name .. "Descriptor"};
  else
    meta = { anonymous = true };
  end

  if res == nil then
    res = {}
  end
  
  setmetatable(res, meta);
  
  return res;
end

weapons_table 		  			= namespace();
weapons_table.weapons 			= namespace();
weapons_table.weapons.torpedoes = namespace();


dofile (db_path.."Types.lua");
dofile (db_path.."Weapons/weapon_utils.lua")
dofile (db_path.."Weapons/warheads.lua")
-----------------------------------------------------------------
-- guns
-----------------------------------------------------------------
dofile (db_path.."Weapons/shell_table.lua")
dofile (db_path.."Weapons/shell_aiming_table.lua")
dofile (db_path.."Weapons/aircraft_gun_mounts.lua")
dofile (db_path.."Weapons/aircraft_guns.lua")
dofile (db_path.."Weapons/aircraft_gunpods.lua")
----------------------------------------------------------------
dofile (db_path.."Weapons/cluster_data.lua")
dofile (db_path.."Weapons/bombs_table.lua")		-- bombs
dofile (db_path.."Weapons/bombs_data.lua")
dofile (db_path.."Weapons/nurs_table.lua")		-- rockets
dofile (db_path.."Weapons/missiles_table.lua")	-- guided missiles
dofile (db_path.."Weapons/missiles_data.lua")
dofile (db_path.."Weapons/DrawInfo.lua")
dofile (db_path.."Weapons/missiles_prb_coeff.lua")


--declare_missile(name, user_name, model, class, level3, scheme, data, add_data,wstype_name)
function declare_torpedo(torpedo)

	local res = dbtype(torpedo.class_name or "wAmmunition",
	{
		ws_type = torpedo.wsTypeOfWeapon,
		model   = torpedo.model,
	})
	
	
	if torpedo.warhead 	== nil then torpedo.warhead = {} end


	res.server = 	{}
	res.client = 	{}
	res._file     = torpedo._file
	
	copy_recursive_with_metatables(res.server, torpedo);
	copy_recursive_with_metatables(res.client, torpedo);

	res.server.scheme = "schemes/torpedoes/"..torpedo.scheme..".sch";	
	res.client.scheme = "schemes/torpedoes/"..torpedo.scheme..".sch";	
	
	res.server.warhead.fantom = 0;
	res.client.warhead.fantom = 1;
	
	res.server.warhead_water.fantom = 0;
	res.client.warhead_water.fantom = 1;
	
	res.name 		 = torpedo.name;
	res.display_name = torpedo.user_name;
	res.type_name 	 = _("torpedo");

	if torpedo.launcher ~= nil then
        res.server.launcher.server = 1
        res.client.launcher.server = 0
    end
	
	if not res.caliber then
		res.caliber = torpedo.fm.caliber;
	end
	
	if not res.sounderName then 
		res.sounderName = "Weapons/Missile"
	end
	
	if torpedo.properties then
	   copy_recursive(res, torpedo.properties);
    end
	
	if not res.add_attributes then
		res.add_attributes = torpedo.add_attributes;
	end
	
	if not res.mass then
		res.mass = torpedo.mass or torpedo.fm.mass
	end
	
	if not res.Reflection then
		res.Reflection = torpedo.Reflection;
	end
	
	-- calcDamage func
	if ( torpedo.warhead.cumulative_factor and
         torpedo.warhead.cumulative_factor ~= 0) then
         torpedo.Damage = torpedo.warhead.cumulative_factor*torpedo.warhead.expl_mass*2.5;
    elseif (torpedo.warhead.expl_mass) then
         torpedo.Damage = torpedo.warhead.expl_mass*2.5;
    else
         torpedo.Damage = 0.0;
    end
	
	if torpedo.Damage_correction_coeff ~= nil then
		torpedo.Damage = torpedo.Damage_correction_coeff * torpedo.Damage;
	end
	
	torpedo.warhead.caliber = torpedo.warhead.caliber or torpedo.Diam --mm
	
	
	torpedo.M = torpedo.mass
	
	-------------------------------------------------------------
	
	weapons_table.weapons.torpedoes[res.name] = res
	registerResourceName(res,CAT_TORPEDOES)
	return res
end



