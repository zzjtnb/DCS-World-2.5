--------------------------------
-- type values:
-- 3 - big caliber 14.5 and bigger
-- 9 - machineguns up to 12.7 (.50) - high priority targets are infantry, nonarmored units
-- 10 - AA machineguns - high priority targets are aircrafts, helicopters, light armored units

def_mg_LN = {
    type = 9, --machinegun
    distanceMin = 0,
    reactionTime = 0.5,
    reflection_limit = 0.22,
    connectorFire = true,
    sensor = {},
    PL = {},
}
set_recursive_metatable(def_mg_LN.sensor, GT_t.WSN_t[1]);


-- Launchers
--

-- M4 carabine
GT_t.LN_t.carabine_M4 = {name = "M4", display_name = _("M4")}
set_recursive_metatable(GT_t.LN_t.carabine_M4, def_mg_LN);
GT_t.LN_t.carabine_M4.distanceMax = 500
GT_t.LN_t.carabine_M4.max_trg_alt = 300
GT_t.LN_t.carabine_M4.PL[1] = {};
GT_t.LN_t.carabine_M4.PL[1].switch_on_delay = 3;
GT_t.LN_t.carabine_M4.PL[1].ammo_capacity = 30;
GT_t.LN_t.carabine_M4.PL[1].shell_name = {"5_56x45"};
GT_t.LN_t.carabine_M4.PL[1].shot_delay = 60/850; -- 850 rpm
GT_t.LN_t.carabine_M4.BR = { {pos = {1.2, 0, 0} } }

-- AK74 assault rifle
GT_t.LN_t.AK74 = {name = "AK_74", display_name = _("AK_74")}
set_recursive_metatable(GT_t.LN_t.AK74, def_mg_LN);
GT_t.LN_t.AK74.distanceMax = 500
GT_t.LN_t.AK74.max_trg_alt = 300
GT_t.LN_t.AK74.PL[1] = {};
GT_t.LN_t.AK74.PL[1].switch_on_time = 3;
GT_t.LN_t.AK74.PL[1].ammo_capacity = 30;
GT_t.LN_t.AK74.PL[1].portionAmmoCapacity = 30;
GT_t.LN_t.AK74.PL[1].reload_time = 5;
GT_t.LN_t.AK74.PL[1].shell_name = {"5_45x39"};
GT_t.LN_t.AK74.PL[1].shot_delay = 60/600; -- 600 rpm
GT_t.LN_t.AK74.BR = { {pos = {1.2, 0, 0} } }

--light machinegun M249 5.56x45
GT_t.LN_t.machinegun_M249 = {name = "M249", display_name = _("M249")}
set_recursive_metatable(GT_t.LN_t.machinegun_M249, def_mg_LN);
GT_t.LN_t.machinegun_M249.distanceMax = 700
GT_t.LN_t.machinegun_M249.max_trg_alt = 300
GT_t.LN_t.machinegun_M249.PL[1] = {};
GT_t.LN_t.machinegun_M249.PL[1].switch_on_delay = 15;
GT_t.LN_t.machinegun_M249.PL[1].ammo_capacity = 200;
GT_t.LN_t.machinegun_M249.PL[1].portionAmmoCapacity = 200;
GT_t.LN_t.machinegun_M249.PL[1].reload_time = 20;
GT_t.LN_t.machinegun_M249.PL[1].shell_name = {"5_56x45"};
GT_t.LN_t.machinegun_M249.PL[1].shot_delay = 60/850; -- 850 rpm
GT_t.LN_t.machinegun_M249.BR = { {pos = {1.2, 0, 0} } }

--.50 caliber M2 heavy machine gun
GT_t.LN_t.machinegun_12_7_M2 = {name = "M2_Browning", display_name = _("M2_Browning")}
set_recursive_metatable(GT_t.LN_t.machinegun_12_7_M2, def_mg_LN);
set_recursive_metatable(GT_t.LN_t.machinegun_12_7_M2.sensor, GT_t.WSN_t[2]);
GT_t.LN_t.machinegun_12_7_M2.distanceMax = 1200
GT_t.LN_t.machinegun_12_7_M2.max_trg_alt = 500
GT_t.LN_t.machinegun_12_7_M2.PL[1] = {}
GT_t.LN_t.machinegun_12_7_M2.PL[1].switch_on_delay = 12;
GT_t.LN_t.machinegun_12_7_M2.PL[1].ammo_capacity = 100;
GT_t.LN_t.machinegun_12_7_M2.PL[1].portionAmmoCapacity = 100;
GT_t.LN_t.machinegun_12_7_M2.PL[1].reload_time = 15;
GT_t.LN_t.machinegun_12_7_M2.PL[1].shell_name = { "M2_12_7_T"};
GT_t.LN_t.machinegun_12_7_M2.PL[1].shot_delay = 60/520; -- 450 - 575 rpm (M2HB ground vehicle variant)
for i=2,5 do
    GT_t.LN_t.machinegun_12_7_M2.PL[i] = {};
    set_recursive_metatable(GT_t.LN_t.machinegun_12_7_M2.PL[i], GT_t.LN_t.machinegun_12_7_M2.PL[1]);
end;
GT_t.LN_t.machinegun_12_7_M2.BR = { {pos = {1.4, 0, 0} } }

-- 12,7 мм пулемет (ДШК, НСВ "Утес")
GT_t.LN_t.machinegun_12_7_utes = {name = "12_7_MG", display_name = _("12_7_MG")}
set_recursive_metatable(GT_t.LN_t.machinegun_12_7_utes, def_mg_LN);
GT_t.LN_t.machinegun_12_7_utes.distanceMax = 1200;
GT_t.LN_t.machinegun_12_7_utes.max_trg_alt = 500;
set_recursive_metatable(GT_t.LN_t.machinegun_12_7_utes.sensor, GT_t.WSN_t[2]);
GT_t.LN_t.machinegun_12_7_utes.PL[1] = {};
GT_t.LN_t.machinegun_12_7_utes.PL[1].switch_on_delay = 12;
GT_t.LN_t.machinegun_12_7_utes.PL[1].ammo_capacity = 50;
GT_t.LN_t.machinegun_12_7_utes.PL[1].portionAmmoCapacity = 50;
GT_t.LN_t.machinegun_12_7_utes.PL[1].reload_time = 15;
GT_t.LN_t.machinegun_12_7_utes.PL[1].shell_name = { "Utes_12_7x108_T"};
GT_t.LN_t.machinegun_12_7_utes.PL[1].shot_delay = 60/750; -- 700 - 800 rpm
for i=2,6 do
    GT_t.LN_t.machinegun_12_7_utes.PL[i] = {};
    set_recursive_metatable(GT_t.LN_t.machinegun_12_7_utes.PL[i], GT_t.LN_t.machinegun_12_7_utes.PL[1]);
end;
GT_t.LN_t.machinegun_12_7_utes.BR = { {pos = {1.4, 0, 0} } }

-- ПКТ
GT_t.LN_t.PKT = {name = "7_62_PKT", display_name = _("7_62_PKT")}
set_recursive_metatable(GT_t.LN_t.PKT, def_mg_LN);
GT_t.LN_t.PKT.distanceMax = 1000
set_recursive_metatable(GT_t.LN_t.PKT.sensor, GT_t.WSN_t[4])
GT_t.LN_t.PKT.max_trg_alt = 500
GT_t.LN_t.PKT.PL[1] = {};
GT_t.LN_t.PKT.PL[1].switch_on_delay = 15;
GT_t.LN_t.PKT.PL[1].ammo_capacity = 250;
GT_t.LN_t.PKT.PL[1].portionAmmoCapacity = 250;
GT_t.LN_t.PKT.PL[1].reload_time = 15;
GT_t.LN_t.PKT.PL[1].shell_name = {"7_62x54"};
GT_t.LN_t.PKT.PL[1].shot_delay = 60/750; -- PKT 650-750 rpm
GT_t.LN_t.PKT.BR = { {pos = {1.2, 0, 0} } }

GT_t.LN_t.machinegun_7_62 = {name = "7_62_MG", display_name = _("7_62_MG")}
set_recursive_metatable(GT_t.LN_t.machinegun_7_62, def_mg_LN);
GT_t.LN_t.machinegun_7_62.distanceMax = 1000
GT_t.LN_t.machinegun_7_62.max_trg_alt = 800
GT_t.LN_t.machinegun_7_62.PL[1] = {};
GT_t.LN_t.machinegun_7_62.PL[1].switch_on_delay = 12;
GT_t.LN_t.machinegun_7_62.PL[1].ammo_capacity = 100;
GT_t.LN_t.machinegun_7_62.PL[1].portionAmmoCapacity = 100;
GT_t.LN_t.machinegun_7_62.PL[1].reload_time = 15;
GT_t.LN_t.machinegun_7_62.PL[1].shell_name = {"7_62x54"};
GT_t.LN_t.machinegun_7_62.PL[1].shot_delay = 60/750; -- PKT 650-750 rpm
GT_t.LN_t.machinegun_7_62.BR = { {pos = {1.2, 0, 0} } }

-- 7.62 machinegun for LAV, M2 Bradley, M6 Linebacker
GT_t.LN_t.machinegun_M240C = {name = "M240", display_name = _("M240")}
set_recursive_metatable(GT_t.LN_t.machinegun_M240C, def_mg_LN);
GT_t.LN_t.machinegun_M240C.distanceMax = 1000
GT_t.LN_t.machinegun_M240C.max_trg_alt = 500
GT_t.LN_t.machinegun_M240C.PL[1] = {};
GT_t.LN_t.machinegun_M240C.PL[1].ammo_capacity = 800;
GT_t.LN_t.machinegun_M240C.PL[1].portionAmmoCapacity = 800;
GT_t.LN_t.machinegun_M240C.PL[1].reload_time = 480;
GT_t.LN_t.machinegun_M240C.PL[1].shell_name = {"7_62x51"};
GT_t.LN_t.machinegun_M240C.PL[1].shot_delay = 60/850; -- 850 rpm
GT_t.LN_t.machinegun_M240C.BR = { {pos = {1.2, 0, 0} } }

-- german 7.62 machinegun for Leopard and Marder
GT_t.LN_t.machinegun_MG3 = {name = "MG3", display_name = _("MG3")}
set_recursive_metatable(GT_t.LN_t.machinegun_MG3, def_mg_LN);
GT_t.LN_t.machinegun_MG3.distanceMax = 1000
GT_t.LN_t.machinegun_MG3.max_trg_alt = 500
GT_t.LN_t.machinegun_MG3.PL[1] = {};
GT_t.LN_t.machinegun_MG3.PL[1].switch_on_delay = 20;
GT_t.LN_t.machinegun_MG3.PL[1].ammo_capacity = 200;
GT_t.LN_t.machinegun_MG3.PL[1].portionAmmoCapacity = 200;
GT_t.LN_t.machinegun_MG3.PL[1].shell_name = {"7_62x51"};
GT_t.LN_t.machinegun_MG3.PL[1].shot_delay = 60/1000; -- 1000 rpm
GT_t.LN_t.machinegun_MG3.PL[1].reload_time = 20;
GT_t.LN_t.machinegun_MG3.BR = { {pos = {1.2, 0, 0} } }

-- L94A1 7.62 chain gun for Warrior and Challenger 2
GT_t.LN_t.L94A1 = {name = "7_62_L94A1", display_name = _("7_62_L94A1")}
set_recursive_metatable(GT_t.LN_t.L94A1, def_mg_LN);
GT_t.LN_t.L94A1.distanceMax = 1000
GT_t.LN_t.L94A1.max_trg_alt = 500
GT_t.LN_t.L94A1.PL[1] = {};
GT_t.LN_t.L94A1.PL[1].ammo_capacity = 200; --2200 total
GT_t.LN_t.L94A1.PL[1].portionAmmoCapacity = 200
GT_t.LN_t.L94A1.PL[1].shell_name = {"7_62x51"};
GT_t.LN_t.L94A1.PL[1].shot_delay = 60/520; -- 520 rpm
GT_t.LN_t.L94A1.PL[1].switch_on_delay = 15;
GT_t.LN_t.L94A1.PL[1].reload_time = 15;
for i = 2, 11 do
	GT_t.LN_t.L94A1.PL[i] = {};
	set_recursive_metatable(GT_t.LN_t.L94A1.PL[i], GT_t.LN_t.L94A1.PL[1]);
end;
	
GT_t.LN_t.L94A1.BR = { {pos = {1.2, 0, 0} } }

-- 14.5mm for BRDM-2, BTR-70, 
GT_t.LN_t.automatic_gun_KPVT = {name = "KPVT", display_name = _("KPVT")}
set_recursive_metatable(GT_t.LN_t.automatic_gun_KPVT, def_mg_LN);
GT_t.LN_t.automatic_gun_KPVT.type = 12;
GT_t.LN_t.automatic_gun_KPVT.xc = 1.251
GT_t.LN_t.automatic_gun_KPVT.distanceMax = 1600
GT_t.LN_t.automatic_gun_KPVT.max_trg_alt = 1200
GT_t.LN_t.automatic_gun_KPVT.reactionTime = 1.8;
set_recursive_metatable(GT_t.LN_t.automatic_gun_KPVT.sensor, GT_t.WSN_t[2])
GT_t.LN_t.automatic_gun_KPVT.PL[1] = {}
GT_t.LN_t.automatic_gun_KPVT.PL[1].switch_on_delay = 20;
GT_t.LN_t.automatic_gun_KPVT.PL[1].ammo_capacity = 50;
GT_t.LN_t.automatic_gun_KPVT.PL[1].portionAmmoCapacity = 50;
GT_t.LN_t.automatic_gun_KPVT.PL[1].reload_time = 20;
GT_t.LN_t.automatic_gun_KPVT.PL[1].shell_name = {"KPVT_14_5_T"};
GT_t.LN_t.automatic_gun_KPVT.PL[1].shot_delay = 0.1; -- 600 rpm
for i=2,10 do
    GT_t.LN_t.automatic_gun_KPVT.PL[i] = {};
    set_recursive_metatable(GT_t.LN_t.automatic_gun_KPVT.PL[i], GT_t.LN_t.automatic_gun_KPVT.PL[1]);
end;
GT_t.LN_t.automatic_gun_KPVT.BR = { {pos = {1.6, 0.127, 0} } }

GT_t.LN_t.automatic_gun_25mm = {name = "M242_Bushmaster", display_name = _("M242_Bushmaster")}-- M242 'Bushmaster' for M2 Bradley, M6 Linebacker, LAV-25
set_recursive_metatable(GT_t.LN_t.automatic_gun_25mm, def_mg_LN);
GT_t.LN_t.automatic_gun_25mm.type = 12;
GT_t.LN_t.automatic_gun_25mm.distanceMin = 10
GT_t.LN_t.automatic_gun_25mm.distanceMax = 2500
GT_t.LN_t.automatic_gun_25mm.max_trg_alt = 1200
GT_t.LN_t.automatic_gun_25mm.reactionTime = 1.8;
set_recursive_metatable(GT_t.LN_t.automatic_gun_25mm.sensor, GT_t.WSN_t[11])
GT_t.LN_t.automatic_gun_25mm.PL[1] = {}
GT_t.LN_t.automatic_gun_25mm.PL[1].switch_on_delay = 0;
GT_t.LN_t.automatic_gun_25mm.PL[1].shell_name = {"M242_25_HE_M792"};
GT_t.LN_t.automatic_gun_25mm.PL[1].ammo_capacity = 230;
GT_t.LN_t.automatic_gun_25mm.PL[1].portionAmmoCapacity = 230;
GT_t.LN_t.automatic_gun_25mm.PL[1].reload_time = 800;
GT_t.LN_t.automatic_gun_25mm.PL[1].shot_delay = 60/200; -- hi-rate mode 200 rpm
--GT_t.LN_t.automatic_gun_25mm.PL[1].shot_delay_lofi = 60/100; -- lo-rate mode 100 rpm
GT_t.LN_t.automatic_gun_25mm.PL[2] = {};
set_recursive_metatable(GT_t.LN_t.automatic_gun_25mm.PL[2], GT_t.LN_t.automatic_gun_25mm.PL[1]);
GT_t.LN_t.automatic_gun_25mm.PL[2].ammo_capacity = 70;
GT_t.LN_t.automatic_gun_25mm.PL[2].portionAmmoCapacity = 70;
GT_t.LN_t.automatic_gun_25mm.PL[2].reload_time = 400;
GT_t.LN_t.automatic_gun_25mm.PL[2].shell_name = {"M242_25_AP_M791"};
GT_t.LN_t.automatic_gun_25mm.BR = { {pos = {2.7, 0, 0} } }


GT_t.LN_t.automatic_gun_2A42 = {name = "2A42", display_name = _("2A42")}; -- 2A42 30mm for BMP-2, etc
set_recursive_metatable(GT_t.LN_t.automatic_gun_2A42, def_mg_LN);
GT_t.LN_t.automatic_gun_2A42.type = 12;
GT_t.LN_t.automatic_gun_2A42.distanceMin = 10;
GT_t.LN_t.automatic_gun_2A42.distanceMax = 2000;
GT_t.LN_t.automatic_gun_2A42.max_trg_alt = 1200;
GT_t.LN_t.automatic_gun_2A42.reactionTime = 1.8;
set_recursive_metatable(GT_t.LN_t.automatic_gun_2A42.sensor, GT_t.WSN_t[4]);
GT_t.LN_t.automatic_gun_2A42.PL[1] = {};
GT_t.LN_t.automatic_gun_2A42.PL[1].ammo_capacity = 340;
GT_t.LN_t.automatic_gun_2A42.PL[1].portionAmmoCapacity = 340;
GT_t.LN_t.automatic_gun_2A42.PL[1].reload_time = 1200;
GT_t.LN_t.automatic_gun_2A42.PL[1].shell_name = {"2A42_30_HE"};
GT_t.LN_t.automatic_gun_2A42.PL[1].shot_delay = 0.109; -- 550 per minute
GT_t.LN_t.automatic_gun_2A42.PL[1].shot_delay_lofi = 60/300; -- 300 per minute
GT_t.LN_t.automatic_gun_2A42.PL[1].switch_on_delay = 0.5;
GT_t.LN_t.automatic_gun_2A42.PL[2] = {};
set_recursive_metatable(GT_t.LN_t.automatic_gun_2A42.PL[2], GT_t.LN_t.automatic_gun_2A42.PL[1]);
GT_t.LN_t.automatic_gun_2A42.PL[2].ammo_capacity = 160;
GT_t.LN_t.automatic_gun_2A42.PL[2].portionAmmoCapacity = 160;
GT_t.LN_t.automatic_gun_2A42.PL[2].reload_time = 600;
GT_t.LN_t.automatic_gun_2A42.PL[2].shell_name = {"2A42_30_AP"};

GT_t.LN_t.automatic_gun_2A72 = {name = "2A72", display_name = _("2A72")};  -- 2A72 30mm for BMP-3
set_recursive_metatable(GT_t.LN_t.automatic_gun_2A72, GT_t.LN_t.automatic_gun_2A42);
set_recursive_metatable(GT_t.LN_t.automatic_gun_2A72.sensor, GT_t.WSN_t[11]);
GT_t.LN_t.automatic_gun_2A72.PL[1].shot_delay = 60/340; -- 330 per minute
GT_t.LN_t.automatic_gun_2A72.PL[1].shot_delay_lofi = 60/340; -- 330 per minute
GT_t.LN_t.automatic_gun_2A72.PL[2].shot_delay = 60/340; -- 330 per minute
GT_t.LN_t.automatic_gun_2A72.PL[2].shot_delay_lofi = 60/340; -- 330 per minute


GT_t.LN_t.automatic_gun_2A38 = {name = "2A38", display_name = _("2A38")}; -- 2A38 30mm for 2K22 'Tunguska'
set_recursive_metatable(GT_t.LN_t.automatic_gun_2A38, def_mg_LN);
GT_t.LN_t.automatic_gun_2A38.type = 3;
GT_t.LN_t.automatic_gun_2A38.distanceMin = 10
GT_t.LN_t.automatic_gun_2A38.distanceMax = 3500
GT_t.LN_t.automatic_gun_2A38.max_trg_alt = 3000
GT_t.LN_t.automatic_gun_2A38.reactionTime = 3;
GT_t.LN_t.automatic_gun_2A38.reflection_limit = 0.10;
set_recursive_metatable(GT_t.LN_t.automatic_gun_2A38.sensor, GT_t.WSN_t[5])
GT_t.LN_t.automatic_gun_2A38.PL[1] = {}
GT_t.LN_t.automatic_gun_2A38.PL[1].ammo_capacity = 1936
GT_t.LN_t.automatic_gun_2A38.PL[1].portionAmmoCapacity = 1936
GT_t.LN_t.automatic_gun_2A38.PL[1].reload_time = 1536
GT_t.LN_t.automatic_gun_2A38.PL[1].shell_name = {"2A38_30_AP", "2A38_30_HE", "2A38_30_HE", "2A38_30_HE", "2A38_30_HE"}
GT_t.LN_t.automatic_gun_2A38.PL[1].shell_display_name = "30mm AP+HE";
GT_t.LN_t.automatic_gun_2A38.PL[1].shot_delay = 60/2250; -- 4500 rpm
GT_t.LN_t.automatic_gun_2A38.BR = { {pos = {3.478, 0, 0.95} }, {pos = {3.478, 0, -0.95} } }

GT_t.LN_t.automatic_gun_KDA = {name = "KDA_35mm", display_name = _("KDA_35mm")}; -- KDA 35mm for 'Gepard'
set_recursive_metatable(GT_t.LN_t.automatic_gun_KDA, def_mg_LN);
GT_t.LN_t.automatic_gun_KDA.type = 3;
GT_t.LN_t.automatic_gun_KDA.distanceMax = 4000;
GT_t.LN_t.automatic_gun_KDA.max_trg_alt = 3000;
GT_t.LN_t.automatic_gun_KDA.reactionTime = 3;
set_recursive_metatable(GT_t.LN_t.automatic_gun_KDA.sensor, GT_t.WSN_t[5]);
GT_t.LN_t.automatic_gun_KDA.PL[1] = {};
GT_t.LN_t.automatic_gun_KDA.PL[1].shot_delay = 60/550; -- 550 per minute for each barrel
GT_t.LN_t.automatic_gun_KDA.PL[1].ammo_capacity = 660;
GT_t.LN_t.automatic_gun_KDA.PL[1].portionAmmoCapacity = 660;
GT_t.LN_t.automatic_gun_KDA.PL[1].reload_time = 1800;
GT_t.LN_t.automatic_gun_KDA.PL[1].shell_name = {"KDA_35_HE"};

GT_t.LN_t.automatic_gun_L21A1 = {name = "L21A1_Rarden", display_name = _("L21A1_Rarden")}; -- L21A1 30mm Rarden for MCV 'Warrior'
set_recursive_metatable(GT_t.LN_t.automatic_gun_L21A1, def_mg_LN);
GT_t.LN_t.automatic_gun_L21A1.type = 12;
GT_t.LN_t.automatic_gun_L21A1.distanceMin = 10;
GT_t.LN_t.automatic_gun_L21A1.distanceMax = 2500;
GT_t.LN_t.automatic_gun_L21A1.max_trg_alt = 1000;
GT_t.LN_t.automatic_gun_L21A1.reactionTime = 1.8;
GT_t.LN_t.automatic_gun_L21A1.maxShootingSpeed = 0;
set_recursive_metatable(GT_t.LN_t.automatic_gun_L21A1.sensor, GT_t.WSN_t[4]);
GT_t.LN_t.automatic_gun_L21A1.PL[1] = {}; -- 3-shot bursts only
GT_t.LN_t.automatic_gun_L21A1.PL[1].switch_on_delay = 0.8;
GT_t.LN_t.automatic_gun_L21A1.PL[1].ammo_capacity = 3;
GT_t.LN_t.automatic_gun_L21A1.PL[1].portionAmmoCapacity = 3;
GT_t.LN_t.automatic_gun_L21A1.PL[1].reload_time = 5;
GT_t.LN_t.automatic_gun_L21A1.PL[1].feedSlot = 1;
GT_t.LN_t.automatic_gun_L21A1.PL[1].shell_name = {"L21A1_30_HE"};
GT_t.LN_t.automatic_gun_L21A1.PL[1].shot_delay = 0.66; --90 rpm
for i=2,22 do -- AP -- 66 total 22x3
    GT_t.LN_t.automatic_gun_L21A1.PL[i] = {}
    set_recursive_metatable(GT_t.LN_t.automatic_gun_L21A1.PL[i], GT_t.LN_t.automatic_gun_L21A1.PL[1]);
end;
for i=23,76 do -- HE -- 162 total 54x3
    GT_t.LN_t.automatic_gun_L21A1.PL[i] = {}
    set_recursive_metatable(GT_t.LN_t.automatic_gun_L21A1.PL[i], GT_t.LN_t.automatic_gun_L21A1.PL[1]);
    GT_t.LN_t.automatic_gun_L21A1.PL[i].shell_name = {"L14A2_30_APDS"};
	GT_t.LN_t.automatic_gun_L21A1.PL[i].feedSlot = 2;
end;

GT_t.LN_t.automatic_gun_RH202 = {name = "Rheinmetall_Rh202", display_name = _("Rheinmetall_Rh202")}; -- Rheinmetall Mk20 20 x 139 mm Rh202 automaticgun, 1000rpm, Marder
set_recursive_metatable(GT_t.LN_t.automatic_gun_RH202, def_mg_LN);
GT_t.LN_t.automatic_gun_RH202.type = 12;
GT_t.LN_t.automatic_gun_RH202.distanceMin = 10
GT_t.LN_t.automatic_gun_RH202.distanceMax = 1500
GT_t.LN_t.automatic_gun_RH202.max_trg_alt = 1000
GT_t.LN_t.automatic_gun_RH202.reactionTime = 1.8;
set_recursive_metatable(GT_t.LN_t.automatic_gun_RH202.sensor, GT_t.WSN_t[4])
GT_t.LN_t.automatic_gun_RH202.PL[1] = {} -- HE in tower
GT_t.LN_t.automatic_gun_RH202.PL[1].switch_on_delay = 2;
GT_t.LN_t.automatic_gun_RH202.PL[1].ammo_capacity = 417;
GT_t.LN_t.automatic_gun_RH202.PL[1].portionAmmoCapacity = 417;
GT_t.LN_t.automatic_gun_RH202.PL[1].reload_time = 1500;
GT_t.LN_t.automatic_gun_RH202.PL[1].shell_name = {"Rh202_20_HE"};
GT_t.LN_t.automatic_gun_RH202.PL[1].shot_delay = 0.06; -- 1000 rpm
GT_t.LN_t.automatic_gun_RH202.PL[1].shot_delay_lofi = 60/200; -- 200 rpm
GT_t.LN_t.automatic_gun_RH202.PL[1].feedSlot = 1;
GT_t.LN_t.automatic_gun_RH202.PL[2] = {} -- AP in tower
set_recursive_metatable(GT_t.LN_t.automatic_gun_RH202.PL[2], GT_t.LN_t.automatic_gun_RH202.PL[1]);
GT_t.LN_t.automatic_gun_RH202.PL[2].ammo_capacity = 117;
GT_t.LN_t.automatic_gun_RH202.PL[2].portionAmmoCapacity = 117;
GT_t.LN_t.automatic_gun_RH202.PL[2].reload_time = 500;
GT_t.LN_t.automatic_gun_RH202.PL[2].shell_name = {"Rh202_20_AP"};
GT_t.LN_t.automatic_gun_RH202.PL[2].feedSlot = 2;

GT_t.LN_t.automatic_gun_M168 = {name = "M61_Vulcan", display_name = _("M61_Vulcan")}; -- Ground variant of M61 aircraft gun for M163 Vulcan
set_recursive_metatable(GT_t.LN_t.automatic_gun_M168, def_mg_LN);
GT_t.LN_t.automatic_gun_M168.type = 3;
GT_t.LN_t.automatic_gun_M168.distanceMin = 10
GT_t.LN_t.automatic_gun_M168.distanceMax = 2000
GT_t.LN_t.automatic_gun_M168.max_trg_alt = 1500
GT_t.LN_t.automatic_gun_M168.reactionTime = 4
set_recursive_metatable(GT_t.LN_t.automatic_gun_M168.sensor, GT_t.WSN_t[5])
GT_t.LN_t.automatic_gun_M168.PL[1] = {};
GT_t.LN_t.automatic_gun_M168.PL[1].ammo_capacity = 1180;
GT_t.LN_t.automatic_gun_M168.PL[1].portionAmmoCapacity = 1180;
GT_t.LN_t.automatic_gun_M168.PL[1].reload_time = 1200;
GT_t.LN_t.automatic_gun_M168.PL[1].shell_name = {"M61_20_AP", "M61_20_HE"};
GT_t.LN_t.automatic_gun_M168.PL[1].shell_display_name = "20mm AP+HE";
GT_t.LN_t.automatic_gun_M168.PL[1].shot_delay = 60/3000;  -- 3000rpm hi-rate, 1000rpm lo-rate
GT_t.LN_t.automatic_gun_M168.PL[1].shot_delay_lofi = 60/1000;
GT_t.LN_t.automatic_gun_M168.BR = { {}, }

GT_t.LN_t.automatic_gun_2A14 = {name = "2A14_2", display_name = _("2A14_2")}; -- 23mm AA standard barrel for ZU-23, ZSU-23-4 Shilka, etc
set_recursive_metatable(GT_t.LN_t.automatic_gun_2A14, def_mg_LN);
GT_t.LN_t.automatic_gun_2A14.type = 3;
GT_t.LN_t.automatic_gun_2A14.distanceMax = 2500;
GT_t.LN_t.automatic_gun_2A14.max_trg_alt = 2000;
GT_t.LN_t.automatic_gun_2A14.reactionTime = 3 -- для ЗУ-23-2
set_recursive_metatable(GT_t.LN_t.automatic_gun_2A14.sensor, GT_t.WSN_t[3])
GT_t.LN_t.automatic_gun_2A14.PL[1] = {}
GT_t.LN_t.automatic_gun_2A14.PL[1].switch_on_delay = 10;
GT_t.LN_t.automatic_gun_2A14.PL[1].ammo_capacity = 100; -- for ZU-23: 2 standard boxes (1 on each side) by 50 rounds
GT_t.LN_t.automatic_gun_2A14.PL[1].portionAmmoCapacity = 100;
GT_t.LN_t.automatic_gun_2A14.PL[1].reload_time = 10;
GT_t.LN_t.automatic_gun_2A14.PL[1].shell_name = {"2A7_23_AP", "2A7_23_HE", "2A7_23_HE", "2A7_23_HE"};
GT_t.LN_t.automatic_gun_2A14.PL[1].shell_display_name = "23mm AP+HE";
GT_t.LN_t.automatic_gun_2A14.PL[1].shot_delay = 60/900; --1800 rpm
for i=2,5 do -- 500 rounds total
    GT_t.LN_t.automatic_gun_2A14.PL[i] = {};
    set_recursive_metatable(GT_t.LN_t.automatic_gun_2A14.PL[i], GT_t.LN_t.automatic_gun_2A14.PL[1]);
end
GT_t.LN_t.automatic_gun_2A14.BR = { {pos = {2.0, 0, -0.1}}, {pos = {2.0, 0, 0.1}} }

GT_t.LN_t.AG17 = {name = "AG17", display_name = _("AG17")};  -- automatic grenade launcher AG-17 for BMPT
set_recursive_metatable(GT_t.LN_t.AG17, def_mg_LN);
GT_t.LN_t.AG17.distanceMin = 10;
GT_t.LN_t.AG17.distanceMax = 1730;
GT_t.LN_t.AG17.max_trg_alt = 500;
GT_t.LN_t.AG17.PL[1] = {};
GT_t.LN_t.AG17.PL[1].switch_on_delay = 10;
GT_t.LN_t.AG17.PL[1].shell_name = {"VOG17"};
GT_t.LN_t.AG17.PL[1].ammo_capacity = 300; -- для БМПТ все в одной ленте
GT_t.LN_t.AG17.PL[1].shot_delay = 60/100; -- от 50-100 до 400 в/м
GT_t.LN_t.AG17.BR = { {pos = {0.2, 0.0, 0}}}


GT_t.LN_t.MK19 = {name = "Mk.19", display_name = _("Mk.19")};  -- automatic grenade launcher Mk.19 for AAV-7
set_recursive_metatable(GT_t.LN_t.MK19, def_mg_LN);
GT_t.LN_t.MK19.distanceMin = 10
GT_t.LN_t.MK19.distanceMax = 1600
GT_t.LN_t.MK19.max_trg_alt = 500
GT_t.LN_t.MK19.reactionTime = 1.8
GT_t.LN_t.MK19.PL[1] = {}
GT_t.LN_t.MK19.PL[1].shell_name = {"HEDPM430"};
GT_t.LN_t.MK19.PL[1].ammo_capacity = 48; -- for AAV7A1 (http://afvdb.50megs.com/usa/lvtp7.html)
GT_t.LN_t.MK19.PL[1].shot_delay = 60/200;
GT_t.LN_t.MK19.BR = { {pos = {0.4, 0.0, 0}}}

GT_t.LN_t.GSH_6_30K = {name = "GSh-6-30K", display_name = _("GSh-6-30K")}; -- ГШ-6-30К шестиствольный зенитный автомат (GSH-6-30K 6 barrel AA automatic gun)
set_recursive_metatable(GT_t.LN_t.GSH_6_30K, def_mg_LN);
GT_t.LN_t.GSH_6_30K.type = 3;
GT_t.LN_t.GSH_6_30K.distanceMin = 10
GT_t.LN_t.GSH_6_30K.distanceMax = 3500
GT_t.LN_t.GSH_6_30K.max_trg_alt = 2500
GT_t.LN_t.GSH_6_30K.reactionTime = 3
GT_t.LN_t.GSH_6_30K.reflection_limit = 0.10;
set_recursive_metatable(GT_t.LN_t.GSH_6_30K.sensor, GT_t.WSN_t[5]) 
GT_t.LN_t.GSH_6_30K.PL[1] = {}
GT_t.LN_t.GSH_6_30K.PL[1].ammo_capacity = 2000
GT_t.LN_t.GSH_6_30K.PL[1].shell_name = {"AK630_30_AP", "AK630_30_HE"}
GT_t.LN_t.GSH_6_30K.PL[1].shell_display_name = "30mm AP+HE";
GT_t.LN_t.GSH_6_30K.PL[1].shot_delay = 60/5500; -- 5500 rpm
GT_t.LN_t.GSH_6_30K.PL[1].reload_time = 1000000; -- never during the mission (ship autogun)
GT_t.LN_t.GSH_6_30K.BR = { {pos = {2, 0, 0} } }


-- Weapos Systems
--
GT_t.WS_t.AK630 = {name = "AK630", display_name = _("AK630")}; -- AK630 weapon system for Ships
GT_t.WS_t.AK630.angles_mech = {
                    {math.rad(180), math.rad(-180), math.rad(-12), math.rad(88),},
                    };
GT_t.WS_t.AK630.omegaY = math.rad(130);
GT_t.WS_t.AK630.omegaZ = math.rad(150);
GT_t.WS_t.AK630.pidY = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT_t.WS_t.AK630.pidZ = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT_t.WS_t.AK630.reference_angle_Z = 0
add_launcher(GT_t.WS_t.AK630, GT_t.LN_t.GSH_6_30K);

GT_t.WS_t.phalanx = {name = "Phalanx", display_name = _("Phalanx")}; -- Mark 15 CIWS Phalanx Block 1
GT_t.WS_t.phalanx.angles = {
                    {math.rad(150), math.rad(-150), math.rad(-25), math.rad(85)},-- jane's NWS
                    };
GT_t.WS_t.phalanx.omegaY = math.rad(115) -- Block 1B
GT_t.WS_t.phalanx.omegaZ = math.rad(116) -- Block 1B
GT_t.WS_t.phalanx.pidY = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT_t.WS_t.phalanx.pidZ = {p=300, i = 0.05, d = 10.0, inn = 1000};
GT_t.WS_t.phalanx.reference_angle_Z = 0
GT_t.WS_t.phalanx.LN = {}
GT_t.WS_t.phalanx.LN[1] = {}
GT_t.WS_t.phalanx.LN[1].type = 3
GT_t.WS_t.phalanx.LN[1].distanceMin = 0
GT_t.WS_t.phalanx.LN[1].distanceMax = 3600 -- effective shooting with 3600 meters
GT_t.WS_t.phalanx.LN[1].max_trg_alt = 2000
GT_t.WS_t.phalanx.LN[1].reflection_limit = 0.05
GT_t.WS_t.phalanx.LN[1].reactionTime = 1
GT_t.WS_t.phalanx.LN[1].beamWidth = math.rad(90);
GT_t.WS_t.phalanx.LN[1].sensor = {}
set_recursive_metatable(GT_t.WS_t.phalanx.LN[1].sensor, GT_t.WSN_t[5])
GT_t.WS_t.phalanx.LN[1].PL = {}
GT_t.WS_t.phalanx.LN[1].PL[1] = {}
GT_t.WS_t.phalanx.LN[1].PL[1].ammo_capacity = 1550;
GT_t.WS_t.phalanx.LN[1].PL[1].shell_name = {"M61_20_AP", "M61_20_HE"};
GT_t.WS_t.phalanx.LN[1].PL[1].shell_display_name = "20mm AP+HE";
GT_t.WS_t.phalanx.LN[1].PL[1].shot_delay = 60/4500 -- 3000rpm for Block 0, 4500rpm for Block 1
GT_t.WS_t.phalanx.LN[1].PL[1].reload_time = 1000000; -- never during the mission (ship autogun)
GT_t.WS_t.phalanx.LN[1].BR = { {pos = {3.478, 0, 0} }, }
