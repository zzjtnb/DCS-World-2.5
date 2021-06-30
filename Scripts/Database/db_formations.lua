local function position(x, y, z) --position from the leader
	return { x = x, y = y, z = z }
end

local function positionRad(l, angleDeg, dh) --angle from velocity to leader
	return { x = -l * math.cos(math.rad(angleDeg)), y = dh or 0, z = -l * math.sin(math.rad(angleDeg)) }
end

--distances for variable interval formations must be given as 1.0 values

local function positions(pos1, pos2, pos3)
	return { pos1, pos2, pos3 }
end

local function ftm(ft)
	return ft * 0.3048
end

local function nmm(nm)
	return nm * 1852
end

local function scale(positions, factor)
	local result = {}
	for index, position in pairs(positions) do
		table.insert(result, { 	x = position.x * factor.x,
								y = position.y * factor.y,
								z = position.z * factor.z } )
	end
	return result
end

local function equidistantPositions(pos)
	return positions( 	pos,
						position(2 * pos.x, 2 * pos.y, 2 * pos.z),
						pos)
end

local function summ(pos1, pos2)
	return { x = pos1.x + pos2.x, y = pos1.y + pos2.y, z = pos1.z + pos2.z }
end

local function variant(name, positions)
	return { name = name, positions = positions }
end

local function formation(tbl, clsid, name, id, positions, zInverse, defaultVariantIndex)
	local res = {};
	
	res.CLSID = clsid;
	res.Name = name;
	res.WorldID = id;
	if defaultVariantIndex ~= nil then
		res.variants = positions
		res.defaultVariantIndex = defaultVariantIndex
	else
		res.positions = positions
	end
	res.zInverse = zInverse --coordinates for left-right formations MUST BE GIVEN FOR RIGHT FORMATION!!!

	table.insert(tbl, id, res);
	return res
end

local function airplaneFormation(...)
	return formation(db.Formations['plane'].list, ...)
end

local function helicopterFormation(...)
	return formation(db.Formations['helicopter'].list, ...)
end

local function bigFormation(...)
	return formation(db.Formations['big_formations'].list, ...)
end

local id = {
	NO_FORMATION	= 0,
	--airplanes
	LINE_ABREAST 	= 1,
	TRAIL			= 2,
	WEDGE			= 3,
	ECHELON_RIGHT	= 4,
	ECHELON_LEFT	= 5,
	FINGER_FOUR		= 6,
	SPREAD_FOUR		= 7,
	--helicopters
	HEL_WEDGE		= 8,
	HEL_ECHELON		= 9,
	HEL_FRONT 		= 10,
	HEL_COLUMN		= 11,	
	-- ww2 aircrafts
	WW2_BOMBER_ELEMENT = 12,
	WW2_BOMBER_ELEMENT_HEIGHT = 13,
	WW2_FIGHTER_VIC	   = 14,
	-- big formations(positions of box, groups, wings etc in big formations)
	COMBAT_BOX		   = 15,
	JAVELIN_DOWN	   = 16,
	--
	MODERN_BOMBER_ELEMENT = 17,
	MAX				= 18
}

db.Formations = {
	['plane'] = {
		list = {}
	},
	['helicopter'] = {
		list = {}
	},
	['big_formations'] = {
		list = {}
	}
}

db.FormationID = id

--airplane formations

local function makeOpenAndClose(positions, additionalVariant, closeCoeff)
	closeCoeff = closeCoeff or { x = 0.5, y = 1, z = 0.5 }
	return {
		variant(string.format('%s (%d %s x %d %s)', _("Close [Formation]"), math.abs( scale(positions, closeCoeff)[1].z) , _("m"), math.abs( scale(positions, closeCoeff)[1].x), _("m")), scale(positions, closeCoeff)),
		variant(string.format('%s (%d %s x %d %s)', _("Open [Formation]"),  math.abs( positions[1].z), 					   _("m"), math.abs( positions[1].x ), 					 _("m")), positions ),
		additionalVariant
	}
end

local function makeOpenAndCloseAndGroup(positions,groupCoeff, closeCoeff)
	closeCoeff = closeCoeff or { x = 0.5, y = 1, z = 0.5 }
	groupCoeff = groupCoeff or { x = 0.1, y = 1, z = 0.1 }	
	return {
		variant(string.format('%s (%d %s x %d %s)', _("Close [Formation]"), math.abs( scale(positions, closeCoeff)[1].z), _("m") , 	math.abs( scale(positions, closeCoeff)[1].x), _("m")), scale(positions, closeCoeff)),
		variant(string.format('%s (%d %s x %d %s)', _("Open [Formation]"), 	math.abs( positions[1].z), 					  _("m"),  	math.abs( positions[1].x ), 				  _("m")), positions ),
		variant(string.format('%s (%d %s x %d %s)', _("Group Close"), 		math.abs( scale(positions, groupCoeff)[1].z), _("m") ,	math.abs( scale(positions, groupCoeff)[1].x), _("m")), scale(positions, groupCoeff))
	}
end


airplaneFormation(	'{EA8857AA-7960-4ddd-AB2F-7FC3BFC9D71A}',
					_('Line Abreast'),
					id.LINE_ABREAST,
					makeOpenAndCloseAndGroup(equidistantPositions(position(0.0, 0.0, ftm(9000))), {x = 1, y = 1, z = 0.0145}, {x = 1, y = 1, z = 1.0 / 1.5}),
					false,
					2)

airplaneFormation(	'{1DD74E79-D83A-401c-B41F-732B472FAFE9}', 
					_('Trail'),
					id.TRAIL,
					makeOpenAndCloseAndGroup(equidistantPositions(position(-nmm(1.5), -10.0, 0)),{ x = 0.036, y = 1, z = 1.0 }),
					false,
					2)

airplaneFormation(	'{A45479A3-F6B2-461f-8DCA-33E56242EB7A}',
					_('Wedge'),
					id.WEDGE,
					makeOpenAndCloseAndGroup(positions( positionRad(ftm(4000), 60),
												position(-nmm(1.5), 0, 0),
												positionRad(ftm(4000), -60) ),{ x = 0.06, y = 1, z = 0.037 }),
					false,
					2)

local echelonLeft = equidistantPositions(positionRad(ftm(4000), 60))
								
airplaneFormation(	'{739D77A2-4B86-4642-AC78-D6CEBBE61E19}',
					_('Echelon Right'),
					id.ECHELON_RIGHT,
					makeOpenAndCloseAndGroup(scale(echelonLeft, { x = 1, y = 1, z = -1 }), { x = 0.06, y = 1, z = 0.037 }),
					false,
					2)
					
airplaneFormation(	'{E1C8D45B-AA8B-4d10-AC05-5F4B5F7B8C08}',
					_('Echelon Left'),
					id.ECHELON_LEFT,
					makeOpenAndCloseAndGroup(echelonLeft,{ x = 0.06, y = 1, z = 0.037 }),
					false,
					2)

airplaneFormation(	'{5FFFA2CB-C69B-47bf-9A1B-41FE61728B4C}',
					_('Finger Four'),
					id.FINGER_FOUR,
					makeOpenAndClose(positions( positionRad(ftm(500), -50),
												positionRad(ftm(500), 50),
												positionRad(ftm(500), 50) ), 
												variant(_('Group Close (50m x 50m)'), positions( 	positionRad(50, 45),
																						positionRad(100, -45),
																						positionRad(50, -45) ) )
									),
					false,
					2)
								
airplaneFormation(	'{48F1BD2E-C1EB-411a-97CA-9E0449F8794A}',
					_('Spread Four'),
					id.SPREAD_FOUR,
					makeOpenAndClose(positions( positionRad(ftm(500), 50),
												position(0, 0, ftm(6000)),
												positionRad(ftm(500), -50) ), 
												variant(_('Group Close (50m x 50m)'), positions( 	positionRad(50, 45),
																						position(0.0, 0.0, 200.0),
																						positionRad(50, 45) ) )
									),
					false,
					2)

airplaneFormation(	'{86D94B3A-045C-4F19-8E29-37D1F2B4B667}',
					_('ww2 Bomber Element'),
					id.WW2_BOMBER_ELEMENT,
					makeOpenAndClose(positions( position(-60,   0, -90),
												position(-60,   0,  90),
												position(-60, -10, -90))
									),
					false,
					2)
					
airplaneFormation(	'{B33DABCE-EB25-4809-95BC-E2C849983772}',
					_('ww2 Bomber Element Height Separation'),
					id.WW2_BOMBER_ELEMENT_HEIGHT,
					positions( 	position(-30, -15, -45),
								position(-30,  15,  45),
								position(-30, -30, -45)))
					
airplaneFormation(	'{3AC89AC3-743A-4C07-9E58-0DF3A009FFAD}',
					_('ww2 Fighter Vic'),
					id.WW2_FIGHTER_VIC,
					makeOpenAndClose(positions( position(-60, 0, -60),
												position(-60, 0, 60),
												position(-60, -20, 60))
									),
					false,
					2)
					
airplaneFormation(	'{86D94B3A-045C-4F19-8E29-37D1F3H4B667}',
					_('Modern Bomber Element'),
					id.MODERN_BOMBER_ELEMENT,
					makeOpenAndClose(positions( position(-200,   0, -200),
												position(-200,   0,  200),
												position(-200, -50, -200))
									),
					false,
					2)
					
--helicopter formations

helicopterFormation('{5A1F353C-B748-43fd-8103-7B289F6A2FA0}',
					_('Wedge'),
					id.HEL_WEDGE,
					positions( 	positionRad(70, 45, 5),
								positionRad(70, -45, 5),
								positionRad(70, -45, 5) ) )
						
helicopterFormation('{47EDAB16-AB34-42d2-9E8F-58BA4B001400}',
					_('Echelon'),
					id.HEL_ECHELON,
					{
						variant(_('50x70'), equidistantPositions(position(-70, 0, 50))),
						variant(_('50x300'), equidistantPositions(position(-300, 0, 50))),
						variant(_('50x600'), equidistantPositions(position(-600, 0, 50))),
					},
					true,
					2)

								
helicopterFormation('{4DB07E67-BA0D-49a0-8008-C6C0D40D15D8}',
					_('Front'),
					id.HEL_FRONT,
					{
						variant(_('interval 300'), equidistantPositions(position(-10, 0, 300))),
						variant(_('interval 600'), equidistantPositions(position(-10, 0, 600)))
					},
					true,
					1)
								
helicopterFormation('{A3CD605D-D592-4537-B32F-A769364D765F}',
					_('Column'),
					id.HEL_COLUMN,
					equidistantPositions(position(-325, 0, 0))
					)
								
-- big formations
bigFormation('{C5753845-50A1-47CE-8C21-EC810652BEA9}',
					_('Combat Box'),
					id.COMBAT_BOX,
					{
						variant(_('Pos_In_Box'), positions( variant(_('Right'),  position(-80,   50,  120)),--Above(right above)
															variant(_('Left'),   position(-80,  -25, -120)),--Low(low left)
															variant(_('Back'),   position(-160, -50,    0)))),--LowLow(low behind)
						variant(_('Pos_In_Group'), positions( variant(_('Right'),position(-250,  120,  250)),--Right
															  variant(_('Left'), position(-250, -120, -250)),--Left
															  variant(_('Back'), position(-400,  -50,    0)))),--Behind
						variant(_('Pos_In_Wing'), positions( variant(_('Right'), position(-500,    0,  550)),--Right
														     variant(_('Left'),  position(-500,    0, -550)),--Left
														     variant(_('Back'),  position(-650, -100,    0)))),--Behind
					}
					)	
					
bigFormation('{F286F6DE-3921-401B-894D-29702E585B60}',
					_('Javelin Down'),
					id.JAVELIN_DOWN,
					{						
						variant(_('Pos_In_Squad'), positions( variant(_('Left_low'),      position(-80, -50, -120)),-- normal follower - left low
															  variant(_('Right_high'),    position(-80,  50,  120)) --High Squadron - right high
															)),
						variant(_('Pos_In_Group'), positions( variant(_('High_squadron'), position(-80,   100,  120)),--Right High(High squadron)
															  variant(_('Low_squadron'),  position(-160, -100, -250))--Left Low(Low Squadron)
															 )),
						variant(_('Pos_In_Wing'), positions( 	variant(_('Second_group'),position(-2000, 300, 0)),
																variant(_('Third_group'), position(-4000, 600, 0)),
																variant(_('Last_group'),  position(-6000, 900, 0)))),
					}
					)						
								
								
db.Formations['plane'].default = id.ECHELON_RIGHT  
db.Formations['helicopter'].default = id.HEL_WEDGE
db.Formations['big_formations'].default = id.COMBAT_BOX