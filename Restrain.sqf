_civ = civmenuciv;

//=====================================UNRESTRAIN=========================================

if(animationstate _civ == "civillying01") exitwith

{

(format ["%1 switchmove ""%2"";", _civ, "amovppnemstpsnonwnondnon"]) call broadcast;
player groupchat "You released the civilian!";

};

//==================================RESTRAIN=========================================

if(vehicle _civ != _civ)exitwith{player groupchat "the civ is in a vehicle!"};

if (!(_civ call ISSE_IsVictim)) exitwith {player groupchat localize "STRS_inventory_checknohands"}; 

(format ["%1 switchmove ""%2"";", _civ, "civillying01"]) call broadcast;

(format['server globalchat "%3 was restrained by %2";if (rolestring == "%1") then {execVM "Unrestrain.sqf";}', _civ, name player, name _civ]) call broadcast;

