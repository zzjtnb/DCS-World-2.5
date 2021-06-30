
local function task(name, id)
    return { WorldID =  id, Name = name };
end

local function gnd_cat(clsid, name)
    return { CLSID = clsid, Name = name };
end

local function fortification( name, displayName, shape, rate, seaObject)
    local res = {};
    
    res.Name = name;
    res.DisplayName = displayName;
    res.ShapeName = shape;
    res.Rate = rate;
    res.SeaObject = seaObject; -- allows object to be placed only on water
    res.category = 'Fortification'
    
    table.insert(db.Units.Fortifications.Fortification, res); 
end

local function animal( name, displayName, shape, shapeDstr, rate, seaObject)
    local res = {};
    res.Name = name;
    res.DisplayName = displayName;
    res.ShapeName = shape;
	res.ShapeNameDstr = shapeDstr;
	res.Life = 1;
    res.canExplode = false;
    res.Rate = rate;
	res.mapclasskey = "P_COW";
    res.SeaObject = seaObject; -- allows object to be placed only on water
    res.category = 'Animal'    
    table.insert(db.Units.Animals.Animal, res); 
end

local function ground_object( name, displayName, id)
    local res = {};
    res.Name = name;
    res.DisplayName = displayName;
    res.WorldID = id;
    
    table.insert(db.Units.GroundObjects.GroundObject, res);
end

local function warehouse( name, displayName, shape, rate, seaObject)
    local res = {};
    
    res.Name = name;
    res.DisplayName = displayName;
    res.ShapeName = shape;
    res.Rate = rate;
    res.SeaObject = seaObject; -- allows object to be placed only on water
    res.category = 'Warehouse'
    
    table.insert(db.Units.Warehouses.Warehouse, res);
end

local function cargo( name, displayName, shape, shapeDstr, life, canExplode, rate, mass, attribute, minMass, maxMass, topdown_view)
    local res = {};
    
    res.Name = name;
    res.DisplayName = displayName;
    res.ShapeName = shape;
	res.ShapeNameDstr = shapeDstr;
	res.life = life;
	res.canExplode = canExplode;
    res.Rate = rate;
    res.mass = mass;
    res.mapclasskey = "P0091000352";
    res.attribute = attribute;
    res.minMass = minMass;
    res.maxMass = maxMass;
    res.couldCargo = true;
    res.category = 'Cargo';
	res.topdown_view = topdown_view;

  
    table.insert(db.Units.Cargos.Cargo, res);
end

local function effect(name, displayName, tblPresets, bTransparency, bCourse, bLenghtLine, bRadius)
    local res = {};
    
    res.Name = name;
    res.DisplayName = displayName;
	res.mapclasskey = "P0091000353";

    res.category = 'Effect';
	res.tblPresets = tblPresets
	res.bTransparency = bTransparency
	res.bCourse = bCourse
	res.bLenghtLine = bLenghtLine
	res.bRadius = bRadius

    table.insert(db.Units.Effects.Effect, res);
end

local function LTAvehicle( name, displayName, shape, shapeDstr, life, lenghtRope, attribute)
    local res = {};
    
    res.Name = name;
    res.DisplayName = displayName;
    res.ShapeName = shape;
	res.ShapeNameDstr = shapeDstr;
	res.life = life;
    res.mapclasskey = "P91000109";
    res.lenghtRope = lenghtRope;
    res.category = 'LTAvehicle';
    res.attribute = attribute;
    res.isPutToWater = true

    table.insert(db.Units.LTAvehicles.LTAvehicle, res);
end


db.Units.Fortifications = {};
db.Units.Fortifications.Fortification = {};
db.Units.Fortifications.Tasks           = { task(_("Nothing"), "15") }

db.Units.GroundObjects = {};
db.Units.GroundObjects.GroundObject = {};

db.Units.Warehouses = {}
db.Units.Warehouses.Warehouse = {}

db.Units.Cargos = {}
db.Units.Cargos.Cargo = {}

cargo( "uh1h_cargo", _("uh1h_cargo"), "ab-212_cargo","ab-212_cargo_dam",5,false,  100, 1000,  {"Cargos"}, 100, 10000, nil);
cargo( "ammo_cargo", _("ammo_cargo"), "ammo_box_cargo","ammo_box_cargo_dam",5,false,  100, 1500,  {"Cargos"}, 1000, 2000
	, nil--[[{
		classKey = "PIC_ammo_cargo",
		w = 1.3,
		h = 1.3,			
		file = "topdown_view_ammo_cargo.png",
		zOrder = 20,
	}]]);
cargo( "f_bar_cargo", _("f_bar_cargo"), "f_bar_cargo","f_bar_cargo_dam",15,false, 100, 823,  {"Cargos"}, 823, 823, nil ); --f_bar_cargo
cargo( "m117_cargo", _("m117_cargo"), "m117_cargo", "m117_cargo_dam",5,false,100, 840,  {"Cargos"}, 840, 840, nil );--m117_cargo
cargo( "iso_container", _("iso_container"), "iso_container_cargo", "iso_container_cargo_dam",15,false,100, 4500,  {"Cargos"}, 3800, 10000, nil);--iso_container
cargo( "iso_container_small", _("iso_container_small"), "iso_container_small_cargo","iso_container_small_cargo_dam",15,false, 100, 3200,  {"Cargos"}, 2200, 10000, nil);--iso_container_small
cargo( "barrels_cargo", _("barrels_cargo"), "barrels_cargo", "barrels_cargo_dam",5,true, 100, 480,  {"Cargos"}, 100, 480, nil); 
cargo( "container_cargo", _("container_cargo"), "bw_container_cargo", "bw_container_cargo_dam",15,false,100, 1200,  {"Cargos"}, 100, 4000, nil); --container_cargo
cargo("tetrapod_cargo",_("tetrapod_cargo"),"tetrapod_cargo","tetrapod_cargo_dam",20,false,100,5000,{"Cargos"}, 5000,5000, nil);
cargo("fueltank_cargo",_("fueltank_cargo"),"fueltank_cargo","fueltank_cargo_dam",15,true,100, 2400,{"Cargos"},800,5000, nil);
cargo("oiltank_cargo",_("oiltank_cargo"),"oiltank_cargo","oiltank_cargo_dam",15,true,100, 2300,{"Cargos"},700,5000, nil);
cargo("pipes_big_cargo",_("pipes_big_cargo"),"pipes_big_cargo","pipes_big_cargo_dam",15,false,100, 4815,{"Cargos"},4815,4815, nil);
cargo("pipes_small_cargo",_("pipes_small_cargo"),"pipes_small_cargo","pipes_small_cargo_dam",15,false,100, 4350,{"Cargos"},4350,4350, nil);
cargo("trunks_small_cargo",_("trunks_small_cargo"),"trunks_small_cargo","trunks_small_cargo_dam",10,false,100, 5000,{"Cargos"},5000,5000, nil);
cargo("trunks_long_cargo",_("trunks_long_cargo"),"trunks_long_cargo","trunks_long_cargo_dam",10,false,100, 4747,{"Cargos"},4747,4747, nil);

db.Units.Effects = {}
db.Units.Effects.Effect = {}

--effect(name, displayName, tblPresets, bTransparency, bCourse, bLenghtLine, bRadius)
local tblPresets = {values = {
	{id=1,name = _("small smoke and fire")},
	{id=2,name = _("medium smoke and fire")},
	{id=3,name = _("large smoke and fire")},
	{id=4,name = _("huge smoke and fire")},
	{id=5,name = _("small smoke")},
	{id=6,name = _("medium smoke")},
	{id=7,name = _("large smoke")},
	{id=8,name = _("huge smoke")},
	}, defaultId = "1"} 
effect("big_smoke",_("Big smoke"), tblPresets,true,false,false,false)

tblPresets =  {values = {{id=1,name = _("test1")},{id=2,name = _("test2")},{id=3,name = _("test3")}}, defaultId = 1} 
--effect("smoky_marker",_("Smoky marker"), tblPresets,false,false,false,false)

tblPresets =  {values = {{id=1,name = _("test1")},{id=2,name = _("test2")},{id=3,name = _("test3")}}, defaultId = 1} 
--effect("smoking_line",_("Smoking line"), tblPresets,true,true,true,false)

tblPresets =  {values = {{id=1,name = _("test1")},{id=2,name = _("test2")},{id=3,name = _("test3")}}, defaultId = 1} 
--effect("dust_smoke",_("Dust/smoke"), tblPresets,true,false,false,true)


db.Units.LTAvehicles = {}
db.Units.LTAvehicles.LTAvehicle = {}

--LTAvehicle("LTAvehicleTest", _("Barrage Balloon"), "ab-212_cargo","ab-212_cargo_dam",5,100, {"LTAvehicles"});

db.Units.WWIIstructures = {}
db.Units.WWIIstructures.WWIIstructure = {}

warehouse("Warehouse", _("Warehouse"), "sklad", 100);
warehouse( "Tank", _("Tank 1"), "bak", 100);
warehouse( ".Ammunition depot", _(".Ammunition depot"), "SkladC", 100);
warehouse( "Tank 2", _("Tank 2"), "airbase_tbilisi_tank_01", 100);
warehouse( "Tank 3", _("Tank 3"), "airbase_tbilisi_tank_02", 100);

ground_object( "Building", _("Building"),  1);
ground_object( "Bridge", _("Bridge"),  2);
ground_object( "Transport", _("Transport"),  3);
ground_object( "Train", _("Train"),  4);

fortification( ".Command Center", _(".Command Center"), "ComCenter", 100);
fortification( "Hangar A", _("Hangar A"), "angar_a", 100);
fortification( "Tech hangar A", _("Tech hangar A"), "ceh_ang_a", 100);
fortification( "Farm A", _("Farm A"), "ferma_a", 100);
fortification( "Farm B", _("Farm B"), "ferma_b", 100);
fortification( "Garage A", _("Garage A"), "garage_a", 100);
fortification( "Boiler-house A", _("Boiler-house A"), "kotelnaya_a", 100);
fortification( "Restaurant 1", _("Restaurant 1"), "restoran1", 100);
fortification( "Comms tower M", _("Comms tower M"), "tele_bash_m", 100);
fortification( "Cafe", _("Cafe"), "stolovaya", 100);
fortification( "Workshop A", _("Workshop A"), "tec_a", 100);
fortification( "Electric power box", _("Electric power box"), "tr_budka", 100);
fortification( "Supermarket A", _("Supermarket A"), "uniwersam_a", 100);
fortification( "Water tower A", _("Water tower A"), "wodokachka_a", 100);
fortification( "TV tower", _("TV tower"), "tele_bash", 100);
fortification( "Shelter", _("Shelter"), "ukrytie", 100);
fortification( "Repair workshop", _("Repair workshop"), "tech", 100);
fortification( "Railway station", _("Railway station"), "r_vok_sd", 100);
fortification( "Railway crossing A", _("Railway crossing A"), "pereezd_big", 100);
fortification( "Railway crossing B", _("Railway crossing B"), "pereezd_small", 100);
fortification( "WC", _("WC"), "WC", 100);
fortification( "Small house 1A area", _("Small house 1A area"), "domik1a-all", 100);
fortification( "Small house 1A", _("Small house 1A"), "domik1a", 100);
fortification( "Small house 1B area", _("Small house 1B area"), "domik1b-all", 100);
fortification( "Small house 1B", _("Small house 1B"), "domik1b", 100);
fortification( "Small house 1C area", _("Small house 1C area"), "dom2c-all", 100);
fortification( "Small house 2C", _("Small house 2C"), "dom2c", 100);
fortification( "Shop", _("Shop"), "magazin", 100);
fortification( "Tech combine", _("Tech combine"), "kombinat", 100);
fortification( "Chemical tank A", _("Chemical tank A"), "him_bak_a", 100);
fortification( "Small werehouse 1", _("Small werehouse 1"), "s1", 100);
fortification( "Small werehouse 2", _("Small werehouse 2"), "s2", 100);
fortification( "Small werehouse 3", _("Small werehouse 3"), "s3", 100);
fortification( "Small werehouse 4", _("Small werehouse 4"), "s4", 100);
fortification( "Garage B", _("Garage B"), "garage_b", 100);
fortification( "Garage small A", _("Garage small A"), "garagh-small-a", 100);
fortification( "Garage small B", _("Garage small B"), "garagh-small-b", 100);
fortification( "Pump station", _("Pump station"), "nasos", 100);
fortification( "Oil derrick", _("Oil derrick"), "neftevyshka", 100);
fortification( "Container red 1", _("Container red 1"), "konteiner_red1", 100);
fortification( "Container red 2", _("Container red 2"), "konteiner_red2", 100);
fortification( "Container red 3", _("Container red 3"), "konteiner_red3", 100);
fortification( "Container white", _("Container white"), "konteiner_white", 100);
fortification( "Container brown", _("Container brown"), "konteiner_brown", 100);
fortification( "Barracks 2", _("Barracks 2"), "kazarma2", 100);
fortification( "Military staff", _("Military staff"), "aviashtab", 100);
fortification( "Hangar B", _("Hangar B"), "angar_b", 100);
fortification( "Fuel tank", _("Fuel tank"), "toplivo-bak", 100);
fortification( "Shelter B", _("Shelter B"), "ukrytie_b", 100);
fortification( "Oil platform", _("Oil platform"), "plavbaza", 100, true);
fortification( "Subsidiary structure 1", _("Subsidiary structure 1"), "hozdomik1", 100);
fortification( "Subsidiary structure 2", _("Subsidiary structure 2"), "hozdomik2", 100);
fortification( "Subsidiary structure 3", _("Subsidiary structure 3"), "hozdomik3", 100);
fortification( "Subsidiary structure A", _("Subsidiary structure A"), "saray-a", 100);
fortification( "Subsidiary structure B", _("Subsidiary structure B"), "saray-b", 100);
fortification( "Subsidiary structure C", _("Subsidiary structure C"), "saray-c", 100);
fortification( "Subsidiary structure D", _("Subsidiary structure D"), "saray-d", 100);
fortification( "Subsidiary structure E", _("Subsidiary structure E"), "saray-e", 100);
fortification( "Subsidiary structure F", _("Subsidiary structure F"), "saray-f", 100);
fortification( "Subsidiary structure G", _("Subsidiary structure G"), "saray-g", 100);
fortification( "Landmine", _("Landmine"), "landmine", 1);
fortification( "FARP Ammo Dump Coating", _("FARP Ammo Dump Coating"), "SetkaKP", 50);
fortification( "FARP Tent", _("FARP Tent"), "PalatkaB", 50);
fortification( "FARP CP Blindage", _("FARP CP Blindage"), "kp_ug", 100);
fortification( "FARP Fuel Depot", _("FARP Fuel Depot"), "GSM Rus", 20);
fortification( "GeneratorF", _("GeneratorF"), "GeneratorF", 100);
fortification( "Airshow_Cone", _("Airshow cone"), "Comp_cone", 100);
fortification( "Airshow_Crowd", _("Airshow Crowd"), "Crowd1", 100);

-- Helipad marks
fortification( "Red_Flag", _("Mark Flag Red"), "H-flag_R", 3);
fortification( "White_Flag", _("Mark Flag White"), "H-Flag_W", 3);
fortification( "Black_Tyre", _("Mark Tyre Black"), "H-tyre_B", 3);
fortification( "White_Tyre", _("Mark Tyre White"), "H-tyre_W", 3);
fortification( "Black_Tyre_RF", _("Mark Tyre with Red Flag"), "H-tyre_B_RF", 3);
fortification( "Black_Tyre_WF", _("Mark Tyre with White Flag"), "H-tyre_B_WF", 3);
fortification( "Windsock", _("Windsock"), "H-Windsock_RW", 3);

db.Units.Animals = {}
db.Units.Animals.Animal = {}

db.Units.ADEquipments = {}
db.Units.ADEquipments.ADEquipment = {}

db.Units.Personnel = {}
db.Units.Personnel.Personnel = {}
