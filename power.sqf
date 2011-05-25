_types = ["Land_PowLines_WoodL", "Land_PowLines_ConcL", "Land_lampa_ind_zebr", "Land_lampa_sidl_3", "Land_lampa_vysoka", "Land_lampa_ind", "Land_lampa_ind_b", "Land_lampa_sidl"];

while {true} do

{

waituntil{!alive power1 and !alive power2};

hint "The power plant has been compromised!";

for [{_i=0},{_i < (count _types)},{_i=_i+1}] do

{

_lamps = getmarkerpos "powercoverage" nearObjects [_types select _i, 4000];
Sleep 1;
{_x switchLight "OFF";} forEach _lamps;

};

waituntil{alive power1 and alive power2};

hint "The power plant has been repaired!";

for [{_i=0},{_i < (count _types)},{_i=_i+1}] do

{

_lamps = getmarkerpos "powercoverage" nearObjects [_types select _i, 4000];
Sleep 1;
{_x switchLight "ON";} forEach _lamps;

};

};