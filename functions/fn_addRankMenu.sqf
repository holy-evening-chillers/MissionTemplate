/*
Author: Schneeflocke

WIP Solution, to get a Rank dialog on provided object
TODO: ace menu or a loadout menu
Possible Ranks: PRIVATE, CORPORAL, SERGEANT, LIEUTENANT, CAPTAIN, MAJOR or COLONEL.
*/

if(!hasInterface) exitWith{};


params["_target"];

_target addAction ["Erhalte Rang: Private", {call {player setRank "PRIVATE"}; }];
_target addAction ["Erhalte Rang: Corporal", {call {player setRank "CORPORAL"}; }];
_target addAction ["Erhalte Rang: Sergeant", {call {player setRank "SERGEANT"}; }];
_target addAction ["Erhalte Rang: Lieutnant", {call {player setRank "LIEUTENANT"}; }];
_target addAction ["Erhalte Rang: Captain", {call {player setRank "CAPTAIN"}; }];
_target addAction ["Erhalte Rang: Major", {call {player setRank "MAJOR"}; }];
_target addAction ["Erhalte Rang: Colonel", {call {player setRank "COLONEL"}; }];

 true;