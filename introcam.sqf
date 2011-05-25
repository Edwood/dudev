_label = _this select 0;

if (_label == "texte") then 

{

sleep 5;
playmusic "GALD";
disableUserInput false;
titletext [localize "STRS_anfang_01","plain"];
sleep 4;
titletext [localize "STRS_anfang_02","plain"];
sleep 4;
titletext [localize "STRS_anfang_03","plain"];
sleep 4;			
titletext [format [localize "STRS_anfang_04",version],"plain"];
sleep 10;
3 fademusic 0;

};

if (_label == "kamera") then 

{

titlecut [" ","Black out",0];										
titletext [localize "STRS_anfang_laden","plain"] ;				
_camera = "camera" camcreate [(getmarkerpos "hospitaltent" select 0) - 25,(getmarkerpos "hospitaltent" select 1) - 100,22];												
_camera cameraeffect ["internal", "back"];						
sleep 5;														
titlecut [" ","Black in", 20];

if (iscop) then 

{

titletext [localize "STRS_anfang_05_cop","plain"];
_camera camPrepareTarget getpos copbase1;																						_camera camPreparePos [(getpos copbase1 select 0),(getpos copbase1 select 1),(getpos copbase1 select 2) + 50];																				
_camera camPrepareFOV 0.559;
_camera camCommitPrepared 8;
WaitUntil {camCommitted _camera};
titletext [localize "STRS_anfang_cop_loadout","plain"];
_camera camPrepareTarget [(getpos copbase1 select 0) - 100, (getpos copbase1 select 1), (getpos copbase1 select 2) - 100];																						_camera camPreparePos [(getpos copbase1 select 0),(getpos copbase1 select 1),(getpos copbase1 select 2) + 50];																				
_camera camPrepareFOV 1.499;
_camera camCommitPrepared 5;
WaitUntil {camCommitted _camera};
_camera camPrepareTarget [(getpos copbase1 select 0) - 200, (getpos copbase1 select 1), (getpos copbase1 select 2) - 200];																						_camera camPreparePos [(getpos copbase1 select 0),(getpos copbase1 select 1),(getpos copbase1 select 2) + 25];																				
_camera camPrepareFOV 1.600;																							
_camera camCommitPrepared 5;

}else{

_camera camPrepareTarget _targetciv;
_camera camPreparePos _posciv;	
_camera camPrepareFOV _fovciv;
_camera camCommitPrepared 5;
											
};

WaitUntil {camCommitted _camera};
_rolepos = position player;
_roledir = getdir player;
_pos     = [(_rolepos select 0) + ((sin _roledir) * 100), (_rolepos select 1) + ((cos _roledir) * 100),(_rolepos select 2)];
_camera camSetTarget _pos;
_camera camsetpos [(getpos player select 0), (getpos player select 1), 1.5];
_camera camSetFOV 0.700;
_camera camCommit 3;
WaitUntil {camCommitted _camera};
titletext [localize "STRS_anfang_06","plain"];
_camera cameraeffect ["terminate","back"];
camDestroy _camera;

};