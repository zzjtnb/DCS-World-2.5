local Data			= require('Input.Data')
local Input 		= require('Input')

local uiProfileName_

local function loadProfileName_(folder, unitName)
	local result
	local default
	local f, err = loadfile(folder .. '/name.lua')

	if f then
		result, default = f(unitName)
	end

	if not result then
		result = unitName
	end

	return result, default
end

local function ProfileInfo(folderPath, unitName)
	local name, default = loadProfileName_(folderPath, unitName)
	
	return {
		folder 					= folderPath,
		unitName				= unitName,
		name					= name,
		default					= default,	-- если в настройках не сохранен последний выбранный самолет, то при загрузке окна настроек свыбрать этот профайл
		visible					= true,		-- отображать профайл в настройках	
		loadDefaultUnitProfile	= true,		-- профили НЕ юнитов не должны пытаться загрузить профили устройств из папки дефолтного юнита
		
		LayerName = function(self, layerName)
			self.layerName = layerName
			
			return self
		end,
		
		Visible = function(self, visible)
			self.visible = visible
			
			return self
		end,
		
		LoadDefaultUnitProfile = function(self, loadDefaultUnitProfile)
			self.loadDefaultUnitProfile = loadDefaultUnitProfile
			
			return self
		end,
	}
end

local function createDefaultAircraftProfileInfo(systemConfigPath)
	local unitName = 'Default'
	local folderPath = systemConfigPath .. 'Aircrafts/' .. unitName
	
	return ProfileInfo(folderPath, unitName):LayerName(Data.getUnitMarker() .. unitName):Visible(true):LoadDefaultUnitProfile(true)
end

local function createCommonAircraftProfileInfo(systemConfigPath)
	local unitName = 'Common'
	local folderPath = systemConfigPath .. 'Aircrafts/' .. unitName
	
	return ProfileInfo(folderPath, unitName):LayerName(Data.getUnitMarker() .. unitName):Visible(true):LoadDefaultUnitProfile(true)
end

local function createMacAircraftProfileInfo(systemConfigPath)
	local unitName = 'MAC'
	local folderPath = systemConfigPath .. 'Aircrafts/' .. unitName
	
	return ProfileInfo(folderPath, unitName):LayerName(Data.getUnitMarker() .. unitName):Visible(true):LoadDefaultUnitProfile(true)
end

local function createUnitProfileInfo(unitName, folderPath)
	return ProfileInfo(folderPath, unitName):LayerName(Data.getUnitMarker() .. unitName):Visible(true):LoadDefaultUnitProfile(true)
end

local function createPluginProfileInfos(pluginPaths, profileInfos)
	for unitName, folderPath in pairs(pluginPaths) do
		table.insert(profileInfos, createUnitProfileInfo(unitName, folderPath))
	end
end

local function createExplorationsProfileInfo(systemConfigPath)
	local unitName = 'Explorations'
	local folderPath = systemConfigPath .. unitName
	
	return ProfileInfo(folderPath, unitName):LayerName('ExplorationsLayer'):Visible(false):LoadDefaultUnitProfile(false)
end

local function createJftBinocularProfileInfo(systemConfigPath)
	local unitName = 'JFT binocular'
	local folderPath = systemConfigPath .. 'JFT/binocular'
	
	return ProfileInfo(folderPath, unitName):LayerName('JFT_when_binocular_view_set'):Visible(false):LoadDefaultUnitProfile(false)
end

local function createJftCameraProfileInfo(systemConfigPath)
	local unitName = 'JFT camera'
	local folderPath = systemConfigPath .. 'JFT/camera'
	
	return ProfileInfo(folderPath, unitName):LayerName('JFT_when_camera_set'):Visible(false):LoadDefaultUnitProfile(false)
end

local function createJftGlobalProfileInfo(systemConfigPath)
	local unitName = 'JFT global'
	local folderPath = systemConfigPath .. 'JFT/global'
	
	return ProfileInfo(folderPath, unitName):LayerName('JFT_global'):Visible(false):LoadDefaultUnitProfile(false)
end

local function createCommandMenuProfileInfo(systemConfigPath)
	local unitName = 'CommandMenu'
	local folderPath = systemConfigPath .. unitName
	
	return ProfileInfo(folderPath, unitName):LayerName('CommandMenuItems'):Visible(false):LoadDefaultUnitProfile(false)
end

local function createTrainingWaitForUserProfileInfo(systemConfigPath)
	local unitName = 'TrainingWaitForUser'
	local folderPath = systemConfigPath .. unitName
	
	return ProfileInfo(folderPath, unitName):LayerName('TrainingWaitForUser'):Visible(false):LoadDefaultUnitProfile(false)
end

local function createUiLayerProfileInfo(systemConfigPath)
	local unitName = 'UiLayer'
	local folderPath = systemConfigPath .. unitName
	local profileInfo = ProfileInfo(folderPath, unitName):LayerName(Input.getUiLayerName()):Visible(true):LoadDefaultUnitProfile(false)
	
	uiProfileName_ = profileInfo.name
	
	return profileInfo
end

local function getUiProfileName()
	return uiProfileName_
end

return {
	createDefaultAircraftProfileInfo		= createDefaultAircraftProfileInfo,
	createCommonAircraftProfileInfo			= createCommonAircraftProfileInfo,
	createMacAircraftProfileInfo			= createMacAircraftProfileInfo,
	createUnitProfileInfo					= createUnitProfileInfo,
	createPluginProfileInfos				= createPluginProfileInfos,
	createExplorationsProfileInfo			= createExplorationsProfileInfo,
	createJftBinocularProfileInfo			= createJftBinocularProfileInfo,
	createJftCameraProfileInfo				= createJftCameraProfileInfo,
	createJftGlobalProfileInfo				= createJftGlobalProfileInfo,
	createCommandMenuProfileInfo			= createCommandMenuProfileInfo,
	createTrainingWaitForUserProfileInfo	= createTrainingWaitForUserProfileInfo,
	createUiLayerProfileInfo				= createUiLayerProfileInfo,
	getUiProfileName						= getUiProfileName,
}