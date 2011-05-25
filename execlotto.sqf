_handler = [] execVM "lottoarrays.sqf";	
waitUntil {scriptDone _handler};
if ( (!isServer) or (not(dedicatedServer)) ) then {_handler = [] execVM "lottoactions.sqf";};
