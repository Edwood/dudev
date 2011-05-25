_art = _this select 0;

if (_art == "use") then 

{

if (vehicle player == player) exitWith {player groupChat localize "STRS_inv_items_repair_refuel_notincar";};
if ( (typeOf(vehicle player)) call INV_getitemTypeKg > 1) exitWith {player groupChat localize "STRS_inv_items_repair_wrongvcl";};
["use", "kleinesreparaturkit", 1] execVM "largerepair.sqf";

};

