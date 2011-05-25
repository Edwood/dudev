private ["_camera"];

_array = _this select 3;
_art   = _array select 0;
_geld  = 'geld' call INV_GetItemAmount;

if (_art == "jailcam") then 

{

_camera = "camera" camCreate [(getPos prison_logic select 0)+40,(getPos prison_logic select 1),20];
if (!(createDialog "MainCamDialog")) exitWith {hint "Dialog Error!";};	
[0,0,0,["camcontrol",_camera,[10,30]]] execVM "copcams.sqf";
_camera cameraEffect ["internal", "back"];
_camera camSetPos [(getPos prison_logic select 0)+40,(getPos prison_logic select 1),20];
_camera camSetTarget prison_logic;
_camera camSetFOV 0.700;
_camera camPreload 5;
_camera camCommit 0;

};

if (_art == "civcam") then 

{

_civs      = _array select 1;
_watchtime = round(_array select 2);
_cost      = _watchtime*10000000; 
_civ       = playerarray select _civs;
_intrannum = round(random 100);
if (not((format["%1", (_civ)]) call ISSE_UnitExists)) exitWith {player groupChat "Selected Player is not Ingame.";};
if (_civmarkerjammed == 1) exitWith {player groupChat "This Civillian is currently in a Black spot";};
if (_intrannum > 75) exitWith {player groupChat "This Civillian is currently in a Black spot";};
_exit = false;

if (_civs < civscount) then 

	{

	if (_geld < _cost) exitWith 

		{

		player groupChat format[localize "STRS_camciv_nomoney"];
		_exit = true;

		};

	['geld', -(_cost)] call INV_AddInventoryItem;

	if ((call compile format ["%1_wanted", _civ]) == 1) then 

		{

		titletext [format[localize "STRS_civcam_wanted", playerstringarray select _civs], "plain down"];

		} 
		else 
		{

		titletext [format[localize "STRS_civcam_notwanted", playerstringarray select _civs], "plain down"];

		};

	};

if (_exit) exitWith {};	

_camera = "camera" camcreate [(getpos vehicle _civ select 0),(getpos vehicle _civ select 1),15];
if (!(createDialog "MainCamDialog")) exitWith {hint "Dialog Error!";};
[0,0,0,["camcontrol",_camera,[10,30]]] execVM "copcams.sqf";
_camera cameraEffect ["internal", "back"];
_camera camSetPos [(getPos vehicle _civ select 0),(getPos vehicle _civ select 1),10];
_camera camSetTarget vehicle _civ;
_camera camSetFOV 0.700;
_camera camPreload 5;
_camera camCommit 0;
waitUntil {camCommitted _camera};
_camera camsetpos [(getPos vehicle _civ select 0),(getPos vehicle _civ select 1),10];
_camera camSetTarget vehicle _civ;
_camera camSetFOV 0.700;
_camera camCommit 0;
_endTime = time + _watchtime;

sliderSetRange [1055, 0, 50];
sliderSetSpeed [1055, 100, 250];
sliderSetPosition [1055, 10];

_dx = -20;

while {(ctrlVisible 1050) and (time < _endTime)} do 

	{

	_camera camSetTarget [(10 * sin (getDir vehicle _civ))+(getPos vehicle _civ select 0), 10*cos (getDir vehicle _civ)+(getPos vehicle _civ select 1), (getPos vehicle _civ select 2)];
	_camera camSetPos [(getPos vehicle _civ select 0) + _dx * sin (getDir vehicle _civ), (getPos vehicle _civ select 1) + _dx * cos (getDir vehicle _civ), (getPos vehicle _civ select 2)+(round(sliderPosition 1055))];
	_camera camSetFOV 0.700;
	_camera camCommit 0;
	waituntil {camCommitted _camera};

	sleep 0.01;

	};

setAperture -1;
closeDialog 0;

};




if (_art == "camcontrol") then 

{

_camera = _array select 1;
_zoom   = _array select 2;
buttonSetAction [25, format["camUseNVG true;"] ];
buttonSetAction [26, format["camUseNVG false;"] ];
buttonSetAction [28, format["closeDialog 0;"] ];
sliderSetRange [10, (_zoom select 0), (_zoom select 1)];
sliderSetSpeed [10, 0.05, 0.25];
sliderSetRange [11, 0, 200];
sliderSetSpeed [11, 0.05, 20];	
_slider1 = 0;
_slider2 = 0;

while {(ctrlVisible 1050)} do 

	{

	if ( (sliderPosition 10) != _slider1 ) then {_slider1 = (round(sliderPosition 10));};

	if ( (sliderPosition 11) != _slider2 ) then 

		{

		_slider2 = (sliderPosition 11);if (_slider2 < 600) then {setAperture _slider2;}else{setAperture -1;};

		};

	sleep 0.1;

	};

_camera cameraEffect ["terminate","back"];
titleCut [" ","Black in",1];	
camDestroy _camera;

};

