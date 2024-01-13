if (!isServer) exitWith {};

_blue = 	"BlueRelation"	call BIS_fnc_getParamValue;
_green = 	"GreenRelation"	call BIS_fnc_getParamValue;
_red = 		"RedRelation"	call BIS_fnc_getParamValue;

east setFriend [west, 1];

if(_blue == 3) then {
	west setFriend [east, 1];
	west setFriend [resistance, 1];};
if(_blue == 2) then {
	west setFriend [east, 0];
	west setFriend [resistance, 1];};
if(_blue == 1) then {
	west setFriend [east, 1];
	west setFriend [resistance, 0];};
if(_blue == 1) then {
	west setFriend [east, 0];
	west setFriend [resistance, 0];};

if(_green == 3) then {
	resistance setFriend [east, 1];
	resistance setFriend [west, 1];};
if(_green == 2) then {
	resistance setFriend [east, 1];
	resistance setFriend [west, 0];};
if(_green == 1) then {
	resistance setFriend [east, 0];
	resistance setFriend [west, 1];};
if(_green == 0) then {
	resistance setFriend [east, 0];
	resistance setFriend [west, 0];};

if(_red == 3) then {
	east setFriend [resistance, 1];
	east setFriend [west, 1];};
if(_red == 2) then {
	east setFriend [resistance, 1];
	east setFriend [west, 0];};
if(_red == 1) then {
	east setFriend [resistance, 0];
	east setFriend [west, 1];};
if(_red == 0) then {
	east setFriend [resistance, 0];
	east setFriend [west, 0];};

true;