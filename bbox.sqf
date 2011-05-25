// ****************************************************************
// Script file for ArmA II
// Creates roadcones at the extremes of the object
// Created by: rundll.exe
// Arguments: [object]
// Returns: nothing
// ****************************************************************

_v = _this select 0;
_factor = 1.7; // boundingbox is crapy.. lol..  Scale here.
_bbox = boundingbox _v;
//An array with the extreme points of the model. Format: [[minX, minY, minZ], [maxX, maxY, maxZ]] 
_min = _bbox select 0;
_max = _bbox select 1;
_minX = (_min select 0)/_factor;
_minY = (_min select 1)/_factor;
_minZ = (_min select 2)/_factor;
_maxX = (_max select 0)/_factor;
_maxY = (_max select 1)/_factor;
_maxZ = (_max select 2)/_factor;

_axisclass = "RoadCone";
_lft = _axisclass createvehicle (position _v);
_rft = _axisclass createvehicle (position _v);
_lbt = _axisclass createvehicle (position _v);
_rbt = _axisclass createvehicle (position _v);

_lft attachto [_v,[_minX, _maxY, _maxZ]]; 
_rft attachto [_v,[_maxX, _maxY, _maxZ]]; 
_lbt attachto [_v,[_minX, _minY, _maxZ]]; 
_rbt attachto [_v,[_maxX, _minY, _maxZ]]; 
