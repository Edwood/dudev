private["_handled", "_faceCP", "_faceVP"];

_key     = _this select 1;
_shift   = _this select 2;
_handled = false;

if(isstunned) exitwith

	{

	if(_key == 50)then{_handled = true};
	if(_key == 11)then{_handled = true};

	_handled

	};

switch _key do

{
	
	//TAB key
	case 15: 

	{
	
	if(INV_shortcuts)then{INV_shortcuts=false; titletext["DU keys off", "PLAIN DOWN"]}else{INV_shortcuts=true; titletext["AL keys on", "PLAIN DOWN"]};
	
	};
	
	//L key
	case 38: 

	{

	if(!INV_shortcuts)exitwith{};
	
	_vcls = nearestobjects [getpos player, ["LandVehicle", "Air", "ship"], 7];
	_vcl = _vcls select 0;

	if(!(_vcl in INV_VehicleArray))exitwith{player groupchat "You do not have the keys to this vehicle.";_handled=true;};
	["schluessel", _vcl, 0] execVM "keys.sqf";
	_handled=true;
	
	};

	//T key
	case 20: 

	{

	if(!INV_shortcuts)exitwith{};
	
	if(dialog)exitwith{closeDialog 0;};
	
	_vcls = nearestobjects [getpos player, ["LandVehicle", "Air", "ship", "LocalBasicWeaponsBox"], 7];
	_vcl = _vcls select 0;
	if (player != driver _vcl)exitwith{player groupchat "You must be in the drivers seat to get to the trunk";};
	if(!(_vcl in INV_VehicleArray) and typeof _vcl == "LocalBasicWeaponsBox")exitwith{};
	if(!(_vcl in INV_VehicleArray))exitwith{player groupchat "You do not have the keys to this vehicle.";};
	if(!isnull _vcl)then{call compile format['[0,0,0,["%3", "public", ["vcl", "%2", %1]]] execVM "storage.sqf";', _vcl, (typeOf _vcl), format["%1_storage", _vcl]];}; 
	
	};

	//E key
	case 18: 

	{
	

	if(!INV_shortcuts)exitwith{};
	if(keyblock)exitwith{};
	if(dialog)exitwith{closeDialog 0;};
	if(local_arrest == 1)exitwith{};
	
	private ["_civ"];

	for [{_i=1}, {_i < 3}, {_i=_i+1}] do
    
		{

		if(vehicle player != player) exitwith{};

       		_range = _i;
       		_dirV = vectorDir vehicle player;
       		_pos = player modelToWorld [0,0,0];
        	_posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];
       	 	_men    = nearestobjects [_posFind,["Man", "RUBasicAmmunitionBox"], 1] - [player];
		_atms   = nearestObjects [_posFind,["Man", "Misc_cargo_cont_tiny"],2];
		_civ    = _men select 0;
		_atm	= _atms select 0;
		
		if(iscop and !(isnull _civ) and _civ in civarray) exitwith

			{

			_i = 4;
			call compile format['[0,0,0, ["civmenu", "%1", %1]] execVM "interact.sqf";', _civ];
			_handled=true;
				
			};

		if(isciv and !(isnull _civ) and _civ in playerarray) exitwith

			{

			_i = 4;
			call compile format['[0,0,0, ["civinteraktion", "%1", %1]] execVM "interact.sqf";', _civ];
			_handled=true;
				
			};

		if(!(isnull _civ) and _civ in shopusearray) exitwith

			{

			_i = 4;
			_id = _civ call INV_getshopnum;
			[0,0,0,[_id]] execVM "shopdialogs.sqf";
			_handled=true; 
				
			};

		if(!(isnull _atm) and _atm in bankflagarray) exitwith

			{

			_i = 4;
			if(!local_useBankPossible)exitwith{hint "The ATM rejected your card"};
			[] execVM "atm.sqf"; 
			_handled=true;
				
			};

		};

	if(_handled)exitwith{};

	if(vehicle player == player) exitwith

		{

		private ["_vcl"];

		for [{_i=1}, {_i < 3}, {_i=_i+1}] do
    
			{

       			_range = _i;
       			_dirV = vectorDir vehicle player;
       			_pos = player modelToWorld [0,0,0];
        		_posFind = [(_pos select 0)+(_dirV select 0)*_range,(_pos select 1)+(_dirV select 1)*_range,(_pos select 2)+(_dirV select 2)*_range];
       	 		_vcls    = nearestobjects [_posFind,["LandVehicle", "Air", "ship"], 2];
			_vcl     = _vcls select 0;

			if(!(isnull _vcl))exitwith{_i = 4};

			}; 

		if(locked _vcl)exitwith{};
		
		if(_vcl emptyPositions "Driver" > 0)exitwith   {player action ["getInDriver", _vcl];[] execVM "checkradio.sqf"};
		if(_vcl emptyPositions "Gunner" > 0)exitwith   {player action ["getInGunner", _vcl];[] execVM "checkradio.sqf"};
		if(_vcl emptyPositions "Commander" > 0)exitwith{player action ["getInCommander", _vcl];[] execVM "checkradio.sqf"};
		if(_vcl emptyPositions "Cargo" > 0)exitwith    {player action ["getInDriver", _vcl];_vcl spawn {keyblock=true;sleep 0.5;player moveincargo _this; keyblock=false;};};
			
		};

	_vcl  = vehicle player;

	if(_vcl != player) exitwith

		{

		if(locked _vcl)exitwith{player groupchat "The vehicle is locked."};
		if(speed _vcl > 30)exitwith{player groupchat "The vehicle is moving too fast"};
		player action ["getOut", _vcl];
		
		};

	};

	//F key
	case 33: 

	{

	if(!INV_shortcuts)exitwith{};

	if(iscop) then {if(vehicle player != player)then{[0,0,0,["activate"]] execVM "siren.sqf"; _handled=true;};};

	if(_shift and (vehicle player == player) and call INV_isArmed) then

		{
		
		_men = nearestobjects [getpos player, ["Man"], 2] - [player];
		
		_men spawn 

			{
		
			(format ["%1 switchmove ""%2"";", player, "AwopPercMstpSgthWnonDnon_end"]) call broadcast;
			sleep 0.2;

			if(count _this > 0) then

				{

				_civ = _this select 0;
 				if(_civ distance player > 2 or !isPlayer _civ)exitwith{};
				(format ["if (player == %1) then {[""hit"", %2, ""Melee"", 1] execVM ""stun.sqf""};", _civ, player]) call broadcast;																																																								
				player groupchat "you stunned this player!";			

				};
					
			};

		_handled=true;

		};		

	};

	//tilde key
	case 41: 

	{

	if(!INV_shortcuts)exitwith{};
	if(dialog)exitwith{closeDialog 0;_handled=true;};

	if(iscop) then 

		{

		if(vehicle player == player)then{[0,0,0,["copmenulite"]] execVM "maindialogs.sqf"};
		if(vehicle player != player)then{[0,0,0,["copmenu"]] execVM "maindialogs.sqf"};
		_handled=true;
		
		};

	};

	//1 key
	case 2: 

	{

	if(!INV_shortcuts)exitwith{};
	_handled=true;
	if(dialog)exitwith{closeDialog 0;};
	
	[0,0,0,["spielerliste"]] execVM "maindialogs.sqf";
		
			
	};

	//2 key
	case 3: 

	{

	if(!INV_shortcuts)exitwith{};
	_handled=true;
	if(dialog)exitwith{closeDialog 0;};
	
	execVM "inventory.sqf";
	
	};

	//3 key
	case 4: 

	{

	if(!INV_shortcuts)exitwith{};

	if(keyblock or vehicle player != player)exitwith{};

	keyblock=true; [] spawn {sleep 2; keyblock=false;};

	player playmove "amovpercmstpssurwnondnon"; 
	_handled=true;
	
	};

	//4 key
	case 5: 

	{

	if(!INV_shortcuts)exitwith{};

	if(keyblock)exitwith{};

	keyblock=true; [] spawn {sleep 2; keyblock=false;};

	if(vehicle player == player)then{(format ["%1 switchmove ""%2"";", player, "normal"]) call broadcast;_handled=true;};

	};

	//W key
	case 17: 

	{

	_vcl = vehicle player;

	if(_vcl == player)exitwith{};

	if(typeof _vcl == "Smallboat_1" or typeof _vcl == "Smallboat_2") then

		{

		_vel = velocity _vcl;
		_spd = speed _vcl;
		if(_spd <= 20)then{_vcl setVelocity [(_vel select 0) * 1.005, (_vel select 1) * 1.005, (_vel select 2) * 0.99]};
		if(_spd <= 30 and _spd > 20)then{_vcl setVelocity [(_vel select 0) * 1.004, (_vel select 1) * 1.004, (_vel select 2) * 0.99]};
		if(_spd <= 40 and _spd > 30)then{_vcl setVelocity [(_vel select 0) * 1.003, (_vel select 1) * 1.003, (_vel select 2) * 0.99]};

		};

	if(typeof _vcl == "Fishing_Boat") then

		{

		_vel = velocity _vcl;
		_spd = speed _vcl;
		if(_spd <= 30)then{_vcl setVelocity [(_vel select 0) * 1.001, (_vel select 1) * 1.001, (_vel select 2) * 0.99]};
		
		};

	if(typeof _vcl == "TT650_Ins") then

		{

		_vel = velocity _vcl;
		_spd = speed _vcl;
		_vcl setVelocity [(_vel select 0) * 1.001, (_vel select 1) * 1.001, (_vel select 2) * 0.99];
		
		};

	_lvl	= _vcl getvariable "tuning";

	if(isEngineOn _vcl and !isnil "_lvl") then

		{
		
		_vel = velocity _vcl;
		_spd = speed _vcl;
		if(_lvl == 1)then{_vcl setVelocity [(_vel select 0) * 1.002, (_vel select 1) * 1.002, (_vel select 2) * 0.99]};
		if(_lvl == 2)then{_vcl setVelocity [(_vel select 0) * 1.004, (_vel select 1) * 1.004, (_vel select 2) * 0.99]};
		if(_lvl == 3)then{_vcl setVelocity [(_vel select 0) * 1.006, (_vel select 1) * 1.006, (_vel select 2) * 0.99]};
		if(_lvl == 4)then{_vcl setVelocity [(_vel select 0) * 1.008, (_vel select 1) * 1.008, (_vel select 2) * 0.99]};
		if(_lvl == 5)then{_vcl setVelocity [(_vel select 0) * 1.009, (_vel select 1) * 1.009, (_vel select 2) * 0.99]};
		
		};

	};

	//Left Shift key
	case 42: 

	{

	_vcl = vehicle player;

	if(_vcl == player)exitwith{};

	_nos	= _vcl getvariable "nitro";

	if(isEngineOn _vcl and !isnil "_nos") then

		{
		
		_vel  = velocity _vcl;
		_spd  = speed _vcl;
		_fuel = fuel _vcl;
		_vcl setVelocity [(_vel select 0) * 1.01, (_vel select 1) * 1.01, (_vel select 2) * 0.99];
		_vcl setfuel (_fuel - 0.0003);
		
		};

	};

};

_handled;



