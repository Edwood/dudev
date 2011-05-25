_art = _this select 0;

if (_art == "init") then 

{

INV_objSpawned         = [];
INV_objServerSpawned   = [];
INV_objMaxObject       = 30;
INV_objIdleTime        = (60 * 60);

INV_objItemScriptNames = 

[

["SpawnObj_hospitaldoor", "Land_kasarna_prujezd" ],
["SpawnObj_hospitalwall", "Land_kasarna" ],
["SpawnObj_hospitalcorner", "Land_kasarna_rohova"],
["SpawnObj_bridge", "Land_molo_drevo_bs"],
["SpawnObj_hotel", "Land_Hotel"],
["SpawnObj_largetent", "CampEastC"],
["SpawnObj_mansion", "Land_dum_mesto_in"],
["SpawnObj_apartment", "Land_Panelak3"],
["SpawnObj_housem", "Land_sara_zluty_statek_in"],
["SpawnObj_houses", "Land_sara_Domek_sedy"],
["SpawnObj_tower","Land_helfenburk"      ],
["SpawnObj_villa", "Land_sara_domek05"],
["SpawnObj_pub", "Land_hospoda_mesto" ],
["SpawnObj_Fortress", "Fortress1" ],
["SpawnObj_Danger", "Danger"],
["SpawnObj_Gate", "ZavoraAnim"],
["SpawnObj_Shed", "ShedSmall"],
["SpawnObj_Wall", "Wall1"],
["SpawnObj_Wire", "Wire"],
["SpawnObj_RoadCone", "RoadCone"],
["SpawnObj_Fire", "Fire"],
["SpawnObj_FenceWood","FenceWood"      ],
["SpawnObj_WireFence", "WireFence"],
["SpawnObj_RoadBarrier_long", "RoadBarrier_long" ]

];

_arr = [];

while {true} do 

	{

	for [{_i=0}, {_i < count INV_objSpawned }, {_i=_i+1}] do 

		{

		if (isNull(INV_objSpawned select _i)) then 

			{

			INV_objSpawned set [_i, ""];
			INV_objSpawned = INV_objSpawned - [""];

			};

		};

	for [{_i=0}, {_i < count INV_objServerSpawned }, {_i=_i+1}] do 

		{ 
  
		if ( isNull ((INV_objServerSpawned select _i) select 0) ) then 

			{

			INV_objServerSpawned set [_i, ""];
			INV_objServerSpawned = INV_objServerSpawned - [""];

			};

		};

	for [{_i=0}, {_i < count _arr }, {_i=_i+1}] do 

		{ 
  
		if (isNull(_arr select _i)) then 

			{

			_arr set [_i, ""];
			_arr = _arr - [""];

			};

		};

	for [{_i=0}, {_i < count INV_objSpawned}, {_i=_i+1}] do 

		{

		_obj = INV_objSpawned select _i;
		
		if (not(_obj in _arr)) then 

			{

			call compile format ['%1 addAction [localize"STRS_inv_item_obj_take", "3126728.sqf", ''["pack", %1] execVM "INV_Objects.sqf";'']; ', _obj];
			_arr = _arr + [_obj];

			};

		};

	if (isServer) then 

		{

		for [{_i=0}, {_i < count INV_objServerSpawned}, {_i=_i+1}] do 

			{

			if (! (isNull ((INV_objServerSpawned select _i) select 0)) ) then 

				{

				_obj  = ((INV_objServerSpawned select _i) select 0);
				_idle = ((INV_objServerSpawned select _i) select 1);
				_near = false;
				_exit = false;

					{

					if (!( isNull _x)) then 

						{  

						if ((_x distance _obj) < 50) exitWith {_near = true; _exit = true;};

						};

					if (_exit) exitWith {};

					} forEach INV_PLAYERLIST;

				if (!_near) then {_idle = _idle + 10;} else {_idle = 0;};
				(INV_objServerSpawned select _i) set [1, _idle];
				if (_idle > INV_objIdleTime) then {_obj call INV_DeleteObject;};

				};

			};

		};

	sleep 10;

	};

};

if (_art == "use") then 

{

_item    = _this select 1;
_anzahl  = _this select 2;
_exitvar = 0;

if ((count INV_objSpawned) >= INV_objMaxObject) exitWith {player groupChat format[localize"STRS_inv_item_obj_toomany", INV_objMaxObject];};
_className = "";

{  

if (_item == (_x select 0)) exitWith {_className = _x select 1;};  

} forEach INV_objItemScriptNames;

if (_className == "") exitWith {hint "Error in inv_objs.sqf";};

if (player != vehicle player) exitWith {player groupChat localize "STRS_inv_item_obj_invcl";};

{  

if (player distance (_x select 0) < (_x select 1)) exitWith {_exitvar = 1;};  

} forEach [];

if (_exitvar == 1) exitWith {player groupChat localize "STRS_inv_item_obj_hiernicht";};

player groupChat localize "STRS_inv_item_obj_bauen";

sleep 3;

_posi = [(position player select 0) + (sin(getdir player)*2), (position player select 1) + (cos(getdir player)*2), 0];

_objName = [_className, _posi, (direction player)] call INV_CreateObject;

INV_objSpawned = INV_objSpawned + [ (call compile _objName) ];

format ["INV_objServerSpawned = INV_objServerSpawned + [ [(call compile ""%1""), 0] ];", _objName] call ISSE_pub_execPstr;

[_item, (-1)] call INV_addInventoryItem;

};


if (_art == "pack") then 

{

private["_nearai"];

_object    = _this select 1;
_className = typeOf _object;
_exitvar   = 0;
_nearammo  = nearestobject [_object, "AmmoBoxWest"];

_item = "";

	{  

	if (_className == (_x select 1)) exitWith {_item = _x select 0;}; 

	} forEach INV_objItemScriptNames;

if (_item == "") exitWith {hint "Error in inv_objs.sqf";};

if (!([_item, 1] call INV_CanCarryItems)) exitWith {player groupChat localize "STRS_inv_item_obj_cantpack";};
player groupChat localize "STRS_inv_item_obj_packed";
[_item, 1] call INV_AddInventoryItem;
_object call INV_DeleteObject;

};