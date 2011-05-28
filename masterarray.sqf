//////////////////////////////////////////////////Weapons-Equipment//////////////////////////////////////////

INV_AlleWaffenObjekte = [

["Binocular", ["Waffe", "Equipment"],["Binocular", "Binocular"], [1000, 750], [2, "", ""], [], "Binocular" call ISSE_Cfg_Weapons_GetName, "Binocular" call ISSE_Cfg_Weapons_GetDesc, [["plastik", 1],["glas", 1]]],
["NVGoggles",["Waffe", "Equipment"],["NVGoggles", "NVGoggles"], [2000, 1500], [2, "", ""],[], "NVGoggles" call ISSE_Cfg_Weapons_GetName,"NVGoggles" call ISSE_Cfg_Weapons_GetDesc,[["plastik", 1],["glas", 1],["ebauteile", 1]]],
["GPS", ["Waffe", "Equipment"], ["ItemGPS", "GPS"],[2000, 15000], [2, "", ""],[], "GPS", "Keeping the GPS in your inventory will allow you to use the GPS (default key Ctrl + M).",[["plastik", 1],["ebauteile", 1]] ],
["M1014",["Waffe", "rifle"], ["M1014", "M1014"], [15000, 11250], [2, "semiautomatic", "probator"], [], "Mossberg_M590" call ISSE_Cfg_Weapons_GetName, "Mossberg_M590" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 10],["plastik", 2],["kupfer", 2]]],
["Makarov",["Waffe", "pistol"],["Makarov", "Stun pistol"],[20000, 15000], [1, "engineer", "response_training"],[], "Makarov" call ISSE_Cfg_Weapons_GetName,"Makarov" call ISSE_Cfg_Weapons_GetDesc,[["stahl", 5], ["kupfer", 1],["plastik", 1]] ],
["Saiga12K",["Waffe", "rifle"], ["Saiga12K", "Saiga 12K"], [15000, 11250], [2, "semiautomatic", "response_training"], [], "Mossberg_M590" call ISSE_Cfg_Weapons_GetName, "Mossberg_M590" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 10],["plastik", 2],["kupfer", 2]]],
["MP5A5", ["Waffe", "rifle"],["mp5a5", "MP5A5"], [25000, 18750], [2, "smg", "response_training"], [], "MP5A5" call ISSE_Cfg_Weapons_GetName, "MP5A5" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 10],["plastik", 5],["kupfer", 5]]],
["M8_compact", ["Waffe", "rifle"],["M8_compact", "XM8 Compact"], [25000, 18750], [2, "smg", "response_training"], [], "M8_compact" call ISSE_Cfg_Weapons_GetName, "M8_compact" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 10],["plastik", 5],["kupfer", 5]]],
["VSS_vintorez", ["Waffe", "sniper"],["VSS_vintorez", "VSS vintorez"], [60000, 60000], [2, "assassin", "sobr_training"], [], "M24" call ISSE_Cfg_Weapons_GetName, "M24" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 45],["plastik", 12],["kupfer", 10],["glas", 2]] ],
["M24", ["Waffe", "sniper"],["m24", "M24"], [80000, 60000], [2, "assassin", "sobr_training"], [], "M24" call ISSE_Cfg_Weapons_GetName, "M24" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 45],["plastik", 12],["kupfer", 10],["glas", 2]] ],
["M40A3", ["Waffe", "sniper"],["M40A3", "M40A3 (Camo)"],[82000, 45000], [2, "assassin", "sobr_training"], [], "SVD" call ISSE_Cfg_Weapons_GetName, "SVD" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 40],["holz", 10],["kupfer", 10],["glas", 2]]],
["SVD", ["Waffe", "sniper"],["svd", "SVD"],[60000, 45000], [2, "terrorist", "sobr_training"], [], "SVD" call ISSE_Cfg_Weapons_GetName, "SVD" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 40],["holz", 10],["kupfer", 10],["glas", 2]]],
["SVD_CAMO", ["Waffe", "sniper"],["svd_CAMO", "SVD (Camo)"],[60000, 45000], [2, "assassin", "sobr_training"], [], "SVD" call ISSE_Cfg_Weapons_GetName, "SVD" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 40],["holz", 10],["kupfer", 10],["glas", 2]]],
["Huntingrifle", ["Waffe", "sniper"],["Huntingrifle", "CZ 550 Scoped"],[25000, 45000], [2, "semiautomatic", "probator"], [], "CZ 550 Scoped", "SVD" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 40],["holz", 10],["kupfer", 10],["glas", 2]]],
["DMR", ["Waffe", "sniper"],["DMR", "DMR"],[70000, 45000], [2, "assassin", "sobr_training"], [], "Designated Marksman Rifle", "Designated Marksman Rifle", [["stahl", 40],["holz", 10],["kupfer", 10],["glas", 2]]],
["M8_sharpshooter", ["Waffe", "sniper"],["M8_sharpshooter", "XM8 Sharpshooter"], [60000, 60000], [2, "assassin", "sobr_training"], [], "M24" call ISSE_Cfg_Weapons_GetName, "M24" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 45],["plastik", 12],["kupfer", 10],["glas", 2]] ],
["KSVK", ["Waffe", "sniper"],["ksvk", "KSVK"],[100000, 75000], [2, "assassin", "sobr_training"], [], "KSVK" call ISSE_Cfg_Weapons_GetName, "KSVK" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 60],["holz", 15],["kupfer", 20],["glas", 3]]], 
["M107", ["Waffe", "sniper"],["m107", "M107"],[100000, 75000], [2, "assassin", "sobr_training"], [], "M107" call ISSE_Cfg_Weapons_GetName, "M107" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 50],["plastik", 10],["kupfer", 15],["glas", 3]]], 
["Bizon",["Waffe", "rifle"], ["Bizon", "Bizon PP-19"], [20000, 1500], [2, "rifle", "response_training"], [], "AK74" call ISSE_Cfg_Weapons_GetName, "AK74" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 20],["plastik", 10],["holz", 10]]],
["AK74",["Waffe", "rifle"], ["AK_74", "AK-74 5.45mm"], [30000, 1500], [2, "terrorist", "sobr_training"], [], "AK74" call ISSE_Cfg_Weapons_GetName, "AK74" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 20],["plastik", 10],["holz", 10]]],
["AK74GL",["Waffe", "rifle"], ["AK_74_GL", "AK-74 GL 5.45mm + GP30"], [35000, 4600], [2, "terrorist", "sobr_training"], [], "AK74GL" call ISSE_Cfg_Weapons_GetName, "AK74GL" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 25],["plastik", 5],["holz", 10]]],
["AKS74U",["Waffe", "rifle"], ["AKS_74_U", "AKSU-74 5.45mm"], [25000, 3500], [2, "terrorist", "sobr_training"], [], "AKS74U" call ISSE_Cfg_Weapons_GetName, "AKS74U" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 15],["plastik", 5],["holz", 5]]],
["AKS_GOLD",["Waffe", "rifle"], ["AKS_GOLD", "AKSU-74 GOLD 5.45mm"], [50000, 3500], [2, "terrorist", "sobr_training"], [], "AKS74U" call ISSE_Cfg_Weapons_GetName, "AKS74U" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 15],["plastik", 5],["holz", 5]]],
["AKS74pso",["Waffe", "rifle"], ["AKS_74_pso", "AKS-74 PSO-1 5.45mm"], [40000, 7000], [2, "terrorist", "sobr_training"], [], "AKS74PSO" call ISSE_Cfg_Weapons_GetName, "AKS74PSO" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 25],["plastik", 18],["holz", 10]]],
["AK107kobra",["Waffe", "rifle"], ["AK_107_kobra", "AK-107 Kobra"], [30000, 1500], [2, "terrorist", "sobr_training"], [], "AK74" call ISSE_Cfg_Weapons_GetName, "AK74" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 20],["plastik", 10],["holz", 10]]],
["AK107GLkobra",["Waffe", "rifle"], ["AK_107_GL_kobra", "AK-107 GL Kobra"], [35000, 4600], [2, "terrorist", "sobr_training"], [], "AK74GL" call ISSE_Cfg_Weapons_GetName, "AK74GL" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 25],["plastik", 5],["holz", 10]]],
["AK107pso",["Waffe", "rifle"], ["AK_107_pso", "AK-107 PSO"], [40000, 3500], [2, "terrorist", "sobr_training"], [], "AKS74U" call ISSE_Cfg_Weapons_GetName, "AKS74U" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 15],["plastik", 5],["holz", 5]]],
["AK107GLpso",["Waffe", "rifle"], ["AK_107_GL_pso", "AK-107 GL PSO"], [45000, 7000], [2, "terrorist", "sobr_training"], [], "AKS74PSO" call ISSE_Cfg_Weapons_GetName, "AKS74PSO" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 25],["plastik", 18],["holz", 10]]],
["M4A1",["Waffe", "rifle"], ["M4A1", "M4A1"], [30000, 3500], [2, "terrorist", "sobr_training"], [], "M4A1" call ISSE_Cfg_Weapons_GetName, "M4A1" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 15],["plastik", 5],["holz", 5]]],
["M4A1_Aim",["Waffe", "rifle"], ["M4A1_Aim", "M4A1 CCO"], [35000, 3500], [2, "terrorist", "sobr_training"], [], "M4A1_Aim" call ISSE_Cfg_Weapons_GetName, "M4A1_Aim" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 15],["plastik", 5],["holz", 5]]],
["M4A1_HWS_GL",["Waffe", "rifle"], ["M4A1_HWS_GL", "M4A1 / M203 Holo"], [40000, 3500], [2, "terrorist", "sobr_training"], [], "M4A1_HWS_GL" call ISSE_Cfg_Weapons_GetName, "M4A1_HWS_GL" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 15],["plastik", 5],["holz", 5]]],
["M4A1_RCO_GL",["Waffe", "rifle"], ["M4A1_RCO_GL", "M4A1 / M203 RCO"], [50000, 3500], [2, "terrorist", "sobr_training"], [], "M4A1_RCO_GL" call ISSE_Cfg_Weapons_GetName, "M4A1_RCO_GL" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 15],["plastik", 5],["holz", 5]]],
["Pecheneg", ["Waffe", "mg"],["Pecheneg", "Pecheneg"], [80000, 75000], [2, "terrorist", "sobr_training"], [], "M240" call ISSE_Cfg_Weapons_GetName, "M240" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 60],["plastik", 10],["kupfer", 15]]],
["RPK_74", ["Waffe", "mg"],["RPK_74", "RPK-74"], [60000, 75000], [2, "terrorist", "sobr_training"], [], "M240" call ISSE_Cfg_Weapons_GetName, "M240" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 60],["plastik", 10],["kupfer", 15]]],
["MG36", ["Waffe", "mg"],["MG36", "MG36"], [80000, 75000], [2, "terrorist", "sobr_training"], [], "M249" call ISSE_Cfg_Weapons_GetName, "M249" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 60],["plastik", 10],["kupfer", 15]]],
["PK",["Waffe", "mg"], ["pk", "PKM"], [80000, 75000], [2, "terrorist", "sobr_training"],[], "PK" call ISSE_Cfg_Weapons_GetName, "PK" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 60],["holz", 30],["kupfer", 15]]],
["MetisLauncher", ["Waffe", "launcher"],["MetisLauncher", "Metis AT-13"], [120000, 112500], [3, "terrorist", "sobr_training"], [], "JAVELIN" call ISSE_Cfg_Weapons_GetName, "JAVELIN" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 70],["plastik", 20],["kupfer", 15],["ebauteile", 5]]],
["Strela", ["Waffe", "launcher"],["STRELA", "STRELA AA Manpad"], [120000, 112500], [3, "terrorist", "sobr_training"],[], "STRELA" call ISSE_Cfg_Weapons_GetName,"STRELA" call ISSE_Cfg_Weapons_GetDesc,[["stahl", 70],["plastik", 20],["kupfer", 15],["ebauteile", 5]]],
["Igla", ["Waffe", "launcher"],["Igla", "Igla AA Manpad"], [120000, 112500], [3, "terrorist", "sobr_training"],[], "STRELA" call ISSE_Cfg_Weapons_GetName,"STRELA" call ISSE_Cfg_Weapons_GetDesc,[["stahl", 70],["plastik", 20],["kupfer", 15],["ebauteile", 5]]],
["RPG7V", ["Waffe", "launcher"],["RPG7V", "RPG-7"], [80000, 75000], [3, "terrorist", "sobr_training"], [], "RPG7V" call ISSE_Cfg_Weapons_GetName, "RPG7V" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 60],["plastik", 10],["kupfer", 15],["ebauteile", 2]] ],
["RPG18", ["Waffe", "launcher"],["RPG18", "RPG18"], [60000, 75000], [3, "terrorist", "sobr_training"], [], "RPG7V" call ISSE_Cfg_Weapons_GetName, "RPG7V" call ISSE_Cfg_Weapons_GetDesc, [["stahl", 60],["plastik", 10],["kupfer", 15],["ebauteile", 2]] ],
["M9",["Waffe", "pistol"],["M9", "M9"],[8000, 15000], [1, "semiautomatic", "patrol_training"],[], "Makarov" call ISSE_Cfg_Weapons_GetName,"Makarov" call ISSE_Cfg_Weapons_GetDesc,[["stahl", 5], ["kupfer", 1],["plastik", 1]] ],
["Colt1911",["Waffe", "pistol"],["Colt1911", "M1911A1"],[6000, 15000], [1, "semiautomatic", "patrol_training"],[], "Makarov" call ISSE_Cfg_Weapons_GetName,"Makarov" call ISSE_Cfg_Weapons_GetDesc,[["stahl", 5], ["kupfer", 1],["plastik", 1]] ]

];

/////////////////////////////////////////////////////Ammo-Explosives/////////////////////////////////////////////////////////

INV_AlleMagazinObjekte = [

["8Rnd_B_Beneli_74Slug",["Magazin", "rifle"],["8Rnd_B_Beneli_74Slug", "8Rnds BeanBag non-lethal"],[800, 800], [1, "rifle", "probator"], [], "8Rnd_127x51_ball_TR" call ISSE_Cfg_MagazineInfo, "8Rnd_127x51_ball_TR" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["Rnd_B_Saiga12_74Slug",["Magazin", "rifle"],["8Rnd_B_Saiga12_74Slug", "8Rnd Saiga 12 gauge"],[800, 800], [1, ""], [], "8Rnd_127x51_ball_TR" call ISSE_Cfg_MagazineInfo, "8Rnd_127x51_ball_TR" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["Rnd_9x19_M9",["Magazin", "pistol"],["15Rnd_9x19_M9", "15Rnd 9mm M9/92FS Mag"],[500, 400], [1, ""], [], "15Rnd_9x19_M9" call ISSE_Cfg_MagazineInfo, "15Rnd_9x19_M9" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["Rnd_45ACP_1911",["Magazin", "pistol"],["7Rnd_45ACP_1911", "7Rnd 45ACP 1911 Mag"],[400, 400], [1, ""], [], "15Rnd_9x19_M9" call ISSE_Cfg_MagazineInfo, "15Rnd_9x19_M9" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["8Rnd_9x18_Makarov",["Magazin", "pistol"],["8Rnd_9x18_Makarov", "8Rnd 9mm Makarov Mag"],[500, 200], [1, ""], [], "8Rnd_9x18_Makarov" call ISSE_Cfg_MagazineInfo, "8Rnd_9x18_Makarov" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["8Rnd_9x18_MakarovSD",["Magazin", "pistol"],["8Rnd_9x18_MakarovSD", "Stun pistol rounds"],[500, 300], [1, ""], [], "8Rnd_9x18_MakarovSD" call ISSE_Cfg_MagazineInfo, "8Rnd_9x18_MakarovSD" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["30Rnd_556x45_G36", ["Magazin", "rifle"],["30Rnd_556x45_G36", "30Rnd G36 Mag"],[800, 1000],[1, ""],[], "30Rnd_556x45_G36" call ISSE_Cfg_MagazineInfo, "30Rnd_556x45_G36" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["30Rnd_556x45_Stanag", ["Magazin", "rifle"],["30Rnd_556x45_Stanag", "30Rnd 5.56x45 Stanag Mag"],[800, 1000],[1, ""],[], "30Rnd_556x45_G36" call ISSE_Cfg_MagazineInfo, "30Rnd_556x45_G36" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["30Rnd_9x19_MP5",["Magazin", "rifle"],["30Rnd_9x19_MP5", "30Rnd 9mm MP5 Mag"],[600, 600],[1, ""],[], "30Rnd_9x19_MP5" call ISSE_Cfg_MagazineInfo, "30Rnd_9x19_MP5" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["64Rnd_9x19_Bizon",["Magazin", "rifle"],["64Rnd_9x19_Bizon", "64Rnd 9x19 Bizon Mag"],[600, 600],[1, ""],[], "30Rnd_9x19_MP5" call ISSE_Cfg_MagazineInfo, "30Rnd_9x19_MP5" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["30Rnd_545x39_AK",["Magazin", "rifle"],["30Rnd_545x39_AK", "30Rnd 5.45mm AK-74"],[700, 700],[1, ""],[], "30Rnd_545x39_AK" call ISSE_Cfg_MagazineInfo, "30Rnd_545x39_AK" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["30Rnd_762x39_AK47",["Magazin", "rifle"],["30Rnd_762x39_AK47", "30Rnd 7.62mm AK-47"],[700, 700],[1, ""],[], "30Rnd_545x39_AK" call ISSE_Cfg_MagazineInfo, "30Rnd_545x39_AK" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["5Rnd_762x51_M24",["Magazin", "sniper"],["5Rnd_762x51_M24", "5Rnd M24 Mag"],[1000, 1000], [1, ""], [], "5Rnd_762x51_M24" call ISSE_Cfg_MagazineInfo, "5Rnd_762x51_M24" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["10Rnd_9x39_SP5_VSS",["Magazin", "sniper"],["10Rnd_9x39_SP5_VSS", "10Rnd 9x39 SP5 VSS Mag"],[1000, 1000], [1, ""], [], "5Rnd_762x51_M24" call ISSE_Cfg_MagazineInfo, "5Rnd_762x51_M24" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["10Rnd_762x54_SVD", ["Magazin", "sniper"],["10Rnd_762x54_SVD", "10Rnd 7.62mm SVD Mag"],[1000, 1000],[1, ""],[], "10Rnd_762x54_SVD" call ISSE_Cfg_MagazineInfo, "10Rnd_762x54_SVD" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["5Rnd_127x108_KSVK",["Magazin", "sniper"],["5Rnd_127x108_KSVK", "5Rnd KSVK Mag"],[2000, 2000], [1, ""], [], "5Rnd_127x108_KSVK" call ISSE_Cfg_MagazineInfo, "5Rnd_127x108_KSVK" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["10Rnd_127x99_m107",["Magazin", "sniper"],["10Rnd_127x99_m107", "20Rnd M107 Mag"],[2000, 4000], [1, ""], [], "10Rnd_127x99_m107" call ISSE_Cfg_MagazineInfo, "10Rnd_127x99_m107" call ISSE_Cfg_MagazineInfo, [["kupfer", 2],["schwarzpulver", 2]] ],
["x_22_LR_17_HMR",["Magazin", "sniper"],["5x_22_LR_17_HMR", "5rnd 22LR HMR Mag"],[600, 4000], [1, ""], [], "10Rnd_127x99_m107" call ISSE_Cfg_MagazineInfo, "10Rnd_127x99_m107" call ISSE_Cfg_MagazineInfo, [["kupfer", 2],["schwarzpulver", 2]] ],
["20Rnd_762x51_DMR",["Magazin", "sniper"],["20Rnd_762x51_DMR", "20Rnd 762x51 DMR Mag"],[1000, 4000], [1, ""], [], "10Rnd_127x99_m107" call ISSE_Cfg_MagazineInfo, "10Rnd_127x99_m107" call ISSE_Cfg_MagazineInfo, [["kupfer", 2],["schwarzpulver", 2]] ],
["100Rnd_762x54_PK",["Magazin", "mg"],["100Rnd_762x54_PK", "100Rnd PKM Mag"],[1000, 4000], [2, ""], [], "100Rnd_762x54_PK" call ISSE_Cfg_MagazineInfo, "100Rnd_762x54_PK" call ISSE_Cfg_MagazineInfo, [["kupfer", 2],["schwarzpulver", 2]] ],
["75Rnd_545x39_RPK",["Magazin", "mg"],["75Rnd_545x39_RPK", "75Rnd 545x39 RPK Mag"],[1000, 4000], [2, ""], [], "100Rnd_762x54_PK" call ISSE_Cfg_MagazineInfo, "100Rnd_762x54_PK" call ISSE_Cfg_MagazineInfo, [["kupfer", 2],["schwarzpulver", 2]] ],
["1Rnd_HE_M203",["Magazin", "explosive"],["1Rnd_HE_M203", "M203 HE"],[500, 1000], [3, ""], [], "1Rnd_HE_M203" call ISSE_Cfg_MagazineInfo, "1Rnd_HE_M203" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["1Rnd_HE_GP25",["Magazin", "explosive"],["1Rnd_HE_GP25", "GP25/GP30 HE"],[500, 1000], [3, ""], [], "1Rnd_HE_GP25" call ISSE_Cfg_MagazineInfo, "1Rnd_HE_GP25" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["PG7V", ["Magazin", "rocket"],["PG7V", "PG7V Rocket"],[30000, 30000], [3, ""],[], "PG7V" call ISSE_Cfg_MagazineInfo,"PG7V" call ISSE_Cfg_MagazineInfo,[["kupfer", 15],["schwarzpulver", 15],["ebauteile", 2]]],
["PG7VR", ["Magazin", "rocket"],["PG7VR", "PG7VR Rocket"],[30000, 30000], [3, ""],[], "PG7VR" call ISSE_Cfg_MagazineInfo, "PG7VR" call ISSE_Cfg_MagazineInfo, [["kupfer", 15],["schwarzpulver", 15],["ebauteile", 2]]], 
["PG7VL", ["Magazin", "rocket"],["PG7VR", "PG7VL Rocket"],[30000, 30000], [3, ""],[], "PG7VR" call ISSE_Cfg_MagazineInfo, "PG7VR" call ISSE_Cfg_MagazineInfo, [["kupfer", 15],["schwarzpulver", 15],["ebauteile", 2]]], 
["OG7", ["Magazin", "rocket"],["PG7VR", "OG7 Rocket"],[30000, 30000], [3, ""],[], "PG7VR" call ISSE_Cfg_MagazineInfo, "PG7VR" call ISSE_Cfg_MagazineInfo, [["kupfer", 15],["schwarzpulver", 15],["ebauteile", 2]]], 
["Strela_mag", ["Magazin", "rocket"],["STRELA", "STRELA AA Manpad Rocket"], [40000, 75000], [3, ""],[], "STRELA" call ISSE_Cfg_MagazineInfo, "STRELA" call ISSE_Cfg_MagazineInfo, [["kupfer", 30],["schwarzpulver", 30],["ebauteile", 8]]],
["Igla_mag", ["Magazin", "rocket"],["Igla", "Igla AA Manpad Rocket"], [40000, 75000], [3, ""],[], "STRELA" call ISSE_Cfg_MagazineInfo, "STRELA" call ISSE_Cfg_MagazineInfo, [["kupfer", 30],["schwarzpulver", 30],["ebauteile", 8]]],
["RPG18_mag", ["Magazin", "rocket"],["RPG18", "RPG18 Rocket"],[20000, 30000], [3, ""],[], "PG7V" call ISSE_Cfg_MagazineInfo,"PG7V" call ISSE_Cfg_MagazineInfo,[["kupfer", 15],["schwarzpulver", 15],["ebauteile", 2]]],
["AT13_mag", ["Magazin", "rocket"],["AT13", "AT13 Rocket"],[40000, 30000], [3, ""],[], "PG7V" call ISSE_Cfg_MagazineInfo,"PG7V" call ISSE_Cfg_MagazineInfo,[["kupfer", 15],["schwarzpulver", 15],["ebauteile", 2]]],
["HandGrenade", ["Magazin", "explosive"], ["HandGrenade", "Hand Grenade"], [500, 1000],[4, ""],[], "HandGrenade" call ISSE_Cfg_MagazineInfo,"HandGrenade" call ISSE_Cfg_MagazineInfo,[["kupfer", 1],["schwarzpulver", 1]] ],
["HandGrenade_West", ["Magazin", "explosive"], ["HandGrenade_West", "M67 Hand Grenade"], [500, 1000],[4, ""],[], "HandGrenade" call ISSE_Cfg_MagazineInfo,"HandGrenade" call ISSE_Cfg_MagazineInfo,[["kupfer", 1],["schwarzpulver", 1]] ],
["HandGrenade_East", ["Magazin", "explosive"], ["HandGrenade_East", "RGO-1 Hand Grenade"], [500, 1000],[4, ""],[], "HandGrenade" call ISSE_Cfg_MagazineInfo,"HandGrenade" call ISSE_Cfg_MagazineInfo,[["kupfer", 1],["schwarzpulver", 1]] ],
["Stone", ["Magazin", "explosive"], ["HandGrenade_Stone", "Stone"], [20, 5000],[4, ""],[], "HandGrenade" call ISSE_Cfg_MagazineInfo,"HandGrenade" call ISSE_Cfg_MagazineInfo,[["kupfer", 1],["schwarzpulver", 1]] ],
["TimeBomb", ["Magazin", "explosive"], ["TimeBomb", "TimeBomb"], [50000, 50000], [4, "terrorist", ""],[], "TimeBomb" call ISSE_Cfg_MagazineInfo, "TimeBomb" call ISSE_Cfg_MagazineInfo, [["kupfer", 20],["schwarzpulver", 22],["ebauteile", 3]] ],
["PipeBomb",["Magazin", "explosive"],["PipeBomb", "PipeBomb"],[50000, 37500], [4, "terrorist", ""], [], "PipeBomb" call ISSE_Cfg_MagazineInfo, "PipeBomb" call ISSE_Cfg_MagazineInfo, [["kupfer", 20],["schwarzpulver", 22],["ebauteile", 3]] ],
["FlareWhite_GP25",["Magazin", "equipment"], ["FlareWhite_GP25", "White GP25 Flare"], [250, 500],[0, ""],[], "FlareWhite_GP25" call ISSE_Cfg_MagazineInfo, "FlareWhite_GP25" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["FlareGreen_GP25",["Magazin", "equipment"], ["FlareGreen_GP25", "Green GP25 Flare"], [250, 500],[0, ""],[], "FlareGreen_GP25" call ISSE_Cfg_MagazineInfo, "FlareGreen_GP25" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["FlareRed_GP25",["Magazin", "equipment"],["FlareRed_GP25", "Red GP25 Flare"],[250, 500], [0, ""], [], "FlareRed_GP25" call ISSE_Cfg_MagazineInfo, "FlareRed_GP25" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["FlareYellow_GP25", ["Magazin", "equipment"], ["FlareYellow_GP25", "Yellow GP25 Flare"], [250, 500],[0, ""],[], "FlareYellow_GP25" call ISSE_Cfg_MagazineInfo, "FlareYellow_GP25" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["FlareWhite_M203",["Magazin", "equipment"], ["FlareWhite_M203", "White M203 Flare"], [250, 500],[0, ""],[], "FlareWhite_M203" call ISSE_Cfg_MagazineInfo, "FlareWhite_M203" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["FlareGreen_M203",["Magazin", "equipment"], ["FlareGreen_M203", "Green M203 Flare"], [250, 500],[0, ""],[], "FlareGreen_M203" call ISSE_Cfg_MagazineInfo, "FlareGreen_M203" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["FlareRed_M203",["Magazin", "equipment"],["FlareRed_M203", "Red M203 Flare"],[250, 500], [0, ""], [], "FlareRed_M203" call ISSE_Cfg_MagazineInfo, "FlareRed_M203" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["FlareYellow_M203", ["Magazin", "equipment"], ["FlareYellow_M203", "Yellow M203 Flare"], [250, 500],[0, ""],[], "FlareYellow_M203" call ISSE_Cfg_MagazineInfo, "FlareYellow_M203" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["SmokeShellRed",["Magazin", "equipment"],["SmokeShellRed", "Red Smoke Grenade"],[250, 500], [0, "", "patrol_training"], [], "SmokeShellRed" call ISSE_Cfg_MagazineInfo, "SmokeShellRed" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["SmokeShellGreen",["Magazin", "equipment"],["SmokeShellGreen", "Tear-Gas"],[2000, 2000], [0, "terrorist", "response_training"], [], "SmokeShellGreen" call ISSE_Cfg_MagazineInfo, "SmokeShellGreen" call ISSE_Cfg_MagazineInfo, [["kupfer", 1],["schwarzpulver", 1]] ],
["SmokeShell", ["Magazin", "equipment"], ["SmokeShell", "White Smoke Grenade"],[250, 500],[0, ""],[], "SmokeShell" call ISSE_Cfg_MagazineInfo,"SmokeShell" call ISSE_Cfg_MagazineInfo,[["kupfer", 1],["schwarzpulver", 1]] ] 

];

INV_AlleFahrzeugeArray = [

//////////////////////////////////////////////////////////Boats//////////////////////////////////////////////////////////////////

["Smallboat_1",["Fahrzeug", "boat"],["speedboat2", "Leisure Boat"],[15000, 12000], [0, "boat", "probator", 200], [100, [1,0,0,4] ], "speedboat2" call ISSE_Cfg_Vehicle_GetName, "speedboat2" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 2],["ebauteile", 1],["glas", 2],["plastik", 5],["erdoel", 5],["geld",3000]] ],
["Smallboat_2",["Fahrzeug", "boat"],["speedboat3", "Leisure Boat 2"],[15000, 12000], [0, "boat", "probator", 200], [100, [1,0,0,4] ], "speedboat3" call ISSE_Cfg_Vehicle_GetName, "speedboat3" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 2],["ebauteile", 1],["glas", 2],["plastik", 5],["erdoel", 5],["geld",2000]] ],
["Fishing_Boat",["Fahrzeug", "boat"],["speedboat5", "Fishing Boat"],[22000, 15000], [0, "boat", "probator", 600], [100, [1,0,0,4] ], "speedboat5" call ISSE_Cfg_Vehicle_GetName, "speedboat5" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 2],["ebauteile", 1],["glas", 2],["plastik", 5],["erdoel", 5],["geld",1000]]],
["PBX", ["Fahrzeug", "boat"],["PBX", "PBX"],[6000, 4250], [0, "boat", "", 60], [100,[1,1,0,3] ], "PBX" call ISSE_Cfg_Vehicle_GetName, "PBX" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 1],["ebauteile", 1],["glas", 2],["plastik", 3],["erdoel", 5]] ],
["RHIB",["Fahrzeug", "boat"],["RHIB", "RHIB"], [25000, 15000],[0, "boat", "sobr_training", 200], [100,[1,2,0,10] ], "RHIB" call ISSE_Cfg_Vehicle_GetName, "RHIB" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 8],["ebauteile", 4],["glas", 8],["plastik", 20],["erdoel", 5],["kupfer", 20],["schwarzpulver", 15]]],
["Zodiac",["Fahrzeug", "boat"],["Zodiac", "CRRC"],[8000, 6000], [0, "boat", "", 80], [100,[1,0,0,4] ], "Zodiac" call ISSE_Cfg_Vehicle_GetName,"Zodiac" call ISSE_Cfg_Vehicle_GetDesc,[["stahl", 2],["ebauteile", 1],["glas", 2],["plastik", 5],["erdoel", 5]] ],

///////////////////////////////////////////////////////////////Choppers/////////////////////////////////////////////////////////

["MH60S",["Fahrzeug", "air"],["MH60S", "MH-60S"],[350000, 250000], [5, "air", "air_support_training", 500], [1000, [1,2,0,13] ], "Mi-17", "Mi-17", [["stahl", 500],["ebauteile", 15],["glas", 10],["plastik", 40],["mineraloel", 60],["geld",8000]]],
["Mi17_medevac_CDF",["Fahrzeug", "air"],["Mi17_medevac_CDF", "Mi-17-IVA Medevac"],[200000, 100000], [5, "air", "air_support_training", 500], [1000, [1,2,0,13] ], "Mi-17", "Mi-17", [["stahl", 500],["ebauteile", 15],["glas", 10],["plastik", 40],["mineraloel", 60],["geld",8000]]],
["AH6X_EP1",["Fahrzeug", "Air"],["AH6X_EP1", "Little Bird"],[1800000, 1400000], [5, "air", "air_support_training", 300], [1000, [1,2,0,13] ], "Mi-17", "Mi-17", [["steel", 500],["ebauteile", 15],["glass", 10],["plastic", 40],["mineraloel", 60],["geld",8000]]],
["Mi17_Civilian",["Fahrzeug", "air"],["Mi17_Civilian", "Mi-17-Civil"],[2000000, 1800000], [5, "air", "air_support_training", 500], [1000, [1,2,0,13] ], "Mi-17", "Mi-17", [["steel", 500],["ebauteile", 15],["glass", 10],["plastic", 40],["mineraloel", 60],["geld",8000]]],
["MH6J_EP1",["Fahrzeug", "Air"],["MH6J_EP1", "6 Seat Little Bird"],[2000000, 1000000], [5, "air", "air_support_training", 360], [1000, [1,2,0,13] ], "Mi-17", "Mi-17", [["steel", 500],["ebauteile", 15],["glass", 10],["plastic", 40],["mineraloel", 60],["geld",8000]]],

////////////////////////////////////////////////////////////Planes///////////////////////////////////////////////////////////////

["GNT_PiperWII",["Fahrzeug", "air"],["GNT_PiperWII", "PiperWII"],[150000, 100000], [5, "air", "air_support_training", 200], [250,[1,1,0,0]], "GNT_PiperWII" call ISSE_Cfg_Vehicle_GetName, "GNT_PiperWII" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 240],["ebauteile", 25],["glas", 20],["plastik", 50],["erdoel", 50]] ],
["ArMaT_GliderUN",["Fahrzeug", "air"],["ArMaT_GliderUN", "Glider"],[100000, 70000], [5, "air", "air_support_training", 500], [1000, [1,2,0,13] ], "ArMaT_GliderUN", "ArMaT_GliderUN", [["stahl", 500],["ebauteile", 15],["glas", 10],["plastik", 40],["mineraloel", 60],["geld",8000]]],
["An2_1_TK_CIV_EP1",["Fahrzeug", "Air"],["An2_1_TK_CIV_EP1", "An-2 Prop Plane Red"],[220000, 175000], [5, "air", "air_support_training", 400], [1000, [1,2,0,13] ], "Mi-17", "Mi-17", [["steel", 500],["ebauteile", 15],["glass", 10],["plastic", 40],["mineraloel", 60],["geld",8000]]],
["An2_2_TK_CIV_EP1",["Fahrzeug", "Air"],["An2_2_TK_CIV_EP1", "An-2 Prop Plane Green"],[220000, 175000], [5, "air", "air_support_training", 400], [1000, [1,2,0,13] ], "Mi-17", "Mi-17", [["steel", 500],["ebauteile", 15],["glass", 10],["plastic", 40],["mineraloel", 60],["geld",8000]]],

////////////////////////////////////////////////////////////Push Bikes/////////////////////////////////////////////////////////////

["MMT_Civ",["Fahrzeug", "car"],["smurfcbike", "Bicycle"],[250, 100],[1, "", "", 20], [150, [1,0,0,3]], "smurfcbike" call ISSE_Cfg_Vehicle_GetName, "smurfcbike" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 1]] ],
["MMT_USMC",["Fahrzeug", "car"],["smurfcbike", "Bicycle"],[250, 100],[1, "", "", 20], [150, [1,0,0,3]], "smurfcbike" call ISSE_Cfg_Vehicle_GetName, "smurfcbike" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 1]] ],

////////////////////////////////////////////////////////////Cars/////////////////////////////////////////////////////////////////////

["Skoda",["Fahrzeug", "car"],["Skoda", "Skoda"],[7500, 5000], [1, "car", "probator", 100], [150, [1,0,0,3]], "Skoda" call ISSE_Cfg_Vehicle_GetName, "Skoda" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 4],["glas", 1],["plastik", 1],["erdoel", 4]] ],
["SkodaBlue",["Fahrzeug", "car"],["SkodaBlue", "Blue Skoda"],[7500, 5000], [1, "car", "probator", 100], [150, [1,0,0,3]], "SkodaBlue" call ISSE_Cfg_Vehicle_GetName, "SkodaBlue" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 4],["glas", 1],["plastik", 1],["erdoel", 4]] ],
["SkodaRed",["Fahrzeug", "car"],["SkodaRed", "Red Skoda"],[7500, 5000], [1, "car", "probator", 100], [150, [1,0,0,3]], "SkodaRed" call ISSE_Cfg_Vehicle_GetName, "SkodaRed" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 4],["glas", 1],["plastik", 1],["erdoel", 4]] ],
["SkodaGreen",["Fahrzeug", "car"],["SkodaGreen", "Green Skoda"],[7500, 5000], [1, "car", "probator", 100], [150, [1,0,0,3]], "SkodaGreen" call ISSE_Cfg_Vehicle_GetName, "SkodaGreen" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 4],["glas", 1],["plastik", 1],["erdoel", 4]] ],
["civic",["Fahrzeug", "car"],["civic", "1989 Honda Civic"],[7500, 5000], [1, "car", "probator", 100], [150, [1,0,0,3]], "civic" call ISSE_Cfg_Vehicle_GetName, "civic" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 4],["glas", 1],["plastik", 1],["erdoel", 4]] ],
["UAZ_CDF", ["Fahrzeug", "car"],["UAZ_CDF", "UAZ"],[14000, 10000], [2, "car", "", 120], [350,[1,0,0,6] ], "slr_landroverPolice" call ISSE_Cfg_Vehicle_GetName, "slr_landroverPolice" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 10],["ebauteile", 1],["glas", 2],["plastik", 2],["mineraloel", 5]]],
["LadaLM",["Fahrzeug", "car"],["LadaLM", "Lada (VAZ)"],[10500, 7500], [1, "car", "", 120], [150, [1,0,0,3]], "slr_policeSkoda" call ISSE_Cfg_Vehicle_GetName, "slr_policeSkoda" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 10],["ebauteile", 1],["mineraloel", 5]] ],
["Lada_base",["Fahrzeug", "car"],["Lada_base", "VAZ"],[10500, 7500], [1, "car", "probator", 120], [150, [1,0,0,3]], "Lada_base" call ISSE_Cfg_Vehicle_GetName, "Lada_base" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 4],["glas", 1],["plastik", 1],["erdoel", 4]] ],
["Lada1",["Fahrzeug", "car"],["Lada1", "VAZ (White)"],[10500, 7500], [1, "car", "probator", 120], [150, [1,0,0,3]], "Lada1" call ISSE_Cfg_Vehicle_GetName, "Lada1" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 4],["glas", 1],["plastik", 1],["erdoel", 4]] ],
["Lada2",["Fahrzeug", "car"],["Lada2", "VAZ (Red)"],[10500, 7500], [1, "car", "probator", 120], [150, [1,0,0,3]], "Lada2" call ISSE_Cfg_Vehicle_GetName, "Lada2" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 4],["glas", 1],["plastik", 1],["erdoel", 4]] ],
["VWGolf",["Fahrzeug", "car"],["VWGolf", "Volkswagen Golf"],[21000, 11250], [1, "car", "", 150], [150, [1,0,0,3]], "Car_hatchback" call ISSE_Cfg_Vehicle_GetName, "Car_hatchback" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 5],["ebauteile", 1],["glas", 1],["plastik", 1],["erdoel", 5]] ],
//["R34_black",["Fahrzeug", "car"],["R34_black", "GTR R34(black)"],[115000, 90250], [1, "car", "", 100], [150, [1,0,0,3]], "R34_black" call ISSE_Cfg_Vehicle_GetName, "R34_black" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 5],["ebauteile", 1],["glas", 1],["plastik", 1],["erdoel", 5]] ],
//["R34_blue",["Fahrzeug", "car"],["R34_blue", "GTR R34(blue)"],[115000, 90250], [1, "car", "", 100], [150, [1,0,0,3]], "R34_blue" call ISSE_Cfg_Vehicle_GetName, "R34_blue" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 5],["ebauteile", 1],["glas", 1],["plastik", 1],["erdoel", 5]] ],
//["R34_red",["Fahrzeug", "car"],["R34_red", "GTR R34(red)"],[115000, 90250], [1, "car", "", 100], [150, [1,0,0,3]], "R34_red" call ISSE_Cfg_Vehicle_GetName, "R34_red" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 5],["ebauteile", 1],["glas", 1],["plastik", 1],["erdoel", 5]] ],
//["R34_yellow",["Fahrzeug", "car"],["R34_yellow", "GTR R34(yellow)"],[115000, 90250], [1, "car", "", 100], [150, [1,0,0,3]], "R34_yellow" call ISSE_Cfg_Vehicle_GetName, "R34_yellow" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 5],["ebauteile", 1],["glas", 1],["plastik", 1],["erdoel", 5]] ],
["Civcar",["Fahrzeug", "car"],["Civcar", "Holden Monaro(Orange)"],[50000, 40250], [1, "car", "", 180], [150, [1,0,0,3]], "Civcar" call ISSE_Cfg_Vehicle_GetName, "Civcar" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 5],["ebauteile", 1],["glas", 1],["plastik", 1],["erdoel", 5]] ],
["Civcarbl",["Fahrzeug", "car"],["Civcarbl", "Holden Monaro(Black)"],[50000, 40250], [1, "car", "", 180], [150, [1,0,0,3]], "Civcarbl" call ISSE_Cfg_Vehicle_GetName, "Civcarbl" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 5],["ebauteile", 1],["glas", 1],["plastik", 1],["erdoel", 5]] ],
["Civcarbu",["Fahrzeug", "car"],["Civcarbu", "Holden Monaro(Blue)"],[50000, 40250], [1, "car", "", 180], [150, [1,0,0,3]], "Civcarbu" call ISSE_Cfg_Vehicle_GetName, "Civcarbu" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 5],["ebauteile", 1],["glas", 1],["plastik", 1],["erdoel", 5]] ],
["Civcarge",["Fahrzeug", "car"],["Civcarge", "Holden Monaro(Green)"],[50000, 40250], [1, "car", "", 180], [150, [1,0,0,3]], "Civcarge" call ISSE_Cfg_Vehicle_GetName, "Civcarge" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 5],["ebauteile", 1],["glas", 1],["plastik", 1],["erdoel", 5]] ],
["Civcarre",["Fahrzeug", "car"],["Civcarre", "Holden Monaro(Red)"],[50000, 40250], [1, "car", "", 180], [150, [1,0,0,3]], "Civcarre" call ISSE_Cfg_Vehicle_GetName, "Civcarre" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 5],["ebauteile", 1],["glas", 1],["plastik", 1],["erdoel", 5]] ],
["Civcarsl",["Fahrzeug", "car"],["Civcarsl", "Holden Monaro(Silver)"],[50000, 40250], [1, "car", "", 180], [150, [1,0,0,3]], "Civcarsl" call ISSE_Cfg_Vehicle_GetName, "Civcarsl" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 5],["ebauteile", 1],["glas", 1],["plastik", 1],["erdoel", 5]] ],
["Civcarwh",["Fahrzeug", "car"],["Civcarwh", "Holden Monaro(White)"],[50000, 40250], [1, "car", "", 180], [150, [1,0,0,3]], "Civcarwh" call ISSE_Cfg_Vehicle_GetName, "Civcarwh" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 5],["ebauteile", 1],["glas", 1],["plastik", 1],["erdoel", 5]] ],
["car_hatchback",["Fahrzeug", "car"],["Car_hatchback", "Hatchback"],[9500, 7250], [1, "car", "probator", 130], [150, [1,0,0,3]], "Car_hatchback" call ISSE_Cfg_Vehicle_GetName, "Car_hatchback" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 5],["ebauteile", 1],["glas", 1],["plastik", 1],["erdoel", 5]] ],
["Car_Sedan",["Fahrzeug", "car"],["Car_Sedan", "Sedan"],[9500, 7250], [1, "car", "probator", 130], [150, [1,0,0,3]], "Car_Sedan" call ISSE_Cfg_Vehicle_GetName, "Car_Sedan" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 5],["ebauteile", 1],["glas", 1],["plastik", 1],["erdoel", 5]] ],
//["il_silverado_selvo",["Fahrzeug", "car"],["il_silverado_selvo", "Selvo's Custom Truck"],[60000, 20000], [1, "car", "probator", 350], [150, [1,0,0,3]], "Skoda" call ISSE_Cfg_Vehicle_GetName, "Skoda" call ISSE_Cfg_Vehicle_GetDesc, [["steel", 4],["glass", 1],["plastic", 1],["plastic", 4]] ],
//["il_charger_pd",["Fahrzeug", "car"],["il_charger_pd", "Dodge Charger Patrol"],[25000, 10000], [1, "car", "", 150], [150, [1,0,0,3]], "Skoda" call ISSE_Cfg_Vehicle_GetName, "Skoda" call ISSE_Cfg_Vehicle_GetDesc, [["steel", 4],["glass", 1],["plastic", 1],["plastic", 4]] ],
//["Hilux_Hunter",["Fahrzeug", "car"],["Hilux_Hunter", "4x4 Truck"],[50000, 10000], [1, "car", "probator", 200], [200, [1,0,0,3]], "Skoda" call ISSE_Cfg_Vehicle_GetName, "Skoda" call ISSE_Cfg_Vehicle_GetDesc, [["steel", 4],["glass", 1],["plastic", 1],["plastic", 4]] ],
["oltruc3",["Fahrzeug", "car"],["oltruc3", "F-250 Pickup"],[18000, 12000], [1, "car", "probator", 200], [150, [1,0,0,3]], "Skoda" call ISSE_Cfg_Vehicle_GetName, "Skoda" call ISSE_Cfg_Vehicle_GetDesc, [["steel", 4],["glass", 1],["plastic", 1],["plastic", 4]] ],

///////////////////////////////////////////////////////////Sports Cars//////////////////////////////////////////////////////////////////////

["barcuda",["Fahrzeug", "car"],["barcuda", "Plymouth Barracuda"],[135000, 125500], [1, "car", "probator", 100], [150, [1,0,0,3]], "Skoda" call ISSE_Cfg_Vehicle_GetName, "Skoda" call ISSE_Cfg_Vehicle_GetDesc, [["steel", 4],["glass", 1],["plastic", 1],["plastic", 4]] ],
["cuda",["Fahrzeug", "car"],["cuda", "70 Plymouth Hemi"],[125000, 115500], [1, "car", "probator", 100], [150, [1,0,0,3]], "Skoda" call ISSE_Cfg_Vehicle_GetName, "Skoda" call ISSE_Cfg_Vehicle_GetDesc, [["steel", 4],["glass", 1],["plastic", 1],["plastic", 4]] ],
["roadrunner2",["Fahrzeug", "car"],["roadrunner2", "69 Road Runner"],[175000, 168500], [1, "car", "probator", 100], [150, [1,0,0,3]], "Skoda" call ISSE_Cfg_Vehicle_GetName, "Skoda" call ISSE_Cfg_Vehicle_GetDesc, [["steel", 4],["glass", 1],["plastic", 1],["plastic", 4]] ],
["challenger",["Fahrzeug", "car"],["challenger", "08 Dodge Challenger"],[130000, 122250], [1, "car", "probator", 180], [150, [1,0,0,3]], "challenger" call ISSE_Cfg_Vehicle_GetName, "challenger" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 5],["ebauteile", 1],["glas", 1],["plastik", 1],["erdoel", 5]] ],
["cd71hm",["Fahrzeug", "car"],["cd71hm", "Plymouth Hemicuda"],[135000, 125500], [1, "car", "probator", 100], [150, [1,0,0,3]], "Skoda" call ISSE_Cfg_Vehicle_GetName, "Skoda" call ISSE_Cfg_Vehicle_GetDesc, [["steel", 4],["glass", 1],["plastic", 1],["plastic", 4]] ],
["monaco",["Fahrzeug", "car"],["monaco", "68 Dodge Monaco"],[130000, 125000], [1, "car", "probator", 100], [150, [1,0,0,3]], "Skoda" call ISSE_Cfg_Vehicle_GetName, "Skoda" call ISSE_Cfg_Vehicle_GetDesc, [["steel", 4],["glass", 1],["plastic", 1],["plastic", 4]] ],

////////////////////////////////////////////////////////////Tractors////////////////////////////////////////////////////////////////

["Tractor",["Fahrzeug", "car"],["Tractor", "Tractor"],[8000, 7000], [1, "car", "probator", 200], [100, [1,0,0,0]], "Tractor" call ISSE_Cfg_Vehicle_GetName, "Tractor" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 4],["glas", 1],["plastik", 1],["erdoel", 4]] ],
["oldtruc2a",["Fahrzeug", "car"],["oldtruc2a", "Vintage Farm Truck, Carrier"],[18000, 11000], [1, "truck", "probator", 350], [100, [1,0,0,0]], "oldtruc2a" call ISSE_Cfg_Vehicle_GetName, "oldtruc2a" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 4],["glas", 1],["plastik", 1],["erdoel", 4]] ],
["oldtruc2",["Fahrzeug", "car"],["oldtruc2", "Vintage Farm Truck"],[18000, 11000], [1, "truck", "probator", 350], [100, [1,0,0,0]], "oldtruc2" call ISSE_Cfg_Vehicle_GetName, "oldtruc2" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 4],["glas", 1],["plastik", 1],["erdoel", 4]] ],

////////////////////////////////////////////////////////////////MotorBikes////////////////////////////////////////////////////////////

["M1030",["Fahrzeug", "car"],["M1030", "Motorbike"], [2000, 1500], [1, "car", "", 60], [50,[1,0,0,1] ], "M1030" call ISSE_Cfg_Vehicle_GetName, "M1030" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 1],["erdoel", 1]]],
["TT650_Civ",["Fahrzeug", "car"],["TT650G", "Motorbike"],[2000, 1500], [1, "car", "probator", 60], [50, [1,0,0,1]], "TT650G" call ISSE_Cfg_Vehicle_GetName, "TT650G" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 1],["erdoel", 1]] ],
["TT650_Ins",["Fahrzeug", "car"],["TT650C", "Sports Motorbike"],[2500, 1500], [1, "car", "probator", 60], [50,[1,0,0,1] ], "TT650C" call ISSE_Cfg_Vehicle_GetName,"TT650C" call ISSE_Cfg_Vehicle_GetDesc,[["stahl", 1],["erdoel", 1]]],

///////////////////////////////////////////////////////////////Utes//////////////////////////////////////////////////////////////////

["hilux1_civil_1_open", ["Fahrzeug", "car"],["hilux1_civil_1_open", "Offroad (Tan)"],[25000, 18750], [2, "car", "patrol_training", 250], [350,[1,0,0,1] ], "hilux1_civil_1_open" call ISSE_Cfg_Vehicle_GetName, "hilux1_civil_1_open" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 10],["ebauteile", 1],["glas", 2],["plastik", 2],["erdoel", 5]]],
["hilux1_civil_2_covered",["Fahrzeug", "car"],["hilux1_civil_2_covered", "Offroad (Red)"],[25000, 18750], [2, "car", "patrol_training", 250], [350,[1,0,0,1]], "hilux1_civil_2_covered" call ISSE_Cfg_Vehicle_GetName, "hilux1_civil_2_covered" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 10],["ebauteile", 1],["glas", 2],["plastik", 2],["erdoel", 5]] ], 
["hilux1_civil_3_open", ["Fahrzeug", "car"],["hilux1_civil_3_open", "Police Offroad"], [25000, 18750], [2, "car", "response_training", 250], [350, [1,0,0,1] ], "hilux1_civil_3_open" call ISSE_Cfg_Vehicle_GetName, "hilux1_civil_3_open" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 10],["ebauteile", 1],["glas", 2],["plastik", 2],["erdoel", 5]]],
["datsun1_civil_1_open",["Fahrzeug", "car"],["datsun1_civil_1_open", "Pick-Up"],[20000, 1700], [2, "car", "", 200], [350,[1,0,0,1]], "datsun1_civil_1_open" call ISSE_Cfg_Vehicle_GetName, "datsun1_civil_1_open" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 10],["ebauteile", 1],["glas", 2],["plastik", 2],["erdoel", 5]] ], 
["datsun1_civil_2_covered",["Fahrzeug", "car"],["datsun1_civil_2_covered", "Pick-Up (Covered)"],[20000, 17000], [2, "car", "patrol_training", 200], [350, [1,0,0,1] ], "datsun1_civil_2_covered" call ISSE_Cfg_Vehicle_GetName,"datsun1_civil_2_covered" call ISSE_Cfg_Vehicle_GetDesc,[["stahl", 10],["ebauteile", 1],["glas", 2],["plastik", 2],["erdoel", 5]] ], 
["datsun1_civil_3_open",["Fahrzeug", "car"],["datsun1_civil_3_open", "Pick-Up (Tube frame)"], [20000, 17000], [2, "car", "patrol_training", 200], [350, [1,0,0,1] ], "datsun1_civil_3_open" call ISSE_Cfg_Vehicle_GetName, "datsun1_civil_3_open" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 10],["ebauteile", 1],["glas", 2],["plastik", 2],["erdoel", 5]] ], 
["Pickup_PK_INS", ["Fahrzeug", "car"],["Pickup_PK_INS", "Pickup (PK)"],[120000, 30000],[3, "terrorist", "terrorist", 120], [350, [1,0,0,1] ], "Pickup (PK)","Pickup (PK)",[] ],
["Offroad_DSHKM_INS", ["Fahrzeug", "car"],["Offroad_DSHKM_INS", "Offroad (DSHKM)"],[160000, 30000],[3, "terrorist", "terrorist", 120], [350, [1,0,0,1] ], "Offroad (DSHKM)","Offroad (DSHKM)",[] ],
["Offroad_SPG9_Gue", ["Fahrzeug", "car"],["Offroad_SPG9_Gue", "Offroad (SPG9)"],[200000, 30000],[3, "terrorist", "terrorist", 120], [750, [1,0,0,1] ], "Offroad (SPG9)","Offroad (SPG9)",[] ],
["SUV_TK_CIV_EP1",["Fahrzeug", "car"],["SUV_TK_CIV_EP1", "Suburban"],[35000, 29500], [2, "car", "patrol_training", 200], [150, [1,0,0,3]], "Skoda" call ISSE_Cfg_Vehicle_GetName, "Skoda" call ISSE_Cfg_Vehicle_GetDesc, [["steel", 4],["glass", 1],["plastic", 1],["plastic", 4]] ],

///////////////////////////////////////////////////////////Cop Cars////////////////////////////////////////////////////////////////////

["Copcar",["Fahrzeug", "car"],["Copcar", "Holden Monaro Police (Basic)"],[15000, 13000], [2, "car", "", 180], [350, [1,0,0,1] ], "Copcar" call ISSE_Cfg_Vehicle_GetName,"Copcar" call ISSE_Cfg_Vehicle_GetDesc,[["stahl", 10],["ebauteile", 1],["glas", 2],["plastik", 2],["erdoel", 5]] ], 
["Copcarnz",["Fahrzeug", "car"],["Copcarnz", "Holden Monaro Police (New Zealand)"],[15000, 13000], [2, "car", "", 180], [350, [1,0,0,1] ], "Copcarnz" call ISSE_Cfg_Vehicle_GetName,"Copcarnz" call ISSE_Cfg_Vehicle_GetDesc,[["stahl", 10],["ebauteile", 1],["glas", 2],["plastik", 2],["erdoel", 5]] ], 
["Copcarhw",["Fahrzeug", "car"],["Copcarhw", "Holden Monaro Highway patrol (Maroon)"],[15000, 13000], [2, "car", "", 180], [350, [1,0,0,1] ], "Copcarhw" call ISSE_Cfg_Vehicle_GetName,"Copcarhw" call ISSE_Cfg_Vehicle_GetDesc,[["stahl", 10],["ebauteile", 1],["glas", 2],["plastik", 2],["erdoel", 5]] ], 
["Copcarhw2",["Fahrzeug", "car"],["Copcarhw2", "Holden Monaro Highway patrol (White)"],[15000, 13000], [2, "car", "", 180], [350, [1,0,0,1] ], "Copcarhw2" call ISSE_Cfg_Vehicle_GetName,"Copcarhw2" call ISSE_Cfg_Vehicle_GetDesc,[["stahl", 10],["ebauteile", 1],["glas", 2],["plastik", 2],["erdoel", 5]] ], 
["Copcaraus",["Fahrzeug", "car"],["Copcaraus", "Holden Monaro Australia (Blue)"],[15000, 13000], [2, "car", "", 180], [350, [1,0,0,1] ], "Copcaraus" call ISSE_Cfg_Vehicle_GetName,"Copcaraus" call ISSE_Cfg_Vehicle_GetDesc,[["stahl", 10],["ebauteile", 1],["glas", 2],["plastik", 2],["erdoel", 5]] ], 
["CopcarAusgreen",["Fahrzeug", "car"],["CopcarAusgreen", "Holden Monaro Australia (Green)"],[15000, 13000], [2, "car", "", 180], [350, [1,0,0,1] ], "CopcarAusgreen" call ISSE_Cfg_Vehicle_GetName,"CopcarAusgreen" call ISSE_Cfg_Vehicle_GetDesc,[["stahl", 10],["ebauteile", 1],["glas", 2],["plastik", 2],["erdoel", 5]] ], 
["HMMWV",["Fahrzeug", "truck"],["HMMWV", "HMMWV"], [35000, 30250], [2, "car", "response_training", 160], [350, [1,1,0,3] ], "HMMWV" call ISSE_Cfg_Vehicle_GetName, "HMMWV" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 14],["ebauteile", 2],["glas", 2],["plastik", 3],["erdoel", 5]] ],

///////////////////////////////////////////////////////////Trucks/////////////////////////////////////////////////////////////////////////

["V3S_Civ",["Fahrzeug", "truck"],["Praha V3S", "Praha V3S"],[40000, 30000], [3, "truck", "patrol_training", 600], [500,[1,0,0,13]], "Truck5t" call ISSE_Cfg_Vehicle_GetName, "Truck5t" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 17],["ebauteile", 2],["glas", 2],["plastik", 3],["erdoel", 6]] ],
["Ural_CDF",["Fahrzeug", "truck"],["Ural_CDF", "Ural"],[40000, 30000], [3, "truck", "patrol_training", 600], [500,[1,0,0,13]], "Truck5t" call ISSE_Cfg_Vehicle_GetName, "Truck5t" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 17],["ebauteile", 2],["glas", 2],["plastik", 3],["erdoel", 6]] ],
["UralOpen_CDF", ["Fahrzeug", "truck"],["UralOpen", "Ural Open"], [40000, 30000],[3, "truck", "patrol_training", 600], [500, [1,0,0,13] ], "Truck5tOpen" call ISSE_Cfg_Vehicle_GetName, "Truck5tOpen" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 17],["ebauteile", 2],["glas", 2],["plastik", 3],["erdoel", 6]] ],
["UralCivil", ["Fahrzeug", "truck"],["UralCivil", "Civil Ural #1"],[40000, 30000],[3, "truck", "response_training", 600], [500, [1,0,0,14] ], "UralCivil" call ISSE_Cfg_Vehicle_GetName,"UralCivil" call ISSE_Cfg_Vehicle_GetDesc,[["stahl", 17],["ebauteile", 2],["glas", 2],["plastik", 3],["erdoel", 6]] ],
["UralCivil2",["Fahrzeug", "truck"],["UralCivil2", "Civil Ural #2"],[40000, 30000], [3, "truck", "response_training", 600], [500,[1,0,0,14]], "UralCivil2" call ISSE_Cfg_Vehicle_GetName, "UralCivil2" call ISSE_Cfg_Vehicle_GetDesc, [["stahl", 17],["ebauteile", 2],["glas", 2],["plastik", 3],["erdoel", 6]] ],
["Kamaz", ["Fahrzeug", "truck"],["Kamaz", "Kamaz"],[40000, 30000],[3, "truck", "patrol_training", 600], [500, [1,0,0,14] ], "Kamaz" call ISSE_Cfg_Vehicle_GetName,"Kamaz" call ISSE_Cfg_Vehicle_GetDesc,[["stahl", 17],["ebauteile", 2],["glas", 2],["plastik", 3],["erdoel", 6]] ],
["KamazOpen", ["Fahrzeug", "truck"],["KamazOpen", "Kamaz (Open)"],[40000, 30000],[3, "truck", "patrol_training", 600], [500, [1,0,0,14] ], "KamazOpen" call ISSE_Cfg_Vehicle_GetName,"KamazOpen" call ISSE_Cfg_Vehicle_GetDesc,[["stahl", 17],["ebauteile", 2],["glas", 2],["plastik", 3],["erdoel", 6]] ],

///////////////////////////////////////////////////////////////Bus's///////////////////////////////////////////////////////////////////////

["Ikarus", ["Fahrzeug", "truck"],["Ikarus", "Bus"],[35000, 26250],[3, "truck", "response_training", 250], [500, [1,0,0,12] ], "Bus_city" call ISSE_Cfg_Vehicle_GetName,"Bus_city" call ISSE_Cfg_Vehicle_GetDesc,[["stahl", 14],["ebauteile", 2],["glas", 2],["plastik", 3],["erdoel", 5]] ],

////////////////////////////////////////////////////////////////Tanks//////////////////////////////////////////////////////////////////////////

["BRDM2_INS", ["Fahrzeug", "armored"],["BRDM2_INS", "BRDM2"],[800000, 30000],[3, "terrorist", "terrorist", 200], [750, [1,0,0,1] ], "BRDM2","BRDM2",[] ],
["T34", ["Fahrzeug", "armored"],["T34", "T34"],[1400000, 30000],[3, "terrorist", "terrorist", 120], [750, [1,0,0,1] ], "T34","T34",[] ],
["T72_INS", ["Fahrzeug", "armored"],["T72_INS", "T72"],[1000000, 30000],[3, "terrorist", "terrorist", 120], [750, [1,0,0,1] ], "T72","T72",[] ]



];


///////////////////////////////////////////////////////////////// Item Arrays/////////////////////////////////////////////////////////////////////////

INV_AlleItemsArray = [

["geld",["Item", "geld"], ["Money", "Money"], [1, 1],[0, ""],[true,true,true, false, ""],localize "STRS_item_geld", localize "STRS_item_geld_info",[]],
["BlueDye",["Item", "carobjects"],["BlueDye", "Blue Dye"],[0, 0], [0, ""], [false,false, false,false,""],localize "STRS_inv_item_BlueDye",localize "STRS_inv_item_BlueDye_info", [] ],
["medikit",["Item", "service"],["medikit", "Medikit"],[2500, 1500], [2, "medic", "probator"], [true, true, true,false,"medkit.sqf"],localize "STRS_inv_item_medikit",localize "STRS_inv_item_medikit_info", [["plastik", 1],["stahl", 2]] ], 
["reparaturkit",["Item", "service"],["reparaturkit", "Large Repair Kit"],[1250, 950], [4, "engineer", ""],[true,true,true, false, "largerepair.sqf"],localize "STRS_inv_item_repairkit", localize "STRS_inv_item_repairkit_info",[["plastik", 1],["stahl", 2]] ],
//["towrope",["Item", "service"],["towrope", "Tow Rope"],[1525, 1020], [4, "engineer", "patrol_training"],[true,true,true, false, "noscript.sqf"],localize "STRS_inv_item_towkit", localize "STRS_inv_item_towkit_info",[["plastik", 1],["stahl", 2]] ],
["lighter",["Item", "service"],["lighter", "lighter"],[2, 1], [0.5, "", ""],[true,true,true, false, "ignitefuel.sqf"],localize "STRS_inv_item_lighter", localize "STRS_inv_item_lighter_info",[["erdoel", 2]] ],
["kleinesreparaturkit", ["Item", "service"],["kleinesreparaturkit", "Repair Kit"],[1050, 750], [2, "", ""],[true,true,true, false, "repair.sqf"],localize "STRS_inv_item_repairkit",localize "STRS_inv_item_repairkit_info",[["plastik", 1]] ],
["kanister", ["Item", "service"],["kanister", "Refuel Can"], [900, 600], [2, "", ""],[true,true,true, false, "refuelveh.sqf"], localize "STRS_inv_item_kanister", localize "STRS_inv_item_kanister_info",[["plastik", 1],["erdoel", 1]] ],
["Fuelline", ["Item", "service"],["Syphon Fuelkit", "Syphon Fuel-kit"], [50, 20], [1, "", ""],[true,true,true, false, "syphon.sqf"], localize "STRS_inv_item_fuelcut", localize "STRS_inv_item_fuelcut_info",[["stahl", 1]] ],
["OilBarrel", ["Item", "service"],["Oil Barrel", "Oil Barrel"], [50000, 40000], [10, "", ""],[true,true,true, false, "refuelveh.sqf"], "Barrel of oil", localize "STRS_inv_item_kanister_info",[["Oil", 50]] ],
["schluesselbund",["Item", "carobjects"],["schluesselbund", "Key chain"],[0, 0], [0, ""], [false,false, false,false,"keys.sqf"],localize "STRS_inv_item_schluesselbund",localize "STRS_inv_item_schluesselb_info", [] ],
["lockpick", ["Item", "carobjects"],["Dietrich", "Lockpick"], [270, 200], [0.5, "", ""],[true,true,true, false, "lockpick.sqf"],localize "STRS_item_lockpick",localize "STRS_item_lockpick_info", [["stahl", 1]] ],

////////////////////////////////////////////////////////Piss Heads/////////////////////////////////////////////////////////////////////////////////////////

["beer",["Item", "drink"],["beer", "Light Beer"],[800, 500], [0.5, ""], [true, true, true,false,"alkeffekt.sqf"],localize "STRS_inv_item_beer",localize "STRS_inv_item_alkohol_info", [["quellwasser", 1], ["hopfen", 1]] ],
["beer2",["Item", "drink"],["beer2", "Dark Beer"],[800, 500], [0.5, ""], [true, true, true,false,"alkeffekt.sqf"],localize "STRS_inv_item_beer",localize "STRS_inv_item_alkohol_info", [["quellwasser", 1], ["hopfen", 1]] ],
["vodka",["Item", "drink"],["vodka", "Vodka"],[1000, 700], [0.5, ""], [true, true, true,false,"alkeffekt.sqf"],localize "STRS_inv_item_vodka",localize "STRS_inv_item_alkohol_info", [["quellwasser", 1], ["hopfen", 1]] ],
["smirnoff",["Item", "drink"],["smirnoff", "Smirnoff ICE"],[900, 600], [0.5, ""], [true, true, true,false,"alkeffekt.sqf"],localize "STRS_inv_item_smirnoff",localize "STRS_inv_item_alkohol_info", [["quellwasser", 1], ["hopfen", 1]] ],
["wiskey",["Item", "drink"],["wiskey", "Wiskey"],[1200, 900], [0.5, ""], [true, true, true,false,"alkeffekt.sqf"],localize "STRS_inv_item_wiskey",localize "STRS_inv_item_alkohol_info", [["quellwasser", 1], ["hopfen", 1]] ],
["wine",["Item", "drink"],["wine", "White Wine"],[1200, 900], [0.5, ""], [true, true, true,false,"alkeffekt.sqf"],localize "STRS_inv_item_wine",localize "STRS_inv_item_alkohol_info", [["quellwasser", 1], ["hopfen", 1]] ],
["wine2",["Item", "drink"],["wine2", "Red Wine"],[1100, 800], [0.5, ""], [true, true, true,false,"alkeffekt.sqf"],localize "STRS_inv_item_wine",localize "STRS_inv_item_alkohol_info", [["quellwasser", 1], ["hopfen", 1]] ],

/////////////////////////////////////////////////////////Guns and Bombs in Items/////////////////////////////////////////////////////////////////////////////

["gewehr",["Item", "weapon"], ["gewehr", "Rifle"],[0, 0],[0, ""],[false, false,true, true, "holsterscript.sqf"], localize "STRS_inv_item_waffe",localize "STRS_inv_item_waffe_info", []],
["waffentasche",["Item", "misc"],["waffentasche", "Weaponbag"],[100, 50], [0.5, "", ""], [true, true, true,false,"weaponbag.sqf"],localize "STRS_inv_item_waffentascbe",localize "STRS_inv_item_waffentascbe_info", [["plastik", 1]]],
["Itembag",["Item", "misc"],["Itembag", "Itembag"],[100, 50], [0.5, "", ""], [true, true, true,false,"itembag.sqf"],"itembag","use when near dropped items to delete them", [["plastik", 1]]],
["defuser",["Item", "misc"], ["defuser", "Defuser"],[500, 300], [0.5, "bomb", "response_training"], [true,true,true, false, "defuser.sqf"], localize "STRS_inv_item_defuser", localize "STRS_inv_item_defuser_info", [["stahl", 1],["ebauteile", 1]]],
["bankversicherung", ["Item", "misc"], ["bankversicherung", "Bank insurance"],[500, 200], [0, ""],[true,true,true, false, "nouse.sqf"], localize "STRS_item_versicherung", localize "STRS_item_versicherung_info",[]],
["fernzuenderbombe",["Item", "bomb"],["fernzuenderbombe", "Remote Bomb"],[50000, 37500], [5, "terrorist", "sobr_training"], [true, true, true,true,"bombs.sqf"],localize "STRS_inv_item_fernbombe",localize "STRS_inv_item_fernbombe_info", [["kupfer", 20],["schwarzpulver", 22],["ebauteile", 3]]],
["zeitzuenderbombe",["Item", "bomb"],["zeitzuenderbombe", "Time Bomb"],[50000, 37500], [5, "terrorist", "sobr_training"], [true, true, true,true,"bombs.sqf"],localize "STRS_inv_item_zeitbombe",localize "STRS_inv_item_zeitbombe_info", [["kupfer", 20],["schwarzpulver", 22],["ebauteile", 3]] ],
["aktivierungsbombe", ["Item", "bomb"], ["aktivierungsbombe", "Activation Bomb"], [50000, 37500],[5, "terrorist", "sobr_training"],[true,true,true, true, "bombs.sqf"],localize "STRS_inv_item_enginebombe",localize "STRS_inv_item_enginebombe_info",[["kupfer", 20],["schwarzpulver", 22],["ebauteile", 3]] ],
["geschwindigkeitsbombe",["Item", "bomb"], ["geschwindigkeitsbombe", "Speed Bomb"], [50000, 37500],[5, "terrorist", "sobr_training"],[true,true,true, true, "bombs.sqf"],localize "STRS_inv_item_speedbombe",localize "STRS_inv_item_speedbombe_info",[["kupfer", 20],["schwarzpulver", 22],["ebauteile", 3]] ], 
["selbstmordbombe",["Item", "bomb"],["selbstmordbombe", "Suicide Bomb"],[50000, 37500], [5, "terrorist", "sobr_training"], [true, true, true,true,"suicide.sqf"],localize "STRS_inv_item_selbstmordbombe",localize "STRS_inv_item_selbstmordbombe_info", [["kupfer", 20],["schwarzpulver", 22],["ebauteile", 3]]],
["fernzuender", ["Item", "bomb"], ["fernzuender", "Remote Control"], [50000, 7500], [0.5, ""],[true,true,true, true, "bombs.sqf"],localize "STRS_inv_item_fernzuender",localize "STRS_inv_item_zuender_info", [["ebauteile", 2],["plastik", 2]]],
["pistole",["Item", "weapon"], ["pistole", "Pistol"],[0, 0],[0, ""],[false, false,true, true, "holsterscript.sqf"], localize "STRS_inv_item_waffe",localize "STRS_inv_item_waffe_info", []],
["vclammo",["Item", "carobjects"],["vclammo", "Vehicle Ammo"],[10000, 7500], [10, "engineer", "response_training"], [true, true, true,!(iscop),"vclammo.sqf"],localize "STRS_inv_item_vclammo",localize "STRS_inv_item_vclammo_info", [["kupfer", 5],["schwarzpulver", 5]] ],

///////////////////////////////////////////////////////////Food/////////////////////////////////////////////////////////////////////////////////////////////////

["boar",["Item", "food"],["boar", "Boar meat"],[1500, 1200], [2, ""], [true, true, true,false,"food.sqf"],"Boar meat","Boar meat", [] ], 
["chips",["Item", "food"],["chips", "Chip's"],[1000, 900], [0.2, ""], [true, true, true,false,"food.sqf"],localize "STRS_inv_item_chips",localize "STRS_inv_item_nahrung_info", [] ], 
["strangemeat",["Item", "food"],["strangemeat", "Weet Bix"],[100, 50], [1, ""], [true, true, true,false,"food.sqf"],"Strange meat","Strange meat", [] ], 
["fisch",["Item", "food"],["fisch", "Tim Tam's"],[500, 300], [0.3, ""], [true, true, true,false,"food.sqf"],localize "STRS_inv_item_fisch",localize "STRS_inv_item_nahrung_info", [] ],
["blowfish",["Item", "food"],["blowfish", "Blowfish"],[100, 50], [0.2, ""], [true, true, true,false,"food.sqf"],localize "STRS_inv_item_fisch",localize "STRS_inv_item_nahrung_info", [] ], 
["mackerel",["Item", "food"],["mackerel", "Mackerel"],[700, 500], [0.3, ""], [true, true, true,false,"food.sqf"],localize "STRS_inv_item_fisch",localize "STRS_inv_item_nahrung_info", [] ], 
["herring",["Item", "food"],["herring", "Herring"],[400, 300], [0.3, ""], [true, true, true,false,"food.sqf"],localize "STRS_inv_item_fisch",localize "STRS_inv_item_nahrung_info", [] ], 
["bass",["Item", "food"],["bass", "Deep Sea Bass"],[1000, 800], [0.5, ""], [true, true, true,false,"food.sqf"],localize "STRS_inv_item_fisch",localize "STRS_inv_item_nahrung_info", [] ], 
["getreide", ["Item", "ressource"], ["getreide", "Wheat"],[200, 100], [0.5, ""],[true,true,true, false, "food.sqf"],localize "STRS_inv_item_getreide", localize "STRS_inv_item_nahrung_info", []],
["Bread",["Item", "food"],["Bread", "Vegemite Sandwich"],[400, 300], [0.3, ""], [true, true, true,false,"food.sqf"],localize "STRS_inv_item_Bread",localize "STRS_inv_item_nahrung_info", [["getreide", 2]] ],
["CheeseBurger",["Item", "food"],["CheeseBurger", "CheeseBurger"],[100, 100], [0.2, ""], [true, true, true,false,"food.sqf"],localize "STRS_inv_item_CheeseBurger",localize "STRS_inv_item_nahrung_info", [] ],

////////////////////////////////////////////////////////////////////////////Construction////////////////////////////////////////////////////////

["Sign_Danger",["Item", "misc"],["Sign_Danger", "Danger"],[200, 200], [20, "engineer", "patrol_training"], [true, true, true,false,"createobject.sqf"],localize "STRS_inv_item_objs",localize "STRS_inv_item_objs_info", [] ],
["Land_Wall_Gate_Ind1_L",["Item", "misc"],["Land_Wall_Gate_Ind1_L", "Gate"],[10000, 7500], [10, "engineer", "patrol_training"], [true, true, true,false,"createobject.sqf"],localize "STRS_inv_item_objs",localize "STRS_inv_item_objs_info", [] ],
["Land_Wall_CBrk_5_D",["Item", "misc"],["Land_Wall_CBrk_5_D", "Brick Wall"],[5000, 3500], [10, "engineer", "patrol_training"], [true, true, true,false,"createobject.sqf"],localize "STRS_inv_item_objs",localize "STRS_inv_item_objs_info", [] ],
["Land_Wall_CGry_5_D",["Item", "misc"],["Land_Wall_CGry_5_D", "Concrete Wall"],[5000, 3500], [10, "engineer", "patrol_training"], [true, true, true,false,"createobject.sqf"],localize "STRS_inv_item_objs",localize "STRS_inv_item_objs_info", [] ],
["Land_Barn_Metal",["Item", "misc"],["Land_Barn_Metal", "Shed"],[10000, 7500], [10, "engineer", "patrol_training"], [true, true, true,false,"createobject.sqf"],localize "STRS_inv_item_objs",localize "STRS_inv_item_objs_info", [] ],
["Fort_RazorWire",["Item", "misc"],["Fort_RazorWire", "Wire"],[2000, 1500], [10, "engineer", "patrol_training"], [true, true, true,false,"createobject.sqf"],localize "STRS_inv_item_objs",localize "STRS_inv_item_objs_info", [] ],
["RoadCone",["Item", "misc"],["RoadCone", "RoadCone"],[200, 200], [10, "engineer", "patrol_training"], [true, true, true,false,"createobject.sqf"],localize "STRS_inv_item_objs",localize "STRS_inv_item_objs_info", [] ],
["Land_Campfire",["Item", "misc"],["Land_Campfire", "Camp Fire"],[200, 200], [10, "engineer", "patrol_training"], [true, true, true,false,"createobject.sqf"],localize "STRS_inv_item_objs",localize "STRS_inv_item_objs_info", [] ],
["Pile_of_wood",["Item", "misc"],["Pile_of_wood", "Pile of Wood"],[200, 200], [10, "engineer", "patrol_training"], [true, true, true,false,"createobject.sqf"],localize "STRS_inv_item_objs",localize "STRS_inv_item_objs_info", [] ],
["Fence",["Item", "misc"],["Fence", "Fence"],[200, 200], [10, "engineer", "patrol_training"], [true, true, true,false,"createobject.sqf"],localize "STRS_inv_item_objs",localize "STRS_inv_item_objs_info", [] ],

//////////////////////////////////////////////////////////////////////Resources////////////////////////////////////////////////////////////////////////

["holz",["Item", "ressource"],["holz", "Wood"],[25, 10], [0.5, ""], [true, true, true,false,"useresource.sqf"],localize "STRS_item_holz",localize "STRS_item_farmitem_info", [] ],
["eisenerz",["Item", "ressource"],["eisenerz", "Iron ore"], [25, 10],[0.5, ""],[true,true,true, false, "useresource.sqf"], localize "STRS_item_eisenerz",localize "STRS_item_farmitem_info", []],
["mineraloel",["Item", "ressource"],["mineraloel", "Mineral oil"],[50, 25], [1, ""], [true, true, true,false,"useresource.sqf"],localize "STRS_item_mineraloel",localize "STRS_item_farmitem_info", [["erdoel", 1],["kohle", 1]]], 
["ebauteile", ["Item", "ressource"],["ebauteile", "Electronic components"],[50, 25],[2.5, ""],[true,true,true, false, "useresource.sqf"], localize "STRS_item_ebauteile",localize "STRS_item_farmitem_info", [["silizium", 1],["kupfer", 2],["erdoel", 2]] ], 
["silizium", ["Item", "ressource"],["silizium", "Silicon"], [25, 10],[0.5, ""],[true,true,true, false, "useresource.sqf"], localize "STRS_item_silizium",localize "STRS_item_farmitem_info", []], 
["kupfer",["Item", "ressource"],["kupfer", "Copper"],[25, 10],[0.5, ""],[true,true,true, false, "useresource.sqf"], localize "STRS_item_kupfer",localize "STRS_item_farmitem_info", []],
["stahl",["Item", "ressource"],["stahl", "Steel"], [50, 25],[1, ""],[true,true,true, false, "useresource.sqf"], localize "STRS_item_stahl", localize "STRS_item_farmitem_info", [["eisenerz", 1],["kohle", 1]] ],
["schwarzpulver",["Item", "ressource"],["schwarzpulver", "Black powder"],[50, 25], [1, ""], [true, true, true,false,"useresource.sqf"],localize "STRS_item_schwarzpulver",localize "STRS_item_farmitem_info", [["kohle", 1],["schwefel", 1]]], 
["schwefel", ["Item", "ressource"],["schwefel", "Sulfur"],[50, 25],[0.5, ""],[true,true,true, false, "useresource.sqf"], localize "STRS_item_schwefel",localize "STRS_item_farmitem_info", []],
["kohle",["Item", "ressource"],["kohle", "Coal"],[25, 10], [0.5, ""], [true, true, true,false,"useresource.sqf"],localize "STRS_item_kohle",localize "STRS_item_farmitem_info", [["holz", 1]]],
["Diamond",["Item", "ressource"],["Diamond", "Diamond"],[25, 10], [0.5, ""], [true, true, true,false,"useresource.sqf"],"Diamond",localize "STRS_item_farmitem_info", []],
["Gold",["Item", "ressource"],["Gold", "Gold"],[25, 10], [2, ""], [true, true, true,false,"useresource.sqf"],localize "STRS_item_Gold",localize "STRS_item_farmitem_info", []],
["Oil",["Item", "ressource"],["Oil", "Oil"],[25, 10], [0.5, ""], [true, true, true,false,"useresource.sqf"],"Oil",localize "STRS_item_farmitem_info", []],
["erdoel",["Item", "ressource"],["erdoel", "Petroleum"], [25, 10],[0.5, ""],[true,true,true, false, "useresource.sqf"], localize "STRS_item_erdoel",localize "STRS_item_farmitem_info", [["Oil", 1]]],
["glas",["Item", "ressource"],["glas", "Glass"], [50, 25],[1.5, ""],[true,true,true, false, "useresource.sqf"], localize "STRS_item_glas", localize "STRS_item_farmitem_info", [["sand", 1],["kohle", 1],["silizium", 1]] ],
["plastik",["Item", "ressource"],["plastik", "Plastic"],[50, 25], [1.5, ""], [true, true, true,false,"useresource.sqf"],localize "STRS_item_plastik",localize "STRS_item_farmitem_info", [["erdoel", 2],["kohle", 1]]],
["sand", ["Item", "ressource"],["sand", "Sand"],[25, 10], [0.5, ""], [true, true, true,false,"useresource.sqf"],localize "STRS_item_sand",localize "STRS_item_farmitem_info", []],
["stahlwolle", ["Item", "ressource"],["stahlwolle", "Steel wool"],[50, 25],[1, ""],[true,true,true, false, "useresource.sqf"], localize "STRS_item_stahlwolle", localize "STRS_item_farmitem_info", [["stahl", 1]]],
["Whale",["Item", "drug"],["Whale", "Whale"],[20000, 10000], [25, ""], [true, true, true,true,"food.sqf"],"whale",localize "STRS_inv_item_nahrung_info", [] ],

///////////////////////////////////////////////////////////////////////////Drugs///////////////////////////////////////////////////////////////////////

["Unprocessed_Cocain",["Item", "drug"],["Unprocessed Cocain", "Unprocessed Cocaine"],[500, 1000], [0.5, ""], [true, true, true,true,"useresource.sqf"],localize "STRS_inv_item_cocain",localize "STRS_item_farmitem_info", [] ],
["cocaine",["Item", "drug"],["cocaine", "Cocaine"],[1500, 2500],[1, ""], [true, true, true,true,"drugs.sqf"],localize "STRS_inv_item_cocaine",localize "STRS_inv_item_drogen_info", [["Unprocessed_Cocain", 10]]],
["marijuana",["Item", "drug"],["marijuana", "Marijuana"],[1000, 2000], [0.5, ""], [true, true, true,true,"drugs.sqf"],localize "STRS_inv_item_marijuana",localize "STRS_inv_item_drogen_info", [["Marijuana_Plant", 10]]],
["heroin", ["Item", "drug"], ["heroin", "Heroin"],[2000, 3000], [1, ""],[true,true,true, true, "drugs.sqf"], localize "STRS_inv_item_heroin",localize "STRS_inv_item_drogen_info", [["Unprocessed_Heroin", 20]]],
["lsd", ["Item", "drug"], ["lsd", "LSD"],[2000, 5000], [1, ""],[true,true,true, true, "drugs.sqf"], localize "STRS_inv_item_lsd",localize "STRS_inv_item_drogen_info", []  ],
["HeroinSeed",["Item", "drug"],["Heroin Seed", "Poppy Seed"],[10000, 2000], [1, ""], [true, true, true,true,"drugplant.sqf"],"heroin seed","Used to Grow Poppy Plants", [["heroinseed", 1]]],
["CocaineSeed",["Item", "drug"],["Cocaine Seed", "Coca Seed"],[7500, 1500], [1, ""], [true, true, true,true,"drugplant.sqf"],"Cocaine Seed","Used to Grow Coca Plants", [["cocaineseed", 1]]],
["MarijuanaSeed",["Item", "drug"],["Marijuana Seed", "Marijuana Seed"],[5000, 1000], [0.5, ""], [true, true, true,true,"Drugplant.sqf"],localize "STRS_inv_item_mariseed",localize "STRS_inv_item_seed_info", [["Marijuana_Plant", 10]]],
//["Drug-Shed",["Item", "drug"],["Drug-Shed", "Drug-Shed"],[5000, 5000], [25, ""], [true, true, true,true,"UN4_DRUG\PlaceDshed.sqf"],localize "STRS_inv_item_drugshed",localize "STRS_inv_item_shed_info", [["Marihuana_Plant", 10]]],
["UPMarijuana",["Item", "drug"],["Marijuana (not processed)", "Marijuana (not processed)"],[500, 1000], [0.5, "drugs.sqf"], [true, true, true,true,"drugs.sqf"],"Unprocessed Marijuana",localize "STRS_inv_item_mariup_info", [["Marihuana_Plant", 10]]],

////////////////////////////////////////////////////////////Misc////////////////////////////////////////////////////////////////////////////////////

["Diamondring",["Item", "misc"],["Diamond Ring", "Diamond Ring"],[150000, 150000], [0.5, ""], [true, true, true, false,"nouse.sqf"],"Diamond Ring","Sell at the Jewelry store", [["Diamond", 5],["Gold", 50]]],
["EDiamondring",["Item", "misc"],["Expensive Diamond Ring", "Expensive Diamond Ring"],[400000, 400000], [0.5, ""], [true, true, true, false,"nouse.sqf"],"Expensive Diamond Ring","Sell at the Jewelry store", [["Diamond", 15],["Gold", 50]]],
["handy",["Item", "misc"], ["handy", "Mobile Phone"], [500, 300], [0.5, ""],[true,true,true, false, "handy.sqf"], localize "STRS_inv_item_handy",localize "STRS_inv_item_handy_info", [["plastik", 2],["ebauteile", 2]]],
["gasmask", ["Item", "misc"], ["gasmask", "Gas mask"],[150, 50], [2, "terrorist", "response_training"],[true,true,true, false, "nouse.sqf"], localize "STRS_item_gasmask", localize "STRS_item_gasmask_info",[["plastik", 3]] ],
["hideout",["Item", "misc"],["hideout", "Hideout"],[15000, 12000], [0, ""], [false, true, false,false,"hideout.sqf"],localize "STRS_item_hideout",localize "STRS_item_hideout_info", [] ],
["roadblock",["Item", "misc"],["Land_CncBlock_Stripes", "Roadblock"],[1000, 500], [10, "", "patrol_training"], [true, true, true,false,"createobject.sqf"],localize "STRS_inv_item_roadblock",localize "STRS_inv_item_roadblock_info", [] ],
["bargate",["Item", "misc"],["ZavoraAnim", "Bar Gate"],[500, 200], [10, "", "patrol_training"], [true, true, true,false,"createobject.sqf"],"Bargate",localize "STRS_inv_item_bargate_info", [] ],
["searchlight",["Item", "misc"],["SearchLight", "Search Light"],[300, 200], [10, "", "patrol_training"], [true, true, true,false,"createobject.sqf"],"Searchlight",localize "STRS_inv_item_searchlight_info", [] ],
["RoadBarrier_long",["Item", "misc"],["RoadBarrier_long", "Roadbarrier"],[8000, 2000], [10, "engineer", "patrol_training"], [true, true, true,false,"createobject.sqf"],localize "STRS_inv_item_objs",localize "STRS_inv_item_objs_info", [] ],
["LocalBasicWeaponsBox", ["Item", "misc"], ["LocalBasicWeaponsBox", "Storage box"],[10000, 3750], [0, "", "", 200],[true,true,true, false, "nouse.sqf"], "Storage box", "Storage box",[] ],
["Land_fortified_nest_big",["Item", "misc"],["Land_fortified_nest_big", "Bunker"],[60000, 57500], [20, "engineer", "patrol_training"], [true, true, true,false,"createobject.sqf"],localize "STRS_inv_item_objs",localize "STRS_inv_item_objs_info", [] ],
["stoersender",["Item", ",misc"],["stoersender", "Radio jammer"],[29000, 27000],[15, "engineer"], [true, true, true,true,"3121315.sqf"],localize "STRS_item_stoersender",localize "STRS_item_stoersender_info", [["plastik", 4],["ebauteile", 4]] ],
["cl_Spikestrip", ["Item", "misc"], ["cl_Spikestrip", "Spikestrip"],[1900, 1250], [0, "", "patrol_training"],[true,true,true, false, "createobject.sqf"], "cl_Spikestrip", localize "STRS_inv_item_roadblock_info",[["stahl", 1],["plastik", 1]] ],
//["fishgun", ["Item", "misc"], ["fishgun", "Boat Gun"],[30000, 3750], [20, "bomb", "bomb", 600],[true,true,true, false, "fishguns.sqf"], "Hideout storage", "Hideout storage",[] ],
//["fishingpole", ["Item", "Shop"], ["fishingpole", "Fishing Pole"],[4000, 3750], [5, "", ""],[true,true,true, false, "fishing.sqf"], "Fishing Pole", "Use it in a fishing area.",[["steel", 1], ["plastic", 1],["ebauteile", 1]] ],

//////////////////////////////////////////////////////////////////Mining Tools//////////////////////////////////////////////////////////////////////////

["Shovel", ["Item", "misc"], ["Shovel", "Shovel"],[50, 35], [5, "", ""],[true,true,true, false, "mine.sqf"], "Shovel", "Use it in a mining area. Durability: 20 Mining speed: slow",[["holz", 2]] ],
["Pickaxe", ["Item", "misc"], ["Pickaxe", "Pickaxe"],[100, 50], [5, "", ""],[true,true,true, false, "mine.sqf"], "Pickaxe", "Use it in a mining area. Durability: 50 Mining speed: average",[ ["holz", 2]] ],
["JackHammer", ["Item", "misc"], ["JackHammer", "Jack Hammer"],[500, 250], [20, "Oil_1", ""],[true,true,true, false, "mine.sqf"], "Jack Hammer", "Use it in a mining area. Durability: 100 Mining speed: fast",[["stahl", 1], ["plastik", 1],["ebauteile", 1]] ],

///////////////////////////////////////////////////////////////Speed Upgrades-Nitro//////////////////////////////////////////////////////////////////////

["nitro",["Item", "carobjects"],["nitro", "Nitro"], [5000, 4000], [2, "engineer", "patrol_training"],[true,true,true, false, "nitro.sqf"], localize "STRS_inv_item_nitro",localize "STRS_inv_item_nitro_info", [["stahl", 1],["ebauteile", 1],["plastik", 1],["erdoel", 10]]],
["supgrade1",["Item", "carobjects"],["nitro", "Speed Upgrade 1"], [5000, 3000], [5, "engineer", "patrol_training"],[true,true,true, false, "supgrade.sqf"], "Speed Upgrade 1",localize "STRS_inv_item_supgrade_info", [["stahl", 1],["ebauteile", 1],["plastik", 1],["erdoel", 10]]],
["supgrade2",["Item", "carobjects"],["nitro", "Speed Upgrade 2"], [7500, 5000], [5, "engineer", "patrol_training"],[true,true,true, false, "supgrade.sqf"], "Speed Upgrade 2",localize "STRS_inv_item_supgrade_info", [["stahl", 1],["ebauteile", 1],["plastik", 1],["erdoel", 10]]],
["supgrade3",["Item", "carobjects"],["nitro", "Speed Upgrade 3"], [25000, 10000], [5, "engineer", "patrol_training"],[true,true,true, false, "supgrade.sqf"], "Speed Upgrade 3",localize "STRS_inv_item_supgrade_info", [["stahl", 1],["ebauteile", 1],["plastik", 1],["erdoel", 10]]],
["supgrade4",["Item", "carobjects"],["nitro", "Speed Upgrade 4"], [45000, 12000], [5, "engineer", "patrol_training"],[true,true,true, false, "supgrade.sqf"], "Speed Upgrade 4",localize "STRS_inv_item_supgrade_info", [["stahl", 1],["ebauteile", 1],["plastik", 1],["erdoel", 10]]],
["supgrade5",["Item", "carobjects"],["nitro", "Speed Upgrade 5"], [55000, 14000], [5, "engineer", "patrol_training"],[true,true,true, false, "supgrade.sqf"], "Speed Upgrade 5",localize "STRS_inv_item_supgrade_info", [["stahl", 1],["ebauteile", 1],["plastik", 1],["erdoel", 10]]]

];

// Create an Array of Everything
AlleMissionsObjekte = INV_AlleWaffenObjekte + INV_AlleMagazinObjekte + INV_AlleFahrzeugeArray + INV_AlleItemsArray;
INV_ItemTypenArray = [ ["Item", "Item", 5], ["Fahrzeug", "Vehicle",5], ["Magazin","Magazine",5], ["Waffe","Weapon",5]];
