if(!isServer) exitWith{};

private _useVcom = 	"VcomUse" call BIS_fnc_getParamValue;
private _vcomArty = "VcomArty" call BIS_fnc_getParamValue;
private _vcomMines = "VcomMines" call BIS_fnc_getParamValue; 
private _vcomHearing = "VcomHearing" call BIS_fnc_getParamValue;
private _vcomStealing = "VcomStealing" call BIS_fnc_getParamValue;
private _vcomHelp = "VcomHelp" call BIS_fnc_getParamValue;
private _vcomDelay = "VcomDelay" call BIS_fnc_getParamValue;
private _vcomSkillChange = "VcomSkillChange" call BIS_fnc_getParamValue;
private _vcomCargo = "VcomCargo" call BIS_fnc_getParamValue;
private _vcomSupress = "VcomSupress" call BIS_fnc_getParamValue;

if (_useVcom == 0) then { Vcm_ActivateAI = false;} 
else {
	Vcm_ActivateAI = true;
	if (_vcomArty == 0) then { VCM_ARTYENABLE = false;} 
	else {VCM_ARTYENABLE = true;};

	if (_vcomStealing == 0) then { VCM_StealVeh = false;} 
	else {VCM_StealVeh = true;};

	if (_vcomSkillChange == 0) then { VCM_SKILLCHANGE = false;} 
	else {VCM_SKILLCHANGE = true;};

	if (_vcomCargo == 0) then { VCM_CARGOCHNG = false;} 
	else {VCM_CARGOCHNG = true;};

	if (_vcomSupress == 0) then { VCM_AISUPPRESS = false;} 
	else {VCM_AISUPPRESS = true;};

	VCM_MINECHANCE = _vcomMines;
	VCM_HEARINGDISTANCE = _vcomHearing;
	VCM_WARNDIST = _vcomHelp;
	VCM_WARNDELAY = _vcomDelay;
};

true;