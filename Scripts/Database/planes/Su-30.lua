return plane( "Su-30", _("Su-30"),
    {
        
        EmptyWeight = "17700",
        MaxFuelWeight = "9400",
        MaxHeight = "17300",
        MaxSpeed = "2200",
        MaxTakeOffWeight = "30500",
        Picture = "Su-30.png",
        Rate = "50",
        Shape = "Su-30",
        WingSpan = "14.7",
        WorldID = 13,
		country_of_origin = "RUS",

		-- Countermeasures
		passivCounterm = {
			CMDS_Edit = true,
			SingleChargeTotal = 192,
			-- PPR-26
			chaff = {default = 96, increment = 3, chargeSz = 1},
			-- PPI-26
			flare = {default = 96, increment = 3, chargeSz = 1}
        },
		
        attribute = {wsType_Air, wsType_Airplane, wsType_Fighter, Su_30,
        "Multirole fighters",
        },
        Categories = {
            pl_cat("{78EFB7A2-FD52-4b57-A6A6-3BF0E1D6555F}", "Interceptor"),
        },
        CanopyGeometry = makeAirplaneCanopyGeometry(LOOK_AVERAGE, LOOK_AVERAGE, LOOK_AVERAGE),
        Sensors = {
            RADAR = "N-011M",
            IRST = "OLS-27",
            RWR = "Abstract RWR"
        },
        mapclasskey = "P0091000024",
		pylons_enumeration = {10, 1, 9, 2, 3, 8, 4, 7, 6, 5},
    },
    {
        pylon(1, 0, -1.943000, 0.173000, -7.280000,
            {
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                { CLSID = "{44EE8698-89F9-48EE-AF36-5FD31896A82F}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },
            }
        ),
        pylon(2, 0, -2.535000, -0.165000, -6.168000,
            {
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                loadout_R77,
            }
        ),
        pylon(3, 0, -1.137000, -0.321000, -4.524000,
            {
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },
                { CLSID = "{88DAC840-9F75-4531-8689-B46E64E42E53}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                loadout_R77,
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                { CLSID = "{D8F2C90B-887B-4B9E-9FE2-996BC9E9AF03}", Type = 1},--Kh-31P
                { CLSID = "{4D13E282-DF46-4B23-864A-A9423DFDE504}", Type = 1},--Kh-31A
                { CLSID = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}", Type = 1},--Kh-29l
                { CLSID = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}", Type = 1},--Kh-29T
                { CLSID = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}", Type = 1},--Kh-59M
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },					--RBK-250-275 AO-1SCH
				{ CLSID = "{RBK_500U_OAB_2_5RT}" },						--RBK-500U OAB-2.5RT
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{BA565F89-2373-4A84-9502-A0E017D3A44A}" },
                { CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}" },	--KAB-500Kr
				{ CLSID = "{KAB_500S_LOADOUT}" },						--KAB-500S
                { CLSID = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" },
                { CLSID = "{39821727-F6E2-45B3-B1F0-490CC8921D1E}" },	--KAB-1500L
				{ CLSID = "{KAB_1500LG_LOADOUT}" },						--KAB-1500LG-Pr
				{ CLSID = "{KAB_1500Kr_LOADOUT}" },						--KAB-1500Kr
                { CLSID = "{53BE25A4-C86C-4571-9BC0-47D668349595}" },	-- 6 * FAB-250
            }
        ),
        pylon(4, 1, -0.075000, -1.218000, -1.192000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                loadout_R77,
                { CLSID = "{D8F2C90B-887B-4B9E-9FE2-996BC9E9AF03}", Type = 1},--Kh-31P
                { CLSID = "{4D13E282-DF46-4B23-864A-A9423DFDE504}", Type = 1},--Kh-31A
                { CLSID = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}", Type = 1},--Kh-29l
                { CLSID = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}", Type = 1},--Kh-29T
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },					--RBK-250-275 AO-1SCH
				{ CLSID = "{RBK_500U_OAB_2_5RT}" },						--RBK-500U OAB-2.5RT
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{BA565F89-2373-4A84-9502-A0E017D3A44A}" },
                { CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}" },	--KAB-500Kr
				{ CLSID = "{KAB_500S_LOADOUT}" },						--KAB-500S
                { CLSID = "{MBD3_U6_5*FAB-250}" },						-- 5 * FAB-250
            }
        ),
        pylon(5, 1, -3.751000, -0.384000, 0.000000,
            {
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },
                loadout_R77,
                { CLSID = "{2234F529-1D57-4496-8BB0-0150F9BDBBD2}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },					--RBK-250-275 AO-1SCH
				{ CLSID = "{RBK_500U_OAB_2_5RT}" },						--RBK-500U OAB-2.5RT
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{BA565F89-2373-4A84-9502-A0E017D3A44A}" },
                { CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}" },	--KAB-500Kr
				{ CLSID = "{KAB_500S_LOADOUT}" },						--KAB-500S
				{ CLSID = "{39821727-F6E2-45B3-B1F0-490CC8921D1E}" },	--KAB-1500L
				{ CLSID = "{KAB_1500LG_LOADOUT}" },						--KAB-1500LG-Pr
				{ CLSID = "{KAB_1500Kr_LOADOUT}" },						--KAB-1500Kr
                { CLSID = "{MBD3_U6_4*FAB-250_fwd}" },					-- 4 * FAB-250
            }
        ),
        pylon(6, 1, 0.986000, -0.384000, 0.000000,
            {
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },
                loadout_R77,
                { CLSID = "{2234F529-1D57-4496-8BB0-0150F9BDBBD2}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },					--RBK-250-275 AO-1SCH
				{ CLSID = "{RBK_500U_OAB_2_5RT}" },						--RBK-500U OAB-2.5RT
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{BA565F89-2373-4A84-9502-A0E017D3A44A}" },
                { CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}" },	--KAB-500Kr
				{ CLSID = "{KAB_500S_LOADOUT}" },						--KAB-500S
                { CLSID = "{53BE25A4-C86C-4571-9BC0-47D668349595}" },	-- 6 * FAB-250
            }
        ),
        pylon(7, 1, -0.075000, -1.218000, 1.192000,
            {
                FiZ = -2,
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                loadout_R77,
                { CLSID = "{D8F2C90B-887B-4B9E-9FE2-996BC9E9AF03}", Type = 1},--Kh-31P
                { CLSID = "{4D13E282-DF46-4B23-864A-A9423DFDE504}", Type = 1},--Kh-31A
                { CLSID = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}", Type = 1},--Kh-29l
                { CLSID = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}", Type = 1},--Kh-29T
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },					--RBK-250-275 AO-1SCH
				{ CLSID = "{RBK_500U_OAB_2_5RT}" },						--RBK-500U OAB-2.5RT
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{BA565F89-2373-4A84-9502-A0E017D3A44A}" },
                { CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}" },	--KAB-500Kr
				{ CLSID = "{KAB_500S_LOADOUT}" },						--KAB-500S
                { CLSID = "{MBD3_U6_5*FAB-250}" },						-- 5 * FAB-250
            }
        ),
        pylon(8, 0, -1.137000, -0.321000, 4.524000,
            {
            },
            {
                { CLSID = "{9B25D316-0434-4954-868F-D51DB1A38DF0}" },
                { CLSID = "{E8069896-8435-4B90-95C0-01A03AE6E400}" },
                { CLSID = "{88DAC840-9F75-4531-8689-B46E64E42E53}" },
                { CLSID = "{B79C379A-9E87-4E50-A1EE-7F7E29C2E87A}" },
                loadout_R77,
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                { CLSID = "{D8F2C90B-887B-4B9E-9FE2-996BC9E9AF03}", Type = 1},--Kh-31P
                { CLSID = "{4D13E282-DF46-4B23-864A-A9423DFDE504}", Type = 1},--Kh-31A
                { CLSID = "{3468C652-E830-4E73-AFA9-B5F260AB7C3D}", Type = 1},--Kh-29l
                { CLSID = "{B4FC81C9-B861-4E87-BBDC-A1158E648EBF}", Type = 1},--Kh-29T
                { CLSID = "{40AB87E8-BEFB-4D85-90D9-B2753ACF9514}", Type = 1},--Kh-59M
                { CLSID = "{F72F47E5-C83A-4B85-96ED-D3E46671EE9A}" },
                { CLSID = "{FC56DF80-9B09-44C5-8976-DCFAFF219062}" },
                { CLSID = "{A0648264-4BC0-4EE8-A543-D119F6BA4257}" },
                { CLSID = "{35B698AC-9FEF-4EC4-AD29-484A0085F62B}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74884}" },
                { CLSID = "{96A7F676-F956-404A-AD04-F33FB2C74881}" },
                { CLSID = "{3C612111-C7AD-476E-8A8E-2485812F4E5C}" },
                { CLSID = "{4203753F-8198-4E85-9924-6F8FF679F9FF}" },
				{ CLSID = "{RBK_250_275_AO_1SCH}" },					--RBK-250-275 AO-1SCH
				{ CLSID = "{RBK_500U_OAB_2_5RT}" },						--RBK-500U OAB-2.5RT
                { CLSID = "{37DCC01E-9E02-432F-B61D-10C166CA2798}" },
                { CLSID = "{D5435F26-F120-4FA3-9867-34ACE562EF1B}" },
				{ CLSID = "{7AEC222D-C523-425e-B714-719C0D1EB14D}" },
                { CLSID = "{BA565F89-2373-4A84-9502-A0E017D3A44A}" },
                { CLSID = "{E2C426E3-8B10-4E09-B733-9CDC26520F48}" },	--KAB-500Kr
				{ CLSID = "{KAB_500S_LOADOUT}" },						--KAB-500S
                { CLSID = "{40AA4ABE-D6EB-4CD6-AEFE-A1A0477B24AB}" },
                { CLSID = "{39821727-F6E2-45B3-B1F0-490CC8921D1E}" },	--KAB-1500L
				{ CLSID = "{KAB_1500LG_LOADOUT}" },						--KAB-1500LG-Pr
				{ CLSID = "{KAB_1500Kr_LOADOUT}" },						--KAB-1500Kr
                { CLSID = "{53BE25A4-C86C-4571-9BC0-47D668349595}" },	-- 6 * FAB-250
            }
        ),
        pylon(9, 0, -2.535000, -0.165000, 6.168000,
            {
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                loadout_R77,
            }
        ),
        pylon(10, 0, -1.943000, 0.173000, 7.280000,
            {
            },
            {
                { CLSID = "{FBC29BFE-3D24-4C64-B81D-941239D12249}" },
                { CLSID = "{44EE8698-89F9-48EE-AF36-5FD31896A82A}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B1}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B2}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B3}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B4}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B5}" },
                { CLSID = "{D3F65166-1AB8-490f-AF2F-2FB6E22568B6}" },
            }
        ),
    },
    {
        aircraft_task(CAP),
        aircraft_task(Escort),
        aircraft_task(FighterSweep),
        aircraft_task(Intercept),
        --aircraft_task(GAI),
        aircraft_task(AFAC),
        aircraft_task(SEAD),
        aircraft_task(AntishipStrike),
        aircraft_task(CAS),
        aircraft_task(PinpointStrike),
        aircraft_task(GroundAttack),
        aircraft_task(RunwayAttack),
    },
	aircraft_task(CAP)
);
