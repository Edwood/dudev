_house = _this select 3;
_owner = player;

if(houselock)exitwith{_house animate ["dvere1", 0];player groupchat "house unlocked"; houselock=false;};

if(!houselock)then

{

player groupchat "house locked";
houselock=true;

while {houselock and _house in ownedhouses} do

	{

	_house animate ["dvere1", 1];
	sleep 0.01;

		{

		if(_x distance _house < 10 and breakdown)exitwith{houselock=false};

		} foreach coparray;

	};

'format["if(breakdown)then{hint ""The police are breaking into %1s house""; breakdown=false};", name _owner]' call ISSE_pub_execPstr; 

};
	