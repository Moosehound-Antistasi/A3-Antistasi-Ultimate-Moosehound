_marksmanRifles pushBack ["srifle_DMR_01_black_RF", "", "acc_flashlight", "optic_VRCO_RF", ["10Rnd_762x54_Mag","10Rnd_762x54_Mag","10Rnd_762x54_Mag"], [], ""];
_rifles pushBack ["arifle_ash12_blk_RF", "", "", "", ["20Rnd_127x55_Mag_RF","20Rnd_127x55_Mag_RF"], [], ""];
_enforcerRifles pushBack ["arifle_ash12_LR_blk_RF", "", "optic_VRCO_RF", "", ["20Rnd_127x55_Mag_RF","20Rnd_127x55_Mag_RF"], [], ""];
_tunedRifles pushBack ["arifle_ash12_LR_blk_RF", "", "", "optic_VRCO_RF", ["20Rnd_127x55_Mag_RF","20Rnd_127x55_Mag_RF"], [], ""];
_gls pushBack ["arifle_ash12_GL_blk_RF", "", "acc_flashlight", "optic_VRCO_khk_RF", ["10Rnd_127x55_Mag_RF", "20Rnd_127x55_Mag_RF"], _glammo, ""];
_pistols append ["hgun_Glock19_RF", "hgun_Glock19_auto_RF", "hgun_DEagle_RF", "hgun_Glock19_auto_khk_RF", "hgun_DEagle_classic_RF","hgun_DEagle_camo_RF"];
if (random 100 <= 45) then {
	_tunedRifles pushBack ["srifle_h6_gold_rf", "muzzle_snds_M", "", "optic_VRCO_RF", ["30Rnd_556x45_AP_Stanag_green_RF"], [], ""];
	_pistols append ["hgun_DEagle_gold_RF"];
};

_rpgs append [
    ["launch_PSRL1_black_RF", "", "", "", ["PSRL1_AT_RF","PSRL1_HEAT_RF"], [], ""],
    ["launch_PSRL1_olive_RF", "", "", "", ["PSRL1_AT_RF","PSRL1_HEAT_RF"], [], ""],
    ["launch_PSRL1_PWS_black_RF", "", "", "", ["PSRL1_AT_RF","PSRL1_HEAT_RF"], [], ""],
    ["launch_PSRL1_PWS_olive_RF", "", "", "", ["PSRL1_AT_RF","PSRL1_HEAT_RF"], [], ""],
	["launch_PSRL1_sand_RF", "", "", "", ["PSRL1_AT_RF","PSRL1_HEAT_RF"], [], ""],
	["launch_PSRL1_PWS_sand_RF", "", "", "", ["PSRL1_AT_RF","PSRL1_HEAT_RF"], [], ""]
];

(_loadoutData get "lightHELaunchers") append [
    ["launch_PSRL1_black_RF", "", "", "", ["PSRL1_FRAG_RF","PSRL1_HE_RF"], [], ""],
    ["launch_PSRL1_olive_RF", "", "", "", ["PSRL1_FRAG_RF","PSRL1_HE_RF"], [], ""],
    ["launch_PSRL1_PWS_black_RF", "", "", "", ["PSRL1_FRAG_RF","PSRL1_HE_RF"], [], ""],
    ["launch_PSRL1_PWS_olive_RF", "", "", "", ["PSRL1_FRAG_RF","PSRL1_HE_RF"], [], ""],
	["launch_PSRL1_sand_RF", "", "", "", ["PSRL1_FRAG_RF","PSRL1_HE_RF"], [], ""],
	["launch_PSRL1_PWS_sand_RF", "", "", "", ["PSRL1_FRAG_RF","PSRL1_HE_RF"], [], ""]
]; 