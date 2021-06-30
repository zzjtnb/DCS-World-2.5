-- Из-за того, что рисование GUI сейчас вызывается в середине рисования симулятора,
-- то нет возможности сразу отобразить на экране окно после вызова window_:setVisible(true).
-- Окно появится только на следующем кадре.
-- Чтобы реализовать функциональность окна ожидания, в UpdateManager добавляется функция,
-- которая будет вызвана на следующем кадре.
-- Соответственно, выход их функции setUpdateFunction() будет произведен практически немедленно.
-- Это ограничивает использование модуля me_wait_screen для тех случаев, когда код, помещенный в
-- функцию, передаваемую в UpdateManager возвращает результат, либо вызывается внутри большого блока кода.
local Gui				= require('dxgui')
local DialogLoader		= require('DialogLoader')
local UpdateManager		= require('UpdateManager')
local i18n				= require('i18n')

local _ = i18n.ptranslate

local window_
local text_

local function create()
	local cdata = {
		info		= '',
		loading		= _('loading...'),
		disclaimer	= _("Disclaimer: The manufacturers and intellectual property right owners of the vehicles, weapons, sensors and other systems represented in DCS World in no way endorse, sponsor or are otherwise involved in the development of DCS World and its modules"),
	}
	
	window_ = DialogLoader.spawnDialogFromFile("MissionEditor/modules/dialogs/me_wait_screen.dlg", cdata)
	
	local screenWidth, screenHeight = Gui.GetScreenSize()

	window_:setBounds(0, 0, screenWidth, screenHeight)
	
	if text_ then		
		window_.staticInfo:setText(text_)
	end
end

local function setText(text)
	if window_ then
		window_.staticInfo:setText(text)
	else
		text_ = text
	end
end

function showSplash(visible, a_text, a_noVisibleLoading)
    if not window_ then
		create()
	end
	
	if a_noVisibleLoading == true then
		window_.staticLoading:setVisible(false)
	else
		window_.staticLoading:setVisible(true)
	end
	
    if a_text then
        window_.staticInfo:setText(a_text)
    else
        window_.staticInfo:setText("")
    end
	window_:setVisible(visible)
	Gui.SetWaitCursor(trvisibleue)
end

local function setUpdateFunction(func, winsplash)
	if not window_ then
		create()
	end
	
	window_:setVisible(true)
	
	if winsplash then
		 winsplash:setVisible(true)
	end

	Gui.SetWaitCursor(true)
	
	UpdateManager.add(function()
		func()
		
		if winsplash then
			 winsplash:setVisible(false)
		end
		
		window_:setVisible(false)
		
		Gui.SetWaitCursor(false)
		
		-- удаляем себя из UpdateManager
		return true
	end)
end

local function getVisible()
	if window_ then
		return window_:getVisible()
	end
	
	return false
end

return {
	setUpdateFunction	= setUpdateFunction,
	setText				= setText,
	getVisible			= getVisible,
    showSplash          = showSplash,
}
