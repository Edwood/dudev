_art = _this select 0;

if (_art == "use") then 

{

_item   = _this select 1;
_anzahl = _this select 2;

player groupChat "This item cannot be used";

};