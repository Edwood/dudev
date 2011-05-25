_preis      = _this select 0;
_item       = _this select 1;
_stock      = _this select 2;
_maxstock   = _this select 3;
_shopnum    = _this select 4;

if(_stock >= _maxstock)exitwith{player groupchat "the shop has reached its maximum stock for this item/vehicle"};
																			
['geld', _preis] call INV_AddInventoryItem;

player groupchat format["The vehicle has been exported for $%1!", _preis];

call compile format['favail = %1avail; if(%1avail > 0)then{%1avail = %1avail - 1;["%1avail", %1avail] spawn ClientSaveVar};', _item];

format['["%1", (%2 + 1), %3] call INV_itemstocksupdate;', _item, _stock, _shopnum] call broadcast;

closedialog 0;
