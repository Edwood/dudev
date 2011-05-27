_array = _this select 3;
_art   = _array select 0;
_geld  = 'geld' call INV_GetItemAmount;_zusatzString = "";

if ((count _array)>1) then 
{
	_zusatzString = _array select 1;
};

if (_art == "bail") then 
{
	if (!(createDialog "baildialog")) exitWith {hint "Dialog Error!";};
	sliderSetRange [2, 100, 250000];		sliderSetSpeed [2, 1, 50];
	
	while {(ctrlVisible 1008)} do 
	{
		ctrlSetText [1, format["$%1", ((round(sliderPosition 2)) call ISSE_str_IntToStr)]];
		sleep 0.3;
	};
};

if (_art == "civcam") then 
{
	if (!(createDialog "civcamdialog")) exitWith {hint "Dialog Error!";};
	[2, 1, true, false] call DialogSpielerListe;
	lbSetCurSel    [1, 0];		
	sliderSetRange [2, 5, 30];
	sliderSetSpeed [2, 1, 5];
	
	while {ctrlVisible 1002} do 
	{
		ctrlSetText [3, format["$%1", (((round(sliderPosition 2))*100) call ISSE_str_IntToStr)]];
		ctrlSetText [5, format["%1s", ((round(sliderPosition 2)) call ISSE_str_IntToStr)]];
		
		sleep 0.3;
	};
};

if (_art == "wantedrelease") then 
{
	if (!(createDialog "wantedrelease")) exitWith {hint "Dialog Error!";};
	[2, 1, true, false] call DialogSpielerListe;
	lbSetCurSel [1, 0];
	[2, 11, true, false] call DialogSpielerListe;
	lbSetCurSel [11, 0];
	
	while {ctrlVisible 1007} do 
	{
		sleep 0.3;
	};
};

if (_art == "hideout") then 
{
	if (!(createDialog "hideout")) exitWith {hint "Dialog Error!";};
	for [{_i=0}, {_i < (count hideoutHouseArray)}, {_i=_i+1}] do 
	{
		lbAdd [2, format ["%1 - $%2", hideoutNameArray select _i, hideoutPriceArray select _i]];
	};
	
	lbSetCurSel [2, 0];
	
	while {ctrlVisible 1014} do 
	{
		ctrlSetText [1, hideoutHousePictureArray select lbCurSel 2];
		sleep 0.3;			
	};
};

if (_art == "spielerliste") then 
{
	if (!(createDialog "liste_1_button")) exitWith {hint "Dialog Error!";};
	_trennlinie = "---------------------------------------------";
	lbAdd [1, format ["Date:     %3.%2.%1", (date select 0), (date select 1), (date select 2)]];
	lbAdd [1, format ["Runtime: %1 minutes", (round(time/60))]];		
	lbAdd [1, _trennlinie];
	lbAdd [1, localize "STRS_statdialog_playerinfo"];
	lbAdd [1, format ["Money: $%2", localize "STRS_statdialog_health", (('geld' call INV_GetItemAmount) call ISSE_str_IntToStr)]];
	lbAdd [1, format ["Savings: $%2", localize "STRS_statdialog_health", kontostand]];
	lbAdd [1, format ["%1: %2",    localize "STRS_statdialog_hunger", round(INV_hunger)]];
	lbAdd [1, format ["%1: %2/%3", localize "STRS_statdialog_weight", (call INV_GetOwnWeight), INV_Tragfaehigkeit]];
	lbAdd [1, format ["%1: %2",    localize "STRS_statdialog_copkills", CopsKilled]];
	lbAdd [1, format ["%1: %2",    localize "STRS_statdialog_civkills", CivsKilled]];
	lbAdd [1, format ["%1: %2",    localize "STRS_statdialog_selfkills", SelfKilled]];
	lbAdd [1, format ["%1: %2",    localize "STRS_statdialog_deaths", deadtimes]];
	lbAdd [1, format ["%1: %2 seconds",    "Respawn time", round(DeadWaitSec+extradeadtime)]];
	if(isciv)then{lbAdd [1, format ["%1: %2",    "Demerit points", demerits]]};
	lbAdd [1, _trennlinie];
	lbAdd [1, localize "STRS_statdialog_playerlist"];
	
	for [{_i=0}, {_i < (count playerarray)}, {_i=_i+1}] do 
	{
		_spieler = playerarray select _i;
		if (!isnull _spieler and isPlayer _spieler) then {lbAdd [1, (format ["%1: %2", _spieler, name _spieler])];};
	};
	lbAdd [1, _trennlinie];
	lbAdd [1, "W A N T E D:"];
	for [{_i=0}, {_i < (count civarray)}, {_i=_i+1}] do 
	{
	
	_civ	  = civarray select _i;
	
	if(!isnull _civ and isPlayer _civ)then

		{
	
		_wanted = call compile format ["%1_wanted", _civ];
		_reason = call compile format ["%1_reason", _civ];
		_bounty = call compile format ["kopfgeld_%1", _civ];
		
		if(_wanted == 1) then

			{

			lbAdd [1, (format ["%1 (Bounty: %3): %2 is wanted for:", _civ, name _civ, _bounty])];
			_str = "";
			{if(_str == "")then{_str = _str + _x}else{_str = _str + ", "; _str = _str + _x;};} foreach _reason;
			lbAdd [1, (format ["%1.", _str])]; 

			};

		};

	};

	lbAdd [1, _trennlinie];
	lbAdd [1, localize "STRS_statdialog_licenselist"];
	for [{_i=0}, {_i < (count INV_Lizenzen)}, {_i=_i+1}] do 
	{
		if (((INV_Lizenzen select _i) select 0) call INV_HasLicense) then 
		{
			lbAdd [1, ((INV_Lizenzen select _i) select 2)];
		};
	};
	lbAdd [1, _trennlinie];
	lbAdd [1, "F A C T O R I E S:"];
	for [{_i=0}, {_i < (count INV_ItemFabriken)}, {_i=_i+1}] do 
	{
		if (((INV_ItemFabriken select _i) select 1) in INV_Fabrikowner) then 
		{
			
		_workers = call compile format["%1workers", ((INV_ItemFabriken select _i) select 8)]; 
		lbAdd [1, format['%1: %2 workers', ((INV_ItemFabriken select _i) select 2), _workers]];
		};
	};
	lbAdd [1, _trennlinie];
	lbAdd [1, localize "STRS_statdialog_regierung"];
	if (not(MayorNumber == -1)) then 
	{
		lbAdd [1, (playerstringarray select MayorNumber)];
	};
	lbAdd [1, _trennlinie];
	lbAdd [1, localize "STRS_statdialog_chief"];
	if (not(chiefNumber == -1)) then 
	{
		lbAdd [1, (playerstringarray select chiefNumber)];
	};
if(iscop)then{
	lbAdd [1, _trennlinie];
		
	lbAdd [1, "M I L I T A R Y  S T R E N G T H:"];

	_MGS = 0;

	if(alive MG1 and (!isnull gunner MG1))then{_MGS = _MGS + 1};
	if(alive MG2 and (!isnull gunner MG2))then{_MGS = _MGS + 1};
	if(alive MG3 and (!isnull gunner MG3))then{_MGS = _MGS + 1};
	if(alive MG4 and (!isnull gunner MG4))then{_MGS = _MGS + 1};

	_PKS = 0;

	if(alive PK1 and (!isnull gunner PK1))then{_PKS = _PKS + 1};
	if(alive PK2 and (!isnull gunner PK2))then{_PKS = _PKS + 1};
	if(alive PK3 and (!isnull gunner PK3))then{_PKS = _PKS + 1};
	if(alive PK4 and (!isnull gunner PK4))then{_PKS = _PKS + 1};

	lbAdd [1, (format ["Kord MG's functional: %1/4", _MGS])];
	lbAdd [1, (format ["PK MG nest's functional: %1/4", _PKS])];

	lbAdd [1, (format ["Squad patrols active: %1/%2", round (_count/4),(maxinfai/4)])];
	
};

	lbAdd [1, _trennlinie];
		
	lbAdd [1, "G A N G S:"];

	for [{_i=0}, {_i < (count gangsarray)}, {_i=_i+1}] do 
	
	{

	_gangarray = gangsarray select _i;
	_gangname  = _gangarray select 0;
	_members   = _gangarray select 1;
	_territory = "None";
	
	_control1 = gangarea1 getvariable "control";
	_control2 = gangarea2 getvariable "control";
	_control3 = gangarea3 getvariable "control";
	_control4 = gangarea4 getvariable "control";
	_control5 = gangarea5 getvariable "control";
	_control6 = gangarea6 getvariable "control";

	if(_control1 == _gangname)then{_territory = "Gang area 1"};
	if(_control2 == _gangname)then{if(_territory == "None")then{_territory = "Gang area 2"}else{_territory = _territory + ", Gang area 2"};};
	if(_control3 == _gangname)then{if(_territory == "None")then{_territory = "Gang area 3"}else{_territory = _territory + ", Gang area 3"};};
	if(_control4 == _gangname)then{if(_territory == "None")then{_territory = "Gang area 4"}else{_territory = _territory + ", Gang area 4"};};	
	if(_control5 == _gangname)then{if(_territory == "None")then{_territory = "Gang area 5"}else{_territory = _territory + ", Gang area 5"};};	
	if(_control6 == _gangname)then{if(_territory == "None")then{_territory = "Gang area 6"}else{_territory = _territory + ", Gang area 6"};};	
	_territory = _territory + ".";	

	lbAdd [1, format["%1 - Territory: %2 - Members:", _gangarray select 0, _territory]];
	private "_j"; /// BUG FIX
	for [{_j=0}, {_j < (count _members)}, {_j=_j+1}] do {if(_j == 0)then{lbAdd [1, format["%1 (leader)", _members select _j]]}else{lbAdd [1, format["%1", _members select _j]]};};

	};	
		
	lbAdd [1, _trennlinie];
		
	lbAdd [1, "B A N K:"];
	lbAdd [1, (format ["Est. total funds in the main bank safe's: $%1", robpoolsafe1 + robpoolsafe2 + robpoolsafe3])];
					
	if(!local_useBankPossible)then{lbAdd [1, (format ["Bank lockout time remaining: %1 seconds.", round rblock])]};		
	
	lbAdd [1, _trennlinie];			
	lbAdd [1, (format ["W O R K P L A C E S"])];
		for [{_i=0}, {_i < (count BuyAbleBuildingsArray)}, {_i=_i+1}] do 
		{
			if ( ((BuyAbleBuildingsArray select _i) select 0) in BuildingsOwnerArray ) then 
			{
				lbAdd [1, (format ["%1", ((BuyAbleBuildingsArray select _i) select 1)])];
			};
		};
	lbAdd [1, _trennlinie];
			
	lbAdd [1, localize "STRS_statdialog_laws"];		
	_i = 0;
	{
		if (not(_x == "")) then 
		{
			_i = _i + 1;
			lbAdd [1, (format ["%1: %2", _i, _x])];
		};
	}
	forEach GesetzArray;
	lbAdd [1, _trennlinie];	
	lbAdd [1, localize "STRS_statdialog_taxes"];	
	{
		if ((_x select 2) > 0) then 
		{
			lbAdd [1, format["%1: %2", (_x select 1), (_x select 2)] ];	
		};
	}
	foreach INV_ItemTypenArray;	
	lbAdd [1, format["Transfer: %1", bank_steuer] ];

	lbAdd [1, _trennlinie];
	lbAdd [1, "P O P U L A T I O N S:"];

	_pos  	= getmarkerpos ((huntingarray select 0) select 0);
	_area 	= (huntingarray select 0) select 1;
	_boars 	= nearestobjects [_pos, ["wildboar"], _area];
		
	lbAdd [1, format["Boars: %1", count _boars]];

	_stock = ["blowfish", (shop1 call INV_getshopnum)] call INV_getstock;
	_stock = _stock + (["blowfish", (shop2 call INV_getshopnum)] call INV_getstock);
	_stock = _stock + (["blowfish", (shop3 call INV_getshopnum)] call INV_getstock);
	_stock = _stock + (["blowfish", (shop4 call INV_getshopnum)] call INV_getstock);

	lbAdd [1, format["Blowfish: %1", 800 - _stock]];

	_stock = ["Mackerel", (shop1 call INV_getshopnum)] call INV_getstock;
	_stock = _stock + (["Mackerel", (shop2 call INV_getshopnum)] call INV_getstock);
	_stock = _stock + (["Mackerel", (shop3 call INV_getshopnum)] call INV_getstock);
	_stock = _stock + (["Mackerel", (shop4 call INV_getshopnum)] call INV_getstock);

	lbAdd [1, format["Mackerel: %1", 400 - _stock]];

	_stock = ["Herring", (shop1 call INV_getshopnum)] call INV_getstock;
	_stock = _stock + (["Herring", (shop2 call INV_getshopnum)] call INV_getstock);
	_stock = _stock + (["Herring", (shop3 call INV_getshopnum)] call INV_getstock);
	_stock = _stock + (["Herring", (shop4 call INV_getshopnum)] call INV_getstock);

	lbAdd [1, format["Herring: %1", 400 - _stock]];

	_stock = ["Bass", (shop1 call INV_getshopnum)] call INV_getstock;
	_stock = _stock + (["Bass", (shop2 call INV_getshopnum)] call INV_getstock);
	_stock = _stock + (["Bass", (shop3 call INV_getshopnum)] call INV_getstock);
	_stock = _stock + (["Bass", (shop4 call INV_getshopnum)] call INV_getstock);

	lbAdd [1, format["Deep Sea Bass: %1", 200 - _stock]];
	
	lbAdd [1, _trennlinie];

	lbAdd [1, "C R O P   S T R E N G T H:"];
	
	_stock = ["Bread", (shop1 call INV_getshopnum)] call INV_getstock;
	_stock = _stock + (["Bread", (shop2 call INV_getshopnum)] call INV_getstock);
	_stock = _stock + (["Bread", (shop3 call INV_getshopnum)] call INV_getstock);
	_stock = _stock + (["Bread", (shop4 call INV_getshopnum)] call INV_getstock);
	
	lbAdd [1, format["Wheat: %1", 100 - (_stock/400)*100]];

	lbAdd [1, _trennlinie];

	lbAdd [1, "D E M A N D (Oil):"];
	_demand = (((tankencost - 100)/200)*100);	
	lbAdd [1, format["Oil Barrel Trader: %1", _demand ]];

	lbAdd [1, _trennlinie];
	
			
};

if (_art == "inventorycheck") then 
{
	if (!(createDialog "liste_1_button")) exitWith {hint "Dialog Error!";};
	_licensearray  = (_array select 1);
	_inventararray = (_array select 2);	
	_civobj        = (_array select 3);
	_waffenarray   = weapons _civobj - nonlethalweapons;
	_magazinarray  = magazines _civobj;
	_trennlinie = "---------------------------------------------";
	lbAdd [1, localize "STRS_statdialog_licenselist"];
	private "_i"; //// ADD to fix bug
	for [{_i=0}, {_i < (count _licensearray)}, {_i=_i+1}] do 
	{
		_lizenz = (_licensearray select _i);
		lbAdd [1, format ["%1", (_lizenz call INV_GetLicenseName)]];
	};
	lbAdd [1, _trennlinie];
	lbAdd [1, localize "STRS_statdialog_inventarlist"];
	for [{_i=0}, {_i < (count _inventararray)}, {_i=_i+1}] do 
	{
		_objekt     = ((_inventararray select _i) select 0);
		_objektname = (_objekt call INV_getitemName);
		_anzahl     = ((_inventararray select _i) select 1);
		if (_anzahl > 0) then 
		{
			lbAdd [1, format ["%1: %2", _objektname, _anzahl]];
		};
	};
	
	lbAdd [1, _trennlinie];	
	lbAdd [1, localize "STRS_statdialog_waffen"];
	for [{_i=0}, {_i < (count _waffenarray)}, {_i=_i+1}] do 
	{
		_objekt     = _waffenarray select _i;
		_scriptname = _objekt call INV_GetScriptFromClass_Weap;
		_objektname = (_scriptname call INV_getitemName);
		lbAdd [1, format ["%1", _objektname]];
	};
	lbAdd [1, _trennlinie];
	_index = lbAdd [1, localize "STRS_statdialog_magazine"];
	for [{_i=0}, {_i < (count _magazinarray)}, {_i=_i+1}] do 
	{
		_objekt     = _magazinarray select _i;
		_scriptname = _objekt call INV_GetScriptFromClass_Mag;
		_objektname = (_scriptname call INV_getitemName);
		lbAdd [1, format ["%1", _objektname]];
	};
	lbAdd [1, _trennlinie];
};
if (_art == "gesetz") then 
{
	if (!(createDialog "gesetzdialog")) exitWith {hint "Dialog Error!";};
	{
		_index = lbAdd [1, _x];
		lbSetData [1, _index, _x];
	}
	forEach GesetzArray;
	while {ctrlVisible 1020} do 
	{
		_selected = lbCurSel 1;
		ctrlSetText [2, lbText [1, _selected]];
		waitUntil {((not(_selected == lbCurSel 1)) or (not(ctrlVisible 1020)))};
	};
};

if (_art == "coplog") then 
{
	if (!(createDialog "liste_1_button")) exitWith {hint "Dialog Error!";};
	{
		_text  = format["%3: Player %1 --> %2", (_x select 0), (_x select 1), (round((_x select 3)/60))];
		_index = lbAdd [1, _text];
	}
	forEach CopLog;
};

if (_art == "wahlen") then 
{
	if (!(createDialog "wahldialog")) exitWith {hint "Dialog Error!";};
	_array = [0, 1, true, false] call DialogSpielerListe;
	lbSetCurSel [1, _array select 1];
};

if (_art == "chief") then 
{
	if (!(createDialog "chiefdialog")) exitWith {hint "Dialog Error!";};
	_arrayc = [0, 1, true, false] call DialogSpielerListe;
	lbSetCurSel [1, _arrayc select 1];
};

if (_art == "steuern") then 
{
	if (!(createDialog "steuerdialog")) exitWith {hint "Dialog Error!";};
	sliderSetSpeed [12, 1, 5];
	sliderSetRange [12, 0, 30];
	sliderSetPosition [12,((INV_ItemTypenArray select 0) select 2)];
	sliderSetSpeed [22, 1, 5];		sliderSetRange [22, 1, 30];	
	sliderSetPosition [22,((INV_ItemTypenArray select 1) select 2)];
	sliderSetSpeed [32, 1, 5];				sliderSetRange [32, 1, 30];
	sliderSetPosition [32,((INV_ItemTypenArray select 2) select 2)];
	sliderSetSpeed [42, 1, 5];					
	sliderSetRange [42, 0, 30];			
	sliderSetPosition [42,((INV_ItemTypenArray select 3) select 2)];
	sliderSetSpeed [52, 1, 5];					
	sliderSetRange [52, 0, 30];				
	sliderSetPosition [52,bank_steuer];		
	while {ctrlVisible 1032} do 
	{
		ctrlSetText [11, format[localize "STRS_dialogandere_steuerdialog_itemsteuer", ((round(sliderPosition 12)) call ISSE_str_IntToStr)]];
		ctrlSetText [21, format[localize "STRS_dialogandere_steuerdialog_fahrzeugsteuer", ((round(sliderPosition 22)) call ISSE_str_IntToStr)]];
		ctrlSetText [31, format[localize "STRS_dialogandere_steuerdialog_magazinsteuer", ((round(sliderPosition 32)) call ISSE_str_IntToStr)]];
		ctrlSetText [41, format[localize "STRS_dialogandere_steuerdialog_waffesteuer", ((round(sliderPosition 42)) call ISSE_str_IntToStr)]];
		ctrlSetText [51, format[localize "STRS_dialogandere_steuerdialog_banksteuer", ((round(sliderPosition 52)) call ISSE_str_IntToStr)]];
		sleep 0.1;
	};
};

if (_art == "copmenu") then 
{
	if (!(createDialog "CopMenu")) exitWith {hint "Dialog Error!"};
};

if (_art == "copmenulite") then 
{
	if (!(createDialog "CopMenuLite")) exitWith {hint "Dialog Error!"};	
};

if (_art == "distribute") then 

{

if (!(createDialog "distribute")) exitWith {hint "Dialog Error!"};
private "_j";   /// BUG FIX
for [{_j=0}, {_j < (count INV_VehicleArray)}, {_j=_j+1}] do 

	{

	if (!(isNull(INV_VehicleArray select _j))) then 

		{																																										

		_vehicle = (INV_VehicleArray select _j);																																
		_index = lbAdd [1, format["%1 (%2)", _vehicle, typeof _vehicle] ];
		lbSetData [1, _index, format["%1", _vehicle] ];															
		
		};		

	};

buttonSetAction [2, "[lbData [1, (lbCurSel 1)]] execVM ""choosecity.sqf"";"];
		
};

if (_art == "impound") then 

{

if (!(createDialog "distribute")) exitWith {hint "Dialog Error!"};
private "_j"; /// BUG FIX
ctrlSetText [3, format["Retrieve impounded vehicle ($%1)", impoundpay]];

for [{_j=0}, {_j < (count INV_VehicleArray)}, {_j=_j+1}] do 

	{

	_vehicle = (INV_VehicleArray select _j);

	if (!isNull _vehicle and _vehicle distance impoundarea1 < 200) then 

		{																																										

		_index = lbAdd [1, format["%1 (%2)", _vehicle, typeof _vehicle] ];
		lbSetData [1, _index, format["%1", _vehicle] ];															
		
		};		

	};

buttonSetAction [2, "[lbData [1, (lbCurSel 1)],""buy""] execVM ""impound.sqf"";"];
		
};

if (_art == "gangmenu") then 

{

if (!(createDialog "gang_menu")) exitWith {hint "Dialog Error!";};
private "_i";
for [{_i=0}, {_i < (count gangsarray)}, {_i=_i+1}] do 
	
	{

	_gangarray = gangsarray select _i;
	_index = lbAdd [202, format ["%1 - Memberlist: %2", (_gangarray select 0), (_gangarray select 1)]];
	lbSetData [202, _index, format ["%1", (_gangarray select 0)]];
	
	};

};

if (_art == "gildenverwaltung") then 

{

if(!gangleader)exitwith{player groupchat "you are not the gang leader!"};

closedialog 0;
	
if (!(createDialog "gilde_verwaltung")) exitWith {hint "Dialog Error!";};

_members = [];
private "_i";
for [{_i=0}, {_i < (count gangsarray)}, {_i=_i+1}] do {if ((name player) in ((gangsarray select _i) select 1)) exitWith {_members = ((gangsarray select _i) select 1)};};
				
_index = lbAdd [201, localize "STRS_hints_ja"];
lbSetData [201, _index, "true"];
_index = lbAdd [201, localize "STRS_hints_nein"];
lbSetData [201, _index, "false"];

for [{_i=0}, {_i < (count _members)}, {_i=_i+1}] do 
	
	{

	_member = (_members select _i);
	_obj 	= [_member, civarray] call INV_findunit;

	if(isnull _obj)then{_obj = "notingame"};

	_index = lbAdd [102, (format ["%1 (%2)", _member, _obj])];
	lbSetData [102, _index, (format ["%1", _obj])];

	};

};