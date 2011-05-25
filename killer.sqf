_killer 		= _this select 0;
_killedbyvehicle 	= _this select 1;
_license 		= _this select 2;

if (player == _killer and !iscop and !suicided) exitWith {};

if (player == _killer and !iscop and suicided) exitWith 

{

player groupChat localize "STRS_handlerdeadpub_suicide"; 
SelfKilled = SelfKilled + 1;
extradeadtime = extradeadtime + suicidepenalty;
["extradeadtime", extradeadtime] spawn ClientSaveVar;

};

if (player == _killer and iscop) exitWith {};

if (_killer in civarray) then 

{

CivsKilled = CivsKilled + 1;
_gesucht = 0; 
call compile format ["_gesucht = %1_wanted;", _killer];

if (iscop) then 

	{

	extradeadtime = extradeadtime + killedplayerinc;
	["extradeadtime", extradeadtime] spawn ClientSaveVar;

	if (_gesucht == 0) then {player groupChat format [localize "STRS_handlerdeadpub_civkilled", _killer, (killstrafe call ISSE_str_IntToStr)];};

	} 
	else 
	{	

	extradeadtime = extradeadtime + killedplayerinc;
	["extradeadtime", extradeadtime] spawn ClientSaveVar;
	true call TurnWantedFunc;
		
	if(_killedbyvehicle)then

		{

		INV_LizenzOwner = INV_LizenzOwner - [_license];
		["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar; 
		player groupchat format["you have lost your %1 license for reckless driving!", _license];
		
		}else{

		player groupchat "Your gun licenses have been revoked for murder!";
		INV_LizenzOwner = INV_LizenzOwner - ["semiautomatic"];
		["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;

		};

	};

sleep 1;
(format ["[""KilledCiv"", %1, ""%2""] spawn Isse_AddCrimeLogEntry; if(%1 in civarray)then{if(!(""murder"" in %1_reason))then{%1_reason = %1_reason + [""murder""]}; kopfgeld_%1 = kopfgeld_%1 + 30000};", player, _killer]) call broadcast;

};



if (_killer in coparray) then 

{

CopsKilled = CopsKilled + 1;

if (iscop) then 

	{

	extradeadtime = extradeadtime + killedplayerinc;
	["extradeadtime", extradeadtime] spawn ClientSaveVar;
	player groupChat format [localize "STRS_handlerdeadpub_copkilledbycop", _killer];
	
	if ( (player distance copbase1 <= 400) or (_killer distance copbase1 <= 400) or (CopsKilled > 5) ) then 

		{

		[] execVM "copprison.sqf";

		};

	} 
	else 
	{

	extradeadtime = extradeadtime + killedplayerinc;
	["extradeadtime", extradeadtime] spawn ClientSaveVar;
	player groupChat format [localize "STRS_handlerdeadpub_copkilled", _killer];
	true call TurnWantedFunc;

	if(_killedbyvehicle)then

		{

		INV_LizenzOwner = INV_LizenzOwner - [_license];
		["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar; 
		player groupchat format["you have lost your %1 license for reckless driving!", _license];
		
		}else{

		player groupchat "Your gun licenses have been revoked for murder!";
		INV_LizenzOwner = INV_LizenzOwner - ["semiautomatic"];
		["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;

		};

	};

sleep 1;
(format ["[""KilledCop"", %1, ""%2""] spawn Isse_AddCrimeLogEntry; if(%1 in civarray)then{if(!(""murder"" in %1_reason))then{%1_reason = %1_reason + [""murder""]}; kopfgeld_%1 = kopfgeld_%1 + 30000};", player,  _killer]) call broadcast;

};

