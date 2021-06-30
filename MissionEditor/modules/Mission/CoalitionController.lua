local base = _G

local require = base.require
local pairs = base.pairs
local ipairs = base.ipairs
local print = base.print
local table = base.table
local string = base.string
local tonumber = base.tonumber
local tostring = base.tostring
local assert = base.assert
local math = base.math

local CoalitionData		= require('Mission.CoalitionData')
local CoalitionPanel	= require('Mission.CoalitionPanel')
local TheatreOfWarData	= require('Mission.TheatreOfWarData')
local textutil			= require('textutil')
local TableUtils		= require('TableUtils')
local i18n				= require('i18n')

local _ = i18n.ptranslate
local copyTable = TableUtils.copyTable

local activeCountryNames_
local localizedCoalitionNames_ = {
	[CoalitionData.redCoalitionName()]		= _('Red'),
	[CoalitionData.blueCoalitionName()]		= _('Blue'),
	[CoalitionData.neutralCoalitionName()]	= _('Neutral'),
}

local function getLocalizedCoalitionName(coalitionName)
	return localizedCoalitionNames_[coalitionName]
end

local function mergeCountryNames(coalition, countryNames)
	countryNames = countryNames or {}
	
	for i, countryId in ipairs(coalition) do
		table.insert(countryNames, CoalitionData.getCountryNameById(countryId))
	end
	
	return countryNames
end

local function sortCountryNames(a_countryNames)
	local usa 		= _('USA')
	local russia 	= _('Russia')
	
	-- сортируем id по названиям стран,
	-- usa и russia делаем первыми
	table.sort(a_countryNames, function(name1, name2)
		if name1 == usa then 
			return true
		end
		
		if name2 == usa then
			return false
		end		
		
		if name1 == russia then
			return true
		end
		
		if name2 == russia then
			return false
		end		
		
		return textutil.Utf8Compare(name1, name2)	
	end)
end

local function getActiveCountryNames()
	local countryNames = {}
	
	mergeCountryNames(CoalitionData.getRedCoalition(),		countryNames)
	mergeCountryNames(CoalitionData.getBlueCoalition(),		countryNames)
	if base.test_addNeutralCoalition == true then
		mergeCountryNames(CoalitionData.getNeutralCoalition(),		countryNames)
	end
	
	sortCountryNames(countryNames)
	
	return countryNames
end

local function getActiveCountries()
	if not activeCountryNames_ then
		activeCountryNames_ = getActiveCountryNames()
	end
	
	return copyTable(nil, activeCountryNames_)
end

local function getActiveCountryCount()
	if not activeCountryNames_ then
		activeCountryNames_ = getActiveCountryNames()
	end
	
	return #activeCountryNames_
end

local function countryIdsToNames(countryIds)
	local names = {}
	
	mergeCountryNames()
	for i, countryIds in ipairs(countryIds) do
		table.insert(names, getCountryNameById())
	end
	
	return names
end

local function getRedCoalitionNames()
	return mergeCountryNames(CoalitionData.getRedCoalition())
end

local function getBlueCoalitionNames()
	return mergeCountryNames(CoalitionData.getBlueCoalition())
end

local function getNeutralCoalitionNames()
	return mergeCountryNames(CoalitionData.getNeutralCoalition())
end

local function activeCountriesChanged()
	activeCountryNames_ = getActiveCountryNames()
end

local function coalitionsChanged()
end

local function theatreOfWarChanged()
end

local function getCoalitionByCountryId(a_countryId)
	for k,v in base.pairs(CoalitionData.getRedCoalition()) do
		if v == a_countryId then
			return CoalitionData.redCoalitionName()
		end
	end	
	
	for k,v in base.pairs(CoalitionData.getBlueCoalition()) do
		if v == a_countryId then
			return CoalitionData.blueCoalitionName()
		end
	end	
end

return {
	getCountryById			= CoalitionData.getCountryById,	 	
	getCountryNameById		= CoalitionData.getCountryNameById,
	getActiveCountries		= getActiveCountries,
	getActiveCountryCount	= getActiveCountryCount,
	
	redCoalitionName		= CoalitionData.redCoalitionName,
	blueCoalitionName		= CoalitionData.blueCoalitionName,
	neutralCoalitionName	= CoalitionData.neutralCoalitionName,
	getLocalizedCoalitionName	= getLocalizedCoalitionName,
	
	setCoalitions			= CoalitionData.setCoalitions,
	getCoalitions			= CoalitionData.getCoalitions,
	setDefaultCoalitions	= CoalitionData.setDefaultCoalitions,
	getDefaultCoalitions	= CoalitionData.getDefaultCoalitions,
	getRedCoalition			= CoalitionData.getRedCoalition,
	getRedCoalitionNames	= getRedCoalitionNames,
	getBlueCoalition		= CoalitionData.getBlueCoalition,
	getBlueCoalitionNames	= getBlueCoalitionNames,
	getNeutralCoalitionNames = getNeutralCoalitionNames,
	getNeutralCoalition		= CoalitionData.getNeutralCoalition,
    getPresets              = CoalitionData.getPresets,
    getIdUserPreset         = CoalitionData.getIdUserPreset,
    setIdPreset             = CoalitionData.setIdPreset,

	saveDefaultCoalitions	= CoalitionData.saveDefaultCoalitions,

	getTheatresOfWar		= TheatreOfWarData.getTheatresOfWar,
	selectTheatreOfWar		= TheatreOfWarData.selectTheatreOfWar,
	getSelectedTheatreOfWarName	= TheatreOfWarData.getName,

	activeCountriesChanged	= activeCountriesChanged,
	coalitionsChanged		= coalitionsChanged,
	theatreOfWarChanged		= theatreOfWarChanged,
	sortCountryNames		= sortCountryNames,
	
	saveCoalitions			= CoalitionData.saveCoalitions,
	loadCoalitions			= CoalitionData.loadCoalitions,	
	
	getCoalitionByCountryId = getCoalitionByCountryId,
	
	showPanel				= CoalitionPanel.show,
}