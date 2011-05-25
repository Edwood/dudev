private ["_T", "_P", "_min_P", "_min_dist"];
_delay = 3;
_T = _this select 0;
sleep random _delay;
if(dll_tow_debug) then {
	player sidechat format["searching for P.. from %1", typeOf _T];
};
_T_axis_offset = (_T getvariable "dll_tow_back_axis_offset") + [0];

while {alive _T && !(_T getVariable "dll_tow_towing")} do {
		_aTpos = _T modelToWorld _T_axis_offset;

		_objs = nearestobjects [getpos _T, ["Air", "Ship", "LandVehicle"], 15];
		
		if ((count _objs) > 0) then{
			_min_dist = 1000;
			{
				_P = _x;
				_P_axis_offset = (_P getvariable "dll_tow_front_axis_offset");
				_P_wheel_offset = (_P getvariable "dll_tow_wheel_offset");
				_isTowable = !isNil("_P_wheel_offset") && !isNil("_P_axis_offset");			
				if(_isTowable && _P != _T) then {			
					_aPpos = _P modelToWorld (_P_axis_offset + [0]);
					//get the x and y length of the difference vector
					_dx_axis = (_aTpos select 0) - (_aPpos select 0);
					_dy_axis = (_aTpos select 1) - (_aPpos select 1);					
					_d_axis = sqrt(_dx_axis^2 + _dy_axis^2);//absolute length of diff vector
					if(_d_axis < _min_dist) then { // find closest axis
						_min_dist = _d_axis;
						_min_P = _P;
					}
				}
			} forEach _objs;
			_P = _min_P;
			_canAttach = alive _P && _min_dist < 2 && !(_T getVariable "dll_tow_towing");
			_T setvariable ["dll_tow_canAttach", _canAttach];
			
			if(count crew _T > 0 && dll_tow_debug) then {player sidechat format["Found P: %1 - Axis dist: %2", typeof(_P), _min_dist];};
			if(_canAttach) exitWith {
				_T setvariable ["dll_tow_P", _P];
			};			
		}
		else{
			if(count crew _T > 0 && dll_tow_debug) then {player sidechat "nothing found yet...";};
		};
	if(count crew _T > 0) then { 
		sleep (_delay / 4); // search faster when driver is in
	}
	else{
		sleep _delay;
	};
};
if(dll_tow_debug) then {
player sidechat "Search ended...";
};