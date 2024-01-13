 params ["_player"];
 _this = _player;

//medic
for "_i" from 1 to 2 do {_this addItem "ACE_tourniquet";};
for "_i" from 1 to 2 do {_this addItem "ACE_morphine";};
for "_i" from 1 to 2 do {_this addItem "ACE_epinephrine";};
for "_i" from 1 to 10 do {_this addItem "ACE_elasticBandage";};
_this addItem"ACE_salineIV_500";

//grenades
for "_i" from 1 to 2 do {_this addItem "SmokeShell";};
for "_i" from 1 to 2 do {_this addItem "HandGrenade";};
_this addItem "Chemlight_green";

//ace
_this addItem"ACE_CableTie";
_this addItem"ACE_MapTools";
_this addItem"ACE_Flashlight_MX991";
_this addItem "sc_dogtag";

//ctab
_this addItem "ItemAndroid";

//basicItems
_this linkItem "ItemMap";
_this linkItem "ItemCompass";
_this linkItem "ItemWatch";
_this linkItem "TFAR_anprc152_1";
_this linkItem "ItemGPS";
_this addWeapon "Binocular";

_time = daytime;
if(_time >= 20 or _time <= 4) then {
	_this linkItem "NVGoggles";
};