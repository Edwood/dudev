_array = _this select 3;
_art = _array select 0;
_type = _array select 1;

if (_art == "Burn") then
{
		
	if (_type == "Marijuana") then
	{
	
	_plant = nearestObject [player, "as_p_fiberPlant_EP1"];
	
	deleteVehicle _plant;
	player groupChat "You burned the Marijuana Plant";
	};

	if (_type == "Heroin") then
	{
	
	_plant = nearestObject [player, "as_t_PrunusS2s_EP1"];
	
	deleteVehicle _plant;
	player groupChat "You Burned the Poppy Plant";
	};
	
	if (_type == "Cocaine") then
	{
	
	_plant = nearestObject [player, "as_t_JuniperusC2s_EP1"];
	
	deleteVehicle _plant;
	player groupChat "You Burned the Coca Plant";
	};
		
};

if (_art == "Harvest") then
{

	if (_type == "Marijuana") then
	{
		player removeaction (_this select 2);
        _near = nearestObject [getpos player, "as_p_fiberPlant_EP1"];
     	
		if (IsCop) exitwith { player groupchat "Cops cannot do this"; };
       
	   ['MarijuanaSeed', 1] call INV_AddInventoryItem;
       ['Marijuana', 5] call INV_AddInventoryItem;
       
	    _plant = nearestObject [player, "as_p_fiberPlant_EP1"];
	   
	    deletevehicle _Plant;	
		player groupchat "You Harvested Marijuana Plants";
	};
	
	if (_type == "Heroin") then
	{
		player removeaction (_this select 2);
		_near = nearestObject [getpos player, "as_t_PrunusS2s_EP1"];
		
		if (IsCop) exitwith { player groupchat "Cops cannot do this"; };
		
		['Heroin', 5] call INV_AddInventoryItem;
		['HeroinSeed', 1] call INV_AddInventoryItem;
		
		_plant = nearestObject [player, "as_t_PrunusS2s_EP1"];
		
		deletevehicle _Plant;
		player groupchat "You harvested Poppy Plants";
	};

	if (_type == "Cocaine") then
	{
		player removeaction (_this select 2);
		_near = nearestObject [getpos player, "as_t_JuniperusC2s_EP1"];
		
		if (IsCop) exitwith { player groupchat "Cops cannot do this"; };
		
		['Cocaine', 5] call INV_AddInventoryItem;
		['CocaineSeed', 1] call INV_AddInventoryItem;
		
		_plant = nearestObject [player, "as_t_JuniperusC2s_EP1"];
		
		deletevehicle _Plant;
		player groupchat "You harvested Coca Plants";
	};
	
};



//Edited and fixed by [3CR]Whippy