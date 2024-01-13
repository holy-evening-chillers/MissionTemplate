params ["_arsenalContainer"];
_crate = missionNamespace getVariable [_arsenalContainer , objNull];
//https://community.bistudio.com/wiki/Global_Mobilization_Weapons
//https://community.bistudio.com/wiki/Global_Mobilization_Characters#Uniforms

_loadout = [
	"gm_g3a3_oli", "gm_g3a4_oli", "gm_m16a1_blk", "gm_m16a2_blk", "gm_c7a1_oli", "gm_20rnd_762x51mm_b_t_dm21_g3_blk", "gm_20rnd_762x51mm_b_t_dm21a1_g3_blk",
	 "gm_20rnd_762x51mm_b_t_dm21a2_g3_blk", "gm_20rnd_762x51mm_b_dm111_g3_blk", "gm_20rnd_762x51mm_b_dm41_g3_blk", "gm_20rnd_762x51mm_ap_dm151_g3_blk", "gm_20rnd_762x51mm_b_t_dm21_g3_des",
"gm_20rnd_762x51mm_b_t_dm21a1_g3_des", "gm_20rnd_762x51mm_b_t_dm21a2_g3_des", "gm_20rnd_762x51mm_b_dm111_g3_des", "gm_20rnd_762x51mm_b_dm41_g3_des", "gm_20rnd_762x51mm_ap_dm151_g3_des", "gm_1rnd_67mm_heat_dm22a1_g3", 
"gm_20Rnd_556x45mm_b_M855_stanag_gry", "gm_20Rnd_556x45mm_b_t_M856_stanag_gry", "gm_30Rnd_556x45mm_b_M855_stanag_gry", "gm_30Rnd_556x45mm_b_t_M856_stanag_gry", 

"gm_mg3_blk", "gm_120rnd_762x51mm_b_t_dm21_mg3_grn", "gm_120rnd_762x51mm_b_t_dm21a1_mg3_grn", "gm_120rnd_762x51mm_b_t_dm21a2_mg3_grn", "gm_mp2a1_blk", "gm_32rnd_9x19mm_b_dm51_mp2_blk", "gm_32rnd_9x19mm_b_dm11_mp2_blk",

"gm_mp5a2_blk", "gm_30rnd_9x19mm_b_dm51_mp5_blk", "gm_30rnd_9x19mm_b_dm11_mp5_blk", "gm_30rnd_9x19mm_b_dm51_mp5a3_blk", "gm_30rnd_9x19mm_b_dm11_mp5a3_blk",

"gm_p1_blk", "gm_8rnd_9x19mm_b_dm11_p1_blk","gm_8rnd_9x19mm_b_dm51_p1_blk",
"gm_pzf44_2_oli", "gm_1rnd_44x537mm_heat_dm32_pzf44_2",
"gm_pzf84_oli", "gm_1rnd_84x245mm_heat_t_dm12_carlgustaf", "gm_1rnd_84x245mm_heat_t_dm12a1_carlgustaf", "gm_1rnd_84x245mm_heat_t_dm22_carlgustaf", "gm_1rnd_84x245mm_heat_t_dm32_carlgustaf", "gm_1rnd_84x245mm_illum_dm16_carlgustaf",
"gm_fim43_oli", "gm_1Rnd_70mm_he_m585_fim43",

"gm_mine_at_dm21","gm_mine_at_tm46", "gm_mine_ap_dm31", "gm_explosive_petn_charge", "gm_explosive_plnp_charge",
"gm_feroz24_blk", "gm_c79a1_blk", "gm_pso1_gry", "gm_zfk4x25_blk", "gm_feroz2x17_pzf44_2_blk", "gm_feroz2x17_pzf84_blk", "gm_pgo7v_blk", "gm_suppressor_safloryt_blk",

"gm_ge_army_uniform_crew_80_oli","gm_ge_army_uniform_soldier_80_oli","gm_ge_army_uniform_soldier_80_ols","gm_ge_army_uniform_soldier_parka_80_oli","gm_ge_army_uniform_soldier_parka_80_ols","gm_ge_army_uniform_soldier_parka_80_win","gm_ge_bgs_uniform_soldier_80_smp",
"gm_ge_army_vest_80_bag","gm_ge_army_vest_80_belt","gm_ge_army_vest_80_crew","gm_ge_army_vest_80_demolition","gm_ge_army_vest_80_leader","gm_ge_army_vest_80_machinegunner","gm_ge_army_vest_80_medic","gm_ge_army_vest_80_rifleman",
"gm_ge_headgear_hat_80_gry","gm_ge_headgear_hat_80_oli","gm_ge_headgear_headset_crew_oli",  "gm_ge_headgear_m62_cover_win", "gm_ge_headgear_m62_net","gm_ge_headgear_m62", "gm_ge_headgear_crewhat_80_blk", 
"gm_ge_headgear_beret_mrb", "gm_ge_headgear_beret_grn", "gm_ge_headgear_beret_red", "gm_ge_headgear_beret_bdx",
"gm_ge_facewear_m65",
"gm_ge_army_backpack_80_oli", "gm_ge_backpack_satchel_80_blk", "gm_ge_backpack_satchel_80_san",

"gm_milan_launcher_weaponBag"
];

//Populate with predefined items and whatever is already in the crate
[_crate,(_loadout), true] call BIS_fnc_addVirtualBackpackCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualItemCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualMagazineCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualWeaponCargo;

true;