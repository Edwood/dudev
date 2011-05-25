_art  = _this select 2;
_geld = 'geld' call INV_GetItemAmount;

if (_art == "deposit") then 

{
if (atmscriptrunning == 1) exitwith {player groupchat "script already running"};
atmscriptrunning = 1;
_transfer      = _this select 0; 
_transfermoney = _this select 1; 
if (!(_transfermoney call ISSE_str_isInteger)) exitWith {player groupChat localize "STRS_bank_no_valid_number";};
_transfermoney = _transfermoney call ISSE_str_StrToInt;  
if (_transfermoney <= 0) exitWith {};
_steuern       = round((_transfermoney*100)/(100-bank_steuer));
_targetString  = INV_PLAYERLIST select _transfer; 

if (INV_PLAYERLIST select _transfer == player) exitWith 

	{	

	if (_geld < _transfermoney) then 

		{

		player groupChat format[localize "STRS_bank_deposit_self_no", (_transfermoney call ISSE_str_IntToStr)];

		} 
		else 
		{

		player groupChat format[localize "STRS_bank_deposit_self_yes", (_transfermoney call ISSE_str_IntToStr)];
		Kontostand = Kontostand + _transfermoney;
		['geld', -(_transfermoney)] call INV_AddInventoryItem;

		};

	};

if (not((format["%1", (INV_PLAYERLIST select _transfer)]) call ISSE_UnitExists)) exitWith {player groupChat localize "STRS_bank_player_not_ingame";};

if (KontoStand < _steuern) then 

	{

	player groupChat format[localize "STRS_bank_no_money", (_transfermoney call ISSE_str_IntToStr), (bank_steuer call ISSE_str_IntToStr)];	

	} 
	else 
	{

	Kontostand = Kontostand - _steuern;
	INV_SteuernGezahlt = (INV_SteuernGezahlt + (_steuern - _transfermoney));
	(format ["if (INV_ROLESTRING == ""%1"") then {Kontostand = Kontostand + %2; player groupChat format[localize ""STRS_bank_account_getmoney"", %2, %3];};", _targetString, (_transfermoney call ISSE_str_IntToStr), player]) call broadcast;
	player groupChat format[localize "STRS_bank_deposit_yes", (_transfermoney call ISSE_str_IntToStr), (bank_steuer call ISSE_str_IntToStr), (_steuern call ISSE_str_IntToStr)];

	};

};

if (_art == "withdraw") then 

{
if (atmscriptrunning == 1) exitwith {player groupchat "script already running"};
atmscriptrunning = 1;
_withdraw = _this select 0;
if (!(_withdraw call ISSE_str_isInteger)) exitWith {player groupChat localize "STRS_bank_no_valid_number";};
_withdraw = _withdraw call ISSE_str_StrToInt;  
if (_withdraw <= 0) exitWith {};

if (Kontostand >= _withdraw) then 

	{

	Kontostand = Kontostand - _withdraw;
	['geld', (_withdraw)] call INV_AddInventoryItem;
	player groupChat format[localize "STRS_bank_withdraw_yes", (_withdraw call ISSE_str_IntToStr)];	

	} else {player groupChat localize "STRS_bank_no_money";};

};

sleep 2;
atmscriptrunning = 0;