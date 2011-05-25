_this = _this select 3;
_art  = _this select 0;
_geld = 'geld' call INV_GetItemAmount;

if (_art == "ClientWahlc") then 

{

if (isNil("WahlChief")) then {WahlChief = false;};
if (WahlChief) exitWith {player groupChat "You just voted.";};
_spielernum   = call compile (_this select 1);	
format["if (isServer) then {[0,1,2,[""ServerChief"", %1, %2]] execVM ""chief.sqf"";};", _spielernum, rolenumber] call broadcast;
player groupChat format[localize "STRS_chief_votedfor", (playerstringarray select _spielernum)];
WahlChief = true;
sleep 15;
WahlChief = false;

};

if (_art == "ServerChief") then 

{	

_kandidatnum = (_this select 1);
_waehlernum  = ((_this select 2)-1);

for [{_i=0}, {_i < count(WahlArrayc)}, {_i=_i+1}] do 
	
	{
	
	_arr = (WahlArrayc select _i);
	if (_waehlernum in _arr) exitWith {_arr = _arr - [_waehlernum];	WahlArrayc SET [_i, _arr];};
	
	};

WahlArrayc SET [_kandidatnum, ((WahlArrayc select _kandidatnum )+ [_waehlernum])];

};

if (_art == "serverloop") then 

{	

_currentchief = -1;

while {true} do 

	{

	for [{_i=0}, {_i < 30}, {_i=_i+1}] do 

		{	

		sleep 30;	

		for [{_k=0}, {_k < count(WahlArrayc)}, {_k=_k+1}] do 

			{

			if (not((playerstringarray select _k) call ISSE_UnitExists)) then {WahlArrayc SET [_k, [] ]};	

			};

		};

	_MaxStimmen = 0;
	_MaxPos     = -1;

	for [{_i=0}, {_i < count(WahlArrayc)}, {_i=_i+1}] do 

		{

		if ( ((count (WahlArrayc select _i)) > _MaxStimmen) and ((playerstringarray select _i) call ISSE_UnitExists) ) then 

			{	

			_MaxStimmen = (count (WahlArrayc select _i));
			_MaxPos     = _i;

			};

		};	

	if (_MaxPos == -1) then 

		{

		"hint localize ""STRS_chief_nomajor"";" call broadcast;_currentchief = -1;

		} 
		else 
		{

		if (_currentchief == _MaxPos) then 

			{

			"hint localize ""STRS_chief_majorstays"";" call broadcast;

			} 
			else 
			{

			_currentchief = _MaxPos;
			_chiefString  = (playerstringarray select _currentchief);
			format["hint format[localize ""STRS_chief_new"", ""%3"", %2]; if ((rolenumber-1) == %1) then {ischief = true;} else {ischief = false;};", _MaxPos, _MaxStimmen, _chiefString] call broadcast;	
		
			};

		};

	chiefNumber = _currentchief;
	PUBLICVARIABLE "chiefNumber";
	sleep 1; 
	};

};

if (_art == "clientgesetz") then 

{

_nummer = _this select 1;
_text   = _this select 2;
if (_nummer == -1) exitWith {};
if ((_text call ISSE_str_Length) > 60) exitWith {player groupChat localize "STRS_text_zu_lang";};
format ["GesetzArray SET [%1, ""%2""]; hint format [localize ""STRS_gilde_gesetze_public"", %1, ""%2""];", _nummer, _text] call broadcast;

};

if (_art == "steuernchief") then 

{

_item = _this select 1;
_mag  = _this select 2;	
_weap = _this select 3;
_vcl  = _this select 4;	
_bank = _this select 5;
format ["(INV_ItemTypenArray select 0) SET [2, %1]; (INV_ItemTypenArray select 1) SET [2, %2]; (INV_ItemTypenArray select 2) SET [2, %3]; (INV_ItemTypenArray select 3) SET [2, %4];bank_steuer = %5; hint ""The mayor has changed the taxes!"";", _item, _vcl, _mag, _weap, _bank] call broadcast;

};

