params ["_arsenalContainer"];
_crate = missionNamespace getVariable [_arsenalContainer , objNull];

_essentials = ["ACE_Cellphone", "ACE_Clacker", "ACE_M26_Clacker", "ACE_DefusalKit", "ACE_DeadManSwitch", "ACE_MapTools", "ACE_CableTie", "ACE_DAGR", "ACE_Flashlight_MX991", "ACE_Flashlight_KSF1", "ACE_Flashlight_XL50", "ACE_Kestrel4500", "ACE_UAVBattery", "ACE_wirecutter", "ACE_microDAGR", "ACE_RangeTable_82mm"
, "ItemWatch", "ItemRadio", "ItemCompass", "ItemGPS", "ItemMap", "MineDetector", "Binocular", "Rangefinder", "Laserdesignator", "FirstAidKit", "Medikit", "ToolKit", "B_UavTerminal", "O_UavTerminal", "I_UavTerminal", "NVGoggles"];

_grenades = ["SmokeShell", "ACE_M84", "ACE_Chemlight_HiWhite", "ACE_Chemlight_HiRed", "ACE_Chemlight_HiYellow", "ACE_Chemlight_IR", "1Rnd_HE_Grenade_shell",
	"HandGrenade",
	"MiniGrenade",
	"SmokeShellRed",
	"SmokeShellGreen",
	"SmokeShellBlue",
	"Chemlight_blue",
	"Chemlight_green",
	"Chemlight_red",
	"B_IR_Grenade",
	"SatchelCharge_Remote_Mag",
	"DemoCharge_Remote_Mag","1Rnd_HE_Grenade_shell", "UGL_FlareWhite_F","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareYellow_F","UGL_FlareCIR_F","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","3Rnd_HE_Grenade_shell","3Rnd_UGL_FlareWhite_F",
	"3Rnd_UGL_FlareGreen_F","3Rnd_UGL_FlareRed_F","3Rnd_UGL_FlareYellow_F","3Rnd_UGL_FlareCIR_F","3Rnd_Smoke_Grenade_shell","3Rnd_SmokeRed_Grenade_shell","3Rnd_SmokeGreen_Grenade_shell","3Rnd_SmokeYellow_Grenade_shell",
	"3Rnd_SmokePurple_Grenade_shell","3Rnd_SmokeBlue_Grenade_shell","3Rnd_SmokeOrange_Grenade_shell"];

_tfar = ["TFAR_anprc152", "TFAR_anprc148jem", "TFAR_fadak",
"TFAR_rf7800str", "TFAR_anprc154", "TFAR_pnr1000a",
"TFAR_rt1523g", "TFAR_rt1523g_big", "TFAR_rt1523g_black", "TFAR_rt1523g_fabric", "TFAR_rt1523g_green", "TFAR_rt1523g_rhs", "TFAR_rt1523g_sage"
, "TFAR_anprc155", "TFAR_anprc155_coyote", 
"TFAR_mr3000", "TFAR_mr3000_multicam", "TFAR_mr3000_rhs",
"TFAR_anarc210", "TFAR_anarc164", "TFAR_mr6000l"];

_medicMaterial = ["ACE_atropine", "ACE_fieldDressing", "ACE_elasticBandage", "ACE_quikclot",
"ACE_bloodIV", "ACE_bloodIV_500", "ACE_bloodIV_250", "ACE_bodyBag", "ACE_epinephrine", "ACE_morphine", "ACE_packingBandage", "ACE_personalAidKit",
"ACE_plasmaIV", "ACE_plasmaIV_500", "ACE_plasmaIV_250", "ACE_salineIV", "ACE_salineIV_500", "ACE_salineIV_250", "ACE_surgicalKit", "ACE_tourniquet"];

_availableGoggles = [
	"G_Combat", "G_Lowprofile", "G_Shades_Black", "G_Shades_Blue", "G_Shades_Green", "G_Shades_Red", "G_Sport_Blackred",
	"G_Sport_Blackyellow", "G_Squares_Tinted", "G_Tactical_Black", "G_Tactical_Clear", "G_Bandanna_blk",
	"G_Balaclava_blk", "G_Balaclava_combat", "G_Balaclava_oli", "G_Balaclava_TI_G_blk_F", "G_Balaclava_TI_blk_F","G_Balaclava_TI_G_tna_F","G_Balaclava_TI_tna_F",
"G_RegulatorMask_F", "G_AirPurifyingRespirator_01_F"
];

[_crate,( _tfar), true] spawn BIS_fnc_addVirtualBackpackCargo;
[_crate,( _tfar + _medicMaterial + _essentials + _availableGoggles), true] spawn BIS_fnc_addVirtualItemCargo;
[_crate,(_grenades), true] spawn BIS_fnc_addVirtualMagazineCargo;

true;