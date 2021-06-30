function _WEAPON_(cat_id,lnchr_table)
	local cat = db.Weapons.Categories[cat_id]
	if cat ~= nil then
	   table.insert(cat.Launchers,lnchr_table)
	end
end

function _WEAPON_COPY(CLSID,lnchr_table)
	local t = {}
	for i,o in pairs(lnchr_table) do
		t[i] = o
	end
	t.CLSID = CLSID
	return t
end

local function RocketContainer(shape,element,count,pattern)
	local ret = {{ ShapeName	=	shape , IsAdapter = true}}

	if  element~= nil and count ~= nil then
		local pattern = pattern or "tube_%02d"
		for i = 1,count do
			ret[#ret + 1] = {
				ShapeName		=	element, 
				connector_name	=	string.format(pattern,i)
			}
		end
	end
	
	return ret
end

local RocketContainer_LAU_131  			=  RocketContainer("LAU-131","hydra_m151he",7)
local RocketContainer_BRU_42_LS_LAU_131 =  RocketContainer("BRU-42_LS_(LAU-131)","hydra_m151he",21)
local RocketContainer_BRU_42_LS_LAU_68  =  RocketContainer("BRU-42_LS_(LAU-68)" ,"hydra_m151he",21)

local kh58u = {
	NatoName		=	"(AS-11)",
	Picture			=	"kh58u.png",
	wsTypeOfWeapon	=	{4,	4,	8,	46},
	attribute		=	{4,	4,	32,	91},
	displayName		=	_("Kh-58U"),
	Cx_pil			=	0.001,
	ejectImpulse    =   2000,
	Weight			=	730,
	Count			=	1,
	Elements		=	
	{
		[1]	=	
		{
			Position	=	{0,	0,	0},
			ShapeName	=	"AKU-58",
		}, 
		[2]	=	
		{
			DrawArgs	=	
			{
				[1]	=	{1,	1},
				[2]	=	{2,	1},
			}, -- end of DrawArgs
			Position	=	{-0.428,	-0.234,	0},
			ShapeName	=	"X-58",
		}, 
	}, -- end of Elements
}

local smokes =
{
	["red"] 	= {r = 245  , g = 40 ,  b = 40  , a = 180 , disp = _("red_smk")  , picture = "smoke_red.png"},
	["green"] 	= {r = 50   , g = 160,  b = 100 , a = 180 , disp = _("green")    , picture = "smoke_green.png"},
	["blue"] 	= {r = 50   , g = 100,  b = 210 , a = 180 , disp = _("blue_smk") , picture = "smoke_blue.png"},
	["yellow"] 	= {r = 255  , g = 230,  b = 50  , a = 180 , disp = _("yellow")   , picture = "smoke_yellow.png"},
	["orange"] 	= {r = 255  , g = 150,  b = 35  , a = 180 , disp = _("orange")   , picture = "smoke_orange.png"},
	["white"] 	= {r = 255  , g = 255,  b = 255 , a = 180 , disp = _("white")    , picture = "smoke_white.png"},
}

local function rgbToHexColor(r, g, b, a)
	return string.format('0x%.2x%.2x%.2x%.2x', r, g, b, a)
end

function smoke_generator_R73(tbl,smoke)
	tbl.Picture			  =	"smoke.png"
	tbl.PictureBlendColor =  rgbToHexColor(smoke.r, smoke.g, smoke.b, 255)
	tbl.displayName	      =	_("Smoke Generator").." - "..smoke.disp
	tbl.Weight			  =	220
	tbl.Cx_pil			  =	0.00048828125
	tbl.Smoke  = {
			alpha = smoke.a,
			r  	  = smoke.r,
			g     = smoke.g,
			b     = smoke.b,
			dx    = -1.455,
			dy    = -0.062
	}
	tbl.Elements	=	{{ShapeName	=	"R-73U"}}
	return tbl
end

function smokewinder(tbl,smoke)
	tbl.Picture			  =	"smoke.png"
	tbl.PictureBlendColor = rgbToHexColor(smoke.r, smoke.g, smoke.b, 255) 
	tbl.displayName	      =	_("Smokewinder").." - "..smoke.disp
	tbl.Weight			  =	200
	tbl.Cx_pil			  =	0.00048828125
	tbl.Smoke  = {
			alpha = smoke.a,
			r  	  = smoke.r,
			g     = smoke.g,
			b     = smoke.b,
			dx    = -2,
			dy    = -0.09
	}
	tbl.Elements	=	{{ShapeName	=	"AIM-9S"}}
	return tbl
end

function smoke_without_mass(tbl,smoke)
	tbl.Picture			  =	smoke.picture
	tbl.PictureBlendColor = "0xffffffff"
	tbl.displayName	      =	_("Smoke Generator").." - "..smoke.disp
	tbl.Weight			  =	0.0
	tbl.Weight_Empty	  = 0.0
	tbl.Cx_pil			  =	0.0
	tbl.Smoke  = {
			alpha = smoke.a,
			r  	  = smoke.r,
			g     = smoke.g,
			b     = smoke.b,
			dx    = -1.455,
			dy    = -0.062
	}
	return tbl
end

local kh29t = {
	Picture			=	"kh29T.png",
	wsTypeOfWeapon	=	{4,	4,	8,	75},
	displayName		=	_("Kh-29T"),
	attribute		=	{4,	4,	32,	92},
	Cx_pil			=	0.001,
	ejectImpulse    =   2000,
	Weight			=	760,
	Count			=	1,
	Elements	=	
	{
		[1]	=	
		{
			Position	=	{0,	0,	0},
			ShapeName	=	"AKU-58",
		}, 
		[2]	=	
		{
			DrawArgs	=	
			{
				[1]	=	{1,	1},
				[2]	=	{2,	1},
			}, -- end of DrawArgs
			Position	=	{-0.482,	-0.237,	0},
			ShapeName	=	"X-29T",
		}, 
	}, -- end of Elements
}

local kh29l = {
	Picture			=	"kh29L.png",
	wsTypeOfWeapon	=	{4,	4,	8,	49},
	displayName		=	_("Kh-29L"),
	attribute		=	{4,	4,	32,	93},
	Cx_pil			=	0.001,
	ejectImpulse    =   2000,
	Weight			=	747,
	Count			=	1,
	Elements		=	
	{
		[1]	=	
		{
			Position	=	{0,	0,	0},
			ShapeName	=	"AKU-58",
		}, 
		[2]	=	
		{
			DrawArgs	=	
			{
				[1]	=	{1,	1},
				[2]	=	{2,	1},
			}, -- end of DrawArgs
			Position	=	{-0.482,	-0.237,	0},
			ShapeName	=	"X-29L",
		}, 
	}, -- end of Elements
}

local kh31a = {
	NatoName		=	"(AS-17)",
	Picture			=	"kh31a.png",
	wsTypeOfWeapon	=	{4,	4,	8,	53},
	attribute		=	{4,	4,	32,	96},
	displayName		=	_("Kh-31A"),
	Cx_pil			=	0.001,
	Weight			=	690,
	Count			=	1,
	Elements		=	
	{
		[1]	=	
		{
			Position	=	{0,	0,	0},
			ShapeName	=	"AKU-58",
		}, 
		[2]	=	
		{
			DrawArgs	=	
			{
				[1]	=	{1,	1},
				[2]	=	{2,	1},
			}, -- end of DrawArgs
			Position	=	{0.245,	-0.237,	0},
			ShapeName	=	"X-31",
		}, 
	}, -- end of Elements
}

local kh31p = {
	NatoName		=	"(AS-17)",
	Picture			=	"kh31p.png",
	wsTypeOfWeapon	=	{4,	4,	8,	76},
	attribute		=	{4,	4,	32,	97},
	displayName		=	_("Kh-31P"),
	Cx_pil			=	0.001,
	Weight			=	690,
	Count			=	1,
	Elements		=	
	{
		[1]	=	
		{
			Position	=	{0,	0,	0},
			ShapeName	=	"AKU-58",
		}, 
		[2]	=	
		{
			DrawArgs	=	
			{
				[1]	=	{1,	1},
				[2]	=	{2,	1},
			}, -- end of DrawArgs
			Position	=	{0.245,	-0.237,	0},
			ShapeName	=	"X-31",
		}, 
	}, -- end of Elements
}

local function missile_with_APU_68(shape,x,y)
return	{
	{	
		ShapeName	=	"APU-68" 
	}, 
	{	
		ShapeName	=	shape,
		Position	=	{x or 0 ,y or -0.135,	0},
	}
}
end

local kh25ml = {
	Picture	=	"kh25ml.png",
	wsTypeOfWeapon	=	{4,	4,	8,	45},
	displayName	=	_("Kh-25ML"),
	attribute	=	{4,	4,	32,	99},
	Cx_pil	=	0.001,
	Weight	=	360,
	Count	=	1,
	Elements	= missile_with_APU_68("X-25ML")	
}


local kh25mpu = {
	Picture			=	"kh25mpu.png",
	wsTypeOfWeapon	=	{4,	4,	8,	47},
	attribute		=	{4,	4,	32,	100},
	displayName		=	_("Kh-25MPU"),
	Cx_pil			=	0.001,
	Weight			=	370,
	Count			=	1,
	Elements		= missile_with_APU_68("X-25MP")	
}

local kh25mr = {
	NatoName		=	"(AS-12)",
	Picture			=	"kh25mr.png",
	wsTypeOfWeapon	=	{4,	4,	8,	74},
	displayName		=	_("Kh-25MR"),
	attribute		=	{4,	4,	32,	170},
	Cx_pil			=	0.001,
	Weight			=	360,
	Count			=	1,
	Elements		= missile_with_APU_68("X-25MR")	
}

--[[
kind_of_shipping
{
	SUBMUNITION_ONLY						= 0,
	SUBMUNITION_AND_CONTAINER_SEPARATELY	= 1,
	SOLID_MUNITION							= 2,
};
--]]

maverick_data = 
{
	["AGM-65K"]  = {mass = 297, wstype	= {4,	4,	8,	61}},
	["AGM-65D"]  = {mass = 218, wstype	= {4,	4,	8,	77}},
	["AGM-65E"]  = {mass = 286, wstype	= {4,	4,	8,	70}},
	["AGM-65H"]  = {mass = 208, wstype	= {4,	4,	8,	138}},
	["AGM-65G"]  = {mass = 301, wstype	= {4,	4,	8,	139}},
	["TGM-65G"]	 = {mass = 301, wstype	= {4,	4,	101,140}},
	["TGM-65D"]	 = {mass = 218, wstype	= {4,	4,	101,141}},
	["TGM-65H"]	 = {mass = 208, wstype	= {4,	4,	101,154}},
	["CATM-65K"] = {mass = 297, wstype	= {4,	4,	101,142}},
}
local LAU_88_mass  = 211
local LAU_117_mass = 59

local GALLON_TO_KG = 3.785 * 0.81482	-- JP-5 fuel

function lau_88(element,count,left,data)
	
	local agm_65_variant = maverick_data[element] or maverick_data["AGM-65K"]
	
	data.Picture	 	  =	"agm65.png"
	data.kind_of_shipping =  1 --SUBMUNITION_AND_CONTAINER_SEPARATELY
	data.adapter_type     =  {wsType_Weapon, wsType_GContainer, wsType_Support,4}-- LAU-88 as support container 
	data.Count 			  = count
	data.displayName	  =	"LAU-88,"..element.."*"..tostring(count)
	data.wsTypeOfWeapon   = agm_65_variant.wstype
	data.Weight  		  = LAU_88_mass + count * agm_65_variant.mass
	data.Cx_pil 		  = 0.001887 + 0.0009765625 * count
	data.Elements		  = 
	{
		{
			Position	=	{0,	0,	0},
			ShapeName	=	"LAU-88",
		}, 
	}
	local positions =  {{0.29,	-0.31,	0},
						{0.29,	-0.085,	0.275},
						{0.29,	-0.085,	-0.275}}
	local rotations =  {{ 0 ,0,0},
						{-90,0,0},
						{ 90,0,0}}
	local left = left and count == 2
	for i = 1,count do
		local j = i
		if i == 2 and left then 
		   j = 3 
		end
		data.Elements[#data.Elements + 1] = {DrawArgs	=	{{1,1},{2,1}},
											Position	=	positions[j],
											ShapeName	=	element,
											Rotation	=   rotations[j]}
	end
	
	return data
end

function lau_3(element,data)
	data.Picture			= "LAU61.png"
	data.Count				= 19
	data.Cx_pil				= 0.00146484375
	data.Elements			= RocketContainer("LAU-3",element,19,"tube_%d")
	return data
end


function lau_117(element,data)
	local agm_65_variant = maverick_data[element] or maverick_data["AGM-65K"]
	
	data.Picture	 	  =	"agm65.png"
	--data.kind_of_shipping =  1 --SUBMUNITION_AND_CONTAINER_SEPARATELY
	data.adapter_type     =  {wsType_Weapon, wsType_GContainer, wsType_Support,97}-- LAU-117 as support container 
	data.Count 			  = 1
	data.displayName	  =	"LAU-117,"..element
	data.wsTypeOfWeapon   = agm_65_variant.wstype
	data.Weight  		  = LAU_117_mass + agm_65_variant.mass
	data.Cx_pil 		  = 0.0009765625
	data.Elements		  = 
	{
		{
			Position	=	{0,	0,	0},
			ShapeName	=	"LAU-117",
		}, 
		{
			DrawArgs	=	
			{
				[1]	=	{1,	1},
				[2]	=	{2,	1},
			}, -- end of DrawArgs
			Position	=	{0.18,	-0.078,	0},
			ShapeName	=	element,
		}
	}
	return data
end

local mbdz_z   = 0.140000
local mbdz_y   = 0.390000
local mbdz_rot = 40

local 	 mbd3_u6_points = 
{
	[1] = {Position = {-0.986625, -0.360123, -0.000000}  					  		  },-- задний нижний 
	[2] = {Position = { 0.898015, -0.360123, -0.000000}  					  		  },-- головной нижний 
	[3] = {Position = {-0.986493, -0.122812, -0.160811}  , Rotation = { mbdz_rot,0,0} },-- задний левый 
	[4] = {Position = {-0.986493, -0.124806,  0.159743}  , Rotation = {-mbdz_rot,0,0} },-- задний правый
	[5] = {Position = { 0.898147, -0.122812, -0.160811}  , Rotation = { mbdz_rot,0,0} },-- головной левый 
	[6] = {Position = { 0.898147, -0.124806,  0.159743}  , Rotation = {-mbdz_rot,0,0} },-- головной правый
}

local    tu_22_mbdz_points = 
{
	[1] = {Position = {-3.0  ,-0.6,0}       , Rotation = {}		 },-- задний нижний 
	[2] = {Position = {-1.25 ,-0.6,0}       , Rotation = {}		 },-- центральный нижний 
	[3] = {Position = { 0.75 ,-0.6,0}       , Rotation = {} 	 },-- головной нижний 
	[4] = {Position = {-3.0  ,-mbdz_y, -mbdz_z}  , Rotation = { mbdz_rot,0,0} },-- задний левый 
	[5] = {Position = {-3.0  ,-mbdz_y,  mbdz_z}  , Rotation = {-mbdz_rot,0,0} },-- задний правый
	[6] = {Position = {-1.25 ,-mbdz_y, -mbdz_z}  , Rotation = { mbdz_rot,0,0} },-- центральный левый 
	[7] = {Position = {-1.25 ,-mbdz_y,  mbdz_z}  , Rotation = {-mbdz_rot,0,0} },-- центральный правый 
	[8] = {Position = {0.75  ,-mbdz_y, -mbdz_z}  , Rotation = { mbdz_rot,0,0} },-- головной левый 
	[9] = {Position = {0.75  ,-mbdz_y,  mbdz_z}  , Rotation = {-mbdz_rot,0,0} },-- головной правый
}

function tu_22_mbdz_element(shape,i)
	return 	{
				Position	=	tu_22_mbdz_points[i].Position,
				Rotation	=	tu_22_mbdz_points[i].Rotation,	
				ShapeName	=	shape,
			}
end

function mbd3_u6_element(shape,i)
	return 	{
				Position	=	mbd3_u6_points[i].Position,
				Rotation	=	mbd3_u6_points[i].Rotation,	
				ShapeName	=	shape,
			}
end

local mbd3_u6_adapter =  {
	ShapeName	=	"mbd3-u6-68",
}

local tu_22_mbdz_adapter =  {
	ShapeName	=	"TU-22M3-MBD",
}

function tu_22_mbdz_two(shape)
	return 	{
		tu_22_mbdz_adapter,	
		tu_22_mbdz_element(shape,7),
		tu_22_mbdz_element(shape,6),
	}
end

function tu_22_mbdz_four(shape)
	return	{
		tu_22_mbdz_adapter,
		tu_22_mbdz_element(shape,9),	
		tu_22_mbdz_element(shape,8),
		tu_22_mbdz_element(shape,5),
		tu_22_mbdz_element(shape,4),
	}
end

function tu_22_mbdz_six(shape)
	return 	{
		tu_22_mbdz_adapter,
		tu_22_mbdz_element(shape,9),	
		tu_22_mbdz_element(shape,8),
		tu_22_mbdz_element(shape,5),
		tu_22_mbdz_element(shape,4),
		tu_22_mbdz_element(shape,3),
		tu_22_mbdz_element(shape,1),
	}
end

function tu_22_mbdz_full(shape)
	return 	{
		tu_22_mbdz_adapter,
		tu_22_mbdz_element(shape,9),
		tu_22_mbdz_element(shape,8),
		tu_22_mbdz_element(shape,7),
		tu_22_mbdz_element(shape,6),
		tu_22_mbdz_element(shape,5),
		tu_22_mbdz_element(shape,4),
		tu_22_mbdz_element(shape,3),
		tu_22_mbdz_element(shape,2),
		tu_22_mbdz_element(shape,1),
	}
end

function mbd3_full(shape)
	return 	{
		mbd3_u6_adapter,
		mbd3_u6_element(shape,6),
		mbd3_u6_element(shape,5),
		mbd3_u6_element(shape,4),
		mbd3_u6_element(shape,3),
		mbd3_u6_element(shape,2),
		mbd3_u6_element(shape,1),
	}
end

function mbd3_four(shape)
	return	{
		mbd3_u6_adapter,
		mbd3_u6_element(shape,6),	
		mbd3_u6_element(shape,5),
		mbd3_u6_element(shape,4),
		mbd3_u6_element(shape,3),
	}
end


function mbd3_two(shape)
	return	{
		mbd3_u6_adapter,
		mbd3_u6_element(shape,2),	
		mbd3_u6_element(shape,1),
	}
end

function bombs_in_hatch_block(tbl,x0,y0,z0,dy,dz,rows,collumns,count,shape)
	local col = 1
	local row = 1
	while count > 0 and row < rows + 1 do
		tbl[#tbl + 1] = { Position =   {x0,
										y0 + (row - 1) * dy ,
										z0 + (col - 1) * dz } ,
							ShapeName = shape}
				
		col = col + 1
  		if col > collumns then
  	       row  = row + 1
		   col  = 1
		end
		count = count - 1
	end
	return count
end

local function conventional_module_b1(
						  tbl,
						  x0,
						  count,
						  shapename,
						  diam,
						  columns,
						  alterate_sign)
	local rows 	   = #columns
	local col 	   = 1
	local row  	   = 1
	local dy 	   = 0.7 *  diam
	local y0  	   = 0.5 * (rows - 1) * dy
	
	while count > 0 and row < rows + 1 do
	
		local z0  =  -diam * 0.5 * (columns[row] - 1)
		local x   =  x0
		
		local alterate =  math.fmod(columns[row] - (col-1),2)
		
		if alterate > 0 then
		   x = x0 - alterate_sign[row] * 0.9
		else
		   x = x0 + alterate_sign[row] * 0.9
		end
		
		
		tbl[#tbl + 1] = { Position =   {x,
										y0 - (row - 1) * 0.7 * diam ,
										z0 + (col - 1) * diam } ,
						  ShapeName = shape}
				
		col = col + 1
  		if col > columns[row] then
  	       row  		 = row + 1
		   col 			 = 1
		end
		count = count - 1
	end
	return count	
end

function conventional_bomb_module_28(shapename,count)
	local elems = {}
	local count          = count or 28
	local cols  		 = {3, 4,5,4, 5, 4, 3}
	local alterate_sign  = {1,-1,1,1,-1,-1,-1}
	local diam           = 0.31
	local x0 			 = 0
	while count  > 0 do
		  count  = conventional_module_b1(elems,x0,count,shapename,diam,cols,alterate_sign)
	      x0     = x0 - 2.3
	end
	return elems
end


function tactical_munition_dispenser_10(shapename,count)
	local elems = {}
	local count          = count or 10
	local cols  		 = {3, 4, 3}
	local alterate_sign  = {1,-1,-1}
	local diam           = 0.45
	local x0 			 = 0
	while count  > 0 do
		  count  = conventional_module_b1(elems,x0,count,shapename,diam,cols,alterate_sign)
	      x0     = x0 - 2.3
	end
	return elems
end

function tu_22_m3_hatch(shapename,count)
	local count    = count or 33
	local rows     = 5
	local collumns = 3 
	local dy    = -0.5
	local dz    =  0.5
	local x0    =  2.5 
	local y0    = -dy * rows - 0.2
	local z0    = -0.5
	local elems = {}

	while count  > 0 do
		  count  = bombs_in_hatch_block(elems,x0,y0,z0,dy,dz,rows,collumns,count,shapename)
	      x0     = x0 - 2.3
	end
	return elems
end


function B_52_hatch(shapename,count)
	local count    = count or 27
	local rows     = 3
	local collumns = 3 
	local dy    = -0.5
	local dz    =  0.5
	local x0    =  2.5 
	local y0    = -dy * rows
	local z0    = -0.5
	local elems = {}

	while count  > 0 do
		  count  = bombs_in_hatch_block(elems,x0,y0,z0,dy,dz,rows,collumns,count,shapename)
	      x0     = x0 - 2.3
	end
	return elems
end

function rotary_launcher(shape,sides_count,count,count_in_row)
	local radius   = 0.35
	local count_in_row = count_in_row or 1
	local elements = {}
	local row      = 1
	local in_row   = 0
	while count > 0 do
		if in_row >= count_in_row then 
		   row     = row + 1
		   in_row  = 0
		end
		local angle = (row - 1) * math.rad(360/sides_count)
		local ca = math.cos(angle)
		local sa = math.sin(angle)
		elements[#elements + 1] = {Position = {in_row * 2.45,-radius * ca  ,radius * sa} , Rotation = {-57.3 * angle,0,0}}
		in_row = in_row + 1
		count  = count - 1
	end
	return elements
end


local function bru_42_hs_gbu_12(CLSID,count,isleft)

	local args   = 
	{
		[1]	=	{1,	1},
		[2]	=	{2,	1},
	} -- end of DrawArgs
	local right  = 
	{
		DrawArgs	= 	args,
		Position	=	{0.3,- 0.15,	0.15},
		ShapeName	=	"GBU-12",
		Rotation	= 	{-45,0,0},
	}
	
	local left  = 
	{
		DrawArgs	=	args,
		Position	=	{0.3,- 0.15,	-0.15},
		ShapeName	=	"GBU-12",
		Rotation	= 	{45,0,0},
	}				
	local t = 	
	{
		CLSID			=    CLSID,
		Picture			=	"GBU12.png",
		attribute		=	{4,	5,	32,	178},
		wsTypeOfWeapon	=	{4,	5,	36,	38},
		displayName		=   tostring(count)..'x'.._('GBU-12'),
		Cx_pil			=	0.002,
		Count			=	count,
		Weight			=	51 + count*275,
		Elements		=	
		{
			{
				Position	=	{0,0,0},
				ShapeName	=	"BRU-42_HS",
			}, 
		}
	}
	if isleft then 
		t.Elements[#t.Elements + 1] = left
		if count > 2 then
		   t.Elements[#t.Elements + 1] = right
		end
	else
		t.Elements[#t.Elements + 1] = right
		if count > 2 then
		   t.Elements[#t.Elements + 1] = left
		end
	end
	t.Elements[#t.Elements + 1] = 	
	{
		DrawArgs	=	args,
		Position	=	{0.3,- 0.37,0},
		ShapeName	=	"GBU-12",
	}
	return t
end

function APU_R_60_2(left)
	local shape = "apu-60-2_L"
	local z     = -0.151469
	local rot   =  90
	if not left then 
	   shape = "apu-60-2_R"
	   z     = -z
	   rot   = -rot
	end
	return {
		{
			ShapeName	=	shape,
		}, 
		{
			Position	=	{0.489140, -0.301191, 0},
			ShapeName	=	"R-60",
		}, 
		{
			Position	=	{0.489140, -0.094083, z},
			ShapeName	=	"R-60",
			Rotation    =   {rot,0,0},	
		}, 
	}
end


function mer_5(shape)
--[[
"Point_Pilon_01" (0.920030, -0.372539, -0.002774)
"Point_Pilon_02" (0.919250, -0.144942, -0.139955)
"Point_Pilon_03" (0.919250, -0.144942, 0.136488)
"Point_Pilon_04" (-1.367080, -0.148775, -0.135733)
"Point_Pilon_05" (-1.367080, -0.148775, 0.131592)
--]]
	return 	{
			{	ShapeName = "MER-5E", IsAdapter = true},
			{	ShapeName = shape, connector_name = "Point_Pilon_01"},
			{	ShapeName = shape, connector_name = "Point_Pilon_02"},
			{	ShapeName = shape, connector_name = "Point_Pilon_03"},
			{	ShapeName = shape, connector_name = "Point_Pilon_04"},
			{	ShapeName = shape, connector_name = "Point_Pilon_05"},
	}
end

local defaultArgs = {
					[1]	=	{1,	1},
					[2]	=	{2,	1},
					} -- end of DrawArgs
					
					
function bru_42_ls(element)
	
	--"Point01" (-0.038423, -0.351833, 0.000008)
	--"Point02" (-0.038423, -0.120182, 0.124399)
	--"Point03" (-0.038423, -0.120182, -0.117564)
	if not element then 
		return {
		{	
			ShapeName	=	"BRU-42_LS",
		}
	}
	end

	return {
		{	
			ShapeName	=	"BRU-42_LS",
		},
		{
			DrawArgs		= defaultArgs,
			ShapeName		= element,
			connector_name	= "Point01",
		}, 
		{
			DrawArgs		= defaultArgs,
			ShapeName		= element,
			connector_name	= "Point02",
		}, 
		{
			DrawArgs		= defaultArgs,
			ShapeName		= element,
			connector_name	= "Point03",
		}
	}
end


db.Weapons.Categories	=	
{
	[CAT_BOMBS]	=	
	{
		CLSID	=	"{839A9F02-9F52-4a61-9E40-7A4A59975703}",
		Name	=	"BOMBS",
		DisplayName	=	_("BOMBS"),
		Launchers	=	
		{
			{
				CLSID	=	"{35B698AC-9FEF-4EC4-AD29-484A0085F62B}",
				Picture	=	"betab500.png",
				displayName	=	_("BetAB-500"),
				Weight	=	430,
				attribute	=	{4,	5,	37,	3},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"BETAB-500",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{BD289E34-DF84-4C5E-9220-4B14C346E79D}",
				Picture	=	"betab500shp.png",
				displayName	=	_("BetAB-500ShP"),
				Weight	=	424,
				attribute	=	{4,	5,	37,	4},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"BETAB-500SP",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{FB3CE165-BF07-4979-887C-92B87F13276B}",
				Picture	=	"rus_FAB-100.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("FAB-100"),
				Weight	=	100,
				attribute	=	{4,	5,	9,	5},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"FAB-100",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{0511E528-EA28-4caf-A212-00D1408DF10A}",
				Picture	=	"rus_9-A-258.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("SAB-100"),
				Weight	=	100,
				attribute	=	{4,	5,	49,	63},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"SAB-100",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{3C612111-C7AD-476E-8A8E-2485812F4E5C}",
				Picture	=	"rus_FAB-250n-1.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("FAB-250"),
				Weight	=	250,
				attribute	=	{4,	5,	9,	6},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"FAB-250-N1",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{37DCC01E-9E02-432F-B61D-10C166CA2798}",
				Picture	=	"rus_FAB-500n-3.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("FAB-500 M62"),
				Weight	=	506,
				attribute	=	{4,	5,	9,	7},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"FAB-500-N3",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}",
				Picture	=	"rus_FAB-1500.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("FAB-1500 M54"),
				Weight	=	1392,
				attribute	=	{4,	5,	9,	9},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"FAB-1500",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{BA565F89-2373-4A84-9502-A0E017D3A44A}",
				Picture	=	"KAB500.png",
				displayName	=	_("KAB-500L"),
				Weight	=	534,
				attribute	=	{4,	5,	36,	11},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"KAB-500",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{E2C426E3-8B10-4E09-B733-9CDC26520F48}",
				Picture	=	"kab500lpr.png",
				displayName	=	_("KAB-500kr"),
				Weight	=	560,
				attribute	=	{4,	5,	36,	12},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"KAB-500T",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{39821727-F6E2-45B3-B1F0-490CC8921D1E}",
				Picture	=	"KAB1500.png",
				displayName	=	_("KAB-1500L"),
				Weight	=	1560,
				attribute	=	{4,	5,	36,	14},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"KAB-1500",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{4203753F-8198-4E85-9924-6F8FF679F9FF}",
				Picture	=	"RBK250.png",
				displayName	=	_("RBK-250 PTAB-2.5M"),
				Weight	=	273,
				attribute	=	{4,	5,	38,	18},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"RBK_250_PTAB_25M_cassette",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{D5435F26-F120-4FA3-9867-34ACE562EF1B}",
				Picture	=	"RBK_500_255_PTAB_10_5_cassette.png",
				displayName	=	_("RBK-500-255 PTAB-10-5"),
				Weight	=	427,
				attribute	=	{4,	5,	38,	20},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"RBK_500_255_PTAB_10_5_cassette",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{90321C8E-7ED1-47D4-A160-E074D5ABD902}",
				Picture	=	"FAB100.png",
				displayName	=	_("Mk-81"),
				Weight	=	118,
				attribute	=	{4,	5,	9,	30},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"MK-81",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{BCE4E030-38E9-423E-98ED-24BE3DA87C32}",
				Picture	=	"mk82.png",
				displayName	=	_("Mk-82"),
				Weight	=	241,
				attribute	=	{4,	5,	9,	31},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"MK-82",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{7A44FF09-527C-4B7E-B42B-3F111CFE50FB}",
				Picture	=	"mk83.png",
				displayName	=	_("Mk-83"),
				Weight	=	447,
				attribute	=	{4,	5,	9,	32},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"MK-83",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{AB8B8299-F1CC-4359-89B5-2172E0CF4A5A}",
				Picture	=	"mk84.png",
				displayName	=	_("Mk-84"),
				Weight	=	894,
				attribute	=	{4,	5,	9,	33},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"MK-84",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{00F5DAC4-0466-4122-998F-B1A298E34113}",
				Picture	=	"KMGU2.png",
				displayName	=	_("M117"),
				Weight	=	340,
				attribute	=	{4,	5,	9,	34},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"M117",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{08164777-5E9C-4B08-B48E-5AA7AFB246E2}",
				Picture	=	"BL755.png",
				displayName	=	_("BL755"),
				Weight	=	264,
				attribute	=	{4,	5,	38,	23},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"T-BL-755",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{752B9781-F962-11d5-9190-00A0249B6F00}",
				Picture	=	"blu107.png",
				displayName	=	_("BLU-107"),
				Weight	=	185,
				attribute	=	{4,	5,	37,	62},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"DURANDAL",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{CBU_103}",
				Picture	=	"CBU.png",
				displayName	=	_("CBU-103"),
				Weight	=	430,
				attribute	=	{4,	5,	38,	88},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"CBU-97",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{CBU_105}",
				Picture	=	"CBU.png",
				displayName	=	_("CBU-105"),
				Weight	=	417,
				attribute	=	{4,	5,	38,	87},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"CBU-97",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{5335D97A-35A5-4643-9D9B-026C75961E52}",
				Picture	=	"CBU.png",
				displayName	=	_("CBU-97"),
				Weight	=	417,
				attribute	=	{4,	5,	38,	35},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"CBU-97",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{51F9AAE5-964F-4D21-83FB-502E3BFE5F8A}",
				Picture	=	"GBU10.png",
				displayName	=	_("GBU-10"),
				Weight	=	1162,
				attribute	=	{4,	5,	36,	36},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU-10",
					}, 
				}, -- end of Elements
				Required	=	{"{6C0D552F-570B-42ff-9F6D-F10D9C1D4E1C}",
								 "{CAAC1CFD-6745-416B-AFA4-CB57414856D0}"},
			}, 
			{
				CLSID	=	"{DB769D48-67D7-42ED-A2BE-108D566C8B1E}",
				Picture	=	"GBU12.png",
				displayName	=	_("GBU-12"),
				Weight	=	275,
				attribute	=	{4,	5,	36,	38},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU-12",
					}, 
				}, -- end of Elements
				Required	=	{"{6C0D552F-570B-42ff-9F6D-F10D9C1D4E1C}",
								 "{CAAC1CFD-6745-416B-AFA4-CB57414856D0}"},
			},
			{
				CLSID	=	"{0D33DDAE-524F-4A4E-B5B8-621754FE3ADE}",
				Picture	=	"GBU16.png",
				displayName	=	_("GBU-16"),
				Weight	=	564,
				attribute	=	{4,	5,	36,	39},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU-16",
					}, 
				}, -- end of Elements
				Required	=	{"{6C0D552F-570B-42ff-9F6D-F10D9C1D4E1C}",},
			},
			{
				CLSID	=	"{FAAFA032-8996-42BF-ADC4-8E2C86BCE536}",
				Picture	=	"GBU16.png",
				displayName	=	_("GBU-15"),
				Weight	=	1140,
				attribute	=	{4,	5,	36,	42},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU-15",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{34759BBC-AF1E-4AEE-A581-498FF7A6EBCE}",
				Picture	=	"GBU27.png",
				displayName	=	_("GBU-24"),
				Weight	=	900,
				attribute	=	{4,	5,	36,	41},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU-24",
					}, 
				}, -- end of Elements
				Required	=	{"{6C0D552F-570B-42ff-9F6D-F10D9C1D4E1C}",},
			},
			{
				CLSID	=	"{EF0A9419-01D6-473B-99A3-BEBDB923B14D}",
				Picture	=	"GBU27.png",
				displayName	=	_("GBU-27"),
				Weight	=	1200,
				attribute	=	{4,	5,	36,	43},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU-27",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{F06B775B-FC70-44B5-8A9F-5B5E2EB839C7}",
				Picture	=	"GBU27.png",
				displayName	=	_("GBU-28"),
				Weight	=	2130,
				attribute	=	{4,	5,	36,	48},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU-28",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{GBU-31}",
				Picture	=	"GBU31.png",
				displayName	=	_("GBU-31(V)1/B"),
				Weight	=	934,
				attribute	=	{4,	5,	36,	85},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU-31",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{GBU-31V3B}",
				Picture	=	"GBU-31V3B.png",
				displayName	=	_("GBU-31(V)3/B"),
				Weight	=	981,
				attribute	=	{4,	5,	36,	GBU_31_V_3B},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU31_V_3B_BLU109",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{GBU-38}",
				Picture	=	"GBU38.png",
				displayName	=	_("GBU-38"),
				Weight	=	241,
				attribute	=	{4,	5,	36,	86},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU-38",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{BDU-50LD}",
				Picture	=	"BDU-50LD.png",
				displayName	=	_("BDU-50LD"),
				Weight	=	232,
				attribute	=	{4,	5,	9,	70},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"BDU-50LD",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{BDU-50HD}",
				Picture	=	"BDU-50HD.png",
				displayName	=	_("BDU-50HD"),
				Weight	=	232,
				attribute	=	{4,	5,	9,	71},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"BDU-50HD",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{BDU-50LGB}",
				Picture	=	"gbu12.png",
				displayName	=	_("BDU-50LGB"),
				Weight	=	280,
				attribute	=	{4,	5,	36,	72},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"BDU-50LGB",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{BDU-33}",
				Picture	=	"bdu-33.png",
				displayName	=	_("BDU-33"),
				Weight	=	11,
				attribute	=	{4,	5,	9,	69},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"BDU-33",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"BRU-42_3*BDU-33",
				Picture	=	"BDU-33.png",
				wsTypeOfWeapon	=	{4,	5,	9,	69},
				displayName	=	_("3 BDU-33"),
				attribute	=	{4,	5,	32,	114},
				Cx_pil	=	0.000186,
				Count	=	3,
				Weight		=	98,
				Elements	=	bru_42_ls("BDU-33"),
			},
			{
				CLSID	=	"{CBU-87}",
				Picture	=	"CBU.png",
				displayName	=	_("CBU-87"),
				Weight	=	430,
				attribute	=	{4,	5,	38,	77},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"CBU-97",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{ADD3FAE1-EBF6-4EF9-8EFC-B36B5DDF1E6B}",
				Picture	=	"Mk20.png",
				displayName	=	_("Mk-20"),
				Weight	=	222,
				attribute	=	{4,	5,	38,	45},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"ROCKEYE",
					}, 
				}, -- end of Elements
				Required	=	{"{6C0D552F-570B-42ff-9F6D-F10D9C1D4E1C}",},
			},
			{
				CLSID	=	"{C40A1E3A-DD05-40D9-85A4-217729E37FAE}",
				Picture	=	"agm119.png",
				displayName	=	_("AGM-62"),
				Weight	=	1061,
				attribute	=	{4,	5,	36,	47},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AGM-62",
					}, 
				}, -- end of Elements
				Required	=	{"{6C0D552F-570B-42ff-9F6D-F10D9C1D4E1C}",},
			},
			{
				CLSID	=	"{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}",
				Picture	=	"rus_FAB-100.png",
                PictureBlendColor = "0xffffffff",
				wsTypeOfWeapon	=	{4,	5,	9,	5},
				displayName	=	_("MER*6 FAB-100"),
				attribute	=	{4,	5,	32,	1},
				Cx_pil	=	0.00158,
				Count	=	6,
				Weight	=	660,
				Elements	= mbd3_full("FAB-100"),
			},
			{
				CLSID	=	"{53BE25A4-C86C-4571-9BC0-47D668349595}",
				Picture	=	"rus_FAB-250n-1.png",
                PictureBlendColor = "0xffffffff",
				wsTypeOfWeapon	=	{4,	5,	9,	6},
				displayName	=	_("MER*6 FAB-250"),
				attribute	=	{4,	5,	32,	2},
				Cx_pil	=	0.00444,
				Count	=	6,
				Weight	=	1560,
				Elements	=	mbd3_full("FAB-250-N1"),
			},
			{
				CLSID	=	"{E659C4BE-2CD8-4472-8C08-3F28ACB61A8A}",
				Picture	=	"rus_FAB-250n-1.png",
                PictureBlendColor = "0xffffffff",
				wsTypeOfWeapon	=	{4,	5,	9,	6},
				displayName	=	_("MER 6*2 FAB-250"),
				attribute	=	{4,	5,	32,	68},
				Cx_pil	=	0.0028,
				Count	=	2,
				Weight	=	550,
				Elements	= mbd3_two("FAB-250-N1"),	
			},
			{
				CLSID	=	"{3E35F8C1-052D-11d6-9191-00A0249B6F00}",
				Picture	=	"rus_FAB-250n-1.png",
                PictureBlendColor = "0xffffffff",
				wsTypeOfWeapon	=	{4,	5,	9,	6},
				displayName	=	_("MER 6*4 FAB-250"),
				attribute	=	{4,	5,	32,	84},
				Cx_pil	=	0.005,
				Count	=	4,
				Weight	=	1060,
				Elements	= mbd3_four("FAB-250-N1"),	
			},
			{
				CLSID	=	"{FA673F4C-D9E4-4993-AA7A-019A92F3C005}",
				Picture	=	"rus_FAB-500n-3.png",
                PictureBlendColor = "0xffffffff",
				wsTypeOfWeapon	=	{4,	5,	9,	7},
				displayName	=	_("MER*6 FAB-500"),
				attribute	=	{4,	5,	32,	3},
				Cx_pil	=	0.00788,
				Count	=	6,
				Weight	=	3060,
				Elements =	tu_22_mbdz_six("FAB-500-N3"),
			},
			{
				CLSID	=	"{F503C276-FE15-4C54-B310-17B50B735A84}",
				Picture	=	"RBK_500_255_PTAB_10_5_cassette.png",
				wsTypeOfWeapon	=	{4,	5,	38,	20},
				displayName	=	_("MER*6 RBK-500-255 PTAB-10-5"),
				attribute	=	{4,	5,	32,	43},
				Cx_pil	=	0.00788,
				Count	=	6,
				Weight	=	3060,
				Elements	=	tu_22_mbdz_six("RBK_500_255_PTAB_10_5_cassette")
			},
			{
				CLSID	=	"{6CDB6B36-7165-47D0-889F-6625FB333561}",
				Picture	=	"RBK250.png",
				wsTypeOfWeapon	=	{4,	5,	9,	34},
				displayName	=	_("MER*6 M117AB"),
				attribute	=	{4,	5,	32,	12},
				Cx_pil	=	0.007,
				Count	=	6,
				Weight	=	2100,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MBD",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-1.242,	-0.415,	0},
						ShapeName	=	"M117",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{1.19,	-0.415,	0},
						ShapeName	=	"M117",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{-1.242,	-0.266,	0.293},
						ShapeName	=	"M117",
					}, 
					[5]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{-1.242,	-0.266,	-0.293},
						ShapeName	=	"M117",
					}, 
					[6]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{1.19,	-0.266,	0.293},
						ShapeName	=	"M117",
					}, 
					[7]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{1.19,	-0.266,	-0.293},
						ShapeName	=	"M117",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{1C97B4A0-AA3B-43A8-8EE7-D11071457185}",
				Picture	=	"mk82.png",
				wsTypeOfWeapon	=	{4,	5,	9,	31},
				displayName	=	_("MER*6 Mk-82"),
				attribute	=	{4,	5,	32,	14},
				Cx_pil	=	0.00544,
				Count	=	6,
				Weight	=	1506,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MBD",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-1.242,	-0.415,	0},
						ShapeName	=	"MK-82",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{1.19,	-0.415,	0},
						ShapeName	=	"MK-82",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{-1.242,	-0.266,	0.293},
						ShapeName	=	"MK-82",
					}, 
					[5]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{-1.242,	-0.266,	-0.293},
						ShapeName	=	"MK-82",
					}, 
					[6]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{1.19,	-0.266,	0.293},
						ShapeName	=	"MK-82",
					}, 
					[7]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{1.19,	-0.266,	-0.293},
						ShapeName	=	"MK-82",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{3C7CD675-7D39-41C5-8735-0F4F537818A8}",
				Picture	=	"rockeye.png",
				wsTypeOfWeapon	=	{4,	5,	38,	45},
				displayName	=	_("MER*6 Mk-20 Rockeye"),
				attribute	=	{4,	5,	32,	15},
				Cx_pil	=	0.0049,
				Count	=	6,
				Weight	=	1392,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MBD",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-1.242,	-0.415,	0},
						ShapeName	=	"ROCKEYE",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{1.19,	-0.415,	0},
						ShapeName	=	"ROCKEYE",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{-1.242,	-0.266,	0.293},
						ShapeName	=	"ROCKEYE",
					}, 
					[5]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{-1.242,	-0.266,	-0.293},
						ShapeName	=	"ROCKEYE",
					}, 
					[6]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{1.19,	-0.266,	0.293},
						ShapeName	=	"ROCKEYE",
					}, 
					[7]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{1.19,	-0.266,	-0.293},
						ShapeName	=	"ROCKEYE",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{752B9782-F962-11d5-9190-00A0249B6F00}",
				Picture	=	"blu107.png",
				wsTypeOfWeapon	=	{4,	5,	37,	62},
				displayName	=	_("MER*6 BLU-107"),
				attribute	=	{4,	5,	32,	75},
				Cx_pil	=	0.00988,
				Count	=	6,
				Weight	=	1800,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MBD",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-1.242,	-0.415,	0},
						ShapeName	=	"DURANDAL",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{1.19,	-0.415,	0},
						ShapeName	=	"DURANDAL",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{-1.242,	-0.266,	0.293},
						ShapeName	=	"DURANDAL",
					}, 
					[5]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{-1.242,	-0.266,	-0.293},
						ShapeName	=	"DURANDAL",
					}, 
					[6]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{1.19,	-0.266,	0.293},
						ShapeName	=	"DURANDAL",
					}, 
					[7]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{1.19,	-0.266,	-0.293},
						ShapeName	=	"DURANDAL",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{A1E85991-B58E-4E92-AE91-DED6DC85B2E7}",
				Picture	=	"rus_FAB-500n-3.png",
                PictureBlendColor = "0xffffffff",
				wsTypeOfWeapon	=	{4,	5,	9,	7},
				displayName	=	_("MER-3*3 FAB-500"),
				attribute	=	{4,	5,	32,	18},
				Cx_pil	=	0.00444,
				Count	=	3,
				Weight	=	1560,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MBD-3",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.415,	0},
						ShapeName	=	"FAB-500-N3",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.266,	0.293},
						ShapeName	=	"FAB-500-N3",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.266,	-0.293},
						ShapeName	=	"FAB-500-N3",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{005E70F5-C3EA-4E95-A148-C1044C42D845}",
				Picture	=	"betab500.png",
				wsTypeOfWeapon	=	{4,	5,	37,	3},
				displayName	=	_("MER-3*3 BetAB-500"),
				attribute	=	{4,	5,	32,	72},
				Cx_pil	=	0.00508,
				Count	=	3,
				Weight	=	1566,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MBD-3",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.415,	0},
						ShapeName	=	"BETAB-500",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.266,	0.293},
						ShapeName	=	"BETAB-500",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.266,	-0.293},
						ShapeName	=	"BETAB-500",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{EAD9B2C1-F3BA-4A7B-A2A5-84E2AF8A1975}",
				Picture	=	"RBK250.png",
				wsTypeOfWeapon	=	{4,	5,	38,	18},
				displayName	=	_("MER-3*3 RBK-250 PTAB-2.5M"),
				attribute	=	{4,	5,	32,	22},
				Cx_pil	=	0.00322,
				Count	=	3,
				Weight	=	885,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MBD-3",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.415,	0},
						ShapeName	=	"RBK_250_PTAB_25M_cassette",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.266,	0.293},
						ShapeName	=	"RBK_250_PTAB_25M_cassette",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.266,	-0.293},
						ShapeName	=	"RBK_250_PTAB_25M_cassette",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{CEE04106-B9AA-46B4-9CD1-CD3FDCF0CE78}",
				Picture	=	"rus_FAB-100.png",
                PictureBlendColor = "0xffffffff",
				wsTypeOfWeapon	=	{4,	5,	9,	5},
				displayName	=	_("MER-3*3 FAB-100"),
				attribute	=	{4,	5,	32,	16},
				Cx_pil	=	0.00158,
				Count	=	3,
				Weight	=	360,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MBD-3",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.415,	0},
						ShapeName	=	"FAB-100",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.266,	0.293},
						ShapeName	=	"FAB-100",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.266,	-0.293},
						ShapeName	=	"FAB-100",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{D109EE9C-A1B7-4F1C-8D87-631C293A1D26}",
				Picture	=	"rus_FAB-250n-1.png",
                PictureBlendColor = "0xffffffff",
				wsTypeOfWeapon	=	{4,	5,	9,	6},
				displayName	=	_("MER-3*3 FAB-250"),
				attribute	=	{4,	5,	32,	17},
				Cx_pil	=	0.00322,
				Count	=	3,
				Weight	=	810,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MBD-3",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.415,	0},
						ShapeName	=	"FAB-250-N1",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.266,	0.293},
						ShapeName	=	"FAB-250-N1",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.266,	-0.293},
						ShapeName	=	"FAB-250-N1",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{919CE839-9390-4629-BAF7-229DE19B8523}",
				Picture	=	"RBK_500_255_PTAB_10_5_cassette.png",
				wsTypeOfWeapon	=	{4,	5,	38,	20},
				displayName	=	_("MER-3*3 RBK-500-255 PTAB-10-5"),
				attribute	=	{4,	5,	32,	23},
				Cx_pil	=	0.00544,
				Count	=	3,
				Weight	=	1560,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MBD-3",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.415,	0},
						ShapeName	=	"RBK_500_255_PTAB_10_5_cassette",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.266,	0.293},
						ShapeName	=	"RBK_500_255_PTAB_10_5_cassette",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.266,	-0.293},
						ShapeName	=	"RBK_500_255_PTAB_10_5_cassette",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{82F90BEC-0E2E-4CE5-A66E-1E4ADA2B5D1E}",
				Picture	=	"RBK250.png",
				wsTypeOfWeapon	=	{4,	5,	9,	34},
				displayName	=	_("MER-3*3 M117AB"),
				attribute	=	{4,	5,	32,	27},
				Cx_pil	=	0.004,
				Count	=	3,
				Weight	=	1060,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MBD-3",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.415,	0},
						ShapeName	=	"M117",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.266,	0.293},
						ShapeName	=	"M117",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.266,	-0.293},
						ShapeName	=	"M117",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{7B34E0BB-E427-4C2A-A61A-8407CE18B54D}",
				Picture	=	"FAB250.png",
				wsTypeOfWeapon	=	{4,	5,	9,	30},
				displayName	=	_("MER-3*3 Mk-81"),
				attribute	=	{4,	5,	32,	28},
				Cx_pil	=	0.00205,
				Count	=	3,
				Weight	=	414,
				Elements	=	bru_42_ls("MK-81"),
			},
			{
				CLSID	=	"{60CC734F-0AFA-4E2E-82B8-93B941AB11CF}",
				Picture	=	"mk82.png",
				wsTypeOfWeapon	=	{4,	5,	9,	31},
				displayName	=	_("3 Mk-82"),
				attribute	=	{4,	5,	32,	29},
				Cx_pil	=	0.00322,
				Count	=	3,
				Weight	=	783,
				Elements	=	bru_42_ls("MK-82"),
			},
			{
				CLSID	=	"{BRU-42_3*Mk-82AIR}",
				Picture	=	"mk82.png",
				wsTypeOfWeapon	=	{4,	5,	9,	75},
				displayName	=	_("3 Mk-82AIR"),
				attribute	=	{4,	5,	32,	131},
				Cx_pil	=	0.00075,
				Count	=	3,
				Weight	=	783,
				Elements	=	bru_42_ls("MK-82AIR"),
			},
			{
				CLSID	=	"{B83CB620-5BBE-4BEA-910C-EB605A327EF9}",
				Picture	=	"Mk20.png",
				wsTypeOfWeapon	=	{4,	5,	38,	45},
				displayName	=	_("3 Mk-20 Rockeye"),
				attribute	=	{4,	5,	32,	30},
				Cx_pil	=	0.00295,
				Count	=	3,
				Weight	=	726,
				Elements	=	bru_42_ls("ROCKEYE")
			},
			{
				CLSID	=	"{88D49E04-78DF-4F08-B47E-B81247A9E3C5}",
				Picture	=	"GBU16.png",
				wsTypeOfWeapon	=	{4,	5,	36,	39},
				displayName	=	_("3 GBU-16"),
				attribute	=	{4,	5,	32,	31},
				Cx_pil	=	0.00508,
				Count	=	3,
				Weight	=	666,
				Elements	=	bru_42_ls("GBU-16")
			},
			{
				CLSID	=	"{5A1AC2B4-CA4B-4D09-A1AF-AC52FBC4B60B}",
				Picture	=	"rus_FAB-100.png",
                PictureBlendColor = "0xffffffff",
				wsTypeOfWeapon	=	{4,	5,	9,	5},
				displayName	=	_("MBD-2-67U - 4 FAB-100"),
				attribute	=	{4,	5,	32,	32},
				Cx_pil	=	0.001,
				Count	=	4,
				Weight	=	465,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MBD-2-67U",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.701,	-0.088,	-0.107},
						ShapeName	=	"FAB-100",
						Rotation    = 	{35,0,0},
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-0.595,	-0.088,	-0.107},
						ShapeName	=	"FAB-100",
						Rotation    = 	{35,0,0},
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.701,	-0.088,	0.107},
						ShapeName	=	"FAB-100",
						Rotation    = 	{-35,0,0},
					}, 
					[5]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-0.595,	-0.088,	0.107},
						ShapeName	=	"FAB-100",
						Rotation    = 	{-35,0,0},
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{5F1C54C0-0ABD-4868-A883-B52FF9FCB422}",
				Picture	=	"rus_FAB-100.png",
                PictureBlendColor = "0xffffffff",
				wsTypeOfWeapon	=	{4,	5,	9,	5},
				displayName	=	_("MER*9 FAB-100"),
				attribute	=	{4,	5,	32,	34},
				Cx_pil	=	0.0027,
				Count	=	9,
				Weight	=	960,
				Elements	= tu_22_mbdz_full("FAB-100")	
			},
			{
				CLSID	=	"{E1AAE713-5FC3-4CAA-9FF5-3FDCFB899E33}",
				Picture	=	"rus_FAB-250n-1.png",
                PictureBlendColor = "0xffffffff",
				wsTypeOfWeapon	=	{4,	5,	9,	6},
				displayName	=	_("MER*9 FAB-250"),
				attribute	=	{4,	5,	32,	35},
				Cx_pil	=	0.00766,
				Count	=	9,
				Weight	=	2310,
				Elements	= tu_22_mbdz_full("FAB-250-N1")
			},
			{
				CLSID	=	"{BF83E8FD-E7A2-40D2-9608-42E13AFE2193}",
				Picture	=	"RBK250.png",
				wsTypeOfWeapon	=	{4,	5,	38,	18},
				displayName	=	_("MER*9 RBK-250 PTAB-2.5M"),
				attribute	=	{4,	5,	32,	38},
				Cx_pil		=	0.0082,
				Count		=	9,
				Weight		=	2535,
				Elements	= tu_22_mbdz_full("RBK_250_PTAB_25M_cassette")
			},
			{
				CLSID	=	"{0D945D78-542C-4E9B-9A17-9B5008CC8D39}",
				Picture	=	"rus_FAB-500n-3.png",
                PictureBlendColor = "0xffffffff",
				wsTypeOfWeapon	=	{4,	5,	9,	7},
				displayName	=	_("MER*6 FAB-500"),
				attribute	=	{4,	5,	32,	39},
				Cx_pil	=	0.00988,
				Count	=	6,
				Weight	=	3060,
				Elements	= tu_22_mbdz_six("FAB-500-N3")
			},
			{
				CLSID	=	"{436C6FB9-8BF2-46B6-9DC4-F55ABF3CD1EC}",
				Picture	=	"betab500.png",
				wsTypeOfWeapon	=	{4,	5,	37,	3},
				displayName	=	_("MER*6 BetAB-500"),
				attribute	=	{4,	5,	32,	40},
				Cx_pil	=	0.00988,
				Count	=	6,
				Weight	=	3060,
				Elements	= tu_22_mbdz_six("BETAB-500")
			},
			{
				CLSID	=	"{E96E1EDD-FF3F-47CF-A959-576C3B682955}",
				Picture	=	"betab500shp.png",
				wsTypeOfWeapon	=	{4,	5,	37,	4},
				displayName	=	_("MER*6 BetAB-500SP"),
				attribute	=	{4,	5,	32,	41},
				Cx_pil	=	0.00988,
				Count	=	6,
				Weight	=	3060,
				Elements	= tu_22_mbdz_six("BETAB-500SP")
			},
			{
				CLSID	=	"{4D459A95-59C0-462F-8A57-34E80697F38B}",
				Picture	=	"RBK_500_255_PTAB_10_5_cassette.png",
				wsTypeOfWeapon	=	{4,	5,	38,	20},
				displayName	=	_("MER*6 RBK-500-255 PTAB-10-5"),
				attribute	=	{4,	5,	32,	8},
				Cx_pil		=	0.00788,
				Count		=	6,
				Weight		=	3060,
				Elements	=	mbd3_full("RBK_500_255_PTAB_10_5_cassette"),
			},
			{
				CLSID	=	"{7C5F0F5F-0A0B-46E8-937C-8922303E39A8}",
				Picture	=	"rus_FAB-1500.png",
                PictureBlendColor = "0xffffffff",
				wsTypeOfWeapon	=	{4,	5,	9,	9},
				displayName	=	_("MER*2 FAB-1500"),
				attribute	=	{4,	5,	32,	71},
				Cx_pil	=	0.0037,
				Count	=	2,
				Weight	=	3100,
				Elements	= tu_22_mbdz_two("FAB-1500")
			},
			{
				CLSID	=	"{D5D51E24-348C-4702-96AF-97A714E72697}",
				Picture	=	"mk82.png",
				wsTypeOfWeapon	=	{4,	5,	9,	31},
				displayName	=	_("MER*2 MK-82"),
				attribute	=	{4,	5,	32,	51},
				Cx_pil	=	0.0007,
				Count	=	2,
				Weight	=	200,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MER2",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.132,	-0.161,	0.298},
						ShapeName	=	"MK-82",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.132,	-0.161,	-0.298},
						ShapeName	=	"MK-82",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{18617C93-78E7-4359-A8CE-D754103EDF63}",
				Picture	=	"FAB250.png",
				wsTypeOfWeapon	=	{4,	5,	9,	32},
				displayName	=	_("MER*2 MK-83"),
				attribute	=	{4,	5,	32,	52},
				Cx_pil	=	0.001,
				Count	=	2,
				Weight	=	200,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MER2",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.132,	-0.161,	0.298},
						ShapeName	=	"MK-83",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.132,	-0.161,	-0.298},
						ShapeName	=	"MK-83",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{C535596E-F7D2-4301-8BB4-B1658BB87ED7}",
				Picture	=	"BL755.png",
				wsTypeOfWeapon	=	{4,	5,	38,	23},
				displayName	=	_("BL-755*2"),
				attribute	=	{4,	5,	32,	54},
				Cx_pil	=	0.001,
				Count	=	2,
				Weight	=	200,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{1.32,	0,	0},
						ShapeName	=	"T-BL-755",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-1.32,	0,	0},
						ShapeName	=	"T-BL-755",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{0B9ABA77-93B8-45FC-9C63-82AFB2CB50A4}",
				Picture	=	"Mk20.png",
				wsTypeOfWeapon	=	{4,	5,	38,	45},
				displayName	=	_("2 Mk-20 Rockeye"),
				attribute	=	{4,	5,	32,	55},
				Cx_pil	=	0.001,
				Count	=	2,
				Weight	=	200,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MER2",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.132,	-0.161,	0.298},
						ShapeName	=	"ROCKEYE",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.132,	-0.161,	-0.298},
						ShapeName	=	"ROCKEYE",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{E79759F7-C622-4AA4-B1EF-37639A34D924}",
				Picture	=	"rockeye.png",
				displayName	=	_("Mk-20 Rockeye *6"),
				Weight	=	1332,
				Count	=	6,
				attribute	=	{4,	5,	38,	45},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"ROCKEYE",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{02B81892-7E24-4795-84F9-B8110C641AF0}",
				Picture	=	"RBK250.png",
				wsTypeOfWeapon	=	{4,	5,	38,	18},
				displayName	=	_("MER*4 RBK-250 PTAB-2.5M"),
				attribute	=	{4,	5,	32,	80},
				Cx_pil	=	0.005,
				Count	=	4,
				Weight	=	1060,
				Elements =	mbd3_four("RBK_250_PTAB_25M_cassette"),

			},
			{
				CLSID	=	"{6A367BB4-327F-4A04-8D9E-6D86BDC98E7E}",
				Picture	=	"rus_FAB-250n-1.png",
                PictureBlendColor = "0xffffffff",
				wsTypeOfWeapon	=	{4,	5,	9,	6},
				displayName	=	_("MER*4 FAB-250"),
				attribute	=	{4,	5,	32,	81},
				Cx_pil	=	0.005,
				Count	=	4,
				Weight	=	1060,
				Elements=	mbd3_four("FAB-250-N1"),
			},
			{
				CLSID	=	"{62BE78B1-9258-48AE-B882-279534C0D278}",
				Picture	=	"GBU10.png",
				displayName	=	_("GBU-10*2"),
				Weight	=	1800,
				Count	=	2,
				attribute	=	{4,	5,	36,	36},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU-10",
					}, 
				}, -- end of Elements
			},
			bru_42_hs_gbu_12("{89D000B0-0360-461A-AD83-FB727E2ABA98}",2,true),
			bru_42_hs_gbu_12("{BRU-42_2xGBU-12_right}"				 ,2,false),
			{
				CLSID	=	"BRU-42_3*GBU-12",
				Picture	=	"GBU12.png",
				wsTypeOfWeapon	=	{4,	5,	36,	38},
				displayName	=	_("3 GBU-12"),
				attribute	=	{4,	5,	32,	127},
				Cx_pil	=	0.002,
				Count	=	3,
				Weight	=	51+275*3,--1230,
				Elements	=	bru_42_ls("GBU-12")
			},
			{
				CLSID	=	"{EB969276-1922-4ED1-A5CB-18590F45D7FE}",
				Picture	=	"GBU27.png",
				displayName	=	_("GBU-27*2"),
				Weight	=	1968,
				Count	=	2,
				attribute	=	{4,	5,	36,	43},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU-27",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{D3ABF208-FA56-4D56-BB31-E0D931D57AE3}",
				Picture	=	"FAB250.png",
				displayName	=	_("Mk 84*28"),
				Weight	=	25032,
				Count	=	28,
				attribute	=	{4,	5,	9,	33},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"MK-84",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{B8C99F40-E486-4040-B547-6639172A5D57}",
				Picture	=	"GBU27.png",
				displayName	=	_("GBU-27*4"),
				Weight	=	3936,
				Count	=	4,
				attribute	=	{4,	5,	36,	43},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"GBU-27",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{72CAC282-AE18-490B-BD4D-35E7EE969E73}",
				Picture	=	"RBK250.png",
				displayName	=	_("M117*51"),
				Weight	=	17340,
				Count	=	51,
				attribute	=	{4,	5,	9,	34},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"M117",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{B84DFE16-6AC7-4854-8F6D-34137892E166}",
				Picture	=	"mk82.png",
				displayName	=	_("51 Mk-82"),
				Weight	=	12291,
				Count	=	51,
				attribute	=	{4,	5,	9,	31},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"MK-82",
					}, 
				}, -- end of Elements
			},
			{
				CLSID		=	"MK_82*28",
				Picture		=	"mk82.png",
				displayName	=	_("Mk-82*28"),
				Count		=	28,
				Weight		=	6748,
				attribute	=	{4,	5,	9,	31},
				Elements	=	conventional_bomb_module_28("MK-82")
			},
			{
				CLSID		=	"TEST_ROTARY_LAUNCHER_MK82",
				Picture		=	"mk82.png",
				displayName	=	_("TEST_ROTARY_LAUNCHER_MK82"),
				Count		=	24,
				Weight		=	6748,
				attribute	=	{4,	5,	9,	31},
				Elements	=	rotary_launcher("MK-82",8,24,3)
			},
			{
				CLSID		=	"B-1B_Mk-84*8",
				Picture		=	"mk84.png",
				displayName	=	_("Mk-84*8"),
				Count		=	8,
				Weight		=	7152,
				attribute	=	{4,	5,	9,	33},
				Elements	=	rotary_launcher("Mk-84",8,8,1)
			},
			{
				CLSID		=	"GBU-31*8",
				Picture		=	"GBU31.png",
				displayName	=	_("GBU-31*8"),
				Count		=	8,
				Weight		=	7152,
				attribute	=	{4,	5,	36,	85},
				Elements	=	rotary_launcher("GBU-31",8,8,1)
			},
			{
				CLSID		=	"GBU-31V3B*8",
				Picture		=	"GBU-31V3B.png",
				displayName	=	_("GBU-31(V)3/B*8"),
				Count		=	8,
				Weight		=	7848,
				attribute	=	{4,	5,	36,	GBU_31_V_3B},
				Elements	=	rotary_launcher("GBU-31(V)3B",8,8,1)
			},
			{
				CLSID		=	"GBU-38*16",
				Picture		=	"GBU38.png",
				displayName	=	_("GBU-38*16"),
				Count		=	16,
				Weight		=	3856,
				attribute	=	{4,	5,	36,	86},
				Elements	=	conventional_bomb_module_28("GBU-38")
			},
			{
				CLSID		=	"CBU87*10",
				Picture		=	"CBU.png",
				displayName	=	_("CBU-87*10"),
				Count		=	10,
				Weight		=	4300,
				attribute	=	{4,	5,	38,	77},
				Elements	=	tactical_munition_dispenser_10("CBU-87")
			},
			{
				CLSID		=	"CBU97*10",
				Picture		=	"CBU.png",
				displayName	=	_("CBU-97*10"),
				Count		=	10,
				Weight		=	4170,
				attribute	=	{4,	5,	38,	35},
				Elements	=	tactical_munition_dispenser_10("CBU-97")
			},
			{
				CLSID	=	"{027563C9-D87E-4A85-B317-597B510E3F03}",
				Picture	=	"FAB250.png",
				displayName	=	_("6 Mk-82"),
				Weight	=	1446,
				Count	=	6,
				attribute	=	{4,	5,	9,	31},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"MK-82",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{ACADB374-6D6C-45A0-BA7C-B22B2E108AE4}",
				Picture	=	"rockeye.png",
				displayName	=	_("Mk 20*18"),
				Weight	=	3996,
				Count	=	18,
				attribute	=	{4,	5,	38,	45},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"ROCKEYE",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{F092B80C-BB54-477E-9408-66DEEF740008}",
				Picture	=	"FAB250.png",
				displayName	=	_("Mk 84*18"),
				Weight	=	16092,
				Count	=	18,
				attribute	=	{4,	5,	9,	33},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"MK-84",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{BDAD04AA-4D4A-4E51-B958-180A89F963CF}",
				Picture	=	"rus_FAB-250n-1.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("FAB-250*33"),
				Weight	=	8250,
				Count	=	33,
				attribute	=	{4,	5,	9,	6},
				Elements	=	tu_22_m3_hatch("FAB-250-N1"),
			},
			{
				CLSID	=	"{AD5E5863-08FC-4283-B92C-162E2B2BD3FF}",
				Picture	=	"rus_FAB-500n-3.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("FAB-500*33"),
				Weight	=	16500,
				Count	=	33,
				attribute	=	{4,	5,	9,	7},
				Elements	=	tu_22_m3_hatch("FAB-500-N3"),
			},
			{
				CLSID	=	"{B0241BD2-5628-47E0-954C-A8675B7E698E}",
				Picture	=	"rus_FAB-250n-1.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("FAB-250*24"),
				Weight	=	6000,
				Count	=	24,
				attribute	=	{4,	5,	9,	6},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"FAB-250-N1",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{26D2AF37-B0DF-4AB6-9D61-A150FF58A37B}",
				Picture	=	"rus_FAB-500n-3.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("FAB-500*6"),
				Weight	=	3000,
				Count	=	6,
				attribute	=	{4,	5,	9,	7},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"FAB-500-N3",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{E70446B7-C7E6-4B95-B685-DEA10CAD1A0E}",
				Picture	=	"rus_FAB-500n-3.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("FAB-500*12"),
				Weight	=	6000,
				Count	=	12,
				attribute	=	{4,	5,	9,	7},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"FAB-500-N3",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{639DB5DD-CB7E-4E42-AC75-2112BC397B97}",
				Picture	=	"rus_FAB-1500.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("FAB-1500*3"),
				Weight	=	4500,
				Count	=	3,
				attribute	=	{4,	5,	9,	9},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"FAB-1500",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{D9179118-E42F-47DE-A483-A6C2EA7B4F38}",
				Picture	=	"rus_FAB-1500.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("FAB-1500*6"),
				Weight	=	9000,
				Count	=	6,
				attribute	=	{4,	5,	9,	9},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"FAB-1500",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{2B7BDB38-4F45-43F9-BE02-E7B3141F3D24}",
				Picture	=	"betab500.png",
				displayName	=	_("BetAB-500*6"),
				Weight	=	2868,
				Count	=	6,
				attribute	=	{4,	5,	37,	3},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"BETAB-500",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{D6A0441E-6794-4FEB-87F7-E68E2290DFAB}",
				Picture	=	"betab500.png",
				displayName	=	_("BetAB-500*12"),
				Weight	=	478,
				Count	=	1,
				attribute	=	{4,	5,	37,	3},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"BETAB-500",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{585D626E-7F42-4073-AB70-41E728C333E2}",
				Picture	=	"mk82.png",
				wsTypeOfWeapon	=	{4,	5,	9,	31},
				displayName	=	_("MER*12 Mk-82"),
				attribute	=	{4,	5,	32,	74},
				Cx_pil	=	0.005,
				Count	=	12,
				Weight	=	3000,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"B52-MBD_M117",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-3.084,	-0.131,	0},
						ShapeName	=	"MK-82",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-0.867,	-0.131,	0},
						ShapeName	=	"MK-82",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{1.349,	-0.131,	0},
						ShapeName	=	"MK-82",
					}, 
					[5]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{3.566,	-0.131,	0},
						ShapeName	=	"MK-82",
					}, 
					[6]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{-3.084,	-0.037,	0.141},
						ShapeName	=	"MK-82",
					}, 
					[7]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{-3.084,	-0.037,	-0.141},
						ShapeName	=	"MK-82",
					}, 
					[8]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{-0.867,	-0.037,	0.141},
						ShapeName	=	"MK-82",
					}, 
					[9]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{-0.867,	-0.037,	-0.141},
						ShapeName	=	"MK-82",
					}, 
					[10]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{1.349,	-0.037,	0.141},
						ShapeName	=	"MK-82",
					}, 
					[11]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{1.349,	-0.037,	-0.141},
						ShapeName	=	"MK-82",
					}, 
					[12]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{3.566,	-0.037,	0.141},
						ShapeName	=	"MK-82",
					}, 
					[13]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{3.566,	-0.037,	-0.141},
						ShapeName	=	"MK-82",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{574EDEDF-20DE-4942-B2A2-B2EDFD621562}",
				Picture	=	"KMGU2.png",
				wsTypeOfWeapon	=	{4,	5,	9,	34},
				displayName	=	_("MER*12 M117"),
				attribute	=	{4,	5,	32,	76},
				Cx_pil	=	0.005,
				Count	=	12,
				Weight	=	4250,
				Elements	=	
				{
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"B52-MBD_M117",
					}, 
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-3.084,	-0.131,	0},
						ShapeName	=	"M117",
					}, 
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-0.867,	-0.131,	0},
						ShapeName	=	"M117",
					}, 
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{1.349,	-0.131,	0},
						ShapeName	=	"M117",
					}, 
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{3.566,	-0.131,	0},
						ShapeName	=	"M117",
					}, 
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{-3.084,	-0.037,	0.141},
						ShapeName	=	"M117",
					}, 
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{-3.084,	-0.037,	-0.141},
						ShapeName	=	"M117",
					}, 
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{-0.867,	-0.037,	0.141},
						ShapeName	=	"M117",
					}, 
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{-0.867,	-0.037,	-0.141},
						ShapeName	=	"M117",
					}, 
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{1.349,	-0.037,	0.141},
						ShapeName	=	"M117",
					}, 
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{1.349,	-0.037,	-0.141},
						ShapeName	=	"M117",
					}, 
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{3.566,	-0.037,	0.141},
						ShapeName	=	"M117",
					}, 
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{3.566,	-0.037,	-0.141},
						ShapeName	=	"M117",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{696CFFC4-0BDE-42A8-BE4B-0BE3D9DD723C}",
				Picture	=	"FAB250.png",
				wsTypeOfWeapon	=	{4,	5,	9,	33},
				displayName	=	_("HSAB*9 Mk-84"),
				attribute	=	{4,	5,	32,	78},
				Cx_pil	=	0.005,
				Count	=	9,
				Weight	=	8100,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"B52-MBD_MK84",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-3.853,	-0.134,	0},
						ShapeName	=	"MK-84",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-0.052,	-0.134,	0},
						ShapeName	=	"MK-84",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{3.774,	-0.134,	0},
						ShapeName	=	"MK-84",
					}, 
					[5]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{-3.853,	-0.038,	0.147},
						ShapeName	=	"MK-84",
					}, 
					[6]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{-3.853,	-0.038,	-0.147},
						ShapeName	=	"MK-84",
					}, 
					[7]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{-0.052,	-0.038,	0.147},
						ShapeName	=	"MK-84",
					}, 
					[8]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{-0.052,	-0.038,	-0.147},
						ShapeName	=	"MK-84",
					}, 
					[9]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{3.774,	-0.038,	0.147},
						ShapeName	=	"MK-84",
					}, 
					[10]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{3.774,	-0.038,	-0.147},
						ShapeName	=	"MK-84",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{4CD2BB0F-5493-44EF-A927-9760350F7BA1}",
				Picture	=	"rockeye.png",
				wsTypeOfWeapon	=	{4,	5,	38,	45},
				displayName	=	_("HSAB*9 Mk-20 Rockeye"),
				attribute	=	{4,	5,	32,	79},
				Cx_pil	=	0.005,
				Count	=	9,
				Weight	=	2050,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"B52-MBD_MK84",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-3.853,	-0.134,	0},
						ShapeName	=	"ROCKEYE",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-0.052,	-0.134,	0},
						ShapeName	=	"ROCKEYE",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{3.774,	-0.134,	0},
						ShapeName	=	"ROCKEYE",
					}, 
					[5]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{-3.853,	-0.038,	0.147},
						ShapeName	=	"ROCKEYE",
					}, 
					[6]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{-3.853,	-0.038,	-0.147},
						ShapeName	=	"ROCKEYE",
					}, 
					[7]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{-0.052,	-0.038,	0.147},
						ShapeName	=	"ROCKEYE",
					}, 
					[8]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{-0.052,	-0.038,	-0.147},
						ShapeName	=	"ROCKEYE",
					}, 
					[9]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{3.774,	-0.038,	0.147},
						ShapeName	=	"ROCKEYE",
					}, 
					[10]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{3.774,	-0.038,	-0.147},
						ShapeName	=	"ROCKEYE",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{6C47D097-83FF-4FB2-9496-EAB36DDF0B05}",
				Picture	=	"mk82.png",
				displayName	=	_("27 Mk-82"),
				Weight	=	6507,
				Count	=	27,
				attribute	=	{4,	5,	9,	31},
				Elements	=	B_52_hatch("MK-82")
			},
			{
				CLSID	=	"{Mk82AIR}",
				Picture	=	"mk82AIR.png",
				displayName	=	_("Mk-82AIR"),
				Weight	=	232,
				attribute	=	{4,	5,	9,	75},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"Mk-82AIR",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{Mk82SNAKEYE}",
				Picture	=	"mk82AIR.png",
				displayName	=	_("Mk-82 SnakeEye"),
				Weight	=	232,
				attribute	=	{4,	5,	9,	79},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"MK-82_Snakeye",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{B58F99BA-5480-4572-8602-28B0449F5260}",
				Picture	=	"RBK250.png",
				displayName	=	_("M117*27"),
				Weight	=	9180,
				Count	=	27,
				attribute	=	{4,	5,	9,	34},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"M117",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{29A828E2-C6BB-11d8-9897-000476191836}",
				Picture	=	"rus_FAB-100.png",
                PictureBlendColor = "0xffffffff",
				wsTypeOfWeapon	=	{4,	5,	9,	5},
				displayName	=	_("MBD-2-67U - 4 FAB-100"),
				attribute	=	{4,	5,	32,	32},
				Cx_pil	=	0.001,
				Count	=	4,
				Weight	=	465,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MBD-2-67U",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.701,	-0.088,	-0.107},
						ShapeName	=	"FAB-100",
						Rotation    = 	{35,0,0},
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-0.595,	-0.088,	-0.107},
						ShapeName	=	"FAB-100",
						Rotation    = 	{35,0,0},
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.701,	-0.088,	0.107},
						ShapeName	=	"FAB-100",
						Rotation    = 	{-35,0,0},
					}, 
					[5]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-0.595,	-0.088,	0.107},
						ShapeName	=	"FAB-100",
						Rotation    = 	{-35,0,0},
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{96A7F676-F956-404A-AD04-F33FB2C74884}",
				Picture	=	"KMGU2.png",
				wsTypeOfWeapon	=	{4,	5,	9,	65},
				displayName	=	_("KMGU-2 - 96 AO-2.5RT"),
				attribute	=	{4,	5,	32,	94},
				Cx_pil	=	0.00167,
				Weight	=	520,
				Count	=	96,
				kind_of_shipping = 2,--SOLID_MUNITION
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"KMGU-2",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{96A7F676-F956-404A-AD04-F33FB2C74881}",
				Picture	=	"KMGU2.png",
				wsTypeOfWeapon	=	{4,	5,	9,	66},
				displayName	=	_("KMGU-2 - 96 PTAB-2.5KO"),
				attribute	=	{4,	5,	32,	95},
				Cx_pil	=	0.00167,
				Weight	=	520,
				Count	=	96,
				kind_of_shipping = 2,--SOLID_MUNITION
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"KMGU-2",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{CAE48299-A294-4bad-8EE6-89EFC5DCDF00}",
				Picture	=	"L005.png",

				wsTypeOfWeapon	=	{4,	5,	49,	64},
				displayName	=	_("SUU-25 * 8 LUU-2"),
				attribute	=	{4,	5,	32,	85},
				Cx_pil	=	0.001,
				Weight	=	130,
				Count	=	8,
				Elements	=	
				{
					{	ShapeName	=	"SUU-25",},
					{	Position	=	{-1.45,	-0.12,	-0.06},}, 
					{	Position	=	{-1.45,	-0.12,	 0.06},}, 
					{	Position	=	{-1.45,	-0.23,	-0.06},}, 
					{	Position	=	{-1.45,	-0.23,	 0.06},}, 
					{	Position	=	{-1.45,	-0.12,	-0.06},}, 
					{	Position	=	{-1.45,	-0.12,	 0.06},}, 
					{	Position	=	{-1.45,	-0.23,	-0.06},}, 
					{	Position	=	{-1.45,	-0.23,	 0.06},}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{BRU-42_LS_3*SUU-25_8*LUU-2}",
				Picture	=	"L005.png",
				wsTypeOfWeapon	=	{4,	5,	49,	64},
				displayName	=	_("3 SUU-25 * 8 LUU-2"),
				attribute	=	{4,	5,	32,	144},
				Cx_pil	=	0.001,
				Count	=	24,
				Weight	=	490,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"BRU-42_LS_(SUU-25)",
					}, 
					--weapon itself
					[2]	=	
					{
						Position	=	{-0.3,	-0.1,	0},
					}, 
					[3]	=	
					{
						Position	=	{-0.3,	-0.18,	-0.08},
					}, 
					[4]	=	
					{
						Position	=	{-0.3,	-0.26,	0},
					}, 
					[5]	=	
					{
						Position	=	{-0.3,	-0.18,	0.08},
					}, 
					[6]	=	
					{
						Position	=	{-0.3,	-0.1,	0},
					}, 
					[7]	=	
					{
						pos	=	{-0.3,	-0.18,	-0.08},
					}, 
					[8]	=	
					{
						Position	=	{-0.3,	-0.26,	0},
					}, 
					[9]	=	
					{
						Position	=	{-0.3,	-0.18,	0.08},
					}, 			
				}, -- end of Elements
			},
			{
				CLSID	=	"{AN-M64}",
				Picture	=	"us_AN-M64.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("AN-M64"),
				Weight	=	227,
				attribute	=	{4,	5,	9,	90},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"AN-M64",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{7AEC222D-C523-425e-B714-719C0D1EB14D}",
				Picture	=	"RBK_500_SPBE_D_cassette.png",
				displayName	=	_("RBK-500 PTAB-1M"),
				Weight	=	427,
				attribute	=	{4,	5,	38,	91},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"RBK_500_PTAB_1M_cassette",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID			=	"{MER-5E_MK82x5}",
				Picture			=	"mk82.png",
				displayName		=	_("5 Mk-82"),
				Weight			=	90.7 + 5 * 241,
				attribute		=	{4,	5,	32,	179},
				wsTypeOfWeapon  =   {4,	5,	9,	31},
				Cx_pil			=	0.00544,
				Count			=   5,
				Elements		=	mer_5("Mk-82")
			}, 
			{
				CLSID			=	"{MER-5E_Mk82SNAKEYEx5}",
				Picture			=	"mk82AIR.png",
				displayName		=	_("5 Mk-82 SnakeEye"),
				Weight			=	90.7 + 5 * 232,
				attribute		=	{4,	5,	32,	179},
				wsTypeOfWeapon  =   {4,	5,	9,	79},
				Cx_pil			=	0.00544,
				Count			=   5,
				Elements		=	mer_5("MK-82_Snakeye")
			}, 
			{
				CLSID	=	"{CBU-52B}",
				Picture	=	"CBU.png",
				displayName	=	_("CBU-52B"),
				Weight	=	356,
				attribute	=	{4,	5,	38,	93},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"SUU-30H",
					}, 
				}, -- end of Elements
			}, 
		}, -- end of Launchers
	}, 
	[CAT_MISSILES]	=	
	{
		CLSID	=	"{3AB1001C-D1FD-4862-91DC-AD97A56EA01A}",
		Name	=	"MISSILES",
		DisplayName	=	_("AG MISSILES"),
		Launchers	=	
		{
			{
				CLSID	=	"TOW",
				Elements	=	{},
				attribute	=	{4,	4,	8,	130},
				displayName	=	_("BGM-71 TOW"),
			}, 
			{
				CLSID	=	"9M14",
				Elements	=	{},
				attribute	=	{4,	4,	11,	127},
				displayName	=	_("AT-3 SAGGER"),
			}, 
			{
				CLSID	=	"9M133",
				Elements	=	{},
				attribute	=	{4,	4,	11,	153},
				displayName	=	_("AT-14 KORNET"),
			}, 
			{
				CLSID	=	"9М111",
				Elements	=	{},
				attribute	=	{4,	4,	11,	128},
				displayName	=	_("AT-4 SPIGOT"),
			}, 
			{
				CLSID	=	"9М117",
				Elements	=	{},
				attribute	=	{4,	4,	11,	129},
				displayName	=	_("AT-10 SABBER"),
			}, 
			{
				CLSID	=	"REFLEX_9М119",
				Elements	=	{},
				attribute	=	{4,	4,	11,	156},
				displayName	=	_("9M119 Reflex"),
			}, 
			{
				CLSID	=	"SVIR_9М119",
				Elements	=	{},
				attribute	=	{4,	4,	11,	157},
				displayName	=	_("9M119 Svir"),
			}, 
			{
				CLSID	=	"9M311",
				Elements	=	{},
				attribute	=	{4,	4,	34,	90},
				displayName	=	_("SA-19 GRISON"),
			}, 
			{
				CLSID	=	"9М38",
				Elements	=	{},
				attribute	=	{4,	4,	34,	87},
				displayName	=	_("SA-11 GADFLY"),
			}, 
			{
				CLSID	=	"9М37",
				Elements	=	{},
				attribute	=	{4,	4,	34,	88},
				displayName	=	_("SA-13 GOPHER"),
			}, 
			{
				CLSID	=	"9M331",
				Elements	=	{},
				attribute	=	{4,	4,	34,	89},
				displayName	=	_("SA-15 GAUNTLET"),
			}, 
			{
				CLSID	=	"9M31",
				Elements	=	{},
				attribute	=	{4,	4,	34,	86},
				displayName	=	_("SA-9 GASKIN"),
			}, 
			{
				CLSID	=	"9M33",
				Elements	=	{},
				attribute	=	{4,	4,	34,	85},
				displayName	=	_("SA-8 GECKO"),
			}, 
			{
				CLSID	=	"MIM_72",
				Elements	=	{},
				attribute	=	{4,	4,	34,	137},
				displayName	=	_("M48 CHAPARRAL"),
			}, 
			{
				CLSID	=	"MIM_104",
				Elements	=	{},
				attribute	=	{4,	4,	34,	92},
				displayName	=	_("M901 PATRIOT"),
			}, 
			{
				CLSID	=	"ROLAND",
				Elements	=	{},
				attribute	=	{4,	4,	34,	99},
				displayName	=	_("ROLAND"),
			}, 
			{
				CLSID	=	"SEASPARROW",
				Elements	=	{},
				attribute	=	{4,	4,	34,	28},
				displayName	=	_("SEASPARROW"),
			}, 
			{
				CLSID	=	"5V55",
				Elements	=	{},
				attribute	=	{4,	4,	34,	80},
				displayName	=	_("5V55"),
			}, 
			{
				CLSID	=	"48N6E2",
				Elements	=	{},
				attribute	=	{4,	4,	34,	81},
				displayName	=	_("48N6E2"),
			}, 
			{
				CLSID	=	"3M45",
				Elements	=	{},
				attribute	=	{4,	4,	11,	120,	"Anti-Ship missiles"},
				displayName	=	_("SS-N-19 SHIPWRECK"),
			}, 
			{
				CLSID	=	"4К80",
				Elements	=	{},
				attribute	=	{4,	4,	11,	119,	"Anti-Ship missiles"},
				displayName	=	_("SS-N-12 SANDBOX"),
			}, 
			{
				CLSID	=	"SM2",
				Elements	=	{},
				attribute	=	{4,	4,	34,	79},
				displayName	=	_("SM2"),
			},
			{
				CLSID	=	"AGM_84",
				Elements	=	{},
				attribute	=	{4,	4,	11,	126},
				displayName	=	_("AGM-84 HARPOON"),
			},
			{
				CLSID	=	"BGM_109",
				Elements	=	{},
				attribute	=	{4,	4,	11,	125},
				displayName	=	_("BGM-109 TOMAHAWK"),
			},
			{
				CLSID	=	"FIM_92",
				Elements	=	{},
				attribute	=	{4,	4,	34,	93},
				displayName	=	_("STINGER"),
			},
			{
				CLSID	=	"9М39",
				Elements	=	{},
				attribute	=	{4,	4,	34,	91},
				displayName	=	_("SA-18 GROUSE"),
			},
			{
				NatoName	=	"(AS-4A)",
				CLSID	=	"{12429ECF-03F0-4DF6-BCBD-5D38B6343DE1}",
				Picture	=	"kh22.png",
				displayName	=	_("Kh-22N"),
				Weight	=	6800,
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"X-22",
					}, 
				}, -- end of Elements
				attribute	=	{4,	4,	8,	41,	"Anti-Ship missiles"},
			},
			{
				NatoName	=	"(AS-7)",
				CLSID	=	"{9F390892-E6F9-42C9-B84E-1136A881DCB2}",
				Picture	=	"KAB500.png",
				displayName	=	_("Kh-23L"),
				Weight	=	288,
				attribute	=	{4,	4,	8,	73},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"X-23L",
					}, 
				}, -- end of Elements
			},
			_WEAPON_COPY("{3468C652-E830-4E73-AFA9-B5F260AB7C3D}",kh29l),
			_WEAPON_COPY("{D4A8D9B9-5C45-42e7-BBD2-0E54F8308432}",kh29l),
			_WEAPON_COPY("{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}",kh29t),	
			_WEAPON_COPY("{601C99F7-9AF3-4ed7-A565-F8B8EC0D7AAC}",kh29t),
			_WEAPON_COPY("{FE382A68-8620-4AC0-BDF5-709BFE3977D7}",kh58u),
			_WEAPON_COPY("{B5CA9846-776E-4230-B4FD-8BCC9BFB1676}",kh58u),
			_WEAPON_COPY("{4D13E282-DF46-4B23-864A-A9423DFDE504}",kh31a),
			_WEAPON_COPY("{4D13E282-DF46-4B23-864A-A9423DFDE50A}",kh31a),
			_WEAPON_COPY("{D8F2C90B-887B-4B9E-9FE2-996BC9E9AF03}",kh31p),
			_WEAPON_COPY("{D8F2C90B-887B-4B9E-9FE2-996BC9E9AF0A}",kh31p),
			_WEAPON_COPY("{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}",kh25ml),
			_WEAPON_COPY("{79D73885-0801-45a9-917F-C90FE1CE3DFC}",kh25ml),
			_WEAPON_COPY("{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}",kh25mpu),
			_WEAPON_COPY("{752AF1D2-EBCC-4bd7-A1E7-2357F5601C70}",kh25mpu),
			_WEAPON_COPY("{292960BB-6518-41AC-BADA-210D65D5073C}",kh25mr),
			{
				NatoName	=	"(AS-20)",
				CLSID	=	"{2234F529-1D57-4496-8BB0-0150F9BDBBD2}",
				Picture	=	"kh35.png",
				displayName	=	_("Kh-35"),
				Weight	=	480,
				attribute	=	{4,	4,	8,	55},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"X-35",
					}, 
				}, -- end of Elements
				Required	=	{"{F4920E62-A99A-11d8-9897-000476191836}",},
			},
			{
				NatoName	=	"(SS-N-22)",
				CLSID	=	"{3F26D9C5-5CC3-4E42-BC79-82FAA54E9F26}",
				Picture	=	"kh41.png",
				displayName	=	_("Kh-41"),
				Weight	=	4500,
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"X-41",
					}, 
				}, -- end of Elements
				attribute	=	{4,	4,	8,	56,	"Anti-Ship missiles"},
			},
			{
				NatoName	=	"(AS-18)",
				CLSID		=	"{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}",
				Picture		=	"kh59m.png",
				displayName	=	_("Kh-59M"),
				Weight		=	850,
				Count 		=   1,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"AKU-58",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-0.428,	-0.234,	0},
						ShapeName	=	"X-59M",
					}, 
				}, -- end of Elements
				wsTypeOfWeapon = {4,	4,	8,	54},
				attribute	   = {4,	4,	32,	171,"Cruise missiles"},
			},
			{
				NatoName	=	"(AS-15B)",
				CLSID	=	"{BADAF2DE-68B5-472A-8AAC-35BAEFF6B4A1}",
				Picture	=	"kh65.png",
				displayName	=	_("Kh-65"),
				Weight	=	1250,
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"X-65",
					}, 
				}, -- end of Elements
				attribute	=	{4,	4,	8,	51,	"Cruise missiles"},
			},
			{
				NatoName	=	"(AT-16)",
				CLSID	=	"{F789E86A-EE2E-4E6B-B81E-D5E5F903B6ED}",
				Picture	=	"APU8.png",
				wsTypeOfWeapon	=	{4,	4,	8,	58},
				displayName	=	_("APU-8 - 8 9A4172 Vikhr"),
				attribute	=	{4,	4,	32,	47},
				Cx_pil	=	0.001,
				Weight	=	404,
				Count	=	8,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"9M120",
					}, 
					[2]	=	{Position	=	{0,	-0.235,	-0.263}},
					[3]	=	{Position	=	{0,	-0.235,	-0.116}},
					[4]	=	{Position	=	{0,	-0.235,	 0.116}}, 
					[5]	=	{Position	=	{0,	-0.235,	 0.263}}, 
					[6]	=	{Position	=	{0,	-0.474,	-0.263}},
					[7]	=	{Position	=	{0,	-0.474,	-0.116}},
					[8]	=	{Position	=	{0,	-0.474,	 0.116}}, 
					[9]	=	{Position	=	{0,	-0.474,	 0.263}}, 
				}, -- end of Elements
			},
			{
				NatoName	=	"(AT-16)",
				CLSID	=	"{A6FD14D3-6D30-4C85-88A7-8D17BEE120E2}",
				Picture	=	"APU6.png",
				wsTypeOfWeapon	=	{4,	4,	8,	58},
				displayName	=	_("APU-6 - 6 9A4172 Vikhr"),
				attribute	=	{4,	4,	32,	86},
				Cx_pil	=	0.001,
				Weight	=	330,
				Count	=	6,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"APU-6",
					}, 
					--weapon itself
					[2]	=	
					{
						Position	=	{0,	-0.328,	0.262},
					}, 
					[3]	=	
					{
						Position	=	{0,	-0.328,	0.103},
					}, 
					[4]	=	
					{
						Position	=	{0,	-0.146,	-0.17},
					}, 
					[5]	=	
					{
						Position	=	{0,	-0.146,	0.17},
					}, 
					[6]	=	
					{
						Position	=	{0,	-0.328,	-0.262},
					}, 
					[7]	=	
					{
						Position	=	{0,	-0.328,	-0.103},
					}, 
				}, -- end of Elements
			},
			{
				NatoName	=	"AT-6",
				CLSID	=	"{B919B0F4-7C25-455E-9A02-CEA51DB895E3}",
				Picture	=	"apu2.png",
				wsTypeOfWeapon	=	{4,	4,	8,	48},
				displayName	=	_("9M114 Shturm-V - 2"),
				attribute	=	{4,	4,	32,	60},
				Cx_pil	=	0.001,
				Weight	=	230,
				Count	=	2,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"9M114-PILON",
					}, 
					[2]	=	
					{
						Rotation	=   {0,0,1},
						Position	=	{1,	0.05,	-0.225},
						ShapeName	=	"",
					}, 
					[3]	=	
					{
						Rotation	=   {0,0,1},
						Position	=	{1,	0.05,  0.225},
						ShapeName	=	"",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{3EA17AB0-A805-4D9E-8732-4CE00CB00F17}",
				Picture	=	"apu4.png",
				wsTypeOfWeapon	=	{4,	4,	8,	130},
				displayName	=	_("BGM-71D Tow * 4"),
				attribute	=	{4,	4,	32,	64},
				Cx_pil	=	0.0018,
				Weight	=	250,
				Count	=	4,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"TOW-PILON",
					}, 
					
				}, -- end of Elements
			},
			{
				CLSID	=	"{E6747967-B1F0-4C77-977B-AB2E6EB0C102}",
				Picture	=	"ALARM.png",
				displayName	=	_("ALARM"),
				Weight	=	268,
				attribute	=	{4,	4,	8,	72},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"T-ALARM",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{07BE2D19-0E48-4B0B-91DA-5F6C8F9E3C75}",
				Picture	=	"ALARM.png",
				wsTypeOfWeapon	=	{4,	4,	8,	72},
				displayName	=	_("ALARM*2"),
				attribute	=	{4,	4,	32,	56},
				Cx_pil	=	0.001,
				Count	=	2,
				Weight	=	200,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{1.32,	0,	0},
						ShapeName	=	"T-ALARM",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-1.32,	0,	0},
						ShapeName	=	"T-ALARM",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{3E6B632D-65EB-44D2-9501-1C2D04515404}",
				Picture	=	"agm45.png",
				displayName	=	_("AGM-45B"),
				Weight	=	177,
				attribute	=	{4,	4,	8,	60},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AGM-45",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{69DC8AE7-8F77-427B-B8AA-B19D3F478B65}",
				Picture	=	"agm65.png",
				displayName	=	_("AGM-65K"),
				Weight	=	360,
				attribute	=	{4,	4,	8,	61},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AGM-65B",
					}, 
				}, -- end of Elements
			},
			lau_117("AGM-65K",
			{
				CLSID	=	"{69DC8AE7-8F77-427B-B8AA-B19D3F478B66}",
				attribute	=	{4,	4,	32,	108},
			}), -- end of[49]
			lau_88("AGM-65K",2,true,
			{
				CLSID			=	"{D7670BC7-881B-4094-906C-73879CF7EB28}",
				attribute		=	{4,	4,	32,	65},
			}),
			lau_88("AGM-65K",2,false,
			{
				CLSID			=	"{D7670BC7-881B-4094-906C-73879CF7EB27}",
				attribute		=	{4,	4,	32,	105},
			}),
			lau_88("AGM-65K",3,false,
			{
				CLSID	=	"{907D835F-E650-4154-BAFD-C656882555C0}",
				attribute	=	{4,	4,	32,	33},
			}),
			lau_117("CATM-65K",
			{
				CLSID	=	"LAU_117_CATM_65K",
				attribute	=	{4,	4,	32,	141},
			}),
			{
				CLSID	=	"{444BA8AE-82A7-4345-842E-76154EFCCA47}",
				Picture	=	"agm65.png",
				displayName	=	_("AGM-65D"),
				Weight	=	218,
				attribute	=	{4,	4,	8,	77},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AGM-65D",
					}, 
				}, -- end of Elements
			},
			lau_117("AGM-65D",
			{
				CLSID	=	"{444BA8AE-82A7-4345-842E-76154EFCCA46}",
				attribute	=	{4,	4,	32,	109},
			}),
			lau_88("AGM-65D",1,false,
			{
				CLSID	=	"LAU_88_AGM_65D_ONE",
				attribute	=	{4,	4,	32,	145},
			}),
			lau_88("AGM-65D",2,true,
			{
				CLSID	=	"{E6A6262A-CA08-4B3D-B030-E1A993B98452}",
				attribute	=	{4,	4,	32,	66},
			}),
			lau_88("AGM-65D",2,false,
			{
				CLSID	=	"{E6A6262A-CA08-4B3D-B030-E1A993B98453}",
				attribute	=	{4,	4,	32,	106},
			}),
			lau_88("AGM-65D",3,false,
			{
				CLSID	=	"{DAC53A2F-79CA-42FF-A77A-F5649B601308}",
				attribute	=	{4,	4,	32,	48},
			}),
			lau_117("TGM-65D",
			{
				CLSID	=	"LAU_117_TGM_65D",
				attribute	=	{4,	4,	32,	138},
			}),
			{
				CLSID	=	"{F16A4DE0-116C-4A71-97F0-2CF85B0313EF}",
				Picture	=	"agm65.png",
				displayName	=	_("AGM-65E"),
				Weight	=	286,
				attribute	=	{4,	4,	8,	70},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AGM-65E",
					}, 
				}, -- end of Elements
			},
			lau_117("AGM-65E",
			{
				CLSID	=	"{F16A4DE0-116C-4A71-97F0-2CF85B0313EC}",
				attribute	=	{4,	4,	32,	110},
			}),
			lau_88("AGM-65E",2,true,
			{
				CLSID	=	"{2CC29C7A-E863-411C-8A6E-BD6F0E730548}",
				attribute	=	{4,	4,	32,	104},
			}),
			lau_88("AGM-65E",2,false,
			{
				CLSID	=	"{2CC29C7A-E863-411C-8A6E-BD6F0E730547}",
				attribute	=	{4,	4,	32,	107},
			}),
			lau_88("AGM-65E",3,false,
			{
				CLSID	=	"{71AAB9B8-81C1-4925-BE50-1EF8E9899271}",
				attribute	=	{4,	4,	32,	49},
			}),
			lau_117("AGM-65H",
			{
				CLSID	=	"LAU_117_AGM_65H",
				attribute	=	{4,	4,	32,	125},
			}),
			lau_88("AGM-65H",1,false,
			{
				CLSID	=	"LAU_88_AGM_65H",
				attribute	=	{4,	4,	32,	134},
			}),
			lau_88("AGM-65H",2,false,
			{
				CLSID	=	"LAU_88_AGM_65H_2_R",
				attribute	=	{4,	4,	32,	136},
			}),
			lau_88("AGM-65H",2,true,
			{
				CLSID	=	"LAU_88_AGM_65H_2_L",
				attribute	=	{4,	4,	32,	135},
			}),
			lau_88("AGM-65H",3,false,
			{
				CLSID	=	"LAU_88_AGM_65H_3",
				attribute	=	{4,	4,	32,	137},
			}),
			{
				CLSID	=	"TGM_65H",
				Picture	=	"agm65.png",
				displayName	=	_("TGM-65H"),
				Weight	=	208,
				attribute	=	{4,	4,	101,	154},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AGM-65H",
					}, 
				}, -- end of Elements
			},
			lau_117("TGM-65H",
			{
				CLSID	=	"LAU_117_TGM_65H",
				attribute	=	{4,	4,	32,	140},
			}),
			lau_117("TGM-65G",
			{
				CLSID	=	"LAU_117_TGM_65G",
				attribute	=	{4,	4,	32,	139},
			}),
			lau_117("AGM-65G",
			{
				CLSID	=	"LAU_117_AGM_65G",
				attribute	=	{4,	4,	32,	126},
			}),
			{
				CLSID	=	"{8B7CADF9-4954-46B3-8CFB-93F2F5B90B03}",
				Picture	=	"agm84a.png",
				displayName	=	_("AGM-84A"),
				Weight	=	661.5,
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AGM-84",
					}, 
				}, -- end of Elements
				attribute	=	{4,	4,	8,	62,	"Anti-Ship missiles"},
			},
			{
				Required	=	{"{6C0D552F-570B-42ff-9F6D-F10D9C1D4E1C}",},
				Picture	=	"agm84a.png",
				displayName	=	_("AGM-84E"),
				Weight	=	628,
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AGM-84E",
					}, 
				}, -- end of Elements
				CLSID	=	"{AF42E6DF-9A60-46D8-A9A0-1708B241AADB}",
				attribute	=	{4,	4,	8,	63,	"Cruise missiles"},
			},
			{
				CLSID	=	"{769A15DF-6AFB-439F-9B24-5B7A45C59D16}",
				Picture	=	"AGM86.png",
				displayName	=	_("AGM-86C"),
				Weight	=	1950,
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AGM-86",
					}, 
				}, -- end of Elements
				attribute	=	{4,	4,	8,	64,	"Cruise missiles"},
			},
			{
				CLSID	=	"{B06DD79A-F21E-4EB9-BD9D-AB3844618C9C}",
				Picture	=	"agm88.png",
				displayName	=	_("AGM-88C"),
				Weight	=	361,
				attribute	=	{4,	4,	8,	65},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AGM-88",
					}, 
				}, -- end of Elements
				Required	=	{"{8C3F26A2-FA0F-11d5-9190-00A0249B6F00}",},
			},
			{
				CLSID	=	"AGM114x2_OH_58",
				Picture	=	"agm114.png",
				wsTypeOfWeapon	=	{4,	4,	8,	59},
				displayName	=	_("AGM-114K * 2"),
				attribute	=	{4,	4,	32,	119},
				Cx_pil	=	0.001,
				Count	=	2,
				Weight	=	250,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"M272_AGM114",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.149,	-0.174,	0.1572},
						ShapeName	=	"AGM114",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.149,	-0.174,	-0.1572},
						ShapeName	=	"AGM114",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{88D18A5E-99C8-4B04-B40B-1C02F2018B6E}",
				Picture	=	"agm114.png",
				wsTypeOfWeapon	=	{4,	4,	8,	39},
				displayName	=	_("AGM-114K * 4"),
				attribute	=	{4,	4,	32,	59},
				Cx_pil	=	0.00208,
				Count	=	4,
				Weight	=	250,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"M299_AGM114",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.063,	-0.1679,	0.1572},
						ShapeName	=	"AGM114",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.063,	-0.1679,	-0.1572},
						ShapeName	=	"AGM114",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.063,	-0.498,	0.1572},
						ShapeName	=	"AGM114",
					}, 
					[5]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.063,	-0.498,	-0.1572},
						ShapeName	=	"AGM114",
					}, 
				}, -- end of Elements
			},
			{
				NatoName	=	"(S-25)",
				CLSID	=	"{0180F983-C14A-11d8-9897-000476191836}",
				Picture	=	"S25L.png",
				wsTypeOfWeapon	=	{4,	4,	8,	133},
				displayName	=	_("S-25L"),
				attribute	=	{4,	4,	32,	87},
				Cx_pil	=	0.001,
				Weight	=	500,
				Count	=	1,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"C-25PU",
					}, 
					[2]	=	
					{
						DrawArgs		= {{2,	1}}, -- end of DrawArgs
						ShapeName		= "S-25L",
						Position		= {-0.129395, -0.247116,0},		
						connector_name  = "tube_1",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{7B8DCEB4-820B-4015-9B48-1028A4195692}",
				Picture	=	"AGM119.png",
				displayName	=	_("AGM-119B Penguin"),
				Weight	=	300,
				attribute	=	{4,	4,	8,	40},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"penquin",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{7210496B-7B81-4B52-80D6-8529ECF847CD}",
				Picture	=	"S25.png",
				displayName	=	_("Kormoran"),
				Weight	=	660,
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"T-KORMORAN",
					}, 
				}, -- end of Elements
				attribute	=	{4,	4,	8,	78,	"Anti-Ship missiles"},
			},
			{
				CLSID	=	"{1461CD18-429A-42A9-A21F-4C621ECD4573}",
				Picture	=	"SeaEagle.png",
				displayName	=	_("Sea Eagle"),
				Weight	=	600,
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"T-SEA-EAGLE",
					}, 
				}, -- end of Elements
				attribute	=	{4,	4,	8,	66,	"Anti-Ship missiles"},
			},
			{
				CLSID	=	"{CD9417DF-455F-4176-A5A2-8C58D61AA00B}",
				Picture	=	"kh65.png",
				displayName	=	_("Kh-65*8"),
				Weight	=	10000,
				Count	=	8,
				attribute	=	{4,	4,	8,	51},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"X-65",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{0290F5DE-014A-4BB1-9843-D717749B1DED}",
				Picture	=	"kh65.png",
				displayName	=	_("Kh-65*6"),
				Weight	=	7500,
				Count	=	6,
				attribute	=	{4,	4,	8,	51},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"X-65",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{C42EE4C3-355C-4B83-8B22-B39430B8F4AE}",
				Picture	=	"kh35.png",
				displayName	=	_("Kh-35*6"),
				Weight	=	2880,
				Count	=	6,
				attribute	=	{4,	4,	8,	55},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"X-35",
					}, 
				}, -- end of Elements
			},
			{
				Picture	=	"AGM154.png",
				displayName	=	_("AGM-154C"),
				Weight	=	484,
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AGM-154",
					}, 
				}, -- end of Elements
				CLSID	=	"{9BCC2A2B-5708-4860-B1F1-053A18442067}",
				attribute	=	{4,	4,	8,	132,	"Cruise missiles"},
			},
			{
				CLSID		=	"{AABA1A14-78A1-4E85-94DD-463CF75BD9E4}",
				Picture		=	"AGM154.png",
				displayName	=	_("AGM-154C*4"),
				Weight		=	2560,
				Count		=	4,
				attribute	=	{4,	4,	8,	132},
				Elements	=	rotary_launcher("agm-154",4,4,1),
			},
			{
				CLSID	=	"{22906569-A97F-404B-BA4F-D96DBF94D05E}",
				Picture	=	"AGM86.png",
				displayName	=	_("AGM-86C*20"),
				Weight	=	39000,
				Count	=	20,
				attribute	=	{4,	4,	8,	64},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AGM-86",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{46ACDCF8-5451-4E26-BDDB-E78D5830E93C}",
				Picture	=	"agm84a.png",
				displayName	=	_("AGM-84A*8"),
				Weight	=	5292,
				Count	=	8,
				attribute	=	{4,	4,	8,	62},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AGM-84",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{8DCAF3A3-7FCF-41B8-BB88-58DEDA878EDE}",
				Picture	=	"AGM86.png",
				displayName	=	_("AGM-86C*8"),
				Weight	=	15600,
				Count	=	8,
				attribute	=	{4,	4,	8,	64},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AGM-86",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{45447F82-01B5-4029-A572-9AAD28AF0275}",
				Picture	=	"AGM86.png",
				wsTypeOfWeapon	=	{4,	4,	8,	64},
				displayName	=	_("MER*6 AGM-86C"),
				attribute	=	{4,	4,	32,	67},
				Cx_pil	=	0.000681,
				Count	=	6,
				Weight	=	11760,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"B52-MBD_AGM86",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-2.096,	0.138,	0},
						ShapeName	=	"AGM-86",
					}, 
					[3]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{4.277,	0.138,	0},
						ShapeName	=	"AGM-86",
					}, 
					[4]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{-2.096,	0.847,	0.838},
						ShapeName	=	"AGM-86",
					}, 
					[5]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{-2.096,	0.847,	-0.838},
						ShapeName	=	"AGM-86",
					}, 
					[6]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	-1},
						}, -- end of DrawArgs
						Position	=	{4.277,	0.847,	0.838},
						ShapeName	=	"AGM-86",
					}, 
					[7]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{4.277,	0.847,	-0.838},
						ShapeName	=	"AGM-86",
					}, 
				}, -- end of Elements
			},
			{
				NatoName	=	"(AS-20)",
				CLSID	=	"{2234F529-1D57-4496-8BB0-0150F9BDBBD3}",
				Picture	=	"kh35.png",
				wsTypeOfWeapon	=	{4,	4,	8,	55},
				attribute	=	{4,	4,	32,	98},
				displayName	=	_("Kh-35"),
				Cx_pil	=	0.001,
				Weight	=	570,
				Count	=	1,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"AKU-58",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{-0.43,	-0.219,	0},
						ShapeName	=	"X-35",
					}, 
				}, -- end of Elements
				Required	=	{"{F4920E62-A99A-11d8-9897-000476191836}",},
			},
			{
				CLSID	=	"{B06DD79A-F21E-4EB9-BD9D-AB3844618C93}",
				Picture	=	"agm88.png",
				wsTypeOfWeapon	=	{4,	4,	8,	65},
				attribute	=	{4,	4,	32,	89},
				displayName	=	_("AGM-88C"),
				Cx_pil	=	0.001,
				Weight	=	361,
				Count	=	1,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"lau-118a",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0.05,	-0.13,	0},
						ShapeName	=	"AGM-88",
					}, 
				}, -- end of Elements
				Required	=	{"{8C3F26A2-FA0F-11d5-9190-00A0249B6F00}",},
			},
			{
				CLSID	=	"{3E6B632D-65EB-44D2-9501-1C2D04515405}",
				Picture	=	"agm45.png",
				wsTypeOfWeapon	=	{4,	4,	8,	60},
				displayName	=	_("AGM-45B"),
				attribute	=	{4,	4,	32,	90},
				Cx_pil	=	0.001,
				Weight	=	177,
				Count	=	1,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"lau-118a",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.17,	0},
						ShapeName	=	"AGM-45",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{ee368869-c35a-486a-afe7-284beb7c5d52}",
				Picture	=	"agm114.png",
				displayName	=	_("AGM-114K"),
				Weight	=	65,
				attribute	=	{4,	4,	8,	59},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AGM114",
					}, 
				}, -- end of Elements
			},
			{
				NatoName	=	"AT-6",
				CLSID	=	"{57232979-8B0F-4db7-8D9A-55197E06B0F5}",
				Picture	=	"apu8.png",
				wsTypeOfWeapon	=	{4,	4,	8,	48},
				displayName	=	_("9M114 Shturm-V x 8"),
				attribute	=	{4,	4,	32,	113},
				Cx_pil	=	0.002,
				Weight	=	300,
				Count	=	8,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"9K114_Shturm",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"BGM-109B",
				Elements	=	{},
				attribute	=	{4,	4,	11,	125,	"Cruise missiles"},
				displayName	=	_("BGM-109B"),
			},
		}, -- end of Launchers
	}, 
	[CAT_ROCKETS]	=	
	{
		CLSID	=	"{4C8373AA-83C3-44d1-8C20-35E1C5F850F1}",
		Name	=	"ROCKETS",
		DisplayName	=	_("ROCKETS"),
		Launchers	=	
		{
			{
				CLSID	=	"{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}",
				Picture	=	"rus_UB-32_S-5KO.png",
                PictureBlendColor = "0xffffffff",
				Cx_pil	=	0.00196533203125,
				displayName	=	_("UB-32A - 32 S-5KO"),
				Count	=	32,
				Elements	=	RocketContainer("UB-32M1"),
				Weight	=	275,
				wsTypeOfWeapon	=	{4,	7,	33,	31},
				attribute	=	{4,	7,	32,	2},
			}, 
			{
				CLSID	=	"{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}",
				Picture	=	"rus_B-8M1_S-8KOM.png",
                PictureBlendColor = "0xffffffff",
				Cx_pil	=	0.00146484375,
				displayName	=	_("B-8M1 - 20 S-8KOM"),
				Count	=	20,
				Elements	=	RocketContainer("B-20"),
				Weight	=	137.5 + 20 * 11.3,
				wsTypeOfWeapon	=	{4,	7,	33,	32},
				attribute	=	{4,	7,	32,	6},
			}, 
			{
				CLSID	=	"{FC56DF80-9B09-44C5-8976-DCFAFF219062}",
				Picture	=	"rus_B-13L_S-13OF.png",
                PictureBlendColor = "0xffffffff",
				Cx_pil	=	0.00159912109375,
				displayName	=	_("B-13L - 5 S-13 OF"),
				Count	=	5,
				Elements	=	RocketContainer("UB-13"),
				Weight	=	510,
				wsTypeOfWeapon	=	{4,	7,	33,	33},
				attribute		=	{4,	7,	32,	1},
			}, 
			{
				CLSID	=	"{1FA14DEA-8CDB-45AD-88A8-EC068DF1E65A}",
				Picture	=	"RBK250.png",
				displayName	=	_("S-24B"),
				Weight	=	235,
				attribute	=	{4,	7,	33,	34},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	-0.14,	0},
						ShapeName	=	"C-24",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}",
				Picture	=	"RBK250.png",
				wsTypeOfWeapon	=	{4,	7,	33,	34},
				displayName	=	_("S-24B"),
				attribute	=	{4,	4,	32,	101},
				Cx_pil		=	0.001,
				Weight		=	295,
				Count		=	1,
				Elements 	=	{
					{	
						ShapeName	=	"APU-7", -- From MiG-21 folder 
						IsAdapter	= true
					}, 
					{	
						ShapeName	=	"C-24",
						Position	=	{0.37,-0.24,0}
					}
				},
			}, 
			{
				CLSID			=	"{A0648264-4BC0-4EE8-A543-D119F6BA4257}",
				Picture			=	"S25.png",
				Cx_pil			=	0.001708984375,
				displayName		=	_("S-25 OFM"),
				Count			=	1,
				Weight			=	495,
				attribute		=	{4,	7,	32,	7},
				wsTypeOfWeapon	=	{4,	7,	33,	35},
				Elements	=	
				{
					[1]	=	
					{
						ShapeName	=	"C-25PU",
						DrawArgs	=	{{3,	0.5}},
					}, 
					[2]	=	
					{
						DrawArgs		= {{2,	1}}, -- end of DrawArgs
						ShapeName		= "c-25",
						Position		= {-0.129395, -0.247116,0},		
						connector_name  = "tube_1",
					}, 
				}, -- end of Elements
			},		
			{
				CLSID	=	"{F3EFE0AB-E91A-42D8-9CA2-B63C91ED570A}",
				Picture	=	"LAU10.png",
				Cx_pil	=	0.001708984375,
				displayName	=	_("LAU-10 - 4 ZUNI MK 71"),
				Count	=	4,
				Weight	=	440,
				wsTypeOfWeapon	=	{4,	7,	33,	37},
				attribute	=	{4,	7,	32,	8},
				Elements    = {
					{ ShapeName = "LAU-10" , IsAdapter = true},
					--rockets itself 
					{ ShapeName = "zuni", connector_name = "tube_01"},
					{ ShapeName = "zuni", connector_name = "tube_02"},
					{ ShapeName = "zuni", connector_name = "tube_03"},
					{ ShapeName = "zuni", connector_name = "tube_04"},
				}
			}, 
			{
				CLSID	=	"{FD90A1DC-9147-49FA-BF56-CB83EF0BD32B}",
				Picture	=	"LAU61.png",
				Cx_pil	=	0.001708984375,
				displayName	=	_("LAU-61 - 19 2.75' rockets MK151 HE"),
				Count	=	19,
				Elements	=	RocketContainer("LAU-61","hydra_m151he",19),
				Weight	=	92.99 + 19*10.4,
				wsTypeOfWeapon	=	{4,	7,	33,	145},
				attribute	=	{4,	7,	32,	9},
			}, 
			{
				CLSID	=	"{A76344EB-32D2-4532-8FA2-0C1BDC00747E}",
				Picture	=	"LAU61.png",
				Cx_pil	=	0.0029296875,
				displayName	=	_("LAU-61*3 - 57 2.75' rockets MK151 (HE)"),
				Count	=	57,
				Elements	=	RocketContainer("MBD-3-LAU-61"),
				Weight	=	50.80 + 3*290.59,
				wsTypeOfWeapon	=	{4,	7,	33,	145},
				attribute	=	{4,	7,	32,	33},
			}, 
			{
				CLSID	=	"{FC85D2ED-501A-48ce-9863-49D468DDD5FC}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-68 - 7 2.75' rockets MK1 (Practice)"),
				Count	=	7,
				Elements	=	RocketContainer("LAU-68","hydra_m151he", 7),
				Weight	=	41.73 + 7*9.11,
				wsTypeOfWeapon	=	{4,	7,	33,	144},
				attribute	=	{4,	7,	32,	105},
			}, 
			{
				CLSID	=	"{174C6E6D-0C3D-42ff-BCB3-0853CB371F5C}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-68 - 7 2.75' rockets MK5 (HE)"),
				Count	=	7,
				Elements	=	RocketContainer("LAU-68", "hydra_m151he", 7),
				Weight	=	41.73 +7*8.81,
				wsTypeOfWeapon	=	{4,	7,	33,	145},
				attribute	=	{4,	7,	32,	106},
			}, 
			{
				CLSID	=	"{65396399-9F5C-4ec3-A7D2-5A8F4C1D90C4}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-68 - 7 2.75' rockets MK61 (Practice)"),
				Count	=	7,
				Elements	=	RocketContainer("LAU-68","hydra_m156", 7),
				Weight	=	41.73 + 7*9.11,
				wsTypeOfWeapon	=	{4,	7,	33,	146},
				attribute	=	{4,	7,	32,	107},
			}, 
			{
				CLSID	=	"{A021F29D-18AB-4d3e-985C-FC9C60E35E9E}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-68 - 7 2.75' rockets M151 (HE)"),
				Count	=	7,
				Elements	=	RocketContainer("LAU-68","hydra_m151he", 7),
				Weight	=	41.73 + 7*10.4,
				wsTypeOfWeapon	=	{4,	7,	33,	147},
				attribute	=	{4,	7,	32,	108},
			}, 
			{
				CLSID	=	"{4F977A2A-CD25-44df-90EF-164BFA2AE72F}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-68 - 7 2.75' rockets M156(WP)"),
				Count	=	7,
				Elements	=	RocketContainer("LAU-68", "hydra_m156", 7),
				Weight	=	41.73 + 7*10.58,
				wsTypeOfWeapon	=	{4,	7,	33,	148},
				attribute		=	{4,	7,	32,	109},
			}, 
			{
				CLSID	=	"{1F7136CB-8120-4e77-B97B-945FF01FB67C}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-68 - 7 2.75' rockets WTU1B (Practice)"),
				Count	=	7,
				Elements	=	RocketContainer("LAU-68","hydra_m156", 7),
				Weight	=	41.73 + 7*10.4,
				wsTypeOfWeapon	=	{4,	7,	33,	149},
				attribute	=	{4,	7,	32,	110},
			}, 
			{
				CLSID	=	"{0877B74B-5A00-4e61-BA8A-A56450BA9E27}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-68 - 7 2.75' rockets M274 (Practice smoke)"),
				Count	=	7,
				Elements	=	RocketContainer("LAU-68","hydra_m156", 7),
				Weight	=	41.73 + 7*10.4,
				wsTypeOfWeapon	=	{4,	7,	33,	150},
				attribute	=	{4,	7,	32,	111},
			}, 
			{
				CLSID	=	"{647C5F26-BDD1-41e6-A371-8DE1E4CC0E94}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-68 - 7 2.75' rockets M257 (Parachute illumination)"),
				Count	=	7,
				Elements	=	RocketContainer("LAU-68","Hydra_M278", 7),
				Weight	=	41.73 + 7*11.2,
				wsTypeOfWeapon	=	{4,	7,	33,	151},
				attribute	=	{4,	7,	32,	112},
			}, 
			{
				CLSID	=	"{D22C2D63-E5C9-4247-94FB-5E8F3DE22B71}",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-131 - 7 2.75' rockets Mk1 (Practice)"),
				Count	=	7,
				Elements	=	RocketContainer_LAU_131,
				Weight	=	29.5 + 7*9.11,
				wsTypeOfWeapon	=	{4,	7,	33,	144},
				attribute	=	{4,	7,	32,	114},
			}, 
			{
				CLSID	=	"{319293F2-392C-4617-8315-7C88C22AF7C4}",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-131 - 7 2.75' rockets MK5 (HE)"),
				Count	=	7,
				Elements	=	RocketContainer_LAU_131,
				Weight	=	29.5 + 7*8.81,
				wsTypeOfWeapon	=	{4,	7,	33,	145},
				attribute	=	{4,	7,	32,	115},
			}, 
			{
				CLSID	=	"{1CA5E00B-D545-4ff9-9B53-5970E292F14D}",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-131 - 7 2.75' rockets MK61 (Practice)"),
				Count	=	7,
				Elements	=	RocketContainer_LAU_131,
				Weight	=	29.5 + 7*9.11,
				wsTypeOfWeapon	=	{4,	7,	33,	146},
				attribute	=	{4,	7,	32,	116},
			}, 
			{
				CLSID	=	"{69926055-0DA8-4530-9F2F-C86B157EA9F6}",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-131 - 7 2.75' rockets M151 (HE)"),
				Count	=	7,
				Elements	=	RocketContainer_LAU_131,
				Weight	=	29.5 + 7*10.4,
				wsTypeOfWeapon	=	{4,	7,	33,	147},
				attribute	=	{4,	7,	32,	117},
			}, 
			{
				CLSID	=	"{2AF2EC3F-9065-4de5-93E1-1739C9A71EF7}",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-131 - 7 2.75' rockets M156 (WP)"),
				Count	=	7,
				Elements	=	RocketContainer_LAU_131,
				Weight	=	29.5 + 7*10.58,
				wsTypeOfWeapon	=	{4,	7,	33,	148},
				attribute	=	{4,	7,	32,	118},
			},
			{
				CLSID	=	"{DDCE7D70-5313-4181-8977-F11018681662}",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-131 - 7 2.75' rockets WTU1B (Practice)"),
				Count	=	7,
				Elements	=	RocketContainer_LAU_131,
				Weight	=	29.5 + 7*10.4,
				wsTypeOfWeapon	=	{4,	7,	33,	149},
				attribute	=	{4,	7,	32,	119},
			},
			{
				CLSID	=	"{DAD45FE5-CFF0-4a2b-99D4-5D044D3BC22F}",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-131 - 7 2.75' rockets M257 (Parachute illumination)"),
				Count	=	7,
				Elements	=	RocketContainer_LAU_131,
				Weight	=	29.5 + 7*11.2,
				wsTypeOfWeapon	=	{4,	7,	33,	151},
				attribute	=	{4,	7,	32,	121},
			},
			{
				CLSID	=	"{6D6D5C07-2A90-4a68-9A74-C5D0CFFB05D9}",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-131 - 7 2.75' rockets M274 (Practice smoke)"),
				Count	=	7,
				Elements	=	RocketContainer_LAU_131,
				Weight	=	29.5 + 7*10.4,
				wsTypeOfWeapon	=	{4,	7,	33,	150},
				attribute	=	{4,	7,	32,	120},
			},
			{
				CLSID	=	"{443364AE-D557-488e-9499-45EDB3BA6730}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-68*3 - 7 2.75' rockets MK1 (Practice)"),
				wsTypeOfWeapon	=	{4,	7,	33,	144},
				Count	=	21,
				Weight	=	50.80 + 3*(41.73 +7*9.11),
				attribute	=	{4,	7,	32,	124},
				Elements	=	RocketContainer_BRU_42_LS_LAU_68,
			},
			{
				CLSID	=	"{9BC82B3D-FE70-4910-B2B7-3E54EFE73262}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-68*3 - 7 2.75' rockets MK5 (HE)"),
				wsTypeOfWeapon	=	{4,	7,	33,	145},
				Count	=	21,
				Weight	=	50.80 + 3*(41.73 +7*8.81),
				attribute	=	{4,	7,	32,	125},
				Elements	=	RocketContainer_BRU_42_LS_LAU_68,
			},
			{
				CLSID	=	"{C0FA251E-B645-4ce5-926B-F4BC20822F8B}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-68*3 - 7 2.75' rockets MK61 (Practice)"),
				wsTypeOfWeapon	=	{4,	7,	33,	146},
				Count	=	21,
				Weight	=	50.80 + 3*(41.73 +7*9.11),
				attribute	=	{4,	7,	32,	126},
				Elements	=	RocketContainer_BRU_42_LS_LAU_68,
			},
			{
				CLSID	=	"{64329ED9-B14C-4c0b-A923-A3C911DA1527}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-68*3 - 7 2.75' rockets M151 (HE)"),
				wsTypeOfWeapon	=	{4,	7,	33,	147},
				Count	=	21,
				Weight	=	50.80 + 3*(41.73 +7*10.4),
				attribute	=	{4,	7,	32,	127},
				Elements	=	RocketContainer_BRU_42_LS_LAU_68,
			},
			{
				CLSID	=	"{C2593383-3CA8-4b18-B73D-0E750BCA1C85}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-68*3 - 7 2.75' rockets M156 (WP)"),
				wsTypeOfWeapon	=	{4,	7,	33,	148},
				Count	=	21,
				Weight	=	50.80 + 3*(41.73 +7*10.58),
				attribute	=	{4,	7,	32,	128},
				Elements	=	RocketContainer_BRU_42_LS_LAU_68,
			},
			{
				CLSID	=	"{A1853B38-2160-4ffe-B7E9-9BF81E6C3D77}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-68*3 - 7 2.75' rockets WTU1B (Practice)"),
				wsTypeOfWeapon	=	{4,	7,	33,	149},
				Count	=	21,
				Weight	=	50.80 + 3*(41.73 +7*10.4),
				attribute	=	{4,	7,	32,	129},
				Elements	=	RocketContainer_BRU_42_LS_LAU_68,
			},
			{
				CLSID	=	"{4C044B08-886B-46c8-9B1F-AB05B3ED9C1D}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-68*3 - 7 2.75' rockets M274 (Practice smoke)"),
				wsTypeOfWeapon	=	{4,	7,	33,	150},
				Count	=	21,
				Weight	=	50.80 + 3*(41.73 +7*10.4),
				attribute	=	{4,	7,	32,	130},
				Elements	=	RocketContainer_BRU_42_LS_LAU_68,
			},
			{
				CLSID	=	"{E6966004-A525-4f47-AF94-BCFEDF8FDBDA}",
				Picture	=	"LAU68.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-68*3 - 7 2.75' rockets M257 (Parachute illumination)"),
				wsTypeOfWeapon	=	{4,	7,	33,	151},
				Count	=	21,
				Weight	=	50.80 + 3*(41.73 +7*11.2),
				attribute	=	{4,	7,	32,	131},
				Elements	=	RocketContainer_BRU_42_LS_LAU_68,
			},
			{
				CLSID	=	"LAU_131x3_HYDRA_70_MK1",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-131*3 - 7 2.75' rockets MK1 (Practice)"),
				wsTypeOfWeapon	=	{4,	7,	33,	144},
				Count	=	21,
				Weight	=	50.80 + 3*(29.5 +7*9.11),
				attribute	=	{4,	7,	32,	133},
				Elements	=	RocketContainer_BRU_42_LS_LAU_131,
			},
			{
				CLSID	=	"LAU_131x3_HYDRA_70_MK5",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-131*3 - 7 2.75' rockets MK5 (HE)"),
				wsTypeOfWeapon	=	{4,	7,	33,	145},
				Count	=	21,
				Weight	=	50.80 + 3*(29.5 +7*8.81),
				attribute	=	{4,	7,	32,	134},
				Elements	=	RocketContainer_BRU_42_LS_LAU_131,
			},
			{
				CLSID	=	"LAU_131x3_HYDRA_70_MK61",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-131*3 - 7 2.75' rockets MK61 (Practice)"),
				wsTypeOfWeapon	=	{4,	7,	33,	146},
				Count	=	21,
				Weight	=	50.80 + 3*(29.5 +7*9.11),
				attribute	=	{4,	7,	32,	135},
				Elements	=	RocketContainer_BRU_42_LS_LAU_131,
			},
			{
				CLSID	=	"LAU_131x3_HYDRA_70_M151",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-131*3 - 7 2.75' rockets M151 (HE)"),
				wsTypeOfWeapon	=	{4,	7,	33,	147},
				Count	=	21,
				Weight	=	50.80 + 3*(29.5 +7*10.4),
				attribute	=	{4,	7,	32,	136},
				Elements	=	RocketContainer_BRU_42_LS_LAU_131,
			},
			{
				CLSID	=	"LAU_131x3_HYDRA_70_M156",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-131*3 - 7 2.75' rockets M156 (WP)"),
				wsTypeOfWeapon	=	{4,	7,	33,	148},
				Count	=	21,
				Weight	=	50.80 + 3*(29.5 +7*10.58),
				attribute	=	{4,	7,	32,	137},
				Elements	=	RocketContainer_BRU_42_LS_LAU_131,
			},
			{
				CLSID	=	"LAU_131x3_HYDRA_70_WTU1B",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-131*3 - 7 2.75' rockets WTU1B (Practice)"),
				wsTypeOfWeapon	=	{4,	7,	33,	149},
				Count	=	21,
				Weight	=	50.80 + 3*(29.5 +7*10.4),
				attribute	=	{4,	7,	32,	138},
				Elements	=	RocketContainer_BRU_42_LS_LAU_131,
			},
			{
				CLSID	=	"LAU_131x3_HYDRA_70_M274",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-131*3 - 7 2.75' rockets M274 (Practice Smoke)"),
				wsTypeOfWeapon	=	{4,	7,	33,	150},
				Count	=	21,
				Weight	=	50.80 + 3*(29.5 +7*10.4),
				attribute	=	{4,	7,	32,	139},
				Elements	=	RocketContainer_BRU_42_LS_LAU_131,
			},
			{
				CLSID	=	"LAU_131x3_HYDRA_70_M257",
				Picture	=	"LAU131.png",
				Cx_pil	=	0.00244140625,
				displayName	=	_("LAU-131*3 - 7 2.75' rockets M257 (Parachute illumination)"),
				wsTypeOfWeapon	=	{4,	7,	33,	151},
				Count	=	21,
				Weight	=	50.80 + 3*(29.5 +7*11.2),
				attribute	=	{4,	7,	32,	140},
				Elements	=	RocketContainer_BRU_42_LS_LAU_131,
			},
			{
				CLSID	=	"{3DFB7320-AB0E-11d7-9897-000476191836}",
				Picture	=	"rus_B-8M1_S-8TsM.png",
                PictureBlendColor = "0xffffffff",
				Cx_pil	=	0.00146484375,
				displayName	=	_("B-8M1 - 20 S-8TsM"),
				Count	=	20,
				Elements	=	RocketContainer("B-20"),
				Weight		=	137.5 + 20 * 11.1,
				wsTypeOfWeapon	=	{4,	7,	33,	30},
				attribute	=	{4,	7,	32,	68},
			},
			{
				CLSID	=	"B-8M1 - 20 S-8OFP2",
				Picture	=	"rus_B-8M1_S-8OFP2.png",
                PictureBlendColor = "0xffffffff",
				Cx_pil	=	0.00213134765625,
				displayName	=	_("B-8M1 - 20 S-8OFP2"),
				Count	=	20,
				Elements	=	RocketContainer("B-20"),
				Weight	=	137.5 + 20 * 16.7,
				wsTypeOfWeapon	=	{4,	7,	33,	155},
				attribute	=	{4,	7,	32,	151},
			},
			{
				CLSID	=	"{3DFB7321-AB0E-11d7-9897-000476191836}",
				Picture	=	"LAU61.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("LAU-61 - 19 2.75' rockets MK156 WP"),
				Count	=	19,
				Elements	=	RocketContainer("LAU-61","hydra_m156",19),
				Weight	=	92.99 + 19*10.58,
				wsTypeOfWeapon	=	{4,	7,	33,	148},
				attribute	=	{4,	7,	32,	69},
			},
			{
				CLSID	=	"M260_HYDRA",
				Picture	=	"lau68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("M260 - 7 2.75' rockets MK156"),
				Count	=	7,
				Elements	=	RocketContainer("OH-58D_Gorgona"),
				Weight	=	112,
				wsTypeOfWeapon	=	{4,	7,	33,	145},
				attribute	=	{4,	7,	32,	144},
			},
			{
				CLSID	=	"M260_HYDRA_WP",
				Picture	=	"lau68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("M260 - 7 2.75' rockets MK156 WP"),
				Count	=	7,
				Elements	=	RocketContainer("OH-58D_Gorgona"),
				Weight	=	112,
				wsTypeOfWeapon	=	{4,	7,	33,	148},
				attribute	=	{4,	7,	32,	146},
			},
			{
				CLSID	=	"{6A4B9E69-64FE-439a-9163-3A87FB6A4D81}",
				Picture	=	"rus_B-8V20A_S-8KOM.png",
                PictureBlendColor = "0xffffffff",
				Cx_pil	=	0.00146484375,
				displayName	=	_("B-8V20A - 20 S-8KOM"),
				Count	=	20,
				Elements	=	RocketContainer("B-8V20A"),
				Weight	=	123 + 20 * 11.3,
				wsTypeOfWeapon	=	{4,	7,	33,	32},
				attribute	=	{4,	7,	32,	98},
			},
			{
				CLSID	=	"B_8V20A_CM",
				Picture	=	"rus_B-8V20A_S-8TsM.png",
                PictureBlendColor = "0xffffffff",
				Cx_pil	=	0.00213134765625,
				displayName	=	_("B-8V20A - 20 S-8TsM"),
				Count	=	20,
				Elements	=	RocketContainer("B-8V20A"),
				Weight	=	123 + 20 * 11.1,
				wsTypeOfWeapon	=	{4,	7,	33,	30},
				attribute	=	{4,	7,	32,	148},
			},
			{
				CLSID	=	"B_8V20A_OFP2",
				Picture	=	"rus_B-8V20A_S-8OFP2.png",
                PictureBlendColor = "0xffffffff",
				Cx_pil	=	0.00213134765625,
				displayName	=	_("B-8V20A - 20 S-8OFP2"),
				Count	=	20,
				Elements	=	RocketContainer("B-8V20A"),
				Weight	=	123 + 20 * 16.7,
				wsTypeOfWeapon	=	{4,	7,	33,	155},
				attribute	=	{4,	7,	32,	149},
			},
			{
				CLSID	=	"B_8V20A_OM",
				Picture	=	"rus_B-8V20A_S-8OM.png",
                PictureBlendColor = "0xffffffff",
				Cx_pil	=	0.00213134765625,
				displayName	=	_("B-8V20A - 20 S-8OM"),
				Count	=	20,
				Elements	=	RocketContainer("B-8V20A"),
				Weight	=	123 + 20 * 12.1,
				wsTypeOfWeapon	=	{4,	7,	33,	158},
				attribute	=	{4,	7,	32,	150},
			},
			{
				CLSID	=	"XM158_MK1",
				Picture	=	"lau68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("XM158 - 7 2.75' rockets MK1 Practice"),
				Count	=	7,
				Elements	=	RocketContainer("XM158"),
				Weight	=	112,
				wsTypeOfWeapon	=	{4,	7,	33,	144},
				attribute	=	{4,	7,	32,	162},
			}, 
			{
				CLSID	=	"XM158_MK5",
				Picture	=	"lau68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("XM158 - 7 2.75' rockets MK5 HE"),
				Count	=	7,
				Elements	=	RocketContainer("XM158"),
				Weight	=	112,
				wsTypeOfWeapon	=	{4,	7,	33,	145},
				attribute	=	{4,	7,	32,	163},
			}, 
			{
				CLSID	=	"XM158_M151",
				Picture	=	"lau68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("XM158 - 7 2.75' rockets M151 HE"),
				Count	=	7,
				Elements	=	RocketContainer("XM158"),
				Weight	=	112,
				wsTypeOfWeapon	=	{4,	7,	33,	147},
				attribute	=	{4,	7,	32,	164},
			}, 
			{
				CLSID	=	"XM158_M156",
				Picture	=	"lau68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("XM158 - 7 2.75' rockets M156 WP"),
				Count	=	7,
				Elements	=	RocketContainer("XM158"),
				Weight	=	112,
				wsTypeOfWeapon	=	{4,	7,	33,	148},
				attribute	=	{4,	7,	32,	165},
			},
			{
				CLSID	=	"XM158_M274",
				Picture	=	"lau68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("XM158 - 7 2.75' rockets M274 Practice smoke"),
				Count	=	7,
				Elements	=	RocketContainer("XM158"),
				Weight	=	112,
				wsTypeOfWeapon	=	{4,	7,	33,	150},
				attribute	=	{4,	7,	32,	166},
			}, 
			{
				CLSID	=	"XM158_M257",
				Picture	=	"lau68.png",
				Cx_pil	=	0.00146484375,
				displayName	=	_("XM158 - 7 2.75' rockets M257 Parachute illumination"),
				Count	=	7,
				Elements	=	RocketContainer("XM158"),
				Weight	=	112,
				wsTypeOfWeapon	=	{4,	7,	33,	151},
				attribute	=	{4,	7,	32,	167},
			},
			{
				CLSID	=	"M261_MK151",
				Picture	=	"LAU61.png",
				Cx_pil	=	0.001708984375,
				displayName	=	_("M261 - 19 2.75' rockets MK151 HE"),
				Count	=	19,
				Elements	=	RocketContainer("M261"),
				Weight	=	234,
				wsTypeOfWeapon	=	{4,	7,	33,	147},
				attribute	=	{4,	7,	32,	168},
			}, 
			{
				CLSID	=	"M261_MK156",
				Picture	=	"LAU61.png",
				Cx_pil	=	0.001708984375,
				displayName	=	_("M261 - 19 2.75' rockets MK156 WP"),
				Count	=	19,
				Elements	=	RocketContainer("M261"),
				Weight	=	234,
				wsTypeOfWeapon	=	{4,	7,	33,	148},
				attribute	=	{4,	7,	32,	169},
			},
			lau_3("Hydra_M156",
			{
				CLSID	=	"LAU3_WP156",
				displayName	=	_("LAU-3 - 19 2.75' rockets MK156 WP"),
				Weight	=	234,
				wsTypeOfWeapon	=	{4,	7,	33,	148},
				attribute	=	{4,	7,	32,	182},
			}),
			lau_3("Hydra_TWU1B",
			{
				CLSID	=	"LAU3_WP1B",
				displayName	=	_("LAU-3 - 19 2.75' rockets WTU-1/B WP"),
				Weight	=	234,
				wsTypeOfWeapon	=	{4,	7,	33,	149},
				attribute	=	{4,	7,	32,	183},
			}),
			lau_3("Hydra_Mk61",
			{
				CLSID	=	"LAU3_WP61",
				displayName	=	_("LAU-3 - 19 2.75' rockets MK61 WP"),
				Weight	=	234,
				wsTypeOfWeapon	=	{4,	7,	33,	146},
				attribute	=	{4,	7,	32,	184},
			}),
			lau_3("Hydra_Mk5",
			{
				CLSID	=	"LAU3_HE5",
				displayName	=	_("LAU-3 - 19 2.75' rockets MK5 HEAT"),
				Weight	=	234,
				wsTypeOfWeapon	=	{4,	7,	33,	145},
				attribute	=	{4,	7,	32,	185},
			}),
			lau_3("Hydra_M151",
			{
				CLSID	=	"LAU3_HE151",
				displayName	=	_("LAU-3 - 19 2.75' rockets MK151 HE"),
				Weight	=	234,
				wsTypeOfWeapon	=	{4,	7,	33,	147},
				attribute	=	{4,	7,	32,	186},
			}),
		}, -- end of Launchers
	}, 
	[CAT_AIR_TO_AIR]	=	
	{
		CLSID	=	"{3B8A5D2A-DD92-4776-BE4A-79C3EFB360EE}",
		Name	=	"AIR-TO-AIR",
		DisplayName	=	_("AA MISSILES"),
		Launchers	=	
		{
			{
				NatoName	=	"(AA-6)",
				CLSID	=	"{4EDBA993-2E34-444C-95FB-549300BF7CAF}",
				Picture	=	"R40R.png",
				displayName	=	_("R-40R"),
				Weight	=	475,
				attribute	=	{4,	4,	7,	7},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"R-40R",
					}, 
				}, -- end of Elements
			}, 
			{
				NatoName	=	"(AA-7)",
				CLSID	=	"{6980735A-44CC-4BB9-A1B5-591532F1DC69}",
				Picture	=	"r24t.png",
				displayName	=	_("R-24T"),
				Weight	=	215,
				attribute	=	{4,	4,	7,	26},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"R-24T",
					}, 
				}, -- end of Elements
			}, 
			{
				NatoName	=	"(AA-7)",
				CLSID	=	"{CCF898C9-5BC7-49A4-9D1E-C3ED3D5166A1}",
				Picture	=	"r24r.png",
				displayName	=	_("R-24R"),
				Weight	=	215,
				attribute	=	{4,	4,	7,	9},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"R-24R",
					}, 
				}, -- end of Elements
			}, 
			-- {
				-- NatoName	=	"(AA-10)",
				-- CLSID	=	"{3331E15D-A833-4639-B9E4-A61A37DC1956}",
				-- Picture	=	"r27erem.png",
				-- displayName	=	_("R-27EA"),
				-- Weight	=	350,
				-- attribute	=	{4,	4,	7,	12},
				-- Elements	=	
				-- {
					-- [1]	=	
					-- {
						-- DrawArgs	=	
						-- {
							-- [1]	=	{1,	1},
							-- [2]	=	{2,	1},
						-- }, -- end of DrawArgs
						-- Position	=	{0,	0,	0},
						-- ShapeName	=	"R-27ER",
					-- }, 
				-- }, -- end of Elements
			-- }, 
			{
				NatoName	=	"(AA-10)",
				CLSID	=	"{9B25D316-0434-4954-868F-D51DB1A38DF0}",
				Picture	=	"r27r.png",
				displayName	=	_("R-27R"),
				Weight	=	253,
				attribute	=	{4,	4,	7,	13},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"R-27R",
					}, 
				}, -- end of Elements
			}, 
			{
				NatoName	=	"(AA-10)",
				CLSID	=	"{E8069896-8435-4B90-95C0-01A03AE6E400}",
				Picture	=	"r27erem.png",
				displayName	=	_("R-27ER"),
				Weight	=	350,
				attribute	=	{4,	4,	7,	14},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"R-27ER",
					}, 
				}, -- end of Elements
			}, 
			{
				NatoName	=	"(AA-10)",
				CLSID	=	"{88DAC840-9F75-4531-8689-B46E64E42E53}",
				Picture	=	"r27t.png",
				displayName	=	_("R-27T"),
				Weight	=	254,
				attribute	=	{4,	4,	7,	15},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"R-27T",
					}, 
				}, -- end of Elements
			}, 
			{
				NatoName	=	"(AA-10)",
				CLSID	=	"{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}",
				Picture	=	"r27et.png",
				displayName	=	_("R-27ET"),
				Weight	=	343,
				attribute	=	{4,	4,	7,	16},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"R-27ET",
					}, 
				}, -- end of Elements
			}, 
			-- {
				-- NatoName	=	"(AA-10)",
				-- CLSID	=	"{D841D0F9-5ED1-4E27-AA4B-020A492E7454}",
				-- Picture	=	"r27erem.png",
				-- displayName	=	_("R-27EM"),
				-- Weight	=	350,
				-- attribute	=	{4,	4,	7,	17},
				-- Elements	=	
				-- {
					-- [1]	=	
					-- {
						-- DrawArgs	=	
						-- {
							-- [1]	=	{1,	1},
							-- [2]	=	{2,	1},
						-- }, -- end of DrawArgs
						-- Position	=	{0,	0,	0},
						-- ShapeName	=	"R-27ER",
					-- }, 
				-- }, -- end of Elements
			-- }, 
			{
				NatoName	=	"(AA-9)",
				CLSID	=	"{F1243568-8EF0-49D4-9CB5-4DA90D92BC1D}",
				Picture	=	"r33.png",
				displayName	=	_("R-33"),
				Weight	=	490,
				attribute	=	{4,	4,	7,	11},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"R-33",
					}, 
				}, -- end of Elements
			}, 
			{
				NatoName	=	"(AA-6)",
				CLSID	=	"{5F26DBC2-FB43-4153-92DE-6BBCE26CB0FF}",
				Picture	=	"R40T.png",
				displayName	=	_("R-40T"),
				Weight	=	475,
				attribute	=	{4,	4,	7,	27},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"R-40T",
					}, 
				}, -- end of Elements
			}, 
			{
				NatoName	=	"(AA-8)",
				CLSID	=	"{682A481F-0CB5-4693-A382-D00DD4A156D7}",
				Picture	=	"r60.png",
				displayName	=	_("R-60M"),
				Weight	=	44,
				attribute	=	{4,	4,	7,	10},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"R-60",
					}, 
				}, -- end of Elements
			}, 
			{
				NatoName		=	"(AA-8)",
				CLSID			=	"{APU-60-1_R_60M}",
				Picture			=	"r60.png",
				displayName		=	_("APU-60-1 R-60M"),
				wsTypeOfWeapon	=	{4,	4,	 7,	10},
				attribute		=	{4,	4,	32,	181},
				Weight			=	32 + 44,
				Count			=	1,
				Elements		=
				{
					{
						ShapeName	=	"APU-60-1",
						IsAdapter   =    true,
					}, 
					{
						ShapeName	=	"R-60",
						Position 	=	{0.527352, -0.155526, 0}
					}, 
				}
			}, 
			{
				NatoName	=	"(AA-11)",
				CLSID	=	"{FBC29BFE-3D24-4C64-B81D-941239D12249}",
				Picture	=	"r73.png",
				displayName	=	_("R-73"),
				Weight	=	110,
				attribute	=	{4,	4,	7,	18},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"R-73",
					}, 
				}, -- end of Elements
			}, 
			{
				NatoName	=	"(AA-11)",
				CLSID	=	"{CBC29BFE-3D24-4C64-B81D-941239D12249}",
				Picture	=	"r73.png",
				wsTypeOfWeapon	=	{4,	4,	7,	18},
				displayName	=	_("R-73"),
				attribute	=	{4,	4,	32,	102},
				Cx_pil	=	0.001,
				Weight	=	110,
				Count	=	1,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"APU-73",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.178,	0},
						ShapeName	=	"R-73",
					}, 
				}, -- end of Elements
			}, 
			{
				NatoName	=	"(AA-12)",
				CLSID	=	"{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",
				Picture	=	"R77.png",
				displayName	=	_("R-77"),
				Weight	=	175,
				attribute	=	{4,	4,	7,	19},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"R-77",
					}, 
				}, -- end of Elements
			}, 
			{
				NatoName	=	"(AA-12)",
				CLSID	=	"{B4C01D60-A8A3-4237-BD72-CA7655BC0FEC}",
				Picture	=	"R77.png",
				wsTypeOfWeapon	=	{4,	4,	7,	19},
				attribute	=	{4,	4,	32,	103},
				displayName	=	_("R-77"),
				Cx_pil	=	0.001,
				Weight	=	250,
				Count	=	1,
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"APU-170",
					}, 
					[2]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	-0.224,	0},
						ShapeName	=	"R-77",
					}, 
				}, -- end of Elements
				Required	=	{"{F4920E62-A99A-11d8-9897-000476191836}",},
			}, 
			{
				CLSID	=	"{FC23864E-3B80-48E3-9C03-4DA8B1D7497B}",
				Picture	=	"r60.png",
				displayName	=	_("R.550 Magic 2"),
				Weight	=	89,
				attribute	=	{4,	4,	7,	1},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"MAGIC-R550",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{0DA03783-61E4-40B2-8FAE-6AEE0A5C5AAE}",
				Picture	=	"micair.png",
				displayName	=	_("MICA IR"),
				Weight	=	110,
				attribute	=	{4,	4,	7,	2},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"MICA-T",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{6D778860-7BB8-4ACB-9E95-BA772C6BBC2C}",
				Picture	=	"micarf.png",
				displayName	=	_("MICA RF"),
				Weight	=	110,
				attribute	=	{4,	4,	7,	3},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"MICA-R",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{FD21B13E-57F3-4C2A-9F78-C522D0B5BCE1}",
				Picture	=	"super530.png",
				displayName	=	_("Super 530D"),
				Weight	=	270,
				attribute	=	{4,	4,	7,	Super_530D},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"SUPER-530",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{8D399DDA-FF81-4F14-904D-099B34FE7918}",
				Picture	=	"us_AIM-7.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("AIM-7M"),
				Weight	=	230,
				attribute	=	{4,	4,	7,	21},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AIM-7",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{7575BA0B-7294-4844-857B-031A144B2595}",
				Picture	=	"us_AIM-54.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("AIM-54C"),
				Weight	=	463,
				attribute	=	{4,	4,	7,	23},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AIM-54",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{C8E06185-7CD6-4C90-959F-044679E90751}",
				Picture	=	"us_AIM-120B.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("AIM-120B"),
				Weight	=	157.8,
				attribute	=	{4,	4,	7,	24},
				Elements	=	
				{
					[1]	=	
					{
						DrawArgs	=	
						{
							[1]	=	{1,	1},
							[2]	=	{2,	1},
							[3]	=	{3,	0},
						}, -- end of DrawArgs
						Position	=	{0,	0,	0},
						ShapeName	=	"AIM-120B",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}",
				Picture	=	"r60.png",
				wsTypeOfWeapon	=	{4,	4,	7,	10},
				displayName	=	_("R-60M*2"),
				attribute	=	{4,	4,	32,	62},
				Cx_pil	=	0.0006,
				Count	=	2,
				Weight	=	148,
				Elements	=	APU_R_60_2(true)
			},
			{
				CLSID	=	"{275A2855-4A79-4B2D-B082-91EA2ADF4691}",
				Picture	=	"r60.png",
				wsTypeOfWeapon	=	{4,	4,	7,	10},
				displayName	=	_("R-60M*2"),
				attribute	=	{4,	4,	32,	63},
				Cx_pil	=	0.0006,
				Count	=	2,
				Weight	=	148,
				Elements=	APU_R_60_2(false)
			},
			{
				CLSID	=	"{40EF17B7-F508-45de-8566-6FFECC0C1AB8}",
				Picture	=	"us_AIM-120C.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("AIM-120C"),
				Weight	=	161.5,
				attribute	=	{4,	4,	7,	106},
				Elements	=	
				{
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"AIM-120C",
					}, 
				}, -- end of Elements
			},
		}, -- end of Launchers
	}, 
	[CAT_FUEL_TANKS]	=	
	{
		CLSID	=	"{859F6AD7-FCA4-45b8-A470-D3938EC33BFC}",
		Name	=	"FUEL TANKS",
		DisplayName	=	_("FUEL TANKS"),
		Launchers	=	
		{
			{
				CLSID	=	"{414DA830-B61A-4F9E-B71B-C2F6832E1D7A}",
				Picture	=	"PTB.png",
				Weight_Empty	=	50,
				Weight	=	1050,
				attribute	=	{1,	3,	43,	39},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"M2000-PTB",
					}, 
				}, -- end of Elements
				displayName	=	_("M2000 Fuel tank"),
				Cx_pil = 	  0.002685547,
			}, 
			{
				CLSID	=	"{EF124821-F9BB-4314-A153-E0E2FE1162C4}",
				Picture	=	"PTB.png",
				Weight_Empty	=	50,
				Weight	=	1275,
				attribute	=	{1,	3,	43,	38},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"T-PTB",
					}, 
				}, -- end of Elements
				displayName	=	_("TORNADO Fuel tank"),
				Cx_pil 		= 0.002199707,
			}, 
			{
				CLSID	=	"{0395076D-2F77-4420-9D33-087A4398130B}",
				Picture	=	"PTB.png",
				Weight_Empty	=	104,
				Weight			=   104 + 805,	-- 273 * 6.5 * 0.4536JP-4 = 6.5 LB/US GAL
				attribute		=	{1,	3,	43,	36},
				Elements		=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"PTB-275",
					}, 
				}, -- end of Elements
				displayName	=	_("F-5 275Gal Fuel tank"),
				Cx_pil 		= 0.001953125,
			}, 
			{
				CLSID	=	"{7B4B122D-C12C-4DB4-834E-4D8BB4D863A8}",
				Picture	=	"PTB.png",
				Weight_Empty	=	50,
				Weight	=	1420,
				attribute	=	{1,	3,	43,	41},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"F4-BAK-L",
					}, 
				}, -- end of Elements
				displayName	=	_("F-4 Fuel tank-W"),
				Cx_pil		= 0.002197266,
			}, 
			{
				CLSID	=	"{8B9E3FD0-F034-4A07-B6CE-C269884CC71B}",
				Picture	=	"PTB.png",
				Weight_Empty	=	50,
				Weight	=	2345,
				attribute	=	{1,	3,	43,	42},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"F4-BAK-C",
					}, 
				}, -- end of Elements
				displayName	=	_("F-4 Fuel tank-C"),
				Cx_pil 		= 0.003173828,
			}, 
			{
				CLSID	=	"{2BEC576B-CDF5-4B7F-961F-B0FA4312B841}",
				Picture	=	"PTB.png",
				Weight_Empty	=	100,
				Weight	=	100 + 1500*0.775, --1185 (old 1250),
				attribute	=	{1,	3,	43,	17},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"PTB-1500",
					}, 
				}, -- end of Elements
				displayName	=	_("Fuel tank 1400L"),
				Cx_pil 		= 0.002199707,
			}, 
			{
				CLSID	=	"{414E383A-59EB-41BC-8566-2B5E0788ED1F}",
				Picture	=	"PTB.png",
				Weight_Empty	=	84,
				Weight	=	84 + 1150*0.775, -- 991.25 (old 977),
				attribute	=	{1,	3,	43,	16},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"PTB-1150",
					}, 
				}, -- end of Elements
				displayName	=	_("Fuel tank 1150L"),
				Cx_pil 		= 0.002131348,
			}, 
			{
				CLSID	=	"{C0FF4842-FBAC-11d5-9190-00A0249B6F00}",
				Picture	=	"PTB.png",
				Weight_Empty	=	84,
				Weight	=	84 + 1150*0.775, --991.25 (old 977),
				attribute	=	{1,	3,	43,	61},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"PTB-1150-29",
					}, 
				}, -- end of Elements
				displayName	=	_("Fuel tank 1150L MiG-29"),
				Cx_pil = 	0.001479492,
			}, 
			{
				CLSID	=	"{A5BAEAB7-6FAF-4236-AF72-0FD900F493F9}",
				Picture	=	"PTB.png",
				Weight_Empty	=	140,
				Weight	=	680,
				attribute	=	{1,	3,	43,	14},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MIG-23-PTB",
					}, 
				}, -- end of Elements
				displayName	=	_("Fuel tank 800L"),
				Cx_pil 		= 0.001208496,
			}, 
			{
				CLSID	=	"{F376DBEE-4CAE-41BA-ADD9-B2910AC95DEC}",
				Picture	=	"PTB.png",
				Weight_Empty	=	215.5,
				Weight			=   215.5 + 364 * GALLON_TO_KG,
				attribute	=	{1,	3,	43,	11},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"fuel_tank_370gal",
					}, 
				}, -- end of Elements
				displayName	= _("Fuel tank 370 gal"),
				Cx_pil 		= 0.00175,
			}, 
			{
				CLSID	=	"{82364E69-5564-4043-A866-E13032926C3E}",
				Picture	=	"PTB.png",
				Weight_Empty	=	50,
				Weight			=	50 + 367 * GALLON_TO_KG,
				attribute	=	{1,	3,	43,	56},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"F-16-PTB-N2",
					}, 
				}, -- end of Elements
				displayName	=	_("Fuel tank 367 gal"),
				Cx_pil = 0.002197266,
			}, 
			{
				CLSID	=	"{8A0BE8AE-58D4-4572-9263-3144C0D06364}",
				Picture	=	"PTB.png",
				Weight_Empty	=	173.7,
				Weight			=	173.7 + 295 * GALLON_TO_KG,
				attribute	=	{1,	3,	43,	12},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"fuel_tank_300gal",
					}, 
				}, -- end of Elements
				displayName	= _("Fuel tank 300 gal"),
				Cx_pil		= 0.0009,
			}, 
			{
				CLSID	=	"{0855A3A1-FA50-4C89-BDBB-5D5360ABA071}",
				Picture	=	"PTB.png",
				Weight_Empty	=	50,
				Weight	=	4420,
				attribute	=	{1,	3,	43,	15},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MIG-25-PTB",
					}, 
				}, -- end of Elements
				displayName	=	_("Fuel tank 5000L"),
				Cx_pil = 0.002346191,
			}, 
			{
				CLSID	=	"{E1F29B21-F291-4589-9FD8-3272EEC69506}",
				Picture	=	"PTB.png",
				Weight_Empty	=	145,
				Weight			=	145 + 605 * GALLON_TO_KG,
				attribute	=	{1,	3,	43,	10},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"F15-PTB",
					}, 
				}, -- end of Elements
				displayName	=	_("Fuel tank 610 gal"),
				Cx_pil = 0.002443848,
			}, 
			{
				CLSID	=	"{7D7EC917-05F6-49D4-8045-61FC587DD019}",
				Picture	=	"PTB.png",
				Weight_Empty	=	50,
				Weight	=	2550,
				attribute	=	{1,	3,	43,	5},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"PTB-3000",
					}, 
				}, -- end of Elements
				displayName	=	_("Fuel tank 3000L"),
				Cx_pil = 0.002255859,
			}, 
			{
				CLSID	=	"{16602053-4A12-40A2-B214-AB60D481B20E}",
				Picture	=	"PTB.png",
				Weight_Empty	=	50,
				Weight	=	1700,
				attribute	=	{1,	3,	43,	53},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"PTB-2000",
					}, 
				}, -- end of Elements
				displayName	=	_("Fuel tank 2000L"),
				Cx_pil = 0.002255859,
			}, 
			{
				CLSID	=	"{E8D4652F-FD48-45B7-BA5B-2AE05BB5A9CF}",
				Picture	=	"PTB.png",
				Weight_Empty	=	140,
				Weight	=	760,
				attribute	=	{1,	3,	43,	54},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"PTB-800",
					}, 
				}, -- end of Elements
				displayName	=	_("Fuel tank 800L Wing"),
				Cx_pil = 0.001208496,
			}, 
			{
				CLSID	=	"{A504D93B-4E80-4B4F-A533-0D9B65F2C55F}",
				Picture	=	"PTB.png",
				Weight_Empty	=	50,
				Weight	=	964,
				attribute	=	{1,	3,	43,	55},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"S-3-PTB",
					}, 
				}, -- end of Elements
				displayName	=	_("Fuel tank S-3"),
				Cx_pil = 0.002197266,
			}, 
			{
				CLSID	=	"{B99EE8A8-99BC-4a8d-89AC-A26831920DCE}",
				Picture	=	"PTB.png",
				Weight_Empty	=	110,
				Weight	=	550,
				attribute	=	{1,	3,	43,	99},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"PTB-KA-50",
					}, 
				}, -- end of Elements
				displayName	=	_("Fuel tank Ka-50"),
				Cx_pil = 0.001464844,
			},
			{
				CLSID	=	"Fuel_Tank_FT600",
				Picture	=	"PTB.png",
				Weight_Empty	=	110,
				Weight	=	1925,
				attribute	=	{1,	3,	43,	103},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"FT600",
					}, 
				}, -- end of Elements
				displayName	=	_("Fuel tank FT600"),
				Cx_pil = 0.000959473,
			},
			{
				CLSID	=	"{PTB-150GAL}",
				Picture	=	"PTB2.png",
				Weight_Empty	=	67,
				Weight			=   67 + 442,	-- 150 * 6.5 * 0.4536JP-4 = 6.5 LB/US GAL
				attribute		=	{1,	3,	43,	107},
				Elements		=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"PTB-150",
					}, 
				}, -- end of Elements
				displayName	=	_("F-5 150Gal Fuel tank"),
				Cx_pil 		= 0.001953125,
			}, 

		}, -- end of Launchers
	}, 
	[CAT_PODS]	=	
	{
		CLSID	=	"{0A5EE67D-3F2B-4cd3-8A15-26211CF19737}",
		Name	=	"PODS",
		DisplayName	=	_("PODS"),
		Launchers	=	
		{
			{
				CLSID	=	"{6D21ECEA-F85B-4E8D-9D51-31DC9B8AA4EF}",
				Picture	=	"ALQ131.png",
				displayName	=	_("ALQ-131"),
				Weight	=	305,
				Cx_pil	=	0.00083740234375,
				attribute	=	{4,	15,	45,	25},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"ALQ-131",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"ALQ_184",
				Picture	=	"ALQ184.png",
				displayName	=	_("ALQ-184"),
				Weight	=	215,
				Cx_pil	=	0.00070256637315,
				attribute	=	{4,	15,	45,	142},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"ALQ-184",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{F75187EF-1D9E-4DA9-84B4-1A1A14A3973A}",
				Picture	=	"SPS141.png",
				displayName	=	_("SPS-141"),
				Weight	=	150,
				Cx_pil	=	0.000244140625,
				attribute	=	{4,	15,	45,	30},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"SPS-141",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{44EE8698-89F9-48EE-AF36-5FD31896A82F}",
				Picture	=	"L005.png",
				displayName	=	_("L005 Sorbtsiya ECM pod (left)"),
				Cx_pil	=	0.000244140625,
				Weight	=	150,
				attribute	=	{4,	15,	45,	29},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"SORBCIJA_L",
					}, 
				}, -- end of Elements
				Required	=	{"{44EE8698-89F9-48EE-AF36-5FD31896A82A}",},
			}, 
			{
				CLSID	=	"{44EE8698-89F9-48EE-AF36-5FD31896A82A}",
				Picture	=	"L005.png",
				displayName	=	_("L005 Sorbtsiya ECM pod (right)"),
				Cx_pil	=	0.000244140625,
				Weight	=	150,
				attribute	=	{4,	15,	45,	173},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"SORBCIJA_R",
					}, 
				}, -- end of Elements
				Required	=	{"{44EE8698-89F9-48EE-AF36-5FD31896A82F}",},
			}, 
			{
				CLSID	=	"{44EE8698-89F9-48EE-AF36-5FD31896A82D}",
				Picture	=	"MPS410.png",
				displayName	=	_("MPS-410"),
				Cx_pil	=	0.000244140625,
				Weight	=	150,
				attribute	=	{4,	15,	45,	94},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MPS-410",
					}, 
				}, -- end of Elements
				Required	=	{"{44EE8698-89F9-48EE-AF36-5FD31896A82C}",},
			}, 
			{
				CLSID	=	"{44EE8698-89F9-48EE-AF36-5FD31896A82C}",
				Picture	=	"MPS410.png",
				displayName	=	_("MPS-410"),
				Cx_pil	=	0.000244140625,
				Weight	=	150,
				attribute	=	{4,	15,	45,	94},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MPS-410",
					}, 
				}, -- end of Elements
				Required	=	{"{44EE8698-89F9-48EE-AF36-5FD31896A82D}",},
			}, 
			{
				CLSID	=	"{CAAC1CFD-6745-416B-AFA4-CB57414856D0}",
				Picture	=	"Lantirn.png",
				displayName	=	_("Lantirn F-16"),
				Weight	=	445,
				Cx_pil	=	0.000244140625,
				attribute	=	{4,	15,	44,	26},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"LANTIRN",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{D1744B93-2A8A-4C4D-B004-7A09CD8C8F3F}",
				Picture	=	"Lantirn.png",
				displayName	=	_("Lantirn Target Pod"),
				Weight	=	200,
				Cx_pil	=	0.000244140625,
				attribute	=	{4,	15,	44,	59},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"LANTIRN-F14-TARGET",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{199D6D51-1764-497E-9AE5-7D07C8D4D87E}",
				Picture	=	"L005.png",
				displayName	=	_("Pavetack F-111"),
				Weight	=	200,
				Cx_pil	=	0.000244140625,
				attribute	=	{4,	15,	44,	28},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"PAVETACK",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{8C3F26A1-FA0F-11d5-9190-00A0249B6F00}",
				Picture	=	"BOZ107.png",
				displayName	=	_("BOZ-107"),
				Weight	=	200,
				Cx_pil	=	0.000244140625,
				attribute	=	{4,	15,	48,	58},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"BOZ-100",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{8C3F26A2-FA0F-11d5-9190-00A0249B6F00}",
				Picture	=	"skyshadow.png",
				displayName	=	_("Sky-Shadow ECM Pod"),
				Weight	=	200,
				Cx_pil	=	0.000244140625,
				attribute	=	{4,	15,	45,	37},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"SKY_SHADOW",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{B1EF6B0E-3D91-4047-A7A5-A99E7D8B4A8B}",
				Picture	=	"Mercury.png",
				displayName	=	_("Mercury LLTV Pod"),
				Weight	=	230,
				Cx_pil	=	0.000244140625,
				attribute	=	{4,	15,	44,	19},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"KINGAL",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{0519A261-0AB6-11d6-9193-00A0249B6F00}",
				Picture	=	"ether.png",
				displayName	=	_("ETHER"),
				Weight	=	200,
				Cx_pil	=	0.000244140625,
				attribute	=	{4,	15,	44,	63},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"ETHER",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{0519A262-0AB6-11d6-9193-00A0249B6F00}",
				Picture	=	"L005.png",
				displayName	=	_("Tangazh ELINT pod"),
				Weight	=	200,
				Cx_pil	=	0.000244140625,
				attribute	=	{4,	15,	44,	62},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"TANGAZH",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{0519A263-0AB6-11d6-9193-00A0249B6F00}",
				Picture	=	"Shpil.png",
				displayName	=	_("Shpil-2M Laser Intelligence Pod"),
				Weight	=	200,
				Cx_pil	=	0.000244140625,
				attribute	=	{4,	15,	44,	64},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"SHPIL",
					}, 
				}, -- end of Elements
			}, 
			{
				CLSID	=	"{0519A264-0AB6-11d6-9193-00A0249B6F00}",
				Picture	=	"L081.png",
				displayName	=	_("L-081 Fantasmagoria ELINT pod"),
				Weight	=	300,
				Cx_pil	=	0.00143798828125,
				attribute	=	{4,	15,	44,	65},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"Fantasm",
					}, 
				}, -- end of Elements
			}, 
			smoke_generator_R73 ({CLSID   	=	"{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}",attribute	=	{4,	15,	50,	66}},smokes["red"]),
			smoke_generator_R73 ({CLSID   	=	"{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}",attribute	=	{4,	15,	50,	82}},smokes["green"]),
			smoke_generator_R73 ({CLSID   	=	"{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}",attribute	=	{4,	15,	50,	83}},smokes["blue"]),
			smoke_generator_R73 ({CLSID   	=	"{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}",attribute	=	{4,	15,	50,	84}},smokes["white"]),
			smoke_generator_R73 ({CLSID   	=	"{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}",attribute	=	{4,	15,	50,	85}},smokes["yellow"]),
			smoke_generator_R73 ({CLSID   	=	"{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}",attribute	=	{4,	15,	50,	86}},smokes["orange"]), 
			
			smokewinder			({CLSID   	=	"{A4BCC903-06C8-47bb-9937-A30FEDB4E741}",attribute	=	{4,	15,	50,	67}},smokes["red"]),
			smokewinder			({CLSID   	=	"{A4BCC903-06C8-47bb-9937-A30FEDB4E742}",attribute	=	{4,	15,	50,	87}},smokes["green"]),
			smokewinder			({CLSID   	=	"{A4BCC903-06C8-47bb-9937-A30FEDB4E743}",attribute	=	{4,	15,	50,	88}},smokes["blue"]),
			smokewinder			({CLSID   	=	"{A4BCC903-06C8-47bb-9937-A30FEDB4E744}",attribute	=	{4,	15,	50,	89}},smokes["white"]),
			smokewinder			({CLSID   	=	"{A4BCC903-06C8-47bb-9937-A30FEDB4E745}",attribute	=	{4,	15,	50,	90}},smokes["yellow"]),
			smokewinder			({CLSID   	=	"{A4BCC903-06C8-47bb-9937-A30FEDB4E746}",attribute	=	{4,	15,	50,	91}},smokes["orange"]), 
			
			smoke_without_mass({CLSID = "{INV-SMOKE-RED}"		,attribute	=	{4,	15,	50,	66}},smokes["red"]),
			smoke_without_mass({CLSID = "{INV-SMOKE-GREEN}"		,attribute	=	{4,	15,	50,	82}},smokes["green"]),
			smoke_without_mass({CLSID = "{INV-SMOKE-BLUE}"		,attribute	=	{4,	15,	50,	83}},smokes["blue"]),
			smoke_without_mass({CLSID = "{INV-SMOKE-WHITE}"		,attribute	=	{4,	15,	50,	84}},smokes["white"]),
			smoke_without_mass({CLSID = "{INV-SMOKE-YELLOW}"	,attribute	=	{4,	15,	50,	85}},smokes["yellow"]),
			smoke_without_mass({CLSID = "{INV-SMOKE-ORANGE}"	,attribute	=	{4,	15,	50,	86}},smokes["orange"]), 

			{
				CLSID	=	"{6C0D552F-570B-42ff-9F6D-F10D9C1D4E1C}",
				Picture	=	"ANAAS38.png",
				displayName	=	_("AN/AAS-38 FLIR"),
				Weight	=	200,
				Cx_pil	=	0.000244140625,
				attribute	=	{4,	15,	44,	74},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"F-18-FLIR-POD",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{1C2B16EB-8EB0-43de-8788-8EBB2D70B8BC}",
				Picture	=	"ANASQ173.png",
				displayName	=	_("AN/ASQ-173 LST/SCAM"),
				Weight	=	250,
				Cx_pil	=	0.000244140625,
				attribute	=	{4,	15,	44,	78},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"F-18-LDT-POD",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{F4920E62-A99A-11d8-9897-000476191836}",
				Picture	=	"kopyo.png",
				displayName	=	_("Kopyo radar pod"),
				Weight	=	115,
				Cx_pil	=	0,
				attribute	=	{4,	15,	44,	95},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"Spear",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{A111396E-D3E8-4b9c-8AC9-2432489304D5}",
				Picture	=	"AAQ-28.png",
				displayName	=	_("AN/AAQ-28 LITENING"),
				Weight	=	300,
				Cx_pil	=	0.000244 * 0.8,
				attribute	=	{4,	15,	44,	101},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"AAQ-28_LITENING",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{05544F1A-C39C-466b-BC37-5BD1D52E57BB}",
				Picture	=	"rus_UPK-23-250.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("UPK-23-250"),
				Weight	=	218,
				Weight_Empty	=	78, --c пустыми патронными ящиками
				Cx_pil	=	0.001220703125,
				attribute	   = {4,	15,	46,	20},
				wsTypeOfWeapon = {4,wsType_Shell,wsType_Shell_A,wsType_Shell_SPPU},

				kind_of_shipping = 2,--SOLID_MUNITION
				Elements		 =	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"UPK-23-250",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{E92CBFE5-C153-11d8-9897-000476191836}",
				Picture	=	"SPPU22.png",
				displayName	=	_("SPPU-22-1 Gun pod"),
				Weight	=	290,
				Cx_pil	=	0.001220703125,
				attribute		=	{4,	15,	46,	18},
				wsTypeOfWeapon	=	{4,	wsType_Shell,wsType_Shell,wsType_Shell_SPPU},

				kind_of_shipping = 2,--SOLID_MUNITION
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"SPPU-22",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"oh-58-brauning",
				Picture	=	"oh58brau.png",
				displayName	=	_("OH-58D Brauning"),
				Weight	=	290,
				Cx_pil	=	0.001220703125,
				attribute	=	{4,	15,	46,	145},

				kind_of_shipping = 2,--SOLID_MUNITION
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"OH-58D_Browning",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"MXU-648-TP",
				Picture	=	"mxu-468.png",
				displayName	=	_("MXU-648 Travel Pod"),
				Weight	=	300,
				Cx_pil	=	0,
				attribute	=	{4,	15,	47,	104},
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"MXU-648",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"BRU-42_LS",
				Picture	=	"BRU-42LS.png",
				wsTypeOfWeapon	=	{0,	0,	0,	0},
				displayName	=	_("BRU-42LS"),
				attribute	=	{4,	5,	32,	132},
				Cx_pil	=	0.002,
				Weight	=	65,
				Count	=	0,
				Elements	=	bru_42_ls()
			},
			{
				CLSID	=	"LAU-105",
				Picture	=	"lau-105.png",
				wsTypeOfWeapon	=	{0,	0,	0,	0},
				displayName	=	_("LAU-105"),
				attribute	=	{4,	4,	32,	133},
				Cx_pil	=	0.002,
				Weight	=	18,
				Count	=	0,
				Elements = {{	ShapeName	=	"lau-105" }}
			},
			{
				CLSID	=	"M134_L",
				Picture	=	"M134.png",
				displayName	=	_("M134 MiniGun Left"),
				Weight			=	146.4,
				Weight_Empty	=	51.68, --c пустыми патронными ящиками под 3200 шт
				Cx_pil	=	0.001220703125,
				attribute	=	{4,	15,	46,	M134_L},
				wsTypeOfWeapon = {4,wsType_Shell,wsType_Shell_A,M134},

				kind_of_shipping = 2,--SOLID_MUNITION
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"AB-212_m134_l",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"M134_R",
				Picture	=	"M134.png",
				displayName	=	_("M134 MiniGun Right"),
				Weight			=	146.4,
				Weight_Empty	=	51.68, --c пустыми патронными ящиками под 3200 шт
				Cx_pil	=	0.001220703125,
				attribute	=	{4,	15,	46,	M134_R},				   --weapon_type
				wsTypeOfWeapon = {4,wsType_Shell,wsType_Shell_A,M134}, --container_type
		
				kind_of_shipping = 2,--SOLID_MUNITION
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"AB-212_m134_r",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"GUV_VOG",
				Picture	=	"rus_9-A-669.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("GUV AP-30"),
				Weight	=	274,
				Weight_Empty	= 140 ,
				Cx_pil	=	0.001220703125,
				attribute	=	{4,	15,	46,	GUV_VOG},				   --weapon_type
				wsTypeOfWeapon = {4,wsType_Shell,wsType_Shell_A, AP_30_PLAMYA}, --container_type
		
				kind_of_shipping = 2,--SOLID_MUNITION
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"GUV-7800_G",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"GUV_YakB_GSHP",
				Picture	=	"rus_9-A-662.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("GUV YakB GSHP"),
				Weight	=	452,
				Weight_Empty	= 140 ,
				Cx_pil	=	0.001220703125,
				attribute	=	{4,	15,	46,	GUV_YakB_GSHP},				   --weapon_type
				wsTypeOfWeapon = {4,wsType_Shell,wsType_Shell_A, GUV_YakB_GSHP}, --container_type
		
				kind_of_shipping = 2,--SOLID_MUNITION
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"GUV-7800_M",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"{HVAR_SMOKE_GENERATOR}",
				Picture		=	"HVAR_smoke.png",
				displayName	=	_("HVAR Smoke Generator"),
				Cx_pil		=	0.0004,
				Weight		=	64,
				attribute	=	{4,	15,	50,	172},
				Smoke		= {
								alpha = 180,
								r  = 245,
								g  = 40,
								b  = 40,
								dx = -2.0,
								dy = 0
				}, -- red HVAR
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"hvar_SmokеGenerator",
					}, 
				}, -- end of Elements
			},
			-----
			{
				CLSID	=	"M134_SIDE_L",
				Picture	=	"M134.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("M134 MiniGun Left Door"),
				Weight			=	270.4,
				Weight_Empty	=	175.68, -- вес с пулемётчиком и пустыми коробками на 3200 патронов
				Cx_pil	=	0.001220703125,
				attribute	=	{4,	15,	46,	M134_SIDE_L},
				wsTypeOfWeapon = {4,wsType_Shell,wsType_Shell_A,M134},

				kind_of_shipping = 2,--SOLID_MUNITION
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"ab-212_m134gunner_l",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"M134_SIDE_R",
				Picture	=	"M134.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("M134 MiniGun Right Door"),
				Weight			=	270.4,
				Weight_Empty	=	175.68, -- вес с пулемётчиком и пустыми коробками на 3200 патронов
				Cx_pil	=	0.001220703125,
				attribute	=	{4,	15,	46,	M134_SIDE_R},				   --weapon_type
				wsTypeOfWeapon = {4,wsType_Shell,wsType_Shell_A,M134}, --container_type
		
				kind_of_shipping = 2,--SOLID_MUNITION
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"ab-212_m134gunner_r",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"M60_SIDE_L",
				Picture	=	"M60.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("M60 Gun Left Door"),
				Weight_Empty	=	134.4,  -- вес с пулемётчиком
				Weight			=	141.4,
				Cx_pil	=	0.001220703125,
				attribute	=	{4,	15,	46,	M60_SIDE_L},
				wsTypeOfWeapon = {4,wsType_Shell,wsType_Shell_A,M60},

				kind_of_shipping = 2,--SOLID_MUNITION
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"ab-212_m60gunner_l",
					}, 
				}, -- end of Elements
			},
			{
				CLSID	=	"M60_SIDE_R",
				Picture	=	"M60.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("M60 Gun Right Door"),
				Weight_Empty	=	134.4,  -- вес с пулемётчиком
				Weight			=	141.4,
				Cx_pil	=	0.001220703125,
				attribute	=	{4,	15,	46,	M60_SIDE_R},				   --weapon_type
				wsTypeOfWeapon = {4,wsType_Shell,wsType_Shell_A,M60}, --container_type
		
				kind_of_shipping = 2,--SOLID_MUNITION
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"ab-212_m60gunner_r",
					}, 
				}, -- end of Elements
			},
			
			{
				CLSID	=	"KORD_12_7",
				Picture	=	"M60.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("KORD 12.7 Gun"),
				Weight	=	95.0,  -- вес с пулемётчиком
				Cx_pil	=	0.001220703125,
				attribute	=	{4,	15,	46,	KORD_12_7},
				wsTypeOfWeapon = {4,wsType_Shell,wsType_Shell_A,KORD_12_7},

				kind_of_shipping = 2,--SOLID_MUNITION
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"mi-8_gunner",
					}, 
				}, -- end of Elements
			},
			
			{
				CLSID	=	"PKT_7_62",
				Picture	=	"M60.png",
                PictureBlendColor = "0xffffffff",
				displayName	=	_("PKT 7.62 Gun"),
				Weight	=	90.0,  -- вес с пулемётчиком
				Cx_pil	=	0.001220703125,
				attribute	=	{4,	15,	46,	PKT_7_62},
				wsTypeOfWeapon = {4,wsType_Shell,wsType_Shell_A,PKT_7_62},

				kind_of_shipping = 2,--SOLID_MUNITION
				Elements	=	
				{
					[1]	=	
					{
						Position	=	{0,	0,	0},
						ShapeName	=	"mi-8_gunner_b",
					}, 
				}, -- end of Elements
			},
		}, -- end of Launchers
	}, 
	[CAT_SERVICE] = 
	{
		Name		=	  "CLEAN",	
		DisplayName	=	_("REMOVE PYLON"),
		Launchers 	=
		{
			{
				CLSID			=	"<CLEAN>",
				Picture			=	"Weaponx.png",
				PictureBlendColor = rgbToHexColor(160, 180, 205, 255),
				displayName		=	_('Clean Wing'),
				Weight_Empty	=	0, 
				Weight			=	0,
				Cx_pil			=	0,
				attribute		=	{0,0,0,0},
			}, 
			{
				CLSID			=	"<CLEAN-200.5>",
				Picture			=	"Weaponx.png",
				PictureBlendColor = rgbToHexColor(160, 180, 205, 255),
				displayName		=	_('Clean Wing'),
				Weight_Empty	=	0,
				Weight			=	-200.5,
				Cx_pil			=	0,
				attribute		=	{0,0,0,0},
			},
		}
	},
	[CAT_TORPEDOES] ={
		CLSID		=	"{_CAT_TORPEDOES_}",
		Name		=	 "TORPEDOES",
		DisplayName	=	_("TORPEDOES"),
		Launchers	=	{},
	},
} -- end of db.Weapons.Categories

_WEAPON_(CAT_ROCKETS,{CLSID   		= "{TWIN_S25}",
	Picture			=	"S25.png",
	attribute		=	{wsType_Weapon,	wsType_NURS,wsType_Container,181},
	wsTypeOfWeapon  =	{wsType_Weapon, wsType_NURS, wsType_Rocket   ,C_25},
	displayName		=	"2x".._("S-25 OFM"),
	Cx_pil			=	0.0004,
	Count			=	2,
	Weight			=	32+2*(370+65),
	
	JettisonSubmunitionOnly = true,
	Elements		=	{
	   {ShapeName = "su-27-twinpylon",IsAdapter = true},
	   {payload_CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",DrawArgs = {{3,0.5}}, connector_name = "S-25-L"},
	   {payload_CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}",DrawArgs = {{3,0.5}}, connector_name = "S-25-R"},
	}
})


_WEAPON_(CAT_ROCKETS,{	CLSID		=	"{HVAR}",
	Picture		=	"HVAR.png",
	attribute	=	{4,	7,	33,	HVAR},
	displayName	=  _("HVAR"),
	Cx_pil		=	0.0004,
	Weight		=	64,
	Count		=	1,
	Elements	=	{{ShapeName	=	"HVAR_rocket", LocalOffsets	=	{10,10,10 }}}
	}
)

_WEAPON_(CAT_FUEL_TANKS,{	CLSID		=	"{DT75GAL}",
	Picture			=	"us_Tank_75gal.png",
	attribute		=	{1,	3,	43,	152},
	displayName		=  _("75 US gal. Fuel Tank"),
	Cx_pil			=	0.0015,
	Weight_Empty	=	20,
	Weight			=	227.048087675,
	}
)
function HORNET_FUEL_TANK(CLSID)
_WEAPON_(CAT_FUEL_TANKS,{
		CLSID 			=	CLSID,
		Picture			=	"PTB.png",
		Weight_Empty	=	50,
		Weight			=	50 + 330 * GALLON_TO_KG,
		attribute		=	{1,	3,	43,	13},
		displayName		=	_("Fuel tank 330 gal"),
		Cx_pil 			= 	0.002685547,
	})
end

-- for A and C version different clsid to make old missions valid
HORNET_FUEL_TANK("{EFEC8200-B922-11d7-9897-000476191836}")
HORNET_FUEL_TANK("{EFEC8201-B922-11d7-9897-000476191836}")

--0018246: R-77 on all aircraft and all stations should have catapult start.
loadout_R77      	= {CLSID =	"{B4C01D60-A8A3-4237-BD72-CA7655BC0FE9}",Type = 1}
loadout_APU_170_R77 = {CLSID =	"{B4C01D60-A8A3-4237-BD72-CA7655BC0FEC}",Type = 1}

