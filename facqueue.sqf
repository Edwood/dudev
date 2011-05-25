if(typename _this == "ARRAY") exitwith

	{

	_id	 = _this select 3;	
	_arr 	 = (INV_ItemFabriken select _id);
	_queue	 = (_arr select 8);
	_fqueue  = call compile format["%1", _queue];
	_geld 	 = "geld" call INV_getitemamount;
	_workers = call compile format['%1workers', _queue];

	if(_workers >= maxfacworkers)exitwith{player groupchat "max factory workers reached!"};
	if(_geld < facworkercost)exitwith{player groupchat "you do not have enough money"};
	
	["geld", -facworkercost] call INV_addinventoryitem;

	call compile format['%1workers = %1workers + 1;["%1workers", %1workers] spawn ClientSaveVar;', _queue];

	player groupchat "factory worker hired!";

	if(count _fqueue > 0)then{call compile format['%1eta = %1eta - (%1eta/maxfacworkers);', (_fqueue select 0)];};

	};

_arr 		= (INV_ItemFabriken select _this);
_queue	 	= (_arr select 8);
_list		= _arr select 5;

call compile format['%1workers = 0;', _queue];

for [{_i=0}, {_i < (count _list)}, {_i=_i+1}] do 

{

call compile format['%1avail = 0;%1prod = 0;%1eta = 0;%1pend = 0;', _list select _i];

};

while{true}do

{

call compile format['waituntil {count %1 > 0}; fqueue = %1;', _queue];

call compile format['

%1prod = %1prod + 1;
%1pend = %1pend - 1;
waituntil{%3workers > 0};
%1eta = %2;
if(%1eta > maxmanitime)then{%1eta = maxmanitime};
%1eta = %1eta/(%3workers/5);
if(%1eta > maxmanitime)then{%1eta = maxmanitime};
_t = %1eta;
for [{_i=0}, {_i < _t}, {_i=_i+1}] do {sleep 1; if(%3workers > 0)then{%1eta = %1eta - 1};if(%1eta <= 0)exitwith{_i = 9999; %1eta = 0;};};
%1prod = %1prod - 1;
%1avail = %1avail + 1;
["%1pend", %1pend] spawn ClientSaveVar;
%3 set [0, 0];
%3 = %3 - [0];
["%3", %3] spawn ClientSaveVar;
["%1avail", %1avail] spawn ClientSaveVar;

player groupchat "a %4 is now available at one of your factories!";

', (fqueue select 0), round(((fqueue select 0) call INV_getitemBuyCost)*.01125), _queue, ((fqueue select 0) call INV_getitemname)];

sleep 1;

};