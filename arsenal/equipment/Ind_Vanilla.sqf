params ["_arsenalContainer"];
_crate = missionNamespace getVariable [_arsenalContainer , objNull];

_loadout = [
	"U_I_CombatUniform","U_I_CombatUniform_tshirt", "U_I_CombatUniform_shortsleeve", "U_I_pilotCoveralls", "U_I_HeliPilotCoveralls", "U_I_GhillieSuit", "U_I_OfficerUniform",
	"V_PlateCarrierIA1_dgtl", "V_PlateCarrierIA2_dgtl", "V_PlateCarrierIAGL_dgtl",
	"H_HelmetIA", "H_HelmetIA_net", "H_HelmetIA_camo", "H_PilotHelmetHeli_I", "H_CrewHelmetHeli_I", "H_MilCap_dgtl", 

	"launch_NLAW_F", "NLAW_F", "launch_B_Titan_F", "Titan_AA", "launch_Titan_F", "launch_B_Titan_short_F","launch_I_Titan_short_F","launch_Titan_short_F","Titan_AT", "Titan_AP",
	"arifle_Mk20_F","30Rnd_556x45_Stanag","30Rnd_556x45_Stanag_Tracer_Red","30Rnd_556x45_Stanag_Tracer_Green","30Rnd_556x45_Stanag_Tracer_Yellow","30Rnd_556x45_Stanag_red","30Rnd_556x45_Stanag_green",
	"arifle_Mk20_GL_F",
	"LMG_Mk200_F","200Rnd_65x39_cased_Box","200Rnd_65x39_cased_Box_Tracer","200Rnd_65x39_cased_Box_Red","200Rnd_65x39_cased_Box_Tracer_Red",
	"arifle_Mk20C_F",
	"arifle_Mk20_GL_F",
	"srifle_EBR_MRCO_LP_BI_F","20Rnd_762x51_Mag",
	
	"SMG_01_F","30Rnd_45ACP_Mag_SMG_01","30Rnd_45ACP_Mag_SMG_01_tracer_green","30Rnd_45ACP_Mag_SMG_01_Tracer_Red","30Rnd_45ACP_Mag_SMG_01_Tracer_Yellow",

	"muzzle_snds_H","muzzle_snds_L","muzzle_snds_B","optic_Hamr","optic_Aco","optic_Aco_smg","optic_Holosight","optic_Holosight_smg","optic_SOS","acc_pointer_IR","optic_MRCO",
	"optic_NVS","optic_Nightstalker","optic_tws", "optic_tws_mg", "optic_DMS", "optic_LRPS",

	"bipod_03_F_blk"
];

//Populate with predefined items and whatever is already in the crate
[_crate,(_loadout), true] call BIS_fnc_addVirtualBackpackCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualItemCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualMagazineCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualWeaponCargo;

true;