robpoolsafe1 		 = 0; 
robpoolsafe2 		 = 0;
robpoolsafe3 		 = 0;

if(debug)then

{

robpoolsafe1 		 = 80000; 
robpoolsafe2 		 = 80000;
robpoolsafe3 		 = 80000;

};

while{true} do

{

if(robpoolsafe1 < maxinsafe)then{robpoolsafe1 = robpoolsafe1 + round random 2000; publicvariable "robpoolsafe1"};
if(robpoolsafe2 < maxinsafe)then{robpoolsafe2 = robpoolsafe2 + round random 2000; publicvariable "robpoolsafe2"};
if(robpoolsafe3 < maxinsafe)then{robpoolsafe3 = robpoolsafe3 + round random 2000; publicvariable "robpoolsafe3"};

sleep 100;

};
