_civnumber      = _this select 0;
_reason         = _this select 1; 
_deletekopfgeld = _this select 2;
_civnumber      = _civnumber+1;
_civ            = format["civ%1", _civnumber];
_civvar		= call compile format["%1", _civ];

if (_civ == rolestring) exitWith {player groupChat localize "STRS_kopfgeld_notself";};
if (not(_civ call ISSE_UnitExists)) exitWith {role groupChat localize "STRS_player_not_ingame";};

if (_deletekopfgeld == 1) exitWith 

{
												
format["kopfgeld_%1 = 0; %1_wanted = 0; %1_reason = [];", _civ] call broadcast;													
player groupChat format [localize "STRS_kopfgeld_entfernt", _civ];

};
                
if (_reason == "Description of crime") exitWith {player groupChat "You must enter a description of the crime!"};

call compile format ["_civarrestedvar = civ%1_arrest;",_civnumber];

if ((!(alive _civvar)) or (_civarrestedvar == 1)) exitWith {role groupChat format [localize "STRS_kopfgeld_nokopfgeld", _civ];};
format ["%2_wanted = 1; if(!(""%4"" in %2_reason))then{%2_reason = %2_reason + [""%4""]};server globalchat ""%3 is wanted for %4"";", player, _civvar, name _civvar, _reason] call broadcast;
