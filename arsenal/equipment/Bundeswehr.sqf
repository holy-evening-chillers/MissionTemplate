params ["_arsenalContainer"];
_crate = missionNamespace getVariable [_arsenalContainer , objNull];

_loadout = [
	"CUP_launch_M72A6_Loaded","CUP_M72A6_M",
	"CUP_srifle_G22_des","CUP_srifle_G22_wdl","CUP_srifle_AWM_wdl_SBPMII", "CUP_srifle_G22_wdl_SBPMII","CUP_optic_SB_3_12x50_PMII", "CUP_5Rnd_762x67_G22",

	"CUP_launch_MAAWS", "CUP_MAAWS_HEAT_M", "CUP_MAAWS_HEDP_M",
	"CUP_hgun_Glock17", "CUP_17Rnd_9x19_glock17", "CUP_acc_Glock17_Flashlight", "muzzle_snds_L",

	"CUP_arifle_G36A","CUP_arifle_G36A_camo","CUP_arifle_G36A_wdl","CUP_arifle_G36A_RIS","CUP_arifle_G36A_RIS_camo","CUP_arifle_G36A_RIS_wdl",
	"CUP_30Rnd_556x45_G36",
"CUP_30Rnd_556x45_G36_camo",
"CUP_30Rnd_556x45_G36_wdl",
"CUP_30Rnd_556x45_G36_hex",
"CUP_30Rnd_TE1_Red_Tracer_556x45_G36",
"CUP_30Rnd_TE1_Green_Tracer_556x45_G36",
"CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36",
"CUP_30Rnd_TE1_Red_Tracer_556x45_G36_camo",
"CUP_30Rnd_TE1_Green_Tracer_556x45_G36_camo",
"CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36_camo",
"CUP_30Rnd_TE1_Red_Tracer_556x45_G36_wdl",
"CUP_30Rnd_TE1_Green_Tracer_556x45_G36_wdl",
"CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36_wdl",
"CUP_30Rnd_TE1_Red_Tracer_556x45_G36_hex",
"CUP_30Rnd_TE1_Green_Tracer_556x45_G36_hex",
"CUP_30Rnd_TE1_Yellow_Tracer_556x45_G36_hex",
"CUP_30Rnd_556x45_XM8",
"CUP_30Rnd_TE1_Red_Tracer_556x45_XM8",
"CUP_30Rnd_TE1_Green_Tracer_556x45_XM8",
"CUP_30Rnd_TE1_Yellow_Tracer_556x45_XM8",
"CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag",
"CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag",
"CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag",
"CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag_camo",
"CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag_camo",
"CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag_camo",
"CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag_wdl",
"CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag_wdl",
"CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag_wdl",
"CUP_100Rnd_TE1_Red_Tracer_556x45_BetaCMag_hex",
"CUP_100Rnd_TE1_Green_Tracer_556x45_BetaCMag_hex",
"CUP_100Rnd_TE1_Yellow_Tracer_556x45_BetaCMag_hex",

"CUP_arifle_AG36","CUP_arifle_AG36_camo","CUP_arifle_AG36_wdl","CUP_arifle_G36A_AG36_RIS","CUP_arifle_G36A_AG36_RIS_camo","CUP_arifle_G36A_AG36_RIS_wdl",
"CUP_1Rnd_HE_M203",
"CUP_1Rnd_HEDP_M203",
"CUP_1Rnd_StarCluster_White_M203",
"CUP_1Rnd_StarCluster_Red_M203",
"CUP_1Rnd_StarCluster_Green_M203",
"CUP_1Rnd_StarFlare_White_M203",
"CUP_1Rnd_StarFlare_Red_M203",
"CUP_1Rnd_StarFlare_Green_M203",
"CUP_FlareWhite_M203",
"CUP_FlareGreen_M203",
"CUP_FlareRed_M203",
"CUP_FlareYellow_M203",
"CUP_1Rnd_Smoke_M203",
"CUP_1Rnd_SmokeRed_M203",
"CUP_1Rnd_SmokeGreen_M203",
"CUP_1Rnd_SmokeYellow_M203",
"1Rnd_HE_Grenade_shell",
"UGL_FlareWhite_F",
"UGL_FlareGreen_F",
"UGL_FlareRed_F",
"UGL_FlareYellow_F",
"UGL_FlareCIR_F",
"1Rnd_Smoke_Grenade_shell",
"1Rnd_SmokeRed_Grenade_shell",
"1Rnd_SmokeGreen_Grenade_shell",
"1Rnd_SmokeYellow_Grenade_shell",
"1Rnd_SmokePurple_Grenade_shell",
"1Rnd_SmokeBlue_Grenade_shell",
"1Rnd_SmokeOrange_Grenade_shell",

"CUP_arifle_G36K","CUP_arifle_G36K_camo","CUP_arifle_G36K_wdl","CUP_arifle_G36K_VFG","CUP_arifle_G36K_VFG_camo","CUP_arifle_G36K_VFG_wdl","CUP_arifle_G36K_RIS","CUP_arifle_G36K_RIS_camo","CUP_arifle_G36K_RIS_wdl",
"CUP_arifle_G36K_RIS_hex","CUP_arifle_G36K_AG36","CUP_arifle_G36K_AG36_camo","CUP_arifle_G36K_AG36_wdl","CUP_arifle_G36K_RIS_AG36","CUP_arifle_G36K_RIS_AG36_camo","CUP_arifle_G36K_RIS_AG36_wdl","CUP_arifle_G36K_RIS_AG36_hex",
"CUP_arifle_G36C","CUP_arifle_G36C_camo", "CUP_arifle_G36C_wdl","CUP_arifle_G36C_hex", "CUP_arifle_G36C_VFG", "CUP_arifle_G36C_VFG_camo", "CUP_arifle_G36C_VFG_wdl", "CUP_arifle_G36C_VFG_hex",

"CUP_arifle_MG36","CUP_arifle_MG36_camo","CUP_arifle_MG36_wdl","CUP_arifle_MG36_hex",

"CUP_optic_HoloDesert",
"CUP_muzzle_snds_G36_desert",

"CUP_lmg_MG3", "CUP_lmg_MG3_rail", "CUP_lmg_MG3_M145",
"CUP_120Rnd_TE4_LRT4_White_Tracer_762x51_Belt_M","CUP_120Rnd_TE4_LRT4_Red_Tracer_762x51_Belt_M","CUP_120Rnd_TE4_LRT4_Green_Tracer_762x51_Belt_M","CUP_120Rnd_TE4_LRT4_Yellow_Tracer_762x51_Belt_M",


"CUP_U_B_GER_Flecktarn_1",
"CUP_U_B_GER_Flecktarn_2",
"CUP_U_B_GER_Ghillie",
"CUP_U_B_GER_Tropentarn_1",
"CUP_U_B_GER_Tropentarn_2",
"CUP_V_B_GER_Vest_1",
"CUP_V_B_GER_Vest_2",
"CUP_V_B_GER_Carrier_Vest",
"CUP_V_B_GER_Carrier_Vest_2",
"CUP_V_B_GER_Carrier_Vest_3",
"CUP_V_B_GER_Carrier_Rig",
"CUP_H_Ger_Boonie_desert"
];

//Populate with predefined items and whatever is already in the crate
[_crate,(_loadout), true] call BIS_fnc_addVirtualBackpackCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualItemCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualMagazineCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualWeaponCargo;

true;