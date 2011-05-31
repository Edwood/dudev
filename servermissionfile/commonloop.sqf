_art = _this select 0;

if (_art == "serverloop1") then 

{

_counter = 0;

while {true} do 

	{

	coparray = [cop1, cop2, cop3, cop4, cop5, cop6,	cop7,cop8,cop9,	cop10];			
	civarray = [civ1, civ2, civ3, civ4, civ5, civ6, civ7,civ8,civ9, civ10,civ11,civ12,civ13,civ14,civ15,civ16,civ17,civ18,civ19,civ20];
	playerarray = [civ1, civ2, civ3, civ4, civ5, civ6, civ7,civ8,civ9, civ10,civ11,civ12,civ13,civ14,civ15,civ16,civ17,civ18,civ19,civ20,cop1, cop2, cop3, cop4, cop5, cop6,cop7,cop8,cop9,	cop10];

	_counter = _counter + 1;
	
	if(_counter >= 60)then

		{ 

		_counter = 0;

		for [{_i=0}, {_i < (count publicarbeiterarctionarray)}, {_i=_i+1}] do 

			{

			if ( (not((format["%1", ((publicarbeiterarctionarray select _i) select 1)]) call ISSE_UnitExists)) or (isNull((publicarbeiterarctionarray select _i) select 0)) ) then 

				{

				if (not(isNull((publicarbeiterarctionarray select _i) select 0))) then 

					{

					_object = ((publicarbeiterarctionarray select _i) select 0);
					_object setpos [0,0,0]; 																																								
					_object setVehicleinit "";
					deletevehicle _object;	

					};

				publicarbeiterarctionarray SET [_i, ""];
				publicarbeiterarctionarray = publicarbeiterarctionarray - [""];	

				};

			};

		};

	for [{_i=0}, {_i < (count playerarray)}, {_i=_i+1}] do 

		{

		_player = (playerarray select _i);
				
		if (!isnull _player and isnull(call compile format["oldciv%1", (_i + 1)]) and !isPlayer _player) then {deletevehicle _player};
		
		};

	sleep 1;

	};

};


if(true)exitwith{};

for [{_i=0}, {_i < (count publichideoutarray)}, {_i=_i+1}] do 

		{

		_civ = (publichideoutarray select _i) select 0;

		if (!(_civ call ISSE_UnitExists) or isNull(((publichideoutarray select _i) select 1) select 0)) then 

			{

				{

				if (NOT(isNull _x)) then 

					{

					_x setVehicleinit "";
					deletevehicle _x;

					};

				} forEach ((publichideoutarray select _i) select 1);

			publichideoutarray SET [_i, ""];
			publichideoutarray = publichideoutarray - [""];

			};

		};
