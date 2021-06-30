db.Units.Cars = {};

local function task(name, id)
  return { WorldID =  id, Name = name };
end

function register_car(GT, params, cats)
  local res = GT;
  for k,v in pairs(params) do res[k] = v; end;
  res.Categories = cats;

  table.insert(db.Units.Cars.Car, res);
end

db.Units.Cars.Tasks = { task(_("Nothing"), 15) }
db.Units.Cars.Car = {}

--------------------------------------------------------------------------
-- Cars
--------------------------------------------------------------------------

-- FIXME: replace dofile with loadfile+setfenv+pcall
local function chassis_file(f)
    if dofile(db_path..f) then
		error("can't load file "..f)
		return
	end
end

-- FIXME: replace dofile with loadfile+setfenv+pcall
local function vehicle_file(f)
	if dofile(db_path..f) then
		error("can't load file "..f)
		return
	end
	if(GT) then
		local enablePlayerCanDrive = false
		if GT.driverViewConnectorName and GT.driverViewConnectorName ~= "" then
			enablePlayerCanDrive = true
		else
			if GT.driverViewPoint and type(GT.driverViewPoint) == "table" then
				for k,v in pairs(GT.driverViewPoint) do
					if v >= 0.001 then
						enablePlayerCanDrive = true
						break
					end
				end
			end
		end
		if enablePlayerCanDrive == false then
			if GT.WS then
				for k,v in pairs(GT.WS) do
					if v and type(v) == "table" then
						if v.cockpit ~= nil then
							enablePlayerCanDrive = true
							break
						end
						if v.LN then
							for kk,vv in pairs(v.LN) do
								enablePlayerCanDrive = enablePlayerCanDrive or (vv.customViewPoint ~= nil)
								if enablePlayerCanDrive then
									break
								end
							end
						end
					end
				end
			end
		end
		GT.enablePlayerCanDrive = enablePlayerCanDrive
		
		GT.MaxSpeed = GT.chassis.max_road_velocity * 3.6; -- *3600/1000 м/с->км/ч поле из chassis для ограничения скорости унита в редакторе
		table.insert(db.Units.Cars.Car, GT);
		GT = nil;
	else
		error("GT empty in file "..f)
	end;
end

--- BEGIN Chassis
GT_t.CH_t = {}
chassis_file("chassis/AAV7.lua")
chassis_file("chassis/BAZ5937.lua")
chassis_file("chassis/BMD-1.lua")
chassis_file("chassis/BMP1.lua")
chassis_file("chassis/BMP2.lua")
chassis_file("chassis/BMP3.lua")
chassis_file("chassis/BRDM2.lua")
chassis_file("chassis/BTR80.lua")
chassis_file("chassis/BTRD.lua")
chassis_file("chassis/COBRA.lua")
chassis_file("chassis/GAZ3307.lua")
chassis_file("chassis/GAZ3308.lua")
chassis_file("chassis/GAZ66.lua")
chassis_file("chassis/GM575.lua")
chassis_file("chassis/GM578.lua")
chassis_file("chassis/HEMTT.lua")
chassis_file("chassis/HMMWV.lua")
chassis_file("chassis/IKARUS.lua")
chassis_file("chassis/KAMAZ43101.lua")
chassis_file("chassis/LAV.lua")
chassis_file("chassis/LAZ695.lua")
chassis_file("chassis/Leopard2.lua")
chassis_file("chassis/M1.lua")
chassis_file("chassis/M109.lua")
chassis_file("chassis/M2.lua")
chassis_file("chassis/M48.lua")
chassis_file("chassis/M60.lua")
chassis_file("chassis/M818.lua")
chassis_file("chassis/M993.lua")
chassis_file("chassis/MAZ543M.lua")
chassis_file("chassis/MAZ6303.lua")
chassis_file("chassis/MCV80.lua")
chassis_file("chassis/Merkava_Mk_4.lua")
chassis_file("chassis/MTLB.lua")
chassis_file("chassis/MTT.lua")
chassis_file("chassis/Object123.lua")
chassis_file("chassis/Suidae_base.lua")
chassis_file("chassis/T55.lua")
chassis_file("chassis/T72.lua")
chassis_file("chassis/T80.lua")
chassis_file("chassis/TIGR.lua")
chassis_file("chassis/UAZ469.lua")
chassis_file("chassis/URAL375.lua")
chassis_file("chassis/VAZ2109.lua")
chassis_file("chassis/ZIL131.lua")
chassis_file("chassis/ZIL135.lua")
chassis_file("chassis/ZIL4334.lua")
chassis_file("chassis/fuchs.lua")
chassis_file("chassis/human.lua")
chassis_file("chassis/leopard1.lua")
chassis_file("chassis/m113.lua")
chassis_file("chassis/marder.lua")
chassis_file("chassis/static.lua")
chassis_file("chassis/stryker.lua")
chassis_file("chassis/trolleybus.lua")
chassis_file("chassis/KRAZ-6322.lua")
chassis_file("chassis/Tatra_815.lua")
--- END Chassis

--- BEGIN Vehicles
GT = nil;

vehicle_file("vehicles/Howitzers/2B11 mortar.lua")
vehicle_file("vehicles/Howitzers/2S1 GVOZDIKA.lua")
vehicle_file("vehicles/Howitzers/2S19 MSTA.lua")
vehicle_file("vehicles/Howitzers/2S3 AKATCIA.lua")
vehicle_file("vehicles/Howitzers/2S9 NONA.lua")
vehicle_file("vehicles/Howitzers/M109 Paladin.lua")
vehicle_file("vehicles/Howitzers/SpGH Dana.lua")

vehicle_file("vehicles/IFV/AAV7.lua")
vehicle_file("vehicles/IFV/BMD-1.lua")
vehicle_file("vehicles/IFV/BMP-1.lua")
vehicle_file("vehicles/IFV/BMP-2.lua")
vehicle_file("vehicles/IFV/BMP-3.lua")
vehicle_file("vehicles/IFV/BRDM-2.lua")
vehicle_file("vehicles/IFV/BTR-80.lua")
vehicle_file("vehicles/IFV/BTR-D.lua")
vehicle_file("vehicles/IFV/Cobra.lua")
vehicle_file("vehicles/IFV/LAV-25.lua")
vehicle_file("vehicles/IFV/M1043.lua")
vehicle_file("vehicles/IFV/M1045.lua")
vehicle_file("vehicles/IFV/M1126 Stryker ICV.lua")
vehicle_file("vehicles/IFV/M113.lua")
vehicle_file("vehicles/IFV/M1134 Stryker ATGM.lua")
vehicle_file("vehicles/IFV/M2 Bradley.lua")
vehicle_file("vehicles/IFV/MCV-80 Warrior.lua")
vehicle_file("vehicles/IFV/MT-LB.lua")
vehicle_file("vehicles/IFV/Marder.lua")
vehicle_file("vehicles/IFV/TPZ Fuchs.lua")
vehicle_file("vehicles/IFV/FDDM_Grad.lua")
vehicle_file("vehicles/IFV/bunker.lua")
vehicle_file("vehicles/IFV/paratroopRPG.lua")
vehicle_file("vehicles/IFV/paratroop_AK.lua")
vehicle_file("vehicles/IFV/SoldierAKIns.lua")
vehicle_file("vehicles/IFV/sandbox.lua")
vehicle_file("vehicles/IFV/soldierAK.lua")
vehicle_file("vehicles/IFV/soldierAKru.lua")
vehicle_file("vehicles/IFV/soldierM249.lua")
vehicle_file("vehicles/IFV/soldierM4.lua")
vehicle_file("vehicles/IFV/soldierM4GRG.lua")
vehicle_file("vehicles/IFV/soldierRPG.lua")
vehicle_file("vehicles/IFV/MLRS FDDM.lua")

vehicle_file("vehicles/MLRS/9K51 GRAD.lua")
vehicle_file("vehicles/MLRS/9K57 URAGAN.lua")
vehicle_file("vehicles/MLRS/9K58 SMERCH.lua")
vehicle_file("vehicles/MLRS/9K58 SMERCH_HE.lua")
vehicle_file("vehicles/MLRS/M270 MLRS.lua")

vehicle_file("vehicles/SAM/2C6M Tunguska.lua")
vehicle_file("vehicles/SAM/2P25 KUB LN.lua")
vehicle_file("vehicles/SAM/5P73 S-125 LN.lua")
vehicle_file("vehicles/SAM/5P85C S-300PS LN.lua")
vehicle_file("vehicles/SAM/5P85D S-300PS LN.lua")
vehicle_file("vehicles/SAM/9A310M1 BUK LN.lua")
vehicle_file("vehicles/SAM/9A33 OSA LN.lua")
vehicle_file("vehicles/SAM/9A331 TOR.lua")
vehicle_file("vehicles/SAM/9A35 STRELA-10.lua")
vehicle_file("vehicles/SAM/9P31 STRELA-1.lua")
vehicle_file("vehicles/SAM/9S470M1 BUK Command Vehicle.lua")
vehicle_file("vehicles/SAM/9T217 OSA Loader.lua")
vehicle_file("vehicles/SAM/AN-MRC-137 AMG.lua")
vehicle_file("vehicles/SAM/AN-MSQ-104 Patriot ECS.lua")
vehicle_file("vehicles/SAM/Gepard.lua")
vehicle_file("vehicles/SAM/HAWK PCP.lua")
vehicle_file("vehicles/SAM/M163 Vulcan.lua")
vehicle_file("vehicles/SAM/M192 HAWK LN.lua")
vehicle_file("vehicles/SAM/M48 CHAPARRAL.lua")
vehicle_file("vehicles/SAM/M6 Linebacker.lua")
vehicle_file("vehicles/SAM/M901 PATRIOT LN.lua")
vehicle_file("vehicles/SAM/M973 Avenger.lua")
vehicle_file("vehicles/SAM/Patriot EPP-III.lua")
vehicle_file("vehicles/SAM/Patriot ICC.lua")
vehicle_file("vehicles/SAM/Roland ADS.lua")
vehicle_file("vehicles/SAM/S-300 CP 54K6.lua")
vehicle_file("vehicles/SAM/Stinger_manpad.lua")
--vehicle_file("vehicles/SAM/StingerIZR_1.lua") -- obsolete
vehicle_file("vehicles/SAM/StingerIZR_2.lua")
--vehicle_file("vehicles/SAM/StingerUSA_1.lua") -- obsolete
vehicle_file("vehicles/SAM/StingerUSA_2.lua")
--vehicle_file("vehicles/SAM/StingerGRG_1.lua") -- obsolete
vehicle_file("vehicles/SAM/ZSU-23-4 Shilka.lua")
vehicle_file("vehicles/SAM/ZU-23 EMPLACEMENT CLOSED.lua")
vehicle_file("vehicles/SAM/ZU-23 EMPLACEMENT.lua")
vehicle_file("vehicles/SAM/ZU-23 URAL-375.lua")
vehicle_file("vehicles/SAM/ZU-23 insurgent closed.lua")
vehicle_file("vehicles/SAM/ZU-23 insurgent ural.lua")
vehicle_file("vehicles/SAM/ZU-23 insurgent.lua")
vehicle_file("vehicles/SAM/iglaGRG_1.lua")
vehicle_file("vehicles/SAM/iglaGRG_2.lua")
vehicle_file("vehicles/SAM/iglaRUS_1.lua")
vehicle_file("vehicles/SAM/iglaRUS_2.lua")
vehicle_file("vehicles/SAM/iglaINS_1.lua")

vehicle_file("vehicles/SAM/radar/1L13 EWR.lua")
vehicle_file("vehicles/SAM/radar/1S91 KUB STR.lua")
vehicle_file("vehicles/SAM/radar/40B6M S-300PS TR.lua")
vehicle_file("vehicles/SAM/radar/40B6MD S-300PS SR.lua")
vehicle_file("vehicles/SAM/radar/55G6 EWR.lua")
vehicle_file("vehicles/SAM/radar/64H6E S-300PS SR.lua")
vehicle_file("vehicles/SAM/radar/9S18M1 BUK SR.lua")
vehicle_file("vehicles/SAM/radar/9S80M1 SBORKA SR.lua")
vehicle_file("vehicles/SAM/radar/AN-MPQ-48 HAWK TR.lua")
vehicle_file("vehicles/SAM/radar/AN-MPQ-51 HAWK SR.lua")
vehicle_file("vehicles/SAM/radar/AN-MPQ-53 PATRIOT STR.lua")
vehicle_file("vehicles/SAM/radar/AN-MPQ-55 HAWK CWAR.lua")
vehicle_file("vehicles/SAM/radar/P-19 S-125 SR.lua")
vehicle_file("vehicles/SAM/radar/ROLAND RADAR.lua")
vehicle_file("vehicles/SAM/radar/SNR S-125 TR.lua")

vehicle_file("vehicles/Structures/house1arm.lua")
vehicle_file("vehicles/Structures/house2arm.lua")
vehicle_file("vehicles/Structures/house3arm.lua")
vehicle_file("vehicles/Structures/house4arm.lua")
vehicle_file("vehicles/Structures/house5arm.lua")
vehicle_file("vehicles/Structures/TACAN_beacon.lua")

vehicle_file("vehicles/Tanks/Challenger2.lua")
vehicle_file("vehicles/Tanks/Leclerc.lua")
vehicle_file("vehicles/Tanks/Leopard 2A5.lua")
vehicle_file("vehicles/Tanks/M-60.lua")
vehicle_file("vehicles/Tanks/M1128 Stryker MGS.lua")
vehicle_file("vehicles/Tanks/M1A1 Abrams.lua")
vehicle_file("vehicles/Tanks/T-55.lua")
vehicle_file("vehicles/Tanks/T-72B.lua")
vehicle_file("vehicles/Tanks/T-80UD.lua")
vehicle_file("vehicles/Tanks/T-90.lua")
vehicle_file("vehicles/Tanks/leo1a3.lua")
vehicle_file("vehicles/Tanks/Merkava Mk 4.lua")

vehicle_file("vehicles/unarmed/APA URAL-375.lua")
vehicle_file("vehicles/unarmed/ATMZ-5 URAL-375.lua")
vehicle_file("vehicles/unarmed/ATZ-10 URAL-375.lua")
vehicle_file("vehicles/unarmed/GAZ-3307.lua")
vehicle_file("vehicles/unarmed/GAZ-3308.lua")
vehicle_file("vehicles/unarmed/GAZ-66.lua")
vehicle_file("vehicles/unarmed/HEMTT_M978.lua")
vehicle_file("vehicles/unarmed/HEMTT_TFFT.lua")
vehicle_file("vehicles/unarmed/IKARUS bus.lua")
vehicle_file("vehicles/unarmed/KAMAZ-43101 truck.lua")
vehicle_file("vehicles/unarmed/LAZ-695 bus.lua")
vehicle_file("vehicles/unarmed/M1025 Hummer.lua")
vehicle_file("vehicles/unarmed/M818 Patriot Tractor.lua")
vehicle_file("vehicles/unarmed/MAZ-6303.lua")
vehicle_file("vehicles/unarmed/Predator GCS.lua")
vehicle_file("vehicles/unarmed/Predator Trojan Spirit.lua")
vehicle_file("vehicles/unarmed/Suidae.lua")
vehicle_file("vehicles/unarmed/Tigr_233036.lua")
vehicle_file("vehicles/unarmed/Trolleybus.lua")
vehicle_file("vehicles/unarmed/UAZ-469.lua")
vehicle_file("vehicles/unarmed/URAL ATsP-6.lua")
vehicle_file("vehicles/unarmed/URAL-4320-31.lua")
vehicle_file("vehicles/unarmed/URAL-4320T.lua")
vehicle_file("vehicles/unarmed/Ural-375 PBU.lua")
vehicle_file("vehicles/unarmed/Ural-375.lua")
vehicle_file("vehicles/unarmed/VAZ-2109.lua")
vehicle_file("vehicles/unarmed/ZIL APA-80.lua")
vehicle_file("vehicles/unarmed/ZIL SKP-11.lua")
vehicle_file("vehicles/unarmed/ZIL-131 KUNG.lua")
vehicle_file("vehicles/unarmed/ZIL-4331.lua")
vehicle_file("vehicles/unarmed/KrAZ-6322.lua")


--- END Vehicles
