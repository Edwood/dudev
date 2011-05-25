_civ = ((_this select 0)+1); 

if (not(iscop)) exitWith {player groupChat localize "STRS_not_copaction";};

if (not((format ["civ%1", _civ]) call ISSE_UnitExists)) exitWith {player groupChat localize "STRS_player_not_ingame";};

_notinprison = call compile format ["civ%1_arrest", _civ];

if (_notinprison == 0) then 

{

player groupChat localize "STRS_prison_notinprison";

} 
else 
{

format["civ%1_arrest = 0;", _civ] call broadcast;

player groupChat localize "STRS_prison_freenow";

};
