_number= (_this select 1) select 0;
_cost  = (_this select 1) select 1;
_house = (_this select 1) select 2;
_geld  = 'geld' call INV_GetItemAmount;
_id    = count ownedhouses;
_cityname = format["Cityhouses%1", _number];

["geld", _cost] call INV_AddInventoryItem;
player groupchat "Sold house";

ownedhouses = ownedhouses - [_house]; ["ownedhouses", ownedhouses] spawn ClientSaveVar;
boughthouses = boughthouses - [_house]; publicvariable "boughthouses";

if(_cityname == "cityhouses1")then{houseloc = "Bagango"; Bagangohouse = Bagangohouse + [_house]; publicvariable "Bagangohouse"};
if(_cityname == "cityhouses2")then{houseloc = "Obregan";Obreganhouse = Obreganhouse + [_house]; publicvariable "Obreganhouse"};
if(_cityname == "cityhouses3")then{houseloc = "Mercalillo";Mercalillohouse = Mercalillohouse + [_house]; publicvariable "Mercalillohouse"};
if(_cityname == "cityhouses4")then{houseloc = "Benoma";Benomahouse = Benomahouse + [_house]; publicvariable "Benomahouse"};
if(_cityname == "cityhouses5")then{houseloc = "Masbete";Masbetehouse = Masbetehouse + [_house]; publicvariable "Masbetehouse"};
if(_cityname == "cityhouses6")then{houseloc = "Corozol";Corozolhouse = Corozolhouse + [_house]; publicvariable "Corozolhouse"};
if(_cityname == "cityhouses7")then{houseloc = "Eponia";Eponiahouse = Eponiahouse + [_house]; publicvariable "Eponiahouse"};

cityhousesarray = [Bagangohouse ,Obreganhouse,Mercalillohouse,Benomahouse,Masbetehouse,Corozolhouse,Eponiahouse];
publicvariable "cityhousesarray";

call compile format['%1house setvehicleinit "this setvehiclevarname ""house%1"";house%1 = this";', player];
processinitcommands;

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

