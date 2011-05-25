while {isServer} do 

{

if (random 100 > 40) then 

	{

	ENV_wetterfog      = 0;																
	ENV_wetterovercast  = 0;

	}
	else 
	{

	ENV_wetterfog      = random 0.7;																														
	ENV_wetterovercast = random 0.99;												

	};
																				
ENV_dauer_wetter = (random (30 * 30))+10;  									
ENV_wetterrain   = round(random 1);
_sleeptime	 = 30;																																																		  																															
			
ENV_dauer_wetter setovercast ENV_wetterovercast;												
ENV_dauer_wetter setfog ENV_wetterfog;	
																											
_OvercastProZeit = ( (-1*(overcast - ENV_wetterovercast)) / ENV_dauer_wetter) * _sleeptime;				
_FogProZeit = ( (-1*(fog - ENV_wetterfog)) / ENV_dauer_wetter) * _sleeptime;

_x = 0;	

while {_x < ENV_dauer_wetter} do 

	{
																												
	0 setovercast (overcast + _OvercastProZeit);																								
	0 setfog (fog + _FogProZeit);				
	format["0 setovercast %1; 0 setfog %2; if ((%1 > 0.8) and (%3 == 1)) then {%4 setrain 1;} else {%4 setrain 0;};", overcast, fog, ENV_wetterrain, _sleeptime] call broadcast;																												
	_x = _x + _sleeptime;																						
	sleep _sleeptime;										

	};										
	
};
