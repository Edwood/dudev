if(!alive player)exitwith{};

_vehicle	= _this select 0;
_selection	= _this select 1;
_damage		= _this select 2;
_shooter	= _this select 3;
_ammo		= _this select 4;
_nvcls		= nearestObjects [getpos _vehicle, ["LandVehicle"], 5];

if(player == _vehicle and (_ammo == "B_12Gauge_74Slug" or _ammo == "B_9x18_SD") and primaryweapon _shooter != "Saiga12K")exitwith{["hit", _shooter, _selection, _damage] execVM "stun.sqf"};

[_selection,_damage,_shooter, _nvcls] Spawn 

	{

	_selection	= _this select 0;
	_damage		= _this select 1;
	_shooter	= _this select 2;
	_nvcls		= _this select 3; 
	
	player SetHit [_selection, _damage];

	if(_selection == "" and _damage >= 1 and !isnull _shooter)then{player setdamage 1};

	if(alive player)exitwith{};
	
	[_shooter, _nvcls] execVM "victim.sqf";
	
	};

false