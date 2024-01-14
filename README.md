# MissionTemplate

## ARMA mission related
( all the stuff you need to know in order to make an arma mission with this )
This is the HEC Template. It is still WIP.


------------------ Arsenal -------------------
This Template provides an unrestricted ACE Arsenal and an restricted Arsenal based on the chosen param for the Loadout.
The restricted Arsenal is to help players with their choice of weapon and uniform according to the faction the mission author wants to play.
----------------------------------------------

------------------ Loadouts ------------------
Night Vision Googles are added if your starting time is in the night hours.

To add a loadout, 
1. add it in the loadouts\CfgFunctions.hpp like the others. 
2. write the loadout. Orient on other loadouts
3. add the loadout to the fn_prepareLoadout, so a player gets it on missionstart
4. add a menu to the functions\ fn_addLoadoutmenu.sqf

Loadout names, to assign to players:
Loadout : what it is
opz : commanding officer

sql : Squadleader
ftl: Fire team leader
lmg : Light machine gunner
ulg : Grenadier
rfm : Rifleman

sniper : Sniper :)
mmg : Heavy machine gunner

med : Medic 
pilot : Pilot
crew : Vehicle Crew
----------------------------------------------

------------------ Rank ----------------------
You can change your Rank on the Computer next to the Arsenal
----------------------------------------------

------------------ Carrier ----------------------
To use Respawn on a Carrier like the Nimitz or the Freedom, place an object called respawn_helper/respawn_helper_east/respawn_helper_independent
----------------------------------------------

------------------ TODOS ----------------------
Side Relation Script (Green + Red)
More Loadouts
Loadout Dialog,
Loadouts Uniform und Waffen,
Logistic Crates and Dialog,
Leere Gruppen löschen,
Zeus syncronisation,


## Template repo related

All the stuff you need to know to work with / on this repo

## Template Bundler

To run the template bundler, you need a working python installation with >= python 3.8.0

there are no external dependencies, so you can just run the bundler from the root of the repository with:

```shell
# linux
python3 scripts/template_bundler.py
# windows
python scripts/template_bundler.py
```

this will create the template_bundles folder and put all the bundled templates in there.
it will look like this:
````
template_bundles/
├── Altis/
│   ├── mission_Altis.Altis/
│   ├── mission_Carrier-Altis.Altis
├── cam_lao_nam/
│   ├── mission_cam_lao_nam.cam_lao_nam/
.
.
.
````
