/* Author: Schneeflocke

Dependent on player variable, loadouts will be set.
 */
params ["_player"];

//split playerstring, so only the prefix is there!
_playerVariable = str _player;
_splitArray = [_playerVariable, "_"] call BIS_fnc_splitString;
_playerRole = _splitArray select 0;

switch (_playerRole) do {
case "opz": {
	[_player] call HEC_fnc_opz;};
case "zeus": {
	[_player] call HEC_fnc_opz;};
case "sql": {
	[_player] call HEC_fnc_sql;};
case "ftl": {
	[_player] call HEC_fnc_ftl;};
case "lmg": {
	[_player] call HEC_fnc_lmg;};
case "ulg": {
	[_player] call HEC_fnc_grenadier;};
case "rfm": {
	[_player] call HEC_fnc_rifleman;};
case "mmg": {
	[_player] call HEC_fnc_mmg;};
case "med": {
	[_player] call HEC_fnc_medic;};
case "pilot": {
	[_player] call HEC_fnc_pilot;};
case "crew": {
	[_player] call HEC_fnc_crew;};
case "sniper": {
	[_player] call HEC_fnc_sniper;};
};