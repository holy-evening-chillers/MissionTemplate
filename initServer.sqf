////////////////initServer.sqf is only executed on server///////////////
//VCOM
[] call HEC_fnc_setVCOM;

//Weather and Time
[] call HEC_fnc_time;
[] call HEC_fnc_weather;

//side Relations
[] call HEC_fnc_setRelations;

//setup the restricted Arsenal
//blue
["hec_arsenal_1"] call HEC_fnc_setupArsenal;
["hec_arsenal_2"] call HEC_fnc_setupArsenal;

//ind
["hec_arsenal_3"] call HEC_fnc_setupArsenal;
["hec_arsenal_4"] call HEC_fnc_setupArsenal;

//red
["hec_arsenal_5"] call HEC_fnc_setupArsenal;
["hec_arsenal_6"] call HEC_fnc_setupArsenal;

//texture the board and the flag
//blue
[hec_board_1, "images\briefingBoard.jpg"] call HEC_fnc_boardTexture;
hec_flag_1 setFlagTexture "images\flag.jpg";

//green
[hec_board_2, "images\briefingBoard.jpg"] call HEC_fnc_boardTexture;
hec_flag_2 setFlagTexture "images\flag.jpg";

//red
[hec_board_3, "images\briefingBoard.jpg"] call HEC_fnc_boardTexture;
hec_flag_3 setFlagTexture "images\flag.jpg";

//wait until mission has started:
waitUntil {time > 0};

//Changing vanilla- or CUP-IEDs to ACE-IEDs:
[] call HEC_fnc_IEDhandler;