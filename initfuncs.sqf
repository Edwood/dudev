if (isNil "debugarray") then {debugarray = []};
if (isNil "debug") then {debug = false};

_h = []	execVM "savevarfuncs.sqf";
waitUntil{scriptDone  _h};

_h = []	execVM "customfunctions.sqf";
waitUntil{scriptDone  _h};

_h = []	execVM "strfuncs.sqf";
waitUntil{scriptDone  _h};

_h = []	execVM "1007210.sqf";
waitUntil{scriptDone  _h};

_h = [] execVM "4422894.sqf";
waitUntil{scriptDone  _h};

_h = [_this select 0, _this select 1] execVM "broadcast.sqf";
waitUntil{scriptDone  _h};

