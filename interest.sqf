BANK_zinsen = 

{

if (Kontostand > 0) then {
Kontostand = round(Kontostand+(Kontostand/100*zinsen_prozent));
player groupChat format [localize "STRS_bank_zinsen", (Kontostand call ISSE_str_IntToStr), (zinsen_prozent call ISSE_str_IntToStr)];
};

};

if (isServer) then {while {true} do {sleep zinsen_dauer;"[] spawn BANK_zinsen;" call broadcast;};};
