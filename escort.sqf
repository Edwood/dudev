
private ["_i","_exitvar","_a1","_action","_arbeiternummer","_escortnumber","_escortname","_civ","_escortmoney","_arbeitergeld","_art","_geld"];
_art  = ((_this select 3) select 0);
_geld = 'geld' call INV_GetItemAmount;

if (_art == "escort") exitWith 

{
								
if (localescort >= maxescort) exitWith {player groupChat "You have maxed escorts go away perv"};

if (_geld <= escort_cost) exitWith {player groupChat "you aint no pimp come back when you have money"};

['geld', -(escort_cost)] call INV_AddInventoryItem;

player groupChat "You hired an escort";
player groupChat "Take her to one of the redlight districts so she can earn you money";
_arbeiternummer   = localescortcounter; 																						
localescortcounter = localescortcounter + 1; 															
localescort        = localescort + 1;																									
_escortnumber      = localescortcounter;																				
_escortname        = player;
_escortname        = player;
_civ 		  = civescortarray select round random(count civescortarray - 1);

//Ed: This be tidied up. You should use the correct escortarray from variables.sqf and GetMarkerPos. The variables are not global / permeating for me.
escortarray = [[HRedlight1, 150], [HRedlight2, 150], [HRedlight3, 150]];  

call compile format ['_escortname = "%3" createUnit [position player, group player, "%1escort%2 = this; this setVehicleVarName ""%1escort%2"";"]; _escortname = %1escort%2;_escortname setpos getpos player', rolestring, _escortnumber, _civ];															
																																																																											
(format ["if (local server) then {publicarbeiterarctionarray = publicarbeiterarctionarray + [ [%1escort%2, %3] ];};", rolestring, _escortnumber, player]) call broadcast;

processInitCommands; 

call compile format ["arbeitergeld%1 = 0;", _escortnumber];

_escortmoney = 0;
_exitvar = 0; 
_a1 = 0; 
_action = 0; 

while {true} do 

	{														

	if (_exitvar == 1) exitWith {};

		{
		//Eds Debug text:
		//_disbetween = (_escortname distance (getPos (_x select 0)));	//distance between red light district and escort
		//player groupchat format ["distance from x to player is = %1", _disbetween];
		
		//Escort earns money while she is inside one of the red light districts
		if (_escortname distance ( getPos (_x select 0) ) < (_x select 1) ) then
			{
			call compile format ["arbeitergeld%1 = arbeitergeld%1 + (round(random escort_money_per_sec));", _escortnumber];
			};
		
		} forEach escortarray;
				
	for [{_i=0}, {_i < 60}, {_i=_i+1}] do

		{	

		if ( (not(alive _escortname)) or (not(alive player)))  exitWith {sleep 2; if(!isNull _escortname)then{player groupChat "One of your escorts are dead so some pimp you are"}else{player groupChat "An escort you owned has been set free! you are now wanted."}; localescort = localescort - 1; _escortname setDamage 1; _exitvar = 1;};					
		
		if ((player distance _escortname >= 5 or (call compile format ["arbeitergeld%1 == 0", _escortnumber])) and _a1 == 1) then {player removeAction _action; _a1 = 0;};																																													
			
		if (player distance _escortname < 5 and _a1 == 0 and (call compile format ["arbeitergeld%1 > 0", _escortnumber])) then {_action = player addAction [localize "STRS_escort_take_money", "escort.sqf",["geld", _escortnumber]]; _a1 = 1;};															
			
		if ((rolecop == 0) and ((vehicle _escortname) distance copbase1 <= 200) and (alive _escortname)) then 

			{

			player groupChat localize "STRS_arbeiter_in_copbase";    
			if (not((vehicle _escortname) == _escortname)) then {_escortname action ["eject", (vehicle _escortname)];}; 
			_escortname setPos getMarkerPos "civarea";

			};
									
		sleep 1;

		};

	};															
			
player removeAction _action;											
sleep 15;							
deleteVehicle _escortname;

};

if (_art == "geld") exitWith 

{

_escortnumber = (_this select 3) select 1;
_arbeitergeld   = call compile format ["arbeitergeld%1;", _escortnumber];
								

if (_arbeitergeld > 0) then 

	{

	['geld', _arbeitergeld] call INV_AddInventoryItem;
	call compile format ["arbeitergeld%1 = 0;", _escortnumber];	
	player groupChat format [localize "STRS_escort_earnings", (_arbeitergeld call ISSE_str_IntToStr)];

	} 

else    {	

	player groupChat localize "STRS_escort_no_money";

	};

};

