
private ["_finish","_ctime","_time","_testc","_art"];
_art  = ((_this select 3) select 0);

if(_art == "test") then 
{
 
if (!("carL" call INV_HasLicense)) exitWith {player groupChat "You must have your Learners driver license"};
ctactive = true; publicvariable "ctactive";
_time = 1;
player groupchat "Get ready to take your test.";
cutText ["", "BLACK OUT",1];
	sleep 1;
    	player setpos getMarkerpos "drivetest";
    	TitleText ["Driving Test Follow the highway to the TCG Airshop marked on the map in 90 seconds","Plain"];
    	sleep 2;
    	cutText ["", "BLACK IN",1];
    	_testc = "Skoda" createVehicle getMarkerPos "testcar";
	_testc setdir 270;
	sleep 4;
    	player groupchat "Get in the car and follow the road to the TCG Airshop, finish in under 90s to pass!";
_ctime = 90;
_finish = 0;

while {(_ctime > 0) and (_finish == 0)}  do

	{
	_ctime = _ctime - 1;hintsilent format["Time left: %1s", _ctime];
    	hint format["Time taken: %1s", _ctime];
	ctactive=false; publicvariable "ctactive";     
	sleep 1;	
		if((player distance getmarkerpos "drivetestfin" <= 30) and (_ctime > 0)) then
        
			{

   			cutText ["", "BLACK OUT",1];
    			player setpos getMarkerpos "drivetestfin1";
    			TitleText ["You passed the drivers test","Plain"];
    			sleep 2;
    			cutText ["", "BLACK IN",1];
   			deleteVehicle _testc;
    			player groupchat format["congratulations %1 you passed the test and have received your drivers license!", name player];
    			INV_LizenzOwner = INV_LizenzOwner + ["car"];
    			INV_LizenzOwner = INV_LizenzOwner - ["carL"];
    			["INV_LizenzOwner", INV_LizenzOwner] spawn ClientSaveVar;
			_finish = 1;
						
    
			};
		if(_ctime <= 0)then
    			{

        		cutText ["", "BLACK OUT",1];
       			player setpos getMarkerpos "drivetestfin1";
        		TitleText ["You did not pass the driving test","Plain"];
        		sleep 2;
        		cutText ["", "BLACK IN",1];
        		deleteVehicle _testc;
        		player groupchat format["sorry %1 you failed the test! better luck next time.", name player];
			_finish = 1;

			};

		};

	};


};