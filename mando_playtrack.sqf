// mando_playtrack.sqf
// By Mandoble May 2007
// Handler of onLBSelChanged event configured in description.ext for the music list

disableSerialization;
_control = _this select 0;
_index = _this select 1;
_displaym = findDisplay 100;
(_displaym displayCtrl 103) ctrlSetText (_control lbData _index);
0 fadeMusic 1;
playMusic (_control lbData _index);
