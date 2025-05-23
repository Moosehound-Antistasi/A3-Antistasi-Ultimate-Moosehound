/* (_policeLoadoutData get "SMGs") append [
    ["SPE_M1A1_Carbine","","","",["SPE_15Rnd_762x33","SPE_15Rnd_762x33","SPE_15Rnd_762x33_t","SPE_15Rnd_762x33_t"], [], ""], 1,
    ["SPE_M1_Carbine",["SPE_ACC_GL_M8", 1, "", 4],"","",["SPE_15Rnd_762x33","SPE_15Rnd_762x33","SPE_15Rnd_762x33_t","SPE_15Rnd_762x33_t"], [], ""], 2,

    ["SPE_Fusil_Mle_208_12_Sawedoff","","","",["SPE_2Rnd_12x65_No4_Buck","SPE_2Rnd_12x65_Pellets","SPE_2Rnd_12x65_Slug","SPE_2Rnd_12x65_No4_Buck"], [], ""], 0.1,
    ["SPE_Fusil_Mle_208_12","","","",["SPE_2Rnd_12x65_No4_Buck","SPE_2Rnd_12x65_Pellets","SPE_2Rnd_12x65_Slug","SPE_2Rnd_12x65_No4_Buck"], [], ""], 0.25,

    ["SPE_Model_37_Trenchgun",["SPE_ACC_M1917_Bayo", 1, "", 4],"","",["SPE_5Rnd_12x70_No4_Buck","SPE_5Rnd_12x70_Pellets","SPE_5Rnd_12x70_Slug","SPE_5Rnd_12x70_Slug"], [], ""], 1,
    ["SPE_Model_37_Riotgun","","","",["SPE_5Rnd_12x70_No4_Buck","SPE_5Rnd_12x70_Pellets","SPE_5Rnd_12x70_Slug","SPE_5Rnd_12x70_Slug"], [], ""], 2
];

(_policeLoadoutData get "sidearms") append [
    ["SPE_M1911","","","",["SPE_7Rnd_45ACP_1911","SPE_7Rnd_45ACP_1911","SPE_7Rnd_45ACP_1911"], [], ""], 4,
    ["SPE_P08","","","",["SPE_8Rnd_9x19_P08","SPE_8Rnd_9x19_P08","SPE_8Rnd_9x19_P08"], [], ""], 2
];
//////////////////////////////////////////////////////

(_militiaLoadoutData get "rifles") append [
    ["SPE_STG44","","","",["SPE_30Rnd_792x33","SPE_30Rnd_792x33","SPE_30rnd_792x33_t"],[],""], 4,
    ["SPE_M1918A2_BAR","",["SPE_M1918A2_BAR_Handle", 1, "", 1],"",["SPE_20Rnd_762x63","SPE_20Rnd_762x63_M1","SPE_20Rnd_762x63_M2_AP"],["SPE_M1918A2_BAR_Bipod", 1, "", 3],""], 1,
    ["SPE_M1918A2_erla_BAR","",["SPE_M1918A2_BAR_Handle", 1, "", 1],"",["SPE_20Rnd_762x63","SPE_20Rnd_762x63_M1","SPE_20Rnd_762x63_M2_AP"],[], ["SPE_M1918A2_BAR_Bipod", 1, "", 3]], 0.5,
    ["SPE_M1918A0_BAR","","","",["SPE_20Rnd_762x63","SPE_20Rnd_762x63_M1","SPE_20Rnd_762x63_M2_AP"],[],""], 0.25,
    ["SPE_FG42_E","","",["SPE_Optic_ZFG42", 1, "", 1],["SPE_20Rnd_792x57","SPE_20Rnd_792x57_t2","SPE_20Rnd_792x57_SMK","SPE_20Rnd_792x57_sS","SPE_20Rnd_792x57_t"],[],""], 0.4 //FG42s are unobtanium
];

(_militiaLoadoutData get "marksmanRifles") append [ //most of these are terrible DMRs and thus will be uncommon
    ["SPE_M1903A3_Springfield", ["SPE_ACC_M1_Bayo", 1, "SPE_ACC_M1905_Bayo", 1, "SPE_ACC_GL_M1", 2, "", 3],"","",["SPE_5Rnd_762x63","SPE_5Rnd_762x63_M1","SPE_5Rnd_762x63_t","SPE_5Rnd_762x63_M2_AP","SPE_5Rnd_762x63_M2_AP"],[],""], 0.5,
    ["SPE_M1_Garand",["SPE_ACC_M1_Bayo", 1, "SPE_ACC_M1905_Bayo", 1, "SPE_ACC_GL_M7", 2, "", 3],"","",["SPE_8Rnd_762x63","SPE_8Rnd_762x63_M1","SPE_8Rnd_762x63_t","SPE_8Rnd_762x63_M2_AP"],[],""], 1,
    ["SPE_K98_Late",["SPE_ACC_K98_Bayo", 1, "SPE_ACC_GW_SB_Empty", 2, "", 3],"","",["SPE_5Rnd_792x57","SPE_5Rnd_792x57_t","SPE_5Rnd_792x57_SMK","SPE_5Rnd_792x57_sS"],[],""], 0.25,
    ["SPE_K98", ["SPE_ACC_K98_Bayo", 1, "SPE_ACC_GW_SB_Empty", 2, "", 3],"","",["SPE_5Rnd_792x57","SPE_5Rnd_792x57_t","SPE_5Rnd_792x57_SMK","SPE_5Rnd_792x57_sS"],[],""], 0.2,
    ["SPE_G43","","","",["SPE_10Rnd_792x57","SPE_10Rnd_792x57_T2","SPE_10Rnd_792x57_SMK","SPE_10Rnd_792x57_sS","SPE_10Rnd_792x57_T"],[],""], 0.5
];
//["Weapon", "Muzzle", "Rail", "Sight", [], [], "Bipod"];
(_militiaLoadoutData get "machineGuns") append [
    ["SPE_MG42","","","",["SPE_50Rnd_792x57","SPE_50Rnd_792x57_SMK","SPE_50Rnd_792x57_sS","SPE_100Rnd_792x57_SMK"],[],""], 3,
    ["SPE_MG34","","","",["SPE_50Rnd_792x57","SPE_50Rnd_792x57_SMK","SPE_50Rnd_792x57_sS","SPE_100Rnd_792x57_SMK"],[],""], 2,
    ["SPE_M1919A6","","","",["SPE_50Rnd_762x63","SPE_50Rnd_762x63_M1","SPE_50Rnd_762x63_M2_AP","SPE_100Rnd_762x63_M2_AP"],[],""], 1,
    ["SPE_M1919A4","","","",["SPE_50Rnd_762x63","SPE_50Rnd_762x63_M1","SPE_50Rnd_762x63_M2_AP","SPE_100Rnd_762x63_M2_AP"],[],""], 0.5,
    ["SPE_FM_24_M29","","","",["SPE_25Rnd_75x54","SPE_25Rnd_75x54","SPE_25Rnd_75x54_35P_AP","SPE_25Rnd_75x54_35P_AP","SPE_25Rnd_75x54_35P_AP","SPE_25Rnd_75x54_35P_AP"],[],""], 1,
    ["SPE_LMG_303_Mk2","","","",["SPE_30Rnd_770x56","SPE_30Rnd_770x56_AP_MKI","SPE_30Rnd_770x56_MKVIII"],[],""], 2
]; */
(_militiaLoadoutData get "sniperRifles") append [
    ["SPE_M1903A4_Springfield","","","",["SPE_5Rnd_762x63","SPE_5Rnd_762x63_M1","SPE_5Rnd_762x63_t","SPE_5Rnd_762x63_M2_AP"],[],""], 3,
    ["SPE_K98ZF39","","","",["SPE_5Rnd_792x57","SPE_5Rnd_792x57_t","SPE_5Rnd_792x57_SMK","SPE_5Rnd_792x57_sS"],[],""], 3
];
//////////////////////////////////////////////////////
(_loadoutData get "lightATLaunchers") append [
    ["SPE_M1A1_Bazooka", "", "", "", ["SPE_1Rnd_60mm_M6","SPE_1Rnd_60mm_M6","SPE_1Rnd_60mm_M6"], [], ""], 0.5,
    ["SPE_M9A1_Bazooka", "", "", "", ["SPE_1Rnd_60mm_M6A3","SPE_1Rnd_60mm_M6A3","SPE_1Rnd_60mm_M6A3"], [], ""], 2,
    ["SPE_M9_Bazooka", "", "", "", ["SPE_1Rnd_60mm_M6","SPE_1Rnd_60mm_M6","SPE_1Rnd_60mm_M6"], [], ""], 2
];
