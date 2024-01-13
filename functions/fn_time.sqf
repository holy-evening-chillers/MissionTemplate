///////////////////////////////////////////////////////Setup Time and Date//////////////////////////////////////////////////////////
if (!isServer) exitWith {};

_now = date; // current date :) [year, month, day, hour, minute]

_year = 	"Year"	call BIS_fnc_getParamValue;
_month = 	"Month"	call BIS_fnc_getParamValue;
_day = 		"Day" 	call BIS_fnc_getParamValue;
_hour = 	"Hour"	call BIS_fnc_getParamValue;
_minute = 	random 59;

//aktuelles Jahr!
if(_year == 99) then 
{
	_year = _now select 0;
};

//aktueller Monat!
if(_month == 99) then
{
	_month = _now select 1;
};

//heutiges Datum!
if(_day == 99) then
{
	_day = _now select 2;
};

//heutiges Datum!
if(_hour == 99) then
{
	_hour = _now select 3;
};

//setDate [1986, 2, 25, 16, 0]; // 4:00pm February 25, 1986
setDate [_year, _month, _day, _hour, _minute];

true;