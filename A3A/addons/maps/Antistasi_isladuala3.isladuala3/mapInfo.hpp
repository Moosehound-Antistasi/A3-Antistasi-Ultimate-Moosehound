class isladuala3 {
	population[] = {
		 {"a3a_Obmeya",284},{"imalia",55},{"bolabongo",1055},{"dendala",803},{"kinsella",737},{"canto",680},{"kirabo",429},{"engor",316},{"swonto",254},{"kwako",204},{"djolan",191},{"mawimbela",188},{"tarisol",187},{"numbo",186},{"larenga",165},{"dasha",162},{"orellan",121},{"molisana",115},{"simbala",114},{"maluri",97},{"xibo",95},{"kingala",92},{"pumado",84},{"ursana",63},{"casinda",51},{"zemanovo",46},{"deboor",43},{"kimbaka",36},{"obmeya",109},{"phazena",250},{"pinley",354},{"minesini",100},{"forteza",42},{"upeesdi",156},{"camara",260},{"cainna",59},{"lina",49},{"fishala",25},{"sttrisha",53},{"mangomak",63},{"zeelor",75},{"campolongo",93},{"solon",79},{"lapoto",71},{"vestinga",54},{"ravane",52},{"lukasa",48},{"katakabi",33},{"spookdorp",29},{"mochiwo",26},{"kanis",25},{"yanga",45},{"kiera",30},{"elbakal",28},{"chaba",25},{"nofar",25},{"kaalom",25},{"polani",25},{"cova",25},{"ashlakeresort",16},{"razfook",16},{"machida",14},{"jordin",25}
	};
	disabledTowns[] = {"solon","machida","dasha","upeesdi", "jordin", "razfook", "ashlakeresort","kiera"}; //MacHida is an airfield, rest are ruins
	antennas[] = {
		{5406.87,5050.04,-1.5221},{5821.55,4264.93,-1.54266},{5792.85,6096.85,0},{4794.71,7644.3,-1.54266},{4232.13,2146.34,1.90735e-006},{2769.18,9614.3,0},{1559.72,5362.99,0},{2662.63,1237.69,0},{532.415,7337.52,0},{8352.21,8884.22,0},{8638.09,362.661,0},{4317.45,4702.65,0}
	};
	antennasBlacklistIndex[] = {0,1};
	banks[] = {}; //no suitable building available
	garrison[] = {
		{},{"airport_1","seaport_1","seaport_9","resource_1","resource_19","factory_1","outpost_1","outpost_2","outpost_3"},{},{"control_130","control_131","control_132","control_133","control_134","control_135","control_136","control_137","control_138","control_143","control_63","control_74","control_76","control_77","control_78","control_79","control_80","control_81","control_82"}
	};
	fuelStationTypes[] = {"Land_A_FuelStation_Feed","Land_Ind_FuelStation_Feed_EP1","Land_FuelStation_Feed_PMC","Land_Fuelstation","Land_Fuelstation_army","Land_Benzina_schnell"};
	milAdministrations[] = {
		{9526.628,993.31,0}, {3627.838,2337.511,0}, {4488.588,6537.717,0}, {8146.301,5532.784,0}, {2515.895,1911.954,0}
	};
	climate = "arid";
	buildObjects[] = {
		BUILDABLES_HISTORIC,
		BUILDABLES_MODERN_SAND,
		BUILDABLES_ARID,
		BUILDABLES_CUP,
		BUILDABLES_UNIVERSAL
	};
};
