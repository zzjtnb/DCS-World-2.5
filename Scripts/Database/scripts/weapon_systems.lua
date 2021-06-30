GT_t.WS_t._2A28_GROM = {} -- turret for BMD-1, BMP-1. 73mm gun + machinegun + ATGM MALUTKA
GT_t.WS_t._2A28_GROM.angles = {
                    {math.rad(180), math.rad(-180), math.rad(-4), math.rad(33)},
                    };
GT_t.WS_t._2A28_GROM.drawArgument1 = 0
GT_t.WS_t._2A28_GROM.drawArgument2 = 1
GT_t.WS_t._2A28_GROM.omegaY = math.rad(35)
GT_t.WS_t._2A28_GROM.omegaZ = math.rad(15)
GT_t.WS_t._2A28_GROM.reference_angle_Y = 0
GT_t.WS_t._2A28_GROM.reference_angle_Z = math.rad(10)

__LN = add_launcher(GT_t.WS_t._2A28_GROM, GT_t.LN_t.tank_gun_2A28);

__LN = add_launcher(GT_t.WS_t._2A28_GROM, GT_t.LN_t.Malutka);

__LN = add_launcher(GT_t.WS_t._2A28_GROM, GT_t.LN_t.machinegun_7_62);
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[2]);
__LN.fireAnimationArgument = 45;
GT_t.WS_t._2A28_GROM.LN[1].customViewPoint = { "_1PN22M1/_1PN22M1", {0.01, 0.0, 0.0}};
GT_t.WS_t._2A28_GROM.LN[1].sightMasterMode = 1
GT_t.WS_t._2A28_GROM.LN[1].sightIndicationMode = 1
GT_t.WS_t._2A28_GROM.LN[2].customViewPoint = { "_1PN22M1/_1PN22M1", {0.01, 0.0, 0.0}};
GT_t.WS_t._2A28_GROM.LN[2].sightMasterMode = 1
GT_t.WS_t._2A28_GROM.LN[2].sightIndicationMode = 1
GT_t.WS_t._2A28_GROM.LN[3].secondary = true;


GT_t.WS_t.RPG = {}
GT_t.WS_t.RPG.center = 'POINT_TOWER'
GT_t.WS_t.RPG.angles = {
                    {math.rad(45), math.rad(-45), math.rad(-10), math.rad(18)},
                    };
GT_t.WS_t.RPG.drawArgument1 = 0
GT_t.WS_t.RPG.drawArgument2 = 1
GT_t.WS_t.RPG.reference_angle_Y = 0
GT_t.WS_t.RPG.reference_angle_Z = 0
__LN = add_launcher(GT_t.WS_t.RPG, GT_t.LN_t.RPG);
__LN.distanceMin = 50;
__LN.distanceMax = 500;
__LN.connectorFire = false;

GT_t.WS_t.KPVT_BTR = {} -- turret for BTR-70, BTR-80, BRDM-2
GT_t.WS_t.KPVT_BTR.angles = {
                    {math.rad(180), math.rad(-180), math.rad(-5), math.rad(30)},
                    };
GT_t.WS_t.KPVT_BTR.drawArgument1 = 0
GT_t.WS_t.KPVT_BTR.drawArgument2 = 1
GT_t.WS_t.KPVT_BTR.omegaY = math.rad(25)
GT_t.WS_t.KPVT_BTR.omegaZ = math.rad(10)
GT_t.WS_t.KPVT_BTR.reference_angle_Y = 0
GT_t.WS_t.KPVT_BTR.reference_angle_Z = math.rad(10)
GT_t.WS_t.KPVT_BTR.pointer = 'POINT_SIGHT'
GT_t.WS_t.KPVT_BTR.cockpit =  {"_1PZ-2/_1PZ-2", {0.0, 0.0, 0.0 }}
__LN = add_launcher(GT_t.WS_t.KPVT_BTR, GT_t.LN_t.automatic_gun_KPVT);
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;

__LN = add_launcher(GT_t.WS_t.KPVT_BTR, GT_t.LN_t.PKT);
for i = 2, 8 do
	__LN.PL[i] = {}
	set_recursive_metatable(__LN.PL[i], __LN.PL[1]);
end
set_recursive_metatable(__LN.sensor, GT_t.WSN_t[2]);
__LN.fireAnimationArgument = 45;
__LN.sightMasterMode = 1;
__LN.sightIndicationMode = 1;


GT_t.WS_t.ZU_23 = {}
GT_t.WS_t.ZU_23.center = 'CENTER_TOWER'
GT_t.WS_t.ZU_23.omegaY = math.rad(50);
GT_t.WS_t.ZU_23.omegaZ = math.rad(60);
GT_t.WS_t.ZU_23.angles = {
                    {math.rad(180), math.rad(-180), -0.1, 1.48173},
                    };
GT_t.WS_t.ZU_23.drawArgument1 = 0
GT_t.WS_t.ZU_23.drawArgument2 = 1
GT_t.WS_t.ZU_23.reference_angle_Z = math.rad(30)
GT_t.WS_t.ZU_23.pidY = {p=100,i=0.5,d=9, inn = 10};
GT_t.WS_t.ZU_23.pidZ = {p=100,i=0.5,d=9, inn = 10};

__LN = add_launcher(GT_t.WS_t.ZU_23, GT_t.LN_t.automatic_gun_2A14);
__LN.customViewPoint = { "genericAAA", {0.05, 0.0, 0.0}};
__LN.fireAnimationArgument = 23;
__LN.BR = {
            {connector_name = 'POINT_GUN_01'},
            {connector_name = 'POINT_GUN_02'},
        };
__LN = nil;
