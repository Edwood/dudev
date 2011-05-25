_vcl = _this select 0;
_art = _this select 1;
private ["_radio", "_op", "_volin", "_volout"];
_radio = false;
_op = 0;
_volin = musicVolume;
_volout = _volin*3/5;

if(_art == "tune")then
	{
   
      private["_ok", "_displaym", "_list", "_cfg", "_count", "_i"];
	disableSerialization;
	_ok = createDialog "DlgMandoMusic";
	Sleep 0.1;
	_displaym = findDisplay 100;
	_list = _displaym displayCtrl 102;
	_cfg =(configFile >> "CfgMusic");
	//_count = count _cfg;
	_count = 54;
	for [{_i = 1},{_i < _count},{_i = _i + 1}] do
		{
   		_cfgi = _cfg select _i;
  		_index = _list lbAdd (getText (_cfgi >> "Name"));
   		_list lbSetData [_index, format["%1", configName _cfgi]];
		};
	(_displaym displayCtrl 103) ctrlSetTooltip "Copy/Paste this to use with playMusic command";
	
	if (vehicle player distance _vcl < 10) then
  		{
     		if (vehicle player == _vcl) then
     			{
        		0.1 fadeMusic _volin;
      		}
      	else
      		{
         		0.1 fadeMusic _volout;
      		};
   		}
   	else
   		{
      	0.1 fadeMusic (10/(vehicle player distance _vcl)*_volout);
   		};
   };

