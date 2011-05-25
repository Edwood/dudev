// mando_checkradio.sqf
// By Mandoble May 2007
//Edited by Jan Templar for Aussie Life
// add an action to tune up musics and controls the volume based on distance and in/out vehicle

private ["_radio", "_op", "_volin", "_volout", "_vcl"];
_radio = false;
_op = 0;
_volin = musicVolume;
_volout = _volin*3/5;
_vcl = (nearestobjects [getpos player, ["Air", "Ship", "LandVehicle"], 3] select 0);
while {true} do
{
   if (!_radio ) then
   {
      _op = player addAction ["Tune music", "showplayer.sqf"];
      _radio = true;
   };   
   if (_radio) then
   {
      player removeAction _op;
      _radio = false;
   };

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
   Sleep 0.1;
};