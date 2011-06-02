//EDIT BY WHIPPY


sleep 10;
govconvoygroup = createGroup west;
_counter = 0;
_counter2 = 0;
_added = false;
_sidewon = "Neither";


while {true} do 

{	
	



//waits for respawn
sleep (convoyrespawntime*50);



"hint ""The Government convoy will leave in a few minutes."";" call broadcast;

sleep (convoyrespawntime*5);

//Gets position to spawn
_array  = [[convoystartpos, 10]];
_spawn   = (floor(random(count _array)));						
_pos    = (_array select _spawn) select 0;
_radius = (_array select _spawn) select 1;

// spawn markers truck and soldiers
_markerobj = createMarker ["convoy",[0,0]];																				
_markername = "convoy";																														
_markerobj setMarkerShape "ICON";								
"convoy" setMarkerType "Marker";										
"convoy" setMarkerColor "ColorRed";																														
"convoy" setMarkerText "Government convoy";



convoy_marker_active = 1;
convoyhascash=true; publicvariable "convoyhascash";

convoytruck = "Kamaz" createVehicle getPos _pos;;

convoytruck setVehicleInit "
convoytruck = this; 
this setVehicleVarName ""convoytruck"";
this lock true;
this setAmmoCargo 0;  
this setDir getdir convoystartpos;
clearweaponcargo this;
clearmagazinecargo this;
";	
processinitcommands;
publicvariable "convoytruck";
 

deleteVehicle convoysoldier;
convoysoldier = govconvoygroup createUnit ["US_Soldier_Officer_EP1", _pos, [], _radius, "FORM"];
convoysoldier setvehicleinit 'convoysoldier = this;this setVehicleVarName "convoysoldier";';
removeAllWeapons convoysoldier;
convoysoldier addweapon "revolver_gold_EP1";
convoysoldier addmagazine "6Rnd_45ACP";
convoysoldier addmagazine "6Rnd_45ACP";
convoysoldier addmagazine "6Rnd_45ACP";


deleteVehicle convoyguard1;
convoyguard1 = govconvoygroup createUnit ["US_Soldier_EP1", _pos, [], _radius, "FORM"];
convoyguard1 setvehicleinit 'convoyguard1 = this;this setVehicleVarName "convoyguard1";';
removeAllWeapons convoyguard1;
convoyguard1 addmagazine "30Rnd_556x45_Stanag";
convoyguard1 addmagazine "30Rnd_556x45_Stanag";
convoyguard1 addmagazine "30Rnd_556x45_Stanag";
convoyguard1 addweapon "SCAR_L_CQC_Holo";


deleteVehicle convoyguard2;
convoyguard2 = govconvoygroup createUnit ["US_Soldier_EP1", _pos, [], _radius, "FORM"];
convoyguard2 setvehicleinit 'convoyguard2 = this;this setVehicleVarName "convoyguard2";';
removeAllWeapons convoyguard2;
convoyguard2 addmagazine "30Rnd_556x45_Stanag";
convoyguard2 addmagazine "30Rnd_556x45_Stanag";
convoyguard2 addmagazine "30Rnd_556x45_Stanag";
convoyguard2 addweapon "SCAR_L_CQC_Holo";


deleteVehicle convoyguard3;
convoyguard3 = govconvoygroup createUnit ["US_Soldier_EP1", _pos, [], _radius, "FORM"];
convoyguard3 setvehicleinit 'convoyguard3 = this;this setVehicleVarName "convoyguard3";';
removeAllWeapons convoyguard3; 
convoyguard3 addmagazine "30Rnd_556x45_Stanag";
convoyguard3 addmagazine "30Rnd_556x45_Stanag";
convoyguard3 addmagazine "30Rnd_556x45_Stanag";
convoyguard3 addweapon "SCAR_L_CQC_Holo";


deleteVehicle convoyguard4;
convoyguard4 = govconvoygroup createUnit ["US_Soldier_EP1", _pos, [], _radius, "FORM"];
convoyguard4 setvehicleinit 'convoyguard4 = this;this setVehicleVarName "convoyguard4";';
removeAllWeapons convoyguard4; 
convoyguard4 addmagazine "30Rnd_556x45_Stanag";
convoyguard4 addmagazine "30Rnd_556x45_Stanag";
convoyguard4 addmagazine "30Rnd_556x45_Stanag";
convoyguard4 addweapon "SCAR_L_CQC_Holo";

processInitCommands;

govconvoygroup selectLeader convoysoldier;



convoysoldier moveInDriver convoytruck; 
convoysoldier assignAsDriver convoytruck;

//make guards follow convoysoldier
convoyguard1 dofollow convoysoldier;
convoyguard2 dofollow convoysoldier;
convoyguard3 dofollow convoysoldier;
convoyguard4 dofollow convoysoldier;

govconvoygroup setbehaviour "AWARE";
govconvoygroup setCombatMode "GREEN";


//put guards in car with convoysoldier
convoyguard1 moveincargo convoytruck; 
convoyguard1 assignAsCargo convoytruck;
convoyguard2 moveInCargo convoytruck; 
convoyguard2 assignAsCargo convoytruck;
convoyguard3 moveInCargo convoytruck; 
convoyguard3 assignAsCargo convoytruck;
convoyguard4 moveInCargo convoytruck; 
convoyguard4 assignAsCargo convoytruck;
sleep 2;
convoysoldier commandMove getmarkerpos "policebase";



//start mission loop
"server globalchat ""The supply truck has spawned, civs kill the driver to stop it and steal the government funds.  Cops your bonuses are inside make sure it gets to the base!"";" call broadcast;
while {true} do
	{
	
	"if(alive player and isciv and player distance convoytruck <= 150)then{titleText [""The Government is operating in this area! Turn back or you will be shot!"", ""plain down""]};" call broadcast;
	"convoy" setmarkerpos getpos convoytruck;
	if (!alive convoyguard1) then
		{
		deletevehicle convoyguard1;	
		};
		
	if (!alive convoyguard2) then
		{
		deletevehicle convoyguard2;	
		};
		
	if (!alive convoyguard3) then
		{
		deletevehicle convoyguard3;	
		};
		
	if (!alive convoyguard4) then
		{
		deletevehicle convoyguard4;	
		};

		
		
		
	if (!alive convoysoldier and !_added) then 
		{
		_added = true;
		stealgovmoney = convoytruck addAction ["Steal Government salaries", "stealgovmoney.sqf",[""],1,false,true,"","isciv and (call INV_isArmed)"];
		"if (iscop) then {server sidechat ""The governemnt convoy driver is dead get in his truck and drive it to the base"";};" call broadcast;
		convoytruck setVehicleLock "unlocked";
		unassignVehicle convoyguard1;
		unassignVehicle convoyguard2;
		unassignVehicle convoyguard3;
		unassignVehicle convoyguard4;
		convoyguard1 action ["eject", convoytruck];
		convoyguard2 action ["eject", convoytruck];
		convoyguard3 action ["eject", convoytruck];
		convoyguard4 action ["eject", convoytruck];
		convoyguard1 dofollow convoytruck;
		convoyguard2 dofollow convoytruck;
		convoyguard3 dofollow convoytruck;
		convoyguard4 dofollow convoytruck;		
		};
	
	
	if (_counter >= 15) then
		{
		convoysoldier commandmove getmarkerpos "policebase";
		
		_counter = 0;
		};
	

	if (convoytruck distance getmarkerpos "policebase" < 150) exitwith 
		{   
		"if (iscop) then {Kontostand = (Kontostand + govconvoybonus); player sidechat format[""you received $%1 for the successfully escorting the convoy"", govconvoybonus];};" call broadcast;
		_sidewon = "Cops";
		};
	

	if(!moneyintruck) exitwith 
		{
		
		_sidewon = "Civs";
		};
	
	if (_counter2 >= 900) exitwith
		{
		_sidewon = "Neither";
		};
		
	if (!alive convoytruck) exitwith
		{
		"server globalchat ""The government truck has been destroyed the money has burned"";" call broadcast;
		_sidewon = "Neither";
		};
			
	_counter2 = _counter2 + 1;
	
	_counter = _counter + 1;
	
	sleep 1;
		

	
	};
	
//mission has ended resetting vars and deleting units



(format ['server globalChat "%2 side won the government convoy mission, next truck leaves in %1 minutes!";', convoyrespawntime, _sidewon]) call broadcast;
deletevehicle convoyguard1;
deletevehicle convoyguard2;
deletevehicle convoyguard3;
deletevehicle convoyguard4;
deletevehicle convoysoldier;
deletevehicle convoytruck;
deletemarker "convoy";

_endmissionounter = 0;
_counter = 0;
_sidewon = "Neither";
moneyintruck = true;
_added = false;

};






//written by Gman