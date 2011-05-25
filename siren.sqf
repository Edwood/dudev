_this = _this select 3;
_art  = _this select 0;
_vcl  = vehicle player;
_playtime     = 120;
_lichtstaerke = 0.3;
_shortDur     = 1.00;
_longDur      = 11.60;

if (_art == "activate") then 
{
	if (isNil "SIREN_SirenePlaying") then 
	{
		SIREN_SirenePlaying = false;
	};
	
	if ((SIREN_SirenePlaying) or (!(player == (driver (vehicle player))))) exitWith {};
	
	SIREN_SirenePlaying = true;
	_turnOn       = false;
	
	if (call compile format["isNil(""%1_Sirene_on"")", _vcl]) then
	{
		_turnOn = true;
	}
	else 
	{
		if (call compile format["not(%1_Sirene_on)", _vcl]) then
		{
			_turnOn = true;
		}
		else 
		{
			_turnOn = false;
		};
	};
	
	if (_turnOn) then 
	{
		format ["[0,0,0,[""client"", %1]] execVM ""siren.sqf"";", player] call broadcast;
		titletext["Siren on", "PLAIN DOWN"];
	} 
	else 
	{
		call compile format["%1_Sirene_on = false; publicVariable ""%1_Sirene_on"";", _vcl];
		titletext["Siren off", "PLAIN DOWN"];
	};
	
	sleep 1;

	SIREN_SirenePlaying = false;
};

if (_art == "client") then 
{
	_vcl         = vehicle (_this select 1);
	_driver      = driver _vcl;
	_starttime   = time;
	
	call compile format["%1_Sirene_on = true;", _vcl];

	_light1 = "#lightpoint" createVehicleLocal (getpos _vcl);
	_light1 setLightBrightness _lichtstaerke;
	_light1 setLightAmbient   [0, 0, 0.3];
	_light1 setLightColor     [0, 0, 0.5];

	_light2 = "#lightpoint" createVehicleLocal (getpos _vcl);
	_light2 setLightBrightness _lichtstaerke;
	_light2 setLightAmbient   [0.3, 0, 0];
	_light2 setLightColor     [0.5, 0, 0];

	_lichtscript = [0,1,2,["licht", _vcl, [_light1, _light2]]] execVM "siren.sqf";
	
	while {( ((time < _starttime+_playtime) or (_driver == driver _vcl)) and (alive _vcl) and (call compile format["%1_Sirene_on", _vcl]))} do 
	{
		if (player distance _vcl < 500) then 
		{
			if (speed _vcl == 0) then
			{
				sleep 1;
			}
			else
			{
				if (speed _vcl > 60) then
				{

					_vcl say ["Siren_Long", 1];
					sleep _longDur;
				} 
				else 
				{
					_vcl say ["Siren_Short", 1];
					sleep _shortDur;
				};
			};
		} 
		else
		{
			sleep 5;
		};

		if (isNull(_vcl)) exitWith {};
	};

	terminate _lichtscript;
	deleteVehicle _light1;
	deleteVehicle _light2;
	call compile format["%1_Sirene_on = nil;", _vcl];
};

if (_art == "licht") then 
{
	_vcl    = _this select 1;
	_light1 = ((_this select 2) select 0);
	_light2 = ((_this select 2) select 1);
	
	while {true} do
	{
		if (player in _vcl) then 
		{
			_light1 setLightBrightness (_lichtstaerke / 2);
			_light2 setLightBrightness (_lichtstaerke / 2);
		}
		else 
		{
			_light1 setLightBrightness _lichtstaerke;
			_light2 setLightBrightness _lichtstaerke;
		};

		_light1 lightAttachObject [_vcl, [0,0,0]];

		sleep 0.15;

		LightDetachObject _light1;
		_light1 setpos [0,0,0];

		sleep 0.075;

		_light2 lightAttachObject [_vcl, [0,0,0]];

		sleep 0.15;	

		LightDetachObject _light2;
		_light2 setpos [0,0,0];	

		sleep 0.075;

		_light1 lightAttachObject [_vcl, [0,0,0]];

		sleep 0.15;		

		LightDetachObject _light1;
		_light1 setpos [0,0,0];

		sleep 0.5;

		_light2 lightAttachObject [_vcl, [0,0,0]];

		sleep 0.15;

		LightDetachObject _light2;
		_light2 setpos [0,0,0];

		sleep 0.5;
	};
};
