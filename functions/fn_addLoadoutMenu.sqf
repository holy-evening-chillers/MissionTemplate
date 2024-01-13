/*
Author: Schneeflocke

WIP Solution, to get a loadout dialog on provided object
TODO: ace menu or a loadout menu

 */

if(!hasInterface) exitWith{};

params["_target"];

_target addAction ["Loadout: Offizier", { [player] call HEC_fnc_opz; }];
_target addAction ["Loadout: Squadleader", { [player] call HEC_fnc_sql; }];
_target addAction ["Loadout: Fireteamleader", { [player] call HEC_fnc_ftl; }];
_target addAction ["Loadout: Light Machine Gunner", { [player] call HEC_fnc_lmg; }];
_target addAction ["Loadout: Grenadier", { [player] call HEC_fnc_grenadier; }];
_target addAction ["Loadout: Rifleman AT", { [player] call HEC_fnc_rifleman; }];
_target addAction ["Loadout: Medic", { [player] call HEC_fnc_medic; }];
_target addAction ["Loadout: Pilot", { [player] call HEC_fnc_pilot; }];


true;
//
// [_target, 0, ["ACE_MainActions"],
// 	["HEC_fnc_opz", "Offizier Loadout", "", player, {true}] call ace_interact_menu_fnc_createAction] call ace_interact_menu_fnc_addActionToObject;

// case "mmg": {
// 	[_player] call HEC_fnc_mmg;};
// case "pilot": {
// 	[_player] call HEC_fnc_pilot;};
// case "crew": {
// 	[_player] call HEC_fnc_crew;};
// case "sniper": {
// 	[_player] call HEC_fnc_sniper;};
// };