-- окно с картой для вида F10
local DialogLoader			= require('DialogLoader')
local gettext				= require('i_18n')
local dxgui					= require('dxgui')

local function _(text) 
	return gettext.dtranslate('simulator', text) 
end

local window_

local function create()
	local localization = {
		map					= _('MAP'),
		hdg					= _('HDG:'),
		showAllRoutes		= _('Show all routes'),
		showAlltargets		= _('Show all targets'),
		viewDetectionAreas	= _('View detection areas'),
		viewEngagementAreas	= _('View engagement areas'),
		showLabels			= _('Show labels'),
		showRuler			= _('Show ruler'),
		zoomIn				= _('Zoom in'),
		zoomOut				= _('Zoom out'),
		actualSize			= _('Actual size'),
		centerOnPlane		= _('Center on plane'),
		showLifeBar			= _('Show life bar'),
		Map					= _('Map'),
		Alt					= _('Alt'),
		Sat					= _('Sat'),
		LL					= _('LL'),
		MGRS				= _('MGRS'),
		me					= _('>Me<'),
		markLabel			= _('Mark Label'),
		markOnOff			= _('Mark Label On/Off'),
	}
	
	window_ = DialogLoader.spawnDialogFromFile('./Scripts/UI/F10View/AwacsCameraDialog.dlg', localization)
end

local function kill()
	window_:kill()
	window_ = nil
end

local function show()
	window_:setVisible(true)
end

local function hide()
	window_:setVisible(false)
end

local function getWindow()
	return window_.widget
end

local function removeStaticMapWidgetPlaceholder()
	window_:removeWidget(window_.staticMapWidgetPlaceholder)
	window_.staticMapWidgetPlaceholder:destroy()
	window_.staticMapWidgetPlaceholder = nil
end

local function getSwitchButtonMapModeScheme()
	return window_.panelRight.switchButtonMapModeScheme.widget
end

local function getSwitchButtonMapModeSchemeAlt()
	return window_.panelRight.switchButtonMapModeSchemeAlt.widget
end

local function getSwitchButtonMapModeSatellite()
	return window_.panelRight.switchButtonMapModeSatellite.widget
end

local function getToggleButtonShowLatLonGrid()
	return window_.panelTop.toggleButtonShowLatLonGrid.widget
end

local function getToggleButtonShowMgrsGrid()
	return window_.panelTop.toggleButtonShowMgrsGrid.widget
end

local function getButtonZoom100()
	return window_.panelTop.buttonZoom100.widget
end

local function getToggleButtonZoomIn()
	return window_.panelTop.toggleButtonZoomIn.widget
end

local function getToggleButtonZoomOut()
	return window_.panelTop.toggleButtonZoomOut.widget
end

local function getToggleButtonCenterOnPlane()
	return window_.panelTop.toggleButtonCenterOnPlane.widget
end

local function getToggleButtonShowLifeBar()
	return window_.panelTop.toggleButtonShowLifeBar.widget
end

local function getToggleButtonMarkPanel()
	return window_.panelTop.buttonMarkPanel.widget
end

local function getButtonEnterVehicle()
	return window_.panelTop.buttonEnterVehicle.widget
end

local function getToggleButtonShowRoutes()
	return window_.panelTop.toggleButtonShowRoutes.widget
end

local function getToggleButtonShowTargets()
	return window_.panelTop.toggleButtonShowTargets.widget
end

local function getToggleButtonShowDetectionAreas()
	return window_.panelTop.toggleButtonShowDetectionAreas.widget
end

local function getToggleButtonShowEngagementAreas()
	return window_.panelTop.toggleButtonShowEngagementAreas.widget
end

local function getToggleButtonShowLabels()
	return window_.panelTop.toggleButtonShowLabels.widget
end

local function getToggleButtonShowRuler()
	return window_.panelTop.toggleButtonShowRuler.widget
end

local function getStaticCoordinates()
	return window_.panelTop.staticCoordinates.widget
end

local function getStaticDistance()
	return window_.panelTop.staticDistance.widget
end

local function getStaticHeading()
	return window_.panelTop.staticHeading.widget
end

local function getStaticTime()
	return window_.staticTime.widget
end

local function getToggleButtonMarkVis()
	return window_.panelTop.buttonMarkVis.widget
end

return {
	create								= create,
	kill								= kill,
	show								= show,
	hide								= hide,
	getWindow							= getWindow,
	removeStaticMapWidgetPlaceholder	= removeStaticMapWidgetPlaceholder,
	
	getSwitchButtonMapModeScheme		= getSwitchButtonMapModeScheme,
	getSwitchButtonMapModeSchemeAlt		= getSwitchButtonMapModeSchemeAlt,
	getSwitchButtonMapModeSatellite		= getSwitchButtonMapModeSatellite,
	getToggleButtonShowLatLonGrid		= getToggleButtonShowLatLonGrid,
	getToggleButtonShowMgrsGrid			= getToggleButtonShowMgrsGrid,
	
	getButtonZoom100					= getButtonZoom100,
	getToggleButtonZoomIn				= getToggleButtonZoomIn,
	getToggleButtonZoomOut				= getToggleButtonZoomOut,
	getToggleButtonCenterOnPlane		= getToggleButtonCenterOnPlane,
	getToggleButtonShowLifeBar			= getToggleButtonShowLifeBar,

	getToggleButtonMarkPanel			= getToggleButtonMarkPanel,
	getToggleButtonMarkVis				= getToggleButtonMarkVis,

	getButtonEnterVehicle				= getButtonEnterVehicle,
	getToggleButtonShowRoutes			= getToggleButtonShowRoutes,
	getToggleButtonShowTargets			= getToggleButtonShowTargets,
	getToggleButtonShowDetectionAreas	= getToggleButtonShowDetectionAreas,
	getToggleButtonShowEngagementAreas	= getToggleButtonShowEngagementAreas,
	getToggleButtonShowLabels			= getToggleButtonShowLabels,
	getToggleButtonShowRuler			= getToggleButtonShowRuler,
	
	getStaticCoordinates				= getStaticCoordinates,
	getStaticDistance					= getStaticDistance,
	getStaticHeading					= getStaticHeading,
	getStaticTime						= getStaticTime,
}