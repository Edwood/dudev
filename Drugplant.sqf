_art = _this select 0;

if (_art == "Use") then 
{
	_item = _this select 1;
	_anzahl = _this select 2;
	
	if (player != vehicle player) exitwith {};
	if (IsCop) exitwith {};
	if ((player distance marea1 < 40) or (player distance marea2 < 40) or (player distance marea3 < 40) or (player distance marea4 < 40) or (player distance marea5 < 40) or (player distance marea6 < 40) or (player distance marea7 < 40) or (player distance marea8 < 40) or (player distance marea9 < 40) or (player distance marea10 < 40)) then
	{
		
		
		if (_Item == "MarijuanaSeed") then 
			{	
			[_item, -1] call INV_AddInventoryItem;
			player groupchat "You planted some Marijuana";
			_plant = "as_p_fiberPlant_EP1" createvehicle (getpos player);
			_plant setVehicleInit "this addaction [""Burn Marijuana"", ""DrugScript.sqf"", [""Burn"", ""Marijuana""]]";
			processInitCommands; 
			//_plant setPos [getPos _plant select 0, getPos (_plant select 1)+round(random 5)];
			sleep 60;
			player groupChat "Marijuana will be ready in 120 seconds"; 
			sleep 120;		
			_plant setVehicleInit "this addaction [""Harvest Marijuana"", ""DrugScript.sqf"", [""Harvest"", ""Marijuana""]]";
			processinitcommands;
			//_plant setPos [getPos _plant select 0, getPos _plant select 1, 0];
			player groupchat "Marijuana Plant is Ready";
			sleep 800;
			if (alive _plant) then { deletevehicle _plant; };
			};	
		
		if (_Item == "HeroinSeed") then 
			{	
			[_item, -1] call INV_AddInventoryItem;
			player groupchat "You Planted Some Poppy Seeds";
			_plant = "as_t_PrunusS2s_EP1" createvehicle (getpos player);
			_plant setVehicleInit "this addaction [""Burn Heroin"", ""DrugScript.sqf"", [""Burn"", ""Heroin""]]";
			_plant setPos [getPos _plant select 0, getPos _plant select 1, -2];
			processInitCommands; 
			sleep 60;
			player groupChat "Poppy Plant will be ready in 120 seconds"; 
			sleep 120;		
			_plant setVehicleInit "this addaction [""Harvest Heroin"", ""DrugScript.sqf"", [""Harvest"", ""Heroin""]]";
			processinitcommands;
			//_plant setPos [getPos _plant select 0, getPos _plant select 1, 0];
			player groupchat "Poppy Plant Ready";
			sleep 800;
			if (alive _plant) then { deletevehicle _plant; };
			};
	 
		if (_Item == "CocaineSeed") then 
			{	
			[_item, -1] call INV_AddInventoryItem;
			player groupchat "You Planted Some Coca Seeds";
			_plant = "as_t_JuniperusC2s_EP1" createvehicle (getpos player);
			_plant setVehicleInit "this addaction [""Burn Cocaine"", ""DrugScript.sqf"", [""Burn"", ""Cocaine""]]";
			_plant setPos [getPos _plant select 0, getPos _plant select 1, -3];
			processInitCommands; 
			sleep 60;
			player groupChat "Coca Plant Nearly will be ready in 120 seconds"; 
			sleep 120;		
			_plant setVehicleInit "this addaction [""Harvest Cocaine"", ""DrugScript.sqf"", [""Harvest"", ""Cocaine""]]";
			processinitcommands;
			//_plant setPos [getPos _plant select 0, getPos _plant select 1, 0];
			player groupchat "Coca Plant Ready";
			sleep 800;
			if (alive _plant) then { deletevehicle _plant; };
			};     	
	}
	else
	{
	player groupchat "You are not within 40 feet of a drug plant area to plant this drug";
	};
	
	

};







