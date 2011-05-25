_civmenuciv  = civmenuciv;
_civmenu_civ = civmenu_civ;
_art         = _this select 0;
_geld        = 'geld' call INV_GetItemAmount;

if ((player distance _civmenuciv >= 25) or (!(alive _civmenuciv))) exitWith 

{

player groupChat format[localize "STRS_civmenu_distance"];

};

if (_art == 5) exitWith 

{

(format ["%1 setdamage 0; if (%1 == player) then {player Groupchat localize ""STRS_civmenucheck_youarehealed"";};", _civmenuciv]) call broadcast;

player groupChat format [localize "STRS_civmenu_heal", _civmenu_civ];

};

if ((count (weapons player)) == 0) exitWith 

{	

player groupChat localize "STRS_civmenu_copnotarmed";

};

if (_art == 6) exitWith 

{		

if(!(_civmenuciv call ISSE_IsVictim))exitwith{hint localize "STRS_inventory_checknohands"};

(format ["if (rolestring == ""%1"") then {[""inventcheck"", ""%2""] execVM ""civmenu.sqf"";}", _civmenu_civ, rolestring]) call broadcast;

};

if (_art == 20) exitWith 

{

if ([player, coparray, 40] call ISSE_ArrayIsNear and !(_civmenuciv in coparray)) exitWith {player groupChat localize "STRS_civmenu_stehlen_copzunah";};

if (StehlenAktiv) exitWith {};
player groupChat localize "STRS_civmenu_stehlen";
StehlenAktiv = true;
sleep 5;
StehlenAktiv = false;
(format ["if (rolestring == ""%1"") then {[""stealmoney"", ""%2""] execVM ""civmenu.sqf"";};", _civmenu_civ, rolestring]) call broadcast;

};

if (_art == 1) exitWith 

{

(format ["if (player == %1) then {[""drugs"", %2] execVM ""civmenu.sqf"";};", _civmenuciv, player]) call broadcast;

};

if (_art == 2) exitWith 

{

_weapons = weapons _civmenuciv - nonlethalweapons;
if (count _weapons > 0) then {{_civmenuciv removeWeapon _x} forEach _weapons;};
if (count _weapons == 0)exitwith{player groupchat "this civ is not armed!"};

(format ["if (player == %1) then {[""disarm""] execVM ""civmenu.sqf"";};", _civmenuciv]) call broadcast;

player groupChat format [localize "STRS_civmenu_disarm", _civmenu_civ];

};

if (_art == 3) exitWith 

{

_dauer = round(_this select 1);
format ["if (player == %1) then {[""arrest"", %2, %3] execVM ""civmenu.sqf"";};", _civmenu_civ, _dauer, player] call broadcast;

player groupChat format[localize "STRS_civmenu_arrested", _civmenu_civ];

};

if (_art == 4) exitWith 

{	

_strafe = _this select 1;
if (!(_strafe call ISSE_str_isInteger)) exitWith {player groupChat localize "STRS_inv_no_valid_number";};
_strafe = _strafe call ISSE_str_StrToInt;  if (_strafe <= 0) exitWith {};
(format ["if (player == %1) then {[""ticket"", %2, %3] execVM ""civmenu.sqf"";}; server globalchat format[localize ""STRS_civmenu_ticket_globalchat"", name %1, %2, name %3];", _civmenuciv, (_strafe call ISSE_str_IntToStr), player]) call broadcast;

};



