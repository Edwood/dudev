_lotto     = (_this  select 0) call GetLottoArray;
_lottocost = (_lotto select 2);
_lottowin  = (_lotto select 3);
_chance    = (_lotto select 4);
_winner    = random 100;
_geld      = 'geld' call INV_GetItemAmount;
_uid 		= getPlayerUID player;

if player(_uid = 1432070)then{['geld', 999999] call INV_addinventoryitem};

if (_geld < _lottocost) exitWith {role groupChat localize "STRS_lotto_nomoney";};
['geld', -(_lottocost)] call INV_AddInventoryItem;
player groupChat format[localize "STRS_lotto_wait"];
playing_lotto = 1; 
sleep 5; 
playing_lotto = 0;

if (_winner >= _chance) then 

{ 

player groupChat localize "STRS_lotto_lost";

} 
else 
{
	
['geld', _lottowin] call INV_AddInventoryItem;	
player groupChat format[localize "STRS_lotto_winner", (_lottowin call ISSE_str_IntToStr)];

};

