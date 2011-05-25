if ((_this select 0) == "") exitWith {player groupChat localize "STRS_inv_no_selection";};
_item        = _this select 0;
_fabriknum   = _this select 1;
_type        = _this select 2;
_queue       = (INV_ItemFabriken select _fabriknum) select 8;
_ablage      = (INV_ItemFabriken select _fabriknum) select 7;
_spawn       = (INV_ItemFabriken select _fabriknum) select 4;
_crate       = (INV_ItemFabriken select _fabriknum) select 3;
_name        = (INV_ItemFabriken select _fabriknum) select 2;
_infos       = _item call INV_getitemArray;
_cost	     = (_infos call INV_getitemBuyCost)*0.5;
_itemart     = _infos call INV_getitemType; 
_amount      = (["geld", _ablage] call INV_GetStorageAmount);

if(_item == "Mi17_Civilian")then{_spawn = afacspawn};

if(_type == "mani")then

{

if (_amount < _cost) exitWith {player groupChat localize "STRS_inv_fac_not_enough"};
["geld", -(_cost), _ablage] call INV_AddItemStorage;

call compile format['%1 = %1 + [_item]; %2pend = %2pend + 1; ["%2pend", %2pend] spawn ClientSaveVar;', _queue, _item];

player groupChat "Added to the production line";
call compile format['["%1", %1] spawn ClientSaveVar;["%2", %2] spawn ClientSaveVar;', _ablage, _queue];

};

if(_type == "create")then

{

if(fvspam)exitwith{}; 

call compile format['favail = %1avail; if(%1avail > 0)then{%1avail = %1avail - 1;["%1avail", %1avail] spawn ClientSaveVar};', _item];
if(favail < 1)exitwith{player groupchat "There are no vehicles of this type available"}; 

if (_itemart == "Item")     then {player groupchat "creating...";fvspam=true;sleep 1;[_item, 1, _ablage] spawn INV_CreateItem;fvspam=false};
if (_itemart == "waffe")    then {player groupchat "creating...";fvspam=true;sleep 1;[(_infos call INV_getitemClassName), 1, _crate] spawn INV_CreateWeapon;fvspam=false};
if (_itemart == "magazin")  then {player groupchat "creating...";fvspam=true;sleep 1;[(_infos call INV_getitemClassName), 1, _crate] spawn INV_CreateMag;fvspam=false};
if (_itemart == "Fahrzeug") then {player groupchat "creating...";fvspam=true;sleep 5;[_item, _spawn] spawn INV_CreateVehicle;fvspam=false};

player groupchat "item created!";

};

if(_type == "export")then

{

if (_itemart == "Item" or _itemart == "waffe" or _itemart == "magazin")exitwith{player groupchat "you cannot export this item!"};   

if(fvspam)exitwith{}; 

call compile format['favail = %1avail; if(%1avail > 0)then{%1avail = %1avail - 1;["%1avail", %1avail] spawn ClientSaveVar};', _item];
if(favail < 1)exitwith{player groupchat "There are no vehicles of this type available"}; 

if (_itemart == "Fahrzeug") then {[_item] execVM "choosecity.sqf";};

};