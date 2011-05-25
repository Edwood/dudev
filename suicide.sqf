 _art = _this select 0;

if (_art == "use") then 

{	

_item   = _this select 1;
_anzahl = _this select 2;
"hint localize ""STRS_inv_item_selbstmordbombe_globalmsg"";" call broadcast;

for [{_i=5}, {_i >= 0}, {_i=_i-1}] do 

	{	

	titletext [format ["Bombcountdown: -->*%1*<--", _i],"plain"];
	sleep 1;

	};

if (!(alive player)) exitWith {};
call compile format ["autobombe%2 = ""Bo_GBU12_LGB"" createVehicle %1;",(getpos player), (round (random 2000))];
[_item, -1] call INV_AddInventoryItem;

};
