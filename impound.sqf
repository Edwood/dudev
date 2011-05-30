_vcl = _this select 0;
_art = _this select 1;

if(_art == "impound")then

{

if ((count crew _vcl) > 0) exitWith {player groupChat "The vehicle is not empty!"};
if(_vcl distance impoundarea2 < 30 or _vcl distance impoundarea3 < 30)exitwith{player groupchat "the vehicle is already impounded!"};
if(_vcl iskindof "air")exitwith{player groupchat "you cannot impound this vehicle!"};
if(damage _vcl >0.98)exitwith {player groupchat "you cannot impound destroyed vehicles"};

_incarpark = false;

{if ((player distance (_x select 0)) < (_x select 1)) then {_incarpark = true};} forEach INV_VehicleGaragen;

if(_incarpark)exitwith{player groupchat "this vehicle is in a carpark. you cannot impound it!"};

_vcl setpos [(getPos impoundarea1 select 0)-(random 20)+(random 20), (getPos impoundarea1 select 1)-(random 20)+(random 20), getPos impoundarea1 select 2];
_geld = 2500;
['geld', _geld] call INV_AddInvItem;
player groupChat "You got 2500 for cleaning the streets.";
player groupChat localize "STRS_inventar_impound_success";

format['hint format[localize "STRS_inventar_impound_gesehen", %1, %2]', player, _vcl] call broadcast;

_vcl setdamage 0;
_vcl engineOn false;
_vcl setvehiclelock "locked";

};

if(_art == "buy")then

{

_geld = "geld" call INV_getitemamount;

if(_geld < impoundpay)exitwith{player groupchat "you do not have enough money"};

if(iscop and count (nearestobjects [getpos copcarspawn,["Ship","car","motorcycle","truck"], 3]) > 0)exitwith{player groupchat "there is a vehicle blocking the spawn!"};

["geld", -impoundpay] call INV_addinventoryitem;

_vcl = call compile format["%1", _vcl];

if(isciv)then

	{

	_vcl setpos [(getPos impoundarea2 select 0)-(random 10)+(random 10), (getPos impoundarea2 select 1)-(random 10)+(random 10), getPos impoundarea2 select 2];
	_vcl setdir getdir impoundarea2;

	}else{

	_vcl setpos getpos copcarspawn;
	_vcl setdir getdir copcarspawn;

	};

player groupchat format["You payed the $%1 fine and retrieved your vehicle!", impoundpay];

};

if(_art == "crush")then

{

if ((count crew _vcl) > 0) exitWith {player groupChat "The vehicle is not empty!"};
if(damage _vcl <0.98) exitWith {player groupChat "You cannot crush non-destroyed vehicles!"};

deletevehicle _vcl ;

player groupChat "You have successfully crushed the vehicle";

format['hint format[localize "STRS_inventar_crush_gesehen", %1, %2]', player, _vcl] call ISSE_pub_execPstr;

};





