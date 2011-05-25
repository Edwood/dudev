_array = _this select 3;
_art   = _array select 0;
_geld  = 'geld' call INV_GetItemAmount;
_zusatzString = "";

if (_art == "buyhouse") then 

{

if (!(createDialog "housedialog")) exitWith {hint "Dialog Error!"};

housenumberarray = [];
_cityarray = (cityhousesarray select (_array select 1));
_number    = ((_array select 1) + 1);

for [{_j=0}, {_j < (count _cityarray)}, {_j=_j+1}] do 

	{

	if (!(isNull(_cityarray select _j))) then 

		{																																										

		_house = (_cityarray select _j);
		_cost  = [_house] call gethouseprice;
		_index = lbAdd [1, format["house ($%1)",  (round _cost)] ];
		//lbSetData [1, _index, format["%1", _city] ];
		housenumberarray = housenumberarray + [[_j, _number, (round _cost)]];
																	
		
		};		

	};

buttonSetAction [2, "[lbData [1, (lbCurSel 1)], housenumberarray select (lbCurSel 1)] execVM ""buyhouse.sqf"";"];
		
};

if (_art == "sellhouse") then 

{

if (!(createDialog "housedialog")) exitWith {hint "Dialog Error!"};

housenumberarray = [];
_number    = ((_array select 1) + 1);

for [{_j=0}, {_j < (count ownedhouses)}, {_j=_j+1}] do 

	{

	if (!(isNull(ownedhouses select _j))) then 

		{																																										

		_house = (ownedhouses select _j);
		_cost  = [_house] call gethouseprice;
		_index = lbAdd [1, format["%1 ($%2)",  _house, (round _cost)] ];
		//lbSetData [1, _index, format["%1", _city] ];
		housenumberarray = housenumberarray + [[_number, (round _cost), _house]];
																	
		
		};		

	};

buttonSetAction [2, "[lbData [1, (lbCurSel 1)], housenumberarray select (lbCurSel 1)] execVM ""sellhouse.sqf"";"];
		
};

