waitUntil {(alive player)};

civstatsdone = false;

'

if(local server) then

{

for [{_i=1}, {_i <= civscount}, {_i=_i+1}] do 

	{

	call compile format ["
	if(kopfgeld_civ%1 > 0)then{publicVariable ""kopfgeld_civ%1""};
	if(civ%1_arrest > 0)then{publicVariable ""civ%1_arrest""};
	if(civ%1_wanted > 0)then{publicVariable ""civ%1_wanted""};
	if(count civ%1_reason > 0)then{publicVariable ""civ%1_reason""};
	", _i];		

	};

publicvariable "gangsarray";
civstatsdone=true; publicvariable "civstatsdone";

};

' call broadcast;

waituntil {civstatsdone};

if (isciv) then 

{

call compile format['
%1_arrest = 0;
%1_wanted = 0;
%1_mayor = 0;
%1_reason = [];
kopfgeld_%1 = 0;
publicVariable "%1_mayor";
publicVariable "%1_arrest";
publicVariable "%1_wanted";
publicVariable "%1_reason";
publicVariable "kopfgeld_%1";
', player]; 

};

call ClientRequestVar;

waitUntil {JIP_Stats_Ready};

if (local_arrest == 1) then {(format ["%1 switchmove ""%2"";", player, "civillying01"]) call broadcast; waituntil {animationstate player == "civillying01"}; format ["if (local server) then {[""arrestserver"", %1, %2, %3] execVM ""civmenu.sqf"";};", player, (20), player] call broadcast;};
if (isdead == 1 and isciv) then {player setpos getpos deadcamlogic;[] execVM "rejoincamera.sqf";};
INV_LizenzOwner = INV_LizenzOwner - ["terrorist"];
INV_LizenzOwner = INV_LizenzOwner - ["assassin"];
INV_LizenzOwner = INV_LizenzOwner - ["cocaine"];
INV_LizenzOwner = INV_LizenzOwner - ["marijuana"];
["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar; 
if(time > 20)then{skiptime (currentTime - daytime)};
