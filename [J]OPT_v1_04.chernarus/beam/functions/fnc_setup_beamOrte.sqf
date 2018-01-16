/**
* Author: Lord
* setup locations and heavy vehicle classnames
*
* Arguments:
* None
*
* Return Value:
* None
*
* Example:
* [] call fnc_setup_beamOrte.sqf;
*
*/
#include "script_component.hpp"
// Position=[0, 0, 0]
// Name = "ABC"
// Stufe = 0-1-2 // 0 Nicht Wählbar,  1 Inf,  2 inf + leichte Fahrzeuge,  3 inf + Schwere Fahrzeuge
//
// Bsp [[Position], Name, Stufe], 


//West
GVAR(locations_west) =
[
//	[[11989.029, 10.129433, 3529.2573], "Kamyshovo-Zentrum", 3], 
//	[[12465.595, 6.8708162, 3336.8975], "Kamyshovo-Insel", 3], 
//	[[13360.739, 15.423439, 2758.8049], "Kamyshovo-Skalisty Dorf", 3], 

//	[[11209.36, 251.1118, 4662.9258], "Staroye-Rog-Burg", 3], 
//	[[10054.29, 249.34822, 5446.3052], "Staroye-Zentrum", 3], 
	[[8302.332, 293.41986, 5908.5493], "Staroye-Ruinenstadt Kumyrna", 1], 

//	[[8501.1631, 363.09842, 6581.9077], "Guglovo-Zentrum", 3], 
//	[[7744.2329, 315.65472, 6874.2544], "Guglovo-Farm", 3], 
//	[[7019.8843, 297.86713, 7630.8462], "Guglovo-Novi Sobor", 3], 

//	[[6184.2197, 305.27301, 7791.6885], "Stary Sobor", 3], 
//	[[5396.8032, 335.54684, 8694.8828], "Stary Sobor-Kabanino", 3], 

//	[[2803.2329, 276.33618, 9802.4512], "Lopatino", 3], 
//	[[2152.7996,263.89948,10882.993], "Lopatino-Militär", 3], 

//	[[3940.3054, 330.64813, 8846.7256], "Vybor", 3], 
//	[[4268.9116, 315.39127, 8075.4321], "Vybor-Militär", 3], 

	[[6479.1089, 319.7092, 6101.188], "Vyshnoye-Zentrum", 2], 
//	[[6612.2114, 379.93857, 5560.7109], "Vyshnoye-Zub", 3], 
	[[7569.0503, 213.82239, 5037.8604], "Vyshnoye-Mogilevka", 3] 

//	[[9178.7568, 222.90584, 3745.874], "Pusta-Zentrum", 3], 
//	[[10343.482, 16.177559, 2607.2998], "Pusta-Kraftwerk", 3], 
//	[[10354.342, 12.808233, 2343.188], "Pusta-Elektro-Zentrum", 3], 

//	[[10283.505, 11.447056, 1960.7837], "Elektrozavodsk-Industrie", 3], 
//	[[8616.6045, 9.9415283, 2436.3369], "Elektrozavodsk-Vorort", 3], 
//	[[8161.9985, 14.426171, 3333.8484], "Elektrozavodsk-Prigorodky", 3], 

//	[[4916.1128, 322.12228, 5707.3896], "Pulkovo-Zentrum", 3], 
//	[[5797.9277, 132.39203, 4831.9346], "Pulkovo-Nadezhdino", 3], 
//	[[6853.4727,335.94174,4581.9102], "Pulkovo-Militär", 3], 

//	[[4807.7271, 268.57898, 6740.1064], "Rogovo-Zentrum", 3], 
//	[[4437.2344, 307.31317, 6331.7627], "Rogovo-Pogorevka", 3], 
//	[[3031.1492, 302.97751, 8070.5776], "Rogovo-Pustoshka", 3], 

//	[[3615.5242, 356.65347, 6311.3462], "Pass Sosnovy-Green Mountain", 3], 
//	[[2916.1772, 371.79553, 6677.3145], "Pass Sosnovy-Farm", 3], 
//	[[2092.9773, 277.4227, 7377.126], "Pass Sosnovy-Myshkino", 3], 

//	[[2662.093, 206.0836, 5320.8774], "Zelenogorsk-Zentrum", 3], 
//	[[4296.9399, 236.64867, 4697.9004], "Zelenogorsk-Kozlovka", 3], 
//	[[3372.7732, 248.37906, 4853.2368], "Zelenogorsk-Drozhino", 3], 

//	[[7147.27, 9.9895916, 2609.0459], "Chernogorsk-Zentrum", 3], 
//	[[6272.6069, 76.666931, 3729.7595], "Chernogorsk-Farm", 3], 
//	[[5879.0449, 71.153656, 3868.5938], "Chernogorsk-Vorort", 3]
];

//East
GVAR(locations_east) =
[
//	[[12788.279, 9.9679699, 9531.6094], "Berezino-Sägewerk", 3], 
//	[[12383.195, 16.064194, 9438.915], "Berezino-Vorort", 3], 
//	[[12177.619, 16.071527, 9803.8301], "Berezino-Militär", 3], 

//	[[10532.233, 287.76843, 12226.398], "Black Mountain-Burg", 3], 
//	[[10007.012, 267.2308, 11570.498], "Black Mountain-Ruine", 3], 
//	[[10709.046, 153.36369, 10842.336], "Black Mountain-Tanke", 3], 

//	[[12968.386, 9.8480625, 8097.8721], "Nizhnoye-Farm", 3], 
//	[[12235.104, 57.20871, 8510.1689], "Nizhnoye-Vorort", 3], 
//	[[11951.082, 74.279335, 8831.0879], "Nizhnoye-Müllhalde", 3], 

//	[[10260.692, 146.3904, 9782.9502], "Dubrovka-Vorort", 3], 
//	[[9909.4971, 168.31728, 10448.764], "Dubrovka-Militär", 3], 
//	[[10509.356, 122.56812, 9783.4551], "Dubrovka-Zentrum", 3], 

//	[[8704.6396, 219.46088, 11605.145], "Gvozdno-Farm", 3], 
//	[[8510.7109, 185.3669, 11891.032], "Gvozdno-Zentrum", 3], 
//	[[9189.6787, 267.48444, 11054.729], "Gvozdno-Vorort", 3], 

//	[[13298.943, 9.2443905, 6396.6406], "Solnichniy-Zentrum", 3], 
//	[[13066.41, 9.9139128, 6255.4561], "Solnichniy-Zementwerk", 3], 
//	[[12122.751, 49.1856, 6327.6328], "Solnichniy-Vorort", 3], 

	[[10667.194, 222.78603, 8204.21], "Polana-Zentrum", 3], 
//	[[11360.828, 229.46248, 7498.981], "Polana-Fabrik", 3], 
//	[[12032.386, 199.59885, 7282.8027], "Polana-Vorort", 3], 

	[[9554.4932, 293.54071, 8753.8428], "Gorka-Zentrum", 2], 
//	[[9831.2305, 287.26248, 8704.7109], "Gorka-Farm", 3], 
//	[[8573.1377, 378.91171, 9618.3213], "Gorka-Militär Nachschub", 3], 

//	[[7789.5605, 344.76285, 10291.846], "Devils Castle-Ausgrabungsstelle", 3], 
//	[[7320.5308, 297.89755, 11015.245], "Devils Castle-Absturzstelle", 3], 
//	[[6877.145, 392.68875, 11580.139], "Devils Castle-Burg", 3], 

//	[[12782.458, 170.81409, 4472.9751], "Tulga-Zentrum", 3], 
//	[[12301.782,72.0765,5189.1621], "Tulga-Holzfäller-Lager", 3], 
//	[[11239.631, 266.51291, 5518.7339], "Tulga-Vorort", 3], 

//	[[11121.455, 88.226479, 6611.583], "Shakovka-Vorort", 3], 
//	[[9687.9326, 223.50797, 6471.4492], "Shakovka-Zentrum", 3], 
	[[8757.7051, 321.04938, 7773.2549], "Shakovka-Militär", 1] 

//	[[7190.7236, 381.09818, 8952.0078], "Grishino-Farm", 3], 
//	[[5959.6548, 273.3353, 10430.288], "Grishino-Zentrum", 3], 
//	[[5522.1758, 275.22858, 11094.381], "Grishino-Militär", 3], 

//	[[4896.9888, 194.49538, 12497.397], "Petrovka-Zentrum", 3], 
//	[[4249.6821, 373.35806, 11537.811], "Petrovka-Militär Forschungslabor", 3], 
//	[[1932.5959, 245.97969, 12375.8], "Petrovka-Sägewerk", 3], 

//	[[4663.7095, 342.97681, 9776.4922], "Flughafen-Stützpunkt", 3], 
//	[[4663.3428, 342.97681, 10302.391], "Flughafen-Tower", 3], 
//	[[4273.0098, 342.97681, 10904.86], "Flughafen-Militär", 3]
];


GVAR(heavy_vehicles) = [
	"OPT_O_T_APC_Wheeled_02_rcws_ghex_F", 			// MSE-3 Marid
	"OPT_O_APC_Wheeled_03_cannon_light_F", 			// AFV-4 Gorgon (Leicht)
	"OPT_O_APC_Wheeled_03_cannon_F", 				// AFV-4 Gorgon
	"OPT_O_T_APC_Tracked_02_AA_ghex_F", 			    // ZSU-39 Tigris
	"OPT_O_T_APC_Tracked_02_cannon_ghex_light_F", 	// BTR-K Kamysh
	"OPT_O_T_APC_Tracked_02_cannon_ghex_F", 		    // BTR-K Kamysh (Titan)
	"OPT_O_T_MBT_02_cannon_ghex_F", 				    // T-100 Varsuk
	"OPT_O_T_MBT_02_arty_ghex_F", 				    // 2S9 Sochor 
	
	"OPT_B_APC_Tracked_01_rcws_F", 					// IFV-6c Panther
	"OPT_B_APC_Wheeled_01_cannon_light_F", 			// AMV-7 Marshall (Leicht)
	"OPT_B_APC_Wheeled_01_cannon_F", 				// AMV-7 Marshall	
	"OPT_B_APC_Tracked_01_AA_F", 					// IFV-6a Cheetah
	"OPT_B_APC_tracked_03_cannon_F", 				// FV-720 Mora	
	"OPT_B_MBT_01_cannon_F", 						// M2A4 Slammer
	"OPT_B_MBT_01_TUSK_F", 						    // M2A4 SlammerUp
	"OPT_B_MBT_03_cannon_F", 						// MBT-52 Kuma,  fliegt raus
	"OPT_B_MBT_01_Arty_F", 						    // M4 Scorcher
	"OPT_B_MBT_01_mlrs_F"	
];



	
	