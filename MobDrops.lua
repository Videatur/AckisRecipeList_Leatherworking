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
local L = _G.LibStub("AceLocale-3.0"):GetLocale(addon.constants.addon_name)

local Z = constants.ZONE_NAMES

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeMobDrops()
	local function AddMob(npcID, npcName, zoneName, coordX, coordY)
		addon.AcquireTypes.MobDrop:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = nil,
			identifier = npcID,
			item_list = {},
			locationName = zoneName,
			name = npcName,
		})
	end

	-- Additional recipe sources verified against Wowhead Forever (2026-10-07).
	AddMob(423, 	L["Redridge Mongrel"], 			Z.REDRIDGE_MOUNTAINS, 	30.2, 81.4)
	AddMob(441, 	L["Black Dragon Whelp"], 		Z.REDRIDGE_MOUNTAINS, 	32.6, 73.2)
	AddMob(639, 	L["Edwin VanCleef"], 			Z.THE_DEADMINES, 		0, 0)
	AddMob(657,		L["Defias Pirate"],				Z.THE_DEADMINES,		0, 0)
	AddMob(938,		L["Kurzen Commando"],			Z.STRANGLETHORN_VALE,	44.2, 8.0)
	AddMob(1036, 	L["Dragonmaw Centurion"], 		Z.WETLANDS, 			53.1, 54.5)
	AddMob(1160,	L["Captain Halyndor"],			Z.WETLANDS,				15.0, 24.0)
	AddMob(1561,	L["Bloodsail Raider"],			Z.STRANGLETHORN_VALE,	33.6, 73.6)
	AddMob(1732,	L["Defias Squallshaper"],		Z.THE_DEADMINES,		0, 0)
	AddMob(1763, 	L["Gilnid"], 					Z.THE_DEADMINES, 		0, 0)
	AddMob(1813, 	L["Decaying Horror"], 			Z.WESTERN_PLAGUELANDS, 	62.6, 35.0)
	AddMob(2103, 	L["Dragonmaw Scout"], 			Z.WETLANDS, 			49.8, 77.0)
	AddMob(2368, 	L["Daggerspine Shorestalker"], 	Z.HILLSBRAD_FOOTHILLS, 	62.6, 76.4)
	AddMob(2636, 	L["Blackwater Deckhand"], 		Z.ARATHI_HIGHLANDS, 	32.6, 82.0)
	AddMob(2644,	L["Vilebranch Hideskinner"],	Z.THE_HINTERLANDS,		62.2, 69.2)
	AddMob(3385,	L["Theramore Marine"],			Z.THE_BARRENS,			62.2, 53.2)
	AddMob(3386,	L["Theramore Preserver"],		Z.THE_BARRENS,			62.2, 56.4)
	AddMob(3783, 	L["Shadethicket Raincaller"], 	Z.ASHENVALE, 			33.4, 66.2)
	-- Additional sources verified against Wowhead Forever.
	AddMob(3817, "Shadowhorn Stag", Z.ASHENVALE, 39, 66.2)
	AddMob(3864, 	L["Fel Steed"], 				Z.SHADOWFANG_KEEP, 			0, 0)
	AddMob(3865, 	L["Shadow Charger"], 			Z.SHADOWFANG_KEEP, 			0, 0)
	AddMob(3886, "Razorclaw the Butcher", Z.SHADOWFANG_KEEP, 0, 0)
	AddMob(4831, 	L["Lady Sarevess"], 			Z.BLACKFATHOM_DEEPS, 		0, 0)
	AddMob(4887, 	L["Ghamoo-ra"], 				Z.BLACKFATHOM_DEEPS, 		0, 0)
	AddMob(5226, 	L["Murk Worm"], 				Z.THE_TEMPLE_OF_ATALHAKKAR, 0, 0)
	AddMob(5615, 	L["Wastewander Rogue"], 		Z.TANARIS, 				60.8, 38.4)
	AddMob(5616, 	L["Wastewander Thief"], 		Z.TANARIS, 				63.8, 31.6)
	AddMob(5617, 	L["Wastewander Shadow Mage"], 	Z.TANARIS, 				60.8, 38.4)
	AddMob(5618, 	L["Wastewander Bandit"], 		Z.TANARIS, 				63.6, 31.6)
	AddMob(5981, 	L["Portal Seeker"], 			Z.BLASTED_LANDS, 		52.8, 37.2)
	AddMob(6138, 	L["Arkkoran Oracle"], 			Z.AZSHARA, 				77.2, 42.6)
	AddMob(6144, 	L["Son of Arkkoroc"], 			Z.AZSHARA, 				58.8, 43.2)
	AddMob(6146, 	L["Cliff Breaker"], 			Z.AZSHARA, 				55.2, 86.0)
	AddMob(6201, 	L["Legashi Rogue"], 			Z.AZSHARA, 				61.8, 24.2)
	AddMob(6427, "Haunting Phantasm", Z.SCARLET_MONASTERY, 0, 0)
	AddMob(6487, "Arcanist Doan", Z.SCARLET_MONASTERY, 0, 0)
	AddMob(6557,	L["Primal Ooze"],				Z.UNGORO_CRATER,		51.8, 34.9)
	AddMob(6559,	L["Glutinous Ooze"],			Z.UNGORO_CRATER,		39.0, 37.7)
	AddMob(7025, 	L["Blackrock Soldier"], 		Z.BURNING_STEPPES, 		42.2, 55.8)
	AddMob(7027, 	L["Blackrock Slayer"], 			Z.BURNING_STEPPES, 		41.2, 35.0)
	AddMob(7029, 	L["Blackrock Battlemaster"], 	Z.BURNING_STEPPES, 		40.6, 35.6)
	AddMob(7035,	L["Firegut Brute"],				Z.BURNING_STEPPES,		82.5, 48.1)
	AddMob(7107, 	L["Jadefire Trickster"], 		Z.FELWOOD, 				42.2, 18.6)
	AddMob(7112, 	L["Jaedenar Cultist"], 			Z.FELWOOD, 				37.0, 61.0)
	AddMob(7158,	L["Deadwood Shaman"],			Z.FELWOOD,				62.5, 10.3)
	AddMob(7438,	L["Winterfall Ursa"],			Z.WINTERSPRING,			67.5, 36.3)
	AddMob(7440,	L["Winterfall Den Watcher"],	Z.WINTERSPRING,			68.0, 35.5)
	AddMob(7441,	L["Winterfall Totemic"],		Z.WINTERSPRING, 		32.4, 37.4)
	AddMob(8898,	L["Anvilrage Marshal"],			Z.BLACKROCK_DEPTHS,		0, 0)
	AddMob(8903,	L["Anvilrage Captain"],			Z.BLACKROCK_DEPTHS,		0, 0)
	AddMob(9259,	L["Firebrand Grunt"],			Z.BLACKROCK_SPIRE,		0, 0)
	AddMob(9260,	L["Firebrand Legionnaire"],		Z.BLACKROCK_SPIRE,		0, 0)
	AddMob(10363,	L["General Drakkisath"],		Z.BLACKROCK_SPIRE,		0, 0)
	AddMob(10406, 	L["Ghoul Ravener"], 			Z.STRATHOLME, 			0, 0)
	AddMob(10425, 	L["Crimson Battle Mage"], 		Z.STRATHOLME, 			0, 0)
	AddMob(10499, 	L["Spectral Researcher"], 		Z.SCHOLOMANCE, 			0, 0)
	AddMob(11582, 	L["Scholomance Dark Summoner"], Z.SCHOLOMANCE, 			0, 0)
	AddMob(14454, 	L["The Windreaver"], 			Z.SILITHUS, 			25.6, 28.8)
	AddMob(14457, 	L["Princess Tempestria"], 		Z.WINTERSPRING, 		54.4, 42.4)

	self.InitializeMobDrops = nil
end
