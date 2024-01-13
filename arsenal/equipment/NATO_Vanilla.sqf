params ["_arsenalContainer"];
_crate = missionNamespace getVariable [_arsenalContainer , objNull];

_loadout = [
	"U_B_CombatUniform_mcam","U_B_CombatUniform_mcam_tshirt","U_B_CombatUniform_mcam_vest","U_B_GhillieSuit","U_B_HeliPilotCoveralls","U_B_SpecopsUniform_sgg","U_B_PilotCoveralls","U_B_CTRG_1","U_B_CTRG_2","U_B_CTRG_3",
	"V_PlateCarrier1_rgr","V_PlateCarrier2_rgr","V_PlateCarrier3_rgr","V_PlateCarrierGL_rgr","V_PlateCarrier1_blk","V_PlateCarrierSpec_rgr","V_PlateCarrierL_CTRG","V_PlateCarrierH_CTRG",
	"H_HelmetB","H_HelmetB_camo","H_HelmetB_paint","H_HelmetB_light","H_Booniehat_mcamo","H_Booniehat_tan","H_HelmetB_plain_mcamo","H_HelmetB_plain_blk","H_HelmetSpecB","H_HelmetSpecB_paint1","H_HelmetSpecB_paint2","H_HelmetSpecB_paint2",
	"H_HelmetCrew_B","H_PilotHelmetFighter_B","H_MilCap_mcamo","H_Beret_02","H_Beret_Colonel","H_Watchcap_blk","H_Watchcap_khk","H_Watchcap_camo",
	"B_AssaultPack_rgr","B_AssaultPack_mcamo","B_Kitbag_rgr","B_Kitbag_mcamo","B_TacticalPack_blk","B_TacticalPack_mcamo",

	"launch_NLAW_F", "NLAW_F", "launch_B_Titan_F", "Titan_AA", "launch_Titan_F", "launch_B_Titan_short_F","launch_I_Titan_short_F","launch_Titan_short_F","Titan_AT", "Titan_AP",
	"srifle_LRR_F","srifle_LRR_SOS_F", "srifle_LRR_LRPS_F","7Rnd_408_Mag",
	"LMG_Mk200_F", "200Rnd_65x39_cased_Box", "200Rnd_65x39_cased_Box_Tracer","200Rnd_65x39_cased_Box_Red","200Rnd_65x39_cased_Box_Tracer_Red",
	"hgun_ACPC2_F", "9Rnd_45ACP_Mag",
	"srifle_EBR_F","20Rnd_762x51_Mag",
	"srifle_DMR_03_F", "srifle_DMR_03_tan_F", "srifle_DMR_03_multicam_F",
	"MMG_02_camo_F", "MMG_02_black_F", "MMG_02_sand_F", "130Rnd_338_Mag",
	"arifle_MXC_F", "arifle_MX_F", "arifle_MX_GL_F", "arifle_MX_SW_F", "arifle_MXM_F",
	"30Rnd_65x39_caseless_mag", "1Rnd_HE_Grenade_shell", "UGL_FlareWhite_F","UGL_FlareGreen_F","UGL_FlareRed_F","UGL_FlareYellow_F","UGL_FlareCIR_F","1Rnd_Smoke_Grenade_shell","1Rnd_SmokeRed_Grenade_shell",
	"1Rnd_SmokeGreen_Grenade_shell","1Rnd_SmokeYellow_Grenade_shell","1Rnd_SmokePurple_Grenade_shell","1Rnd_SmokeBlue_Grenade_shell","1Rnd_SmokeOrange_Grenade_shell","3Rnd_HE_Grenade_shell","3Rnd_UGL_FlareWhite_F",
	"3Rnd_UGL_FlareGreen_F","3Rnd_UGL_FlareRed_F","3Rnd_UGL_FlareYellow_F","3Rnd_UGL_FlareCIR_F","3Rnd_Smoke_Grenade_shell","3Rnd_SmokeRed_Grenade_shell","3Rnd_SmokeGreen_Grenade_shell","3Rnd_SmokeYellow_Grenade_shell",
	"3Rnd_SmokePurple_Grenade_shell","3Rnd_SmokeBlue_Grenade_shell","3Rnd_SmokeOrange_Grenade_shell",
	"SMG_01_F","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_tracer_green","30Rnd_45ACP_Mag_SMG_01_Tracer_Red","30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow","100Rnd_65x39_caseless_mag",

	"muzzle_snds_H","muzzle_snds_L","muzzle_snds_B","optic_Hamr","optic_Aco","optic_Aco_smg","optic_Holosight","optic_Holosight_smg","optic_SOS","acc_pointer_IR","optic_MRCO",
	"optic_NVS","optic_Nightstalker","optic_tws", "optic_tws_mg", "optic_DMS", "optic_LRPS",

	"U_B_T_Soldier_AR_F","U_B_T_Soldier_SL_F","U_B_T_Soldier_F","U_B_T_Soldier_F","V_PlateCarrier1_tna_F","V_PlateCarrier2_tna_F","H_HelmetB_tna_F","H_HelmetB_Enh_tna_F","H_HelmetB_Light_tna_F",

	"bipod_03_F_blk"
];

//Populate with predefined items and whatever is already in the crate
[_crate,(_loadout), true] call BIS_fnc_addVirtualBackpackCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualItemCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualMagazineCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualWeaponCargo;

true;

/*if (worldName == "TANOA") then {
	_primaryweapon = ["arifle_MX_Black_F","arifle_MX_khk_F"];
	_optic = _optic-["optic_Holosight","optic_Holosight_smg"]+["optic_Holosight_khk_F","optic_Holosight_smg_khk_F"];
}; */