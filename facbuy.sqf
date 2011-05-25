_num     = ((_this select 3) select 0);
_fabname = ((INV_ItemFabriken select _num) select 1);
_cost    = ((INV_ItemFabriken select _num) select 6);
_geld    = 'geld' call INV_GetItemAmount;

if (_fabname in INV_Fabrikowner) exitWith {player groupChat localize "STRS_inv_alreadygotshop";};
if (_geld < _cost) 		 exitWith {player groupChat localize "STRS_inv_kein_geld";};

INV_Fabrikowner = INV_Fabrikowner + [ _fabname ];
['geld', -(_cost)] call INV_AddInventoryItem;
["INV_Fabrikowner", INV_Fabrikowner] spawn ClientSaveVar;

player groupChat format[localize "STRS_inv_gotshop", player, (_cost call ISSE_str_IntToStr)];
