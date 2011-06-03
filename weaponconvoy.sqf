_group = createGroup east;

while {true} do 

{	

sleep (konvoyrespawnzeit*54);

if(!alive HQ)exitwith{};

"if (iscop) then {hint ""The supply truck will leave in a few minutes."";}" call broadcast;

sleep (konvoyrespawnzeit*6);

if(!alive HQ)exitwith{};

_soldatvar = 0;	
_counter   = 0;
konvoy_marker_active = 1;
konvoyhascash=true; publicvariable "konvoyhascash";
deleteVehicle konvoytruck;
konvoytruck = "Kamaz" createVehicle getPos konvoystartpos;

konvoytruck setVehicleInit "
konvoytruck = this; 
this setVehicleVarName ""konvoytruck"";  
this setAmmoCargo 0;  
this setVehicleLock ""LOCKED"";
this setDir getdir konvoystartpos;
clearweaponcargo this;
clearmagazinecargo this;
";	

deleteVehicle konvoysoldat;
"MVD_Soldier" createUnit [getpos konvoystartpos, group soldat2, "konvoysoldat = this", 1.0, "CORPORAL"];
[konvoysoldat] join _group;
konvoysoldat moveInDriver konvoytruck; 
konvoysoldat doMove getpos konvoyend;
removeAllWeapons konvoysoldat;
konvoysoldat addweapon "M9";
konvoysoldat addmagazine "15Rnd_9x19_M9";
konvoysoldat addmagazine "15Rnd_9x19_M9";
konvoysoldat addmagazine "15Rnd_9x19_M9";

deleteVehicle konvoyguard1;
"MVD_Soldier" createUnit [getpos konvoystartpos, group soldat2, "konvoyguard1 = this", 1.0, "PRIVATE"];
konvoyguard1 moveInCargo konvoytruck; 
konvoyguard1 assignAsCargo konvoytruck;
removeAllWeapons konvoyguard1; 
konvoyguard1 addmagazine "30Rnd_9x19_MP5";
konvoyguard1 addmagazine "30Rnd_9x19_MP5";
konvoyguard1 addmagazine "30Rnd_9x19_MP5";
konvoyguard1 addweapon "MP5A5";

deleteVehicle konvoyguard2;
"MVD_Soldier" createUnit [getpos konvoystartpos, group soldat2, "konvoyguard2 = this", 1.0, "PRIVATE"];
konvoyguard2 moveInCargo konvoytruck; 
konvoyguard2 assignAsCargo konvoytruck;
removeAllWeapons konvoyguard2; 
konvoyguard2 addmagazine "30Rnd_9x19_MP5";
konvoyguard2 addmagazine "30Rnd_9x19_MP5";
konvoyguard2 addmagazine "30Rnd_9x19_MP5";
konvoyguard2 addweapon "MP5A5";

deleteVehicle konvoyguard3;
"MVD_Soldier" createUnit [getpos konvoystartpos, group soldat2, "konvoyguard3 = this", 1.0, "PRIVATE"];
konvoyguard3 moveInCargo konvoytruck; 
konvoyguard3 assignAsCargo konvoytruck;
removeAllWeapons konvoyguard3; 
konvoyguard3 addmagazine "64Rnd_9x19_Bizon";
konvoyguard3 addmagazine "64Rnd_9x19_Bizon";
konvoyguard3 addmagazine "64Rnd_9x19_Bizon";
konvoyguard3 addweapon "Bizon";

deleteVehicle konvoyguard4;
"MVD_Soldier" createUnit [getpos konvoystartpos, group soldat2, "konvoyguard4 = this", 1.0, "PRIVATE"];
konvoyguard4 moveInCargo konvoytruck; 
konvoyguard4 assignAsCargo konvoytruck;
removeAllWeapons konvoyguard4; 
konvoyguard4 addmagazine "64Rnd_9x19_Bizon";
konvoyguard4 addmagazine "64Rnd_9x19_Bizon";
konvoyguard4 addmagazine "64Rnd_9x19_Bizon";
konvoyguard4 addweapon "Bizon";

processInitCommands; 

(if(iscop)then{[WEST,"HQ"] sidechat "The supply truck requests an escort."}) call broadcast; 

while {true} do 

	{

	if ((!(alive konvoysoldat)) and (_soldatvar == 0)) then 

		{

		"hint localize ""STRS_konvoy_hijacked""; konvoytruck setVehicleLock ""UNLOCKED"";" call broadcast;

		_soldatvar = 1;

		waituntil {speed konvoytruck < 30};

		{konvoyguard1 reveal _x; konvoyguard2 reveal _x; konvoyguard3 reveal _x; konvoyguard4 reveal _x} foreach (nearestobjects[getpos konvoytruck,["man"], 100]);
		unassignVehicle konvoyguard1;
		unassignVehicle konvoyguard2;
		unassignVehicle konvoyguard3;
		unassignVehicle konvoyguard4;
		konvoyguard1 action["getout", konvoytruck];
		konvoyguard2 action["getout", konvoytruck];
		konvoyguard3 action["getout", konvoytruck];
		konvoyguard4 action["getout", konvoytruck];

		};

	konvoytruck setFuel 1;

	if(alive konvoysoldat)then{konvoytruck setdamage 0};

	if(!konvoyhascash)exitwith{};
	
	if (GETDAMMAGE konvoytruck >= 0.8)exitWith{"hint localize ""STRS_konvoy_destroyed"";" call broadcast;};

	if(konvoytruck distance Militarybase < 400 and _counter < 60 and speed konvoytruck == 0)then{_counter = _counter + 1; konvoysoldat doMove getpos konvoyend;};

	if(konvoytruck distance Militarybase < 400 and _counter > 60 and speed konvoytruck == 0)exitwith{"hint ""The supply truck returned to base."";" call broadcast;};

	if(speed konvoytruck > 10)then{_counter = 0};

	if (konvoytruck distance konvoyend <= 240) exitwith 

		{	

		'hint localize "STRS_konvoy_arrived"; if (iscop) then {["cop"] execVM "salaries.sqf"};' call broadcast;
		"konvoytruck setFuel 0;" call broadcast;
				
		};
	
	if(alive konvoysoldat and !([konvoytruck, (civarray), 200] call ISSE_ArrayIsNear))then

		{

		if (!(konvoysoldat in konvoytruck)) then 

			{

			konvoysoldat moveInDriver konvoytruck;
			konvoysoldat assignAsDriver konvoytruck;
			konvoysoldat doMove getpos konvoyend;
		
			};

		if (!([konvoyguard1, (civarray), 200] call ISSE_ArrayIsNear) and !(konvoyguard1 in konvoytruck)) then 

			{

			konvoyguard1 moveInCargo konvoytruck;
			konvoyguard1 assignAsCargo konvoytruck;
					
			};

		if (!([konvoyguard2, (civarray), 200] call ISSE_ArrayIsNear) and !(konvoyguard2 in konvoytruck)) then 

			{

			konvoyguard2 moveInCargo konvoytruck;
			konvoyguard2 assignAsCargo konvoytruck;
					
			};

		if (!([konvoyguard3, (civarray), 200] call ISSE_ArrayIsNear) and !(konvoyguard3 in konvoytruck)) then 

			{

			konvoyguard3 moveInCargo konvoytruck;
			konvoyguard3 assignAsCargo konvoytruck;
					
			};

		if (!([konvoyguard4, (civarray), 200] call ISSE_ArrayIsNear) and !(konvoyguard4 in konvoytruck)) then 

			{

			konvoyguard4 moveInCargo konvoytruck;
			konvoyguard4 assignAsCargo konvoytruck;
					
			};
		
		};

	sleep 1;

	};

if(konvoyhascash)then

{

deletevehicle konvoytruck;
deletevehicle konvoysoldat;
deleteVehicle konvoyguard1;
deleteVehicle konvoyguard2;

};


sleep 10;

konvoy_marker_active = 0;

};
