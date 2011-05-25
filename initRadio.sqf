/*
	Car Radio - Example init.sqf

	NOTE:
	All of the following commands are fully optional!
	If you don't want to use one or more of these features, you don't have to add
	the variable(s) to your mission.

	See Car Radio Readme.txt for further details!
*/

/**********************************************************************************************

	Add your own music here!
	Format: [ [<ClassName | String>, <Title | String>, <Length (in seconds) | Number>] ]

***********************************************************************************************/

CLAY_RadioAddMusic = [["ACDC_Anything_Goes", "ACDC - Anything Goes", 184],["ACDC_Big_Balls", "ACDC - Big balls", 184],
["ACDC_Big_Jack", "ACDC - Big Jack", 184],["ACDC_Black_Ice", "ACDC - black ice", 184],["ACDC_Decibel", "ACDC - Decibel", 184],
["ACDC_Dirty_Deeds_Done_Dirt_Cheap", "ACDC - Dirty Deeds Done Dirt Cheap", 184],["ACDC_Down_Payment_Blues", "ACDC - Down payment blues", 184],
["ACDC_Gimme_A_Bullet", "ACDC - Gimme a bullet", 184],["ACDC_Gone_Shooting", "ACDC - Gone Shooting", 184],
["ACDC_Hell_Aint_a_Bad_Place_To_Be", "ACDC - Hell Aint a Bad Place To Be", 184],["ACDC_Hells_Bells", "ACDC - Hells Bells", 184],
["ACDC_Jailbreak", "ACDC - Jailbreak", 184],["ACDC_Kicked_In_The_Teeth", "ACDC - Kicked in The Teeth", 184],["ACDC_Money_Made", "ACDC - Money Made", 184],
["ACDC_Problem_Child", "ACDC - Problem Child", 184],["ACDC_Riff_Raff", "ACDC - Riff Raff", 184],["ACDC_Rock_N_Roll_Damnation", "ACDC - Rock N Roll Damnation", 184],
["ACDC_Rock_N_Roll_Dream", "ACDC - Rock N Roll Dream", 184],["ACDC_Rock_N_Roll_Train", "ACDC - Rock N Roll Train", 184],["ACDC_Rocking_All_The_Way", "ACDC - Rocking All The Way", 184],
["ACDC_She_Likes_Rock_N_Roll", "ACDC - She Likes Rock N Roll", 184],["ACDC_Shoot_To_Thrill", "ACDC - Shoot To Thrill", 184],["ACDC_Sin_city", "ACDC - Sin city", 184],
["ACDC_Skies_On_Fire", "ACDC - Skies On Fire", 184],["ACDC_Smash_N_Grab", "ACDC - Smash N Grab", 184],["ACDC_Spoilin_For_A_Fight", "ACDC - Spoilin For A Fight", 184],
["ACDC_Squealer", "ACDC - Squealer", 184],["ACDC_Stormy_May_Day", "ACDC - ACDC Stormy May Day", 184],["ACDC_Up_To_My_Neck_In_You", "ACDC - Up To My Neck In You", 184],
["ACDC_War_Machine", "ACDC - ACDC War Machine", 184],["ACDC_Wheels", "ACDC - Wheels", 184],["ACDC_Back_In_Black", "ACDC - Back In Black", 184],
["ACDC_Dog_Eat_Dog", "ACDC - Dog Eat Dog", 184],["ACDC_Whats_Next_To_The_Moon", "ACDC - Whats Next To The Moon", 184],["ACDC_You_Shook_Me_All_Night_Long", "ACDC - You Shook Me All Night Long", 184],
["Nickelback_Animals", "Nickelback - Animals", 184],["Nickelback_Far_Away", "Nickelback - Far Away", 184],["Nickelback_Follow_You_Home", "Nickelback - Follow You Home", 184],
["Nickelback_For_All_the_Right_Reasons", "Nickelback - For All the Right Reasons", 184],["Nickelback_If_Everyone_Cared", "Nickelback - If Everyone Cared", 184],["Nickelback_Next_Contestant", "Nickelback - Next Contestant", 184],
["Nickelback_Photograph", "Nickelback - Photograph", 184],["Nickelback_Rockstar", "Nickelback - Rockstar", 184],["Nickelback_Savin_Me", "Nickelback - Savin Me", 184],["Nickelback_Side_of_a_Bullet", "Nickelback - Side of a Bullet", 184],
["Nickelback_Someone_That_Your_With", "Nickelback - Someone That Your With", 184],["Afroman_Because_I_Got_High", "Afroman - Because I Got High", 184],["Bannana_Phone", "Bannana Phone - Bannana Phone", 184],["Cant_Touch_This", "Cant Touch This - Cant Touch This", 184],
["Ironweed_Get_a_little_dirty", "Ironweed - Get a little dirty", 184],["GNR_Paradise_City", "GNR - Paradise City", 184],["GreenDay_I_Fought_the_Law", "GreenDay - I Fought the Law", 184]];






/**********************************************************************************************

	Vehicles (other than class "Car") for which the radio IS available
	(Example: Radio will be available in UH1, M1A1, LAV-25 and A10)

***********************************************************************************************/

CLAY_RadioAddVehicles = ["UH1Y", "M1A1", "LAV25", "A10"];





/**********************************************************************************************

	Vehicles (class "Car" only) for which the radio IS NOT available
	(Example: Radio will not be available in Hatchback, HMMWV and HMMWV(M240))

***********************************************************************************************/

CLAY_RadioNoVehicles = ["VWGolf", "HMMWV", "HMMWV_Armored"];




/**********************************************************************************************

	Show Tooltips? (true / false)

***********************************************************************************************/

CLAY_RadioShowTooltips = true;



