if (local_robbsperre == 1)  exitWith {player groupChat format [localize "STRS_bank_dialoge_robbsperre",(local_robbsperre_zeit call ISSE_str_IntToStr)]};
if (!(createDialog "bank")) exitWith {hint "Dialog Error!";};
_liste = [1, true, false] call INV_DialogPlayers;
if ((_liste select 1) >= 0) then {lbSetCurSel [1, (_liste select 1)];};
_geld = 'geld' call INV_GetItemAmount;
CtrlSetText [101, format [localize "STRS_bank_dialog_inventargeld", (_geld call ISSE_str_IntToStr)]];
CtrlSetText [102, format [localize "STRS_bank_dialoge_accountgeld",  (Kontostand call ISSE_str_IntToStr)]];
buttonSetAction [10, format["[call compile lbData [1, lbCurSel 1], ctrlText 2, ""deposit""]  execVM ""transact.sqf""; closedialog 0;"] ];
buttonSetAction [11, format["[ctrlText 6,                          0,          ""withdraw""] execVM ""transact.sqf""; closedialog 0;"] ];

while {ctrlVisible 1003} do 

{

_geld   = 'geld' call INV_GetItemAmount;
_slider = ctrlText 2;
if (!(_slider call ISSE_str_isInteger)) then {_slider = 0;};
_slider = _slider call ISSE_str_StrToInt; 
if (_slider < 0) then {_slider = 0;};

if (lbCurSel 1 == (_liste select 1)) then 

	{

	CtrlSetText [4,""];
	CtrlSetText [5,""];

	} 
	else 
	{

	CtrlSetText [4, localize "STRS_bank_dialoge_tax"]; 
	CtrlSetText [5, format ["$%1", ((round((_slider*100)/(100-bank_steuer))) call ISSE_str_IntToStr)]];

	};

sleep 0.3;

};

