_item    = _this select 0;
_infos   = _item call INV_getitemArray;

_carsinv   = (carshop1 call INV_getshopArray) select 4; 
_pickupinv = (pickupshop1 call INV_getshopArray) select 4; 
_boatinv   = (boatshop1 call INV_getshopArray) select 4;
_truckinv  = (truckshop call INV_getshopArray) select 4;

if ([_item, _carsinv] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute3")) exitWith {hint "Dialog Error!"};

//=====================Bagango CAR SHOP====================================

_shopnum      = carshop1 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["Bagango for $%1", _preis]];
buttonSetAction [3, format['[%1,%2,%3,%4,%5,carshop1] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

//=====================Corazol CAR SHOP====================================

_shopnum      = carshop2 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [4, format["Corazol for $%1", _preis]];
buttonSetAction [4, format['[%1,%2,%3,%4,%5,carshop2] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

//=====================Mercalio CAR SHOP====================================

_shopnum      = carshop3 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [5, format["Mercalillo for $%1", _preis]];
buttonSetAction [5, format['[%1,%2,%3,%4,%5,carshop3] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

//=====================Dolores CAR SHOP====================================

_shopnum      = carshop4 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [6, format["Dolores for $%1", _preis]];
buttonSetAction [6, format['[%1,%2,%3,%4,%5,carshop4] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

//=====================Ando's CAR SHOP====================================

_shopnum      = carshop5 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [7, format["Ando's car barn for $%1", _preis]];
buttonSetAction [7, format['[%1,%2,%3,%4,%5,carshop5] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

//=====================Ortego CAR SHOP====================================

_shopnum      = carshop6 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [8, format["Ortego Car Shop for $%1", _preis]];
buttonSetAction [8, format['[%1,%2,%3,%4,%5,carshop6] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

//=====================Cayo CAR SHOP====================================

_shopnum      = carshop7 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [9, format["Cayo Car Shop for $%1", _preis]];
buttonSetAction [9, format['[%1,%2,%3,%4,%5,carshop7] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

//=====================Parasio CAR SHOP====================================

_shopnum      = carshop8 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [10, format["Parasio car shop for $%1", _preis]];
buttonSetAction [10, format['[%1,%2,%3,%4,%5,carshop8] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

};


if ([_item, _pickupinv] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute2")) exitWith {hint "Dialog Error!"};

//=====================Benoma PICKUP SHOP====================================

_shopnum      = pickupshop1 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [4, format["Benoma for $%1", _preis]];
buttonSetAction [4, format['[%1,%2,%3,%4,%5,pickupshop1] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

//=====================Everon PICKUP SHOP====================================

_shopnum      = pickupshop2 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [5, format["Everon for $%1", _preis]];
buttonSetAction [5, format['[%1,%2,%3,%4,%5,pickupshop2] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

};

if ([_item, _boatinv] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute2")) exitWith {hint "Dialog Error!"};

//=====================Croazol Boat SHOP====================================

_shopnum      = boatshop1 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [3, format["Corozal boat shop 1 for $%1", _preis]];
buttonSetAction [3, format['[%1,%2,%3,%4,%5,boatshop1] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

//=====================Pite Boat SHOP====================================

_shopnum      = boatshop2 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [4, format["Pita boat shop for $%1", _preis]];
buttonSetAction [4, format['[%1,%2,%3,%4,%5,boatshop2] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

//=====================Croazol Boat 2 SHOP====================================

_shopnum      = boatshop3 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

ctrlSetText [5, format["Corozal boat shop 2 for $%1", _preis]];
buttonSetAction [5, format['[%1,%2,%3,%4,%5,boatshop1] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

};

if ([_item, _truckinv] call INV_iteminshop) exitwith

{

if (!(createDialog "distribute1")) exitWith {hint "Dialog Error!"};

//=====================Obregan truck  SHOP====================================

_shopnum      = truckshop call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

passvararray  = [_preis, _vehicle, _stock, _maxstock, _shopnum, truckshop];

ctrlSetText [3, format["Obregan for $%1", _preis]];
buttonSetAction [3, format['[%1,%2,%3,%4,%5,truckshop] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

//=====================Eponia truck SHOP====================================

_shopnum      = truckshop1 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

passvararray  = [_preis, _vehicle, _stock, _maxstock, _shopnum, truckshop];

ctrlSetText [4, format["Eponia for $%1", _preis]];
buttonSetAction [4, format['[%1,%2,%3,%4,%5,truckshop1] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

//=====================Everon Truck SHOP====================================

_shopnum      = truckshop1 call INV_getshopnum;
_stock        = [_item, _shopnum] call INV_getstock;
_maxstock     = [_item, _shopnum] call INV_getmaxstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*1;																						
_preis        = (_infos call INV_getitemCostWithTax)*1;
_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

passvararray  = [_preis, _vehicle, _stock, _maxstock, _shopnum, truckshop];

ctrlSetText [4, format["Eponia for $%1", _preis]];
buttonSetAction [4, format['[%1,%2,%3,%4,%5,truckshop1] execVM "exportvehicle.sqf";', _preis, _vehicle, _stock, _maxstock, _shopnum]];

};

player groupchat "No shops will buy the selected vehicle.";





