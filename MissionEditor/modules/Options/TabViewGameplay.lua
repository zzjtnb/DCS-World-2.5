local DialogLoader		= require('DialogLoader')
local Factory			= require('Factory')
local TabViewBase		= require('Options.TabViewBase')
local i18n				= require('i18n')

local _ = i18n.ptranslate	

local function loadFromResource(self)	
	local localization = {
		f10opt 				= _("F10 VIEW OPTIONS"),
		myAC				= _("MY A/C"),
		all					= _("ALL_gui", "ALL"),
		allies 				= _("FOG OF WAR"),
		mapOnly				= _("MAP ONLY"),
		alliesOnly			= _("ALLIES ONLY"),
		difficulties 		= _("Difficulties"),
		padlock 			= _("PADLOCK"),
		unlimitedFuel 		= _("UNLIMITED FUEL"),
		unlimitedWeapons 	= _("UNLIMITED WEAPONS"),
		radioAssist 		= _("RADIO ASSIST"),
		tooltips 			= _("TOOL TIPS"),
		immortal 			= _("IMMORTAL"),
		miniHUD 			= _("MINI HUD"),
		labels 				= _("LABELS"),
		easyFlight 			= _("EASY FLIGHT"),
		easyComm			= _('EASY COMMUNICATION'),
		alliedFlightReports = _('ALLIED FLIGHT REPORTS'),
		cockpitVisualRM     = _('COCKPIT VISUAL RECON MODE'),
		setGlobal 			= _("USE THESE OPTIONS \nFOR ANY MISSION"),
		permitCrash 		= _("PERMIT CRASH RCVR"),
		externalViews 		= _("EXTERNAL VIEWS"),
		snapview            = _("ENABLE USER SNAP-VIEW SAVING"),
		units 				= _("UNITS"),
		geffect 			= _("G-EFFECT"),
		mirrors 			= _("MIRRORS"),
		birds 				= _('Birds'),
		editorIconsStyle 	= _("EDITOR ICONS STYLE"),
		presets 			= _("PRESETS"),
		simulation 			= _('SIMULATION'),
		game 				= _('GAME'),
        avionicsLanguage    = _('AVIONICS LANGUAGE'),
		hideStick		 	= _('HIDE CONTROL STICK'),
        userMarks           = _('F10 Map User Marks'),
		autoTrimmer			= _('Auto trimer'),
		wakeTurbulence		= _('Wake turbulence'),
		unrestrictedSATNAV	= _('Unrestricted SATNAV'),
		easyRadar 			= _("Game Avionics Mode"),
		
		easyRadar_tooltip   = _('Tips.GameOpt.Dfclty.EasyRadar'),
		easyFlight_tooltip  = _('Tips.GameOpt.Dfclty.GFM'),
		radio_tooltip		= _('Tips.GameOpt.Dfclty.RadAssist'),
		tips_tooltip		= _('Tips.GameOpt.Dfclty.Tips'),
		permitCrash_tooltip	= _('Tips.GameOpt.Dfclty.RCVR'),
		easyComm_tooltip	= _('Tips.GameOpt.Dfclty.EasyComm'),
		padlock_tooltip		= _('Tips.GameOpt.Dfclty.Padlock'),
		fuel_tooltip		= _('Tips.GameOpt.Dfclty.UnlimFuel'),
		weapons_tooltip		= _('Tips.GameOpt.Dfclty.UnlimWpn'),
		immortal_tooltip	= _('Tips.GameOpt.Dfclty.Immortal'),
		reports_tooltip		= _('Tips.GameOpt.Dfclty.AFR'),
		cVRM_tooltip		= _('Tips.GameOpt.Dfclty.CVRM'),
		SATNAV_tooltip		= _('Tips.GameOpt.Dfclty.SATNAV'),
		labels_tooltip		= _('Tips.GameOpt.Dfclty.Labels'),
		
		mapOnly_tooltip		= _('Tips.GameOpt.F10.MapOnly'),
		myPlane_tooltip		= _('Tips.GameOpt.F10.MyAC'),
		allies_tooltip		= _('Tips.GameOpt.F10.FoW'),
		alliesOnly_tooltip	= _('Tips.GameOpt.F10.Allies'),
		all_tooltip			= _('Tips.GameOpt.F10.AllOpts'),
		
		miniHUD_tooltip			= _('Tips.GameOpt.Others.mHUD'),
		mirrors_tooltip			= _('Tips.GameOpt.Others.Mirrors'),
		hideStick_tooltip		= _('Tips.GameOpt.Others.StickHide'),
		userMarks_tooltip		= _('Tips.GameOpt.Others.UserMarks'),
		wakeTurbulence_tooltip	= _('Tips.GameOpt.Others.WakeTurbs'),
		autoTrimmer_tooltip		= _('Tips.GameOpt.Others.AutoTrimmer'),
		iconsTheme_tooltip		= _('Tips.GameOpt.Others.IconType'),
		avionicsLanguage_tooltip= _('Tips.GameOpt.Others.AvLang'),
		units_tooltip			= _('Tips.GameOpt.Others.Units'),
		geffect_tooltip			= _('Tips.GameOpt.Others.GEffects'),	
		birds_tooltip			= _('Tips.GameOpt.Others.Birds'),	
		setGlobal_tooltip		= _('Tips.GameOpt.Others.PresetUse'),	
	}
	local window = DialogLoader.spawnDialogFromFile('./MissionEditor/modules/dialogs/me_options_gameplay.dlg', localization)
	local container = window.containerMain.containerGameplay
	
	window.containerMain:removeWidget(container)
	window:kill()
	
	return container
end

local function bindPresetButtons(self)
	local container = self:getContainer()
	local controller = self.controller_

	function container.presetSimulationButton:onChange()
		controller.setDifficultyHigh()
	end
	
	function container.presetGameButton:onChange()
		controller.setDifficultyLow()
	end	
end

local function bindControls(self)
	local container = self:getContainer()
	
	self:bindOptionsContainer(container, 'Difficulty')
	self:bindOptionsContainer(container, 'ViewsCockpit')

	bindPresetButtons(self)
end

return Factory.createClass({
	construct = construct,
	bindControls = bindControls,
	loadFromResource = loadFromResource,
}, TabViewBase)
