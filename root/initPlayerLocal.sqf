/////////initPlayerLocal.sqf is only executed on player clients/////////
//////////////////////Feel free to edit below: /////////////////////////

//------------------------------------- respawn helper setup ---------------------------
//moves the player to position of object called "respawn_helper", if it's present (for Nimitz for example):
call {
	if (side player == east && !isNil "respawn_helper_east") exitWith {
		player addEventhandler ["RESPAWN",{
			player setPosATL (getPosATL respawn_helper_east);
			player setDir (getDir respawn_helper_east);
		}];
	};
	if (side player == independent && !isNil "respawn_helper_independent") exitWith {
		player addEventhandler ["RESPAWN",{
			player setPosATL (getPosATL respawn_helper_independent);
			player setDir (getDir respawn_helper_independent);
		}];
	};
	if (!isNil "respawn_helper") exitWith {
		player addEventhandler ["RESPAWN",{
			player setPosATL (getPosATL respawn_helper);
			player setDir (getDir respawn_helper);
		}];
	};
};

//------------------------------------------------------------------------------

//------------------------------------- blue setup ---------------------------
//put the WIP loadoutmenu on the board!
[hec_board_1] call HEC_fnc_addLoadoutMenu;

//add Rank Menu
[hec_computer_1] call HEC_fnc_addRankMenu;

//add parachute Action on flag
hec_flag_1 addAction ["<t color='#00ffff'>Fallschirmsprung - Solo (HALO)</t> ", "functions\fn_parajump.sqf", [false,2000,70], 6, true, true, "","alive _target"];
hec_flag_1 addAction ["<t color='#5eff00'>Fallschirmsprung - Gruppe (HALO)</t> ", "functions\fn_parajump.sqf", [true,2000,70], 6, true, true, "","alive _target"];
//------------------------------------------------------------------------------

//-------------------------------------    green setup ---------------------------
[hec_board_2] call HEC_fnc_addLoadoutMenu;
[hec_computer_2] call HEC_fnc_addRankMenu;
hec_flag_2 addAction ["<t color='#00ffff'>Fallschirmsprung - Solo (HALO)</t> ", "functions\fn_parajump.sqf", [false,2000,70], 6, true, true, "","alive _target"];
hec_flag_2 addAction ["<t color='#5eff00'>Fallschirmsprung - Gruppe (HALO)</t> ", "functions\fn_parajump.sqf", [true,2000,70], 6, true, true, "","alive _target"];
//------------------------------------------------------------------------------

//-------------------------------------    red setup ---------------------------
[hec_board_3] call HEC_fnc_addLoadoutMenu;
[hec_computer_3] call HEC_fnc_addRankMenu;
hec_flag_3 addAction ["<t color='#00ffff'>Fallschirmsprung - Solo (HALO)</t> ", "functions\fn_parajump.sqf", [false,2000,70], 6, true, true, "","alive _target"];
hec_flag_3 addAction ["<t color='#5eff00'>Fallschirmsprung - Gruppe (HALO)</t> ", "functions\fn_parajump.sqf", [true,2000,70], 6, true, true, "","alive _target"];
//------------------------------------------------------------------------------

//wait for player object to be available.
waitUntil {player == player};

//	https://forums.bohemia.net/forums/topic/210519-color-correction-theme-selections-colorblindness-post-process-effects/
//postprocessing
//"colorCorrections" ppEffectEnable true;
//"colorCorrections" ppEffectAdjust[ 1, 1.3, 0.001, [-0.11, -0.65, -0.76, 0.015],[-5, -1.74, 0.09, 0.86],[-1.14, -0.73, 1.14, -0.09]];
//"colorCorrections" ppEffectCommit 0;

//wait until player has launched into mission:
waitUntil {time > 0};
//place your code below:

//Give the player a loadout, and greet him
[player] call HEC_fnc_prepareLoadout;
[]call HEC_fnc_greeting;