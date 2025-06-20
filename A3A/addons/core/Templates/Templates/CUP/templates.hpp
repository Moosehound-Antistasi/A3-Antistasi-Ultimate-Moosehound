    // ***************************** CUP *****************************

    class CUP_Base
    {
        requiredAddons[] = {"CUP_Creatures_People_Civil_Russia", "CUP_BaseConfigs", "CUP_AirVehicles_Core"};        // units, weapons, vehicles
        //requiredAddons[] = {"CUP_AirVehicles_Core"};        // vehicles requires units & weapons
        basepath = QPATHTOFOLDER(Templates\Templates\CUP);
        logo = "\CUP\Creatures\People\CUP_Creatures_People_Core\ui\logo_cup_ca_small.paa";
        priority = 60;
    };

    class CUP_ACR_Arid : CUP_Base
    {
        side = "Occ";
        flagTexture = "cup\baseconfigs\cup_baseconfigs\data\flags\flag_cz_co.paa";
        name = "CUP ACR Arid";
        file = "CUP_AI_ACR_Arid";
        climate[] = {"arid"};
    };
    class CUP_ACR_Temperate : CUP_ACR_Arid
    {
        name = "CUP ACR Temperate";
        file = "CUP_AI_ACR_Temperate";
        climate[] = {"temperate","tropical","arctic"};
    };

    class CUP_AFRF_Arid : CUP_Base
    {
        side = "Inv";
        flagTexture = "\CUP\BaseConfigs\CUP_BaseConfigs\data\Flags\flag_rus_co.paa";
        name = "CUP AFRF Arid";
        file = "CUP_AI_AFRF_Arid";
        climate[] = {"arid"};
        description = $STR_A3AP_setupFactionsTab_aegis_afrf;
    };
    class CUP_AFRF_Temperate : CUP_AFRF_Arid
    {
        name = "CUP AFRF Temperate";
        file = "CUP_AI_AFRF_Temperate";
        climate[] = {"temperate","tropical"};
    };
    class CUP_AFRF_Arctic : CUP_AFRF_Arid
    {
        name = "CUP AFRF Arctic";
        file = "CUP_AI_AFRF_Arctic";
        climate[] = {"arctic"};
    };

    class CUP_NATO_Temperate : CUP_Base
    {
        side = "Occ";
        flagTexture = "\A3\Data_F\Flags\Flag_NATO_CO.paa";
        name = "CUP NATO Temperate";
        file = "CUP_AI_NATO_Temperate";
    };

    class CUP_BAF_Arid : CUP_Base
    {
        side = "Occ";
        flagTexture = "\A3\Data_F\Flags\flag_uk_co.paa";
        name = "CUP BAF Arid";
        file = "CUP_AI_BAF_Arid";
        climate[] = {"arid"};
    };
    class CUP_BAF_Temperate : CUP_BAF_Arid
    {
        name = "CUP BAF Temperate";
        file = "CUP_AI_BAF_Temperate";
        climate[] = {"temperate","tropical","arctic"};
    };

    class CUP_CDF_Arctic : CUP_Base
    {
        side = "Occ";
        flagTexture = "cup\baseconfigs\cup_baseconfigs\data\flags\flag_cdf_co.paa";
        name = "CUP CDF Arctic";
        file = "CUP_AI_CDF_Arctic";
        climate[] = {"arctic"};
        maps[] = {"chernarus_winter"};
        description = $STR_A3AP_setupFactionsTab_cdf;
    };
    class CUP_CDF_Temperate : CUP_CDF_Arctic
    {
        name = "CUP CDF Temperate";
        file = "CUP_AI_CDF_Temperate";
        climate[] = {"temperate"};
        maps[] = {"chernarus_summer","chernarus"};
    };

    class CUP_RACS_Arid : CUP_Base
    {
        side = "Occ";
        flagTexture = "\CUP\BaseConfigs\CUP_BaseConfigs\data\Flags\flag_racs_co.paa";
        name = "CUP RACS Arid";
        file = "CUP_AI_RACS_Arid";
        climate[] = {"arid"};
        maps[] = {"sara"};
    };
    class CUP_RACS_Tropical : CUP_RACS_Arid
    {
        name = "CUP RACS Tropical";
        file = "CUP_AI_RACS_Tropical";
        climate[] = {"tropical"};
        maps[] = {"tanoa"};
    };

    class CUP_SLA : CUP_Base
    {
        side = "Inv";
        flagTexture = "\CUP\BaseConfigs\CUP_BaseConfigs\data\Flags\flag_sla_co.paa";
        name = "CUP SLA";
        file = "CUP_AI_SLA_Temperate";          // Sahrani is a bit weird
        climate[] = {"arid","temperate"};
        maps[] = {"sara"};
    };

    class CUP_TKA : CUP_Base
    {
        side = "Occ";
        flagTexture = "\CUP\BaseConfigs\CUP_BaseConfigs\data\Flags\flag_tka_co.paa";
        name = "CUP TKA";
        file = "CUP_AI_TKA_Arid";
        climate[] = {"arid"};
        maps[] = {"takistan","kunduz"};
    };

    class CUP_USAF_Arid : CUP_Base
    {
        side = "Inv";
        flagTexture = "a3\data_f\flags\flag_us_co.paa";
        name = "CUP US Army Arid";
        file = "CUP_AI_US_Army_Arid";
        climate[] = {"arid"};
        description = $STR_A3AP_setupFactionsTab_usaf;
    };
    class CUP_USAF_Temperate : CUP_USAF_Arid
    {
        name = "CUP US Army Temperate";
        file = "CUP_AI_US_Army_Temperate";
        climate[] = {"temperate","tropical","arctic"};
    };

    class CUP_USMC_Arid : CUP_Base
    {
        side = "Inv";
        flagTexture = "a3\data_f\flags\flag_us_co.paa";
        name = "CUP USMC Arid";
        file = "CUP_AI_US_Marine_Arid";
        climate[] = {"arid"};
        description = $STR_A3AP_setupFactionsTab_usmc;
    };
    class CUP_USMC_Temperate : CUP_USMC_Arid
    {
        name = "CUP USMC Temperate";
        file = "CUP_AI_US_Marine_Temperate";
        climate[] = {"temperate","tropical","arctic"};
    };

    class CUP_ION_Arid : CUP_Base
    {
        side = "Occ";
        flagTexture = "\A3\Data_F\Flags\flag_ion_CO.paa";
        name = "CUP ION Arid";
        file = "CUP_AI_ION_Arid";
        climate[] = {"arid","temperate","tropical"};
    };
    class CUP_ION_Temperate : CUP_ION_Arid
    {
        name = "CUP ION Arctic";
        file = "CUP_AI_ION_Arctic";
        climate[] = {"arctic"};
    };

    class CUP_BW_Arid : CUP_Base
    {
        side = "Occ";
        flagTexture = "cup\baseconfigs\cup_baseconfigs\data\flags\flag_ger_co.paa";
        name = "CUP BW Arid";
        file = "CUP_AI_BW_Arid";
        climate[] = {"arid"};
    };
        class CUP_BW_Temperate : CUP_BW_Arid
    {
        name = "CUP BW Temperate";
        file = "CUP_AI_BW_Temperate";
        climate[] = {"arctic","temperate","tropical"};
    };
        class CUP_HIL : CUP_Base
    {
        side = "Occ";
        flagTexture = "a3\data_f_exp\flags\flag_tanoa_co.paa";
        name = "CUP HIL";
        file = "CUP_AI_HIL";
        climate[] = {"temperate","tropical"};
    };
    class CUP_TKM : CUP_Base
    {
        side = "Reb";
        flagTexture = "\CUP\BaseConfigs\CUP_BaseConfigs\data\Flags\flag_tka_co.paa";
        name = "CUP TKM";
        file = "CUP_Reb_TKM";
    };
    class CUP_Reb : CUP_Base
    {
        side = "Reb";
        flagTexture = "cup\baseconfigs\cup_baseconfigs\data\flags\flag_napa_co.paa";
        name = "CUP NAPA";
        file = "CUP_Reb_NAPA";
        description = $STR_A3AP_setupFactionsTab_napa_3cbf;
    };
    class CUP_Reb_EM : CUP_Reb
    {
        name = "Eastern Loyalists";
        flagTexture = QPATHTOFOLDER(Templates\Templates\CUP\images\flag_old_soviet_co.paa);
        file = "CUP_Reb_EM";
        description = "A generic militarized militia using surplus or outdated Soviet technology. Loyal to the East. Consider this a more forgiving start than most.";
    };
    class CUP_Reb_WM : CUP_Reb
    {
        name = "Western Loyalists";
        flagTexture = QPATHTOFOLDER(Templates\Templates\CUP\images\flag_old_nato_co.paa);
        file = "CUP_Reb_WM";
        description = "A generic militarized militia using surplus or outdated NATO technology. Loyal to the West. Consider this a more forgiving start than most.";
    };
    class CUP_TKC : CUP_Base
    {
        side = "Civ";
        flagTexture = "\CUP\BaseConfigs\CUP_BaseConfigs\data\Flags\flag_tka_co.paa";
        name = "CUP TKC";
        file = "CUP_Civ_TKC";
    };
    class CUP_Civ : CUP_Base
    {
        side = "Civ";
        flagTexture = "\CUP\BaseConfigs\CUP_BaseConfigs\data\Flags\flag_chernarus_co.paa";
        name = "CUP CHC";
        file = "CUP_Civ_CHC";
    };
    class CUP_CHDKZ : CUP_Base
    {
        side = "Riv";
        flagTexture = "\CUP\BaseConfigs\CUP_BaseConfigs\data\Flags\flag_chdkz_co.paa";
        name = "CUP CHDKZ";
        file = "CUP_Riv_CHDKZ";
        description = $STR_A3AP_setupFactionsTab_chdkz;
    };
    class CUP_LRI : CUP_Base
    {
        side = "Reb";
        flagTexture = QPATHTOFOLDER(Templates\Templates\CUP\flag_LRI_co.paa);
        name = "CUP LRI";
        file = "CUP_Reb_LRI";
        description = $STR_A3AP_setupFactionsTab_CUP_LRI;
    };
	
    class LDF_Base : CUP_Base
    {
        requiredAddons[] = {"CUP_Creatures_People_Civil_Russia", "CUP_BaseConfigs", "CUP_AirVehicles_Core", "Flex_CUP_LDF_Faction"};        // units, weapons, vehicles
        //requiredAddons[] = {"CUP_AirVehicles_Core"};        // vehicles requires units & weapons
        priority = 61;
    };
	
    class CUP_LDF : LDF_Base
    {
        side = "Occ";
        flagTexture = "a3\data_f_enoch\flags\flag_enoch_co.paa";
        name = "CUP LDF";
        file = "CUP_AI_LDF";
    };
    class HAFM_Base : CUP_Base
    {
        requiredAddons[] = {"CUP_Creatures_People_Civil_Russia", "CUP_BaseConfigs", "CUP_AirVehicles_Core", "HAFM_Acc"};
        priority = 61;
	};
    //CUP NorAF
    class NorAF_Base : CUP_Base
    {
        requiredAddons[] = {"CUP_Creatures_People_Civil_Russia", "CUP_BaseConfigs", "CUP_AirVehicles_Core", "Flex_CUP_NOR_Faction"};        // units, weapons, vehicles
        //requiredAddons[] = {"CUP_AirVehicles_Core"};        // vehicles requires units & weapons
        priority = 61;
    };

    class CUP_HAFM : HAFM_Base
    {
        side = "Occ";
        flagTexture = "\A3\ui_f\data\map\markers\flags\Greece_ca.paa";
        name = "CUP HAFM";
        file = "CUP_AI_HAFM";
	};
    class CUP_NorAF_Temperate : NorAF_Base
    {
        side = "Occ";
        flagTexture = "\A3\ui_f\data\map\markers\flags\Norway_ca.paa";
        name = "CUP NorAF Temperate";
        file = "CUP_AI_NorAF_Temperate";
        climate[] = {"temperate","tropical"};
    };

    class CUP_NorAF_Arctic : CUP_NorAF_Temperate
    {
        name = "CUP NorAF Arctic";
        file = "CUP_AI_NorAF_Arctic";
        climate[] = {"arctic"};
    };

    class EST_Base : CUP_Base
    {
        requiredAddons[] = {"CUP_Creatures_People_Civil_Russia", "CUP_BaseConfigs", "CUP_AirVehicles_Core", "Estraria_Army", "DEGA_Vehicles_V22", "BVC_Facewear"};
        priority = 61;
    };
	
    class CUP_EST : EST_Base
    {
        side = "Occ";
        flagTexture = "\EST_Markers\Data\Marker_EST.paa";
        name = "CUP EST";
        file = "CUP_AI_EST";
    };

    class CAF2035_Base : CUP_Base
    { 
        requiredAddons[] = {"CUP_Creatures_People_Civil_Russia", "CUP_BaseConfigs", "CUP_AirVehicles_Core", "PUP_CAF", "Weapons_F_JCA_AWM", "vests_f_JCA_MCRP", "A3_Aegis_Air_F_Aegis", "Weapons_1_F_lxWS"};//Unfortunately it requires a bit of random single mods from just the base CAF 2035
        priority = 61;
    };
    class CAF2035 : CAF2035_Base
    {
        side = "Occ";
        flagTexture = "\A3\ui_f\data\map\markers\flags\Canada_ca.paa";
        name = "CUP CAF";
        file = "CUP_AI_CAF2035";
        description = "CUP/Aegis Mixed Canadian Armed Forces 2035";
    };
