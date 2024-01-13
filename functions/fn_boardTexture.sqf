/* sets the texture of an object if possible */

params["_board", "_texture"];

if (!isNil "_board" || !isNil "_texture") then {
	_board addEventHandler ["HandleDamage", {false}];
	_board allowDamage false;
	_board setObjectTextureGlobal [0,_texture];
};

true;