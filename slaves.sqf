_art  = ((_this select 3) select 0);
_geld = 'geld' call INV_GetItemAmount;

if (_art == "slave") exitWith 

{
if (slavescriptrunning == 1) exitwith {player groupchat "script already running"};
slavescriptrunning = 1;								
if (localslave >= maxslave) exitWith {role groupChat localize "STRS_slave_zuviele"};

if (_geld <= slave_cost) exitWith {role groupChat localize "STRS_slave_nomoney"};

['geld', -(slave_cost)] call INV_AddInventoryItem;

player groupChat format[localize "STRS_slave_gekauft", rolestring, (slave_cost call ISSE_str_IntToStr)];

_arbeiternummer   = localslavecounter; 																						
localslavecounter = localslavecounter + 1; 															
localslave        = localslave + 1;																									
_slavenumber      = localslavecounter;																				
_slavename        = player;
_civ 		  = civslavearray select round random(count civslavearray - 1);

call compile format ['_slavename = "%3" createUnit [position player, group player, "%1slave%2 = this; this setVehicleVarName ""%1slave%2"";"]; _slavename = %1slave%2;_slavename setpos getpos player', rolestring, _slavenumber, _civ];															
																																																																											
(format ["if (local server) then {publicarbeiterarctionarray = publicarbeiterarctionarray + [ [%1slave%2, %3] ];};", rolestring, _slavenumber, player]) call broadcast;

processInitCommands; 

call compile format ["arbeitergeld%1 = 0;", _arbeiternummer];

_slavemoney = 0;
_exitvar = 0; 
_a1 = 0; 
_action = 0; 
sleep 2;
slavescriptrunning = 0;

while {true} do 

	{														

	if (_exitvar == 1) exitWith {};

		{

		if ((player distance (_x select 0)) < (_x select 1)) then {call compile format ["arbeitergeld%1 = arbeitergeld%1 + (round(random slavemoneyprosekunde));", _arbeiternummer];};

		} forEach slavearray;

	for [{_i=0}, {_i < 60}, {_i=_i+1}] do 

		{	

		if ( (not(alive _slavename)) or (not(alive player)))  exitWith {sleep 2; if(!isnull _slavename)then{player groupChat localize "STRS_slave_tot"}else{player groupChat "A slave you owned has been set free! you are now wanted."}; localslave = localslave - 1; _slavename SETDAMAGE 1; _exitvar = 1;};					
		
		if ((player distance _slavename >= 5 or (call compile format ["arbeitergeld%1 == 0", _arbeiternummer])) and _a1 == 1) then {player removeaction _action; _a1 = 0;};																																													
			
		if (player distance _slavename < 5 and _a1 == 0 and (call compile format ["arbeitergeld%1 > 0", _arbeiternummer])) then {_action = player addaction [localize "STRS_slave_moneyaction", "slaves.sqf",["geld", _arbeiternummer]]; _a1 = 1;};															
			
		if ((rolecop == 0) and ((vehicle _slavename) DISTANCE copbase1 <= 250) and (alive _slavename)) then 

			{

			player groupChat localize "STRS_arbeiter_in_copbase";    
			if (not((vehicle _slavename) == _slavename)) then {_slavename action ["eject", (vehicle _slavename)];}; 
			_slavename setpos getmarkerpos "civarea";

			};
									
		sleep 1;

		};

	};															
			
player removeaction _action;											
sleep 15;							
deletevehicle _slavename;

};

if (_art == "geld") exitWith 

{

_arbeiternummer = (_this select 3) select 1;
_arbeitergeld   = call compile format ["arbeitergeld%1;", _arbeiternummer];
								

if (_arbeitergeld > 0) then 

	{

	['geld', _arbeitergeld] call INV_AddInventoryItem;
	call compile format ["arbeitergeld%1 = 0;", _arbeiternummer];	
	player groupChat format [localize "STRS_slave_geldabnahme_ja", (_arbeitergeld call ISSE_str_IntToStr)];

	} 

else    {	

	player groupChat localize "STRS_slave_geldabnahme_nein";

	};

};

