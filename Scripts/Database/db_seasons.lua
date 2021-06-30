local function season(clsid, name, id, pers)
	local res = {};
	
	res.CLSID = clsid;
	res.Name = name;
	res.WorldID = id;
	res.Precipitations = pers;
	
	table.insert(db.Seasons, res);
end

local function precipitation(clsid, name, id)
	local res = {};
	
	res.CLSID = clsid;
	res.Name = name;
	res.WorldID  = id;
	
	return res;
end

db.Seasons = {};

season("{E87084B2-8469-46F1-8FDB-71A2F73E97B6}", "Summer", 1, {
	precipitation("{60713D66-2937-4247-BDAB-2BEABDD8F121}", "Rain", 1),
	precipitation("{8A02E074-1126-4bb0-9B47-E01FD8E96E6F}", "Thunderstorm", 2),
});

season("{A9ABBAED-C67C-48E9-8340-066F2C0B0440}", "Winter", 2, {
	precipitation("{02DB9361-B947-4c8c-AA13-36F647171994}", "Snow", 3),
	precipitation("{F4D7804D-08C7-42e1-805B-60A15B5A668D}", "Snowstorm", 4),
});

season("{AD3D5491-7BE1-4b8e-B103-66B057418C26}", "Spring", 3, {
	precipitation("{60713D66-2937-4247-BDAB-2BEABDD8F121}", "Rain", 1),
	precipitation("{8A02E074-1126-4bb0-9B47-E01FD8E96E6F}", "Thunderstorm", 2),
});

season("{1BE4F99C-DAC8-47df-9257-734691819D73}", "Autumn", 4, {
	precipitation("{60713D66-2937-4247-BDAB-2BEABDD8F121}", "Rain", 1),
	precipitation("{8A02E074-1126-4bb0-9B47-E01FD8E96E6F}", "Thunderstorm", 2),
});
