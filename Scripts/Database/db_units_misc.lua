function skill(id, name)
	local res = {};
	res.WorldID = id;
	res.Name = name;
	
	table.insert(db.Units.Skills, res);
end

db.Units.Skills = {};
skill(0, "Average");
skill(1, "Good");
skill(2, "High");
skill(3, "Excellent");
skill(4, "Random");
skill(5, "Player");
skill(6, "Client");

db.Units.Heliports = 
{
    Tasks = 
    {
        [1] = 
        {
            WorldID = "15",
            Name = _("Nothing"),
        }, -- end of [1]
    }, -- end of Tasks
    Heliport = 
    {
        [1] = 
        {
            CLSID = "{24FC9197-F225-4f2a-8A31-BD51DC7BDAB6}",
            Name = "FARP",
            DisplayName  = _("FARP"),
            category 	 = "Heliport",
            ShapeName 	 = "FARPS",
            isPutToWater = true,
			numParking   = 4,
        }, -- end of [1]
		[2] = 
        {
            CLSID		 = "{SINGLE_HELIPAD}",
            Name 		 = "SINGLE_HELIPAD",
            DisplayName  = _("Helipad Single"),
            category     = "Heliport",
            ShapeName    = "FARP",
            isPutToWater = true,
			numParking 	 = 1,
        }, -- end of [2]
    }, -- end of Heliport
}; -- end of Heliports

db.Units.GrassAirfields = 
{
    Tasks = 
    {
        [1] = 
        {
            WorldID = "15",
            Name = _("Nothing"),
        }, -- end of [1]
    }, -- end of Tasks
    GrassAirfield = 
    {
        [1] = 
        {
            CLSID = "{8D150BC5-D320-4CA7-9B52-895FE8ED8EBB}",
            Name = "GrassAirfield",
            DisplayName = _("Grass Airfield"),
            category = "GrassAirfield",
            lenght = 2000,
        }, -- end of [1]
    }, -- end of GrassAirfield
}; -- end of GrassAirfields