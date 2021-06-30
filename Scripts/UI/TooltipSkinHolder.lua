local Gui	= require('dxgui')
local Skin	= require('Skin')

local prevTooltipSkin_
local tooltipSkin_ = Skin.tooltipSkin()

local function saveTooltipSkin()
    -- кокпит устанавливает для подсказок свой скин
    -- сохраним текущий скин для подсказок и при выходе восстановим его
    prevTooltipSkin_ = Gui.GetTooltipSkin()
    Gui.SetTooltipSkin(tooltipSkin_)

    -- подсказки должны браться из виджетов
    Gui.SetTooltipText()
end

local function restoreTooltipSkin()
  if prevTooltipSkin_ then
    Gui.SetTooltipSkin(prevTooltipSkin_)
    prevTooltipSkin_ = nil
  end
end

return {
	saveTooltipSkin		= saveTooltipSkin,
	restoreTooltipSkin	= restoreTooltipSkin,
}