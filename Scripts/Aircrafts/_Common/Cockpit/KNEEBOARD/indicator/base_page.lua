dofile(LockOn_Options.common_script_path.."KNEEBOARD/indicator/definitions.lua")

SetScale(FOV)

aspect 					= GetAspect()
render_tv				= CreateElement "ceTexPoly"
render_tv.vertices		= {{-1, aspect},
						   { 1, aspect},
						   { 1,-aspect},
						   {-1,-aspect}}
render_tv.indices			= {0, 1, 2, 0, 2, 3}
render_tv.tex_coords		= {{0,0},
						   {1,0},
						   {1,1},
						   {0,1}}
render_tv.material		= "render_target_"..string.format("%d",GetRenderTarget() + 1)
render_tv.controllers 	= {{"render_purpose",render_purpose.GENERAL,
											 render_purpose.HUD_ONLY_VIEW,
											 render_purpose.SCREENSPACE_OUTSIDE_COCKPIT}}
Add(render_tv)


local width  	   = 1;
local height 	   = width * GetAspect()
local back   	   = CreateElement "ceMeshPoly"
back.material 	   =  MakeMaterial(nil,{255,255,255,255})
back.vertices 	   = {{-width, height},
					  { width, height},
					  { width,-height},
					  {-width,-height}}
back.indices	  = {0,1,2;0,2,3}
back.level		     = DEFAULT_LEVEL
back.h_clip_relation = h_clip_relations.REWRITE_LEVEL
back.blend_mode 	 = blend_mode.IBM_NO_WRITECOLOR
Add(back)

if  LockOn_Options.screen.oculus_rift then 
	width  	   = 1.045;
	height 	   = width * GetAspect()
	local back2   	   = CreateElement "ceTexPoly"
	back2.material 	   = MakeMaterial("Bazar/Textures/AvionicsCommon/kneeboard_background.dds",{255,255,255,255})
	back2.vertices 	   = {{-width, height},
						  { width, height},
						  { width,-height},
						  {-width,-height}}
	back2.indices		= {0,1,2;0,2,3}
	back2.tex_coords	=	{{0, 0},
							 { 1, 0},
							 { 1, 1},
							 { 0, 1}}
	back2.blend_mode 	=  blend_mode.IBM_REGULAR
	Add(back2)
end
