function aiming_table(name, table)
	table.precalculateAimingTable = table.precalculateAimingTable or false
	table.precalculateAirDefenceAimingTable = table.precalculateAirDefenceAimingTable or false
    weapons_table.weapons.shells_aiming[name] = dbtype("wShellAimingTable", table);
end

function shell(name, display_name, table)
  table.type_name = _("shell");
  table.name = name;
  table.display_name = display_name;
  table.AP_cap_caliber = table.AP_cap_caliber or table.caliber

  if table.subcalibre == nil then
     table.subcalibre = false
  end

  table.rebound_ground = table.rebound_ground or
  {
    angle0          = 55.0,
    angle100        = 73.0,
	deviation_angle     = 30.0,
	velocity_loss_factor  = 0.5,
	cx_factor         = 5.0,
  }  
  table.rebound_concrete = table.rebound_concrete or
  {
    angle0          = 50.0,
    angle100        = 75.0,
	deviation_angle     = 30.0,
	velocity_loss_factor  = 0.5,
	cx_factor         = 5.0,
  }
  table.rebound_water    = table.rebound_water or
  {
    angle0          = 65.0,
    angle100        = 83.0,
	deviation_angle     = 30.0,
	velocity_loss_factor  = 0.5,
	cx_factor         = 5.0,
  }
  table.rebound_object   = table.rebound_object or table.rebound_concrete;
  table.damage_factor = table.damage_factor or 639.0; -- coefficient impulse to explosive equivalent
  if table.visual_effect_correction == nil then
     table.visual_effect_correction = 0;
  end
  if table.visual_effect_correction_rebound == nil then
     table.visual_effect_correction_rebound = 0.1;
  end
  if (table.round_mass == nil) then
    table.round_mass = table.mass;
  end
  if (table.cartridge_mass == nil) then
    table.cartridge_mass = 0.0;
  end  
  if  table.full_scale_time == nil then
	  table.full_scale_time = -1
  end
  if table.smoke_tail_life_time == nil then
	 table.smoke_tail_life_time = -1
  end
  if table.tracer_on == nil then
	 table.tracer_on = 0
  end
  
  if table.silent_self_destruction == nil then
	 table.silent_self_destruction = false
  end

  table.payload = table.payload or 0.0;
  --table.payloadEffect = table.payloadEffect or "Concussion";
  --table.payloadMaterial = table.payloadMaterial or "TNT";
  table.explosive = table.explosive or (table.payload * 5.417);
  table.piercing_mass = table.piercing_mass or table.mass;
  if table.explosive>0.0 and table.payload==0.0 then
    table.payload = table.explosive / 5.417;
    if table.explosive/table.mass>0.1 then
      table.piercing_mass = table.mass / 5.0;
    end
  end

  if (table.cumulative_mass == nil) then
    table.cumulative_mass = 0.0;
    table.cumulative_thickness = 0.0;
  end

  table.rotation_freq = table.rotation_freq or 7.0;


  if table.aiming_table then
	 aiming_table(table.name, table.aiming_table)
  end

  weapons_table.weapons.shells[name] = dbtype("wShell", table);
end

function shell_ref(name)
  return weapons_table.weapons.shells[name];
end

weapons_table.weapons.shells 		= namespace();
weapons_table.weapons.shells_aiming = namespace();

local cartridge_30mm  = 203
local cartridge_50cal = 204
local cartridge_308cal = 205


shell("2A42_30_HE", _("2A42_30_HE"), { --3UOF8
  model_name    = "tracer_bullet_red",
  v0        = 980.0,
  Dv0   = 0.0081,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.390,
  round_mass = 0.98,
  explosive     = 0.390, -- 0.0720 kg in real
  life_time     = 9,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.7,0.70,0.25,0.236,2.31},
  k1        = 6.0e-09,
  tracer_off    = 9,
  scale_tracer  = 1,

  name = "30mm HE",
  
  visual_effect_correction_rebound = 0,
  
  cartridge = 0,
});

shell("2A42_30_AP", _("2A42_30_AP"), { --3UBR6
  model_name    = "tracer_bullet_red",
  v0    = 990.0,
  Dv0   = 0.0081,
  Da0     = 0.0004,
  Da1     = 0.0,
  mass      = 0.390,
  round_mass = 0.98,
  explosive     = 0.0000,
  life_time     = 30,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.66,0.29,0.214,2.98},
  k1        = 5.5e-09,
  tracer_off    = 9,
  scale_tracer  = 1,

  name = "30mm AP",
   
  cartridge = 0,
});

shell("M230_30", _("M230_30"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 792.0,
  Dv0   = 0.0070,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.242,
  round_mass = 0.567,
  explosive     = 0.242, -- 0.01 kg in real
  cumulative_mass = 0.28,
  cumulative_thickness = 0.05,
  life_time     = 11,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.75,0.78,0.270,1.65},
  k1        = 2.2e-08,
  tracer_off    = 3,
  scale_tracer  = 1,
  
  name = "30mm HE",
  
  cartridge = 0,
});

shell("M197_20", _("M197_20"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 1030.0,
  Dv0   = 0.0060,
  Da0     = 0.0010,
  Da1     = 0.0,
  mass      = 0.100,
  round_mass = 0.349,
  explosive     = 0.0000,
  life_time     = 5,
  caliber     = 20.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,1.27,0.70,0.200,2.30},
  k1        = 2.1e-08,
  tracer_off    = 3,
  scale_tracer  = 1,

  name = "20mm AP",
  
  cartridge = 0,
});

shell("L21A1_30_HE", _("L21A1_30_HE"), { -- HEI
  model_name    = "tracer_bullet_yellow",
  v0    = 1070.0,
  Dv0   = 0.0060,
  Da0     = 0.0006,
  Da1     = 0.0,
  mass      = 0.357,
  explosive     = 0.357, -- 0.0750 kg in real
  life_time     = 31,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {-0.2, 0.72, 0.85, 0.08, 2.40},
  k1        = 5.7e-09,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "30mm HE",
  
  cartridge = 0,
});

shell("L14A2_30_APDS", _("L14A2_30_APDS"), { -- APDS
  model_name    = "tracer_bullet_white",
  v0    = 1175.0,
  Dv0   = 0.0060,
  Da0     = 0.0006,
  Da1     = 0.0,
  mass      = 0.300,
  explosive     = 0.0,
  life_time     = 31,
  caliber     = 30.0,
  subcalibre     = true,
  AP_cap_caliber = 13.0,  --указана масса и диаметр "стрелы"
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {-0.2, 0.72, 0.85, 0.08, 2.40},
  k1        = 5.7e-09,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "30mm AP",
  
  cartridge = 0,
});

--ОФЗТ-30
shell("HP30_30_HE", _("HP30_30_HE"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 780.0,
  Dv0   = 0.0081,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.410,
  explosive     = 0.410, -- 0.0675 kg in real
  life_time     = 6,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.86,0.25,0.236,2.00},
  k1        = 1.2e-08,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "30mm HE",
  
  cartridge = 0,
});

--БТ-30
shell("HP30_30_AP", _("HP30_30_AP"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 780.0,
  Dv0   = 0.0081,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.410,
  explosive     = 0.0,
  life_time     = 6,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.86,0.25,0.236,2.00},
  k1        = 1.2e-08,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "30mm AP",
  
  cartridge = 0,
});

--ОФЗТ-23
shell("GSH23_23_HE_T", _("GSH23_23_HE_T"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 715.0,
  Dv0   = 0.0050,
  Da0     = 0.0007,
  Da1     = 0.0,
  mass      = 0.175,
  round_mass = 0.44,
  explosive     = 0.175, -- 0.0180 kg in real
  life_time     = 6,
  caliber     = 23.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.74,0.65,0.150,1.78},
  k1        = 2.3e-08,
  tracer_on    = 0.01,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "23mm HE T",
  
  cartridge = 0,
});

--ОФЗ-23
shell("GSH23_23_HE", _("GSH23_23_HE"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 715.0,
  Dv0   = 0.0050,
  Da0     = 0.0007,
  Da1     = 0.0,
  mass      = 0.175,
  explosive     = 0.175, -- 0.0180 kg in real
  life_time     = 6,
  caliber     = 23.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.74,0.65,0.150,1.78},
  k1        = 2.3e-08,
  tracer_on    = 0.01,
  tracer_off    = 0,
  scale_tracer  = 1,

  name = "23mm HE",
  
  cartridge = 0,
});

--БЗА-23
shell("GSH23_23_AP", _("GSH23_23_AP"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 715.0,
  Dv0   = 0.0050,
  Da0     = 0.0007,
  Da1     = 0.0,
  mass      = 0.175,
  explosive     = 0.0,
  life_time     = 6,
  caliber     = 23.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.74,0.65,0.150,1.78},
  k1        = 2.3e-08,
  tracer_on    = 0.01,
  tracer_off    = 0,
  scale_tracer  = 1,

  name = "23mm AP",
  
  cartridge = 0,
});

--ОФЗТ-30
shell("GSH301_30_HE", _("GSH301_30_HE"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 890.0,
  Dv0   = 0.0081,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.390,
  round_mass = 0.98,
  explosive     = 0.390, -- 0.0720 kg in real
  life_time     = 6,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.7,0.70,0.25,0.236,2.31},
  k1        = 7.6e-09,
  tracer_on 	= 0.01,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "30mm HE",
  
  cartridge = 0,
});

--БТ-30
shell("GSH301_30_AP", _("GSH301_30_AP"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 890.0,
  Dv0   = 0.0081,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.390,
  round_mass = 0.98,
  explosive     = 0.0,
  life_time     = 6,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.7,0.70,0.25,0.236,2.31},
  k1        = 7.6e-09,
  tracer_on 	= 0.01,
  tracer_off    = 0,
  scale_tracer  = 1,

  name = "30mm AP",
  
  cartridge = 0,
});

shell("MAUZER30_30", _("MAUZER30_30"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 1100.0,
  Dv0   = 0.0040,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.363,
  round_mass = 0.85,
  explosive     = 0.363, -- 0.0750 kg in real
  life_time     = 8.2,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.72,0.80,0.150,2.15},
  k1        = 4.72e-9,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "30mm HE",
  
  cartridge = 0,
});

shell("DEFA552_30", _("DEFA552_30"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 820.0,
  Dv0   = 0.0040,
  Da0     = 0.0008,
  Da1     = 0.0,
  mass      = 0.242,
  round_mass = 0.567,
  explosive     = 0.0000,
  life_time     = 5,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.75,0.78,0.270,1.65},
  k1        = 2.0e-08,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "30mm AP",
  
  cartridge = 0,
});

shell("BK_27", _("BK_27"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 1025.0,
  Dv0   = 0.0040,
  Da0     = 0.0008,
  Da1     = 0.0,
  mass      = 0.24,
  round_mass = 0.616,
  explosive     = 0.24, -- 0.04 kg estimated
  life_time     = 5,
  caliber     = 27.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1,0.605,0.8,0.22,1.9},
  k1        = 6.3e-09,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "27mm HE",
  
  cartridge = 0,
});

shell("M2_12_7_T", _("M2_12_7_T"), {
  model_name    = "tracer_bullet_red",
  v0    = 930.0,
  Dv0   = 0.0060,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.046,
  round_mass = 0.145,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 12.7,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.65,0.175,1.80},
  k1        = 1.5e-08,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "12.7",
  
  cartridge = 0,
});

shell("Utes_12_7x108", _("Utes_12_7x108"), {
  model_name    = "tracer_bullet_green",
  v0    = 840.0,
  Dv0   = 0.0082,
  Da0     = 0.00085,
  Da1     = 0.0,
  mass      = 0.047,
  round_mass = 0.130,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 12.7,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.61,0.8,0.27,1.9},
  k1        = 1.2e-08,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "12.7",
  
  cartridge = 0,
});

shell("Utes_12_7x108_T", _("Utes_12_7x108_T"), {
  model_name    = "tracer_bullet_green",
  v0    = 840.0,
  Dv0   = 0.0082,
  Da0     = 0.00085,
  Da1     = 0.0,
  mass      = 0.047,
  round_mass = 0.130,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 12.7,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.61,0.80,0.270,1.90},
  k1        = 1.2e-08,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "12.7",
  
  cartridge = 0,
});

shell("M2_12_7", _("M2_12_7"), {
  model_name    = "tracer_bullet_green",
  v0    = 930.0,
  Dv0   = 0.0060,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.046,
  round_mass = 0.145,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 12.7,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.65,0.175,1.80},
  k1        = 1.5e-08,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "12.7",
  
  cartridge = 0,
});

shell("M2_50_aero_AP", _("M2_50_aero_AP"), {
  model_name    = "tracer_bullet_A-10",
  v0    = 823.5,
  Dv0   = 0.0082,
  Da0     = 0.00085,
  Da1     = 0.0,
  mass      = 0.046,
  round_mass = 0.137,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 12.7,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.61,0.80,0.270,2},
  k1        = 1.4e-08,
  tracer_off    =-1,
  tracer_on     = 0,
  scale_tracer  = 1,

  smoke_tail_life_time = 0.5,
  name = "12.7",
  
  cartridge = 0,
});

shell("M20_50_aero_APIT", _("M20_50_aero_APIT"), {
  model_name    = "tracer_bullet_red",
  v0    = 875,
  Dv0   = 0.0082,
  Da0     = 0.00085,
  Da1     = 0.0,
  mass      = 0.041,
  round_mass = 0.132,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 12.7,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.61,0.80,0.270,2},
  k1        = 1.35e-08,
  tracer_off    = 4,
  tracer_on     = 0.01,
  scale_tracer  = 1,
  smoke_tail_life_time = 0.5,
  name = "12.7",
  
  cartridge = 0,
});



shell("YakB_12_7_T", _("YakB_12_7_T"), {
  model_name    = "tracer_bullet_green",
  v0    = 810.0,
  Dv0   = 0.0080,
  Da0     = 0.00085,
  Da1     = 0.0,
  mass      = 0.048,
  round_mass = 0.154,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 12.7,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.61,0.80,0.270,1.90},
  k1        = 1.2e-08,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "12.7",
  
  cartridge = 0,
});

shell("YakB_12_7", _("YakB_12_7"), {
  model_name    = "tracer_bullet_green",
  v0    = 810.0,
  Dv0   = 0.0080,
  Da0     = 0.00085,
  Da1     = 0.0,
  mass      = 0.048,
  round_mass = 0.154,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 12.7,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.61,0.80,0.270,1.90},
  k1        = 1.2e-08,
  tracer_off    = -100,
  scale_tracer  = 1,

  name = "12.7",
  
  cartridge = 0,
});

shell("PKT_7_62_T", _("PKT_7_62_T"), {
  model_name    = "tracer_bullet_red",
  v0    = 855.0,
  Dv0   = 0.0082,
  Da0     = 0.0004,
  Da1     = 0.0,
  mass      = 0.0096,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 7.62,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.65,0.175,1.8},
  k1        = 2.9e-08,
  tracer_off    = 3,
  scale_tracer  = 1,

  name = "7.62",
  
  cartridge = 0,
});

shell("PKT_7_62", _("PKT_7_62"), {
  model_name    = "tracer_bullet_red",
  v0    = 855.0,
  Dv0   = 0.0082,
  Da0     = 0.0004,
  Da1     = 0.0,
  mass      = 0.0096,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 7.62,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.65,0.175,1.8},
  k1        = 2.9e-08,
  tracer_off    = -100,
  scale_tracer  = 1,

  name = "7.62",
  
  cartridge = 0,
});

--АК-74 5.45x39
shell("5_45x39", _("5_45x39"), {
  model_name    = "tracer_bullet_red",
  v0    = 900, --880
  Dv0   = 0.0082,
  Da0     = 0.0004,
  Da1     = 0.0,
  mass      = 0.00343,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 5.45,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.65,0.175,1.8},
  k1        = 2.9e-08, -- ???
  tracer_off    = 3,
  scale_tracer  = 1,

  name = "5.45",
  
  cartridge = 0,
});

-- M-4 5.56x45, M-249 Machinegun
shell("5_56x45", _("5_56x45"), {
  model_name    = "tracer_bullet_red",
  v0    = 884,
  Dv0   = 0.0082,
  Da0     = 0.0004,
  Da1     = 0.0,
  mass      = 0.00356,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 5.56,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.65,0.175,1.8},
  k1        = 2.9e-08, -- ???
  tracer_off    = 3,
  scale_tracer  = 1,

  name = "5.56",
  
  cartridge = 0,
});

-- АК-47, ПКС 7.62x39 (пулемет Калашникова станковый)
shell("7_62x39", _("7_62x39"), {
  model_name    = "tracer_bullet_red",
  v0    = 720,
  Dv0   = 0.0082,
  Da0     = 0.0004,
  Da1     = 0.0,
  mass      = 0.0079,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 7.62,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.65,0.175,1.8},
  k1        = 2.9e-08, -- ???
  tracer_off    = 3,
  scale_tracer  = 1,

  name = "7.62",
  
  cartridge = cartridge_308cal,
});

-- ПКТ 7.62x54 (пулемет Калашникова танковый)
shell("7_62x54", _("7_62x54"), {
  model_name    = "tracer_bullet_red",
  v0    = 820	,
  Dv0   = 0.0082,
  Da0     = 0.0004,
  Da1     = 0.0,
  mass      = 0.0119,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 7.62,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.65,0.175,1.8},
  k1        = 2.9e-08, -- ???
  tracer_off    = 3,
  scale_tracer  = 1,

  name = "7.62",
  
  cartridge = cartridge_308cal,
});


shell("7_62x54_NOTRACER", _("7_62x54"), {
  model_name    = "tracer_bullet_red",
  v0    = 810.0,
  Dv0   = 0.0080,
  Da0     = 0.00085,
  Da1     = 0.0,
  mass      = 0.048,
  round_mass = 0.154,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 12.7,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.61,0.80,0.270,1.90},
  k1        = 1.2e-08,
  tracer_off    = -100,
  scale_tracer  = 1,

  name = "7.62",
  
  cartridge = 0,
});

--7.62x51 NATO (.308 Winchester)
-- M240C machinegun LAV-25, M2 Bradley, M6 Linebacker
shell("7_62x51", _("7_62x51"), {
  model_name    = "tracer_bullet_red",
  v0    = 838,
  Dv0   = 0.0082,
  Da0     = 0.0004,
  Da1     = 0.0,
  mass      = 0.00933,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 7.62,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.65,0.175,1.8},
  k1        = 2.9e-08, -- ???
  tracer_on    = 0.01,
  tracer_off    = 3,
  scale_tracer  = 1,
  scale_smoke	= 0.0,
  cartridge = cartridge_308cal,
  
  name = "7.62",
});

shell("KPVT_14_5_T", _("KPVT_14_5_T"), {
  model_name    = "tracer_bullet_green",
  v0    = 998.0,
  Dv0   = 0.0050,
  Da0     = 0.0008,
  Da1     = 0.0,
  mass      = 0.064,
  explosive     = 0.0000,
  life_time     = 11,
  caliber     = 14.5,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0,0.68,0.75,0.27,2.0},
  k1        = 9.7e-09,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "14.50",
  
  cartridge = 0,
});

shell("Rh202_20_AP", _("Rh202_20_AP"), { -- AT-53
  model_name    = "tracer_bullet_yellow",
  v0    = 1050.0,
  Dv0   = 0.0050,
  Da0     = 0.0002,
  Da1     = 0.0,
  mass      = 0.120,
  round_mass = 0.349,
  explosive     = 0.0000,
  life_time     = 4,
  caliber     = 20.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,1.27,0.70,0.200,2.30},
  k1        = 1.9e-08,
  tracer_off    = 2,
  scale_tracer  = 1,

  name = "20mm AP",
  
  cartridge = 0,
});

shell("Rh202_20_HE", _("Rh202_20_HE"), { -- AT-74
  model_name    = "tracer_bullet_yellow",
  v0    = 1050.0,
  Dv0   = 0.0050,
  Da0     = 0.0002,
  Da1     = 0.0,
  mass      = 0.120,
  explosive     = 0.120, -- 0.018 kg in real
  life_time     = 4,
  caliber     = 20.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,1.27,0.70,0.200,2.30},
  k1        = 1.9e-08,
  tracer_off    = 2,
  scale_tracer  = 1,

  name = "20mm HE",
  
  cartridge = 0,
});

shell("M242_25_AP_M919", _("M242_25_AP_M919"), {
  model_name    = "tracer_bullet_white",
  v0    = 1405.0,
  Dv0   = 0.00508,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.130,
  round_mass = 0.487,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 11.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.78,0.80,0.15,2.20},
  k1        = 7.7e-10,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "25mm AP",
  
  cartridge = 0,
});

shell("M242_25_AP_M791", _("M242_25_AP_M791"), {
  model_name    = "tracer_bullet_white",
  v0    = 1310.0,
  Dv0   = 0.00508,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.155,
  explosive     = 0.0000,
  life_time     = 6.2,
  caliber     = 25.0,
  subcalibre     = true,
  AP_cap_caliber = 13.0,  --указана масса и диаметр "стрелы"
  piercing_mass = 0.130,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.75,0.70,0.20,1.70},
  k1        = 1.1e-09,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "25mm AP",
  
  cartridge = 0,
});

shell("M242_25_HE_M792", _("M242_25_HE_M792"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 1100.0,
  Dv0   = 0.00508,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.185,
  explosive     = 0.185, -- 0.032 kg in real
  life_time     = 7,
  caliber     = 25.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.78,0.60,0.15,1.80},
  k1        = 9.4e-09,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "25mm HE",
  
  cartridge = 0,
});

shell("2A28_73", _("2A28_73"), {
  model_name    = "pula",
  v0    = 550.0,
  Dv0   = 0.0060,
  Da0     = 0.002,
  Da1     = 0.0,
  mass      = 6.000,
  explosive     = 0.45,
  cumulative_mass = 2.8,
  cumulative_thickness = 0.25,
  life_time     = 11,
  caliber     = 73.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.75,0.60,0.400,1.30},
  k1        = 0.0e-09,
  tracer_off    = 10,
  scale_tracer  = 0,

  name = "73mm HEAT",
  
  cartridge = 0,
});

shell("2A38_30_HE", _("2A38_30_HE"), {
  model_name    = "tracer_bullet_red",
  v0    = 960.0,
  Dv0   = 0.0081,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.390,
  explosive     = 0.390, -- 0.0720 kg in real
  life_time     = 10,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.7,0.70,0.25,0.236,2.31},
  k1        = 5.7e-09,
  tracer_off    = 10,
  scale_tracer  = 1,

  name = "30mm HE",
  
  cartridge = 0,
});

shell("2A38_30_AP", _("2A38_30_AP"), {
  model_name    = "tracer_bullet_red",
  v0    = 960.0,
  Dv0   = 0.0081,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.390,
  explosive     = 0.0,
  life_time     = 10,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.7,0.70,0.25,0.236,2.31},
  k1        = 5.7e-09,
  tracer_off    = 10,
  scale_tracer  = 1,

  name = "30mm AP",
  
  cartridge = 0,
});

shell("AK630_30_HE", _("AK630_30_HE"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 960.0,
  Dv0   = 0.0081,
  Da0     = 0.002,
  Da1     = 0.0,
  mass      = 0.390,
  explosive     = 0.390, -- 0.0720 kg in real
  life_time     = 6,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.7,0.70,0.25,0.236,2.31},
  k1        = 5.7e-09,
  tracer_off    = 6,
  scale_tracer  = 1,

  name = "30mm HE",
  
  cartridge = 0,
});

shell("AK630_30_AP", _("AK630_30_AP"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 960.0,
  Dv0   = 0.0081,
  Da0     = 0.002,
  Da1     = 0.0,
  mass      = 0.390,
  explosive     = 0.0,
  life_time     = 6,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.7,0.70,0.25,0.236,2.31},
  k1        = 5.7e-09,
  tracer_off    = 6,
  scale_tracer  = 1,

  name = "30mm AP",
  
  cartridge = 0,
});

-- http://en.wikipedia.org/wiki/Oerlikon_35_mm_twin_cannon
shell("KDA_35_HE", _("KDA_35_HE"), {
  model_name    = "tracer_bullet_yellow",
  v0    = 1175.0,
  Dv0   = 0.0060,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.540,
  explosive     = 0.540, -- 0.0980 kg in real
  life_time     = 8.2,
  caliber     = 35.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.80,0.150,2.40},
  k1        = 3.1e-09,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "35mm HE",
  
  cartridge = 0,
});
-- AHEAD type (Anti-missile rounds, that fire "152 heavy tungsten metal sub-projectiles".)
shell("KDA_35_AP", _("KDA_35_AP"), {
  model_name    = "tracer_bullet_white",
  v0    = 1050.0,
  Dv0   = 0.0060,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.750,
  explosive     = 0.0000,
  life_time     = 8.2,
  caliber     = 35.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.80,0.150,2.40},
  k1        = 2.5e-09,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "35mm AP",
  
  cartridge = 0,
});
-- FAPDS type (Frangible Armour Piercing Discarding Sabot)
shell("KDA_35_FAPDS", _("KDA_35_FAPDS"), {
  model_name    = "kinetic_type1",
  v0    = 1440.0,
  Dv0   = 0.0060,
  Da0     = 0.0005,
  Da1     = 0.0,
  mass      = 0.375,
  explosive     = 0.0000,
  life_time     = 8.2,
  caliber     = 35.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.80,0.150,2.40},
  k1        = 2.5e-09,
  tracer_off    = 4,
  scale_tracer  = 1,

  name = "35mm FAPDS",
  
  cartridge = 0,
});

shell("2A7_23_HE", _("2A7_23_HE"), {
  model_name    = "tracer_bullet_red",
  v0    = 930.0,
  Dv0   = 0.0080,
  Da0     = 0.0007,
  Da1     = 0.0,
  mass      = 0.189,
  explosive     = 0.189, -- 0.0195 kg in real
  life_time     = 7,
  caliber     = 23.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.74,0.65,0.150,1.78},
  k1        = 9.6e-09,
  tracer_off    = 5,
  tracer_on     = 0.01,
 
  scale_tracer  = 1,

  name = "23mm HE",
  
  cartridge = 0,
});

shell("2A7_23_AP", _("2A7_23_AP"), {
  model_name    = "tracer_bullet_red",
  v0    = 930.0,
  Dv0   = 0.0080,
  Da0     = 0.0007,
  Da1     = 0.0,
  mass      = 0.189,
  explosive     = 0.0,
  life_time     = 7,
  caliber     = 23.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.74,0.65,0.150,1.78},
  k1        = 9.6e-09,
  tracer_on     = 0.01,
  tracer_off    = 5,
  scale_tracer  = 1,

  name = "23mm AP",
  
  cartridge = 0,
});

shell("M383", _("M383"), { -- M383 / M384 40mm HE (high-explosive) cartridges for Mk.19
  model_name    = "pula",
  v0    = 240.69,
  Dv0   = 0.01,
  Da0     = 0.001,
  Da1     = 0.001,
  mass      = 0.248,
  explosive     = 0.100, -- 0.045 kg in real
  life_time     = 35,
  caliber     = 40.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.81,0.67,0.154,1.84},
  k1        = 5.3e-08,
  tracer_off    = 35, -- equal to life_time
  scale_tracer  = 0,
  

  name = "M383 40mm HE gr",
  
  cartridge = 0,
});

shell("HEDPM430", _("HEDP M430"), { -- HEDP M430 (high-explosive double purpose) cartridges for Mk.19
  model_name    = "pula",
  v0    = 240.69,
  Dv0   = 0.01,
  Da0     = 0.001,
  Da1     = 0.001,
  mass      = 0.248,
  explosive     = 0.100, -- 0.045 kg in real
  cumulative_mass = 0.100,
  cumulative_thickness = 0.050,
  life_time     = 35,
  caliber     = 40.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.81,0.67,0.154,1.84},
  k1        = 5.3e-08,
  tracer_off    = 35, -- equal to life_time
  scale_tracer  = 0,
  

  name = "HEDP M430",
  
  cartridge = 0,
});

shell("VOG17", _("VOG17"), { -- for AG-17
  --model_name    = "pula",
  model_name    = "tracer_bullet_red",
  v0    = 185.0;
  Dv0     = 0.009,
  Da0     = 0.0011,
  Da1     = 0.0015,
  mass      = 0.280,
  explosive     = 0.280, -- 0.034 kg in real
  life_time     = 35,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.71,0.44,0.294,1.47},
  k1        = 6.0e-08,
  tracer_on    = 0.5,
  tracer_off    =-1,
  scale_tracer  = 0,
  
  name = "VOG17 30mm HE gr",
  
  cartridge = 0,
});

shell("MK45_127", _("MK45_127"), {
  model_name    = "pula",
  v0    = 808.0,
  Dv0   = 0.0023,
  Da0     = 0.0005,
  Da1     = 0.0002,
  mass      = 31.3,
  explosive     = 31.3, -- 4.695 kg in real
  life_time     = 100,
  caliber     = 127.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.0,0.52,0.67,0.14,1.76},
  k1        = 7.6e-10,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "127mm HE",
  
  cartridge = 0,
});

--[[
shell("2A64_152", _("2A64_152"), {
  model_name    = "pula",
  v0    = 808.0,
  Dv0   = 0.0018,
  Da0     = 0.0005,
  Da1     = 0.0001,
  mass      = 43.56,
  explosive     = 7.650,
  life_time     = 100,
  caliber     = 152.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.49,0.86,0.146,1.87},
  k1        = 8.0e-10,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "152mm HE",
  
  cartridge = 0,
});
]]

shell("2A64_152", _("2A64_152"), { -- copy of 2A33_152
  model_name    = "pula",
  v0    = 655.0,
  Dv0   = 0.0030,
  Da0     = 0.0003,
  Da1     = 0.0005,
  mass      = 43.56,
  --explosive     = 43.56, --7.650 kg in real
  explosive     = 7.650,
  life_time     = 100,
  caliber     = 152.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.43,0.70,0.138,1.43},
  k1        = 1.2e-09,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "152mm HE",
  
  cartridge = 0,
});

shell("2A33_152", _("2A33_152"), {
  model_name    = "pula",
  v0    = 655.0,
  Dv0   = 0.0030,
  Da0     = 0.0003,
  Da1     = 0.0005,
  mass      = 43.56,
  explosive     = 7.650,
  life_time     = 100,
  caliber     = 152.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.43,0.70,0.138,1.43},
  k1        = 1.2e-09,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "152mm HE",
  
  cartridge = 0,
});

shell("DANA_152", _("DANA_152"), { -- SpGH Dana howitzer ammo. The same as the russian 2S3 Akatsiya using, except the muzzle velocity.
  model_name    = "pula",
  v0    = 693.0,
  Dv0   = 0.0030,
  Da0     = 0.0003,
  Da1     = 0.0005,
  mass      = 43.56,
  explosive     = 7.650,
  life_time     = 100,
  caliber     = 152.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.43,0.70,0.138,1.43},
  k1        = 1.2e-09,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "152mm HE",
  
  cartridge = 0,
});

shell("2A60_120", _("2A60_120"), {
  model_name    = "pula",
  v0    = 808.0,
  Dv0   = 0.003,
  Da0     = 0.0025,
  Da1     = 0.0004,
  mass      = 15.9,
  explosive     = 15.9, -- 4.695 kg in real
  life_time     = 100,
  caliber     = 120.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.82,0.65,0.142,2.11},
  k1        = 4.5e-09,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "120mm HE",
  
  cartridge = 0,
});

shell("2A18_122", _("2A18_122"), {
  model_name    = "pula",
  v0    = 687.0,
  Dv0   = 0.0023,
  Da0     = 0.0005,
  Da1     = 0.0002,
  mass      = 21.76,
  explosive     = 21.76, -- 3.800 kg in real
  life_time     = 100,
  caliber     = 122.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.7,0.45,0.81,0.134,1.29},
  k1        = 1.5e-09,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "122mm HE",
  
  cartridge = 0,
});

shell("2A46M_125_AP", _("2A46M_125_AP"), { -- AP Rounds for T-72, T-80, T-90 3БМ42
  model_name    = "kinetic_type1",
  v0    = 1700.0,
  Dv0   = 0.0010,
  Da0     = 0.00025,
  Da1     = 0.0000,
  mass      = 4.85,
  explosive     = 0,
  life_time     = 100,
  caliber     	 = 125.0,
  AP_cap_caliber = 31.0,  --указана масса и диаметр "стрелы"
  subcalibre     = true,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,1.40,0.81,0.172,1.59},
  k1        = 2.2e-10,
  tracer_off     = 100,
  scale_tracer   = 0,
  rotation_freq  = 0,
 
  name = "125mm AP",
  
  cartridge = 0,
});

shell("2A46M_125_HE", _("2A46M_125_HE"), { -- HE Rounds for T-72, T-80
  model_name    = "pula",
  v0    = 850.0,
  Dv0   = 0.0020,
  Da0     = 0.00025,
  Da1     = 0.0002,
  mass      = 23,
  explosive     = 23, -- 3.4 kg in real
  life_time     = 100,
  caliber     = 125.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.65,0.3,1.45},
  k1        = 1.3e-09,
  tracer_off    = 100,
  scale_tracer  = 0,
  rotation_freq = 0,

  name = "125mm HE",
  
  cartridge = 0,
});

shell("M185_155", _("M185_155"), {
  model_name    = "pula",
  v0    = 562.0,
  Dv0   = 0.0030,
  Da0     = 0.0010,
  Da1     = 0.00044,
  mass      = 42.9,
  explosive     = 42.9, -- 6.800 kg in real
  life_time     = 100,
  caliber     = 155.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.59,0.89,0.172,1.69},
  k1        = 2.5e-09,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "155mm HE",
  
  cartridge = 0,
});

shell("A222_130", _("A222_130"), {
  model_name    = "pula",
  v0    = 850.0,
  Dv0   = 0.0023,
  Da0     = 0.0005,
  Da1     = 0.0002,
  mass      = 33.4,
  explosive     = 33.4, -- 3.560, kg in real
  life_time     = 100,
  caliber     = 130.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.7,0.49,0.81,0.134,1.28},
  k1        = 5.9e-10,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "130mm HE",
  
  cartridge = 0,
});

shell("M68_105_AP", _("M68_105_AP"), {
  model_name    = "kinetic_type1",
  v0    = 1490.0,
  Dv0   = 0.0017,
  Da0     = 0.0003,
  Da1     = 0.0,
  mass      = 2.73,
  explosive     = 0,
  life_time     = 100,
  caliber     	 = 105.0,
  AP_cap_caliber = 25.9, --масса и диаметр "стрелы"
  subcalibre     = true,
  
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.59,0.89,0.172,1.69},
  k1        = 3.0e-10,
  tracer_off    = 100,
  scale_tracer  = 0,
  rotation_freq = 0,
  name = "105mm AP",
  
  cartridge = 0,
});

shell("M68_105_HE", _("M68_105_HE"), { -- M60 tank HE round
  model_name    = "pula",
  v0    = 683.0,
  Dv0   = 0.0027,
  Da0     = 0.00036,
  Da1     = 0.0009,
  mass      = 14.7,
  explosive     = 14.7, -- 1.3 kg in real
  life_time     = 100,
  caliber     = 105.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.3,0.60,0.75,0.16,2.20},
  k1        = 9.0e-10,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "105mm HE",
  
  cartridge = 0,
});

shell("M256_120_AP", _("M256_120_AP"), {
  model_name    = "kinetic_type1", -- M829A2
  v0    = 1680.0,
  Dv0   = 0.0010,
  Da0     = 0.00025,
  Da1     = 0.0,
  mass      = 4.60,
  explosive     = 0,
  life_time     = 100,  
  caliber     	 = 120.0, 
  AP_cap_caliber = 27.0, --указана масса и диаметр "стрелы"
  subcalibre     = true,
  
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,1.40,0.80,0.172,1.60},
  k1        = 1.8e-10,
  tracer_off    = 100,
  scale_tracer  = 0,
  rotation_freq = 0,

  name = "120mm AP",
  
  cartridge = 0,
});

shell("M256_120_HE", _("M256_120_HE"), {
  model_name    = "pula",
  v0    = 1130.0,
  Dv0   = 0.0023,
  Da0     = 0.00025,
  Da1     = 0.0,
  mass      = 14.3,
  explosive     = 14.3, -- 3.800 kg in real
  life_time     = 100,
  caliber     = 120.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1,0.59,0.89,0.172,1.69},
  k1        = 1.5e-09,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "120mm HE",  -- name = "122mm HE",
  
  cartridge = 0,
});

shell("AK100_100", _("AK100_100"), {
  model_name    = "pula",
  v0    = 880.0,
  Dv0   = 0.0021,
  Da0     = 0.0003,
  Da1     = 0.0005,
  mass      = 15.6,
  explosive     = 15.6, -- 1.46 kg in real
  life_time     = 100,
  caliber     = 100.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.65,0.67,0.232,2.08},
  k1        = 1.1e-09,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "100mm HE",
  
  cartridge = 0,
});

shell("MK75_76", _("MK75_76"), {
  model_name    = "pula",
  v0    = 920.0,
  Dv0   = 0.0025,
  Da0     = 0.0005,
  Da1     = 0.0002,
  mass      = 6.3,
  explosive     = 6.3, -- 0.75 kg in real
  life_time     = 100,
  caliber     = 76.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.64,0.72,0.162,2.2},
  k1        = 1.4e-09,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "76mm HE",
  
  cartridge = 0,
});

shell("AK176_76", _("AK176_76"), {
  model_name    = "pula",
  v0    = 980.0,
  Dv0   = 0.0025,
  Da0     = 0.0005,
  Da1     = 0.0002,
  mass      = 5.9,
  explosive     = 5.9, -- 0.45 kg in real
  life_time     = 100,
  caliber     = 76.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.72,0.65,0.138,1.8},
  k1        = 1.7e-09,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "76mm HE",
  
  cartridge = 0,
});

shell("GAU8_30_HE", _("GAU8_30_HE"), {
  model_name    = "tracer_bullet_A-10",
  v0    = 950.0,
  Dv0   = 0.0060,
  Da0     = 0.0011,
  Da1     = 0.0,
  mass      = 0.360,
  round_mass = 0.700,
  cartridge_mass = 0.360, 
  explosive     = 0.360, -- 0.083 kg in real
  life_time     = 31,
  caliber     = 30.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.80,0.90,0.080,2.15},
  k1        = 5.7e-09,
  tracer_off    = -100,
  scale_tracer  = 0,
  scale_smoke   = 2.0, 
  name = "30mm HE",
  
  cartridge = 0,
});

shell("GAU8_30_AP", _("GAU8_30_AP"), {
  model_name    = "tracer_bullet_A-10",
  v0    = 1080.0,
  Dv0   = 0.0060,
  Da0     = 0.0011,
  Da1     = 0.0,
  mass      = 0.360,
  round_mass = 0.700,
  cartridge_mass = 0.083,
  explosive     = 0.0,
  life_time     = 31,
  caliber     = 30.0,
  AP_cap_caliber = 15.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.80,0.90,0.080,2.15},
  k1        = 5.7e-09,
  tracer_off    = -100,
  scale_tracer  = 0,
  scale_smoke   = 2.0, 
  
  name = "30mm AP",
  
  cartridge = 0,
  
  
  
  });
  
shell("GAU8_30_TP", _("GAU8_30_TP"), {
  model_name    = "tracer_bullet_A-10",
  v0    = 1080.0,
  Dv0   = 0.0060,
  Da0     = 0.0011,
  Da1     = 0.0,
  mass      = 0.360,
  explosive     = 0.0,
  life_time     = 31,
  caliber     = 30.0,
  piercing_mass = 0.071,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {0.5,0.80,0.90,0.080,2.15},
  k1        = 5.7e-09,
  tracer_off    = -100,
  scale_tracer  = 0,
  scale_smoke   = 2.0, 
  
  name = "30mm AP Target Practice",
  
  cartridge = 0,
  
  });

-- M50 series rounds for linkless fed M61A1
-- XM242 HEI-T
shell("M61_20_HE", _("M61_20_HE"), {
  model_name     = "tracer_bullet_yellow",
  v0             = 1050.0,
  Dv0            = 0.0060,
  Da0            = 0.0015,
  Da1            = 0.0,
  mass           = 0.100,
  round_mass     = 0.260,
  cartridge_mass = 0.120,			-- cases are collected
  explosive      = 0.110,			-- 0.0170 kg in real
  life_time      = 30,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx             = {0.2,1.27,0.65,0.26,2.35},
  k1             = 2.3e-08,
  tracer_on      = 0.07,
  tracer_off     = 3,
  scale_tracer   = 1,
  name           = "20mm HE",
  cartridge      = 0,
});
--M56 HEI
shell("M61_20_HE_INVIS", _("M61_20_HE_INVIS"), {
  model_name     = "tracer_bullet_yellow",
  v0             = 1050.0,
  Dv0            = 0.0060,
  Da0            = 0.0015,
  Da1            = 0.0,
  mass           = 0.100,
  round_mass     = 0.260,
  cartridge_mass = 0.120,			-- cases are collected
  explosive      = 0.110,			-- 0.0170 kg in real
  life_time      = 30,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx             = {0.2,1.27,0.65,0.26,2.35},
  k1             = 2.3e-08,
  tracer_off     = -100,
  scale_tracer   = 0,
  name           = "20mm HE",
  cartridge      = 0,
});
-- M53 API
shell("M61_20_AP", _("M61_20_AP"), {
  model_name     = "tracer_bullet_white",
  v0             = 1050.0,
  Dv0            = 0.0060,
  Da0            = 0.0015,
  Da1            = 0.0,
  mass           = 0.100,
  round_mass     = 0.260,
  cartridge_mass = 0.120,			-- cases are collected
  explosive      = 0.0,
  life_time      = 30,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx             = {0.2,1.27,0.65,0.26,2.35},
  k1             = 2.3e-08,
  tracer_off     = -100,
  scale_tracer   = 0,
  name           = "20mm AP", 
  cartridge      = 0,
});
-- M55 TP
shell("M61_20_TP", _("M61_20_TP"), {
  model_name     = "tracer_bullet_yellow",
  v0             = 1050.0,
  Dv0            = 0.0060,
  Da0            = 0.0015,
  Da1            = 0.0,
  mass           = 0.100,
  round_mass     = 0.260,
  cartridge_mass = 0.120,			-- cases are collected
  explosive      = 0.000,
  life_time      = 31.0,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx             = {0.2,1.27,0.65,0.26,2.35},
  k1             = 2.3e-08,
  tracer_off     = -100,
  scale_tracer   = 0,
  name           = "20mm Ball",
  cartridge      = 0,
});
-- M220 TP-T
shell("M61_20_TP_T", _("M61_20_TP_T"), {
  model_name     = "tracer_bullet_yellow",
  v0             = 1050.0,
  Dv0            = 0.0060,
  Da0            = 0.0015,
  Da1            = 0.0,
  mass           = 0.110,
  round_mass     = 0.260,
  cartridge_mass = 0.120,			-- cases are collected
  explosive      = 0.000,
  life_time      = 31.0,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx             = {0.2,1.27,0.65,0.26,2.35},
  k1             = 2.3e-08,
  tracer_on      = 0.07,
  tracer_off     = 3,
  scale_tracer   = 1,
  name           = "20mm Ball-Tracer",
  cartridge      = 0,
});
-- MPC series rounds for linkless fed M61A1
-- PGU-28 SAPHEI
shell("M61_20_PGU28", _("PGU-28/B SAPHEI"), {
  model_name     = "tracer_bullet_yellow",
  v0             = 1040.0,
  Dv0            = 0.0060,
  Da0            = 0.0015,
  Da1            = 0.0,
  mass           = 0.100,
  round_mass     = 0.260,
  cartridge_mass = 0.120,			-- cases are collected
  explosive      = 0.110,			-- 0.0170 kg in real
  life_time      = 30,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx             = {0.12,0.7,0.80,0.22,1.9},
  k1             = 1.1e-08,
  tracer_off     = -100,
  scale_tracer   = 0,
  name           = "20mm PGU28 SAPHEI",
  cartridge      = 0,
});
-- M55 TP
shell("M61_20_PGU27", _("PGU-27/B TP"), {
  model_name     = "tracer_bullet_yellow",
  v0             = 1040.0,
  Dv0            = 0.0060,
  Da0            = 0.0015,
  Da1            = 0.0,
  mass           = 0.097,
  round_mass     = 0.257,
  cartridge_mass = 0.120,			-- cases are collected
  explosive      = 0.000,
  life_time      = 31.0,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx             = {0.12,0.7,0.80,0.22,1.9},
  k1             = 1.1e-08,
  tracer_off     = -100,
  scale_tracer   = 0,
  name           = "20mm Ball",
  cartridge      = 0,
});
-- M220 TP-T
shell("M61_20_PGU30", _("PGU-30/B TP-T"), {
  model_name     = "tracer_bullet_yellow",
  v0             = 1040.0,
  Dv0            = 0.0060,
  Da0            = 0.0015,
  Da1            = 0.0,
  mass           = 0.110,
  round_mass     = 0.260,
  cartridge_mass = 0.120,			-- cases are collected
  explosive      = 0.000,
  life_time      = 31.0,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx             = {0.12,0.7,0.80,0.22,1.9},
  k1             = 1.1e-08,
  tracer_on      = 0.07,
  tracer_off     = 3,
  scale_tracer   = 1,
  name           = "20mm Ball-Tracer",
  cartridge      = 0,
});

local m39_smoke_scale   = 1.0;
local m39_smoke_opacity = 0.3;
-- M50 series rounds for belt-fed M39
-- XM242 HEI-T
shell("M39_20_HEI_T", _("M39_20_HEI_T"), {
  model_name     = "tracer_bullet_yellow",
  v0    		 = 990.0,
  Dv0   		 = 0.0060,
  Da0     		 = 0.0022,
  Da1     		 = 0.0,
  mass      	 = 0.100,
  round_mass 	 = 0.260+0.058,		-- round + link
  cartridge_mass = 0.058,			-- links are collected
  explosive      = 0.110,
  life_time      = 31.0,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx       		 = {0.5,1.27,0.70,0.200,2.30},
  k1       		 = 2.0e-08,
  tracer_on      = 0.07,
  tracer_off     = 3,
  scale_tracer   = 1,
  scale_smoke    = m39_smoke_scale, 
  smoke_opacity  = m39_smoke_opacity,
  cartridge		 = 0,
  name = "20mm HEI-Tracer",
}); 
-- M56 HEI
shell("M39_20_HEI", _("M39_20_HEI"), {
  model_name     = "tracer_bullet_yellow",
  v0    		 = 990.0,
  Dv0   		 = 0.0060,
  Da0     		 = 0.0022,
  Da1     		 = 0.0,
  mass      	 = 0.100,
  round_mass 	 = 0.260+0.058,		-- round + link
  cartridge_mass = 0.058,			-- links are collected
  explosive      = 0.110,
  life_time      = 31.0,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx       		 = {0.5,1.27,0.70,0.200,2.30},
  k1       		 = 2.0e-08,
  tracer_on      = 0.01,
  tracer_off     = -100,
  scale_tracer   = 0,
  scale_smoke    = m39_smoke_scale, 
  smoke_opacity  = m39_smoke_opacity,
  cartridge		 = 0,
  name = "20mm HEI",
}); 
-- M53 API
shell("M39_20_API", _("M39_20_API"), {
  model_name     = "tracer_bullet_yellow",
  v0    		 = 990.0,
  Dv0   		 = 0.0060,
  Da0     		 = 0.0022,
  Da1     		 = 0.0,
  mass      	 = 0.100,
  round_mass 	 = 0.260+0.058,		-- round + link
  cartridge_mass = 0.058,			-- links are collected
  explosive      = 0.000,
  AP_cap_caliber = 20.0,
  life_time      = 31.0,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx       		 = {0.5,1.27,0.70,0.200,2.30},
  k1       		 = 2.0e-08,
  tracer_on      = 0.01,
  tracer_off     = -100,
  scale_tracer   = 0,
  scale_smoke    = m39_smoke_scale, 
  smoke_opacity  = m39_smoke_opacity,
  cartridge		 = 0,
  name = "20mm API",
}); 
-- M55 TP
shell("M39_20_TP", _("M39_20_TP"), {
  model_name     = "tracer_bullet_yellow",
  v0    		 = 990.0,
  Dv0   		 = 0.0060,
  Da0     		 = 0.0022,
  Da1     		 = 0.0,
  mass      	 = 0.100,
  round_mass 	 = 0.260+0.058,		-- round + link
  cartridge_mass = 0.058,			-- links are collected
  explosive      = 0.000,
  life_time      = 31.0,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx       		 = {0.5,1.27,0.70,0.200,2.30},
  k1       		 = 2.0e-08,
  tracer_on      = 0.01,
  tracer_off     = -100,
  scale_tracer   = 0,
  scale_smoke    = m39_smoke_scale, 
  smoke_opacity  = m39_smoke_opacity,
  cartridge		 = 0,
  name = "20mm Ball",
}); 
-- M220 TP-T
shell("M39_20_TP_T", _("M39_20_TP_T"), {
  model_name     = "tracer_bullet_yellow",
  v0    		 = 990.0,
  Dv0   		 = 0.0060,
  Da0     		 = 0.0022,
  Da1     		 = 0.0,
  mass      	 = 0.100,
  round_mass 	 = 0.260+0.058,		-- round + link
  cartridge_mass = 0.058,			-- links are collected
  explosive      = 0.000,
  life_time      = 31.0,
  caliber        = 20.0,
  s              = 0.0,
  j              = 0.0,
  l              = 0.0,
  charTime       = 0,
  cx       		 = {0.5,1.27,0.70,0.200,2.30},
  k1       		 = 2.0e-08,
  tracer_on      = 0.07,
  tracer_off     = 3,
  scale_tracer   = 1,
  scale_smoke    = m39_smoke_scale, 
  smoke_opacity  = m39_smoke_opacity,
  cartridge		 = 0,
  name = "20mm Ball-Tracer",
});

 shell("UOF_412_100HE", _("UOF_412_100HE"), { --бывший AK100_100 для Т-55, пушкка Д-10
  model_name    = "pula",
  v0    = 880.0,
  Dv0   = 0.0021,
  Da0     = 0.0003,
  Da1     = 0.0005,
  mass      = 15.6,
  explosive     = 15.6, -- 1.46 kg in real
  life_time     = 100,
  caliber     = 100.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.65,0.67,0.232,2.08},
  k1        = 1.1e-09,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "100mm HE",
  
  cartridge = 0,
});
shell("HESH_105", _("HESH_105"), { --бывший AK100_100 для Leopard 1A3 и Stryker MGS
  model_name    = "pula",
  v0    = 880.0,
  Dv0   = 0.0021,
  Da0     = 0.0003,
  Da1     = 0.0005,
  mass      = 15.6,
  explosive     = 15.6, -- 1.46 kg in real
  life_time     = 100,
  caliber     = 100.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.65,0.67,0.232,2.08},
  k1        = 1.1e-09,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "100mm HE",
  
  cartridge = 0,
});

shell("M134_7_62_T", _("M134 7.62"), {
  model_name    = "tracer_bullet_red",
  v0    = 838.0,
  Dv0   = 0.0082,
  Da0     = 0.0004,
  Da1     = 0.0,
  mass      = 0.00933,
  explosive     = 0.0000,
  life_time     = 7,
  caliber     = 7.62,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.62,0.65,0.175,1.8},
  k1        = 2.9e-08,
  tracer_off    = 3,
  scale_tracer  = 1,
  scale_smoke	= 0.5,
  smoke_opacity	= 0.25,
  smoke_particle = 0.5,
  
  name = "7.62",
  
  cartridge = cartridge_308cal,
});
shell("UOF_17_100HE", _("3UOF17_100HE"), { -- 3УОФ17 3UOF17
  model_name    = "pula",
  v0    = 250.0,
  Dv0   = 0.0021,
  Da0     = 0.0003,
  Da1     = 0.0005,
  mass      = 15.6,
  explosive     = 3.69, -- 1.69
  life_time     = 100,
  caliber     = 100.0,
  s         = 0.0,
  j         = 0.0,
  l         = 0.0,
  charTime    = 0,
  cx        = {1.0,0.65,0.67,0.232,2.08},
  k1        = 1.1e-09,
  tracer_off    = 100,
  scale_tracer  = 0,

  name = "100mm HE",
  
  cartridge = 0,
});