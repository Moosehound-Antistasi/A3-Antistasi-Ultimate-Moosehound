class CfgPatches
{
	class Drift91_Faces
	{
		units[]={};
		weapons[]={};
		requiredVersion=0.1;
		requiredAddons[]={"A3_Characters_F_Heads"};

		name = "CJTF9's Custom Faces";
		author = "Drift_91";
		url = "http://www.steamcommunity.com/profiles/76561197996287940";
	};
};

class CfgFaces
{
	class Default
	{
		class Custom;
	};

	class Man_A3: Default
	{
		class WhiteHead_09;
		class Drift91_HeadKyle_01: WhiteHead_09
		{
			displayname="McKeown";
			texture="\Drift91_Faces\faces\kyle_01_co.paa";
			identityTypes[]={};
			author="Bohemia Interactive & Drift_91";
		};

		class WhiteHead_05;
		class Drift91_HeadTim_01: WhiteHead_05
		{
			displayname="Shields";
			identityTypes[]={};
			author="Bohemia Interactive & Drift_91";
			textureHL="\Drift91_Faces\arms\hl_white_bald_1_WeThePeople_co.paa";
		};
	};
};