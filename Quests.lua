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

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeQuests()
	local function AddQuest(questID, zoneName, coordX, coordY, faction)
		addon.AcquireTypes.Quest:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = questID,
			item_list = {},
			locationName = zoneName,
			name = nil, -- Handled by memoizing table in the core.
		})
	end

	AddQuest(769,	Z.THUNDER_BLUFF,	44.1,	44.6,	"Horde")
	AddQuest(1487, 	Z.WAILING_CAVERNS, 	0, 0, "Neutral")
	AddQuest(1582,	Z.DARNASSUS,		64.2, 22,	"Alliance")
	AddQuest(2848, 	Z.FERALAS, 			30.6, 42.6, "Alliance")
	AddQuest(2849, 	Z.FERALAS, 			30.6, 42.6, "Alliance")
	AddQuest(2850, 	Z.FERALAS, 			30.6, 42.6, "Alliance")
	AddQuest(2851, 	Z.FERALAS, 			30.6, 42.6, "Alliance")
	AddQuest(2852, 	Z.FERALAS, 			30.6, 42.6, "Alliance")
	AddQuest(2853, 	Z.FERALAS, 			30.6, 42.6, "Alliance")
	AddQuest(2855, 	Z.FERALAS, 			74.4, 42.8, "Horde")
	AddQuest(2856, 	Z.FERALAS, 			74.4, 42.8, "Horde")
	AddQuest(2857, 	Z.FERALAS, 			74.4, 42.8, "Horde")
	AddQuest(2858, 	Z.FERALAS, 			74.4, 42.8, "Horde")
	AddQuest(2859, 	Z.FERALAS, 			74.4, 42.8, "Horde")
	AddQuest(2860, 	Z.FERALAS, 			74.4, 42.8, "Horde")
	AddQuest(7493,	Z.ORGRIMMAR,		51.6, 75.6,	"Horde")
	AddQuest(7497,	Z.STORMWIND_CITY,	61.4, 78.6,	"Alliance")
	AddQuest(96031, Z.DUN_MOROGH, 		46.6, 53.8, "Alliance")
	AddQuest(96875, Z.ORGRIMMAR, 		63.0, 45.0, "Horde")
	AddQuest(97906, Z.DUROTAR, 			52.0, 47.2, "Horde")
	AddQuest(97922, Z.ELWYNN_FOREST, 	44.8, 63.2, "Alliance")
	AddQuest(97934, Z.MULGORE, 			46.2, 67.2, "Horde")
	AddQuest(97946, Z.TELDRASSIL, 		57.4, 56.6, "Alliance")
	AddQuest(97958, Z.TIRISFAL_GLADES, 	57.2, 55.4, "Horde")
	AddQuest(97969, Z.ZEPHRAS_ISLE, 	41.6, 44.8, "Neutral")

	self.InitializeQuests = nil
end
