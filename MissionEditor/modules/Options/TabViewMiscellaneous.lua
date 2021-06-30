local DialogLoader		= require('DialogLoader')
local Factory			= require('Factory')
local ListBoxItem		= require('ListBoxItem')
local TabViewBase		= require('Options.TabViewBase')
local PluginsInfo		= require('Options.PluginsInfo')
local lfs				= require('lfs')
local i18n				= require('i18n')
local MeSettings		= require('MeSettings')

local _ = i18n.ptranslate

local function loadFromResource(self)
	local localization = {
		viewopt					= _("VIEWS"),
		externalViews			= _("Player external views"),
		snapview				= _("ENABLE USER SNAP-VIEW SAVING"),
		synchronize				= _("Synchronize Controls on Mission Start"),
		headmove				= _("Head Movement by G-Forces in Cockpit"),
		accidentalfailures		= _("Random System Failures"),
		f5_nearest_ac			= _("F5 Nearest AC View"),
		f10_awacs				= _("F10 AWACS View"),
		f11_free_camera			= _("F11 Free Camera"),
		force_feedback_enabled	= _("Force Feedback Enabled"),
		Coordinate_Display		= _("COORDINATE DISPLAY:"),
		METheme					= _('GUI THEME'),
		Wallpapers				= _('THEME:'),
		show_pilot_body			= _('Show Pilot Body in Cockpit (when available)'),
        F2_view_effects         = _("F2 view effects"),
        SpectatorExternalViews  = _("Spectator external views"),
        TrackIRExternalViews    = _("TrackIR external views"),
        chat_window_at_start    = _("Chat window at start"), 
		AutoLogin				= _('Autologin'), 	
		CollectStatistics		= _('Collect statistics'), 
		controlsIndicator		= _('Controls Indicator'),
		cockpitStatusBarAllowed	= _("Cockpit Status Bar"),		
		RBDAI					= _('Battle Damage Assessment'),	
		overlays				= _('Overlays'),
		allow_server_screenshots= _('Allow servers to take my screenshots'),		
	}
	local window = DialogLoader.spawnDialogFromFile('./MissionEditor/modules/dialogs/me_options_miscellaneous.dlg', localization)
	local container = window.containerMain.containerMiscellaneous
	
	window.containerMain:removeWidget(container)
	window:kill()
	
	return container
end

local function fillWallpaperComboList(comboList)
	local item = ListBoxItem.new(_('Default theme'))
	item.dir = "./MissionEditor/images/"
	item.id = "default"
	comboList:insertItem(item)

	--итем
	item = ListBoxItem.new(_('USER THEME'))
	item.dir = lfs.writedir() .. "MissionEditor/images/"
	item.id = "user"
	comboList:insertItem(item)
	
	for i, info in ipairs(PluginsInfo.getSkinsInfo()) do
		for j, skinInfo in pairs(info.skins) do
			local item 	= ListBoxItem.new(skinInfo.name)
	
			item.info		= info
			item.skinInfo	= skinInfo
			item.id 		= info.id .. skinInfo.index		
			
			comboList:insertItem(item)
		end
	end
end

local function bindWallpaperComboList(self, comboList)
	fillWallpaperComboList(comboList)
	
	local controller = self.controller_
	
	function comboList:onChange(item)
		if controller.setWallpaper then
			controller.setWallpaper(item.id)
		end
	end
	
	self.updateFunctions_['wallpaper'] = function()
		-- TODO: переделать сохранение последнего выбранного скина
		local pluginItem = comboList:getItem(0) -- дефолтные обои
		local skinId = MeSettings.getMainMenuSkinName()
		
		if skinId then
			local count = comboList:getItemCount()

			for i = 0, count - 1 do
				local item = comboList:getItem(i)
				
				if item.id == skinId or item.id == skinId or (item.info and item.info.id .. '1' == skinId) then
					pluginItem = item
					break
				end
			end
		end
		
		comboList:selectItem(pluginItem)
	end
end

local function bindControls(self)
	local container = self:getContainer()
	
	self:bindOptionsContainer(container, 'Miscellaneous')
	self:bindOptionsContainer(container, 'Difficulty')
	
	bindWallpaperComboList(self, container.WallpapersComboList)
end

return Factory.createClass({
	construct = construct,
	bindControls = bindControls,
	loadFromResource = loadFromResource,
}, TabViewBase)
