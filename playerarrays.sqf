waitUntil {((alive player) or (local server))};

if(local server and !local player)then{dedicatedServer = true};	
if(local server and local player)then{hostedServer = true};

playerstringarray = ["Civ1", "Civ2", "Civ3", "Civ4", "Civ5", "Civ6", "Civ7", "Civ8", "Civ9", "Civ10","Civ11", "Civ12","Civ13","Civ14","Civ15","Civ16","Civ17","Civ18","Civ19","Civ20","Cop1", "Cop2", "Cop3", "Cop4", "Cop5", "Cop6","Cop7","Cop8","Cop9","Cop10"];

for [{_i=0}, {_i < (count playerstringarray)}, {_i=_i+1}] do {if (isNil (playerstringarray select _i)) then { call compile format["%1 = objNull;", (playerstringarray select _i)]; }; };

playerarray = [civ1,   civ2,   civ3,   civ4,   civ5,   civ6,   civ7,   civ8,   civ9,   civ10,civ11,civ12, civ13,	civ14,	civ15, civ16,civ17, civ18,civ19, civ20, cop1,   cop2,   cop3,   cop4,   cop5,   cop6,cop7,	cop8,cop9,cop10];
civstringarray    = ["Civ1", "Civ2", "Civ3", "Civ4", "Civ5", "Civ6", "Civ7", "Civ8", "Civ9", "Civ10","Civ11", "Civ12","Civ13","Civ14","Civ15","Civ16","Civ17","Civ18","Civ19","Civ20"];
civarray          = [civ1,   civ2,   civ3,   civ4,   civ5,   civ6,   civ7,   civ8,   civ9,   civ10,civ11,civ12, civ13,	civ14,	civ15, civ16,civ17, civ18,civ19, civ20];
copstringarray    = ["Cop1", "Cop2", "Cop3", "Cop4", "Cop5", "Cop6","Cop7","Cop8","Cop9","Cop10"];
coparray          = [cop1,   cop2,   cop3,   cop4,   cop5,   cop6,cop7,	cop8,cop9,cop10];

rolenumber = 0; 

for [{_i=0}, {_i < (count playerarray)}, {_i=_i+1}] do 

{ 

call compile format["if ((playerarray select %1) == player) then {rolenumber = (%1 + 1);}", _i];

};

role = player;

if (player in coparray) then 

{
										
iscop          = true;
isciv	       = false;							
rolecop        = 1;								
sidenumber     = rolenumber - civscount;			
longrolenumber = 1100 + sidenumber;			
rolestring     = format["Cop%1", sidenumber];

};

if (player in civarray) then 

{

isciv          = true;						
iscop          = false;												
rolecop        = 0;								
sidenumber     = rolenumber;				
longrolenumber = 1000 + sidenumber;										
rolestring     = format["Civ%1", sidenumber];

};


if (typeName player == "OBJECT") then {
	if (!isNull player) then {
		call compile format["old%1 = objnull", player];
	};
};
