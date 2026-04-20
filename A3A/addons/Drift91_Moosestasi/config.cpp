class CfgPatches
{
	class Drift91_Moosestasi
	{
		units[]={"Flag_FIA_F", "Flag_NAP"};
		weapons[]={};
		requiredVersion=0.1;
		requiredAddons[]={"A3_Data_F", "A3_Structures_F_Mil_Flags", "A3_Ui_F"};

		name = "Antistasi Ultimate - Moosehound Edition";
		author = "Drift_91";
		url = "https://github.com/Moosehound-Antistasi/A3-Antistasi-Ultimate-Moosehound";
	};
};

class CfgFactionClasses
{
	class IND_G_F
	{
		icon="x\A3A\addons\drift91_moosestasi\textures\flags\cfgFactionClasses_IND_G_ca.paa";
		flag="x\A3A\addons\drift91_moosestasi\textures\flags\Flag_Moose_CO.paa";
	};
	class BLU_G_F
	{
		icon="x\A3A\addons\drift91_moosestasi\textures\flags\cfgFactionClasses_IND_G_ca.paa";
		flag="x\A3A\addons\drift91_moosestasi\textures\flags\Flag_Moose_CO.paa";
	};
	class OPF_G_F
	{
		icon="x\A3A\addons\drift91_moosestasi\textures\flags\cfgFactionClasses_IND_G_ca.paa";
		flag="x\A3A\addons\drift91_moosestasi\textures\flags\Flag_Moose_CO.paa";
	};
};

class CfgVehicles
{
	class FlagCarrier;
	class D91_Flag_FIA_F: FlagCarrier
	{
		class EventHandlers
		{
			init = "(_this select 0) setFlagTexture 'x\A3A\addons\drift91_moosestasi\textures\flags\Flag_Moose_CO.paa'";
		};
		scope = 2;
		scopeCurator = 2;
	};
	class D91_Flag_NAP: FlagCarrier
	{
		class EventHandlers
		{
			init = "(_this select 0) setFlagTexture 'x\A3A\addons\drift91_moosestasi\textures\flags\Flag_Moose_CO.paa'";
		};
		scope = 2;
		scopeCurator = 2;
	};
	class D91_Flag_MHG: FlagCarrier
	{
		class EventHandlers
		{
			init = "(_this select 0) setFlagTexture 'x\A3A\addons\drift91_moosestasi\textures\flags\Flag_Moose_CO.paa'";
		};
		scope = 2;
		scopeCurator = 2;
	};
};

class CfgMarkers
{
	class flag_NATO;
	class D91_flag_FIA: flag_NATO
	{
		name="$STR_A3_CfgMarkers_flag_FIA";
		icon="x\A3A\addons\drift91_moosestasi\textures\flags\Moose_ca.paa";
		texture="x\A3A\addons\drift91_moosestasi\textures\flags\Moose_ca.paa";
	};
	class D91_Marker_NAP: flag_NATO
	{
		name="3CB NAPA (The National Party)";
		icon="x\A3A\addons\drift91_moosestasi\textures\flags\Moose_ca.paa";
		texture="x\A3A\addons\drift91_moosestasi\textures\flags\Moose_ca.paa";
	};
	class D91_Marker_MHG: flag_NATO
	{
		name="Moosehound Group";
		icon="x\A3A\addons\drift91_moosestasi\textures\flags\Moose_ca.paa";
		texture="x\A3A\addons\drift91_moosestasi\textures\flags\Moose_ca.paa";
	};
};
