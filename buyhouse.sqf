_number= (_this select 1) select 0;
_citynumber = (_this select 1) select 1;
_cost  = (_this select 1) select 2;
_city  = cityhousesarray select (_citynumber - 1);
_house = (_city select _number);
_x     = 0;
_pos   = getpos _house;
_dir   = (getdir _house) - 180;
_cityname  = format["Cityhouses%1", _citynumber];
_geld  = 'geld' call INV_GetItemAmount;

if(count ownedhouses > 0)exitwith{player groupchat "you already own a house. you must sell that one before you can buy another."};
if(_geld < _cost)exitwith{player groupchat "You do not have enough money"};
["geld", -(_cost)] call INV_AddInventoryItem;
player groupchat "Purchased house";

while { format ["%1", _house buildingPos _x] != "[0,0,0]" } do {_x = _x + 1};
_x = _x - 1;

if(_cityname == "cityhouses1")then{houseloc = "Bagango"; Bagangohouse = Bagangohouse - [_house]; publicvariable "Bagangohouse"};
if(_cityname == "cityhouses2")then{houseloc = "Obregan";Obreganhouse = Obreganhouse - [_house]; publicvariable "Obreganhouse"};
if(_cityname == "cityhouses3")then{houseloc = "Mercalillo";Mercalillohouse = Mercalillohouse - [_house]; publicvariable "Mercalillohouse"};
if(_cityname == "cityhouses4")then{houseloc = "Benoma";Benomahouse = Benomahouse - [_house]; publicvariable "Benomahouse"};
if(_cityname == "cityhouses5")then{houseloc = "Masbete";Masbetehouse = Masbetehouse - [_house]; publicvariable "Masbetehouse"};
if(_cityname == "cityhouses6")then{houseloc = "Corozol";Corozolhouse = Corozolhouse - [_house]; publicvariable "Corozolhouse"};
if(_cityname == "cityhouses7")then{houseloc = "Eponia";Eponiahouse = Eponiahouse - [_house]; publicvariable "Eponiahouse"};

cityhousesarray = [Bagangohouse ,Obreganhouse,Mercalillohouse,Benomahouse,Masbetehouse,Corozolhouse,Eponiahouse];
publicvariable "cityhousesarray";

call compile format['

_house setvehicleinit "
this setvehiclevarname ""%1house"";
%1house = this;
this setdamage 0;
";
safe_obj = %1housesafe; 
box_obj = %1housebox; 
house_mkr = %1housemkr;

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

ownedhouses  = ownedhouses + [_house]; 
["ownedhouses", ownedhouses] spawn ClientSaveVar;
boughthouses = boughthouses + [_house]; publicvariable "boughthouses";

