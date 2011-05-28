if(debug)then{['geld', 2500000] call INV_addinventoryitem};

StartGeld                = 25000; 
maxcopbonus		 = 50000;
maxcivbonus 	 	 = 33000;
robb_timeSperre          = 1200;   
local_useBankPossible    = true;  
maxinsafe                = 666000;
BankRaubKontoverlust     = 12500;  
ShopRaubKontovershop     = 0;
ShopRaubProzentVershop   = 0;
rblock			 = 0;
stolencash		 = 0;
Maxbankrobpercentlost    = 0.1; 
bank_steuer              = 5;     
zinsen_prozent           = 5;     
zinsen_dauer             = 1200;   
robenable              	 = true;     
Kontostand               = StartGeld; 
shopflagarray            = [shop1,shop2,shop3,shop4,shop5,shop6,shop7,shop8,shop9,shop10,shop11,shop12,shop13,shop14,shop15];
bankflagarray            = [mainbank, copbank, atm1, atm2, atm3, atm4, atm5 ,atm6, atm7, atm8, atm9, atm10, atm11, atm12, atm13, atm14, atm15];
speedcamarray            = [speed1,speed2,speed3,speed4,speed5,speed6,speed7,speed8,speed9,speed10];
drugsellarray		 = [mdrugsell,cdrugsell,ldrugsell,hdrugsell];
TankstellenArray         = 

[
(nearestobject[getpos fuelshop1,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop2,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop3,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop4,"Land_A_FuelStation_Feed"]),
(nearestobject[getpos fuelshop5,"Land_A_FuelStation_Feed"])
];