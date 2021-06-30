-- this cvalues also be passed to graphics effect instnacer for optimization
cartridge_30mm   	   = 203--0
cartridge_50cal  	   = 204--1
cartridge_308cal 	   = 205--2
cartridge_RESERVED_206 = 206--3
cartridge_RESERVED_207 = 207--4
cartridge_RESERVED_208 = 208--5
cartridge_RESERVED_209 = 209--6
cartridge_RESERVED_210 = 210--7
cartridge_RESERVED_211 = 211--8
cartridge_RESERVED_212 = 212--9
cartridge_RESERVED_213 = 213--10






local function fix_shell_ref(o)
	if  type(o) == 'string' then
		return shell_ref(o) or 
			   shell_ref('M134_7_62_T')
	elseif type(o) ~= 'table' then
		return shell_ref('M134_7_62_T')
	end
	return o;
end

local function fix_shells(shells)
	if type(shells) ~= 'table' then
		return {fix_shell_ref(shells)}
	elseif #shells == 0 then --already descriptor
		return {shells}
	end
   	for i,o in ipairs(shells) do
		shells[i] = fix_shell_ref(o)
	end
	return shells
end

 --TODO fix mass calculation !!!
function ammo_supply_mixed(tt)
	tt.shells = fix_shells(tt.shells)
 	tt.get_mass_ = function (t) return t.count * t.shells[1].round_mass end
	return dbtype("wAmmoSupplyMixed", tt);
end

function   ammo_supply_simple(table)
	return ammo_supply_mixed(table)
end

function ammo_supply_dual(tt)
	tt.shell1 = fix_shell_ref(tt.shell1)
	tt.shell2 = fix_shell_ref(tt.shell2)
 	tt.get_mass_ = function (t) return t.count1 * t.shell1.round_mass  + t.count2 * t.shell2.round_mass end
    return dbtype("wAmmoSupplyDual", tt);
end


function declare_gun_mount(name,tbl)

	local    gun_config  = tbl.gun    or {}
	local supply_config  = tbl.supply or {type = "wAmmoSupplyMixed"}
	--clean up, prepare for instancing dbtype
	tbl.supply = nil
	tbl.gun    = nil
	
    local res = dbtype("wAircraftGunMount",tbl);

	res.gun   = dbtype("wGun",gun_config)
	if res.gun.impulse_vec_rot == nil then
	   res.gun.impulse_vec_rot = {x = 0,y = 0,z = 0}
    end
	
	if res.drop_cartridge == nil then
	   res.drop_cartridge = 0
	end
	
	if res.gun.trigger == nil then
	   res.gun.trigger = {name ="GunTrigger"}
	end
	
	if res.effects == nil then
		res.effects = {{ name = "FireEffect", arg = 350 },{name = "SmokeEffect"}}
	end
	
	if  supply_config.type ~= nil and 
		supply_config.type == "wAmmoSupplyDual" then
		res.supply = ammo_supply_dual (supply_config)
	else --mixed
		res.supply = ammo_supply_mixed(supply_config)
	end
	if not res.short_name then 
		res.short_name = name
	end
	if not res.display_name then 
		res.display_name = res.short_name
	end
	
	res.supply.get_mass = function () return res.supply.get_mass_(res.supply) end        
   
    return res;
end

gun_mount_templates = {};

gun_mount_templates["GSh_23_2"] = 
{
  display_name =  _("GSh-2-23");

  gun = dbtype("wGun",
  {
    max_burst_length = 25,
    rates = {3400},

    recoil_coeff = 0.7*1.3,
  });

  supply = ammo_supply_simple({
    shells = shell_ref("GSH23_23_HE_T")
  });
  
  effective_fire_distance = 1500;
}

gun_mount_templates["GSh_23_6"] = 
{
  display_name =  _("GSh-6-23");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 100000,
    rates = {9000},

    recoil_coeff 	= 0.7*1.3,
  });

  supply = ammo_supply_simple({
    shells = shell_ref("GSH23_23_AP")
  });
  
  effective_fire_distance = 1500;
}

gun_mount_templates["GSh_30_1"] = 
{
  display_name =  _("GSh-30-1");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 25,
    rates = {1500},

    recoil_coeff = 0.7*1.3,
  });

  supply = ammo_supply_simple({
    shells = shell_ref("GSH301_30_HE")
  });
  
  effective_fire_distance = 1800;
}

gun_mount_templates["GSh_30_2"] = 
{
  display_name =  _("GSh-2-30");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 25,
    rates = {3000},

    recoil_coeff = 0.7*1.3,
  });

  supply = ammo_supply_simple({
    shells = shell_ref("GSH301_30_AP")
  });
  
  effective_fire_distance = 1800;
}

gun_mount_templates["GSh_30_6"] = 
{
  display_name =  _("GSh-6-30");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 100000,
    rates = {5000},

    recoil_coeff 	= 0.7*1.3,
  });

  supply = ammo_supply_simple({
    shells = shell_ref("GSH301_30_AP")
  });
  
  effective_fire_distance = 1800;
}

gun_mount_templates["NR_30"] = 
{
  display_name =  _("NR-30");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 25,
    rates = {900},

    recoil_coeff = 0.7*1.3,
  });

  supply = ammo_supply_simple({
    shells = shell_ref("HP30_30_AP")
  });
  drop_cartridge = cartridge_30mm;
  
  effective_fire_distance = 1800;
}

gun_mount_templates["2A42"] = 
{
  display_name =  _("2A42");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 20,
    rates = {600,300},

    recoil_coeff = 0.7*1.3,
  });

  supply = ammo_supply_dual({
    shell1 = shell_ref("2A42_30_HE"),
    shell2 = shell_ref("2A42_30_AP"),

    second_box_offset = {0, 0, 0}
  });
  
  drop_cartridge = cartridge_30mm;
  
  effective_fire_distance = 2000;
}

gun_mount_templates["YakB_12_7"] = 
{
  display_name =  _("YakB-12.7");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 400,
    rates = {4500},

    recoil_coeff 	= 0.5*1.3,
  });

  supply = ammo_supply_mixed({ 
	mixes  = { 
				{1,2}
			 },
    shells = {
				shell_ref("YakB_12_7_T"),
				shell_ref("YakB_12_7"),
			 }
				
  });
  
   drop_cartridge = cartridge_30mm;
   
   effective_fire_distance = 1300;
}

gun_mount_templates["KORD_12_7"] = 
{
  display_name =  _("KORD-12.7");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 7,
    rates = {600},

    recoil_coeff 	= 0.5*1.3,
  });

  supply = ammo_supply_mixed({ 
	mixes  = { 
				{1,2}
			 },
    shells = {
				shell_ref("YakB_12_7_T"),
				shell_ref("YakB_12_7"),
			 }
				
  });
  
   drop_cartridge = cartridge_50cal;
   
   effective_fire_distance = 1300;
}

gun_mount_templates["GSHG_7_62"] = 
{
  display_name =  _("GShG-7.62");
  
  gun = dbtype("wGun",
  {
	rates			    = {6000,3500},
    max_burst_length 	= 3200,
	recoil_coeff 	 	= 0.2*1.3,
  });

  supply = ammo_supply_mixed({ 
	mixes  = { 
				{2,2,2,2,1}
			 },
    shells = {
				shell_ref("PKT_7_62_T"),
				shell_ref("PKT_7_62"),
			 }
				
  });
  
  drop_cartridge = cartridge_50cal;

  effective_fire_distance = 1000;
}

gun_mount_templates["AP_30_PLAMYA"] = 
{
  display_name =  _("AP-30 Plamya");
  
  gun = dbtype("wGun",
  {
	rates			    = {500},
    max_burst_length 	= 300,
	recoil_coeff 	 	= 0.7*1.3,
  });

  supply = ammo_supply_simple({
    shells = shell_ref("VOG17")
  });
  
  effective_fire_distance = 1000;
}

gun_mount_templates["M_61"] = 
{
  display_name =  _("M-61");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 100000,
    rates = {6000},
	
    recoil_coeff = 0.7*1.3,
  });
  --0043552: Hornet: Gun should not have tracers
  --Tracers are an option but not often used. My suggestion is to keep them by default because they look awesome, and make it a load option or a menu option to not use tracers.
  supply = ammo_supply_mixed({ 
  mixes  = { 
				{1},--HE with tracers 
				{2},--HE without tracers 
		   },
  shells = {
				shell_ref("M61_20_HE"),		 	-- XM242 HEI-T
				shell_ref("M61_20_HE_INVIS"),	-- M56 HEI without tracers
				shell_ref("M61_20_AP"),			-- M53 API
				shell_ref("M61_20_TP"),			-- M55 TP target practice
				shell_ref("M61_20_TP_T"),		-- M220 TP-T target practice-tracer
				shell_ref("M61_20_PGU28"),		-- PGU-28/B SAPHEI
				shell_ref("M61_20_PGU27"),		-- PGU-27/B TP target practice
				shell_ref("M61_20_PGU30"),		-- PGU-30/B TP-T target practice-tracer
			}
  });
  
  effective_fire_distance = 1500;
}

gun_mount_templates["GAU_8"] = 
{
  display_name =  _("GAU-8");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 100000,
    rates = {4200,2100},

    recoil_coeff = 0.7*1.3,
    impulse_vec_rot = {
        y = 0.0,
		z = -0.05
    }
  });

  supply = ammo_supply_mixed({ 
	mixes  = { 
				{1,1,1,1,2},--CM Combat Mix  4xAP + 1HEI 
				{2},--HE only
				{3},--Target Practice
			 },
    shells = {
				shell_ref("GAU8_30_AP"),--AP
				shell_ref("GAU8_30_HE"),--HE
				shell_ref("GAU8_30_TP"),--Target Practice
			 }
				
  });
  
  effective_fire_distance = 2200;
}

gun_mount_templates["M_39"] = 
{
  display_name =  _("M-39");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 25,
    rates = {1500},

    recoil_coeff = 0.7*1.3,
  });

  supply = ammo_supply_mixed({ 
	mixes  = { 
				{1,1,1,2},--HE only
				{2,1,1,3},--Mix  1xHEI_T + 2xHEI + 1xAP
				{3},--AP only
				{4,5},--Target Practice
			 },
    shells = {
				shell_ref("M39_20_HEI"),--HE
				shell_ref("M39_20_HEI_T"),--HE, Tracer
				shell_ref("M39_20_API"),--AP
				shell_ref("M39_20_TP"),--Target Practice
				shell_ref("M39_20_TP_T"),--Target Practice, Tracer
			 }
				
  });
  
  effective_fire_distance = 1500;
}

gun_mount_templates["BK_27"] = 
{
  display_name =  _("BK 27");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 25,
    rates = {1700},

    recoil_coeff = 0.7*1.3,
  });

  supply = ammo_supply_simple({
    shells = shell_ref("BK_27")
  });
  drop_cartridge = cartridge_30mm;
  
  effective_fire_distance = 1600;
}

gun_mount_templates["ADEN"] = 
{
  display_name =  _("ADEN");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 25,
    rates = {1400},

    recoil_coeff = 0.7*1.3,
  });

  supply = ammo_supply_simple({
    shells = shell_ref("DEFA552_30")
  });
  drop_cartridge = cartridge_30mm;
  
  effective_fire_distance = 1800;
}

gun_mount_templates["DEFA_554"] = 
{
  display_name =  _("DEFA-554");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 25,
    rates = {1800,1200},

    recoil_coeff = 0.7*1.3,
  });

  supply = ammo_supply_simple({
    shells = shell_ref("DEFA552_30")
  });
  drop_cartridge = cartridge_30mm;
  
  effective_fire_distance = 1800;
}

gun_mount_templates["M_230"] = 
{
  display_name =  _("M230");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 25,
    rates = {620},

    recoil_coeff = 0.7*1.3,
  });

  supply = ammo_supply_simple({
    shells = shell_ref("M230_30")
  });
  drop_cartridge = cartridge_30mm;
  
  effective_fire_distance = 1800;
}

gun_mount_templates["M_197"] = 
{
  display_name =  _("M197");

  gun = dbtype("wGun",
  {
    max_burst_length = 25,
    rates = {1500},

    recoil_coeff = 0.7*1.3,
  });

  supply = ammo_supply_simple({
    shells = shell_ref("M197_20")
  });
  drop_cartridge = cartridge_30mm;
  
  effective_fire_distance = 1500;
}

gun_mount_templates["M_2"] = 
{
  display_name =  _("M2 Browning");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 25,
    rates = {800},

    recoil_coeff = 0.7*1.3,
  });

  
  supply = ammo_supply_mixed({ 
	mixes  = { 
				{1,1,1,2},--Combat Mix  3xAP + 1xAPIT 
				{1},--AP only
				{2},--APIT only
			 },
    shells = {
				shell_ref("M2_50_aero_AP"),--AP
				shell_ref("M20_50_aero_APIT"),--APIT
				
			 }
				
  });
  drop_cartridge = cartridge_50cal;
  
  effective_fire_distance = 1200;
}

gun_mount_templates["M_60"] = 
{
  display_name =  _("M60");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 25,
    rates = {600},

    recoil_coeff = 0.7*1.3,
  });

  supply = ammo_supply_simple({
    shells = shell_ref("7_62x51")
  });
  
  drop_cartridge = cartridge_308cal;
  
  effective_fire_distance = 1500;
}

function PK_(shell_mix)
	return {
	  gun = dbtype("wGun",
	  {
		max_burst_length = 1e6,
		rates 		 	 = {750},
		recoil_coeff 	 = 0.7*1.3,
	  });
	  short_name   =    "PK-3",
	  display_name =  _("PK-3"),
	  supply = ammo_supply_mixed({ 
		mixes  = { 
					shell_mix or {2,2,2,2,1}
				 },
		shells = {
					shell_ref("PKT_7_62_T"),
					shell_ref("PKT_7_62"),
				 }
	  });
	  drop_cartridge 		  = cartridge_308cal;
	  effective_fire_distance = 1500;
	}
end

gun_mount_templates["PK_mix_1"] = PK_({1,2,2,2,2})
gun_mount_templates["PK_mix_2"] = PK_({2,1,2,2,2})
gun_mount_templates["PK_mix_3"] = PK_({2,2,1,2,2})

gun_mount_templates["M_134"] = 
{
  display_name =  _("M134 Minigun");
  
  gun = dbtype("wGun",
  {
	rates			    = {4000,2000},
    max_burst_length 	= 3200,
	recoil_coeff 	 	= 0.7*1.3,
  });

  supply = ammo_supply_simple({
    shells = shell_ref("M134_7_62_T")
  });
  
  drop_cartridge = cartridge_308cal;

  effective_fire_distance = 1500;
}


local function gunpod_23mm_chain()
	return ammo_supply_mixed({ 
		mixes  = { 
					{1,2,2,2,3,3}
				 },
		shells = {
					shell_ref("GSH23_23_HE_T"),
					shell_ref("GSH23_23_AP"),
					shell_ref("GSH23_23_HE"),
				 }
	  })
	--[[
		return ammo_supply_simple({	shells = shell_ref("GSH23_23_HE_T") });
	--]]
end

gun_mount_templates["GSh_23_UPK"] = 
{
  display_name =  _("UPK-23-250");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 10,
    rates = {3400},

    recoil_coeff = 0.7*1.3,
  });

  supply 		 = gunpod_23mm_chain();
  
  drop_cartridge = cartridge_50cal;
  
  effective_fire_distance = 1500;
}

gun_mount_templates["GSh_23_SPUU22"] = 
{
  display_name =  _("SPPU-22");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 25,
    rates = {3400},

    recoil_coeff = 0.7*1.3,
  });

  supply 		 = gunpod_23mm_chain();
  
  drop_cartridge = cartridge_50cal;
  
  effective_fire_distance = 1500;
}

gun_mount_templates["M2_OH58D"] = 
{
  display_name =  _("M2 OH-58D");
  
  gun = dbtype("wGun",
  {
    max_burst_length = 10,
    rates = {800},

    recoil_coeff = 0.7*1.3,
  });

  supply = ammo_supply_simple({
    shells = shell_ref("M2_12_7_T")
  });
  
  drop_cartridge = cartridge_50cal;
  
  effective_fire_distance = 1500;
}
