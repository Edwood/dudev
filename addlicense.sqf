_this    = _this select 3;
_number  = _this select 0;
_art     = _this select 1;

if ((_art == "remove") or (_art == "add")) then 

{

if (_art == "add") then 

	{

	_license = ((INV_Lizenzen select _number) select 0);
	_name    = ((INV_Lizenzen select _number) select 2);
	_cost    = ((INV_Lizenzen select _number) select 3);
	if (_license call INV_HasLicense) exitWith {player groupChat localize "STRS_inv_buylicense_alreadytrue";};
	if (('geld' call INV_GetItemAmount) < _cost) exitWith {player groupChat localize "STRS_inv_buylicense_nomoney";};
	if(_license == "car" or _license == "truck")then{demerits = 12};
	['geld', -(_cost)] call INV_AddInventoryItem;
	player groupChat format[localize "STRS_inv_buylicense_gottraining", (_cost call ISSE_str_IntToStr), _name];

	if(_license == "terrorist")exitwith{[terroristarray select round random(count terroristarray - 1)] execVM "changeclass.sqf";};
	//if(_license == "sobr_training")exitwith{["MVD_soldier"] execVM "changeclass.sqf";};
	
	INV_LizenzOwner = INV_LizenzOwner + [_license];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
	
	} 
	else 
	{

	_license = ((INV_Lizenzen select _number) select 0);
	name    = ((INV_Lizenzen select _number) select 2);
	if (not(_license call INV_HasLicense)) exitWith {player groupChat localize "STRS_inv_buylicense_alreadyfalse";};
	INV_LizenzOwner = INV_LizenzOwner - [_license];
	player groupChat format[localize "STRS_inv_buylicense_losttraining", _name];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;

	};

};

