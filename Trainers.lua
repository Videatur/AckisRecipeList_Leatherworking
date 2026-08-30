-------------------------------------------------------------------------------
-- Module namespace.
-------------------------------------------------------------------------------
local FOLDER_NAME, private = ...

local addon = private.addon
if not addon then
	return
end

local constants = addon.constants
local module = addon:GetModule(private.module_name)

local Z = constants.ZONE_NAMES
local V = constants.GAME_VERSIONS

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeTrainers()
	local function AddTrainer(trainerID, trainerName, zoneName, coordX, coordY, faction, expansionID)
		return addon:AddTrainer(module, {
			coord_x = coordX,
			coord_y = coordY,
			expansionID = expansionID,
			faction = faction,
			identifier = trainerID,
			item_list = {},
			locationName = zoneName,
			name = trainerName,
		})
	end


	-----------------------------------------------------------------------
	-- Vanilla
	-----------------------------------------------------------------------
	AddTrainer(1385, "Brawn", 					Z.STRANGLETHORN_VALE, 		31.6, 28.8, "Horde",	V.ORIG)
	AddTrainer(1632, "Adele Fielder", 			Z.ELWYNN_FOREST, 			46.4, 62.1, "Alliance",	V.ORIG)
	AddTrainer(3007, "Una", 					Z.THUNDER_BLUFF, 			41.5, 42.6, "Horde",	V.ORIG)
	AddTrainer(3069, "Chaw Stronghide", 		Z.MULGORE, 					45.5, 57.9, "Horde",	V.ORIG)
	AddTrainer(3365, "Karolek", 				Z.ORGRIMMAR, 				62.8, 44.6, "Horde",	V.ORIG)
	AddTrainer(3549, "Shelene Rhobart", 		Z.TIRISFAL_GLADES, 			65.4, 60.0, "Horde",	V.ORIG)
	AddTrainer(3605, "Nadyia Maneweaver", 		Z.TELDRASSIL, 				41.8, 49.6, "Alliance",	V.ORIG)
	AddTrainer(3967, "Aayndia Floralwind", 		Z.ASHENVALE, 				35.9, 52.1, "Alliance",	V.ORIG)
	AddTrainer(4212, "Telonis", 				Z.DARNASSUS, 				64.6, 21.6, "Alliance",	V.ORIG)
	AddTrainer(4588, "Arthur Moore", 			Z.UNDERCITY, 				70.3, 58.5, "Horde",	V.ORIG)
	AddTrainer(5127, "Fimble Finespindle", 		Z.IRONFORGE, 				39.8, 33.5, "Alliance",	V.ORIG)
	AddTrainer(5564, "Simon Tanner", 			Z.STORMWIND_CITY, 			67.2, 49.6, "Alliance",	V.ORIG)
	AddTrainer(5784, "Waldor", 					Z.WAILING_CAVERNS, 			32.6, 28.5, "Neutral",	V.ORIG)
	AddTrainer(7868, "Sarah Tanner", 			Z.SEARING_GORGE, 			63.6, 75.8, "Alliance",	V.ORIG)
	AddTrainer(7869, "Brumn Winterhoof", 		Z.ARATHI_HIGHLANDS, 		28.2, 45.0, "Horde",	V.ORIG)
	AddTrainer(7871, "Se'Jib", 					Z.STRANGLETHORN_VALE, 		36.6, 34.2, "Horde",	V.ORIG)
	AddTrainer(8153, "Narv Hidecrafter", 		Z.DESOLACE, 				55.2, 56.2, "Horde",	V.ORIG)
	AddTrainer(11097, "Drakk Stonehand", 		Z.THE_HINTERLANDS, 			13.4, 43.4, "Alliance",	V.ORIG)
	AddTrainer(11098, "Hahrana Ironhide", 		Z.FERALAS, 					74.4, 43.1, "Horde",	V.ORIG)

	-----------------------------------------------------------------------
	-- TBC
	-----------------------------------------------------------------------
	AddTrainer(16278, "Sathein", 				Z.EVERSONG_WOODS, 			53.5, 51.0, "Horde",	V.TBC)
	AddTrainer(16688, "Lynalis", 				Z.SILVERMOON_CITY, 			84.0, 80.2, "Horde",	V.TBC)
	AddTrainer(16728, "Akham", 					Z.THE_EXODAR, 				66.0, 74.6, "Alliance",	V.TBC)
	AddTrainer(17442, "Moordo", 				Z.AZUREMYST_ISLE, 			44.8, 23.8, "Alliance",	V.TBC)
	AddTrainer(18754, "Barim Spilthoof", 		Z.HELLFIRE_PENINSULA, 		56.2, 38.6, "Horde",	V.TBC)
	AddTrainer(18771, "Brumman", 				Z.HELLFIRE_PENINSULA, 		54.1, 64.0, "Alliance",	V.TBC)
	AddTrainer(19187, "Darmari", 				Z.SHATTRATH_CITY, 			66.8, 67.1, "Neutral",	V.TBC)
	AddTrainer(21087, "Grikka", 				Z.BLADES_EDGE_MOUNTAINS, 	76.8, 65.5, "Horde",	V.TBC)

	-----------------------------------------------------------------------
	-- Wrath of The Lich King
	-----------------------------------------------------------------------
	AddTrainer(26911, "Bernadette Dexter", 		Z.HOWLING_FJORD, 			59.9, 63.6, "Alliance",	V.WOTLK)
	AddTrainer(26961, "Gunter Hansen", 			Z.HOWLING_FJORD, 			78.3, 28.2, "Horde",	V.WOTLK)
	AddTrainer(26996, "Awan Iceborn", 			Z.BOREAN_TUNDRA,			76.3, 37.0, "Horde",	V.WOTLK)
	AddTrainer(26998, "Rosemary Bovard", 		Z.BOREAN_TUNDRA, 			57.6, 71.9, "Alliance",	V.WOTLK)
	AddTrainer(28700, "Diane Cannings", 		Z.DALARAN_NORTHREND,		35.7, 28.8, "Neutral",	V.WOTLK)
	AddTrainer(29507, "Manfred Staller",	 	Z.DALARAN_NORTHREND,		34.2, 29.5, "Neutral",	V.WOTLK)
	AddTrainer(29508, "Andellion", 				Z.DALARAN_NORTHREND, 		34.5, 27.1, "Neutral",	V.WOTLK)
	AddTrainer(29509, "Namha Moonwater", 		Z.DALARAN_NORTHREND, 		36.3, 29.4, "Neutral",	V.WOTLK)
	AddTrainer(33581, "Kul'de", 				Z.ICECROWN, 				71.8, 20.8, "Neutral",	V.WOTLK)
	AddTrainer(33612, "Leatherworking", 		Z.SHATTRATH_CITY, 			43.8, 90.9, "Neutral",	V.WOTLK)
	AddTrainer(33635, "Daenril", 				Z.SHATTRATH_CITY, 			41.9, 63.4, "Neutral",	V.WOTLK)
	AddTrainer(33681, "Korim", 					Z.SHATTRATH_CITY, 			37.6, 28.0, "Neutral",	V.WOTLK)

	-----------------------------------------------------------------------
	-- Cataclysm
	-----------------------------------------------------------------------
	AddTrainer(1385, "Brawn", 					Z.NORTHERN_STRANGLETHORN, 	37.8, 50.4, "Horde",	V.CATA)
	AddTrainer(3365, "Karolek", 				Z.ORGRIMMAR, 				60.8, 54.8, "Horde",	V.CATA)
	AddTrainer(3605, "Nadyia Maneweaver", 		Z.TELDRASSIL, 				43.4, 43.2, "Alliance",	V.CATA)
	AddTrainer(4212, "Telonis", 				Z.DARNASSUS, 				61.0, 37.0, "Alliance",	V.CATA)
	AddTrainer(5564, "Simon Tanner", 			Z.STORMWIND_CITY, 			71.8, 62.8, "Alliance",	V.CATA)
	AddTrainer(7869, "Brumn Winterhoof", 		Z.ARATHI_HIGHLANDS, 		21.8, 46.0, "Horde",	V.CATA)
	AddTrainer(7871, "Se'Jib", 					Z.NORTHERN_STRANGLETHORN, 	45.3, 58.7, "Horde",	V.CATA)
	AddTrainer(53436, "Eustace Tanwell", 		Z.DUSTWALLOW_MARSH, 		66.4, 45.1, "Alliance",	V.CATA)

	-----------------------------------------------------------------------
	-- Mists of Pandaria
	-----------------------------------------------------------------------
	AddTrainer(65121, "Clean Pelt", 			Z.KUN_LAI_SUMMIT, 			64.6, 60.9, "Neutral",	V.MOP)
	AddTrainer(66354, "Master Cannon", 			Z.KUN_LAI_SUMMIT, 			50.6, 42.0, "Neutral",	V.MOP)

	-----------------------------------------------------------------------
	-- Warlords of Draenor
	-----------------------------------------------------------------------
	AddTrainer(85920, "Jistun Sharpfeather",	Z.STORMSHIELD, 				52.5, 42.1, "Alliance",	V.WOD)
	AddTrainer(86032, "Burga Stronghide", 		Z.WARSPEAR, 				50.2, 28.8, "Horde",	V.WOD)

	-----------------------------------------------------------------------
	-- Legion
	-----------------------------------------------------------------------
	AddTrainer(93522, "Diane Cannings",			Z.DALARAN_BROKENISLES,		35.6, 29.8, "Neutral",	V.LEGION)
	AddTrainer(93523, "Namha Moonwater",		Z.DALARAN_BROKENISLES,		35.4, 29.6, "Neutral",	V.LEGION)
	AddTrainer(98931, "Thanid Glowergold",		Z.DALARAN_BROKENISLES,		34.6, 28.6, "Neutral",	V.LEGION)
	AddTrainer(98948, "Hrul Sharphoof",			Z.THUNDER_TOTEM,			36.8, 78.2, "Neutral",	V.LEGION)
	AddTrainer(98950, "Namha Moonwater",		Z.DEADWIND_PASS,			43.0, 68.4, "Neutral",	V.LEGION)
	AddTrainer(98964, "Celea",					Z.AZSUNA,					47.5, 44.2, "Neutral",	V.LEGION)

	-----------------------------------------------------------------------
	-- Battle for Azeroth
	-----------------------------------------------------------------------
	AddTrainer(122698, "Xanjo", 				Z.DAZARALOR, 				44.0, 34.5, "Horde",	V.BFA)
	AddTrainer(136063, "Cassandra Brennor",		Z.BORALUS, 					75.6, 12.6, "Alliance",	V.BFA)

	-----------------------------------------------------------------------
	-- Shadowlands
	-----------------------------------------------------------------------
	AddTrainer(156669, "Tanner Au'qil", 		Z.ORIBOS, 					42.5, 26.9, "Neutral",	V.SHA)

	self.InitializeTrainers = nil
end
