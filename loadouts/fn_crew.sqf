 params ["_player"];
 _this = _player;

_this setVariable ["ACE_IsEngineer",2,true];

[_this] call HEC_fnc_removeLoadout;
//TODO Toolkit
//Loadout here!

[_this] call HEC_fnc_basicLoadout;