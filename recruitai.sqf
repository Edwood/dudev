_art = _this select 3;

if(_art == "serverloop")then

{

while{true}do

	{

	[0,0,0,"SQUAD"] execVM "recruitai.sqf";

	if(!alive MG1gunner)then{_gunner = MG1gunner;sleep 60;if(!isnull _gunner)then{deletevehicle _gunner};};
	if(!alive MG2gunner)then{_gunner = MG2gunner;sleep 60;if(!isnull _gunner)then{deletevehicle _gunner};};
	if(!alive MG3gunner)then{_gunner = MG3gunner;sleep 60;if(!isnull _gunner)then{deletevehicle _gunner};};
	if(!alive MG4gunner)then{_gunner = MG4gunner;sleep 60;if(!isnull _gunner)then{deletevehicle _gunner};};

	if(!alive PK1gunner)then{_gunner = PK1gunner;sleep 60;if(!isnull _gunner)then{deletevehicle _gunner};};
	if(!alive PK2gunner)then{_gunner = PK2gunner;sleep 60;if(!isnull _gunner)then{deletevehicle _gunner};};
	if(!alive PK3gunner)then{_gunner = PK3gunner;sleep 60;if(!isnull _gunner)then{deletevehicle _gunner};};
	if(!alive PK4gunner)then{_gunner = PK4gunner;sleep 60;if(!isnull _gunner)then{deletevehicle _gunner};};

	sleep 1;

	};

};

if(_art == "SQUAD")then

{

if(!isServer)exitwith{};

_count = count nearestobjects[getpos Militarybase,["MVD_soldier","MVD_Soldier_GL","MVD_Soldier_TL","MVD_Soldier_MG","MVD_Soldier_Sniper"], 400];

if(_count >= maxinfai)exitwith{};

execVM "createsquad.sqf";

};

if(_art == "MG1")then

{

_geld = 'geld' call INV_getitemAmount;

if(_geld < MGcost)exitwith{player groupchat "not enough money"};

['geld', -MGcost] call INV_addinventoryitem;

if(!alive MG1)then{MG1 setdamage 0};

if(!alive MG1gunner or isnull MG1gunner)then

	{

	if(!isnull MG1gunner)then{deletevehicle MG1gunner};

	"MVD_Soldier" createUnit [getpos Militarybase, group soldat2, "this setdir 180;MG1gunner = this; this setvehiclevarname ""MG1gunner""; this moveingunner MG1", 1.0, "PRIVATE"];

	};

player groupchat "The Kord MG is now manned and fully operational!"; 

};

if(_art == "MG2")then

{

_geld = 'geld' call INV_getitemAmount;

if(_geld < MGcost)exitwith{player groupchat "not enough money"};

['geld', -MGcost] call INV_addinventoryitem;

if(!alive MG2)then{MG2 setdamage 0};

if(!alive MG2gunner or isnull MG2gunner)then

	{

	if(!isnull MG2gunner)then{deletevehicle MG2gunner};

	"MVD_Soldier" createUnit [getpos Militarybase, group soldat2, "this setdir 180;MG2gunner = this; this setvehiclevarname ""MG2gunner""; this moveingunner MG2", 1.0, "PRIVATE"];

	};

player groupchat "The Kord MG is now manned and fully operational!"; 

};

if(_art == "MG3")then

{

_geld = 'geld' call INV_getitemAmount;

if(_geld < MGcost)exitwith{player groupchat "not enough money"};

['geld', -MGcost] call INV_addinventoryitem;

if(!alive MG3)then{MG3 setdamage 0};

if(!alive MG3gunner or isnull MG3gunner)then

	{

	if(!isnull MG3gunner)then{deletevehicle MG3gunner};

	"MVD_Soldier" createUnit [getpos Militarybase, group soldat2, "this setdir 0;MG3gunner = this; this setvehiclevarname ""MG3gunner""; this moveingunner MG3", 1.0, "PRIVATE"];

	};

player groupchat "The Kord MG is now manned and fully operational!"; 

};

if(_art == "MG4")then

{

_geld = 'geld' call INV_getitemAmount;

if(_geld < MGcost)exitwith{player groupchat "not enough money"};

['geld', -MGcost] call INV_addinventoryitem;

if(!alive MG4)then{MG4 setdamage 0};

if(!alive MG4gunner or isnull MG4gunner)then

	{

	if(!isnull MG4gunner)then{deletevehicle MG4gunner};

	"MVD_Soldier" createUnit [getpos Militarybase, group soldat2, "this setdir 0;MG4gunner = this; this setvehiclevarname ""MG4gunner""; this moveingunner MG4", 1.0, "PRIVATE"];

	};

player groupchat "The Kord MG is now manned and fully operational!"; 

};

if(_art == "PK1")then

{

_geld = 'geld' call INV_getitemAmount;

if(_geld < PKcost)exitwith{player groupchat "not enough money"};

['geld', -PKcost] call INV_addinventoryitem;

if(!alive PK1)then{PK1 setdamage 0};

if(!alive PK1gunner or isnull PK1gunner)then

	{

	if(!isnull PK1gunner)then{deletevehicle PK1gunner};

	"MVD_Soldier" createUnit [getpos Militarybase, group soldat2, "this setdir 180;PK1gunner = this; this setvehiclevarname ""PK1gunner""; this moveingunner PK1", 1.0, "PRIVATE"];

	};

player groupchat "The PK nest is now manned and fully operational!"; 

};

if(_art == "PK2")then

{

_geld = 'geld' call INV_getitemAmount;

if(_geld < PKcost)exitwith{player groupchat "not enough money"};

['geld', -PKcost] call INV_addinventoryitem;

if(!alive PK2)then{PK2 setdamage 0};

if(!alive PK2gunner or isnull PK2gunner)then

	{

	if(!isnull PK2gunner)then{deletevehicle PK2gunner};

	"MVD_Soldier" createUnit [getpos Militarybase, group soldat2, "this setdir 180;PK2gunner = this; this setvehiclevarname ""PK2gunner"";this moveingunner PK2", 1.0, "PRIVATE"];

	};

player groupchat "The PK nest is now manned and fully operational!"; 

};

if(_art == "PK3")then

{

_geld = 'geld' call INV_getitemAmount;

if(_geld < PKcost)exitwith{player groupchat "not enough money"};

['geld', -PKcost] call INV_addinventoryitem;

if(!alive PK3)then{PK3 setdamage 0};

if(!alive PK3gunner or isnull PK3gunner)then

	{

	if(!isnull _gunner)then{deletevehicle _gunner};

	"MVD_Soldier" createUnit [getpos Militarybase, group soldat2, "this setdir 0;PK3gunner = this; this setvehiclevarname ""PK3gunner"";this moveingunner PK3", 1.0, "PRIVATE"];

	};

player groupchat "The PK nest is now manned and fully operational!"; 

};

if(_art == "PK4")then

{

_geld = 'geld' call INV_getitemAmount;

if(_geld < PKcost)exitwith{player groupchat "not enough money"};

['geld', -PKcost] call INV_addinventoryitem;

if(!alive PK4)then{PK4 setdamage 0};

if(!alive PK4gunner or isnull PK4gunner)then

	{

	if(!isnull PK4gunner)then{deletevehicle PK4gunner};

	"MVD_Soldier" createUnit [getpos Militarybase, group soldat2, "this setdir 0;PK4gunner = this; this setvehiclevarname ""PK4gunner"";this moveingunner PK4", 1.0, "PRIVATE"];

	};

player groupchat "The PK nest is now manned and fully operational!"; 

};




	
