if(processscriptrunning == 1) exitwith { player groupchat "We're Working as fast as we can. Please wait till we are done before giving us another task";};
 spamcount = spamcount + 1;
 if (spamcount == 5) then {player globalChat "I have spammed the Process script 5 times, ignoring the text that tells me I cannot run this script multiple times"}; 
 if (spamcount == 10) then {player globalChat "I have spammed the Process script 10 times, ignoring the text that tells me I cannot run this script multiple times"};

 processscriptrunning = 1;

if(iscop)exitwith{player groupchat "only civilians can do this!"};

_this 	 = _this select 3;
_item1	 = _this select 0;
_item2	 = _this select 1;
_req	 = _this select 2;
_license = _this select 3;

_nitem1  = _item1 call INV_GetItemAmount;
_name1   = _item1 call INV_getitemName;
_name2   = _item2 call INV_getitemName;

if(!(_license call INV_HasLicense))exitwith{player groupchat "you do not have the license to do this"};

_multi = floor(_nitem1/_req);
_total = _req*_multi;

[_item1, -(_total)] call INV_AddInventoryItem;
[_item2, _multi, "INV_InventarArray"] call INV_CreateItem;

player groupchat format["%1 %2 was processed into %3 %4!", _total, _name1, _multi, _name2];

 processscriptrunning = 0; // Tweaked by Radioman
