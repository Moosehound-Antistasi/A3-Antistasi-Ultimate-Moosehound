//////////////////////////
//   Side Information   //
//////////////////////////

["name", "BAF"] call _fnc_saveToTemplate;
["spawnMarkerName", "BAF support corridor"] call _fnc_saveToTemplate;

["flag", "Flag_UK_F"] call _fnc_saveToTemplate;
["flagTexture", "\A3\Data_F\Flags\flag_uk_co.paa"] call _fnc_saveToTemplate;
["flagMarkerType", "flag_UK"] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////

["ammobox", "B_supplyCrate_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_IND_Wps_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type
["equipmentBox", "Box_NATO_Equip_F"] call _fnc_saveToTemplate; //Changeing this from default will require you to define logistics attachement offset for the box type

["vehiclesBasic", ["B_Quadbike_01_F"]] call _fnc_saveToTemplate;
["vehiclesLightUnarmed", ["UK3CB_BAF_LandRover_Hard_FFR_Green_B_DPMT", "UK3CB_BAF_LandRover_Snatch_FFR_Green_A_DPMT", "UK3CB_BAF_LandRover_Soft_FFR_Green_B_DPMT"]] call _fnc_saveToTemplate;
["vehiclesLightArmed", ["UK3CB_BAF_Husky_Passenger_GMG_Green_DPMT", "UK3CB_BAF_Husky_Passenger_GPMG_Green_DPMT", "UK3CB_BAF_Husky_Passenger_HMG_Green_DPMT", "UK3CB_BAF_LandRover_WMIK_GMG_FFR_Green_B_DPMT", "UK3CB_BAF_LandRover_WMIK_GPMG_FFR_Green_B_DPMT", "UK3CB_BAF_LandRover_WMIK_HMG_FFR_Green_B_DPMT", "UK3CB_BAF_LandRover_WMIK_Milan_FFR_Green_B_DPMT", "UK3CB_BAF_Panther_GPMG_Green_A_DPMT"]] call _fnc_saveToTemplate;
["vehiclesTrucks", ["UK3CB_BAF_MAN_HX60_Transport_Green_DPMT", "UK3CB_BAF_MAN_HX58_Transport_Green_DPMT"]] call _fnc_saveToTemplate;
["vehiclesCargoTrucks", ["UK3CB_BAF_MAN_HX60_Cargo_Green_A_DPMT", "UK3CB_BAF_MAN_HX58_Cargo_Green_A_DPMT"]] call _fnc_saveToTemplate; 
["vehiclesAmmoTrucks", ["rhsusf_M977A4_AMMO_usarmy_wd", "rhsusf_M977A4_AMMO_BKIT_usarmy_wd", "rhsusf_M977A4_AMMO_BKIT_M2_usarmy_wd"]] call _fnc_saveToTemplate;
["vehiclesRepairTrucks", ["UK3CB_BAF_MAN_HX60_Repair_Green_DPMT", "UK3CB_BAF_MAN_HX58_Repair_Green_DPMT"]] call _fnc_saveToTemplate;
["vehiclesFuelTrucks", ["UK3CB_BAF_MAN_HX60_Fuel_Green_DPMT", "UK3CB_BAF_MAN_HX58_Fuel_Green_DPMT"]] call _fnc_saveToTemplate;
["vehiclesMedical", ["UK3CB_BAF_LandRover_Amb_FFR_Green_A_DPMT"]] call _fnc_saveToTemplate;
["vehiclesLightAPCs", ["UK3CB_BAF_Coyote_Passenger_L134A1_W_DPMT", "UK3CB_BAF_Coyote_Passenger_L111A1_W_DPMT", "UK3CB_BAF_Coyote_Passenger_L111A1_W_DPMT"]] call _fnc_saveToTemplate;
["vehiclesAPCs", ["UK3CB_BAF_FV432_Mk3_GPMG_Green_DPMT", "UK3CB_BAF_FV432_Mk3_RWS_Green_DPMT", "UK3CB_BAF_Warrior_A3_W_MTP", "UK3CB_BAF_Warrior_A3_W_Camo_MTP"]] call _fnc_saveToTemplate;
["vehiclesIFVs", ["UK3CB_BAF_Warrior_A3_W_MTP", "UK3CB_BAF_Warrior_A3_W_Cage_MTP", "UK3CB_BAF_Warrior_A3_W_Cage_Camo_MTP", "UK3CB_BAF_Warrior_A3_W_Camo_MTP"]] call _fnc_saveToTemplate;
["vehiclesTanks", ["rhsusf_m1a1fep_wd","rhsusf_m1a1aimwd_usarmy","rhsusf_m1a1aim_tuski_wd","rhsusf_m1a2sep1wd_usarmy","rhsusf_m1a2sep1tuskiiwd_usarmy","rhsusf_m1a2sep2wd_usarmy"]] call _fnc_saveToTemplate;
["vehiclesAA", ["RHS_M6_wd"]] call _fnc_saveToTemplate;
["vehiclesAirborne", ["UK3CB_BAF_Coyote_Passenger_L134A1_W_DPMT", "UK3CB_BAF_Coyote_Passenger_L111A1_W_DPMT"]] call _fnc_saveToTemplate;
["vehiclesLightTanks",  ["UK3CB_BAF_Warrior_A3_W_MTP", "UK3CB_BAF_Warrior_A3_W_Cage_MTP"]] call _fnc_saveToTemplate;

["vehiclesTransportBoats", ["B_Boat_Transport_01_F"]] call _fnc_saveToTemplate;
["vehiclesGunBoats", ["UK3CB_BAF_RHIB_HMG_DPMT", "UK3CB_BAF_RHIB_GPMG_DPMT"]] call _fnc_saveToTemplate;
["vehiclesAmphibious", []] call _fnc_saveToTemplate;

["vehiclesPlanesCAS", ["RHS_A10"]] call _fnc_saveToTemplate;
["vehiclesPlanesAA", ["rhsusf_f22"]] call _fnc_saveToTemplate;
["vehiclesPlanesTransport", ["UK3CB_BAF_Hercules_C3_DPMT", "UK3CB_BAF_Hercules_C4_DPMT"]] call _fnc_saveToTemplate;

["vehiclesHelisLight", ["UK3CB_BAF_Wildcat_AH1_TRN_8A_DPMT_RM"]] call _fnc_saveToTemplate;
["vehiclesHelisTransport", ["UK3CB_BAF_Merlin_HC3_CSAR_DPMT_RM", "UK3CB_BAF_Merlin_HC3_18_GPMG_DPMT_RM", "UK3CB_BAF_Chinook_HC1_DPMT"]] call _fnc_saveToTemplate;
["vehiclesHelisLightAttack", ["UK3CB_BAF_Wildcat_AH1_CAS_6A_DPMT_RM", "UK3CB_BAF_Wildcat_AH1_CAS_8A"]] call _fnc_saveToTemplate;
["vehiclesHelisAttack", ["UK3CB_BAF_Apache_AH1_CAS_DPMT_RM", "UK3CB_BAF_Apache_AH1_DPMT_RM"]] call _fnc_saveToTemplate;

["vehiclesArtillery", [ "rhsusf_m109_usarmy"]] call _fnc_saveToTemplate;
["magazines", createHashMapFromArray [
["rhsusf_m109_usarmy", ["rhs_mag_155mm_m795_28"]]
]] call _fnc_saveToTemplate;

["uavsAttack", ["UK3CB_BAF_MQ9_Reaper_DPMT"]] call _fnc_saveToTemplate;
["uavsPortable", ["B_UAV_01_F"]] call _fnc_saveToTemplate;

//Config special vehicles - militia vehicles are mostly used in the early game, police cars are being used by troops around cities -- Example:
["vehiclesMilitiaLightArmed", ["UK3CB_BAF_LandRover_WMIK_GPMG_FFR_Green_B_DPMW"]] call _fnc_saveToTemplate;
["vehiclesMilitiaTrucks", ["UK3CB_BAF_MAN_HX60_Transport_Green_DPMW"]] call _fnc_saveToTemplate;
["vehiclesMilitiaCars", ["UK3CB_BAF_LandRover_Soft_FFR_Green_B_DPMW"]] call _fnc_saveToTemplate;
["vehiclesMilitiaAPCs", ["UK3CB_BAF_Coyote_Passenger_L134A1_W_DPMT", "UK3CB_BAF_Coyote_Passenger_L111A1_W_DPMT"]] call _fnc_saveToTemplate;

["vehiclesPolice", ["UK3CB_BAF_LandRover_Snatch_FFR_Police_A"]] call _fnc_saveToTemplate;

["staticMGs", ["RHS_M2StaticMG_WD"]] call _fnc_saveToTemplate;
["staticAT", ["RHS_TOW_TriPod_WD"]] call _fnc_saveToTemplate;
["staticAA", ["RHS_Stinger_AA_pod_WD"]] call _fnc_saveToTemplate;
["staticMortars", ["RHS_M252_WD"]] call _fnc_saveToTemplate;
["staticHowitzers", ["RHS_M119_WD"]] call _fnc_saveToTemplate;

["vehicleRadar", "B_Radar_System_01_F"] call _fnc_saveToTemplate;
["vehicleSam", "B_SAM_System_03_F"] call _fnc_saveToTemplate;

["howitzerMagazineHE", "RHS_mag_m1_he_12"] call _fnc_saveToTemplate;
["mortarMagazineHE", "rhs_12Rnd_m821_HE"] call _fnc_saveToTemplate;
["mortarMagazineSmoke", "8Rnd_82mm_Mo_Smoke_white"] call _fnc_saveToTemplate;
["mortarMagazineFlare", "8Rnd_82mm_Mo_Flare_white"] call _fnc_saveToTemplate;

//Minefield definition
["minefieldAT", ["rhsusf_mine_M19"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["rhsusf_mine_m14"]] call _fnc_saveToTemplate;

#include "3CBBAF_Vehicle_Attributes.sqf"

/////////////////////
///  Identities   ///
/////////////////////

["faces", ["AfricanHead_01","AfricanHead_02","AfricanHead_03","Barklem","GreekHead_A3_05",
"GreekHead_A3_07","Sturrock","WhiteHead_01","WhiteHead_02","WhiteHead_03",
"WhiteHead_04","WhiteHead_05","WhiteHead_06","WhiteHead_07","WhiteHead_08",
"WhiteHead_09","WhiteHead_10","WhiteHead_11","WhiteHead_12","WhiteHead_13",
"WhiteHead_14","WhiteHead_15","WhiteHead_16","WhiteHead_17","WhiteHead_18",
"WhiteHead_19","WhiteHead_20","WhiteHead_21"]] call _fnc_saveToTemplate;
["voices", ["Male01ENGB", "Male02ENGB", "Male03ENGB", "Male04ENGB", "Male05ENGB"]] call _fnc_saveToTemplate;
"EnglishMen" call _fnc_saveNames;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
_loadoutData set ["rifles", []];
_loadoutData set ["carbines", []];
_loadoutData set ["grenadeLaunchers", []];
_loadoutData set ["SMGs", []];
_loadoutData set ["machineGuns", []];
_loadoutData set ["marksmanRifles", []];
_loadoutData set ["sniperRifles", []];
_loadoutData set ["lightATLaunchers", []];
_loadoutData set ["ATLaunchers", []];
_loadoutData set ["missileATLaunchers", []];
_loadoutData set ["AALaunchers", [
"rhs_weap_fim92"
]];
_loadoutData set ["sidearms", []];

_loadoutData set ["ATMines", ["rhs_mine_M19_mag"]];
_loadoutData set ["APMines", ["rhsusf_mine_m14_mag"]];
_loadoutData set ["lightExplosives", ["rhsusf_m112_mag", "DemoCharge_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["rhsusf_m112x4_mag", "SatchelCharge_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["HandGrenade", "MiniGrenade"]];
_loadoutData set ["antiTankGrenades", []];
_loadoutData set ["smokeGrenades", ["UK3CB_BAF_SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["UK3CB_BAF_SmokeShellRed", "UK3CB_BAF_SmokeShellGreen", "UK3CB_BAF_SmokeShellYellow", "UK3CB_BAF_SmokeShellPurple", "UK3CB_BAF_SmokeShellBlue", "UK3CB_BAF_SmokeShellOrange"]];

//Basic equipment. Shouldn't need touching most of the time.
//Mods might override this, or certain mods might want items removed (No GPSs in WW2, for example)
_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["rhsusf_ANPVS_14"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["rangefinders", ["rhsusf_bino_lerca_1200_black"]];

_loadoutData set ["traitorUniforms", ["UK3CB_BAF_U_CombatUniform_DPMT"]];
_loadoutData set ["traitorVests", ["UK3CB_BAF_V_Osprey_DPMT2"]];
_loadoutData set ["traitorHats", ["UK3CB_BAF_H_Boonie_DPMT", "UK3CB_BAF_H_Boonie_DPMT_PRR"]];

_loadoutData set ["officerUniforms", ["UK3CB_BAF_U_CombatUniform_DPMT"]];
_loadoutData set ["officerVests", ["UK3CB_BAF_V_Osprey_DPMT2"]];
_loadoutData set ["officerHats", ["UK3CB_BAF_H_Beret_RW"]];

_loadoutData set ["cloakUniforms", []];
_loadoutData set ["cloakVests", []];

_loadoutData set ["uniforms", []];
_loadoutData set ["vests", []];	
_loadoutData set ["slVests", []];
_loadoutData set ["medVests", []];
_loadoutData set ["glVests", []];
_loadoutData set ["mgVests", []];
_loadoutData set ["sniVests", []];
_loadoutData set ["backpacks", []];
_loadoutData set ["longRangeRadios", []];
_loadoutData set ["medBackpacks", []];
_loadoutData set ["engBackpacks", []];
_loadoutData set ["expBackpacks", []];
_loadoutData set ["helmets", []];
_loadoutData set ["slHat", ["UK3CB_BAF_H_Beret_RW"]];
_loadoutData set ["sniHats", ["UK3CB_BAF_H_Boonie_DPMT", "UK3CB_BAF_H_Boonie_DPMT_PRR"]];
_loadoutData set ["glasses", []];
_loadoutData set ["goggles", []];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
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

//TODO - ACE overrides for misc essentials, medical and engineer gear
//TODO - TFAR overrides for radios

///////////////////////////////////////
//    Special Forces Loadout Data    //
///////////////////////////////////////

private _sfLoadoutData = _loadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_sfLoadoutData set ["uniforms", ["UK3CB_BAF_U_CombatUniform_MTP_RM", "UK3CB_BAF_U_CombatUniform_MTP_ShortSleeve_RM", "UK3CB_BAF_U_CombatUniform_MTP_TShirt_RM"]];
_sfLoadoutData set ["NVGs", ["UK3CB_BAF_HMNVS"]];
_sfLoadoutData set ["vests", ["UK3CB_BAF_V_Osprey_Rifleman_A", "UK3CB_BAF_V_Osprey_Rifleman_B", "UK3CB_BAF_V_Osprey_Rifleman_C", "UK3CB_BAF_V_Osprey_Rifleman_D"]];
_sfLoadoutData set ["slVests", ["UK3CB_BAF_V_Osprey_SL_A", "UK3CB_BAF_V_Osprey_SL_B", "UK3CB_BAF_V_Osprey_SL_C", "UK3CB_BAF_V_Osprey_SL_D"]];
_sfLoadoutData set ["medVests", ["UK3CB_BAF_V_Osprey_Medic_A", "UK3CB_BAF_V_Osprey_Medic_B", "UK3CB_BAF_V_Osprey_Medic_C", "UK3CB_BAF_V_Osprey_Medic_D"]];
_sfLoadoutData set ["glVests", ["UK3CB_BAF_V_Osprey_Grenadier_A", "UK3CB_BAF_V_Osprey_Grenadier_B"]];
_sfLoadoutData set ["mgVests", ["UK3CB_BAF_V_Osprey_MG_A", "UK3CB_BAF_V_Osprey_MG_B"]];
_sfLoadoutData set ["sniVests", ["UK3CB_BAF_V_Osprey_Marksman_A"]];
_sfLoadoutData set ["backpacks", ["UK3CB_BAF_B_Bergen_MTP_Rifleman_L_C", "UK3CB_BAF_B_Bergen_MTP_Rifleman_L_D", "UK3CB_BAF_B_Kitbag_MTP"]];
_sfLoadoutData set ["aaBackpacks", ["UK3CB_BAF_B_Carryall_MTP"]];
_sfLoadoutData set ["medBackpacks", ["UK3CB_BAF_B_Bergen_MTP_Medic_L_A", "UK3CB_BAF_B_Bergen_MTP_Medic_L_B", "UK3CB_BAF_B_Bergen_MTP_Medic_H_A", "UK3CB_BAF_B_Bergen_MTP_Medic_H_B"]];
_sfLoadoutData set ["engBackpacks", ["UK3CB_BAF_B_Bergen_MTP_Engineer_L_A", "UK3CB_BAF_B_Bergen_MTP_Engineer_H_A"]];
_sfLoadoutData set ["expBackpacks", ["UK3CB_BAF_B_Bergen_MTP_Sapper_L_A", "UK3CB_BAF_B_Bergen_MTP_Sapper_H_A"]];
_sfLoadoutData set ["helmets", ["UK3CB_BAF_H_Mk7_Camo_A", "UK3CB_BAF_H_Mk7_Camo_B", "UK3CB_BAF_H_Mk7_Camo_C", "UK3CB_BAF_H_Mk7_Camo_ESS_D"]];
_sfLoadoutData set ["slHat", ["UK3CB_BAF_H_Beret_SAS", "UK3CB_BAF_H_Beret_SAS_PRR", "UK3CB_BAF_H_Beret_SAS_PRR_Over"]];
_sfLoadoutData set ["sniHats", ["UK3CB_BAF_H_Boonie_MTP", "UK3CB_BAF_H_Boonie_MTP_PRR"]];
_sfLoadoutData set ["binoculars", ["UK3CB_BAF_Soflam_Laserdesignator"]];

_sfLoadoutData set ["slRifles", [
["UK3CB_BAF_L85A3", "UK3CB_BAF_Silencer_L85", "", "RKSL_optic_LDS", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], "UK3CB_underbarrel_acc_grippod_t"],
["UK3CB_BAF_L85A3", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_ACOG_RMR", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], "UK3CB_underbarrel_acc_grippod_t"],
["UK3CB_BAF_L85A3", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_ACOG_d", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], "UK3CB_underbarrel_acc_grippod_t"],
["UK3CB_BAF_L119A1", "UK3CB_BAF_Silencer_L85", "", "RKSL_optic_LDS", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""],
["UK3CB_BAF_L119A1", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_ACOG_RMR", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""],
["UK3CB_BAF_L119A1", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_ACOG", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""],
["UK3CB_BAF_L85A3_UGL", "UK3CB_BAF_Silencer_L85", "", "RKSL_optic_LDS", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""],
["UK3CB_BAF_L85A3_UGL", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_ACOG_RMR", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""],
["UK3CB_BAF_L85A3_UGL", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_ACOG_d", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""],
["UK3CB_BAF_L119A1_UKUGL", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_ACOG", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""],
["UK3CB_BAF_L119A1_UKUGL", "UK3CB_BAF_Silencer_L85", "", "RKSL_optic_LDS", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""],
["UK3CB_BAF_L119A1_UKUGL", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_ACOG_RMR", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""]
]];
_sfLoadoutData set ["rifles", [
["UK3CB_BAF_L85A3", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_eotech_552_d", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], "UK3CB_underbarrel_acc_afg_t"],
["UK3CB_BAF_L85A3", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_compm4", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], "UK3CB_underbarrel_acc_afg_t"],
["UK3CB_BAF_L119A1", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_eotech_552", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""],
["UK3CB_BAF_L119A1", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_compm4", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""]
]];
_sfLoadoutData set ["grenadeLaunchers", [
["UK3CB_BAF_L85A3_UGL", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_eotech_552_d", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""],
["UK3CB_BAF_L85A3_UGL", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_compm4", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""],
["UK3CB_BAF_L119A1_UKUGL", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_eotech_552", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""],
["UK3CB_BAF_L119A1_UKUGL", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_compm4", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""]
]];
_sfLoadoutData set ["carbines", [
["UK3CB_BAF_L22A2", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""],
["UK3CB_BAF_L22A2", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_xps3", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""],
["UK3CB_BAF_L22A2", "UK3CB_BAF_SFFH", "", "rhsusf_acc_compm4", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""],
["UK3CB_BAF_L119A1_CQB", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_eotech_552", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""],
["UK3CB_BAF_L119A1_CQB", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_compm4", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""],
["UK3CB_BAF_L119A1_CQB", "UK3CB_BAF_Silencer_L85", "", "rhsusf_acc_eotech_xps3", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""]
]];
_sfLoadoutData set ["machineGuns", [
["UK3CB_BAF_L110A2", "UK3CB_BAF_SFFH", "", "RKSL_optic_LDS", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110A2", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110A2", "UK3CB_BAF_SFFH", "", "rhsusf_acc_ELCAN", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110A2RIS", "UK3CB_BAF_SFFH", "", "RKSL_optic_LDS", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110A2RIS", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110A2RIS", "UK3CB_BAF_SFFH", "", "rhsusf_acc_ELCAN", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110_762", "UK3CB_BAF_SFFH", "", "RKSL_optic_LDS", ["UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd_T"], [], ""],
["UK3CB_BAF_L110_762", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552", ["UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd_T"], [], ""],
["UK3CB_BAF_L110_762", "UK3CB_BAF_SFFH", "", "rhsusf_acc_ELCAN", ["UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd_T"], [], ""]
]];
_sfLoadoutData set ["marksmanRifles", [
["UK3CB_BAF_L129A1", "UK3CB_BAF_Silencer_L115A3", "", "UK3CB_BAF_TA648_308", ["UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd_T"], [], "UK3CB_underbarrel_acc_bipod"],
["UK3CB_BAF_L129A1", "UK3CB_BAF_Silencer_L115A3", "", "rhsusf_acc_M8541", ["UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd_T"], [], "UK3CB_underbarrel_acc_bipod"],
["UK3CB_BAF_L129A1", "UK3CB_BAF_Silencer_L115A3", "", "RKSL_optic_PMII_312", ["UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd_T"], [], "UK3CB_underbarrel_acc_bipod"],
["UK3CB_BAF_L129A1", "UK3CB_BAF_Silencer_L115A3", "", "rhsusf_acc_LEUPOLDMK4_2", ["UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd_T"], [], "UK3CB_underbarrel_acc_bipod"]
]];
_sfLoadoutData set ["sniperRifles", [
["UK3CB_BAF_L115A3_BL", "UK3CB_BAF_Silencer_L115A3", "", "RKSL_optic_PMII_525", ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], ""],
["UK3CB_BAF_L115A3_BL", "UK3CB_BAF_Silencer_L115A3", "", "RKSL_optic_PMII_312", ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], ""],
["UK3CB_BAF_L115A3_BL_Ghillie", "UK3CB_BAF_Silencer_L115A3", "", "RKSL_optic_PMII_525", ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], ""],
["UK3CB_BAF_L115A3_BL_Ghillie", "UK3CB_BAF_Silencer_L115A3", "", "RKSL_optic_PMII_312", ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], ""],
["UK3CB_BAF_L118A1_Covert_BL", "", "", "RKSL_optic_PMII_525", ["UK3CB_BAF_762_L42A1_10Rnd", "UK3CB_BAF_762_L42A1_10Rnd", "UK3CB_BAF_762_L42A1_10Rnd_T"], [], ""],
["UK3CB_BAF_L118A1_Covert_BL", "", "", "RKSL_optic_PMII_312", ["UK3CB_BAF_762_L42A1_10Rnd", "UK3CB_BAF_762_L42A1_10Rnd", "UK3CB_BAF_762_L42A1_10Rnd_T"], [], ""],
["UK3CB_BAF_L135A1", "", "", "RKSL_optic_PMII_525", ["UK3CB_BAF_127_10Rnd"], [], ""],
["UK3CB_BAF_L135A1", "", "", "RKSL_optic_PMII_312", ["UK3CB_BAF_127_10Rnd"], [], ""],
["UK3CB_BAF_L135A1", "", "", "RKSL_optic_PMII_525", ["UK3CB_BAF_127_10Rnd_AP"], [], ""]
]];
_sfLoadoutData set ["sidearms", [
["UK3CB_BAF_L131A1", "rhsusf_acc_omega9k", "UK3CB_BAF_Laser_L131A1", "", ["UK3CB_BAF_9_17Rnd"], [], ""]
]];
_sfLoadoutData set ["ATLaunchers", [
["rhs_weap_maaws", "", "", "rhs_optic_maaws", ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP"], [], ""]
]];
_sfLoadoutData set ["lightATLaunchers", [
"UK3CB_BAF_NLAW_Launcher",
"UK3CB_BAF_AT4_CS_AT_Launcher",
"UK3CB_BAF_AT4_CS_AP_Launcher"
]];

/////////////////////////////////
//    Elite Loadout Data    //
/////////////////////////////////

private _eliteLoadoutData = _loadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_eliteLoadoutData set ["uniforms", ["UK3CB_BAF_U_CombatUniform_DPMT", "UK3CB_BAF_U_CombatUniform_DPMT_ShortSleeve"]];
_eliteLoadoutData set ["vests", ["UK3CB_BAF_V_Osprey_DPMT7"]];
_eliteLoadoutData set ["slVests", ["UK3CB_BAF_V_Osprey_DPMT2"]];
_eliteLoadoutData set ["medVests", ["UK3CB_BAF_V_Osprey_DPMT8", "UK3CB_BAF_V_Osprey_DPMT9"]];
_eliteLoadoutData set ["glVests", ["UK3CB_BAF_V_Osprey_DPMT3"]];
_eliteLoadoutData set ["backpacks", ["UK3CB_BAF_B_Kitbag_DPMT", "UK3CB_BAF_B_Bergen_DPMT_Rifleman_A","UK3CB_BAF_B_Bergen_DPMT_Rifleman_B"]];
_eliteLoadoutData set ["aaBackpacks", ["UK3CB_BAF_B_Carryall_DPMT"]];
_eliteLoadoutData set ["helmets", ["UK3CB_BAF_H_Mk6_DPMT_D", "UK3CB_BAF_H_Mk6_DPMT_F", "UK3CB_BAF_H_Mk6_DPMT_B", "UK3CB_BAF_H_Mk6_DPMT_A"]];
_eliteLoadoutData set ["binoculars", ["UK3CB_BAF_Soflam_Laserdesignator"]];

_eliteLoadoutData set ["slRifles", [
["UK3CB_BAF_L85A3", "", "", "RKSL_optic_LDS", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], "UK3CB_underbarrel_acc_grippod_t"],
["UK3CB_BAF_L85A3", "", "", "rhsusf_acc_ACOG_RMR", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], "UK3CB_underbarrel_acc_grippod_t"],
["UK3CB_BAF_L85A3", "", "", "rhsusf_acc_ACOG_d", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], "UK3CB_underbarrel_acc_grippod_t"],
["UK3CB_BAF_L85A3_UGL", "", "", "RKSL_optic_LDS", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""],
["UK3CB_BAF_L85A3_UGL", "", "", "rhsusf_acc_ACOG_RMR", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""],
["UK3CB_BAF_L85A3_UGL", "", "", "rhsusf_acc_ACOG_d", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["rifles", [
["UK3CB_BAF_L85A3", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552_d", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], "UK3CB_underbarrel_acc_afg_t"],
["UK3CB_BAF_L85A3", "UK3CB_BAF_SFFH", "", "rhsusf_acc_compm4", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], "UK3CB_underbarrel_acc_afg_t"]
]];
_eliteLoadoutData set ["grenadeLaunchers", [
["UK3CB_BAF_L85A3_UGL", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552_d", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""],
["UK3CB_BAF_L85A3_UGL", "UK3CB_BAF_SFFH", "", "rhsusf_acc_compm4", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""]
]];
_eliteLoadoutData set ["carbines", [
["UK3CB_BAF_L22A2", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""],
["UK3CB_BAF_L22A2", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_xps3", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""],
["UK3CB_BAF_L22A2", "UK3CB_BAF_SFFH", "", "rhsusf_acc_compm4", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""]
]];
_eliteLoadoutData set ["machineGuns", [
["UK3CB_BAF_L110A2", "UK3CB_BAF_SFFH", "", "RKSL_optic_LDS", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110A2", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110A2", "UK3CB_BAF_SFFH", "", "rhsusf_acc_ELCAN", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110A2RIS", "UK3CB_BAF_SFFH", "", "RKSL_optic_LDS", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110A2RIS", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110A2RIS", "UK3CB_BAF_SFFH", "", "rhsusf_acc_ELCAN", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110_762", "UK3CB_BAF_SFFH", "", "RKSL_optic_LDS", ["UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd_T"], [], ""],
["UK3CB_BAF_L110_762", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552", ["UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd_T"], [], ""],
["UK3CB_BAF_L110_762", "UK3CB_BAF_SFFH", "", "rhsusf_acc_ELCAN", ["UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd_T"], [], ""]
]];
_eliteLoadoutData set ["marksmanRifles", [
["UK3CB_BAF_L129A1", "", "", "UK3CB_BAF_TA648_308", ["UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd_T"], [], "UK3CB_underbarrel_acc_bipod"],
["UK3CB_BAF_L129A1", "", "", "rhsusf_acc_M8541", ["UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd_T"], [], "UK3CB_underbarrel_acc_bipod"],
["UK3CB_BAF_L129A1", "", "", "RKSL_optic_PMII_312", ["UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd_T"], [], "UK3CB_underbarrel_acc_bipod"],
["UK3CB_BAF_L129A1", "", "", "rhsusf_acc_LEUPOLDMK4_2", ["UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd_T"], [], "UK3CB_underbarrel_acc_bipod"]
]];
_eliteLoadoutData set ["sniperRifles", [
["UK3CB_BAF_L115A3_BL", "", "", "RKSL_optic_PMII_525", ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], ""],
["UK3CB_BAF_L115A3_BL", "", "", "RKSL_optic_PMII_312", ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], ""],
["UK3CB_BAF_L115A3_BL_Ghillie", "", "", "RKSL_optic_PMII_525", ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], ""],
["UK3CB_BAF_L115A3_BL_Ghillie", "", "", "RKSL_optic_PMII_312", ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], ""]
]];
_eliteLoadoutData set ["sidearms", [
["UK3CB_BAF_L105A2", "", "", "", ["UK3CB_BAF_9_15Rnd"], [], ""],
["UK3CB_BAF_L117A2", "", "", "", ["UK3CB_BAF_9_15Rnd"], [], ""]
]];
_eliteLoadoutData set ["lightATLaunchers", [
"UK3CB_BAF_NLAW_Launcher",
"UK3CB_BAF_AT4_CS_AT_Launcher",
"UK3CB_BAF_AT4_CS_AP_Launcher"
]];
_eliteLoadoutData set ["ATLaunchers", [
["rhs_weap_maaws", "", "", "rhs_optic_maaws", ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP"], [], ""]
]];
_eliteLoadoutData set ["missileATLaunchers", [
["UK3CB_BAF_Javelin_Launcher", "", "", "", ["UK3CB_BAF_Javelin_Mag"], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_policeLoadoutData set ["uniforms", ["U_B_GEN_Soldier_F", "U_B_GEN_Commander_F"]];		//this line determines uniforms for police loadouts -- Example: ["U_B_GEN_Commander_F"] -- Array, can contain multiple assets
_policeLoadoutData set ["vests", ["V_TacVest_blk_POLICE"]];			//this line determines vests for police loadouts -- Example: ["V_TacVest_gen_F"] -- Array, can contain multiple assets
_policeLoadoutData set ["helmets", ["H_Cap_police"]];			//this line determines helmets for police loadouts -- Example: ["H_Beret_gen_F"] -- Array, can contain multiple assets

_policeLoadoutData set ["shotGuns", [
["UK3CB_BAF_L128A1", "", "", "rhsusf_acc_eotech_xps3", ["UK3CB_BAF_12G_Pellets", "UK3CB_BAF_12G_Slugs"], [], ""],
["UK3CB_BAF_L128A1", "", "", "rhsusf_acc_T1_high", ["UK3CB_BAF_12G_Pellets", "UK3CB_BAF_12G_Slugs"], [], ""]
]];
_policeLoadoutData set ["SMGs", [
["UK3CB_BAF_L91A1", "", "", "rhsusf_acc_T1_high", [], [], ""],
["UK3CB_BAF_L91A1", "", "", "rhsusf_acc_eotech_xps3", [], [], ""]
]];
_policeLoadoutData set ["sidearms", [
["UK3CB_BAF_L105A2", "", "", "", ["UK3CB_BAF_9_15Rnd"], [], ""]
]];

/////////////////////////////////
//    Military Loadout Data    //
/////////////////////////////////

private _militaryLoadoutData = _loadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_militaryLoadoutData set ["uniforms", ["UK3CB_BAF_U_CombatUniform_DPMT", "UK3CB_BAF_U_CombatUniform_DPMT_ShortSleeve"]];
_militaryLoadoutData set ["vests", ["UK3CB_BAF_V_Osprey_DPMT7"]];
_militaryLoadoutData set ["slVests", ["UK3CB_BAF_V_Osprey_DPMT2"]];
_militaryLoadoutData set ["medVests", ["UK3CB_BAF_V_Osprey_DPMT8", "UK3CB_BAF_V_Osprey_DPMT9"]];
_militaryLoadoutData set ["glVests", ["UK3CB_BAF_V_Osprey_DPMT3"]];
_militaryLoadoutData set ["backpacks", ["UK3CB_BAF_B_Kitbag_DPMT", "UK3CB_BAF_B_Bergen_DPMT_Rifleman_A","UK3CB_BAF_B_Bergen_DPMT_Rifleman_B"]];
_militaryLoadoutData set ["aaBackpacks", ["UK3CB_BAF_B_Carryall_DPMT"]];
_militaryLoadoutData set ["helmets", ["UK3CB_BAF_H_Mk6_DPMT_D", "UK3CB_BAF_H_Mk6_DPMT_F", "UK3CB_BAF_H_Mk6_DPMT_B", "UK3CB_BAF_H_Mk6_DPMT_A"]];
_militaryLoadoutData set ["binoculars", ["UK3CB_BAF_Soflam_Laserdesignator"]];

_militaryLoadoutData set ["slRifles", [
["UK3CB_BAF_L85A3", "", "", "RKSL_optic_LDS", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], "UK3CB_underbarrel_acc_grippod_t"],
["UK3CB_BAF_L85A3", "", "", "rhsusf_acc_ACOG_RMR", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], "UK3CB_underbarrel_acc_grippod_t"],
["UK3CB_BAF_L85A3", "", "", "rhsusf_acc_ACOG_d", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], "UK3CB_underbarrel_acc_grippod_t"],
["UK3CB_BAF_L85A3_UGL", "", "", "RKSL_optic_LDS", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""],
["UK3CB_BAF_L85A3_UGL", "", "", "rhsusf_acc_ACOG_RMR", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""],
["UK3CB_BAF_L85A3_UGL", "", "", "rhsusf_acc_ACOG_d", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "rhs_mag_M397_HET", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["rifles", [
["UK3CB_BAF_L85A3", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552_d", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], "UK3CB_underbarrel_acc_afg_t"],
["UK3CB_BAF_L85A3", "UK3CB_BAF_SFFH", "", "rhsusf_acc_compm4", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], "UK3CB_underbarrel_acc_afg_t"]
]];
_militaryLoadoutData set ["grenadeLaunchers", [
["UK3CB_BAF_L85A3_UGL", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552_d", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""],
["UK3CB_BAF_L85A3_UGL", "UK3CB_BAF_SFFH", "", "rhsusf_acc_compm4", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""]
]];
_militaryLoadoutData set ["carbines", [
["UK3CB_BAF_L22A2", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""],
["UK3CB_BAF_L22A2", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_xps3", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""],
["UK3CB_BAF_L22A2", "UK3CB_BAF_SFFH", "", "rhsusf_acc_compm4", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""]
]];
_militaryLoadoutData set ["machineGuns", [
["UK3CB_BAF_L110A2", "UK3CB_BAF_SFFH", "", "RKSL_optic_LDS", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110A2", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110A2", "UK3CB_BAF_SFFH", "", "rhsusf_acc_ELCAN", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110A2RIS", "UK3CB_BAF_SFFH", "", "RKSL_optic_LDS", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110A2RIS", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110A2RIS", "UK3CB_BAF_SFFH", "", "rhsusf_acc_ELCAN", ["UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd", "UK3CB_BAF_556_200Rnd_T"], [], ""],
["UK3CB_BAF_L110_762", "UK3CB_BAF_SFFH", "", "RKSL_optic_LDS", ["UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd_T"], [], ""],
["UK3CB_BAF_L110_762", "UK3CB_BAF_SFFH", "", "rhsusf_acc_eotech_552", ["UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd_T"], [], ""],
["UK3CB_BAF_L110_762", "UK3CB_BAF_SFFH", "", "rhsusf_acc_ELCAN", ["UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd", "UK3CB_BAF_762_200Rnd_T"], [], ""]
]];
_militaryLoadoutData set ["marksmanRifles", [
["UK3CB_BAF_L129A1", "", "", "UK3CB_BAF_TA648_308", ["UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd_T"], [], "UK3CB_underbarrel_acc_bipod"],
["UK3CB_BAF_L129A1", "", "", "rhsusf_acc_M8541", ["UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd_T"], [], "UK3CB_underbarrel_acc_bipod"],
["UK3CB_BAF_L129A1", "", "", "RKSL_optic_PMII_312", ["UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd_T"], [], "UK3CB_underbarrel_acc_bipod"],
["UK3CB_BAF_L129A1", "", "", "rhsusf_acc_LEUPOLDMK4_2", ["UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd", "UK3CB_BAF_762_L42A1_20Rnd_T"], [], "UK3CB_underbarrel_acc_bipod"]
]];
_militaryLoadoutData set ["sniperRifles", [
["UK3CB_BAF_L115A3_BL", "", "", "RKSL_optic_PMII_525", ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], ""],
["UK3CB_BAF_L115A3_BL", "", "", "RKSL_optic_PMII_312", ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], ""],
["UK3CB_BAF_L115A3_BL_Ghillie", "", "", "RKSL_optic_PMII_525", ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], ""],
["UK3CB_BAF_L115A3_BL_Ghillie", "", "", "RKSL_optic_PMII_312", ["UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd", "UK3CB_BAF_338_5Rnd_Tracer"], [], ""]
]];
_militaryLoadoutData set ["sidearms", [
["UK3CB_BAF_L105A2", "", "", "", ["UK3CB_BAF_9_15Rnd"], [], ""],
["UK3CB_BAF_L117A2", "", "", "", ["UK3CB_BAF_9_15Rnd"], [], ""]
]];
_militaryLoadoutData set ["lightATLaunchers", [
"UK3CB_BAF_NLAW_Launcher",
"UK3CB_BAF_AT4_CS_AT_Launcher",
"UK3CB_BAF_AT4_CS_AP_Launcher"
]];
_militaryLoadoutData set ["ATLaunchers", [
["rhs_weap_maaws", "", "", "rhs_optic_maaws", ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP"], [], ""]
]];
_militaryLoadoutData set ["missileATLaunchers", [
["UK3CB_BAF_Javelin_Launcher", "", "", "", ["UK3CB_BAF_Javelin_Mag"], [], ""]
]];

///////////////////////////////
//    Police Loadout Data    //
///////////////////////////////

private _policeLoadoutData = _loadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_policeLoadoutData set ["uniforms", ["U_B_GEN_Soldier_F", "U_B_GEN_Commander_F"]];		//this line determines uniforms for police loadouts -- Example: ["U_B_GEN_Commander_F"] -- Array, can contain multiple assets
_policeLoadoutData set ["vests", ["V_TacVest_blk_POLICE"]];			//this line determines vests for police loadouts -- Example: ["V_TacVest_gen_F"] -- Array, can contain multiple assets
_policeLoadoutData set ["helmets", ["H_Cap_police"]];			//this line determines helmets for police loadouts -- Example: ["H_Beret_gen_F"] -- Array, can contain multiple assets

_policeLoadoutData set ["shotGuns", [
["UK3CB_BAF_L128A1", "", "", "rhsusf_acc_eotech_xps3", ["UK3CB_BAF_12G_Pellets", "UK3CB_BAF_12G_Slugs"], [], ""],
["UK3CB_BAF_L128A1", "", "", "rhsusf_acc_T1_high", ["UK3CB_BAF_12G_Pellets", "UK3CB_BAF_12G_Slugs"], [], ""]
]];
_policeLoadoutData set ["SMGs", [
["UK3CB_BAF_L91A1", "", "", "rhsusf_acc_T1_high", [], [], ""],
["UK3CB_BAF_L91A1", "", "", "rhsusf_acc_eotech_xps3", [], [], ""]
]];
_policeLoadoutData set ["sidearms", [
["UK3CB_BAF_L105A2", "", "", "", ["UK3CB_BAF_9_15Rnd"], [], ""]
]];

////////////////////////////////
//    Militia Loadout Data    //
////////////////////////////////

private _militiaLoadoutData = _loadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_militiaLoadoutData set ["uniforms", ["UK3CB_BAF_U_Smock_DPMT"]];
_militiaLoadoutData set ["vests", ["UK3CB_BAF_V_PLCE_Webbing_DPMT"]];
_militiaLoadoutData set ["backpacks", ["UK3CB_BAF_B_Kitbag_OLI", "UK3CB_BAF_B_Carryall_OLI", "UK3CB_BAF_B_Bergen_OLI_Rifleman_A", "UK3CB_BAF_B_Bergen_OLI_Rifleman_B"]];
_militiaLoadoutData set ["helmets", ["UK3CB_BAF_H_Wool_Hat"]];

_militiaLoadoutData set ["slRifles", [
["UK3CB_BAF_L85A2", "UK3CB_BAF_SFFH", "", "UK3CB_BAF_SUSAT", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""],
["UK3CB_BAF_L85A2_UGL", "UK3CB_BAF_SFFH", "", "UK3CB_BAF_SUSAT", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""]
]];
_militiaLoadoutData set ["rifles", [
["UK3CB_BAF_L85A2", "UK3CB_BAF_SFFH", "", "", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""]
]];
_militiaLoadoutData set ["grenadeLaunchers", [
["UK3CB_BAF_L85A2_UGL", "UK3CB_BAF_SFFH", "", "", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], ["UK3CB_BAF_1Rnd_HE_Grenade_Shell", "UK3CB_BAF_1Rnd_HEDP_Grenade_Shell", "UK3CB_BAF_1Rnd_Smoke_Grenade_shell"], ""]
]];

_militiaLoadoutData set ["carbines", [
["UK3CB_BAF_L22", "", "", "", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""]
]];
_militiaLoadoutData set ["machineGuns", [
["UK3CB_BAF_L7A2", "", "", "", ["UK3CB_BAF_762_100Rnd"], ["UK3CB_BAF_762_100Rnd", "UK3CB_BAF_762_100Rnd_T"], ""]
]];
_militiaLoadoutData set ["marksmanRifles", [
["UK3CB_BAF_L86A3", "UK3CB_BAF_SFFH", "UK3CB_BAF_LLM_IR_Black", "UK3CB_BAF_SUSAT", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""]
]];
_militiaLoadoutData set ["sidearms", [
["UK3CB_BAF_L9A1", "", "", "", ["UK3CB_BAF_9_13Rnd"], [], ""]
]];

_militiaLoadoutData set ["lightATLaunchers", [
["rhs_weap_m72a7"]
]];
_militiaLoadoutData set ["ATLaunchers", [
["rhs_weap_maaws", "", "", "", ["rhs_mag_maaws_HEAT", "rhs_mag_maaws_HE", "rhs_mag_maaws_HEDP"], [], ""]
]];
//////////////////////////
//    Misc Loadouts     //
//////////////////////////
//The following lines are determining the loadout of the vehicle crew
private _crewLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData; // touch and shit breaks
_crewLoadoutData set ["uniforms", ["UK3CB_BAF_U_CombatUniform_DPMT"]];
_crewLoadoutData set ["vests", ["UK3CB_BAF_V_Osprey_DPMT1"]];
_crewLoadoutData set ["helmets", ["UK3CB_BAF_H_CrewHelmet_B"]];
_crewLoadoutData set ["carbines", [
["UK3CB_BAF_L22", "", "", "", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""]
]];

//The following lines are determining the loadout of the pilots
private _pilotLoadoutData = _militaryLoadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["uniforms", ["UK3CB_BAF_U_HeliPilotCoveralls_RAF"]];
_pilotLoadoutData set ["vests", ["UK3CB_BAF_V_Pilot_DPMT"]];
_pilotLoadoutData set ["helmets", ["UK3CB_BAF_H_PilotHelmetHeli_A"]];
_pilotLoadoutData set ["carbines", [
["UK3CB_BAF_L22", "", "", "", ["UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd", "UK3CB_BAF_556_30Rnd_T"], [], ""]
]];

// ##################### DO NOT TOUCH ANYTHING BELOW THIS LINE #####################


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
	["primary", 6] call _fnc_addMagazines;
	["primary", 4] call _fnc_addAdditionalMuzzleMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["antiTankGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 2] call _fnc_addItem;

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
	["primary", 6] call _fnc_addMagazines;

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
	[["medBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

	["carbines"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

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
	["primary", 6] call _fnc_addMagazines;
	["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

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
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	[["expBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;


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
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	[["engBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

	["carbines"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

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
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	[selectRandom ["ATLaunchers", "lightATLaunchers"]] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

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
	["backpacks"] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	[["missileATLaunchers", "ATLaunchers"] call _fnc_fallback] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

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
	[["aaBackpacks", "backpacks"] call _fnc_fallback] call _fnc_setBackpack;

	["rifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["AALaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

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
	["backpacks"] call _fnc_setBackpack;

	[["sniperRifles", "marksmanRifles"] call _fnc_fallback] call _fnc_setPrimary;
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


	[selectRandom ["SMGs", "shotGuns"]] call _fnc_setPrimary;
	["primary", 4] call _fnc_addMagazines;

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

	["carbines"] call _fnc_setPrimary;
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
