_pos 	= _this select 0;
_radius = _this select 1;
_objs   = (nearestObjects [_pos,[],_radius]) - (_pos nearObjects _radius);

sleep 1.5;
{deletecollection _x} forEach _objs;