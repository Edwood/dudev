_art = (_this select 3) select 0;

if (isNil "workplacejob_assassin_serverarray") then {workplacejob_assassin_serverarray = []};

if (_art == "serverloop") then 

{

while {true} do 

	{

	for [{_i=0}, {_i < (count workplacejob_assassin_serverarray)}, {_i=_i+1}] do 

		{

		if (isNull ((workplacejob_assassin_serverarray select _i) select 0)) then 

			{

			if (!(isNull ((workplacejob_assassin_serverarray select _i) select 1))) then 

				{	

				deleteVehicle ((workplacejob_assassin_serverarray select _i) select 1);
				deletemarker "targetmarker";

				};

			workplacejob_assassin_serverarray set [_i,""];
			workplacejob_assassin_serverarray = workplacejob_assassin_serverarray - [""];
			"if(iscop)then{player sidechat ""The threat to the VIP has been removed""}" call broadcast;
			sleep ((workplacejob_assassin_break)*60);			
			workplacejob_assassin_active = false; 
			publicvariable "workplacejob_assassin_active";
			
			};				

		};

	sleep 10;

	};

};

if (_art == "getajob_assassin") then 

{

if(workplacejob_assassin_active)exitWith{player groupChat "There are currently no targets that require assassination.";};
if(workplacejob_assassion_failed)exitWith{player groupChat "You have failed an assassination recently, maybe you'll be hired again later.";};

_array  = [[CityLogic2, 200], [CityLogic3, 200], [CityLogic4, 200], [CityLogic5, 80], [gunshop1, 200]];
_city   = (floor(random(count _array)));						
_pos    = (_array select _city) select 0;
_radius = (_array select _city) select 1;
_a1	= 0;

deletemarker "targetmarker";
deletevehicle VIPtarget;
_group = createGroup west;
VIPtarget = _group createUnit ["Functionary1", _pos, [], _radius, "FORM"]; 
VIPtarget setvehicleinit 'VIPtarget = this;this setVehicleVarName "VIPtarget";';
processInitCommands;

format["workplacejob_assassin_serverarray = workplacejob_assassin_serverarray + [[%1, VIPtarget]];", player] call broadcast;

_markerobj = createMarker ["targetmarker",[0,0]];																				
_markername= "targetmarker";																														
_markerobj setMarkerShape "ICON";								
"targetmarker" setMarkerType "Marker";										
"targetmarker" setMarkerColor "ColorRed";																														
"targetmarker" setMarkerText "Assassination target";								
_markername SetMarkerPos _start;

workplacejob_assassin_active = true; publicvariable "workplacejob_assassin_active";
																
player groupChat "The VIP target has been marked on the map. Kill him before the police can take him to safety.";

while {true} do 

	{

	if(VIPtarget distance player < 2000 and _a1 == 0)then

		{

		"if (iscop) then {player sideChat ""Someone is trying to kill a VIP. The target has been marked on the map. Rescue the target before its too late!""};" call broadcast;
		VIPtarget domove getmarkerpos "policebase";
		player groupchat "The police are on to you and the VIP knows your coming, hurry up!";
		_a1 = 1;

		};


	if(!alive player)exitwith{deletevehicle VIPtarget;deletemarker "targetmarker";};

	"targetmarker" setmarkerpos getpos VIPtarget;
			
	if (!alive VIPtarget and alive player) exitWith 
	
		{
			
		kontostand = kontostand + 100000;
		player groupchat "Well done. Target elimated. $100000 has been transfered to your account.";
		sleep 10;
		"server globalchat ""The VIP target has been killed!"";" call broadcast;
		deletevehicle VIPtarget;
		deletemarker "targetmarker";
		
		};

	if(VIPtarget distance getmarkerpos "policebase" < 100) exitwith

		{

		"
		server globalchat ""The VIP target has been rescued!"";
		_copplayernumber = playersNumber west;
		_copbonus = round(50000/_copplayernumber);
		if (iscop) then {Kontostand = (Kontostand + _copbonus); player sidechat format[""you received $%1 for the successful rescue of the VIP"", _copbonus];};
		" call broadcast;
		sleep 2;
		player groupchat "The vip was rescued, mission failed!";
		workplacejob_assassion_failed = true;
		deletevehicle VIPtarget;
		deletemarker "targetmarker";

		};

	sleep 1;

	};
																								
sleep ((workplacejob_assassin_break)*60);			
workplacejob_assassin_active = false; 
publicvariable "workplacejob_assassin_active";

if (workplacejob_assassion_failed) then 

	{

	sleep ((workplacejob_assassin_break)*60);
	workplacejob_assassion_failed = false;	

	};

};

