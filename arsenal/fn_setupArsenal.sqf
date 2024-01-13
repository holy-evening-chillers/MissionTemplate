if (!isServer) exitWith {};

params ["_arsenalContainer"];
_crate = missionNamespace getVariable [_arsenalContainer , objNull];
["AmmoboxInit",[_crate,false,{true}]] spawn BIS_fnc_arsenal;
_loadout = 	"Loadouts"	call BIS_fnc_getParamValue;

/*
	title="Ausrüstung";
	values[] = {
		1, 2, 3,
		10, 11, 12, 13,
		21, 22, 23,
		100, 101,
		110, 111, 112, 113,
		200, 201,
		210, 211, 212, 213
	};
	texts[] = {
		"NATO", "NATO - Apex", "CTRG",
		"USA - MARPAT", "USA - UCP", "USA - OCP", "USA - Vietnam",
		"Bundeswehr - Flecktarn", "Bundeswehr - Tropen", "GM - Frühe Bundeswehr",
		"AAF", "LDV",
		"Guerilla", "PMC", "African Army", "Taliban",
		"CSAT", "CSAT - Apex",
		"RU - Dessert", "RU - Mountain", "RU - Summer", "GM - DDR"
	};
	default = 10;
*/

[_arsenalContainer] execVM "arsenal\equipment\Basic.sqf";

switch (_loadout) do {
//Vanilla Nato- TODO APEX
case 1: {[_arsenalContainer] execVM "arsenal\equipment\NATO_Vanilla.sqf";};
case 2: {[_arsenalContainer] execVM "arsenal\equipment\NATO_Vanilla.sqf";};
case 3: {[_arsenalContainer] execVM "arsenal\equipment\NATO_Vanilla.sqf";};

//RHS USA
case 10: {[_arsenalContainer] execVM "arsenal\equipment\USA.sqf";};
case 11: {[_arsenalContainer] execVM "arsenal\equipment\USA.sqf";};
case 12: {[_arsenalContainer] execVM "arsenal\equipment\USA.sqf";};
case 13: {[_arsenalContainer] execVM "arsenal\equipment\USA.sqf";};

//CUP Bundeswehr - TODO
case 21: {[_arsenalContainer] execVM "arsenal\equipment\Bundeswehr.sqf";};
case 22: {[_arsenalContainer] execVM "arsenal\equipment\Bundeswehr.sqf";};

//Vanilla AAF/LDF - TODO
case 100: {[_arsenalContainer] execVM "arsenal\equipment\Ind_Vanilla.sqf";};
case 101: {[_arsenalContainer] execVM "arsenal\equipment\Ind_Vanilla.sqf";};

//PMC/Guerilla - TODO
case 110: {[_arsenalContainer] execVM "arsenal\equipment\PMC.sqf";};
case 111: {[_arsenalContainer] execVM "arsenal\equipment\PMC.sqf";};

//Africa
case 112: {[_arsenalContainer] execVM "arsenal\equipment\Africa.sqf";};

//Taliban - TODO
case 113: {[_arsenalContainer] execVM "arsenal\equipment\Taliban.sqf";};

//Vanilla CSAT - TODO
case 200: {[_arsenalContainer] execVM "arsenal\equipment\CSAT_Vanilla.sqf";};
case 201: {[_arsenalContainer] execVM "arsenal\equipment\CSAT_Vanilla.sqf";};

//RHS Russia
case 210: {[_arsenalContainer] execVM "arsenal\equipment\RU.sqf";};
case 211: {[_arsenalContainer] execVM "arsenal\equipment\RU.sqf";};
case 212: {[_arsenalContainer] execVM "arsenal\equipment\RU.sqf";};

//GM BDR
case 23: {[_arsenalContainer] execVM "arsenal\equipment\BRD.sqf";};
//GM DDR
case 213: {[_arsenalContainer] execVM "arsenal\equipment\DDR.sqf";};

};