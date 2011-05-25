ClientSaveVar = 

{

private ["_Fvarname", "_Fvarvalue"];

_Fvarname  = _this select 0;
_Fvarvalue = _this select 1;

if (! (isNull player)) then 

	{

	format ["if (isServer) then {[%1, ""%2"", %3] spawn ServerSaveVar;};", player, _Fvarname, _Fvarvalue] call broadcast;

	} else {hint "Error: player is Null.";};

true

};

ServerSaveVar = 

{

private ["_c", "_Fplayer", "_Fvarname", "_Fvarvalue", "_Ffound", "_Fvargefunden"];

_Fplayer      = _this select 0;
_Fvarname     = _this select 1;
_Fvarvalue    = _this select 2;
_Ffound       = false;
_Fvargefunden = true;

if (isNil "serverKontoArray") then {serverKontoArray = [];};

for [{_c=0}, {_c < (count serverKontoArray)}, {_c=_c+1}] do 

	{

	if (((serverKontoArray select _c) select 0) == (name _Fplayer)) then {_Ffound = true;};

	};

if (!(_Ffound)) then {serverKontoArray = serverKontoArray + [ [ (name _Fplayer) ] ];};

for [{_c=0}, {_c < (count serverKontoArray)}, {_c=_c+1}] do 

	{

	if (((serverKontoArray select _c) select 0) == (name _Fplayer)) then 

		{

		_Fvargefunden = false;
	
		for [{_b=1}, {_b < (count (serverKontoArray select _c))}, {_b=_b+1}] do 

			{

			if ((((serverKontoArray select _c) select _b) select 0) == _Fvarname) then 

				{

				(serverKontoArray select _c) set [_b, [_Fvarname, _Fvarvalue]];
				_Fvargefunden = true;

				};

			};

		if (not(_Fvargefunden)) then {serverKontoArray SET [_c, ((serverKontoArray select _c) + [ [_Fvarname, _Fvarvalue] ])];};

		};

	};

true

};


ClientRequestVar = {JIP_Stats_Ready = false;format ["if (local server) then {[%1] spawn ServerLoadVar;};", player] call broadcast;true};

ServerClearKonto = 

{

private ["_i", "_j", "_k", "_arr", "_return", "_name"];

_name   = ""; 
if ((count _this) > 0) then {_name = _this select 0;};
_return = 0;

for [{_i=0}, {_i < (count serverKontoArray)}, {_i=_i+1}] do 

	{

	for [{_j=1}, {_j < (count ((serverKontoArray) select _i))}, {_j=_j+1}] do 

		{

		if ( (((serverKontoArray select _i) select 0) == _name) or (_name == "")  ) then 

			{

			if (( typeName (((serverKontoArray select _i) select _j) select 1) ) == "ARRAY") then 

				{

				for [{_k=0}, {_k < (count (((serverKontoArray select _i) select _j) select 1))}, {_k=_k+1}] do 

					{

					if ((typeName ((((serverKontoArray select _i) select _j) select 1) select _k)) == "OBJECT") then 

						{

						if (isNull((((serverKontoArray select _i) select _j) select 1) select _k)) then 

							{

							_arr = (((serverKontoArray select _i) select _j) select 1);
							_arr set [_k, "KontoDeleteString"]; 
							_arr = _arr - ["KontoDeleteString"];
							((serverKontoArray select _i) select _j) set [1, _arr];
							_return = _return + 1;

							};

						};

					};

				};

			if (( typeName (((serverKontoArray select _i) select _j) select 1) ) == "OBJECT") then {};

			};

		};

	};

_return;

};

ServerLoadVar = 

{

private ["_spieler", "_name", "_found", "_statarray", "_i", "_j", "_k", "_h"];

_spieler   = (_this select 0);
_name      = name _spieler;
_found     = false;
_statarray = [];

if (isNil "serverKontoArray") then {serverKontoArray = [];};

_h = [_name] spawn ServerClearKonto;
waitUntil{(scriptDone _h)};

{

if (_name == (_x select 0)) exitWith {_statarray = (_x) - [(_x select 0)]; _found = true}; 

} forEach serverKontoArray;

format["if (player == %1) then {%2 spawn ClientLoadVar;};", _spieler, _statarray] call broadcast;

_found

};

ClientLoadVar = 

{

private ["_c", "_Fvararray"];

_Fvararray = _this;

for [{_c=0}, {_c < (count _Fvararray)}, {_c=_c+1}] do 

	{

	call compile format ['%1 = %2;', ((_Fvararray select _c) select 0), ((_Fvararray select _c) select 1)];
	
	};

JIP_Stats_Ready = true;
true

};
