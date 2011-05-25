_art = _this select 0;

if (_art == "init") then 

{

INV_ServerBombArray = [];
INV_LocalBombArray  = [];

 if (time > 120) then 

	{

	INV_BombGetServerArray = true;
	publicVariable "INV_BombGetServerArray";

	} 
	else 
	{

	INV_BombGetServerArray = false;

	};

INV_BombSpawn = 

	{

	if ((typeName _this) == "OBJECT") then 

		{

		if (not(isNull _this)) then 

			{

			if (((getPos _this) select 2) < 5) then 

				{ 

				"Bo_GBU12_LGB" createVehicle (getPos _this);

				};

			_this setDamage 1;

			};

		} 
		else 
		{

		"Bo_GBU12_LGB" createVehicle _this;

		};

	};

INV_BombIdExists = 

	{

	private["_result", "_i"];
	_result = false;

	for [{_i=0}, {_i < (count INV_ServerBombArray)}, {_i=_i+1}] do 

		{

		if (((INV_ServerBombArray select _i) select 0) == _this) exitWith {_result = true;};

		};

	_result;

	};

INV_BombAdd = 

	{

	INV_ServerBombArray = INV_ServerBombArray + [[ (_this select 1), (_this select 2), (_this select 3), (_this select 4), (_this select 5) ]];
	if (player == (_this select 0)) then {INV_LocalBombArray = INV_LocalBombArray + [[ (_this select 1), (_this select 2), (_this select 3), [] ]]};

	};

INV_BombDelete = 

	{

	private["_name", "_id", "_i", "_j", "_actionArr"];
	_id = _this;

	for [{_i=0}, {_i < (count INV_ServerBombArray)}, {_i=_i+1}] do 

		{

		if (((INV_ServerBombArray select _i) select 0) == _id) exitWith 

			{

			INV_ServerBombArray set [_i, ""]; 
			INV_ServerBombArray = INV_ServerBombArray - [""];

			};

		};

	for [{_i=0}, {_i < (count INV_LocalBombArray)}, {_i=_i+1}] do 

		{

		if (((INV_LocalBombArray select _i) select 0) == _id) exitWith 

			{

			if (alive(vehicle player)) then 

				{

				_actionArr = ((INV_LocalBombArray select _i) select 3);

				for [{_j=0}, {_j < (count _actionArr)}, {_j=_j+1}] do 

					{ 

					(vehicle player) removeAction (_actionArr select _j); 

					};

				};

			INV_LocalBombArray set [_i, ""]; 
			INV_LocalBombArray = INV_LocalBombArray - [""];

			};

		};

	};

INV_BombEdit = 

	{

	private["_id", "_settings", "_i"];
	_id       = (_this select 0);
	_settings = (_this select 1);

	for [{_i=0}, {_i < (count INV_ServerBombArray)}, {_i=_i+1}] do 

		{

		if (((INV_ServerBombArray select _i) select 0) == _id) exitWith 

			{

			(INV_ServerBombArray select _i) set [4, _settings];

			};

		};

	};

if (isServer) then {["server"] execVM "bombs.sqf";};
["client"] execVM "bombs.sqf";

};

if (_art == "server") then 

{

_lastLength = 0;

while {true} do 

	{

	_skipWait = false;

	for [{_i=0}, {_i < (count INV_ServerBombArray)}, {_i=_i+1}] do 

		{

		_array    = (INV_ServerBombArray select _i);
		_id       = _array select 0;
		_vehicle  = _array select 1;
		_name     = _array select 2;
		_status   = _array select 3;
		_settings = _array select 4;

		if (isNull(_vehicle)) exitWith 

			{ 

			format["""%1"" call INV_BombDelete", _id] call broadcast; 
			_skipWait = true; 

			};

		if (not(alive(_vehicle)))  exitWith 

			{ 

			format["""%1"" call INV_BombDelete", _id] call broadcast;
			 _skipWait = true; 

			};

		switch (_name) do 

			{

			case "fernzuenderbombe": 

				{

				if (_settings select 0) then { _vehicle spawn INV_BombSpawn; };
				if (_status == "defused") then { format["""%1"" call INV_BombDelete", _id] call broadcast; };

				};

			case "zeitzuenderbombe": 

				{

				if (_settings select 0 < time) then { _vehicle spawn INV_BombSpawn; };
				if (_status == "defused") then { format["""%1"" call INV_BombDelete", _id] call broadcast; };

				};

			case "aktivierungsbombe": 

				{

				if (!(_settings select 0)) then 

					{ 

					_bombhandler = _vehicle addEventHandler ["engine", { _vehicle = _this select 0;  if (isEngineOn _vehicle) then { _vehicle removeAllEventHandlers "engine"; _vehicle spawn INV_BombSpawn; }; }]; 

					};

				if (_status == "defused") then 

					{ 

					format["""%1"" call INV_BombDelete", _id] call broadcast;
					 _vehicle removeAllEventHandlers "engine"; 

					};

				};

			case "geschwindigkeitsbombe": 

				{

				_active = (_settings select 1);
				_speed  = speed _vehicle;
				if ((_active) and (_speed < (_settings select 0))) then { _vehicle spawn INV_BombSpawn; };
				if (_status == "defused") then { format["""%1"" call INV_BombDelete", _id] call broadcast; };
				if ( (!_active) and (_speed > (_settings select 0)) ) then 

					{

					_settings set [1, true];
					_newtime = time + (_settings select 2); 
					_settings set [3, ((round(time))+(_settings select 2))]; 
					format["if (player in %1) then {player groupChat ""Watch out, the carbomb has been activated. You are not allowed to drive slower than %2 km/h!"";};", _vehicle, round(_settings select 0), (_settings select 2)] call broadcast;

					};

				if (time > _newtime) then 

					{ 

					_array set [3, "defused"]; format["if (player in %1) then {player groupChat localize ""STRS_inv_item_vehiclebomb_deactivated"";};", _vehicle] call broadcast;

					};

				};

			};

		}; 

	if ( (INV_BombGetServerArray) ) then {_lastLength            = count INV_ServerBombArray;INV_BombGetServerArray = false;publicVariable "INV_ServerBombArray";debugArray = debugArray + ["Bombarray public."];};if (!_skipWait) then {sleep 1;};};};if (_art == "client") then {_a1=0; _a2=0; _a3=0; _a4=0; _a5=0; _v=0;while {true} do {_skipWait = false;for [{_i=0}, {_i < (count INV_LocalBombArray)}, {_i=_i+1}] do {_array    = (INV_LocalBombArray select _i);_id       = _array select 0;_vehicle  = _array select 1;_item     = _array select 2;_actionArr= _array select 3;if (isNull(_vehicle))      exitWith { format["""%1"" call INV_BombDelete", _id] call broadcast; _skipWait = true; };if (not(alive(_vehicle)))  exitWith { format["""%1"" call INV_BombDelete", _id] call broadcast; _skipWait = true; };if ( (vehicle player == _vehicle) and ((count _actionArr) == 0) ) then {_v = vehicle player;switch _item do {case "fernzuenderbombe":      {_a1 = _v addAction [localize "STRS_inv_item_vehiclebomb_action_deactivate",  "noscript.sqf", format["[""config"", ""defuse"", ""%1"", ""%2""] execVM ""bombs.sqf"";", _item, _id ]];_actionArr = _actionArr + [_a1];};case "zeitzuenderbombe":      { _a1 = _v addAction [localize "STRS_inv_item_vehiclebomb_action_deactivate", "noscript.sqf",  format["[""config"", ""defuse"", ""%1"", ""%2""] execVM ""bombs.sqf"";", _item, _id ]];_a2 = _v addAction [localize "STRS_inv_item_vehiclebomb_action_changetimer", "noscript.sqf", format["[""config"", ""Timer"",  ""%1"", ""%2""] execVM ""bombs.sqf"";", _item, _id ]];_actionArr = _actionArr + [_a1, _a2];};case "aktivierungsbombe":     {_a1 = _v addAction [localize "STRS_inv_item_vehiclebomb_action_deactivate", "noscript.sqf", format["[""config"", ""defuse"", ""%1"", ""%2""] execVM ""bombs.sqf"";", _item, _id ]];_actionArr = _actionArr + [_a1];};case "geschwindigkeitsbombe": {_a1 = _v addAction [localize "STRS_inv_item_vehiclebomb_action_deactivate", "noscript.sqf", format["[""config"", ""defuse"", ""%1"", ""%2""] execVM ""bombs.sqf"";", _item, _id ]];_actionArr = _actionArr + [_a1];};};};if (vehicle player != _vehicle) then {for [{_j=0}, {_j < (count _actionArr)}, {_j=_j+1}] do { _v removeAction (_actionArr select _j); };_actionArr = [];};(INV_LocalBombArray select _i) set [3, _actionArr];};if (!_skipWait) then {sleep 3;};};};if (_art == "use") then {_item   = _this select 1;_anzahl = _this select 2;if (_item == "zeitzuenderbombe") then {if (!(createDialog "timebombconfig")) exitWith {hint "Dialog Error!";};sliderSetRange [1, zeitbombe_mintime, zeitbombe_maxtime];sliderSetSpeed [1, 1, 10];buttonSetAction [4, "[""plant"", ""zeitzuenderbombe"", sliderPosition 1] execVM ""bombs.sqf""; closedialog 0;"];while {ctrlVisible 1011} do {ctrlSetText [3, format[localize "STRS_inv_item_vehiclebomb_timebombconfig_sec", (round(sliderPosition 1))]];sleep 0.3;};};if (_item == "aktivierungsbombe") then {["plant", "aktivierungsbombe"] execVM "bombs.sqf";};if (_item == "geschwindigkeitsbombe") then {if (!(createDialog "speedbombconfig")) exitWith {hint "Dialog Error!";};sliderSetRange [1, speedbomb_minspeed, speedbomb_maxspeed];sliderSetSpeed [1, 1, 10];sliderSetRange [8, speedbomb_mindur, speedbomb_maxdur];sliderSetSpeed [8, 1, 10];buttonSetAction [4, "[""plant"", ""geschwindigkeitsbombe"", sliderPosition 1, sliderPosition 8] execVM ""bombs.sqf""; closedialog 0;"];while {ctrlVisible 1010} do {ctrlSetText [3, format[localize "STRS_inv_item_vehiclebomb_speedbombconfig_kmh", (round(sliderPosition 1))]];ctrlSetText [10, format["%1 Sec.", (round(sliderPosition 8))]];sleep 0.3;};};if (_item == "fernzuenderbombe") then {["plant", "fernzuenderbombe"] execVM "bombs.sqf";};if (_item == "fernzuender") then {if (!(createDialog "remotebomb_remote")) exitWith {hint "Dialog Error!";};};};if (_art == "plant") then {_item   = _this select 1;_id         = format["%1_%2", player, round(time)];_vcl       = vehicle player;_settings   = [];_exit      = 0;_explosion = 0;if (vehicle player == player) exitWith {player groupChat localize "STRS_inv_item_vehiclebomb_notinvehicle";};format ["if (playe
r in %1) then {player groupChat format[localize ""STRS_inv_item_vehiclebomb_legen_gesehen"", %2];};", _vcl, player] call broadcast;player groupChat format[localize "STRS_inv_item_vehiclebomb_planted", _id];switch _item do {case "fernzuenderbombe":      { _settings = [ false ];                                         };case "zeitzuenderbombe":      { _settings = [ ((round(time))+(_this select 2)) ];              };case "aktivierungsbombe":     { _settings = [ false ];                                         };case "geschwindigkeitsbombe": { _settings = [ (_this select 2), false, (_this select 3), 0 ];  };};( format[ "[%1, ""%2"", %3, ""%4"", ""%5"", %6] call INV_BombAdd;", player, _id, _vcl, _item, "planted", _settings] ) call broadcast;[_item, (-1)] call INV_AddInventoryItem;};if (_art == "config") then {_art  = _this select 1;_name = _this select 2;_id   = _this select 3;if (!(_id call INV_BombIdExists)) exitWith {player groupChat localize "STRS_inv_item_vehiclebomb_notexist,";};switch _name do {case "fernzuenderbombe":      {if (_art == "defuse") then {format["""%1"" call INV_BombDelete", _id] call broadcast;[_name, 1] call INV_AddInventoryItem;player groupChat localize "STRS_inv_item_vehiclebomb_defused";};if (_art == "activate") then {format["if (isServer) then {[""%1"", [%2]] call INV_BombEdit;};", _id, true] call broadcast;};};case "zeitzuenderbombe":      { if (_art == "defuse") then {format["""%1"" call INV_BombDelete", _id] call broadcast;[_name, 1] call INV_AddInventoryItem;player groupChat localize "STRS_inv_item_vehiclebomb_defused";};if (_art == "timer") exitWith {if (!(createDialog "timebombconfig")) exitWith {hint "Dialog Error!";};_sliderpos = 0;ctrlSetText [4, localize "STRS_inv_item_vehiclebomb_changetimer"];sliderSetRange [1, zeitbombe_mintime, zeitbombe_maxtime];sliderSetSpeed [1, 1, 10];buttonSetAction [4, "zeitbombencounterchanged = 1; closedialog 0;"];zeitbombencounterchanged = 0;while {ctrlVisible 2} do {_sliderpos = round(sliderPosition 1);ctrlSetText [3, format[localize "STRS_inv_item_vehiclebomb_sec", _sliderpos]];sleep 0.3;};if (zeitbombencounterchanged == 1) then {format["if (isServer) then {[""%1"", [%2]] call INV_BombEdit;};", _id, (time+_sliderpos)] call broadcast;player groupChat format [localize "STRS_inv_item_vehiclebomb_changed", _sliderpos];};};};case "aktivierungsbombe":     {if (_art == "defuse") then {format["""%1"" call INV_BombDelete", _id] call broadcast;[_name, 1] call INV_AddInventoryItem;player groupChat  localize "STRS_inv_item_vehiclebomb_defused";};};case "geschwindigkeitsbombe": {if (_art == "defuse") then {format["""%1"" call INV_BombDelete", _id] call broadcast;[_name, 1] call INV_AddInventoryItem;player groupChat localize "STRS_inv_item_vehiclebomb_defused";};};};};
