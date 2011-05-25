"dynamicBlur" ppEffectEnable true;

//{_x playmove "ActsPercMstpSrasWrflDnon_sceneLopotevBandCaptured_Nameless";} foreach coparray;

While{true}do

{

"dynamicBlur" ppEffectAdjust [0];  
"dynamicBlur" ppEffectCommit 10; 

//waituntil{(("gasmask" call INV_GetItemAmount) == 0) and ((nearestObject [getpos player, "SmokeShellGreen"]) distance player < 7) and (getpos (nearestObject [getpos player, "SmokeShellGreen"]) select 2 < 0.1)};

"dynamicBlur" ppEffectEnable true;
//"dynamicBlur" ppEffectAdjust [20];   
"dynamicBlur" ppEffectCommit 0;


sleep 5;

};
//AmovPercMstpSnonWnonDnon_idle68boxing
//ActsPercMstpSrasWrflDnon_sceneLopotevBandCaptured_Nameless