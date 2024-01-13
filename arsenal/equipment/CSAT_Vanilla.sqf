params ["_arsenalContainer"];
_crate = missionNamespace getVariable [_arsenalContainer , objNull];

_loadout = [
	"B_Carryall_ocamo","B_Carryall_oucamo","B_Carryall_mcamo","B_Carryall_khk","B_Carryall_cbr","B_AssaultPack_khk", "B_FieldPack_ocamo_Medic"
	,"B_FieldPack_cbr_LAT", "B_FieldPack_cbr_Repair", "B_Carryall_ocamo_Exp", "B_FieldPack_ocamo_AAR",
	"B_FieldPack_ocamo_ReconMedic"
];

//Populate with predefined items and whatever is already in the crate
[_crate,(_loadout), true] call BIS_fnc_addVirtualBackpackCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualItemCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualMagazineCargo;
[_crate,(_loadout), true] call BIS_fnc_addVirtualWeaponCargo;

true;