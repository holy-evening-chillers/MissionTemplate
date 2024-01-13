//Wait for players to be in the mission
sleep 15;

//makes a nice greeting text :)
private _now = date; // current date :) [year, month, day, hour, minute]

private _year = 	"Year"	call BIS_fnc_getParamValue;
private _month = 	"Month"	call BIS_fnc_getParamValue;
private _day = 		"Day" 	call BIS_fnc_getParamValue;

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

//Greeting to player :)
[missionName, worldName, format ["%1.%2.%3", _day, _month, _year]] spawn BIS_fnc_infoText;

true;