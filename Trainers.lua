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
function module:InitializeTrainers()
	local function AddTrainer(trainerID, trainerName, zoneName, coordX, coordY, faction)
		return addon:AddTrainer(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = trainerID,
			item_list = {},
			locationName = zoneName,
			name = trainerName,
		})
	end


	AddTrainer(223, "Dan Golthas", 				Z.UNDERCITY, 				70.5, 58.7, "Horde")
	AddTrainer(1385, "Brawn", 					Z.STRANGLETHORN_VALE, 		31.8, 28.8, "Horde")
	AddTrainer(1466, "Gretta Finespindle", 		Z.IRONFORGE, 				39.2, 33.4, "Alliance")
	AddTrainer(1632, "Adele Fielder", 			Z.ELWYNN_FOREST, 			46.3, 62.1, "Alliance")
	AddTrainer(3007, "Una", 					Z.THUNDER_BLUFF, 			42.0, 42.8, "Horde")
	AddTrainer(3008, "Mak", 					Z.THUNDER_BLUFF, 			42.3, 43.2, "Horde")
	AddTrainer(3069, "Chaw Stronghide", 		Z.MULGORE, 					45.0, 61.5, "Horde")
	AddTrainer(3365, "Karolek", 				Z.ORGRIMMAR, 				62.8, 44.4, "Horde")
	AddTrainer(3549, "Shelene Rhobart", 		Z.TIRISFAL_GLADES, 			65.4, 60.1, "Horde")
	AddTrainer(3605, "Nadyia Maneweaver", 		Z.TELDRASSIL, 				41.8, 49.5, "Alliance")
	AddTrainer(3703, "Krulmoo Fullmoon", 		Z.THE_BARRENS, 				44.9, 59.4, "Horde")
	AddTrainer(3967, "Aayndia Floralwind", 		Z.ASHENVALE, 				35.9, 52.1, "Alliance")
	AddTrainer(4212, "Telonis", 				Z.DARNASSUS, 				64.2, 21.6, "Alliance")
	AddTrainer(4588, "Arthur Moore", 			Z.UNDERCITY, 				70.3, 57.8, "Horde")
	AddTrainer(5127, "Fimble Finespindle", 		Z.IRONFORGE, 				39.8, 33.5, "Alliance")
	AddTrainer(5564, "Simon Tanner", 			Z.STORMWIND_CITY, 			71.9, 62.8, "Alliance")
	AddTrainer(5784, "Waldor", 					Z.THE_BARRENS, 				46.0, 35.9, "Neutral")
	AddTrainer(5811, "Kamari", 					Z.ORGRIMMAR, 				63.0, 44.9, "Horde")
	AddTrainer(7866, "Peter Galen", Z.AZSHARA, 37.6, 65.4, "Alliance")
	AddTrainer(7867, "Thorkaf Dragoneye", 		Z.BADLANDS, 				62.6, 57.5, "Horde")
	AddTrainer(7868, "Sarah Tanner", 			Z.SEARING_GORGE, 			63.6, 75.8, "Alliance")
	AddTrainer(7869, "Brumn Winterhoof", 		Z.ARATHI_HIGHLANDS, 		28.2, 45.0, "Horde")
	AddTrainer(7870, "Caryssia Moonhunter", Z.FERALAS, 89.4, 46.6, "Alliance")
	AddTrainer(7871, "Se'Jib", 					Z.STRANGLETHORN_VALE, 		36.6, 34.2, "Horde")
	AddTrainer(8153, "Narv Hidecrafter", 		Z.DESOLACE, 				55.3, 56.2, "Horde")
	AddTrainer(11081, "Faldron", 				Z.DARNASSUS, 				64.4, 21.8, "Alliance")
	AddTrainer(11083, "Darianna", 				Z.DARNASSUS, 				64.5, 21.0, "Alliance")
	AddTrainer(11084, "Tarn", 					Z.THUNDER_BLUFF, 			42.1, 42.6, "Horde")
	AddTrainer(11096, "Randal Worth", 			Z.STORMWIND_CITY, 			72.2, 62.7, "Alliance")
	AddTrainer(11097, "Drakk Stonehand", 		Z.THE_HINTERLANDS, 			13.4, 43.4, "Alliance")
	AddTrainer(11098, "Hahrana Ironhide", 		Z.FERALAS, 					74.4, 43.1, "Horde")
    AddTrainer(251993, "Indari Sunseam", 		Z.ZEPHRAS_ISLE, 			44.7, 44.5, "Neutral")
	AddTrainer(252376, "Emerii Tallgust", 		Z.ZEPHRAS_ISLE, 			63.8, 80.7, "Neutral")
	AddTrainer(255721, "Jarael", Z.SHENDRALAS, 0, 0, "Neutral")

	self.InitializeTrainers = nil
end
