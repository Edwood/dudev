INV_CreateGunboxLocal = {};

INV_DialogPlayers = 

{

private ["_c", "_Fid", "_Fname", "_Fingame", "_Findex", "_Flistlen", "_Feigenenum"];
_Fid        = _this select 0;
_Fname      = _this select 1;
_Fingame    = _this select 2;
_Findex     = 0;
_Flistlen   = 0;
_Feigenenum = -1;

for [{_c=0}, {_c < (count INV_PLAYERSTRINGLIST)}, {_c=_c+1}] do 

	{

	_Fspieler = INV_PLAYERSTRINGLIST select _c;

	if ( ((_Fingame) or (_Fspieler call ISSE_UnitExists)) ) then 

		{

		if (_Fname) then 

			{

			_Findex = lbAdd [_Fid, format ["%1 - (%2)", _Fspieler, name (call compile _Fspieler)]];

			} 
			else 
			{

			_Findex = lbAdd [_Fid, _Fspieler];

			};

			lbSetData [_Fid, _Findex, format["%1", _c]];
			if (_Fspieler == INV_ROLESTRING) then {_Feigenenum = _Flistlen;};
			_Flistlen = _Flistlen + 1;

		};

	};

[_Flistlen, _Feigenenum]

};

INV_CreateVehicle = 

{

private ["_classname", "_position","_dir"];
_classname = _this select 0;
_logic	   = _this select 1;

call compile format ['

newvehicle = _classname createVehicle %4; 
newvehicle setpos %4; 
newvehicle setdir %5; 
newvehicle setVehicleInit "
this setVehicleVarName ""vehicle_%1_%2""; 
vehicle_%1_%2 = this; 
clearWeaponCargo this; 
clearMagazineCargo this;
newvehicle lock true;

"; 
processInitCommands;
INV_VehicleArray = INV_VehicleArray + [vehicle_%1_%2]; 
"INV_ServerVclArray = INV_ServerVclArray + [vehicle_%1_%2];if (""%3"" != """") then {[""CreatedVehicle"", vehicle_%1_%2, typeOf vehicle_%1_%2, %4] execVM ""%3"";};" call broadcast;
', player, round(time), INV_CALL_CREATVEHICLE, getpos _logic, getdir _logic];

};

INV_CreateWeapon = 

{

private["_class", "_menge", "_crate"];
_class = _this select 0;
_menge = _this select 1;
_crate = _this select 2;
_crate setDamage 0;

_crate setvehicleinit format["
this addweaponCargo [""%1"",%2];
", _class, _menge];
processInitCommands; 

};

INV_CreateMag = 

{

private["_class", "_menge", "_crate"];
_class = _this select 0;
_menge = _this select 1;
_crate = _this select 2;
_crate setDamage 0; 

_crate setvehicleinit format["
this addmagazineCargo [""%1"",%2];
", _class, _menge];
processInitCommands; 

};

INV_CreateItem = 

{

private["_class", "_menge", "_stor"];
_class = _this select 0;
_menge = _this select 1;
_stor  = _this select 2;
[_class, _menge, _stor] call INV_AddItemStorage;

};
