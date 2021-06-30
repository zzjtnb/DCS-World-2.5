local lfs 			= require('lfs')
local InputData		= require('Input.Data')
Input 				= require('Input')
Input.Loader		= require('Input.Loader')

local userConfigPath = lfs.writedir() .. 'Config/Input/'
local sysConfigPath = './Config/Input/'

Input.enableInfoLog(false)
Input.enableKeyboardLog(false)
Input.enableMouseLog(false)
Input.enableJoystickLog(false)
InputData.enablePrintToLog(false)

InputData.initialize(userConfigPath, sysConfigPath)
Input.setUnitMarker(InputData.getUnitMarker())

Input.Loader.load(sysConfigPath)
