sleep 6;

_interval = _this select 0; //seconds
_skipper  = _this select 1; //hours

waituntil{round(time mod _interval) == 0};

_intervalsPassed = time / _interval;
skipTime (_skipper * _intervalsPassed);

while {true} do 

{

sleep _interval;
skipTime _skipper;

}; 