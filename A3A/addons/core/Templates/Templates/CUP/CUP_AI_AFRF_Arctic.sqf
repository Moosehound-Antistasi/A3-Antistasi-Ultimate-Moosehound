//////////////////////////
//   Side Information   //
//////////////////////////

["name", "AFRF"] call _fnc_saveToTemplate;
["spawnMarkerName", "AFRF Support Corridor"] call _fnc_saveToTemplate;

["flag", "Flag_NATO_F"] call _fnc_saveToTemplate;
["flagTexture", "cup\baseconfigs\cup_baseconfigs\data\flags\flag_rus_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_Russia"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["vehiclesDropPod", ["SpaceshipCapsule_01_F"]] call _fnc_saveToTemplate; 

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate;
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["O_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["CUP_O_UAZ_Open_RU", "CUP_O_GAZ_Vodnik_Unarmed_RU"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["CUP_O_UAZ_AGS30_RU", "CUP_O_UAZ_MG_RU", "CUP_O_UAZ_METIS_RU", "CUP_O_UAZ_SPG9_RU", "CUP_O_GAZ_Vodnik_BPPU_RU", "CUP_O_GAZ_Vodnik_KPVT_RU"]] call _fnc_saveToTemplate;
["vehiclesTrucks", ["CUP_O_Kamaz_RU", "CUP_O_Ural_RU", "CUP_O_GAZ_Vodnik_Unarmed_RU"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["CUP_O_Kamaz_Open_RU", "CUP_O_Ural_Open_RU"]] call _fnc_saveToTemplate;
["vehiclesAmmoTrucks", ["CUP_O_Kamaz_Reammo_RU", "CUP_O_Ural_Reammo_RU"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["CUP_O_Ural_Repair_RU", "CUP_O_Kamaz_Repair_RU"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["CUP_O_Kamaz_Refuel_RU", "CUP_O_Ural_Refuel_RU"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["CUP_O_UAZ_AMB_RU", "CUP_O_BMP2_AMB_RU", "CUP_O_GAZ_Vodnik_MedEvac_RU"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["CUP_O_BRDM2_RUS", "CUP_O_BRDM2_ATGM_RUS", "CUP_O_MTLB_pk_WDL_RU", "CUP_O_GAZ_Vodnik_PK_RU", "CUP_O_GAZ_Vodnik_AGS_RU"]] call _fnc_saveToTemplate;
["vehiclesAirborne", ["CUP_O_BRDM2_RUS", "CUP_O_BRDM2_ATGM_RUS", "CUP_O_MTLB_pk_WDL_RU", "CUP_O_GAZ_Vodnik_PK_RU", "CUP_O_GAZ_Vodnik_AGS_RU"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["CUP_O_BMP3_RU", "CUP_O_BMP2_RU", "CUP_O_BMP2_RU", "CUP_O_BTR60_RU", "CUP_O_BTR80_CAMO_RU", "CUP_O_BTR80A_CAMO_RU", "CUP_O_BTR90_RU"]] call _fnc_saveToTemplate;
["vehiclesIFVs", ["CUP_O_BMP3_RU", "CUP_O_BMP2_RU"]] call _fnc_saveToTemplate;
["vehiclesLightTanks",  ["CUP_O_BMP3_RU", "CUP_O_BMP2_RU"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["CUP_O_T72_RU", "CUP_O_T90_RU"]] call _fnc_saveToTemplate;
["vehiclesAA", ["CUP_O_ZSU23_SLA"]] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["CUP_O_PBX_RU"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["CUP_B_RHIB2Turret_USMC"]] call _fnc_saveToTemplate;
["vehiclesAmphibious", []] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["CUP_O_Su25_Dyn_RU"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["CUP_O_SU34_RU"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["CUP_O_MI6T_RU"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["CUP_O_Mi8_medevac_RU", "O_Heli_Light_02_unarmed_F"]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["CUP_O_Mi8AMT_RU"]] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", ["CUP_O_Mi8_RU"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["CUP_O_Mi24_V_Dynamic_RU", "CUP_O_Mi24_P_Dynamic_RU", "CUP_O_Ka50_RU", "CUP_O_Ka52_RU"]] call _fnc_saveToTemplate;

["vehiclesAirPatrol", ["O_Heli_Light_02_unarmed_F","CUP_O_Mi8_RU"]] call _fnc_saveToTemplate;

["vehiclesArtillery", ["CUP_O_BM21_RU"]] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray [["CUP_O_BM21_RU", ["CUP_40Rnd_GRAD_HE"]]]] call _fnc_saveToTemplate;

["uavsAttack", []] call _fnc_saveToTemplate;
["uavsPortable", ["CUP_O_Pchela1T_RU"]] call _fnc_saveToTemplate;

["vehiclesMilitiaLightArmed", ["CUP_O_UAZ_MG_SLA"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["CUP_O_Ural_Open_SLA"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["CUP_O_UAZ_Unarmed_RU"]] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", ["CUP_O_BRDM2_RUS", "CUP_O_BRDM2_ATGM_RUS"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["B_GEN_Offroad_01_gen_F"]] call _fnc_saveToTemplate;

["staticMGs", ["CUP_O_KORD_high_RU"]] call _fnc_saveToTemplate;
["staticAT", ["CUP_O_Kornet_RU"]] call _fnc_saveToTemplate;
["staticAA", ["CUP_O_Igla_AA_pod_ChDKZ"]] call _fnc_saveToTemplate;

["staticMortars", ["CUP_O_2b14_82mm_RU"]] call _fnc_saveToTemplate;
["staticHowitzers", ["CUP_O_D30_RU"]] call _fnc_saveToTemplate;

["vehicleRadar", ""] call _fnc_saveToTemplate;
["vehicleSam", ""] call _fnc_saveToTemplate;

["howitzerMagazineHE", "CUP_30Rnd_122mmHE_D30_M"] call _fnc_saveToTemplate;

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

["minefieldAT", ["CUP_MineE"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine"]] call _fnc_saveToTemplate;

#include "CUP_Vehicle_Attributes.sqf"

/////////////////////
///  Identities   ///
/////////////////////

["faces", ["LivonianHead_1","LivonianHead_2","LivonianHead_3","LivonianHead_4","LivonianHead_5",
"LivonianHead_6","LivonianHead_7","LivonianHead_8","LivonianHead_9",
"RussianHead_1","RussianHead_2","RussianHead_3","Sturrock",
"WhiteHead_01","WhiteHead_02","WhiteHead_03","WhiteHead_04",
"WhiteHead_07","WhiteHead_08","WhiteHead_09","WhiteHead_12",
"WhiteHead_13","WhiteHead_14","WhiteHead_17","WhiteHead_18",
"WhiteHead_21","WhiteHead_30"]] call _fnc_saveToTemplate;
["voices", ["Male01RUS","Male02RUS","Male03RUS"]] call _fnc_saveToTemplate;
"RussianMen" call _fnc_saveNames;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["slRifles", []];
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];

_loadoutData set ["missileATLaunchers", [
    ["CUP_launch_Metis", "", "", "", ["CUP_AT13_M"], [], ""]
]];
_loadoutData set ["lightATLaunchers", ["CUP_launch_RPG26"]];
_loadoutData set ["ATLaunchers", [
    ["CUP_launch_RPG7V", "", "", "CUP_optic_PGO7V3", ["CUP_OG7_M", "CUP_PG7V_M"], [], ""],
    ["CUP_launch_RPG7V", "", "", "CUP_optic_PGO7V3", ["CUP_OG7_M", "CUP_PG7VL_M"], [], ""],
    ["CUP_launch_RPG7V", "", "", "CUP_optic_PGO7V3", ["CUP_OG7_M", "CUP_PG7VM_M"], [], ""],
    ["CUP_launch_RPG7V", "", "", "CUP_optic_PGO7V3", ["CUP_OG7_M", "CUP_PG7VR_M"], [], ""]
]];
_loadoutData set ["AALaunchers", [
    ["CUP_launch_9K32Strela", "", "", "", [""], [], ""]
]];

_loadoutData set ["sidearms", []];
_loadoutData set ["glSidearms", []];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["DemoCharge_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["SatchelCharge_Remote_Mag"]];

_loadoutData set ["antiTankGrenades", []];
_loadoutData set ["antiInfantryGrenades", ["CUP_HandGrenade_RGO"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];


//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["CUP_NVG_1PN138"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["Rangefinder"]];

_loadoutData set ["traitorUniforms", ["CUP_U_O_RUS_Ratnik_Winter"]];
_loadoutData set ["traitorVests", ["CUP_Vest_RUS_6B45_Sh117_BeigeDigital"]];
_loadoutData set ["traitorHats", ["CUP_H_PMC_Beanie_Khaki"]];

_loadoutData set ["officerUniforms", ["CUP_U_O_RUS_Ratnik_Winter"]];
_loadoutData set ["officerVests", ["CUP_Vest_RUS_6B45_Sh117_BeigeDigital"]];
_loadoutData set ["officerHats", ["CUP_H_RUS_Beret_Spetsnaz"]];

_loadoutData set ["cloakUniforms", []];
_loadoutData set ["cloakVests", []];

_loadoutData set ["uniforms", ["CUP_U_O_RUS_Ratnik_Winter"]];
_loadoutData set ["mgVests", []];
_loadoutData set ["medVests", []];
_loadoutData set ["slVests", []];
_loadoutData set ["sniVests", []];
_loadoutData set ["glVests", []];
_loadoutData set ["engVests", []];
_loadoutData set ["vests", []];
_loadoutData set ["backpacks", ["CUP_O_RUS_Patrol_bag_Winter"]];
_loadoutData set ["longRangeRadios", []];
_loadoutData set ["atBackpacks", ["CUP_B_RPGPack_Khaki"]];
_loadoutData set ["slBackpacks", []];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", ["CUP_H_RUS_Beret_VDV"]];
_loadoutData set ["sniHats", ["CUP_H_PMC_Beanie_Headphones_Winter"]];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies];
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

//Unit type specific item sets. Add or remove these, depending on the unit types in use.
private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
	_slItems append ["ACE_microDAGR", "ACE_DAGR"];
	_eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
	_mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadLeader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];

_loadoutData set ["glasses", [
    "G_Aviator",
    "G_Balaclava_oli",
    "G_Bandanna_oli"
]];
_loadoutData set ["goggles", []];
//TODO - ACE overrides for misc essentials, medical and engineer gear

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_sfLoadoutData set ["vests", ["CUP_V_PMC_CIRAS_Winter_Patrol"]];
_sfLoadoutData set ["slVests", ["CUP_V_PMC_CIRAS_Winter_TL"]];
_sfLoadoutData set ["glVests", ["CUP_V_PMC_CIRAS_Winter_Grenadier"]];
_sfLoadoutData set ["helmets", ["CUP_H_RUS_K6_3_Goggles", "CUP_H_RUS_Altyn_Goggles_khaki"]];
_sfLoadoutData set ["slHat", ["CUP_H_RUS_Beret_Spetsnaz"]];
_sfLoadoutData set ["sniHats", ["CUP_H_RUS_Balaclava_Ratnik_Headphones_winter", "CUP_H_RUS_Balaclava_Ratnik_Headphones_winter_v2"]];
_sfLoadoutData set ["NVGs", ["CUP_NVG_GPNVG_black"]];
_sfLoadoutData set ["binoculars", ["CUP_LRTV"]];

_sfLoadoutData set ["slRifles", [
    ["CUP_arifle_AK107", "CUP_muzzle_TGPA", "", "CUP_optic_PSO_1", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AK107", "CUP_muzzle_TGPA", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AK105", "CUP_muzzle_TGPA", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AK105", "CUP_muzzle_TGPA", "", "CUP_optic_PSO_1", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AK109", "CUP_muzzle_snds_KZRZP_AK762", "", "CUP_optic_PSO_1_1", ["CUP_30Rnd_TE1_Red_Tracer_762x39_AK103_bakelite_M"], [], ""],
    ["CUP_arifle_AK109", "CUP_muzzle_snds_KZRZP_AK762", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_TE1_Red_Tracer_762x39_AK103_bakelite_M"], [], ""]
]];
_sfLoadoutData set ["rifles", [  
    ["CUP_arifle_AK109", "CUP_muzzle_snds_KZRZP_AK762", "", "CUP_optic_1p63", ["CUP_30Rnd_TE1_Red_Tracer_762x39_AK103_bakelite_M"], [], ""],
    ["CUP_arifle_AK109", "CUP_muzzle_snds_KZRZP_AK762", "", "CUP_optic_ekp_8_02", ["CUP_30Rnd_TE1_Red_Tracer_762x39_AK103_bakelite_M"], [], ""],
    ["CUP_arifle_AK107", "CUP_muzzle_TGPA", "", "CUP_optic_ekp_8_02", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AK107", "CUP_muzzle_TGPA", "", "CUP_optic_1p63", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""]
]];
_sfLoadoutData set ["carbines", [  
    ["CUP_arifle_AKS74", "CUP_muzzle_TGPA", "", "CUP_optic_1p63", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AKS74", "CUP_muzzle_TGPA", "", "CUP_optic_Kobra", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AKS74U", "CUP_muzzle_TGPA", "", "CUP_optic_Kobra", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AKS74U", "CUP_muzzle_TGPA", "", "CUP_optic_1p63", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_AK107_GL", "CUP_muzzle_TGPA", "", "CUP_optic_1p63", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK107_GL", "CUP_muzzle_TGPA", "", "CUP_optic_Kobra", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK109_GL", "CUP_muzzle_snds_KZRZP_AK762", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK103_bakelite_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK109_GL", "CUP_muzzle_snds_KZRZP_AK762", "", "CUP_optic_Kobra", ["CUP_30Rnd_762x39_AK103_bakelite_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK103_GL", "CUP_muzzle_snds_KZRZP_AK762", "", "CUP_optic_Kobra", ["CUP_30Rnd_762x39_AK103_bakelite_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK103_GL", "CUP_muzzle_snds_KZRZP_AK762", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK103_bakelite_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""]
]];
_sfLoadoutData set ["SMGs", [
    ["CUP_smg_bizon", "CUP_muzzle_snds_KZRZP_AK762", "", "CUP_optic_1p63", ["CUP_64Rnd_Red_Tracer_9x19_Bizon_M"], [], ""],
    ["CUP_smg_bizon", "CUP_muzzle_snds_KZRZP_AK762", "", "CUP_optic_Kobra", ["CUP_64Rnd_Red_Tracer_9x19_Bizon_M"], [], ""]
]];
_sfLoadoutData set ["machineGuns", [
    ["CUP_lmg_Pecheneg_B50_vfg", "", "", "CUP_optic_Kobra", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"], [], ""],
    ["CUP_lmg_Pecheneg_B50_vfg", "", "", "CUP_optic_1p63", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"], [], ""],
    ["CUP_lmg_PKMN", "", "", "CUP_optic_1p63", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"], [], ""],
    ["CUP_lmg_PKMN", "", "", "CUP_optic_Kobra", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"], [], ""],
    ["CUP_arifle_RPK74M", "", "", "CUP_optic_Kobra", ["CUP_60Rnd_TE1_Red_Tracer_545x39_AK74M_M"], [], ""],
    ["CUP_arifle_RPK74M", "", "", "CUP_optic_1p63", ["CUP_60Rnd_TE1_Red_Tracer_545x39_AK74M_M"], [], ""]
]];
_sfLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_VSSVintorez_VFG", "", "", "CUP_optic_PSO_1", ["CUP_20Rnd_9x39_SP5_VSS_M"], [], ""],
    ["CUP_srifle_SVD", "CUP_muzzle_snds_KZRZP_SVD", "CUP_SVD_camo_g", "CUP_optic_PSO_3", ["CUP_10Rnd_762x54_SVD_M"], [], ""]
]];
_sfLoadoutData set ["sniperRifles", [   
    ["CUP_srifle_SVD", "CUP_muzzle_snds_KZRZP_SVD", "CUP_SVD_camo_g", "CUP_optic_PSO_3", ["CUP_10Rnd_762x54_SVD_M"], [], ""],
    ["CUP_srifle_ksvk", "", "", "CUP_optic_PSO_3", ["CUP_5Rnd_127x108_KSVK_M"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
    ["CUP_hgun_Makarov", "", "", "", ["CUP_8Rnd_9x18_Makarov_M"], [], ""]
]];

/////////////////////////////////
//    Elite Loadout Data       //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_eliteLoadoutData set ["vests", ["CUP_Vest_RUS_6B45_Sh117"]];
_eliteLoadoutData set ["slVests", ["CUP_Vest_RUS_6B45_Sh117_Del"]];
_eliteLoadoutData set ["mgVests", ["CUP_Vest_RUS_6B45_Sh117_PKP_Nut"]];
_eliteLoadoutData set ["glVests", ["CUP_Vest_RUS_6B45_Sh117_VOG_Del"]];
_eliteLoadoutData set ["backpacks", ["CUP_O_RUS_Patrol_bag_Green", "CUP_O_RUS_Patrol_bag_Summer"]];
_eliteLoadoutData set ["atBackpacks", ["CUP_O_RUS_Patrol_bag_Green_Shovel"]];
_eliteLoadoutData set ["helmets", ["CUP_H_RUS_6B27_cover", "CUP_H_RUS_6B46", "CUP_H_RUS_6B27_cover_headset_goggles", "CUP_H_RUS_6B27_cover_headset", "CUP_H_RUS_6B47_v2_Summer", "CUP_H_RUS_6B47_headset"]];
_eliteLoadoutData set ["slHat", ["H_Booniehat_oli"]];
_eliteLoadoutData set ["binoculars", ["CUP_LRTV"]];


_eliteLoadoutData set ["slRifles", [
    ["CUP_arifle_AK107", "", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_545x39_AK74M_M"], [], ""],
    ["CUP_arifle_AK108", "", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_556x45_AK"], [], ""],
    ["CUP_arifle_AK109", "", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""],
    ["CUP_arifle_AK107", "", "", "CUP_optic_PSO_1_AK", ["CUP_30Rnd_545x39_AK74M_M"], [], ""],
    ["CUP_arifle_AK108", "", "", "CUP_optic_PSO_1_AK", ["CUP_30Rnd_556x45_AK"], [], ""],
    ["CUP_arifle_AK109", "", "", "CUP_optic_PSO_1_AK", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""]
]];

_eliteLoadoutData set ["rifles", [
    ["CUP_arifle_AK107", "", "", "CUP_optic_1p63", ["CUP_30Rnd_545x39_AK74M_M"], [], ""],
    ["CUP_arifle_AK108", "", "", "CUP_optic_1p63", ["CUP_30Rnd_556x45_AK"], [], ""],
    ["CUP_arifle_AK109", "", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""],
    ["CUP_arifle_AK107", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_545x39_AK74M_M"], [], ""],
    ["CUP_arifle_AK108", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_556x45_AK"], [], ""],
    ["CUP_arifle_AK109", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""]
]];

_eliteLoadoutData set ["carbines", [
    ["CUP_arifle_AKS74U", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AKS74U", "", "", "CUP_optic_1p63", ["CUP_30Rnd_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AKS74", "", "", "CUP_optic_1p63", ["CUP_30Rnd_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AKS74", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_545x39_AK74_plum_M"], [], ""]
]];

_eliteLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_AKS74_GL", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_545x39_AK74_plum_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK107_GL", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_545x39_AK74_plum_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK108_GL", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_556x45_AK"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK109_GL", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_762x39_AK103_bakelite_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK109_GL", "", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK103_bakelite_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK108_GL", "", "", "CUP_optic_1p63", ["CUP_30Rnd_556x45_AK"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK107_GL", "", "", "CUP_optic_1p63", ["CUP_30Rnd_545x39_AK74M_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""]
]];
_eliteLoadoutData set ["machineGuns", [
    ["CUP_lmg_PKM_B50_vfg", "", "", "", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"], [], ""],
    ["CUP_lmg_Pecheneg", "", "", "CUP_optic_1p63", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"], [], ""],
    ["CUP_lmg_Pecheneg", "", "", "CUP_optic_Kobra", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"], [], ""],
    ["CUP_arifle_RPK74M", "", "", "CUP_optic_1p63", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M"], [], ""],
    ["CUP_arifle_RPK74M", "", "", "CUP_optic_Kobra", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M"], [], ""]
]];
_eliteLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_SVD", "", "", "CUP_optic_PSO_1", ["CUP_10Rnd_762x54_SVD_M"], [], ""],
    ["CUP_srifle_SVD", "", "", "CUP_optic_PSO_3", ["CUP_10Rnd_762x54_SVD_M"], [], ""]
]];
_eliteLoadoutData set ["sniperRifles", [
    ["CUP_srifle_SVD", "", "CUP_SVD_camo_g_half", "CUP_optic_PSO_3", ["CUP_10Rnd_762x54_SVD_M"], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
	["CUP_hgun_Makarov", "", "", "", ["CUP_8Rnd_9x18_Makarov_M"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militaryLoadoutData set ["vests", ["CUP_Vest_RUS_6B45_Sh117", "CUP_Vest_RUS_6B45_Sh117_PKP", "CUP_Vest_RUS_6B45_Sh117_PKP_Del"]];
_militaryLoadoutData set ["mgVests", ["CUP_Vest_RUS_6B45_Sh117_PKP_Nut"]];
_militaryLoadoutData set ["medVests", ["CUP_Vest_RUS_6B45_Sh117_Nut"]];
_militaryLoadoutData set ["slVests", ["CUP_Vest_RUS_6B45_Sh117_Del"]];
_militaryLoadoutData set ["glVests", ["CUP_Vest_RUS_6B45_Sh117_VOG_Del"]];
_militaryLoadoutData set ["helmets", ["CUP_H_RUS_6B47_v2_Winter", "CUP_H_RUS_6B47_v2_GogglesClosed_Winter", "CUP_H_RUS_6B47_v2_GogglesDown_Winter", "CUP_H_RUS_6B47_v2_GogglesUp_Winter"]];
_militaryLoadoutData set ["binoculars", ["CUP_LRTV"]];

_militaryLoadoutData set ["slRifles", [
    ["CUP_arifle_AK107", "", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_545x39_AK74M_M"], [], ""],
    ["CUP_arifle_AK108", "", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_556x45_AK"], [], ""],
    ["CUP_arifle_AK109", "", "", "CUP_optic_PechenegScope", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""],
    ["CUP_arifle_AK107", "", "", "CUP_optic_PSO_1_AK", ["CUP_30Rnd_545x39_AK74M_M"], [], ""],
    ["CUP_arifle_AK108", "", "", "CUP_optic_PSO_1_AK", ["CUP_30Rnd_556x45_AK"], [], ""],
    ["CUP_arifle_AK109", "", "", "CUP_optic_PSO_1_AK", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""]
]];
_militaryLoadoutData set ["rifles", [
    ["CUP_arifle_AK107", "", "", "CUP_optic_1p63", ["CUP_30Rnd_545x39_AK74M_M"], [], ""],
    ["CUP_arifle_AK108", "", "", "CUP_optic_1p63", ["CUP_30Rnd_556x45_AK"], [], ""],
    ["CUP_arifle_AK109", "", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""],
    ["CUP_arifle_AK107", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_545x39_AK74M_M"], [], ""],
    ["CUP_arifle_AK108", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_556x45_AK"], [], ""],
    ["CUP_arifle_AK109", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""]
]];
_militaryLoadoutData set ["carbines", [
    ["CUP_arifle_AKS74U", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AKS74U", "", "", "CUP_optic_1p63", ["CUP_30Rnd_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AKS74", "", "", "CUP_optic_1p63", ["CUP_30Rnd_545x39_AK74_plum_M"], [], ""],
    ["CUP_arifle_AKS74", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_545x39_AK74_plum_M"], [], ""]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_AKS74_GL", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_545x39_AK74_plum_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK107_GL", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_545x39_AK74_plum_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK108_GL", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_556x45_AK"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK109_GL", "", "", "CUP_optic_Kobra", ["CUP_30Rnd_762x39_AK103_bakelite_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK109_GL", "", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK103_bakelite_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK108_GL", "", "", "CUP_optic_1p63", ["CUP_30Rnd_556x45_AK"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""],
    ["CUP_arifle_AK107_GL", "", "", "CUP_optic_1p63", ["CUP_30Rnd_545x39_AK74M_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""]
]];
_militaryLoadoutData set ["SMGs", [
    ["CUP_smg_bizon", "", "", "CUP_optic_1p63", ["CUP_64Rnd_9x19_Bizon_M"], [], ""],
    ["CUP_smg_bizon", "", "", "CUP_optic_Kobra", ["CUP_64Rnd_9x19_Bizon_M"], [], ""]
]];
_militaryLoadoutData set ["machineGuns", [
    ["CUP_lmg_PKM_B50_vfg", "", "", "", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"], [], ""],
    ["CUP_lmg_Pecheneg", "", "", "CUP_optic_1p63", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"], [], ""],
    ["CUP_lmg_Pecheneg", "", "", "CUP_optic_Kobra", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"], [], ""],
    ["CUP_arifle_RPK74M", "", "", "CUP_optic_1p63", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M"], [], ""],
    ["CUP_arifle_RPK74M", "", "", "CUP_optic_Kobra", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK74M_M"], [], ""]
]];
_militaryLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_SVD", "", "", "CUP_optic_PSO_1", ["CUP_10Rnd_762x54_SVD_M"], [], ""],
    ["CUP_srifle_SVD", "", "", "CUP_optic_PSO_3", ["CUP_10Rnd_762x54_SVD_M"], [], ""]
]];
_militaryLoadoutData set ["sniperRifles", [
    ["CUP_srifle_SVD", "", "CUP_SVD_camo_g_half", "CUP_optic_PSO_3", ["CUP_10Rnd_762x54_SVD_M"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
    ["CUP_hgun_Makarov", "", "", "", ["CUP_8Rnd_9x18_Makarov_M"], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData;

_policeLoadoutData set ["uniforms", ["CUP_U_C_Policeman_01"]];
_policeLoadoutData set ["vests", ["CUP_V_C_Police_Holster"]];
_policeLoadoutData set ["helmets", ["CUP_H_C_Policecap_01"]];

_policeLoadoutData set ["SMGs", [
    ["CUP_arifle_AKS74U", "", "", "", ["CUP_30Rnd_TE1_Red_Tracer_545x39_AK74_plum_M"], [], ""]
]];
_policeLoadoutData set ["sidearms", [
    ["CUP_hgun_Makarov", "", "", "", ["CUP_8Rnd_9x18_Makarov_M"], [], ""]
]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_militiaLoadoutData set ["vests", ["V_Chestrig_rgr", "V_Chestrig_blk"]];
_militiaLoadoutData set ["helmets", ["CUP_H_SLA_Helmet_URB", "CUP_H_SLA_Helmet_URB_worn"]];

_militiaLoadoutData set ["rifles", [
    ["CUP_arifle_AK103", "", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""],
    ["CUP_arifle_AK104", "", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""],
    ["CUP_arifle_AK105", "", "", "CUP_optic_1p63", ["CUP_30Rnd_545x39_AK74M_M"], [], ""]
]];
_militiaLoadoutData set ["carbines", [
    ["CUP_arifle_AK104", "", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
    ["CUP_arifle_AK103_GL", "", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK103_bakelite_M"], ["CUP_1Rnd_HE_GP25_M", "CUP_1Rnd_SmokeRed_GP25_M"], ""]
]];
_militiaLoadoutData set ["SMGs", [
    ["CUP_smg_bizon", "", "", "CUP_optic_1p63", ["CUP_64Rnd_9x19_Bizon_M"], [], ""]
]];
_militiaLoadoutData set ["machineGuns", [
    ["CUP_lmg_PKM_B50_vfg", "", "", "", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"], [], ""],
    ["CUP_lmg_Pecheneg", "", "", "CUP_optic_1p63", ["CUP_100Rnd_TE4_LRT4_762x54_PK_Tracer_Green_M"], [], ""],
    ["CUP_arifle_RPK74_45", "", "", "CUP_optic_1p63", ["CUP_45Rnd_TE4_LRT4_Green_Tracer_545x39_RPK_M"], [], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
    ["CUP_srifle_SVD", "", "", "CUP_optic_PSO_1", ["CUP_10Rnd_762x54_SVD_M"], [], ""]
]];
_militiaLoadoutData set ["sniperRifles", [
    ["CUP_srifle_SVD", "", "", "CUP_optic_PSO_3", ["CUP_10Rnd_762x54_SVD_M"], [], ""]
]];
_militiaLoadoutData set ["sidearms", [
    ["CUP_hgun_Makarov", "", "", "", ["CUP_8Rnd_9x18_Makarov_M"], [], ""]
]];

//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["vests", ["CUP_Vest_RUS_6B45_Sh117"]];
_crewLoadoutData set ["helmets", ["CUP_H_SLA_TankerHelmet"]];
_crewLoadoutData set ["carbines", [
    ["CUP_arifle_AK104", "", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""]
]];	

private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["vests", ["CUP_Vest_RUS_6B45_Sh117"]];
_pilotLoadoutData set ["helmets", ["CUP_H_RUS_ZSH_Shield_Down"]];
_pilotLoadoutData set ["carbines", [
    ["CUP_arifle_AK104", "", "", "CUP_optic_1p63", ["CUP_30Rnd_762x39_AK103_bakelite_M"], [], ""]
]];	

/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.

private _squadLeaderTemplate = {
    ["slHat"] call _fnc_setHelmet;
    [["slVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    [["slRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;
    ["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_squadLeader_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["antiTankGrenades", 1] call _fnc_addItem;
    ["signalsmokeGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["binoculars"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _riflemanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["antiTankGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _radiomanTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["longRangeRadios"] call _fnc_setBackpack;


    [selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_rifleman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [["medVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["carbines"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_medic"] call _fnc_addItemSet;
    ["items_medic_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _grenadierTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [["glVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["grenadeLaunchers"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;
    ["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

    [["glSidearms", "sidearms"] call _fnc_fallback] call _fnc_setHandgun;
    ["handgun", 3] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_grenadier_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 4] call _fnc_addItem;
    ["antiTankGrenades", 3] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [["engVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;


    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_explosivesExpert_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["lightExplosives", 2] call _fnc_addItem;
    if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
    if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _engineerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [["engVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["carbines"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_engineer_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    if (random 1 > 0.5) then {["lightExplosives", 1] call _fnc_addItem;};

    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _latTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["lightATLaunchers"] call _fnc_setLauncher;
    ["launcher", 1] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_lat_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["antiTankGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    [selectRandom ["missileATLaunchers", "ATLaunchers"]] call _fnc_setLauncher;
    //TODO - Add a check if it's disposable.
    ["launcher", 2] call _fnc_addMagazines;
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_at_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["antiTankGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    [["atBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

    ["rifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["AALaunchers"] call _fnc_setLauncher;
    ["launcher", 2] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_aa_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _machineGunnerTemplate = {
    ["helmets"] call _fnc_setHelmet;
    [["mgVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;
    ["backpacks"] call _fnc_setBackpack;

    ["machineGuns"] call _fnc_setPrimary;
    ["primary", 4] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_machineGunner_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _marksmanTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [["sniVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;


    ["marksmanRifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_marksman_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _sniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [["sniVests", "vests"] call _fnc_fallback] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["sniperRifles"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 2] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

private _policeTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["SMGs"] call _fnc_setPrimary;
    ["primary", 5] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_police_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 1] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _crewTemplate = {
    ["helmets"] call _fnc_setHelmet;
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_crew_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["gpses"] call _fnc_addGPS;
    ["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
    ["vests"] call _fnc_setVest;
    ["uniforms"] call _fnc_setUniform;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _traitorTemplate = {
    ["traitorHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["traitorVests"] call _fnc_setVest;
    ["traitorUniforms"] call _fnc_setUniform;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _officerTemplate = {
    ["officerHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 1.25, "glasses", 0.75]] call _fnc_setFacewear;
    ["officerVests"] call _fnc_setVest;
    ["officerUniforms"] call _fnc_setUniform;

    [["SMGs", "carbines"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 3] call _fnc_addMagazines;
    
    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_basic"] call _fnc_addItemSet;
    ["items_unarmed_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
};

private _patrolSniperTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [["cloakUniforms","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["NVGs"] call _fnc_addNVGs;
};

private _patrolSpotterTemplate = {
    ["sniHats"] call _fnc_setHelmet;
    [selectRandomWeighted [[], 2, "glasses", 0.75, "goggles", 0.5]] call _fnc_setFacewear;
    [["cloakVests","vests"] call _fnc_fallback] call _fnc_setVest;
    [["cloakUniforms","uniforms"] call _fnc_fallback] call _fnc_setUniform;

    [selectRandom ["rifles", "carbines", "marksmanRifles"]] call _fnc_setPrimary;
    ["primary", 6] call _fnc_addMagazines;

    ["sidearms"] call _fnc_setHandgun;
    ["handgun", 2] call _fnc_addMagazines;

    ["items_medical_standard"] call _fnc_addItemSet;
    ["items_sniper_extras"] call _fnc_addItemSet;
    ["items_miscEssentials"] call _fnc_addItemSet;
    ["antiInfantryGrenades", 1] call _fnc_addItem;
    ["smokeGrenades", 2] call _fnc_addItem;

    ["maps"] call _fnc_addMap;
    ["watches"] call _fnc_addWatch;
    ["compasses"] call _fnc_addCompass;
    ["radios"] call _fnc_addRadio;
    ["rangefinders"] call _fnc_addBinoculars;
    ["NVGs"] call _fnc_addNVGs;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

/////////////////////////////
//  Special Forces Units   //
/////////////////////////////
private _prefix = "SF";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]]
];


[_prefix, _unitTypes, _sfLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

/*{
    params ["_name", "_loadoutTemplate"];
    private _loadouts = [_sfLoadoutData, _loadoutTemplate] call _fnc_buildLoadouts;
    private _finalName = _prefix + _name;
    [_finalName, _loadouts] call _fnc_saveToTemplate;
} forEach _unitTypes;
*/

///////////////////////
//  Military Units   //
///////////////////////
private _prefix = "military";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Police Units    //
////////////////////////
private _prefix = "police";
private _unitTypes = [
	["SquadLeader", _policeTemplate, [], [_prefix]],
	["Standard", _policeTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _policeLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

////////////////////////
//    Militia Units    //
////////////////////////
private _prefix = "militia";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _militiaLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

///////////////////////
//  Elite Units   //
///////////////////////
private _prefix = "elite";
private _unitTypes = [
	["SquadLeader", _squadLeaderTemplate, [], [_prefix]],
	["Rifleman", _riflemanTemplate, [], [_prefix]],
	["Radioman", _radiomanTemplate, [], [_prefix]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix]],
	["Engineer", _engineerTemplate, [["engineer", true]], [_prefix]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix]],
	["Grenadier", _grenadierTemplate, [], [_prefix]],
	["LAT", _latTemplate, [], [_prefix]],
	["AT", _atTemplate, [], [_prefix]],
	["AA", _aaTemplate, [], [_prefix]],
	["MachineGunner", _machineGunnerTemplate, [], [_prefix]],
	["Marksman", _marksmanTemplate, [], [_prefix]],
	["Sniper", _sniperTemplate, [], [_prefix]],
    	["PatrolSniper", _patrolSniperTemplate, [], [_prefix]],
    	["PatrolSpotter", _patrolSpotterTemplate, [], [_prefix]]
];

[_prefix, _unitTypes, _eliteLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////

//The following lines are determining the loadout of vehicle crew
["other", [["Crew", _crewTemplate]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout of the pilots
["other", [["Pilot", _crewTemplate]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the unit used in the "kill the official" mission
["other", [["Official", _SquadLeaderTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "kill the traitor" mission
["other", [["Traitor", _traitorTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
//The following lines are determining the loadout for the AI used in the "Invader Punishment" mission
["other", [["Unarmed", _UnarmedTemplate]], _militaryLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
