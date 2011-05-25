_obj 	= _this;
_list	= _obj getvariable "druglist";

if(isnil "_list")exitwith{player groupchat "No drugs found"};
if(count _list == 0)exitwith{player groupchat "No drugs found"};

for [{_i=0}, {_i < (count _list)}, {_i=_i+1}] do 

{

_arr	= _list select _i;
_civ 	= _arr select 0;
_num	= _arr select 1;
_cost	= _arr select 2;

player groupchat format["This civilian has $%2 worth of drugs! Interrogation reveals that they were sold by %1.", name _civ, (_num*_cost)/2];
format['if(!("trafficking drugs" in %1_reason))then{%1_reason = %1_reason + ["trafficking drugs"]}; %1_wanted = 1; kopfgeld_%1 = kopfgeld_%1 + (%2/2);titletext["%3 is wanted for trafficking $%2 worth of drugs!", "PLAIN"]', _civ, (_num*_cost)/2, name _civ] call broadcast;


};

_obj setvariable["druglist", [], true];
	