local sceneEnvironment = require('demosceneEnvironment')
enc =
{
    scene = {}, -- сюда кладем все созданные объекты

    objectHeight = 5000, --высота объекта, вокруг которого крутим камеру

    cameraSpeed  = 0.25,
    cameraFov	 = 60,
    cameraAngVDefault = math.rad(25),
    cameraDistance = 50,
    cameraDistMult = 0,

    cameraAngH	 = 0,
    cameraAngV	 = 0,
    cameraRadius = 0,
    cameraHeight = 0,
	cameraShiftX = 10,
	cameraShiwtY = 0,
    camAng = 0,
    camDist = 0,
    camTime = 0,

    mouseSensitivity = 0.0034, -- скорость вращения камеры
    wheelSensitivity = 0.02, -- скорость удаления/приближения камеры
}
	enc.updateCamera = function()
		enc.camAng = enc.cameraSpeed*enc.camTime + enc.cameraAngH;
		enc.camDist = enc.cameraDistance*math.exp(enc.cameraDistMult)
		enc.cameraHeight = math.sin(enc.cameraAngV)*enc.camDist
		enc.cameraRadius = math.cos(enc.cameraAngV)*enc.camDist
		enc.scene.cam.transform:setPosition(math.sin(enc.camAng)*enc.cameraRadius, enc.objectHeight + enc.cameraHeight, math.cos(enc.camAng)*enc.cameraRadius)
		enc.scene.cam.transform:lookAtPoint(0, enc.objectHeight, 0)
	end

    enc.encyclopediaSceneUpdate = function(t, dt)
		enc.camTime = enc.camTime + dt
		enc.updateCamera()
    end

    enc.encyclopediaSceneUpdateNoRotate = function(t, dt)
		enc.updateCamera()
    end

function loadScene(scenePtr)
    local sceneAPI = sceneEnvironment.getInterface(scenePtr)
    sceneAPI:setSky(true)
	sceneAPI:setSun(math.rad(120), math.rad(0)) 
    enc.scene.cam = sceneAPI:addCamera(0, 0, 0)
    enc.scene.cam:setNearClip(0.1)
    enc.scene.cam:setFarClip(1000)
end