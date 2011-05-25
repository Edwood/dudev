waitUntil {JIP_Stats_Ready};

while {true} do 

{

waituntil {alive player};

player removeweapon "ItemGPS";
removeAllWeapons player;

if (iscop) then 

	{

	if (count playerWeapons == 0 and count playermagazines == 0) then 

		{

		{player addMagazine _x} forEach CopStartGear_Mags;
		{player addWeapon   _x} forEach CopStartGear_Weap;	
	
		} 
		else 
		{

		{player addMagazine _x} forEach playermagazines;
		{player addWeapon   _x} forEach playerWeapons;										

		};

	player selectweapon (primaryweapon player);
	weaponsloaded = true;			

	};

if("car" call INV_haslicense)then{demerits = 10};

sleep 5;
waituntil {!(alive player)};

weaponsloaded = false;
role = player;
sleep 0.5;	
closeDialog 0;

if(isciv) then 

{

for [{_i=0}, {_i < (count INV_InventarArray)}, {_i=_i+1}] do 

	{

	_item   = ((INV_InventarArray select _i) select 0);
	_amount = (_item call INV_GetItemAmount);
		
	if (_amount > 0 and (_item call INV_getitemDropable)) then 

		{

		private "_class";

		if(_item == "geld")then{_class = "EvMoney"}else{_class = "Suitcase"};

		_object = _class createvehicle position player;

		_object setvariable ["droparray", [_amount, _item], true];

		};

	};

call INV_InventarLeeren;

};

if(iscop) then 

{

_amount = ("geld" call INV_GetItemAmount);
		
if (_amount > 0) then 

	{

	_object = "EvMoney" createvehicle position player;
	_object setvariable ["droparray", [_amount, "geld"], true];
	["geld", -(_amount)] call INV_addinventoryitem;

	};

};
	
INV_hunger = 50;
deadtimes  = deadtimes + 1;
["deadtimes", deadtimes] spawn ClientSaveVar;

if (isciv) then 

	{

	INV_LizenzOwner = INV_LizenzOwner - ["terrorist"];
	INV_LizenzOwner = INV_LizenzOwner - ["assassin"];
	INV_LizenzOwner = INV_LizenzOwner - ["cocaine"];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar; 
	if(isdead == 0)then{[player, "suicide"] execVM "victim.sqf";};
	waituntil{isdead == 1};
	["isdead", isdead] spawn ClientSaveVar; 
	DeadWaitSec = DeadWaitSec + respawntimeinc;
	if (DeadWaitSec > DeadTimeMax) then {DeadWaitSec = DeadTimeMax};
	[] execVM "respawncamera.sqf";
	vehiclekill = 0;
	shoveldur=20;
	pickaxedur=50;
	hammerdur=100;	
	alreadygotaworkplacejob=0;
	isterror=false;
	sleep 3; 
	["DeadWaitSec", DeadWaitSec] spawn ClientSaveVar;
	if(call compile format["%1_arrest > 0", player]  )then{format["%1_arrest = 0;", player]   call broadcast;};
	if(call compile format["%1_wanted > 0", player]  )then{format["%1_wanted = 0;", player]   call broadcast;};
	if(call compile format['count %1_reason > 0', player]  )then{format['%1_reason = [];', player]   call broadcast;};
	if(call compile format["kopfgeld_%1 > 0", player])then{format["kopfgeld_%1 = 0;", player] call broadcast;};
	
	sleep respawnzeit - 5;
	removeAllWeapons role;
	hidebody role;
		
	sleep 5;

	call compile format['
	if(!isnull old%1)then{
	addSwitchableUnit old%1;
	selectPlayer old%1;
	old%1 setvehicleinit "
	%1 = this;
	this setvehiclevarname ""%1"";
	";
	processinitcommands;
	old%1 = objnull;
	}else{execVM "actions.sqf";};
	', rolestring];
	
	waituntil {alive player};
		
	removeAllWeapons player;
	deleteVehicle role;
	role = player;
	waituntil {deadcam == 0};
	isdead = 0;
	["isdead", isdead] spawn ClientSaveVar; 

	if (local_arrest == 0) then 

		{

		player setpos getpos (respawnarray select (floor(random(count respawnarray))));

		}
		else
		{

		(format ["%1 switchmove ""%2"";", player, "civillying01"]) call broadcast; 
		waituntil {animationstate player == "civillying01"};
		["arrest", CivTimeInPrison, player] execVM "civmenu.sqf";

		}; 

	};

if (iscop) then

	{

	removeAllWeapons role;
	if (DeadWaitSec > DeadTimeMax) then {DeadWaitSec = DeadTimeMax};
	[] execVM "respawncamera.sqf";
	sleep (respawnzeit - 5);
	hidebody role;

	sleep 5;

	call compile format['
	if(!isnull old%1)then{
	addSwitchableUnit old%1;
	selectPlayer old%1;
	old%1 setvehicleinit "
	%1 = this;
	this setvehiclevarname ""%1"";
	";
	processinitcommands;
	old%1 = objnull;
	}else{execVM "actions.sqf";};
	', rolestring];

	waitUntil {alive player};

	deleteVehicle role;	
	isdead = 0; 

	};

};
