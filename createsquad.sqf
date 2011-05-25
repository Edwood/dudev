_group = creategroup east;
_time = round time;

call compile format['
"MVD_Soldier_TL" createUnit [getpos Militarybase, _group, "leader%1 = this;this setvehiclevarname ""leader%1"";", 1.0, "CORPORAL"];
', _time];

_name = format["leader%1", _time];
_name = call compile format["%1", _name];

"MVD_Soldier" createUnit [getpos Militarybase, _group, "", 1.0, "PRIVATE"];
"MVD_Soldier_Sniper" createUnit [getpos Militarybase, _group, "", 1.0, "PRIVATE"];
"MVD_Soldier_MG" createUnit [getpos Militarybase, _group, "", 1.0, "PRIVATE"];

sleep 2;

[_name,"hqarea", "showmarker", "delete:", 300, "RANDOM"] execVM "UPS.sqf";





