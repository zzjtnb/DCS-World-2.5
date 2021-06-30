local base = _G

module('me_generator_dialog_data')

local T 				= base.require('tools')
local U 				= base.require('me_utilities')
local DB 				= base.require('me_db_api')
local ConfigHelper 		= base.require('ConfigHelper')
local TheatreOfWarData	= base.require('Mission.TheatreOfWarData')
local ListBoxItem		= base.require('ListBoxItem')
local CoalitionUtils	= base.require('Mission.CoalitionUtils')
local Skin            	= base.require('Skin')

base.require('i18n').setup(_M)

--Содержит общие параметры генарации двух диалогов
--а также функции привязки этих данных к общим виджетам
cdata = {
missionGenerator 	= _("MISSION GENERATOR"),
country 			= _("COUNTRY"),
aircraft 			= _("AIRCRAFT"),
wingmen 			= _("WINGMEN"),
difficulty 			= _("ENEMY AI SKILL"),
generateMission 	= _("GENERATE MISSION"),
editMission 		= _("EDIT MISSION"),
forces 				= _("Forces"),
red 				= _("RED_MG","RED" ),
blue 				= _("BLUE_MG","BLUE"),
environment 		= _("ENVIRONMENT"),
season 				= _("SEASON"),
weather 			= _("WEATHER"),
theatreOfWar 		= _("THEATRE OF WAR"),
startFrom 			= _("START FROM"),
startTime 			= _("START TIME"),
random 				= _("RANDOM"),
time 				= _("TIME"),
options 			= _("CREATE FAST MISSION"),
optionsSmall 		= _("CREATE_FAST_MISSION_MG","Create fast mission"),
place 				= _("Battle location"),
briefing 			= _("Briefing"),
leftBtn 			= _("CANCEL"),
rightBtn 			= _("FLY"),
advancedView 		= _("ADVANCED VIEW"),
fly 				= _("FLY"),
cancel 				= _("CANCEL"),
aircraftTooltip 	= _("Aircraft availability depends on current coalitions list in Mission Editor"),
noCountryInCoalition = _("Please add countries in both coalitions in the Mission Editor"),
Tasks 				= _("TASK"),
Altitude 			= _("ALTITUDE"),
Distance 			= _("DISTANCE"),
TypeAttack 			= _("TYPE ATTACK"),
Historical 			= _("HISTORICAL"),
}

local generatorParams = {}

--TODO  для статических данных grouptemplates сделать в редакторе модуль куда они загружаются один раз
local difficultyLevels, companyTypes, amountLevels, seasons, takeoffTypes, weatherPresets, typeAttack
local theatresOfWar
local fixedDataPath = "MissionEditor/data/MissionGenerator/GeneratorData/others.lua"
local environmentFilePath = "MissionEditor/data/MissionGenerator/GeneratorData/environment.lua"
local coalitionsByCountry = {}
local coalitions

function genParams()
    return generatorParams
end

function saveGeneratorParams()
	U.saveUserData(ConfigHelper.getConfigWritePath('gdoptions.lua'), {generatorParams = genParams()})
end

--ACHTUNG  генератор миссий использует OldId в качестве идентификатора страны. Не удаляйте его.
function initData()
	local fGenParams = T.safeDoFileWithEnv(ConfigHelper.getConfigReadPath('gdoptions.lua'))
    if fGenParams.generatorParams == nil then
        fGenParams = T.safeDoFileWithEnv('MissionEditor\\data\\MissionGenerator\\GeneratorData\\gdoptions.lua')
    end    
    generatorParams = fGenParams.generatorParams
	
    local fFixedData = T.safeDoFileWithRequire(fixedDataPath)
    difficultyLevels = (fFixedData and fFixedData.difficultyLevels) or {}    
    companyTypes = (fFixedData and fFixedData.companyTypes) or {}
    amountLevels = (fFixedData and fFixedData.amountLevels) or {}
    takeoffTypes = (fFixedData and fFixedData.takeoffTypes) or {}
    coalitions = fFixedData.coalitions    
	typeAttack = (fFixedData and fFixedData.typeAttack) or {}
    
    for k,coalition in base.pairs(fFixedData.coalitions) do
        for kk, country in base.pairs(fFixedData.coalitions[k]) do
            coalitionsByCountry[country.name] = k
        end
    end
    
    base.table.insert(amountLevels, 1, {name = _("None"), id = "No"})
    base.table.insert(amountLevels, {name = _("Random"), id = "Random"})
    base.table.insert(takeoffTypes, {name = _("Random"), pointType = "Random"})
    
    local fEnvironment = T.safeDoFileWithRequire(environmentFilePath)
    seasons = (fEnvironment and fEnvironment.seasons) or {}
    weatherPresets = (fEnvironment and fEnvironment.weather) or {}
    base.table.insert(seasons, {id = "random", name = _("Random")})
    base.table.insert(weatherPresets, {id = "random", name = _("Random")})
    
	theatresOfWar = {}
    local firstTheatreId
    local enableDefTheatre = false
	
	for i, theateOfWar in base.ipairs(TheatreOfWarData.getTheatresOfWar()) do
		base.table.insert(theatresOfWar, {name = theateOfWar.localizedName, id = theateOfWar.name})
        if firstTheatreId == nil then
            firstTheatreId = theateOfWar.name 
        end
        if generatorParams.theatreOfWar == theateOfWar.name then
            enableDefTheatre = true
        end
	end
    
    if enableDefTheatre == false then
        generatorParams.theatreOfWar = firstTheatreId
    end
end

function verifyCoalition()
    if #coalitions.red > 0 and #coalitions.blue > 0 then
        return true
    end
    return false
end

-------------------------------------------------------
function fillCountryCombobox(a_comboboxCountry)
    a_comboboxCountry:clear()	
    
	local availableCountries = DB.getAvailableCountriesList(genParams().aircraft)
	if not availableCountries then return end

	for i, v in base.ipairs(availableCountries) do
        if coalitionsByCountry[v.InternationalName] ~= nil and coalitionsByCountry[v.InternationalName] ~= "neutrals" then
			local item = U.addComboBoxItem(a_comboboxCountry, v.Name, v.OldID)
			if coalitionsByCountry[v.InternationalName]  == "red" then
				item:setSkin(Skin.listBoxItemCoalRedSkin())
			else
				item:setSkin(Skin.listBoxItemCoalBlueSkin())
			end
        end
	end
end

local function fillAircraftCombobox(comboboxAircraft)
    comboboxAircraft:clear()
	
	local aircrafts = DB.getHumanControlledAircrafts()
	if not aircrafts then return end
	
	local sortedAircrafts = {}
	for unitDispName, unit in base.pairs(aircrafts) do
		local _aircraftType, _defaultCountry	
		--aircraftType нужно знать чтобы поместить самолёт внутрь нужной таблицы (самолёты, вертолёты, наземка) в миссии
		if unit.attribute[2] == base.wsType_Airplane and unit.attribute[3] == base.wsType_Fighter then
			_aircraftType = "FighterPlanes"
		elseif unit.attribute[2] == base.wsType_Airplane and unit.attribute[3] == base.wsType_Battleplane then
			_aircraftType = "AttackPlanes"
		elseif unit.attribute[2] == base.wsType_Helicopter then
			_aircraftType = "Helicopters"
		end
		
		local availableCountries = {}
        local tmpCountries = DB.getAvailableCountriesList(unit.type)
		if tmpCountries then
			for i, v in base.ipairs(tmpCountries) do
				if coalitionsByCountry[v.InternationalName] ~= nil and coalitionsByCountry[v.InternationalName] ~= "neutrals" then
					base.table.insert(availableCountries, v) 
				end
			end
		end
		_defaultCountry = (base.type(availableCountries) == 'table' and availableCountries[1] and availableCountries[1].OldID) or nil
		
		if _aircraftType and _defaultCountry then            
            base.table.insert(sortedAircrafts, {id = unit.type, name = unit.DisplayName, aircraftType = _aircraftType, defaultCountry = _defaultCountry}) 
		end
	end

	base.table.sort(sortedAircrafts, U.nameComp)
	
	for i,v in base.ipairs(sortedAircrafts) do
		local item = U.addComboBoxItem(comboboxAircraft, v.name, v.id)
		item.aircraftType = v.aircraftType
		item.defaultCountry = v.defaultCountry
	end
end	

local function fillTypeAttack(cbTypeAttack)
	if cbTypeAttack == nil then
		return
	end
	
	local item	
	for k, v in base.ipairs(typeAttack) do
		item = ListBoxItem.new(v.name)
		item.itemId = v.id
		cbTypeAttack:insertItem(item)
	end	
	
	cbTypeAttack:selectItem(cbTypeAttack:getItem(0))
end

local function getStartTime(containerCommon)
    local hours, minutes
    hours = base.tonumber(containerCommon.editboxHour:getText()) or 0
    minutes = base.tonumber(containerCommon.editboxMinute:getText()) or 0
    
    return hours*3600 + minutes*60
end
   
local function initTimeEditBox(containerCommon, editBox, minValue, maxValue)
	editBox:setNumber(true)
    function editBox:onFocus(focus)
		if focus then
			self:setSelection(0,-1)
		else
			local value = base.math.min(base.math.max(minValue, base.tonumber(self:getText()) or 0), maxValue)
			self:setText(base.string.format('%02d', value))
			
			generatorParams.startTime = getStartTime(containerCommon)
		end
    end
end

------------------------------------------------------
function initCommonOptions(containerCommon)
    function containerCommon.comboboxCountry:onChange(item)
        generatorParams.countryId = item.itemId
	end

    function containerCommon.comboboxDifficulty:onChange(item)
        generatorParams.difficulty = item.itemId
    end

    function containerCommon.comboboxTakeoffFrom:onChange(item)
        generatorParams.takeoffFrom = item.itemId
    end
    
	function containerCommon.comboboxTheatreOfWar:onChange(item)
        generatorParams.theatreOfWar = item.itemId
    end
    
    function containerCommon.comboboxSeason:onChange(item)
        generatorParams.season = item.itemId
    end
    
    function containerCommon.comboboxWeather:onChange(item)
        generatorParams.weather = item.itemId
    end

    function containerCommon.radiobuttonStartTimeRandom:onChange()
        generatorParams.startTime = -1
        containerCommon.editboxHour:setEnabled(false)
        containerCommon.editboxMinute:setEnabled(false)
    end
    
    function containerCommon.radiobuttonStartTimeTime:onChange()
        generatorParams.startTime = getStartTime(containerCommon)
        containerCommon.editboxHour:setEnabled(true)
        containerCommon.editboxMinute:setEnabled(true)
    end

	initTimeEditBox(containerCommon, containerCommon.editboxHour, 0, 23)
	initTimeEditBox(containerCommon, containerCommon.editboxMinute, 0, 59)
	
	fillAircraftCombobox(containerCommon.comboboxAircraft)
    fillCountryCombobox(containerCommon.comboboxCountry)
    U.fillComboBoxFromTable(containerCommon.comboboxDifficulty, difficultyLevels, "name", "id")
    U.fillComboBoxFromTable(containerCommon.comboboxTakeoffFrom, takeoffTypes, "name", "pointType")
    U.fillComboBoxFromTable(containerCommon.comboboxSeason, seasons, "name", "id")
    U.fillComboBoxFromTable(containerCommon.comboboxWeather, weatherPresets, "name", "id")
	U.fillComboBoxFromTable(containerCommon.comboboxTheatreOfWar, theatresOfWar, "name", "id")
	fillTypeAttack(containerCommon.comboboxTypeAttack)	
end

function setWidgetValuesFromParams(containerCommon)
	U.setComboboxValueById(containerCommon.comboboxAircraft, generatorParams.aircraft)
	local currentAircraft = containerCommon.comboboxAircraft:getSelectedItem()
	if currentAircraft then
		containerCommon.comboboxAircraft:onChange(currentAircraft)
	end

	U.setComboboxValueById(containerCommon.comboboxTakeoffFrom, generatorParams.takeoffFrom)
    U.setComboboxValueById(containerCommon.comboboxDifficulty, generatorParams.difficulty)
    U.setComboboxValueById(containerCommon.comboboxTheatreOfWar, generatorParams.theatreOfWar)
    
	U.setComboboxValueById(containerCommon.comboboxWeather, generatorParams.weather)
    U.setComboboxValueById(containerCommon.comboboxSeason, generatorParams.season)
	
    if generatorParams.startTime == nil or generatorParams.startTime == -1 then
        containerCommon.editboxHour:setEnabled(false)
        containerCommon.editboxMinute:setEnabled(false)
        containerCommon.editboxHour:setText("12")
        containerCommon.editboxMinute:setText("00")
		containerCommon.radiobuttonStartTimeRandom:setState(true)
    else
        local hour = base.math.floor(generatorParams.startTime / 3600)
        local minute = base.math.floor(base.math.fmod(generatorParams.startTime, 3600) / 60)
        containerCommon.radiobuttonStartTimeTime:setState(true)
        containerCommon.editboxHour:setEnabled(true)
        containerCommon.editboxMinute:setEnabled(true)
        
        local szHour = base.tostring(hour)
        if hour < 10 then szHour = '0'..szHour end
        
        local szMinute = base.tostring(minute)
        if minute < 10 then szMinute = '0'..szMinute end
        
        containerCommon.editboxHour:setText(szHour)
        containerCommon.editboxMinute:setText(szMinute)
    end
		
end

function getCompanyTypes()
	return companyTypes
end

function getAmountLevels()
	return amountLevels
end
