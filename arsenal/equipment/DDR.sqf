params ["_arsenalContainer"];
_crate = missionNamespace getVariable [_arsenalContainer , objNull];

_loadout = [
	"gm_gc_army_uniform_soldier_80_blk","gm_gc_army_uniform_dress_80_gry","gm_gc_army_uniform_soldier_80_win",
	"gm_gc_army_uniform_soldier_80_str",

	"gm_gc_army_vest_80_at_str", "gm_gc_army_vest_80_belt_str", "gm_gc_army_vest_80_leader_str", "gm_gc_army_vest_80_lmg_str", "gm_gc_army_vest_80_rifleman_str", "gm_gc_bgs_vest_80_border_str",

	"gm_gc_army_headgear_hat_80_grn",
	"gm_gc_army_headgear_cap_80_gry", "gm_gc_army_headgear_crewhat_80_blk", "gm_gc_army_headgear_m56", "gm_gc_army_headgear_m56_cover_str", "gm_gc_army_headgear_m56_cover_win", "gm_gc_army_headgear_m56_net","gm_gc_bgs_headgear_hat_80_gry",

	"gm_gc_army_facewear_schm41m", "gm_gc_army_facewear_dustglasses",
	"gm_gc_army_backpack_80_at_str", "gm_gc_army_backpack_80_lmg_str", "gm_gc_army_backpack_80_assaultpack_str", "gm_gc_army_backpack_80_assaultpack_lmg_str", "gm_fagot_launcher_weaponBag",

	"gm_hmgpkm_prp", "gm_100rnd_762x54mm_b_t_t46_pk_grn","gm_100rnd_762x54mm_api_b32_pk_grn",
	"gm_lmgrpk74n_prp", "gm_30rnd_545x39mm_b_7n6_ak74_prp","gm_30rnd_545x39mm_b_t_7t3_ak74_prp","gm_30rnd_545x39mm_b_7n6_ak74_org","gm_30rnd_545x39mm_b_t_7t3_ak74_org","gm_45rnd_545x39mm_b_7n6_ak74_prp","gm_45rnd_545x39mm_b_t_7t3_ak74_prp","gm_45rnd_545x39mm_b_7n6_ak74_org",
	"gm_rpk_wud", "gm_lmgrpk_prp","gm_30rnd_762x39mm_b_m43_ak47_blk","gm_30rnd_762x39mm_b_t_m43_ak47_blk","gm_75rnd_762x39mm_b_m43_ak47_blk","gm_75rnd_762x39mm_b_t_m43_ak47_blk",
	"gm_mpiak74n_brn","gm_mpiaks74nk_brn","gm_mpiaks74n_brn", "gm_45rnd_545x39mm_b_t_7t3_ak74_org",
	"gm_mpikm72_brn", "gm_akm_wud", "gm_akmn_wud", "gm_mpikms72_brn",
	"gm_svd_wud", "gm_10Rnd_762x54mmR_ap_7n1_svd_blk","gm_10Rnd_762x54mmR_api_7bz3_svd_blk","gm_10Rnd_762x54mmR_b_t_7t2_svd_blk",

	"gm_rpg7_prp", "gm_1rnd_40mm_heat_pg7v_rpg7", "gm_1rnd_40mm_heat_pg7vl_rpg7",
	"gm_9k32m_oli", "gm_1Rnd_72mm_he_9m32m",

	"gm_mine_at_dm21","gm_mine_at_tm46", "gm_mine_ap_dm31", "gm_explosive_petn_charge", "gm_explosive_plnp_charge",
	"gm_feroz24_blk", "gm_c79a1_blk", "gm_pso1_gry", "gm_zfk4x25_blk", "gm_feroz2x17_pzf44_2_blk", "gm_feroz2x17_pzf84_blk", "gm_pgo7v_blk", "gm_suppressor_safloryt_blk"
];

//Populate with predefined items and whatever is already in the crate
[_crate,(_loadout), true] call BIS_fnc_addVirtualBackpackCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualItemCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualMagazineCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualWeaponCargo;

true;