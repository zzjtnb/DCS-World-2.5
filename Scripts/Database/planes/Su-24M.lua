
BD3_pylons = 
{
	"PylonBD3_1",
	"PylonBD3_2",
	"PylonBD3_3",
	"PylonBD3_4",
	"PylonBD3_5",
	"PylonBD3_6",
	"PylonBD3_7",
	"PylonBD3_8",
}
function BD3_(station,clsid)
	return {CLSID = clsid,  connector = BD3_pylons[station] , arg_value = 0 }
end

BD4_pylons = 
{
	[2] = "PylonBD4_2",
	[4] = "PylonBD4_4",
	[7] = "PylonBD4_7",
}

function BD4_(station,clsid)
	return {CLSID = clsid,  connector = BD4_pylons[station] , arg_value = 0.1 }
end


return plane( "Su-24M", _("Su-24M"),
    {
        
        EmptyWeight = "19200",
        MaxFuelWeight = "11700",
        MaxHeight = "16500",
        MaxSpeed = "1700",
        MaxTakeOffWeight = "39700",
        Picture = "Su-24M.png",
        Rate = "70",
        Shape = "su-24",
        WingSpan = "17.64",
        WorldID = 12,
		country_of_origin = "RUS",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 192,
			-- PPR-26
			chaff = {default = 96, increment = 24, chargeSz = 1},
			-- PPI-26
			flare = {default = 96, increment = 24, chargeSz = 1}
        },
        
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, Su_24,
        "Bombers", "Refuelable"
        },
        Categories = {
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_BAD, LOOK_BAD, LOOK_BAD),
        Sensors = {
            RADAR = "Orion-A",
            OPTIC = "Kaira-1",
            RWR = "Abstract RWR"
        },
        Countermeasures = {
            ECM = "Geran SPS-161"
        },
        mapclasskey = "P0091000027",
    },
    {
        pylon(1, 0, -3.010777,  0.033165, -4.894181,
            {
				arg 	  = 308,
				arg_value = 1,--clean be default
                connector = "PYLON_1",
				use_full_connector_position = true,
            },
            {
                BD3_(1,"{B0DBC591-0F52-4F7D-AD7B-51E67725FB81}"),--"2xR-60M APU-60-2L"
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },--MER*6 FAB-100
                BD3_(1,"{4203753F-8198-4E85-9924-6F8FF679F9FF}"),--RBK-250 PTAB-2.5M
				BD3_(1,"{RBK_250_275_AO_1SCH}"),				--RBK-250-275 AO-1SCH
                BD3_(1,"{0511E528-EA28-4caf-A212-00D1408DF10A}"),--SAB-100
                BD3_(1,"{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}"),--UB-32A - 32 S-5KO
                BD3_(1,"{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"),--B-8M1 - 20 S-8KOM
                BD3_(1,"{3C612111-C7AD-476E-8A8E-2485812F4E5C}"),--FAB250
                BD3_(1,"{FC56DF80-9B09-44C5-8976-DCFAFF219062}"),--B-13L - 5 S-13 OF
                BD3_(1,"{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}"),--S-24B
                BD3_(1,"{A0648264-4BC0-4EE8-A543-D119F6BA4257}"),--S-25 OFM
                BD3_(1,"{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}"),--Kh-25ML
                BD3_(1,"{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}"),--Kh-25MPU
                BD3_(1,"{292960BB-6518-41AC-BADA-210D65D5073C}"),--Kh-25MR
				BD3_(1,"{Kh-25MP}"),							-- Kh-25MP
            }
        ),
        pylon(2, 0, -1.626964,  0.168190, -2.253826,
            {
				arg 	  = 309,
				arg_value = 1,--clean be default
                connector = "PYLON_2",
				
				use_full_connector_position = true,
            },
            {
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },--MER*6 FAB-100
                { CLSID = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}", Type = 1},--Kh-29l
                { CLSID = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}", Type = 1},--Kh-29T
                { CLSID = "{4D13E282-DF46-4B23-864A-A9423DFDE504}", Type = 1},--Kh-31A
                { CLSID = "{D8F2C90B-887B-4B9E-9FE2-996BC9E9AF03}", Type = 1},--Kh-31P
                { CLSID = "{FE382A68-8620-4AC0-BDF5-709BFE3977D7}", Type = 1},--Kh-58
                { CLSID = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}", Type = 1},--Kh-59M
                BD3_(2,"{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}" ),--Kh-25ML
                BD3_(2,"{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}" ),--Kh-25MPU
                BD3_(2,"{292960BB-6518-41AC-BADA-210D65D5073C}" ),--Kh-25MR
                BD3_(2,"{4203753F-8198-4E85-9924-6F8FF679F9FF}" ),--RBK-250 PTAB-2.5M
				BD3_(2,"{RBK_250_275_AO_1SCH}" ),				--RBK-250-275 AO-1SCH
                BD3_(2,"{3C612111-C7AD-476E-8A8E-2485812F4E5C}" ),--FAB250
                BD3_(2,"{37DCC01E-9E02-432F-B61D-10C166CA2798}" ),--FAB-500 M62
                BD3_(2,"{D5435F26-F120-4FA3-9867-34ACE562EF1B}" ),--RBK-500 PTAB-10-5
				BD3_(2,"{7AEC222D-C523-425e-B714-719C0D1EB14D}" ),--RBK-500 PTAB-1M
				BD3_(2,"{RBK_500U_OAB_2_5RT}" ),				--RBK-500U OAB-2.5RT
                BD3_(2,"{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" ),--BetAB-500
                BD3_(2,"{BD289E34-DF84-4C5E-9220-4B14C346E79D}" ),--BetAB-500ShP
                BD3_(2,"{BA565F89-2373-4A84-9502-A0E017D3A44A}" ),--KAB-500L
                BD3_(2,"{E2C426E3-8B10-4E09-B733-9CDC26520F48}" ),--KAB-500kr
                BD3_(2,"{96A7F676-F956-404A-AD04-F33FB2C74884}" ),--KMGU-2
                BD3_(2,"{96A7F676-F956-404A-AD04-F33FB2C74881}" ),--KMGU-2
                BD3_(2,"{0511E528-EA28-4caf-A212-00D1408DF10A}" ),--SAB-100
                BD3_(2,"{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" ),--UB-32A - 32 S-5KO
                BD3_(2,"{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" ),--B-8M1 - 20 S-8KOM
                BD3_(2,"{FC56DF80-9B09-44C5-8976-DCFAFF219062}" ),--B-13L - 5 S-13 OF
                BD3_(2,"{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" ),--S-24B
                BD3_(2,"{A0648264-4BC0-4EE8-A543-D119F6BA4257}" ),--S-25 OFM
                BD4_(2, "{39821727-F6E2-45B3-B1F0-490CC8921D1E}"),--KAB-1500L
				BD4_(2, "{KAB_1500LG_LOADOUT}"),				--KAB-1500LG
				BD4_(2, "{KAB_1500Kr_LOADOUT}"),				--KAB-1500Kr
                BD4_(2,"{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" ),--FAB-1500 M54  
				BD4_(2,"{7D7EC917-05F6-49D4-8045-61FC587DD019}" ),--PTB
				BD3_(2,"{Kh-25MP}"),							-- Kh-25MP
            }
        ),
        pylon(3, 1, -2.860757, -0.790051, -0.473607,
            {
				arg 	  = 310,
				arg_value = 1,--clean be default
                connector = "PYLON_3",
				use_full_connector_position = true,
            },
            {
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}"},--MER*6 FAB-100
                BD3_(3,"{4203753F-8198-4E85-9924-6F8FF679F9FF}" ),--RBK-250 PTAB-2.5M
				BD3_(3,"{RBK_250_275_AO_1SCH}" ),				--RBK-250-275 AO-1SCH
                BD3_(3,"{3C612111-C7AD-476E-8A8E-2485812F4E5C}" ),--FAB250
                BD3_(3,"{37DCC01E-9E02-432F-B61D-10C166CA2798}" ),--FAB-500 M62
                BD3_(3,"{D5435F26-F120-4FA3-9867-34ACE562EF1B}" ),--RBK-500 PTAB-10-5
				BD3_(3,"{7AEC222D-C523-425e-B714-719C0D1EB14D}" ),--RBK-500 PTAB-1M
				BD3_(3,"{RBK_500U_OAB_2_5RT}" ),				--RBK-500U OAB-2.5RT
                BD3_(3,"{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" ),--BetAB-500
                BD3_(3,"{BD289E34-DF84-4C5E-9220-4B14C346E79D}" ),--BetAB-500ShP
                BD3_(3,"{BA565F89-2373-4A84-9502-A0E017D3A44A}" ),--KAB-500L
                BD3_(3,"{E2C426E3-8B10-4E09-B733-9CDC26520F48}" ),--KAB-500kr
                BD3_(3,"{0511E528-EA28-4caf-A212-00D1408DF10A}" ),--SAB-100
                BD3_(3,"{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" ),--UB-32A - 32 S-5KO
                BD3_(3,"{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" ),--B-8M1 - 20 S-8KOM
                BD3_(3,"{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" ),--S-24B
            }
        ),
        pylon(4, 1, -1.901574, -0.790303,  0.033709,
            {
				arg 	  = 311,
				arg_value = 1,--clean be default
                connector = "PYLON_4",
				use_full_connector_position = true,
            },
            {
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },--mbd
                BD3_(4,"{4203753F-8198-4E85-9924-6F8FF679F9FF}" ),--RBK-250 PTAB-2.5M
				BD3_(4,"{RBK_250_275_AO_1SCH}" ),				--RBK-250-275 AO-1SCH
                BD3_(4,"{3C612111-C7AD-476E-8A8E-2485812F4E5C}" ),--FAB250
                BD3_(4,"{0511E528-EA28-4caf-A212-00D1408DF10A}" ),--SAB-100
				BD4_(4, "{39821727-F6E2-45B3-B1F0-490CC8921D1E}"),--KAB-1500L
				BD4_(4, "{KAB_1500LG_LOADOUT}"),				--KAB-1500LG
				BD4_(4, "{KAB_1500Kr_LOADOUT}"),				--KAB-1500Kr
                BD4_(4,"{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" ),--FAB-1500 M54
            }
        ),
        pylon(5, 1,  0.881221, -0.806699,  0.033955,
            {
				arg 	  = 312,
				arg_value = 1,--clean be default
                connector = "PYLON_5",
				use_full_connector_position = true,
            },
            {
                { CLSID = "{16602053-4A12-40A2-B214-AB60D481B20E}" ,arg_value = 0, connector = "PylonBD3_5" , forbidden = {{ station = 4}} },--PTB
                { CLSID = "{0519A264-0AB6-11d6-9193-00A0249B6F00}" },--L-081 Fantasmagoria ELINT pod
                BD3_(5,"{3C612111-C7AD-476E-8A8E-2485812F4E5C}" ),--FAB250
                BD3_(5,"{4203753F-8198-4E85-9924-6F8FF679F9FF}" ),--RBK-250 PTAB-2.5M
				BD3_(5,"{RBK_250_275_AO_1SCH}" ),				--RBK-250-275 AO-1SCH
            }
        ),
        pylon(6, 1, -2.860757, -0.790051,  0.541705,
            {
				arg 	  = 313,
				arg_value = 1,--clean be default
                connector = "PYLON_6",
				use_full_connector_position = true,
            },
            {
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}"},--MER*6 FAB-100
                BD3_(6,"{4203753F-8198-4E85-9924-6F8FF679F9FF}" ),--RBK-250 PTAB-2.5M
				BD3_(6,"{RBK_250_275_AO_1SCH}" ),				--RBK-250-275 AO-1SCH
                BD3_(6,"{3C612111-C7AD-476E-8A8E-2485812F4E5C}" ),--FAB250
                BD3_(6,"{37DCC01E-9E02-432F-B61D-10C166CA2798}" ),--FAB-500 M62
                BD3_(6,"{D5435F26-F120-4FA3-9867-34ACE562EF1B}" ),--RBK-500 PTAB-10-5
				BD3_(6,"{7AEC222D-C523-425e-B714-719C0D1EB14D}" ),--RBK-500 PTAB-1M
				BD3_(6,"{RBK_500U_OAB_2_5RT}" ),				--RBK-500U OAB-2.5RT
                BD3_(6,"{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" ),--BetAB-500
                BD3_(6,"{BD289E34-DF84-4C5E-9220-4B14C346E79D}" ),--BetAB-500ShP
                BD3_(6,"{BA565F89-2373-4A84-9502-A0E017D3A44A}" ),--KAB-500L
                BD3_(6,"{E2C426E3-8B10-4E09-B733-9CDC26520F48}" ),--KAB-500kr
                BD3_(6,"{0511E528-EA28-4caf-A212-00D1408DF10A}" ),--SAB-100
                BD3_(6,"{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" ),--UB-32A - 32 S-5KO
                BD3_(6,"{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" ),--B-8M1 - 20 S-8KOM
                BD3_(6,"{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" ),--S-24B
            }
        ),
        pylon(7, 0, -1.626964,  0.168189,  2.321837,
            {
				arg 	  = 314,
				arg_value = 1,--clean be default
                connector = "PYLON_7",
				use_full_connector_position = true,
            },
            {
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },--MER*6 FAB-100
                { CLSID = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}", Type = 1},--Kh-29l
                { CLSID = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}", Type = 1},--Kh-29T
                { CLSID = "{4D13E282-DF46-4B23-864A-A9423DFDE504}", Type = 1},--Kh-31A
                { CLSID = "{D8F2C90B-887B-4B9E-9FE2-996BC9E9AF03}", Type = 1},--Kh-31P
                { CLSID = "{FE382A68-8620-4AC0-BDF5-709BFE3977D7}", Type = 1},--Kh-58
                { CLSID = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}", Type = 1},--Kh-59M
                BD3_(7,"{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}" ),--Kh-25ML
                BD3_(7,"{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}" ),--Kh-25MPU
                BD3_(7,"{292960BB-6518-41AC-BADA-210D65D5073C}" ),--Kh-25MR
                BD3_(7,"{4203753F-8198-4E85-9924-6F8FF679F9FF}" ),--RBK-250 PTAB-2.5M
				BD3_(7,"{RBK_250_275_AO_1SCH}" ),				--RBK-250-275 AO-1SCH
                BD3_(7,"{3C612111-C7AD-476E-8A8E-2485812F4E5C}" ),--FAB250
                BD3_(7,"{37DCC01E-9E02-432F-B61D-10C166CA2798}" ),--FAB-500 M62
                BD3_(7,"{D5435F26-F120-4FA3-9867-34ACE562EF1B}" ),--RBK-500 PTAB-10-5
				BD3_(7,"{7AEC222D-C523-425e-B714-719C0D1EB14D}" ),--RBK-500 PTAB-1M
				BD3_(7,"{RBK_500U_OAB_2_5RT}" ),				--RBK-500U OAB-2.5RT
                BD3_(7,"{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" ),--BetAB-500
                BD3_(7,"{BD289E34-DF84-4C5E-9220-4B14C346E79D}" ),--BetAB-500ShP
                BD3_(7,"{BA565F89-2373-4A84-9502-A0E017D3A44A}" ),--KAB-500L
                BD3_(7,"{E2C426E3-8B10-4E09-B733-9CDC26520F48}" ),--KAB-500kr
                BD3_(7,"{96A7F676-F956-404A-AD04-F33FB2C74884}" ),--KMGU-2
                BD3_(7,"{96A7F676-F956-404A-AD04-F33FB2C74881}" ),--KMGU-2
                BD3_(7,"{0511E528-EA28-4caf-A212-00D1408DF10A}" ),--SAB-100
                BD3_(7,"{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}" ),--UB-32A - 32 S-5KO
                BD3_(7,"{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" ),--B-8M1 - 20 S-8KOM
                BD3_(7,"{FC56DF80-9B09-44C5-8976-DCFAFF219062}" ),--B-13L - 5 S-13 OF
                BD3_(7,"{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}" ),--S-24B
                BD3_(7,"{A0648264-4BC0-4EE8-A543-D119F6BA4257}" ),--S-25 OFM
                BD4_(7, "{39821727-F6E2-45B3-B1F0-490CC8921D1E}"),--KAB-1500L
				BD4_(7, "{KAB_1500LG_LOADOUT}"),				--KAB-1500LG
				BD4_(7, "{KAB_1500Kr_LOADOUT}"),				--KAB-1500Kr
                BD4_(7,"{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" ),--FAB-1500 M54  
				BD4_(7,"{7D7EC917-05F6-49D4-8045-61FC587DD019}" ),--PTB
				BD3_(7,"{Kh-25MP}"),							-- Kh-25MP
			}
        ),
        pylon(8, 0, -3.010779,  0.033164,  4.962269,
            {
				arg 	  = 315,
				arg_value = 1,--clean be default
                connector = "PYLON_8",
				use_full_connector_position = true,
            },
            {
                BD3_(8,"{275A2855-4A79-4B2D-B082-91EA2ADF4691}"),--2xR-60M APU-60-2R
                { CLSID = "{F99BEC1A-869D-4AC7-9730-FBA0E3B1F5FC}" },--MER*6 FAB-100
                BD3_(8,"{4203753F-8198-4E85-9924-6F8FF679F9FF}"),--RBK-250 PTAB-2.5M
				BD3_(8,"{RBK_250_275_AO_1SCH}" ),				--RBK-250-275 AO-1SCH
                BD3_(8,"{0511E528-EA28-4caf-A212-00D1408DF10A}"),--SAB-100
                BD3_(8,"{637334E4-AB5A-47C0-83A6-51B7F1DF3CD5}"),--UB-32A - 32 S-5KO
                BD3_(8,"{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}"),--B-8M1 - 20 S-8KOM
                BD3_(8,"{3C612111-C7AD-476E-8A8E-2485812F4E5C}"),--FAB250
                BD3_(8,"{FC56DF80-9B09-44C5-8976-DCFAFF219062}"),--B-13L - 5 S-13 OF
                BD3_(8,"{3858707D-F5D5-4bbb-BDD8-ABB0530EBC7C}"),--S-24B
                BD3_(8,"{A0648264-4BC0-4EE8-A543-D119F6BA4257}"),--S-25 OFM
                BD3_(8,"{6DADF342-D4BA-4D8A-B081-BA928C4AF86D}"),--Kh-25ML
                BD3_(8,"{E86C5AA5-6D49-4F00-AD2E-79A62D6DDE26}"),--Kh-25MPU
                BD3_(8,"{292960BB-6518-41AC-BADA-210D65D5073C}"),--Kh-25MR
				BD3_(8,"{Kh-25MP}"),							-- Kh-25MP
            }
        ),
    },
    {
        aircraft_task(GroundAttack),
        aircraft_task(CAS),
        aircraft_task(AntishipStrike),
        aircraft_task(SEAD),
        aircraft_task(PinpointStrike),
        aircraft_task(AFAC),
        aircraft_task(RunwayAttack),
    },
	aircraft_task(GroundAttack)
);
