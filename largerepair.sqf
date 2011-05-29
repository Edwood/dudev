_art = _this select 0;

if (_art == "use") then 
 
{

_item = _this select 1;
_vcl  = vehicle player;

if (player == _vcl,) exitWith {player groupChat localize "STRS_inv_items_repair_refuel_notincar";};
if (player != driver _vcl) exitWith {player groupChat localize "STRS_inv_items_repair_refuel_notdriver";};
if ((damage _vclr) == 0) exitWith {player groupChat localize "STRS_inv_items_repair_notneeded";};

player groupchat "Repairing vehicle!";
sleep 15;
_vcl setDamage 0;
player groupChat localize "STRS_inv_items_repair_repaired";
[_item, -1] call INV_AddInventoryItem;

};

