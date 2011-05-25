sleep 10;

if(count ownedhouses > 0) then

{

_house = ownedhouses select 0;
_dir   = (getdir _house) - 180;
_x     = 0;

while { format ["%1", _house buildingPos _x] != "[0,0,0]" } do {_x = _x + 1};
_x = _x - 1;

safe_obj = nearestobject [_house, "Recon_safe"];
box_obj = nearestobject [_house, "AmmoBoxWest"];

for [{_i=1}, {_i <= count(INV_PLAYERLIST)}, {_i=_i+1}] do 

{

call compile format["if((getmarkerpos civ%1housemkr) distance _house < 10)exitwith{house_mkr = civ%1housemkr};", _i];

};

format ['
%1 setpos [0,0,0];
%2 setpos [0,0,0];  
%3 setmarkerpos [0,0,0];
', safe_obj, box_obj, house_mkr] call ISSE_pub_execPstr;

ownedhouses  = ownedhouses - [_house]; ["ownedhouses", ownedhouses] spawn ClientSaveVar;
boughthouses = boughthouses - [_house]; publicvariable "boughthouses";

if(isciv) then

{

call compile format['

_house setvehicleinit "
this setvehiclevarname ""%1house"";
%1house = this;
";
safe_obj = %1housesafe; 
box_obj = %1housebox; 
house_mkr = %1housemkr;

safe_obj removeaction safeact%1;
safeact%1 = safe_obj addaction ["Open Safe", "1098936.sqf", ["safestor%1", "public", ["vcl", "Recon_safe", safe_obj]]];

', player];

processinitcommands;

format ['
%2 setdir %5; 
%3 setdir %5;
%2 setpos (%1 buildingPos (%6 - 1)); 
%3 setpos (%1 buildingPos %6);
%4 setmarkerpos getpos %1;
', _house, safe_obj, box_obj, house_mkr, _dir, _x] call ISSE_pub_execPstr;

ownedhouses  = ownedhouses + [_house]; ["ownedhouses", ownedhouses] spawn ClientSaveVar;
boughthouses = boughthouses + [_house]; publicvariable "boughthouses";

};

};
	