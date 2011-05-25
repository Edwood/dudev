if((isClass (configFile >> "CfgPatches" >> "ACCPack")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "AlexanderPack")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "Schleiflshackpack")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "awk_ch34tsDevString_ak")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "loki_lk")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "zump")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "water")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "gerk")))exitWith
{
[] execVM "nc.sqf";

};

if((isClass (configFile >> "CfgPatches" >> "Schleiflshackpack_1")))exitWith
{
[] execVM "nc.sqf";
};

if((isClass (configFile >> "CfgPatches" >> "Schleiflshackpack_123")))exitWith
{
[] execVM "nc.sqf";
};

if((isClass (configFile >> "CfgPatches" >> "fuckana-cheat")))exitWith
{
[] execVM "nc.sqf";
};

if((isClass (configFile >> "CfgPatches" >> "Gerk_menu")))exitWith
{
[] execVM "nc.sqf";
};

if((isClass (configFile >> "GerkLMenu" >> "Gerkgodmode")))exitWith
{
[] execVM "nc.sqf";
};

execVM "briefing.sqf";

FailCount = 0;


enableSaving [false, false];
enableSentences false;
WEST setFriend [EAST, 1];
EAST setFriend [WEST, 1];
version        	= "1.09d";
compatible     	= 102;
internDebug    	= false;
debug          	= true;
addonversion   	= false;
dedicatedServer = false;
copscount      	= 10;
civscount      	= 20;
playercount    	= 30;
debugarray     	= [];
StartMoney     	= 500000;
nopop	   	= true;	

execVM "briefing.sqf";

waituntil {!isnil "bis_fnc_init"};

call compile preprocessfile "triggers.sqf";

if(!debug)then{["kamera"] execVM "introcam.sqf";["texte"] execVM "introcam.sqf";};

if(local server)then{execVM "targets.sqf";};

waitUntil { ( (time > 1) and ((alive player) or (local server)) ) };

_h = [] execVM "playerarrays.sqf";																																			

waitUntil{scriptDone  _h};

_h = [30, rolenumber] execVM "initfuncs.sqf";

waitUntil{scriptDone  _h};

_h = [playerarray, playerstringarray, !iscop] execVM "INVvars.sqf";

waituntil{scriptDone  _h};

_h = [] execVM "bankexec.sqf";

waitUntil{scriptDone  _h};

_h = []	execVM "execlotto.sqf";

waitUntil{scriptDone  _h};

_h = [] execVM "initWPmissions.sqf";

waitUntil{scriptDone  _h};

_h = [] execVM "gfx.sqf";

waitUntil{scriptDone  _h};

_h = []	execVM "miscfunctions.sqf";

waitUntil{scriptDone  _h};

_h = [] execVM "variables.sqf";

waitUntil{scriptDone  _h};

_h = []	execVM "initRadio.sqf";

waitUntil{scriptDone  _h};

//[SkipTimeDay, SkipTimeNight, 1] execVM "skiptime.sqf"; 
[] execVM "weather.sqf";
setPitchBank = compile preprocessfile "setPitchBank.sqf";

if(!dedicatedserver) then

{

["clientloop"] execVM "clientloop.sqf";
[0,0,0,["clientloop"]] execVM "gangs.sqf";
[] execVM "respawn.sqf";
[] execVM "itemactions.sqf";
[] execVM "petrolactions.sqf";
[] execVM "SpeedCams.sqf";
[] execVM "nametags.sqf";
[] execVM "initplayer.sqf";
//[] execVM "teargas.sqf";
[] execVM "power.sqf";
[]execVM "checkradio.sqf";
[2] execVM "markers.sqf";
[3] execVM "markers.sqf";
[] execVM "salaries.sqf";
[] execVM "actions.sqf";
//[]execVM "updatehouse.sqf";

for [{_i=0}, {_i < (count INV_ItemFabriken)}, {_i=_i+1}] do {_i execVM "facqueue.sqf"};

player addEventHandler ["fired", {["fired", (_this select 4), (_this select 1)] execVM "stun.sqf";}];
player addEventHandler ["handleDamage", {_this call compile preprocessfile "sethit.sqf"}];

onKeyPress = compile preprocessFile "onKeyPress.sqf";
waituntil {!(IsNull (findDisplay 46))};
(findDisplay 46) displaySetEventHandler ["KeyDown", "_this call onKeyPress"];

};

if (isServer) then 

{

["serverloop1"]	execVM "servermissionfile\commonloop.sqf";
[0, 0, 0, ["serverloop"]] execVM "mayor.sqf";
[0, 0, 0, ["serverloop"]] execVM "chief.sqf";
[0, 0, 0, ["serverloop"]] execVM "gangs.sqf";
[] execVM "servermissionfile\druguse.sqf";
[] execVM "servermissionfile\drugreplenish.sqf";
[] execVM "servermissionfile\drugreplenish.sqf";
//[]execVM "checkradio.sqf";
[] execVM "servermissionfile\robpool.sqf";
[] execVM "servermissionfile\hunting.sqf";
//[] execVM "setObjectPitches.sqf";


for [{_i=0}, {_i < (count INV_ItemShops)}, {_i=_i+1}] do {((INV_ItemShops select _i) select 0) execVM "nomove.sqf"; sleep 0.2;};
for [{_i=0}, {_i < (count workplacejob_deliveryflagarray)}, {_i=_i+1}] do {(workplacejob_deliveryflagarray select _i) execVM "nomove.sqf"; sleep 0.2;};

};