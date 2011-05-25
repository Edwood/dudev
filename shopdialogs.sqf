if (!(createDialog "itemkaufdialog")) exitWith {hint "Dialog Error!"};

if (isNil "INV_ShopDialoge") then {INV_ShopDialoge = 0} else {INV_ShopDialoge = INV_ShopDialoge + 1};

private["_exitvar", "_item", "_preis", "_preisOhneTax", "_zerostockcount", "_name", "_index", "_infos","_stock","_maxstock","_sellnumber","_demand","_itemsellarray"];

_caller = _this select 1;
_this   = _this select 3;
INV_ActiveShopNumber    = (_this select 0);                                   
INV_ActiveSellShopArray = [];                                                 
INV_ActiveBuyShopArray  = [];
_shop		= ((INV_ItemShops select INV_ActiveShopNumber) select 0); 
_itembuyarray   = ((INV_ItemShops select INV_ActiveShopNumber) select 4); 
_itemsellarray  = ((INV_ItemShops select INV_ActiveShopNumber) select 5);

//--------------------------------------BUY-----------------------------------------

for [{_i=0}, {_i < (count _itembuyarray)}, {_i=_i+1}] do 

{

_item         = _itembuyarray select _i;
_infos        = _item call INV_getitemArray;
_stock        = [_item, INV_ActiveShopNumber] call INV_getstock;
_preisOhneTax = _infos call INV_getitemBuyCost;
_preis        = _infos call INV_getitemSteuer;
_name         = (_infos call INV_getitemName);

if(_stock != -1) then

	{

	_maxstock     = [_item, INV_ActiveShopNumber] call INV_getmaxstock;
	_demand       = _preis*0.25*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
	_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

	};

if(_infos call INV_getitemType == "item")then
		
	{

	if (_item call INV_getitemIsIllegal) then

		{
		
		_preis        = _infos call INV_getitemSteuer;
				
		};
	
	};

if (_stock != -1) then

	{

	if (_infos call INV_getitemType == "item") then 

		{
		
		_index = lbAdd [1, format ["%1 ($%2, %3kg, Stock: %4)", _name, (_preis), (_infos call INV_getitemTypeKg), _stock] ]; 	
	
		} 
		else 
		{				

		_index = lbAdd [1, format ["%1 ($%2, Stock: %3)", _name, (_preis call ISSE_str_IntToStr), _stock] ];

		};
		
	}
	else
	{

	if (_infos call INV_getitemType == "item") then 

		{
																				
		_index = lbAdd [1, format ["%1 ($%2, %3kg)", _name, (_preis), (_infos call INV_getitemTypeKg)] ]; 	
	
		} 
		else 
		{				

		_index = lbAdd [1, format ["%1 ($%2)", _name, (_preis call ISSE_str_IntToStr)] ];

		};
	
	};

lbSetData [1, _index, format ["%1", _item] ];									
INV_ActiveBuyShopArray = INV_ActiveBuyShopArray + [ [_item, _preisOhneTax, _preis, _i] ];

};

//--------------------------------------SELL-----------------------------------------

for [{_i=0}, {_i < (count _itemsellarray)}, {_i=_i+1}] do 

{																										

_item         = _itemsellarray select _i;
_infos        = _item call INV_getitemArray;
_stock        = [_item, INV_ActiveShopNumber] call INV_getstock;
_preisOhneTax = (_infos call INV_getitemBuyCost)*0.5;
_preis        = (_infos call INV_getitemSteuer)*0.5;
_name         = (_infos call INV_getitemName);
_sellnumber   = _i;

if(_stock != -1) then

	{

	_maxstock     = [_item, INV_ActiveShopNumber] call INV_getmaxstock;
	_demand       = _preis*0.5*(_stock-(_maxstock*0.5))/(0.5*_maxstock);
	_preis        = round((_preisOhneTax*(_preis/_preisOhneTax)) - _demand);

	};

if(_infos call INV_getitemType == "item")then
		
	{

	if (_item call INV_getitemIsIllegal) then

		{
		
		_preis        = (_infos call INV_getitemSellCost);
				
		};
	
	};

if (((INV_ItemShops select INV_ActiveShopNumber) select 0) == OilSell1)then

	{

	_demand      = ((tankencost - 100)/200);
	_preis        = round((_preisOhneTax*(_preis/_preisOhneTax))*_demand);
	if(_preis < oilbaseprice)then{_preis = oilbaseprice};
		
	};													

//if (((INV_ItemShops select INV_ActiveShopNumber) select 0) == coalSell1)then

//	{

//	_demand      = ((coalusage - 100)/200);
//	_preis        = round((_preisOhneTax*(_preis/_preisOhneTax))*_demand);
//	if(_preis < coalbaseprice)then{_preis = coalbaseprice};
//		
//	};													
	
if ((_infos call INV_getitemType) == "Waffe") then 

	{

	if (player hasweapon (_infos call INV_getitemClassName)) then 

		{
																																	
		INV_ActiveSellShopArray = INV_ActiveSellShopArray + [ [_item, _preisOhneTax, _preis, _sellnumber] ];																																							
		_index = lbAdd [101, format["%1 ($%2)", _name, _preis] ];						
		lbSetData [101, _index, _item];						

		};

	};									

if ((_infos call INV_getitemType) == "Magazin") then 

	{
								
	if ((_infos call INV_getitemClassName) in (magazines player)) then 

		{
																																							
		INV_ActiveSellShopArray = INV_ActiveSellShopArray + [ [_item, _preisOhneTax, _preis, _sellnumber] ];
		_mags      = {_x == (_infos call INV_getitemClassName)} count magazines player;	
		_menge = _mags;
		_index = lbAdd [101, format["%1 ($%2 %3x)", _name, (_preis call ISSE_str_IntToStr), (_menge call ISSE_str_IntToStr)] ];																	
		lbSetData [101, _index, _item];	

		};	

	};															

if ((_infos call INV_getitemType) == "Item") then 
		
	{
																				
	if ( ((_item call INV_GetItemAmount) > 0) and (_item call INV_getitemDropable) ) then 

		{
		
		INV_ActiveSellShopArray = INV_ActiveSellShopArray + [ [_item, _preisOhneTax, _preis, _sellnumber] ];
		index = lbAdd [101, format["%1 ($%2, %5kg, %4x)", _name, (_preis call ISSE_str_IntToStr), 0, (_item call INV_GetItemAmount), (_infos call INV_getitemTypeKg)] ];																																							
		lbSetData [101, _index, (format ["%1", _item])];	

		};	

	};
																						
if ((_infos call INV_getitemType) == "Fahrzeug") then 

	{
																																										
	for [{_j=0}, {_j < (count INV_VehicleArray)}, {_j=_j+1}] do 

		{
																					
		if (!(isNull(INV_VehicleArray select _j))) then 

			{																																										

			_vehicle = (INV_VehicleArray select _j);																																

			if ((typeOf _vehicle) == _item) then 

				{
																														
				INV_ActiveSellShopArray = INV_ActiveSellShopArray + [ [_item, _preisOhneTax, _preis, _sellnumber] ];																																										
				_index = lbAdd [101, format["%1 ($%2, %3)", _vehicle, (_preis call ISSE_str_IntToStr), _name] ];															
				lbSetData [101, _index, format["%1", _vehicle] ];	

				};		

			};	
		
		};	

	};

};

//---------------------------------SETDATA----------------------------------------

if(typename _caller != "OBJECT")then{buttonSetAction [3,  "[""itemkauf"",    lbCurSel 1,   ctrlText 2,   lbData [101, (lbCurSel 1)  ], INV_ActiveBuyShopArray select (lbCurSel 1)]    execVM ""shoptransactions.sqf"";"]};

buttonSetAction [103, "[""itemverkauf"", lbCurSel 101, ctrlText 102, lbData [101, (lbCurSel 101)], INV_ActiveSellShopArray select (lbCurSel 101)] execVM ""shoptransactions.sqf"";"];

ctrlSetText [101,format [localize "STRS_inv_shopdialog_itemshop", ('geld' call INV_GetItemAmount)]];

//--------------------------------REFRESH-----------------------------------------

while {ctrlVisible 1015} do 

{
																								
_cursel = (lbCurSel 1);												

if (_cursel >= 0 and typename _caller != "OBJECT") then 

	{
																																						
	_item        = (INV_ActiveBuyShopArray select (lbCurSel 1)) select 0; 														
	_preis       = (INV_ActiveBuyShopArray select (lbCurSel 1)) select 2; 								
	_infos       = _item call INV_getitemArray;																										
	_slider      = ctrlText 2;                     
	if (!(_slider call ISSE_str_isInteger)) then {_slider = "0";};								
	_slider      = _slider call ISSE_str_StrToInt;  
	if (_slider < 0) then {_slider = 0;};																										
	_geldanzeige = (_slider*_preis);																														
	if (_geldanzeige > 999999) then {_geldanzeige = " > 999999";};																				
	
	if (_infos call INV_getitemType == "item") then 

		{
		
		ctrlSetText [3, format ["Buy ($%1, %2kg)", _geldanzeige, (_slider*(_infos call INV_getitemTypeKg))]];	
		
		} 
		else 
		{									

		ctrlSetText [3, format ["Buy ($%1)", _geldanzeige]];
		
		};															

	} 	
	else 
	{
																								
	ctrlSetText [3,  "/"];	

	};
																			
_cursel = (lbCurSel 101);														

if (_cursel >= 0) then 

	{
																																																						
	_item        = (INV_ActiveSellShopArray select (lbCurSel 101)) select 0; 								
	_preis       = (INV_ActiveSellShopArray select (lbCurSel 101)) select 2; 																		
	_infos       = _item call INV_getitemArray;																								
	_slider      = ctrlText 102;                   

	if (!(_slider call ISSE_str_isInteger)) then {_slider = "0";};																						
	_slider      = _slider call ISSE_str_StrToInt;  

	if (_slider < 0) then {_slider = 0;};																										
	_geldanzeige = ((_slider*_preis) call ISSE_str_IntToStr);																								

	if (_infos call INV_getitemType == "item") then 
	
		{
						
		ctrlSetText [103, format ["Sell ($%1, %2kg)", _geldanzeige, (_slider*(_infos call INV_getitemTypeKg))]];																										
		
		} 
		else 
		{
																																													
		ctrlSetText [103, format ["Sell ($%1)", _geldanzeige]];
		
		};							

	} 
	else 
	{

	ctrlSetText [103,  "/"];

	};

_geld = ('geld' call INV_GetItemAmount);																								
CtrlSettext [100,  format[localize "STRS_inv_shopdialog_geld", _geld]];			
sleep 0.1;								
if (INV_ShopDialoge > 1) exitWith {};

};

INV_ShopDialoge = INV_ShopDialoge - 1;

