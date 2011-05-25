_art = (_this select 3) select 0;

if(_art == "info")then

{

licenseflag2 sidechat "Ok, to score well in this test, when i give you your pistol, you must go through the door to my left and try to take out as many targets as possible.";
sleep 8;
licenseflag2 sidechat "You also get points for completing the course in the shortest time possible and using as few shots as possible.";
sleep 5;
licenseflag2 sidechat "if you are not sure where to go simply follow the arrows.";
sleep 4;
licenseflag2 sidechat "please note that the targets will not pop up if you try to do the course backwards or in an unintended way.";
sleep 6;
licenseflag2 sidechat "Also you will only get points for the targets you hit, so dont think having some friends shooting targets for you is going to help.";

};

if(_art == "test")then

{

if (!("gunprobation" call INV_HasLicense)) exitWith {player groupChat "You must have your Probationary gun license"};

_g1 = 0;
_g2 = 0;
_g3 = 0;
_g4 = 0;
_g5 = 0;
_g6 = 0;
_g7 = 0;
_g8 = 0;
_g9 = 0;
_g10 = 0;
_g11 = 0;
_g12 = 0;
_g13 = 0;
_g14 = 0;

gtgrp1=false;
gtgrp2=false;
gtgrp3=false;
gtgrp4=false;
gtgrp5=false;
gtgrp6=false;
gtgrp7=false;
gtgrp8=false;
gtgrp9=false;
gtgrp10=false;
gtgrp11=false;
gtgrp12=false;
gtgrp13=false;

gtactive = true; publicvariable "gtactive";
noholster=true;
hits  = 0;
popped = 0;
shots = 0;
_ran2 = random 100;
_time = time;

{_x animate["terc",1]} foreach gunlicensetargets;
player addeventhandler ["fired", {shots = shots + 1}]; 

player addmagazine "15Rnd_9x19_M9";
player addmagazine "15Rnd_9x19_M9";
player addweapon "m9";
player selectweapon "m9";
licenseflag2 sidechat "As soon as you go through the door to my left the test will start. good luck!";

waituntil{gtgrp1 or time > (_time + 10)};

_time = time;

while{true}do

{

if(!(player hasweapon "M9"))exitwith

	{

		{	

		deleteVehicle _x;
		
		} forEach (player nearObjects ["weaponholder", 5]);

	licenseflag2 sidechat "You have failed the test for dropping your weapon and your probationary gun license has been revoked!";
	_score = 0;
	INV_LizenzOwner = INV_LizenzOwner - ["gunprobation"];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;

	};

_score = round (hits*gtbonus - round(time - _time) - shots*0.1*gtbonus);
if(_score < 0)then{_score = 0};

hintsilent format["Hits: %1/%2 Shots fired: %5 Score: %3 Time left: %4s", hits, popped, _score, 60 - round(time - _time), shots];

_ran1 = random 100;
_ran3 = random 100;

if(gtgrp1 and _g1 == 0 and _ran1 > 50)then{t11 animate["terc",0]; [] spawn {[t11,5] call targethit}; _g1 = 1};
if(gtgrp1 and _g1 == 0 and _ran1 < 50)then{t12 animate["terc",0]; [] spawn {[t12,5] call targethit}; _g1 = 1};
if(gtgrp2 and _g2 == 0 and _ran3 > 50)then{t21 animate["terc",0]; [] spawn {[t21,5] call targethit}; _g2 = 1};
if(gtgrp2 and _g2 == 0 and _ran3 < 50)then{t22 animate["terc",0]; [] spawn {[t22,5] call targethit}; _g2 = 1};
if(gtgrp3 and _g3 == 0 and _ran1 > 50)then{t31 animate["terc",0]; [] spawn {[t31,5] call targethit}; _g3 = 1};
if(gtgrp4 and _g4 == 0 and _ran3 > 50)then{t41 animate["terc",0]; [] spawn {[t41,5] call targethit}; _g4 = 1};
if(gtgrp3 and _g3 == 0 and _ran1 < 50)then{t32 animate["terc",0]; [] spawn {[t32,5] call targethit}; _g3 = 1};
if(gtgrp4 and _g4 == 0 and _ran3 < 50)then{t42 animate["terc",0]; [] spawn {[t42,5] call targethit}; _g4 = 1};
if(gtgrp5 and _g5 == 0 and _ran1 > 50)then{t51 animate["terc",0]; [] spawn {[t51,5] call targethit}; _g5 = 1};
if(gtgrp6 and _g6 == 0 and _ran3 > 50)then{t61 animate["terc",0]; [] spawn {[t61,5] call targethit}; _g6 = 1};
if(gtgrp5 and _g5 == 0 and _ran1 < 50)then{t52 animate["terc",0]; [] spawn {[t52,5] call targethit}; _g5 = 1};
if(gtgrp6 and _g6 == 0 and _ran3 < 50)then{t62 animate["terc",0]; [] spawn {[t62,5] call targethit}; _g6 = 1};
if(gtgrp8 and _g8 == 0 and _ran1 > 50)then{t81 animate["terc",0]; [] spawn {[t81,3] call targethit}; _g8 = 1};
if(gtgrp9 and _g9 == 0 and _ran3 > 50)then{t91 animate["terc",0]; [] spawn {[t91,3] call targethit}; _g9 = 1};
if(gtgrp8 and _g8 == 0 and _ran1 < 50)then{t82 animate["terc",0]; [] spawn {[t82,3] call targethit}; _g8 = 1};
if(gtgrp9 and _g9 == 0 and _ran3 < 50)then{t92 animate["terc",0]; [] spawn {[t92,3] call targethit}; _g9 = 1};

if(gtgrp11 and _g11 == 0 and _ran1 > 50)then{t111 animate["terc",0]; [] spawn {[t111,3] call targethit}; _g11 = 1};
if(gtgrp11 and _g11 == 0 and _ran1 < 50)then{t112 animate["terc",0]; [] spawn {[t112,3] call targethit}; _g11 = 1};
if(gtgrp13 and _g13 < 1  and _ran1 > 50)then{t131 animate["terc",0]; [] spawn {[t131,3] call targethit}; _g13 = 1};
if(gtgrp13 and _g13 < 1  and _ran1 < 50)then{t132 animate["terc",0]; [] spawn {[t132,3] call targethit}; _g13 = 1};
if(gtgrp13 and _g13 < 2  and _g7 == 0 and _ran1 > 50)then{t133 animate["terc",0]; [] spawn {[t133,3] call targethit}; _g13 = 2};
if(gtgrp13 and _g14 == 0 and _ran1 < 50)then{t134 animate["terc",0]; [] spawn {[t134,3] call targethit}; _g14 = 1};
if(gtgrp13 and _g14 == 0 and _ran1 > 50)then{t135 animate["terc",0]; [] spawn {[t135,3] call targethit}; _g14 = 1};

if(gtgrp7  and _g7 == 0  and _ran2 < 50)then{t71 animate["terc",0];  [] spawn {[t71,4]  call targethit}; _g7 = 1};
if(gtgrp10 and _g10 == 0 and _ran2 > 50)then{t101 animate["terc",0]; [] spawn {[t101,3] call targethit}; _g10 = 1};
if(gtgrp12 and _g12 == 0 and _ran2 < 50)then{t121 animate["terc",0]; [] spawn {[t121,3] call targethit}; _g12 = 1};

if(gtgrp13 and player distance licenseflag2 < 3)exitwith{};
if(time - _time > 60)exitwith{_time = 0};

sleep 0.5;

};

gtactive=false; publicvariable "gtactive";
player removemagazines "15Rnd_9x19_M9";
player removeweapon "m9";
player removeEventHandler ["fired", 1];
noholster=false;

_score = round (hits*gtbonus - round(time - _time) - shots*0.1*gtbonus);
if(_score < 0)then{_score = 0};

if(_time == 0)then{_score = 0; _time = 60;};

hint format["Hits: %1/%2. Time taken: %3s Score: %4 Required: 50", hits, popped, round(time - _time), _score];

if(_score >= 50)then

	{

	licenseflag2 sidechat format["congratulations %1 you passed the test and have received your semi-automatic license!", name player];
	INV_LizenzOwner = INV_LizenzOwner + ["semiautomatic"];
	INV_LizenzOwner = INV_LizenzOwner - ["gunprobation"];
	["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;

	}else{licenseflag2 sidechat format["sorry %1 you failed the test! better luck next time.", name player]};

};

