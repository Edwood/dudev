_killer = _this select 0;
_owner  = _this select 1;

if(_killer == _owner)exitwith{};
if(_killer in coparray)exitwith{};

(format ['player globalchat "%1 killed %2s worker!";["KilledWorker", %1, "%2"] spawn Isse_AddCrimeLogEntry; kopfgeld_%1 = kopfgeld_%1 + 10000; %1_wanted = 1;', _killer, _owner]) call broadcast;
