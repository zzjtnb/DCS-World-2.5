local Unit				= require('Mission.Unit')
local ModuleProperty	= require('ModuleProperty')
local Factory			= require('Factory')

local M = {
	construct = function (self, name, coalitionName, x, y, id)
		self:setCoalitionName(coalitionName)
		self:setName(name)
		self:setDescription('')
		self:setScale(0)
		self:setSteer(2)
		self:setVnav(1)
		self:setVangle(0)
		self:setAngle(0)
		
		Unit.construct(self, x, y, id)
	end
}

ModuleProperty.makeClonable(M)

ModuleProperty.make1arg(M,	'setCoalitionName',	'getCoalitionName',	'coalitionName')
ModuleProperty.make1arg(M,	'setName',			'getName',			'name')
ModuleProperty.make1arg(M,	'setCallsign',		'getCallsign',		'callsign')
ModuleProperty.make1arg(M,	'setDescription',	'getDescription',	'description')
ModuleProperty.make1arg(M,	'setScale',			'getScale',			'scale')
ModuleProperty.make1arg(M,	'setSteer',			'getSteer',			'steer')
ModuleProperty.make1arg(M,	'setVnav',			'getVnav',			'vnav')
ModuleProperty.make1arg(M,	'setVangle',		'getVangle',		'vangle')
ModuleProperty.make1arg(M,	'setAngle',			'getAngle',			'angle')

ModuleProperty.cloneBase(M, Unit)

return Factory.createClass(M, Unit)