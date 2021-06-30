dofile('./Scripts/UI/initGUI.lua')

local base = _G

module('StatusBarDialog')

local Gui = base.require("dxgui")
local GuiWin = base.require("dxguiWin")
local DialogLoader = base.require('DialogLoader')
local WidgetParams = base.require('WidgetParams')
local gettext = base.require('i_18n')

local metric  = true
local alt_K   = 1
local speed_K = 3.6
local degree_symbol  = base.degree_symbol

local SB_UNIT_CLASS_UNKNOWN					= 0;
local SB_UNIT_CLASS_JET_AIRCRAFT			= 1;
local SB_UNIT_CLASS_PISTON_ENGINE_AIRCRAFT	= 2;
local SB_UNIT_CLASS_HELICOPTER				= 3;
local SB_UNIT_CLASS_WEAPON					= 4;

local unit_class_type 		  = SB_UNIT_CLASS_UNKNOWN

local function UnitClassAircraft  ()  return unit_class_type > 0 and unit_class_type < SB_UNIT_CLASS_WEAPON;     end
local function UnitClassHelicopter()  return unit_class_type == SB_UNIT_CLASS_HELICOPTER;		 end
local function UnitClassAirplane  ()  return unit_class_type > 0 and unit_class_type < SB_UNIT_CLASS_HELICOPTER; end



local sprintf = base.string.format

local degrees  = function (degrees_value) return sprintf('%d%s', degrees_value,degree_symbol) end 
local degreesf = function (degrees_value) return sprintf('%3.1f%s', degrees_value,degree_symbol) end 

base.setmetatable(base.dxgui, {__index = base.dxguiWin})

local function _(text) 
	return gettext.translate(text) 
end

local translation = {
	IAS	 =_("IAS:"),
	TS   =_("TS:"),
	FLP  =_("FLP:"),
	AOA  =_("AOA:"),
	G    =_("G:"),
	HDG  =_("HDG:"),
	LOC  =_("LOC:"),
	TRQ  =_("TRQ:"),
	MPR  =_("MPR:"),
	PRP  =_("PRP:"),
	BNK  =_("BNK:"),
	PTH  =_("PTH:"),
	RPM  =_("RPM:"),
	ALT  =_("ALT:"),
	M    =_("m"),
	KNT  =_("kn"),
	FT   =_("ft"),
	KPH  =_("kmh"),
}


local RUMBs =
{
	_("N"),		--0			0
	_("NNE"),	--22.5		1
	_("NE"),	--45		2
	_("ENE"),	--67.5		3
	_("E"),		--90		4
	_("ESE"),	--112.5		5
	_("SE"),	--135		6
	_("SSE"),	--157.5		7
	_("S"),		--180		8
	_("SSW"),	--202.5		9
	_("SW"),	--225		10
	_("WSW"),	--247.5		11
	_("W"),		--270		12
	_("WNW"),	--292.5		13
	_("NW"),	--315		14
	_("NNW"),	--337.5		15
	_("N")		--360		16
};

function getRumb(degrees_value)
	degrees_value = base.math.fmod(degrees_value,360.0);
	if (degrees_value < 0) then
		degrees_value = degrees_value + 360;
	end
	local rmb = degrees_value / 22.5;
	return RUMBs[base.math.floor(rmb + 0.5)  + 1];
end


function make_same_pos(source,dest)
  if not dest then 
	return
  end
  local x_p, y_p, w_p, h_p = source:getBounds()
  local x  ,   y,   w,   h = dest:getBounds()
  dest:setPosition(x_p,y_p,w,h) 
end

function move(dest,dx,dy)
  if not dest then 
	return
  end
 
  local x  ,   y,   w,   h = dest:getBounds()
  
  local dx = dx or 0
  local dy = dy or 0
 
  dest:setPosition(x + dx,y + dy,w,h) 
end

function unitChanged(tp,hum,cpt,alt)
	unit_class_type	     	   = tp
	local unit_is_human   	   = hum or false
	local camera_is_in_cockpit = cpt or false
	local alternative		   = alt or false
	
	local aircraft  = UnitClassAircraft()
	if  aircraft and not alternative then 
		window.SPD_ALT.SPD:setText(translation.IAS)
	else 
		window.SPD_ALT.SPD:setText(translation.TS)
	end
	
	window.PROPENGINE:setVisible(unit_class_type == SB_UNIT_CLASS_PISTON_ENGINE_AIRCRAFT and unit_is_human) 
	window.HELICOPTER:setVisible(unit_class_type == SB_UNIT_CLASS_HELICOPTER)
	window.GWEAPON   :setVisible(unit_class_type == SB_UNIT_CLASS_WEAPON)
	window.AIRPLANE  :setVisible(UnitClassAirplane())
    window.AOA	     :setVisible(aircraft)
	if not aircraft then
		window.RPM	   		:setVisible(false)
		window.RPMSINGLE	:setVisible(false)
	end
end

function create()
  local screenWidth, screenHeight = Gui.GetWindowSize()
 
  window = DialogLoader.spawnDialogFromFile("Scripts/UI/StatusbarExtended.dlg")
--  window:setPosition(0,0)
  local w, h = window:getSize()
  window:setBounds(0, screenHeight - 29, screenWidth, 29)
  
  
  window.AIRPLANE.FLP			 :setText(translation.FLP)
  window.AOA.AOA				 :setText(translation.AOA)
  window.AOA.G					 :setText(translation.G)
  window.GWEAPON.G				 :setText(translation.G)
  window.HEADINGLOCATION.HEADING :setText(translation.HDG)
  window.HEADINGLOCATION.LOCATION:setText(translation.LOC)
  window.HELICOPTER.TRQ			 :setText(translation.TRQ)
  window.PROPENGINE.MPR			 :setText(translation.MPR)
  window.PROPENGINE.PRP			 :setText(translation.PRP)
  window.PTCHBANK.BANK			 :setText(translation.BNK)
  window.PTCHBANK.PITCH			 :setText(translation.PTH)
  window.RPM.RPM				 :setText(translation.RPM)
  window.RPMSINGLE.RPM			 :setText(translation.RPM)
  window.SPD_ALT.ALT			 :setText(translation.ALT)


  move(window.TIME_DATE,screenWidth - w)
  
  make_same_pos(window.AIRPLANE,window.HELICOPTER)
  make_same_pos(window.AIRPLANE,window.WEAPON)
  make_same_pos(window.AOA     ,window.GWEAPON)
  make_same_pos(window.RPM     ,window.RPMSINGLE)
  
  unitChanged(SB_UNIT_CLASS_UNKNOWN)
  
end

function show()
	if not window then
	   create()
	end
	window:setVisible(true)
end

function hide()
  if window then
    window:setVisible(false)
  end
end

function kill()
  Gui.SetWaitCursor(false)
  
	if window then
	   window:kill()
     window = nil
	end
end

function setCameraName(name, fontColor)
	local cameraName = window.TIME_DATE.CAMERA

	cameraName:setText(name)
	
	local skin = cameraName:getSkin()
	
	skin.skinData.states.released[1].text.color = fontColor

	cameraName:setSkin(skin)
end

function setMetric(value)
  metric = value
  if metric then     
     alt_K   = 1
	 speed_K = 3.6
	 window.SPD_ALT.SPDUNITS:setText(translation.KPH)
	 window.SPD_ALT.ALTUNITS:setText(translation.M)
  else
     alt_K   = 3.28084
	 speed_K = 3600/1852
 	 window.SPD_ALT.SPDUNITS:setText(translation.KNT)
	 window.SPD_ALT.ALTUNITS:setText(translation.FT)
  end
end


function setUnit(name,flagFilename,dist,direction)

	if dist ~= nil then
		dist = dist * 0.001 -- km
		if  not metric then
			dist = dist * 0.539957
		end
		name = name..sprintf("(%0.1f,%s)",dist,getRumb(direction))
	end
	window.UNIT.UNIT:setText(name)

	local flag 	= window.UNIT.FLAG
	local skin 	= flag:getSkin()
	local picture = skin.skinData.states.released[1].picture

	if '' == flagFilename then
		picture.file = nil
	else
		picture.file = flagFilename
	end
	flag:setSkin(skin)
end

function setEulerAngles(yaw,pitch,bank)
  window.HEADINGLOCATION.HEADINGVALUE:setText(sprintf('%03d%s(%s)',yaw,degree_symbol,getRumb(yaw)))
  window.PTCHBANK.PITCHVALUE:setText(degrees(pitch))
  window.PTCHBANK.BANKVALUE:setText (degrees(bank))
end


function setSpeed(value)
  window.SPD_ALT.SPDVALUE:setText(sprintf('%4.f'  , value * speed_K))
end

function setAltitude(value)
  value = value * alt_K
  if value < 0.0 then
	value = base.math.ceil(value)
  else
    value = base.math.floor(value)
  end
  window.SPD_ALT.ALTVALUE:setText(sprintf('%5d', value))
end

function setGandAoA(g,aoa)
  local G_ = sprintf('%-4.1f' ,g)
  if aoa ~= nil then
	 window.AOA.AOAVALUE:setText(degreesf(aoa))
  end
  window.AOA.GVALUE:setText(G_)
  window.GWEAPON.GVALUE:setText(G_)
end

function setCoords(value)
  window.HEADINGLOCATION.LOCATIONVALUE:setText(value)  
end

function setUnitSpecific(a1,a2,a3,a4,a5,a6,a7)
	if not UnitClassAircraft() then 
		return
	end
	local rpm1 = a1
	local rpm2 = a2
	window.RPM	    :setVisible(rpm2 ~= nil)
	window.RPMSINGLE:setVisible(rpm2 == nil)
	
	if rpm2 == nil then 
		window.RPMSINGLE.RPM_1_VALUE:setText(sprintf("%d%%",rpm1 * 100))
	else
		window.RPM.RPM_1_VALUE:setText(sprintf("%d%%",rpm1 * 100))
		window.RPM.RPM_2_VALUE:setText(sprintf("%d%%",rpm2 * 100))
	end
	
	if  UnitClassAirplane()  then
		window.AIRPLANE.FLPVALUE:setText(sprintf("%d%%",a3 * 100))
		if  window.PROPENGINE:isVisible() then
			window.PROPENGINE.MPRVALUE:setText(a4)
			window.PROPENGINE.PRPVALUE:setText(degrees(a5))
		end	
	end
 
end

function setTime(DD,MM,YYYY,hh,mm,ss,sim_speed)
  window.TIME_DATE.DATE:setText(sprintf('%02d/%02d/%02d',DD,MM,YYYY))
  window.TIME_DATE.TIME:setText(sprintf('%02d:%02d:%02d' ,hh,mm,ss))
  window.TIME_DATE.SIMSPEED:setText(sim_speed)
end
