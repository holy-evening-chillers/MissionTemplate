﻿params ["_arsenalContainer"];
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
	"SMG_01_F","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_tracer_green","30Rnd_45ACP_Mag_SMG_01_Tracer_Red","30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow",

	"rhs_weap_ak103_1",
"rhs_weap_ak103_2",
"rhs_weap_ak103_gp25",
"rhs_weap_ak103_gp25_npz",
"rhs_weap_ak103_npz",
"rhs_weap_ak104",
"rhs_weap_ak104_npz",
"rhs_weap_ak105",
"rhs_weap_ak105_npz",
"rhs_weap_ak74m",
"rhs_weap_ak74m_2mag",
"rhs_weap_ak74m_2mag_camo",
"rhs_weap_ak74m_2mag_npz",
"rhs_weap_ak74m_camo",
"rhs_weap_ak74m_camo_folded",
"rhs_weap_ak74m_camo_npz",
"rhs_weap_ak74m_desert",
"rhs_weap_ak74m_desert_folded",
"rhs_weap_ak74m_desert_npz",
"rhs_weap_ak74m_folded",
"rhs_weap_ak74m_gp25",
"rhs_weap_ak74m_gp25_npz",
"rhs_weap_ak74m_npz",
"rhs_weap_ak74m_plummag",
"rhs_weap_ak74m_plummag_folded",
"rhs_weap_ak74m_plummag_npz",
"rhs_weap_akm",
"rhs_weap_akm_gp25",
"rhs_weap_akms",
"rhs_weap_akms_gp25",
"rhs_weap_asval",
"rhs_weap_asval_npz",
"rhs_30Rnd_545x39_AK",
"rhs_30Rnd_545x39_AK_no_tracers",
"rhs_30Rnd_545x39_AK_green",
"rhs_30Rnd_545x39_7N10_AK",
"rhs_30Rnd_545x39_7N22_AK",
"rhs_30Rnd_545x39_7U1_AK",
"rhs_45Rnd_545X39_7N22_AK",
"rhs_45Rnd_545X39_7N10_AK",
"rhs_45Rnd_545X39_AK_Green",
"rhs_45Rnd_545X39_AK",
"rhs_45Rnd_545X39_7U1_AK",
"rhs_30Rnd_762x39mm",
"rhs_30Rnd_762x39mm_tracer",
"rhs_30Rnd_762x39mm_89",
"rhs_30Rnd_762x39mm_U",
"rhs_20rnd_9x39mm_SP5",
"rhs_20rnd_9x39mm_SP6",
"rhs_weap_pkm",
"rhs_weap_pkp",
"rhs_100Rnd_762x54mmR",
"rhs_100Rnd_762x54mmR_green",
"rhs_weap_svdp",
"rhs_weap_svdp_npz",
"rhs_weap_svdp_wd",
"rhs_weap_svdp_wd_npz",
"rhs_weap_svds",
"rhs_weap_svds_npz",
"rhs_10Rnd_762x54mmR_7N1",
"rhs_weap_igla",
"rhs_weap_rpg26",
"rhs_weap_rpg7",
"rhs_weap_rshg2",
"rhs_rpg26_mag",
"rhs_rshg2_mag",
"rhs_rpg18_mag",
"rhs_rpg7_PG7VL_mag",
"rhs_rpg7_PG7VR_mag",
"rhs_rpg7_TBG7V_mag",
"rhs_rpg7_OG7V_mag",
"rhs_mag_9k32_rocket",
"rhs_mag_9k38_rocket",
"rhs_weap_makarov_pmm",
"rhs_weap_pya",
"rhs_mag_9x19_17",
"rhs_mag_9x18_12_57N181S",
"rhs_bipod",
"rhs_acc_tgpa",
"rhs_acc_pbs1",
"rhs_acc_dtk4short",
"rhs_acc_tgpv",
"rhs_acc_dtk4long",
"rhs_acc_dtk4screws",
"rhs_acc_muzzleFlash_dtk",
"rhs_acc_dtk3",
"rhs_acc_dtk1",
"rhs_acc_dtk",
"rhs_acc_dtk1l",
"rhs_acc_ak5",
"rhs_acc_1p29",
"rhs_acc_1p78",
"rhs_acc_pkas",
"rhs_acc_ekp1",
"rhs_acc_1p63",
"rhs_acc_ekp1b",
"rhs_acc_ekp1c",
"rhs_acc_ekp1d",
"rhs_acc_npz",
"rhs_acc_pso1m2",
"rhs_acc_pgo7v",
"rhs_acc_1pn93_1",
"rhs_acc_1pn93_2",

	"muzzle_snds_H","muzzle_snds_L","muzzle_snds_B","optic_Hamr","optic_Aco","optic_Aco_smg","optic_Holosight","optic_Holosight_smg","optic_SOS","acc_pointer_IR","optic_MRCO",
	"optic_NVS","optic_Nightstalker","optic_tws", "optic_tws_mg", "optic_DMS", "optic_LRPS",

	"U_NikosBody", "U_IG_Guerilla1_1", "U_IG_Guerilla2_1", "U_IG_Guerilla2_2", "U_IG_Guerilla2_3", "U_IG_Guerilla3_1", "U_IG_Guerilla3_2", "U_IG_leader", "U_BG_Guerilla1_1",
	"U_BG_Guerilla2_1", "U_BG_Guerilla2_2", "U_BG_Guerilla2_3", "U_BG_Guerilla3_1", "U_BG_Guerilla3_2", "U_BG_leader", "U_OG_Guerilla1_1", "U_OG_Guerilla2_1", "U_OG_Guerilla2_2", "U_OG_Guerilla2_3",
	"U_OG_Guerilla3_1", "U_OG_Guerilla3_2", "U_OG_leader",

	"V_BandollierB_khk", "V_BandollierB_cbr", "V_BandollierB_rgr", "V_BandollierB_blk", "V_BandollierB_oli", "V_Chestrig_khk", "V_Chestrig_rgr", "V_Chestrig_blk", "V_Chestrig_oli",
	"V_TacVest_khk", "V_TacVest_brn", "V_TacVest_oli", "V_TacVest_blk", "V_TacVest_camo",

	"H_Booniehat_khk", "H_Booniehat_grn", "H_Booniehat_tan", "H_Cap_blk", "H_Cap_khaki_specops_UK", "H_MilCap_oucamo", "H_MilCap_rucamo", "H_Bandanna_khk", "H_Bandanna_cbr", "H_Bandanna_sgg",
	"H_Bandanna_gry", "H_Bandanna_camo", "H_Shemag_khk", "H_Shemag_tan", "H_Shemag_olive", "H_ShemagOpen_khk", "H_ShemagOpen_tan", "H_Beret_blk"
];

//Populate with predefined items and whatever is already in the crate
[_crate,(_loadout), true] call BIS_fnc_addVirtualBackpackCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualItemCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualMagazineCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualWeaponCargo;

true;