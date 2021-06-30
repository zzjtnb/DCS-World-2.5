dofile(LockOn_Options.common_script_path.."KNEEBOARD/indicator/definitions.lua")
SetScale(FOV)

local width  	   = 1.045;
local aspect 	   = GetAspect()
local height 	   = width * GetAspect()
local back   	   = CreateElement "ceTexPoly"
back.material 	   = MakeMaterial("Bazar/Textures/AvionicsCommon/kneeboard_background.dds",{255,255,255,255})
back.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
back.indices		= {0,1,2;0,2,3}
back.tex_coords		=	{{0, 0},
						 { 1, 0},
						 { 1, 1},
						 { 0, 1}}
back.blend_mode 	=  blend_mode.IBM_ONLY_ALPHA
Add(back)


local map_set_file = get_terrain_related_data("TAD_chart_map_set_file") -- using a-10c charts by default
if map_set_file then
	SetCustomScale(GetScale())
	mount_vfs_path_to_mount_point("/textures/tad/",get_terrain_related_data("TAD_vfs_archives"))	

	local FONT_   	 = MakeFont({used_DXUnicodeFontData = "font_dejavu_lgc_sans_22"},{0,255,0,255})
	local tex_coords = {{0,1},{0,0},{1,0}, {1,1}}
	local indices    = {0,1,2;0,2,3}

	dofile(LockOn_Options.common_script_path.."tools.lua")
	use_lat_lon 	= true
	default_aspect,meters_per_lon_degree = get_lat_lon_scaling()
	
	function tad_chart(chart_id,material,lat_min,lat_max,lon_min,lon_max,chart_aspect)


	local chart		    = create_chart(chart_id,lat_min / default_aspect,lat_max / default_aspect,lon_min,lon_max)
	local k 		    = chart_aspect / default_aspect

	local sz_x =  0.5*(lat_max - lat_min) / chart_aspect
	local sz_z =  0.5*(lon_max - lon_min) * chart_aspect / default_aspect

	local	draw_lat_center = (lat_min + 0.5*(lat_max - lat_min))/default_aspect
	local	draw_lon_center = (lon_min + 0.5*(lon_max - lon_min))

	local 	element					= CreateElement "ceTexPoly"
			element.name 			= string.upper(material)
			element.primitivetype   = "triangles"
			element.material	   	= MakeMaterial("tad/"..material..'.bmp.dds',{255,255,255,255})
			element.vertices        = {{ -sz_x , -sz_z},
									   { -sz_x ,  sz_z},
									   {  sz_x ,  sz_z},
									   {  sz_x , -sz_z}}
			element.controllers		= {{"chart_position",draw_lat_center,
														 draw_lon_center,
														 GetScale()}}
			element.indices			= indices
			element.tex_coords		= tex_coords
			element.use_mipfilter 	= true
			element.h_clip_relation = h_clip_relations.COMPARE
			element.level 		    = DEFAULT_LEVEL
			Add(element)
			chart:add_element(element)
	end
    dofile(map_set_file)
else 
	local render_tv					= CreateElement "ceTexPoly"
		  render_tv.vertices		= {{-1, aspect},
		                               { 1, aspect},
									   { 1,-aspect},
									   {-1,-aspect}}
		  render_tv.indices			= {0, 1, 2, 0, 2, 3}
		  render_tv.tex_coords		= {{0,0},
									   {1,0},
									   {1,1},
									   {0,1}}
		  render_tv.material		=  MakeMaterial("mfd"..string.format("%d",GetRenderTarget()),{255,255,255,255})
		  render_tv.controllers 	= {{"to_render_target",0}}
		  render_tv.h_clip_relation = h_clip_relations.REWRITE_LEVEL
		  render_tv.level 		    = DEFAULT_LEVEL
		  render_tv.blend_mode 		= blend_mode.IBM_REGULAR_RGB_ONLY
		  Add(render_tv)
end


