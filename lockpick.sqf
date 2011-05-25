_art = _this select 0;

if (_art == "use") then 

{

_item   = _this select 1;
_anzahl = _this select 2;
_closeVcl   = dummyobj;
_closest    = -1;
_incarpark = false;

	{

	if (not(isNull(_x))) then 

		{	

		if (player distance _x < 7 and (player distance _x < _closest or _closest == -1)) then 

			{																												

			_closest  = (player distance _x);																																				
			_closeVcl = _x;																																													

			};

		};

	} forEach INV_ServerVclArray;											

if (not(_closest == -1)) then 

	{

	if(_closeVcl isKindOf "Tank" || _closeVcl isKindOf "Air")exitwith{player groupchat "You cannot lockpick this vehicle!"};
																						
	if (_closeVcl in INV_VehicleArray) then 

		{	

		player groupchat localize "STRS_inventar_lockpick_already";

		} 
		else 
		{

			{

			if ((player distance (_x select 0)) < (_x select 1)) then {_incarpark = true};

			} forEach INV_VehicleGaragen;	
					
		if ((random 100) < lockpickchance) then 

			{	

			INV_VehicleArray = INV_VehicleArray + [_closeVcl]; 
			player groupChat localize "STRS_inventar_lockpick_success";																															

			if (([player, (civarray + coparray), 40] call INV_Seen or _incarpark) and !iscop) then 

				{ 

				format [" [""StoleVcl"", %1, %3] spawn Isse_AddCrimeLogEntry; if(!(""vehicle theft"" in %1_reason))then{%1_reason = %1_reason + [""vehicle theft""]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 10000; hint format[localize ""STRS_inventar_lockpick_gesehen"",%1, %3]; ", player, longrolenumber, _closeVcl] call broadcast;	
	
				};

				

			} 
			else 
			{
																																												
			player groupChat localize "STRS_inventar_lockpick_noluck";

			if (([player, (civarray + coparray), 40] call INV_Seen or _incarpark) and !iscop) then 

				{ 

				format [" [""AttemptedStoleVcl"", %1, %3] spawn Isse_AddCrimeLogEntry; if(!(""attempted vehicle theft"" in %1_reason))then{%1_reason = %1_reason + [""attempted vehicle theft""]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + 2000; hint ""%1 was seen attempting to lockpick a vehicle (Registration plate: %3)"";", player, longrolenumber, _closeVcl] call broadcast;	
	
				};			

			};
								
		[_item, -1] call INV_AddInventoryItem;

		};		

	} 
	else 
	{
		 																					
	player groupChat localize "STRS_inventar_lockpick_zuweit";		

	};

};










	
