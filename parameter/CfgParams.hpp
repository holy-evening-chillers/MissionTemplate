class dummy_settings_game {
	title = "---------------------- Game Settings ----------------------";
	values[] = {-99999};
	default = -99999;
	texts[] = {""};
};
class BlueRelation
{
	title="Mit welcher Seite soll BLUFOR verbündet sein?";
	values[]  = {3,2,1,0};
	texts[] = {"Sowohl mit OPFOR, als auch mit GREENFOR","Mit GREENFOR","Mit OPFOR","Mit keiner"};
	default = 0;
};
class GreenRelation
{
	title="Mit welcher Seite soll GREENFOR verbündet sein?";
	values[]  = {3,2,1,0};
	texts[] = {"Sowohl mit OPFOR, als auch mit BLUFOR","Mit OPFOR","Mit BLUFOR","Mit keiner"};
	default = 0;
};
class RedRelation
{
	title="Mit welcher Seite soll OPFOR verbündet sein?";
	values[]  = {3,2,1,0};
	texts[] = {"Sowohl mit BLUEFOR, als auch mit GREENFOR","Mit GREENFOR","Mit BLUFOR","Mit keiner"};
	default = 0;
};
// class Civilians
// {
// 	title="Sollen automatisch Zivilisten gespawnt werden? (mapabhängige Zivilisten, nur server-/HC-seitig, nur in der Nähe von Spielern, werden automatisch gelöscht)";
// 	values[] = {3,2,1,0};
// 	texts[] = {"Fahrzeuge und Fußgänger","Nur Fahrzeuge","Nur Fußgänger","Nein"};
// 	default = 0;
// };
// class EngineArtillery
// {
// 	title="Soll der Artillerie-Computer deaktiviert werden?";
// 	values[] = {1,0};
// 	texts[] = {"Ja","Nein"};
// 	default = 0;
// };
class dummy_environment {
	title = "---------------------- Umweltparameter ----------------------";
	values[] = {-99999};
	default = -99999;
	texts[] = {""};
};
class Year
{
	title="Ära";
	values[] = {1973, 1985, 1991, 2008, 2013, 2015, 2020, 2035, 99};
	texts[] = {"Vietnam", "Kalter Krieg", "Desert Storm", "Afghanistan/ Irak", "Syrien Bürgerkrieg", "Ukraine Bürgerkrieg","2020", "Zukunft", "Missionseinstellung"};
	default = 99;	
};
class Month
{
	title="Monat";
	values[] = {1,2,3,4,5,6,7,8,9,10,11,12,99};
	texts[] = {"Januar", "Februar", "März", "April", "Mai", "Juni", "Juli", "August", "September", "Oktober", "November", "Dezember", "Missionseinstellung"};
	default = 99;	
};
class Day
{
	title="Datum";
	values[] = {1,2,3,4,5,6,7,8,9,10,
	11,12,13,14,15,16,17,18,19,20,
	21,22,23,24,25,26,27,28,29,30,31,
	99};
	texts[] = {"1","2","3","4","5","6","7","8","9","10",
"11","12","13","14","15","16","17","18","19","20",
"21","22","23","24","25","26","27","28","29","30","31",	"Heutiges Datum"};
	default = 99;
};
class Hour
{
	title = "Stunde";
	texts[] = {"Morgen (6)","Vormittag (9)","Mittag (12)","Nachmittag (15)", "Abend (18)", "Spätabend (21)","Mitternacht (0)", "Friedhofsstunde (3)", "Missionseinstellung"};
	values[] = {6,9,12,15,18,21,0,3,99};
	default = 12;
};
class Weather
{
	title="Wetter";
	values[] = {99,
	1,2,3,
	4,5,6,
	7,8,9};
	texts[] = {
	"Missionseinstellung", 
	"Sonnig", "Klar", "Bewölkt", 
	"Leichter Regen", "Mittlerer Regen", "Schwerer Regen",
	"Leichter Nebel", "Mittlerer Nebel", "Dichter Nebel"};
	default = 1;
};
class dummy_euquipment {
	title = "---------------------- Ausrüstung ----------------------";
	values[] = {-99999};
	default = -99999;
	texts[] = {""};
};
class Loadouts
{
	title="Ausrüstung";
	values[] = {
		1, 2, 3,
		10, 11, 12, 13,
		21, 22, 23,
		100, 101,
		110, 111, 112, 113,
		200, 201,
		212, 213
	};
	texts[] = {
		"NATO", "NATO - Apex", "CTRG",
		"USA - MARPAT (RHS)", "USA - UCP (RHS)", "USA - OCP (RHS)", "USA - Vietnam (CUP)",
		"Bundeswehr - Flecktarn (CUP) (unfertig!)", "Bundeswehr - Tropen (CUP) (unfertig!)", "GM - Frühe Bundeswehr",
		"AAF", "LDV (unfertig!)",
		"Guerilla", "PMC", "African Army (CUP)", "Taliban (CUP)",
		"CSAT", "CSAT - Apex",
		"RU - Summer (RHS)", "GM - DDR"
	};
	default = 12;
};

//Fahrzeuge überhaupt wechseln?
/*

class dummy_blu_vehicles {
	title = "---------------------- BLUFOR-Fahrzeuge ----------------------";
	values[] = {-99999};
	default = -99999;
	texts[] = {""};
};
class param_modCarAssets
{
	title="Sollen leichte Fahrzeuge durch AddOn-Fahrzeuge ersetzt werden?";
	values[] = {99
		,30
		,21,20
		,2,1,0
	};
	texts[] = {"Keine leichten Fahrzeuge"
		,"CUP BAF"
		,"RHS Marines","RHS Army"
		,"ADV-Retex Fenneks","Apex Prowler","Nein"
	};
	default = 20;
};
class param_modTruckAssets
{
	title="Sollen Trucks durch AddOn-Fahrzeuge ersetzt werden?";
	values[] = {99
		,40
		,31,30
		,20
		,0
	};
	texts[] = {"Keine Trucks"
		,"DAR MTVR"
		,"CUP BAF Coyotes","CUP MTVR"
		,"RHS - Army"
		,"Nein"
	};
	default = 20;
};
class param_modHeavyAssets
{
	title="Sollen schwere Fahrzeuge durch AddOn-Fahrzeuge ersetzt werden?";
	values[] = {99
		,22,21,20
		,3,2,1,0
	};
	texts[] = {
		"Keine schweren Fahrzeuge"
		,"RHS MRAPs","RHS M113","RHS Bradleys"
		,"stv retexture/ADV-Retex - Marid","stv retexture/ADV-Retex - Warrior/Mora","ADV-Retex - Gorgon","Nein"
	};
	default = 20;
};
class param_modTankAssets
{
	title="Sollen Panzer durch AddOn-Fahrzeuge ersetzt werden?";
	values[] = {99
		,40
		,21,20
		,1,0
	};
	texts[] = {"Keine Panzer/Artillerie"
		,"Burne's M1A2"
		,"RHS (mit M119-Artillerie)","RHS (mit M109A6-Artillerie)"
		,"stv retexture/ADV-Retex - Leopard/Kuma","Nein"
	};
	default = 20;
};
class param_modHeliAssets
{
	title="Sollen Helikopter durch AddOn-Helikopter ersetzt werden?";
	values[] = {99,22,21,20,0};
	texts[] = {"Keine Helikopter","RHS Army (mit OH-6-Variants)","RHS Army (mit AH-64)","RHS Marines","Nein"};
	default = 20;
};
class param_modAirAssets
{
	title="Sollen Flugzeuge durch AddOn-Flugzeuge ersetzt werden?";
	values[] = {99,42,41,40,31,30,21,20,0};
	texts[] = {"Keine Flugzeuge","FIR F-14D","F/A-18F (Zweisitzer)","F/A-18E (Einsitzer)","CUP F35","CUP AV-8B Harrier","RHS F-22/C130","RHS A-10/C130","Nein"};
	default = 20;
};
class dummy_opf_vehicles {
	title = "---------------------- OPFOR-Fahrzeuge ----------------------";
	values[] = {-99999};
	default = -99999;
	texts[] = {""};
};
class param_opfCarAssets
{
	title="Sollen leichte Fahrzeuge durch AddOn-Fahrzeuge ersetzt werden?";
	values[] = {99,40,21,20,1,0};
	texts[] = {"Keine leichten Fahrzeuge","RDS Zivil-Fahrzeuge","RHS GAZ","RHS UAZ","Apex Qilin","Nein"};
	default = 20;
};
class param_opfTruckAssets
{
	title="Sollen Trucks durch AddOn-Fahrzeuge ersetzt werden?";
	values[] = {99,21,20,0};
	texts[] = {"Keine Trucks","RHS Zivil-Trucks","RHS","Nein"};
	default = 20;
};
class param_opfHeavyAssets
{
	title="Sollen schwere Fahrzeuge durch AddOn-Fahrzeuge ersetzt werden?";
	values[] = {99,21,20,0};
	texts[] = {"Keine schweren Fahrzeuge","RHS BMPs","RHS BTRs","Nein"};
	default = 20;
};
class param_opfTankAssets
{
	title="Sollen Panzer durch AddOn-Fahrzeuge ersetzt werden?";
	values[] = {99,41,40,22,21,20,0};
	texts[] = {"Keine Panzer","RDS T34","RDS T55","RHS T72","RHS T80","RHS T90","Nein"};
	default = 22;
};
class param_opfHeliAssets
{
	title="Sollen Helikopter durch AddOn-Helikopter ersetzt werden?";
	values[] = {99,25,24,23,22,21,20,0};
	texts[] = {"Keine Helikopter","RHS Civilian","RHS CAS only", "RHS Transport + Mi28", "RHS Transport + Ka52","RHS Transport + Mi24","RHS Transport","Nein"};
	default = 21;
};
class param_opfAirAssets
{
	title="Sollen Flugzeuge durch AddOn-Flugzeuge ersetzt werden?";
	values[] = {99,40,21,20,0};
	texts[] = {"Keine Flugzeuge","JS SU35","RHS SU-50","RHS SU-25","Nein"};
	default = 20;
};
*/
class dummy_vcom {
	title = "---------------------- VCOM AI ----------------------";
	values[] = {-99999};
	default = -99999;
	texts[] = {""};
};
class VcomUse
{
	title="Soll VCOM ai genutzt werden?";
	values[] = {0, 1};
	texts[] = {"Nein", "Ja"};
	default = 0;
};
class VcomArty
{
	title="Soll VCOM Artillerie besser nutzen?";
	values[] = {0, 1};
	texts[] = {"Nein", "Ja"};
	default = 1;
};
class VcomMines
{
	title="Mit welcher Chance so die KI Minen legen?";
	values[] = {0, 25, 50, 75};
	texts[] = {"Keine Minen!", "Gering", "Mittel", "Hoch"};
	default = 0;
};
class VcomHearing
{
	title="Wie weit hört die KI Gewehrfeuer in Meter?";
	values[] = {500, 750, 1000, 1250, 1500};
	texts[] = {"500", "750", "1000", "1250", "1500"};
	default = 1000;
};
class VcomHelp
{
	title="Wie weit fordert die KI Hilfe an, in Meter?";
	values[] = {500, 750, 1000, 1250, 1500};
	texts[] = {"500", "750", "1000", "1250", "1500"};
	default = 1000;
};
class VcomDelay
{
	title="Wie lange dauert es bis die KI Hilfe anfordert in Sekunden?";
	values[] = {10, 20, 30, 60};
	texts[] = {"10", "20", "30", "60"};
	default = 30;
};
class VcomSkillChange
{
	title="VCOM passt die KI Schwierigkeit selbstständig an.";
	values[] = {0, 1};
	texts[] = {"Nein", "Ja"};
	default = 0;
};
class VcomStealing
{
	title="Stiehlt die KI Fahrzeuge?";
	values[] = {0,1};
	texts[] = {"Nein", "Ja"};
	default = 0;
};
class VcomCargo
{
	title="VCOM übernimmt automatisches Auf/Absitzen";
	values[] = {0,1};
	texts[] = {"Nein", "Ja"};
	default = 1;
};
class VcomSupress
{
	title="Soll VCOM versuchen die Spieler zu unterdrücken?";
	values[] = {0,1};
	texts[] = {"Nein", "Ja"};
	default = 1;
};