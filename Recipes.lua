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

-------------------------------------------------------------------------------
-- Filter flags. Acquire types, and Reputation levels.
-------------------------------------------------------------------------------
local A = constants.ACQUIRE_TYPE_IDS
local F = constants.FILTER_IDS
local Q = constants.ITEM_QUALITIES
local Z = constants.ZONE_NAMES

local FAC = constants.FACTION_IDS
local REP = constants.REP_LEVELS

-- LoadOnAddOn gives profession modules their own namespace, so the core's
-- private helpers are not available here.  Use the current spell API locally.
local function GetSpellName(spellID)
    return _G.C_Spell.GetSpellName(spellID)
end

module.Recipes = {}

--------------------------------------------------------------------------------------------------------------------
-- Initialize!
--------------------------------------------------------------------------------------------------------------------
function module:InitializeRecipes()
    local function AddRecipe(spellID, quality)
        return addon:AddRecipe(module, {
            _acquireTypeData = {},
            _bitflags = {},
            _localizedName = GetSpellName(spellID),
            _qualityID = quality,
            _spellID = spellID,
        })
    end

    local recipe

    -------------------------------------------------------------------------------
    -- Forever
    -------------------------------------------------------------------------------

	-- Bileblister Claws -- 1297126
	recipe = AddRecipe(1297126, Q.RARE)
	recipe:SetSkillLevels(285, 285, 290, 292, 295)
	recipe:SetRecipeItem(275586, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275610, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.FRIENDLY, 15293)

	-- Bileblister Girdle -- 1297127
	recipe = AddRecipe(1297127, Q.RARE)
	recipe:SetSkillLevels(290, 290, 295, 297, 300)
	recipe:SetRecipeItem(275587, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275611, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15293)

	-- Bileblister Boots -- 1297128
	recipe = AddRecipe(1297128, Q.RARE)
	recipe:SetSkillLevels(295, 295, 295, 297, 300)
	recipe:SetRecipeItem(275588, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275612, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15293)

	-- Hivethrasher's Claws -- 1297129
	recipe = AddRecipe(1297129, Q.RARE)
	recipe:SetSkillLevels(285, 285, 290, 292, 295)
	recipe:SetRecipeItem(275589, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275613, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.FRIENDLY, 15293)

	-- Hivethrasher's Girdle -- 1297130
	recipe = AddRecipe(1297130, Q.RARE)
	recipe:SetSkillLevels(290, 290, 295, 297, 300)
	recipe:SetRecipeItem(275590, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275614, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15293)

	-- Hivethrasher's Boots -- 1297131
	recipe = AddRecipe(1297131, Q.RARE)
	recipe:SetSkillLevels(295, 295, 295, 297, 300)
	recipe:SetRecipeItem(275591, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275615, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15293)

	-- Scalegut Clenchers -- 1297132
	recipe = AddRecipe(1297132, Q.RARE)
	recipe:SetSkillLevels(285, 285, 290, 292, 295)
	recipe:SetRecipeItem(275592, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275616, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.FRIENDLY, 15293)

	-- Scalegut Belt -- 1297133
	recipe = AddRecipe(1297133, Q.RARE)
	recipe:SetSkillLevels(290, 290, 295, 297, 300)
	recipe:SetRecipeItem(275593, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275617, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15293)

	-- Scalegut Treaders -- 1297134
	recipe = AddRecipe(1297134, Q.RARE)
	recipe:SetSkillLevels(295, 295, 295, 297, 300)
	recipe:SetRecipeItem(275594, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275618, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15293)

	-- Broodwatcher's Clenchers -- 1297135
	recipe = AddRecipe(1297135, Q.RARE)
	recipe:SetSkillLevels(285, 285, 290, 292, 295)
	recipe:SetRecipeItem(275595, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275619, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.FRIENDLY, 15293)

	-- Broodwatcher's Belt -- 1297136
	recipe = AddRecipe(1297136, Q.RARE)
	recipe:SetSkillLevels(290, 290, 295, 297, 300)
	recipe:SetRecipeItem(275596, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275620, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15293)

	-- Broodwatcher's Treaders -- 1297137
	recipe = AddRecipe(1297137, Q.RARE)
	recipe:SetSkillLevels(295, 295, 295, 297, 300)
	recipe:SetRecipeItem(275597, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(275621, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15293)


	recipe = AddRecipe(1254974, Q.UNCOMMON)
		recipe:SetSkillLevels(270, 270, 290, 300, 310)
		recipe:SetRecipeItem(252933, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252599, "BIND_ON_EQUIP")
		recipe:SetItemFilterType("LEATHERWORKING_CHEST")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddVendor(266901)
	recipe:AddQuest(90854)

	recipe = AddRecipe(1255030, Q.UNCOMMON)
		recipe:SetSkillLevels(255, 255, 275, 285, 295)
		recipe:SetRecipeItem(252877, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252552, "BIND_ON_EQUIP")
		recipe:SetItemFilterType("LEATHERWORKING_CHEST")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddVendor(266901)
	recipe:AddQuest(90854)

	recipe = AddRecipe(1255074, Q.UNCOMMON)
		recipe:SetSkillLevels(185, 185, 205, 215, 225)
		recipe:SetRecipeItem(252833, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252462, "BIND_ON_EQUIP")
		recipe:SetItemFilterType("LEATHERWORKING_ITEM_ENHANCEMENT")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddRepVendor(FAC.MAGRAM_CLAN_CENTAUR, REP.EXALTED, 253139)
		recipe:AddRepVendor(FAC.GELKIS_CLAN_CENTAUR, REP.HONORED, 253140)
		recipe:AddQuest(92817)

	-- Centaur Hoofwarmers -- 1294289
	recipe = AddRecipe(1294289, Q.UNCOMMON)
		recipe:SetSkillLevels(165, 165, 170, 175, 180)
		recipe:SetRecipeItem(274491, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(274490, "BIND_ON_EQUIP")
		recipe:SetItemFilterType("LEATHERWORKING_FEET")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddRepVendor(FAC.MAGRAM_CLAN_CENTAUR, REP.EXALTED, 253139)
		recipe:AddRepVendor(FAC.GELKIS_CLAN_CENTAUR, REP.HONORED, 253140)

	-- Defender's Leather Pants -- 1255113
	recipe = AddRecipe(1255113, Q.RARE)
		recipe:SetSkillLevels(100, 100, 105, 105, 105)
		recipe:SetRecipeItem(252794, "BIND_ON_EQUIP")
		recipe:SetCraftedItem(252445, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_LEGS")
		recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
		recipe:AddMobDrop(3927, 4278, 4887)

	-- Totemic Leather Pants -- 1255112
	recipe = AddRecipe(1255112, Q.RARE)
		recipe:SetSkillLevels(100, 100, 105, 105, 105)
		recipe:SetRecipeItem(252795, "BIND_ON_EQUIP")
		recipe:SetCraftedItem(252446, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_LEGS")
		recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
		recipe:AddMobDrop(3670, 4275, 5775, 3887)

	-- Defender's Leather Helm -- 1255091
	recipe = AddRecipe(1255091, Q.RARE)
		recipe:SetSkillLevels(125, 125, 130, 130, 130)
		recipe:SetRecipeItem(252816, "BIND_ON_EQUIP")
		recipe:SetCraftedItem(252455, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_HEAD")
		recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
		recipe:AddMobDrop(7800)

	-- Skirmisher's Mail Boots -- 1255009
	recipe = AddRecipe(1255009, Q.RARE)
		recipe:SetSkillLevels(200, 200, 205, 205, 205)
		recipe:SetRecipeItem(252898, "BIND_ON_EQUIP")
		recipe:SetCraftedItem(252564, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_FEET")
		recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
		recipe:AddMobDrop(7355, 7354, 4542)

	-- Skulker's Leather Shoes -- 1255063
	recipe = AddRecipe(1255063, Q.RARE)
		recipe:SetSkillLevels(200, 200, 205, 205, 205)
		recipe:SetRecipeItem(252844, "BIND_ON_EQUIP")
		recipe:SetCraftedItem(252531, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_FEET")
		recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
		recipe:AddMobDrop(6487)

	-- Stalker's Mail Boots -- 1255011
	recipe = AddRecipe(1255011, Q.RARE)
		recipe:SetSkillLevels(200, 200, 205, 205, 205)
		recipe:SetRecipeItem(252896, "BIND_ON_EQUIP")
		recipe:SetCraftedItem(252562, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_FEET")
		recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
		recipe:AddMobDrop(6487)

	-- Skycaller's Leather Gauntlets -- 1255037
	recipe = AddRecipe(1255037, Q.RARE)
		recipe:SetSkillLevels(250, 250, 255, 255, 255)
		recipe:SetRecipeItem(252870, "BIND_ON_EQUIP")
		recipe:SetCraftedItem(252550, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_HANDS")
		recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
		recipe:AddMobDrop(7275)

	-- Skycaller's Mail Gauntlets -- 1254988
	recipe = AddRecipe(1254988, Q.RARE)
		recipe:SetSkillLevels(250, 250, 255, 255, 255)
		recipe:SetRecipeItem(252919, "BIND_ON_EQUIP")
		recipe:SetCraftedItem(252585, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_HANDS")
		recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
		recipe:AddMobDrop(7275, 12236)

	-- Warden's Leather Gauntlets -- 1255038
	recipe = AddRecipe(1255038, Q.RARE)
		recipe:SetSkillLevels(250, 250, 255, 255, 255)
		recipe:SetRecipeItem(252869, "BIND_ON_EQUIP")
		recipe:SetCraftedItem(252549, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_HANDS")
		recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
		recipe:AddMobDrop(7275)

	-- Blue Suede Hat -- 1255017
	recipe = AddRecipe(1255017, Q.UNCOMMON)
		recipe:SetSkillLevels(280, 280, 300, 310, 320)
		recipe:SetRecipeItem(252890, "BIND_ON_EQUIP")
		recipe:SetCraftedItem(252482, "BIND_ON_EQUIP")
		recipe:SetItemFilterType("LEATHERWORKING_HEAD")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddMobDrop(7440)

	-- Blue Suede Shoes -- 1255048
	recipe = AddRecipe(1255048, Q.UNCOMMON)
		recipe:SetSkillLevels(235, 235, 255, 265, 275)
		recipe:SetRecipeItem(252859, "BIND_ON_EQUIP")
		recipe:SetCraftedItem(252467, "BIND_ON_EQUIP")
		recipe:SetItemFilterType("LEATHERWORKING_FEET")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddMobDrop(5846)

	-- Blue Suede Bracers -- 1255019
	recipe = AddRecipe(1255019, Q.UNCOMMON)
		recipe:SetSkillLevels(275, 275, 295, 305, 315)
		recipe:SetRecipeItem(252888, "BIND_ON_EQUIP")
		recipe:SetCraftedItem(252559, "BIND_ON_EQUIP")
		recipe:SetItemFilterType("LEATHERWORKING_WRIST")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddMobDrop(7025)

	-- Blue Suede Armor -- 1255024
	recipe = AddRecipe(1255024, Q.UNCOMMON)
		recipe:SetSkillLevels(265, 265, 285, 295, 305)
		recipe:SetRecipeItem(252883, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252480, "BIND_ON_EQUIP")
		recipe:SetItemFilterType("LEATHERWORKING_CHEST")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddQuest(92817)
	recipe:AddMobDrop(6005)

	recipe = AddRecipe(1255088, Q.RARE)
		recipe:SetSkillLevels(125, 125, 130, 130, 130)
		recipe:SetRecipeItem(252819, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252515, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_HEAD")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddMobDrop(4832)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)

	recipe = AddRecipe(1255089, Q.RARE)
		recipe:SetSkillLevels(125, 125, 130, 130, 130)
		recipe:SetRecipeItem(252818, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252514, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_HEAD")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddMobDrop(4428)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)

	recipe = AddRecipe(1255090, Q.RARE)
		recipe:SetSkillLevels(125, 125, 130, 130, 130)
		recipe:SetRecipeItem(252817, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252456, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_HEAD")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddMobDrop(4830)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)

	recipe = AddRecipe(1255092, Q.RARE)
		recipe:SetSkillLevels(125, 125, 130, 130, 130)
		recipe:SetRecipeItem(252815, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252513, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_HEAD")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddMobDrop(1666, 4829)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)

	recipe = AddRecipe(1255093, Q.RARE)
		recipe:SetSkillLevels(125, 125, 130, 130, 130)
		recipe:SetRecipeItem(252814, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252512, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_HEAD")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddMobDrop(4832)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)

	recipe = AddRecipe(1255110, Q.RARE)
		recipe:SetSkillLevels(100, 100, 105, 105, 105)
		recipe:SetRecipeItem(252797, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252503, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_LEGS")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddMobDrop(639)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.WAILING_CAVERNS)

	recipe = AddRecipe(1255111, Q.RARE)
		recipe:SetSkillLevels(100, 100, 105, 105, 105)
		recipe:SetRecipeItem(252796, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252502, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_LEGS")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddMobDrop(639, 1696)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.WAILING_CAVERNS)

	recipe = AddRecipe(1255114, Q.RARE)
		recipe:SetSkillLevels(100, 100, 105, 105, 105)
		recipe:SetRecipeItem(252793, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252501, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_LEGS")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddMobDrop(639, 3865)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.WAILING_CAVERNS)

	recipe = AddRecipe(1255115, Q.RARE)
		recipe:SetSkillLevels(100, 100, 105, 105, 105)
		recipe:SetRecipeItem(252792, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252500, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_LEGS")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddMobDrop(3865)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.WAILING_CAVERNS)

	recipe = AddRecipe(1255131, Q.RARE)
		recipe:SetSkillLevels(75, 75, 80, 80, 80)
		recipe:SetRecipeItem(252776, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252493, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_CHEST")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.RUINS_OF_LORDAERON, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.WAILING_CAVERNS)

	recipe = AddRecipe(1255132, Q.RARE)
		recipe:SetSkillLevels(75, 75, 80, 80, 80)
		recipe:SetRecipeItem(252775, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252492, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_CHEST")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.WAILING_CAVERNS)

	recipe = AddRecipe(1255133, Q.RARE)
		recipe:SetSkillLevels(75, 75, 80, 80, 80)
		recipe:SetRecipeItem(252774, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252435, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_CHEST")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.WAILING_CAVERNS)

	recipe = AddRecipe(1255134, Q.RARE)
		recipe:SetSkillLevels(75, 75, 80, 80, 80)
		recipe:SetRecipeItem(252773, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252434, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_CHEST")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.WAILING_CAVERNS)

	recipe = AddRecipe(1255135, Q.RARE)
		recipe:SetSkillLevels(75, 75, 80, 80, 80)
		recipe:SetRecipeItem(252772, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252491, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_CHEST")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.WAILING_CAVERNS)

	recipe = AddRecipe(1255136, Q.RARE)
		recipe:SetSkillLevels(75, 75, 80, 80, 80)
		recipe:SetRecipeItem(252771, "BIND_ON_PICKUP")
		recipe:SetCraftedItem(252490, "BIND_ON_PICKUP")
		recipe:SetItemFilterType("LEATHERWORKING_CHEST")
		recipe:AddFilters(F.ALLIANCE, F.HORDE)
		recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.WAILING_CAVERNS)


	-- Wildthorn Mail -- 16650
	recipe = AddRecipe(16650, Q.UNCOMMON)
	recipe:SetSkillLevels(245, 245, 265, 275, 285)
	recipe:SetRecipeItem(12691, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12624, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.RUINS_OF_AHNQIRAJ, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Storm Gauntlets -- 16661
	recipe = AddRecipe(16661, Q.RARE)
	recipe:SetSkillLevels(270, 270, 290, 300, 310)
	recipe:SetRecipeItem(12703, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12632, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(11278)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.MOLTEN_CORE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Helm of the Great Chief -- 16728
	recipe = AddRecipe(16728, Q.RARE)
	recipe:SetSkillLevels(290, 290, 290, 300, 310)
	recipe:SetRecipeItem(12716, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12636, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.MOLTEN_CORE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Invulnerable Mail -- 16746
	recipe = AddRecipe(16746, Q.EPIC)
	recipe:SetSkillLevels(295, 295, 295, 302, 310)
	recipe:SetRecipeItem(12728, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(12641, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.KARAZHAN_CRYPTS, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Faintly Glowing Leather -- 435819
	recipe = AddRecipe(435819, Q.RARE)
	recipe:SetSkillLevels(200, 200, 200, 210, 220)
	recipe:SetRecipeItem(215367, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(213369, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(217689)

	-- Mender's Mail Boots -- 1255008
	recipe = AddRecipe(1255008, Q.RARE)
	recipe:SetSkillLevels(200, 200, 205, 205, 205)
	recipe:SetRecipeItem(252899, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252565, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(6487)
	recipe:AddWorldDrop(Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.ULDAMAN, Z.ZULFARRAK)

	-- Mender's Leather Shoes -- 1255060
	recipe = AddRecipe(1255060, Q.RARE)
	recipe:SetSkillLevels(200, 200, 205, 205, 205)
	recipe:SetRecipeItem(252847, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252533, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(6487)
	recipe:AddWorldDrop(Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.ULDAMAN, Z.ZULFARRAK)

	-- Skycaller's Leather Shoes -- 1255061
	recipe = AddRecipe(1255061, Q.RARE)
	recipe:SetSkillLevels(200, 200, 205, 205, 205)
	recipe:SetRecipeItem(252846, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252532, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(6487)
	recipe:AddWorldDrop(Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.ULDAMAN, Z.ZULFARRAK)

	-- Warden's Leather Shoes -- 1255062
	recipe = AddRecipe(1255062, Q.RARE)
	recipe:SetSkillLevels(200, 200, 205, 205, 205)
	recipe:SetRecipeItem(252845, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252466, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(6487)
	recipe:AddWorldDrop(Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.ULDAMAN, Z.ZULFARRAK)

	-- Hillman's Leather Boots -- 1255103
	recipe = AddRecipe(1255103, Q.UNCOMMON)
	recipe:SetSkillLevels(110, 110, 135, 147, 160)
	recipe:SetRecipeItem(252804, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252449, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(3817)

	-- Tanning Rack -- 1263031
	recipe = AddRecipe(1263031, Q.UNCOMMON)
	recipe:SetSkillLevels(125, 125, 125, 125, 125)
	recipe:SetRecipeItem(273096, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(279941, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CREATED_ITEM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(3886)


	-- Quickdraw Quiver -- 14930
	recipe = AddRecipe(14930, Q.UNCOMMON)
	recipe:SetSkillLevels(200, 200, 220, 230, 240)
	recipe:SetCraftedItem(8217, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BAG")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721, 7870)

	-- Thick Leather Ammo Pouch -- 14932
	recipe = AddRecipe(14932, Q.UNCOMMON)
	recipe:SetSkillLevels(200, 200, 220, 230, 240)
	recipe:SetCraftedItem(8218, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BAG")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721, 7870)

	-- Heavy Timbermaw Belt -- 23628
	recipe = AddRecipe(23628, Q.COMMON)
	recipe:SetSkillLevels(265, 265, 285, 295, 305)
	recipe:SetRecipeItem(19202, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19043, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.TIMBERMAW_HOLD, REP.HONORED, 11557)

	-- Heavy Timbermaw Boots -- 23629
	recipe = AddRecipe(23629, Q.COMMON)
	recipe:SetSkillLevels(295, 295, 300, 310, 320)
	recipe:SetRecipeItem(19204, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19048, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.TIMBERMAW_HOLD, REP.REVERED, 11557)

	-- Turtle Scale Gloves -- 439118
	recipe = AddRecipe(439118, Q.COMMON)
	recipe:SetSkillLevels(205, 205, 225, 235, 245)
	recipe:SetRecipeItem(217271, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(217270, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddLimitedVendor(7852, 1, 7854, 1)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Forceful Rugged Armor Kit -- 1254965
	recipe = AddRecipe(1254965, Q.UNCOMMON)
	recipe:SetSkillLevels(235, 235, 235, 245, 255)
	recipe:SetRecipeItem(252942, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252488, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(7854, 8160)

	-- Forceful Heavy Armor Kit -- 1255095
	recipe = AddRecipe(1255095, Q.UNCOMMON)
	recipe:SetSkillLevels(135, 135, 155, 165, 175)
	recipe:SetRecipeItem(252812, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252453, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(3005, 4225, 7854, 8160)

	-- Mystic Heavy Armor Kit -- 1255096
	recipe = AddRecipe(1255096, Q.UNCOMMON)
	recipe:SetSkillLevels(135, 135, 155, 165, 175)
	recipe:SetRecipeItem(252811, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252452, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(3005, 4225, 7854, 8160)

	-- Forceful Medium Armor Kit -- 1255123
	recipe = AddRecipe(1255123, Q.UNCOMMON)
	recipe:SetSkillLevels(80, 80, 95, 102, 110)
	recipe:SetRecipeItem(252784, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252437, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(3005, 3366, 4225, 4589, 5128, 5565, 7854, 8160)

	-- Mystic Medium Armor Kit -- 1255124
	recipe = AddRecipe(1255124, Q.UNCOMMON)
	recipe:SetSkillLevels(80, 80, 95, 102, 110)
	recipe:SetRecipeItem(252783, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252436, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(3005, 3366, 4225, 4589, 5128, 5565, 7854, 8160)

	-- Light Leather Reagent Bag -- 1302604
	recipe = AddRecipe(1302604, Q.UNCOMMON)
	recipe:SetSkillLevels(30, 30, 40, 45, 50)
	recipe:SetRecipeItem(277716, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277715, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BAG")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(3168, 4225)
	recipe:AddQuest(96875)

    -- Camp Tent -- 1229432
	recipe = AddRecipe(1229432, Q.COMMON)
	recipe:SetSkillLevels(20, 20, 20, 20, 20)
	recipe:SetCraftedItem(279978, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CREATED_ITEM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddCustom("DEFAULT_RECIPE")
	recipe:AddQuest(96031, 97906, 97922, 97934, 97946, 97958, 97969)

    -- Moonglow Boots -- 1255143
	recipe = AddRecipe(1255143, Q.RARE)
	recipe:SetSkillLevels(35, 35, 40, 40, 40)
	recipe:SetRecipeItem(252764, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252427, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 11097, 11098, 251993, 252376, 255721)
	recipe:AddVendor(258306)

	-- Murloc Scale Shoes -- 1255144
	recipe = AddRecipe(1255144, Q.RARE)
	recipe:SetSkillLevels(35, 35, 40, 40, 40)
	recipe:SetRecipeItem(252763, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252426, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 11097, 11098, 251993, 252376, 255721)
	recipe:AddVendor(258306)

	-- Dark Leather Boots -- 1255145
	recipe = AddRecipe(1255145, Q.RARE)
	recipe:SetSkillLevels(35, 35, 40, 40, 40)
	recipe:SetRecipeItem(252762, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252425, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 11097, 11098, 251993, 252376, 255721)
	recipe:AddVendor(258306)

	-- Black Whelp Slippers -- 1255146
	recipe = AddRecipe(1255146, Q.RARE)
	recipe:SetSkillLevels(35, 35, 40, 40, 40)
	recipe:SetRecipeItem(252761, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252424, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 11097, 11098, 251993, 252376, 255721)
	recipe:AddVendor(258306)

	-- Light Leather Quiver -- 9060
	recipe = AddRecipe(9060, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 55, 70, 85)
	recipe:SetCraftedItem(7278, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BAG")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.MISC1)
	recipe:AddTrainer(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 11097, 11098, 251993, 252376, 255721, 7867, 7868, 7869, 7866)

	-- Small Leather Ammo Pouch -- 9062
	recipe = AddRecipe(9062, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 55, 70, 85)
	recipe:SetCraftedItem(7279, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BAG")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 11097, 11098, 251993, 252376, 255721)

	-- Mender's Leather Belt -- 1255075
	recipe = AddRecipe(1255075, Q.RARE)
	recipe:SetSkillLevels(150, 150, 155, 155, 155)
	recipe:SetRecipeItem(252832, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252523, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)
	recipe:AddVendor(258306)

	-- Prowler's Leather Belt -- 1255081
	recipe = AddRecipe(1255081, Q.RARE)
	recipe:SetSkillLevels(150, 150, 155, 155, 155)
	recipe:SetRecipeItem(252826, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252459, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)
	recipe:AddVendor(258306)

	-- Skirmisher's Leather Belt -- 1255077
	recipe = AddRecipe(1255077, Q.RARE)
	recipe:SetSkillLevels(150, 150, 155, 155, 155)
	recipe:SetRecipeItem(252830, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252461, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)
	recipe:AddVendor(258306)

	-- Skulker's Leather Belt -- 1255080
	recipe = AddRecipe(1255080, Q.RARE)
	recipe:SetSkillLevels(150, 150, 155, 155, 155)
	recipe:SetRecipeItem(252827, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252520, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)
	recipe:AddVendor(258306)

	-- Skycaller's Leather Belt -- 1255076
	recipe = AddRecipe(1255076, Q.RARE)
	recipe:SetSkillLevels(150, 150, 155, 155, 155)
	recipe:SetRecipeItem(252831, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252522, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)
	recipe:AddVendor(258306)

	-- Stalker's Leather Belt -- 1255079
	recipe = AddRecipe(1255079, Q.RARE)
	recipe:SetSkillLevels(150, 150, 155, 155, 155)
	recipe:SetRecipeItem(252828, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252521, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)
	recipe:AddVendor(258306)

	-- Warden's Leather Belt -- 1255078
	recipe = AddRecipe(1255078, Q.RARE)
	recipe:SetSkillLevels(150, 150, 155, 155, 155)
	recipe:SetRecipeItem(252829, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252460, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)
	recipe:AddVendor(258306)

	-- Heavy Quiver -- 9193
	recipe = AddRecipe(9193, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 145, 155, 165)
	recipe:SetCraftedItem(7371, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BAG")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)
	-- This could have a quest itemID:264043

	-- Heavy Leather Ammo Pouch -- 9194
	recipe = AddRecipe(9194, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 145, 155, 165)
	recipe:SetCraftedItem(7372, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BAG")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.MISC1)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Cloudy Gustwoven Harness -- 1301427
	recipe = AddRecipe(1301427, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 65, 67, 70)
	recipe:SetRecipeItem(276934, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(276998, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.HONORED, 254151)

	-- Cloudy Gustwoven Bracers -- 1301428
	recipe = AddRecipe(1301428, Q.UNCOMMON)
	recipe:SetSkillLevels(50, 50, 55, 57, 60)
	recipe:SetRecipeItem(276935, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(276999, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Cloudy Gustwoven Gloves -- 1301429
	recipe = AddRecipe(1301429, Q.UNCOMMON)
	recipe:SetSkillLevels(55, 55, 60, 62, 65)
	recipe:SetRecipeItem(276936, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277000, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Cloudy Gustwoven Belt -- 1301430
	recipe = AddRecipe(1301430, Q.UNCOMMON)
	recipe:SetSkillLevels(50, 50, 55, 57, 60)
	recipe:SetRecipeItem(276937, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277001, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Cloudy Gustwoven Trousers -- 1301431
	recipe = AddRecipe(1301431, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 65, 67, 70)
	recipe:SetRecipeItem(276938, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277002, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.HONORED, 254151)

	-- Cloudy Gustwoven Boots -- 1301432
	recipe = AddRecipe(1301432, Q.UNCOMMON)
	recipe:SetSkillLevels(55, 55, 60, 62, 65)
	recipe:SetRecipeItem(276939, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277003, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Cloudy Windraveled Jerkin -- 1301433
	recipe = AddRecipe(1301433, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 65, 67, 70)
	recipe:SetRecipeItem(276940, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277004, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.HONORED, 254151)

	-- Cloudy Windraveled Armguards -- 1301434
	recipe = AddRecipe(1301434, Q.UNCOMMON)
	recipe:SetSkillLevels(50, 50, 55, 57, 60)
	recipe:SetRecipeItem(276941, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277005, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Cloudy Windraveled Mitts -- 1301435
	recipe = AddRecipe(1301435, Q.UNCOMMON)
	recipe:SetSkillLevels(55, 55, 60, 62, 65)
	recipe:SetRecipeItem(276942, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277006, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Cloudy Windraveled Strap -- 1301436
	recipe = AddRecipe(1301436, Q.UNCOMMON)
	recipe:SetSkillLevels(50, 50, 55, 57, 60)
	recipe:SetRecipeItem(276943, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277007, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Cloudy Windraveled Pants -- 1301437
	recipe = AddRecipe(1301437, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 65, 67, 70)
	recipe:SetRecipeItem(276944, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277008, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.HONORED, 254151)

	-- Cloudy Windraveled Footwraps -- 1301438
	recipe = AddRecipe(1301438, Q.UNCOMMON)
	recipe:SetSkillLevels(55, 55, 60, 62, 65)
	recipe:SetRecipeItem(276945, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277009, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Azure Gustwoven Harness -- 1301451
	recipe = AddRecipe(1301451, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 65, 67, 70)
	recipe:SetRecipeItem(276958, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277022, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.HONORED, 254151)

	-- Azure Gustwoven Bracers -- 1301452
	recipe = AddRecipe(1301452, Q.UNCOMMON)
	recipe:SetSkillLevels(50, 50, 55, 57, 60)
	recipe:SetRecipeItem(276959, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277023, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Azure Gustwoven Gloves -- 1301453
	recipe = AddRecipe(1301453, Q.UNCOMMON)
	recipe:SetSkillLevels(55, 55, 60, 62, 65)
	recipe:SetRecipeItem(276960, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277024, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Azure Gustwoven Belt -- 1301454
	recipe = AddRecipe(1301454, Q.UNCOMMON)
	recipe:SetSkillLevels(50, 50, 55, 57, 60)
	recipe:SetRecipeItem(276961, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277025, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Azure Gustwoven Trousers -- 1301455
	recipe = AddRecipe(1301455, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 65, 67, 70)
	recipe:SetRecipeItem(276962, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277026, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.HONORED, 254151)

	-- Azure Gustwoven Boots -- 1301456
	recipe = AddRecipe(1301456, Q.UNCOMMON)
	recipe:SetSkillLevels(55, 55, 60, 62, 65)
	recipe:SetRecipeItem(276963, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277027, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Azure Windraveled Jerkin -- 1301457
	recipe = AddRecipe(1301457, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 65, 67, 70)
	recipe:SetRecipeItem(276964, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277028, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.HONORED, 254151)

	-- Azure Windraveled Armguards -- 1301458
	recipe = AddRecipe(1301458, Q.UNCOMMON)
	recipe:SetSkillLevels(50, 50, 55, 57, 60)
	recipe:SetRecipeItem(276965, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277029, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Azure Windraveled Mitts -- 1301459
	recipe = AddRecipe(1301459, Q.UNCOMMON)
	recipe:SetSkillLevels(55, 55, 60, 62, 65)
	recipe:SetRecipeItem(276966, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277030, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Azure Windraveled Strap -- 1301460
	recipe = AddRecipe(1301460, Q.UNCOMMON)
	recipe:SetSkillLevels(50, 50, 55, 57, 60)
	recipe:SetRecipeItem(276967, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277031, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Azure Windraveled Pants -- 1301461
	recipe = AddRecipe(1301461, Q.UNCOMMON)
	recipe:SetSkillLevels(60, 60, 65, 67, 70)
	recipe:SetRecipeItem(276968, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277032, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.HONORED, 254151)

	-- Azure Windraveled Footwraps -- 1301462
	recipe = AddRecipe(1301462, Q.UNCOMMON)
	recipe:SetSkillLevels(55, 55, 60, 62, 65)
	recipe:SetRecipeItem(276969, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277033, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.NIGHTCLAW_DRUIDS, REP.FRIENDLY, 254151)

	-- Cloudy Gustwoven Hood -- 1301528
	recipe = AddRecipe(1301528, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 185, 187, 190)
	recipe:SetRecipeItem(276978, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277042, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.EARTHEN_RING, REP.FRIENDLY, 264078)

	-- Cloudy Gustwoven Spaulders -- 1301529
	recipe = AddRecipe(1301529, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 185, 187, 190)
	recipe:SetRecipeItem(276979, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277043, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.EARTHEN_RING, REP.FRIENDLY, 264078)

	-- Cloudy Windraveled Cover -- 1301530
	recipe = AddRecipe(1301530, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 185, 187, 190)
	recipe:SetRecipeItem(276980, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277044, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.EARTHEN_RING, REP.FRIENDLY, 264078)

	-- Cloudy Windraveled Drapes -- 1301531
	recipe = AddRecipe(1301531, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 185, 187, 190)
	recipe:SetRecipeItem(276981, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277045, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.HORDE)
	recipe:AddRepVendor(FAC.EARTHEN_RING, REP.FRIENDLY, 264078)

	-- Azure Gustwoven Hood -- 1301536
	recipe = AddRecipe(1301536, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 185, 187, 190)
	recipe:SetRecipeItem(276986, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277050, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.KIRIN_TOR, REP.FRIENDLY, 32287)

	-- Azure Gustwoven Spaulders -- 1301537
	recipe = AddRecipe(1301537, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 185, 187, 190)
	recipe:SetRecipeItem(276987, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277051, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.KIRIN_TOR, REP.FRIENDLY, 32287)

	-- Azure Windraveled Cover -- 1301538
	recipe = AddRecipe(1301538, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 185, 187, 190)
	recipe:SetRecipeItem(276988, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277052, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.KIRIN_TOR, REP.FRIENDLY, 32287)

	-- Azure Windraveled Drapes -- 1301539
	recipe = AddRecipe(1301539, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 185, 187, 190)
	recipe:SetRecipeItem(276989, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(277053, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddRepVendor(FAC.KIRIN_TOR, REP.FRIENDLY, 32287)

	-- Brawler's Leather Belt -- 1255142
	recipe = AddRecipe(1255142, Q.RARE)
	recipe:SetSkillLevels(60, 60, 90, 105, 120)
	recipe:SetRecipeItem(252765, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252428, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Trapper's Leather Belt -- 1255141
	recipe = AddRecipe(1255141, Q.RARE)
	recipe:SetSkillLevels(60, 60, 90, 105, 120)
	recipe:SetRecipeItem(252766, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252429, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Defender's Leather Belt -- 1255140
	recipe = AddRecipe(1255140, Q.RARE)
	recipe:SetSkillLevels(60, 60, 90, 105, 120)
	recipe:SetRecipeItem(252767, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252430, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Totemic Leather Belt -- 1255139
	recipe = AddRecipe(1255139, Q.RARE)
	recipe:SetSkillLevels(60, 60, 90, 105, 120)
	recipe:SetRecipeItem(252768, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252431, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Stormrider's Leather Belt -- 1255138
	recipe = AddRecipe(1255138, Q.RARE)
	recipe:SetSkillLevels(60, 60, 90, 105, 120)
	recipe:SetRecipeItem(252769, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252432, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Wisdom's Leather Belt -- 1255137
	recipe = AddRecipe(1255137, Q.RARE)
	recipe:SetSkillLevels(60, 60, 90, 105, 120)
	recipe:SetRecipeItem(252770, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252433, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Brawler's Leather Gloves -- 1255130
	recipe = AddRecipe(1255130, Q.RARE)
	recipe:SetSkillLevels(75, 75, 100, 112, 125)
	recipe:SetRecipeItem(252777, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252494, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES)
	recipe:AddMerchantFavor(30)

	-- Trapper's Leather Gloves -- 1255129
	recipe = AddRecipe(1255129, Q.RARE)
	recipe:SetSkillLevels(75, 75, 100, 112, 125)
	recipe:SetRecipeItem(252778, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252495, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES)
	recipe:AddMerchantFavor(30)

	-- Defender's Leather Gloves -- 1255128
	recipe = AddRecipe(1255128, Q.RARE)
	recipe:SetSkillLevels(75, 75, 100, 112, 125)
	recipe:SetRecipeItem(252779, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252496, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES)
	recipe:AddMerchantFavor(30)

	-- Totemic Leather Gloves -- 1255127
	recipe = AddRecipe(1255127, Q.RARE)
	recipe:SetSkillLevels(75, 75, 100, 112, 125)
	recipe:SetRecipeItem(252780, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252497, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES)
	recipe:AddMerchantFavor(30)

	-- Stormrider's Leather Gloves -- 1255126
	recipe = AddRecipe(1255126, Q.RARE)
	recipe:SetSkillLevels(75, 75, 100, 112, 125)
	recipe:SetRecipeItem(252781, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252498, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.WAILING_CAVERNS)
	recipe:AddMerchantFavor(30)

	-- Wisdom's Leather Gloves -- 1255125
	recipe = AddRecipe(1255125, Q.RARE)
	recipe:SetSkillLevels(75, 75, 100, 112, 125)
	recipe:SetRecipeItem(252782, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252499, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES)
	recipe:AddMerchantFavor(30)

	-- Brawler's Leather Boots -- 1255121
	recipe = AddRecipe(1255121, Q.RARE)
	recipe:SetSkillLevels(85, 85, 110, 122, 135)
	recipe:SetRecipeItem(252786, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252439, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Trapper's Leather Boots -- 1255120
	recipe = AddRecipe(1255120, Q.RARE)
	recipe:SetSkillLevels(85, 85, 110, 122, 135)
	recipe:SetRecipeItem(252787, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252440, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Defender's Leather Boots -- 1255119
	recipe = AddRecipe(1255119, Q.RARE)
	recipe:SetSkillLevels(85, 85, 110, 122, 135)
	recipe:SetRecipeItem(252788, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252441, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Totemic Leather Boots -- 1255118
	recipe = AddRecipe(1255118, Q.RARE)
	recipe:SetSkillLevels(85, 85, 110, 122, 135)
	recipe:SetRecipeItem(252789, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252442, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Stormrider's Leather Boots -- 1255117
	recipe = AddRecipe(1255117, Q.RARE)
	recipe:SetSkillLevels(85, 85, 110, 122, 135)
	recipe:SetRecipeItem(252790, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252443, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Wisdom's Leather Boots -- 1255116
	recipe = AddRecipe(1255116, Q.RARE)
	recipe:SetSkillLevels(85, 85, 110, 122, 135)
	recipe:SetRecipeItem(252791, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252444, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Brawler's Leather Hood -- 1255109
	recipe = AddRecipe(1255109, Q.RARE)
	recipe:SetSkillLevels(100, 100, 125, 137, 150)
	recipe:SetRecipeItem(252798, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252504, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES)
	recipe:AddMerchantFavor(30)

	-- Trapper's Leather Hood -- 1255108
	recipe = AddRecipe(1255108, Q.RARE)
	recipe:SetSkillLevels(100, 100, 125, 137, 150)
	recipe:SetRecipeItem(252799, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252505, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES)
	recipe:AddMerchantFavor(30)

	-- Defender's Leather Hood -- 1255107
	recipe = AddRecipe(1255107, Q.RARE)
	recipe:SetSkillLevels(100, 100, 125, 137, 150)
	recipe:SetRecipeItem(252800, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252447, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Totemic Leather Hood -- 1255106
	recipe = AddRecipe(1255106, Q.RARE)
	recipe:SetSkillLevels(100, 100, 125, 137, 150)
	recipe:SetRecipeItem(252801, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252448, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Stormrider's Leather Hood -- 1255105
	recipe = AddRecipe(1255105, Q.RARE)
	recipe:SetSkillLevels(100, 100, 125, 137, 150)
	recipe:SetRecipeItem(252802, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252506, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Wisdom's Leather Hood -- 1255104
	recipe = AddRecipe(1255104, Q.RARE)
	recipe:SetSkillLevels(100, 100, 125, 137, 150)
	recipe:SetRecipeItem(252803, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252507, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Brawler's Leather Tunic -- 1255102
	recipe = AddRecipe(1255102, Q.RARE)
	recipe:SetSkillLevels(110, 110, 135, 147, 160)
	recipe:SetRecipeItem(252805, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252508, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Trapper's Leather Tunic -- 1255101
	recipe = AddRecipe(1255101, Q.RARE)
	recipe:SetSkillLevels(110, 110, 135, 147, 160)
	recipe:SetRecipeItem(252806, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252509, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Defender's Leather Tunic -- 1255100
	recipe = AddRecipe(1255100, Q.RARE)
	recipe:SetSkillLevels(110, 110, 135, 147, 160)
	recipe:SetRecipeItem(252807, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252450, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Totemic Leather Tunic -- 1255099
	recipe = AddRecipe(1255099, Q.RARE)
	recipe:SetSkillLevels(110, 110, 135, 147, 160)
	recipe:SetRecipeItem(252808, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252451, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Stormrider's Leather Tunic -- 1255098
	recipe = AddRecipe(1255098, Q.RARE)
	recipe:SetSkillLevels(110, 110, 135, 147, 160)
	recipe:SetRecipeItem(252809, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252510, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Wisdom's Leather Tunic -- 1255097
	recipe = AddRecipe(1255097, Q.RARE)
	recipe:SetSkillLevels(110, 110, 135, 147, 160)
	recipe:SetRecipeItem(252810, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252511, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddMerchantFavor(30)

	-- Brawler's Leather Legguards -- 1255087
	recipe = AddRecipe(1255087, Q.RARE)
	recipe:SetSkillLevels(125, 125, 150, 160, 170)
	recipe:SetRecipeItem(252820, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252516, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Trapper's Leather Legguards -- 1255086
	recipe = AddRecipe(1255086, Q.RARE)
	recipe:SetSkillLevels(125, 125, 150, 160, 170)
	recipe:SetRecipeItem(252821, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252517, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Defender's Leather Kilt -- 1255085
	recipe = AddRecipe(1255085, Q.RARE)
	recipe:SetSkillLevels(125, 125, 150, 160, 170)
	recipe:SetRecipeItem(252822, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252457, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Totemic Leather Leggings -- 1255084
	recipe = AddRecipe(1255084, Q.RARE)
	recipe:SetSkillLevels(125, 125, 150, 160, 170)
	recipe:SetRecipeItem(252823, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252458, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Stormrider's Leather Kilt -- 1255083
	recipe = AddRecipe(1255083, Q.RARE)
	recipe:SetSkillLevels(125, 125, 150, 160, 170)
	recipe:SetRecipeItem(252824, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252518, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Wisdom's Leather Leggings -- 1255082
	recipe = AddRecipe(1255082, Q.RARE)
	recipe:SetSkillLevels(125, 125, 150, 160, 170)
	recipe:SetRecipeItem(252825, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252519, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(248201, 256734)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE)
	recipe:AddMerchantFavor(30)

	-- Forceful Thick Armor Kit -- 1255073
	recipe = AddRecipe(1255073, Q.UNCOMMON)
	recipe:SetSkillLevels(185, 185, 205, 215, 225)
	recipe:SetRecipeItem(252834, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252463, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Prowler's Leather Gloves -- 1255071
	recipe = AddRecipe(1255071, Q.RARE)
	recipe:SetSkillLevels(175, 175, 195, 205, 215)
	recipe:SetRecipeItem(252836, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252524, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Skulker's Leather Gloves -- 1255070
	recipe = AddRecipe(1255070, Q.RARE)
	recipe:SetSkillLevels(175, 175, 195, 205, 215)
	recipe:SetRecipeItem(252837, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252525, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Stalker's Leather Gloves -- 1255069
	recipe = AddRecipe(1255069, Q.RARE)
	recipe:SetSkillLevels(175, 175, 195, 205, 215)
	recipe:SetRecipeItem(252838, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252526, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Warden's Leather Gloves -- 1255068
	recipe = AddRecipe(1255068, Q.RARE)
	recipe:SetSkillLevels(175, 175, 195, 205, 215)
	recipe:SetRecipeItem(252839, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252527, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Skirmisher's Leather Gloves -- 1255067
	recipe = AddRecipe(1255067, Q.RARE)
	recipe:SetSkillLevels(175, 175, 195, 205, 215)
	recipe:SetRecipeItem(252840, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252528, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Skycaller's Leather Gloves -- 1255066
	recipe = AddRecipe(1255066, Q.RARE)
	recipe:SetSkillLevels(175, 175, 195, 205, 215)
	recipe:SetRecipeItem(252841, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252529, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Mender's Leather Gloves -- 1255065
	recipe = AddRecipe(1255065, Q.RARE)
	recipe:SetSkillLevels(175, 175, 195, 205, 215)
	recipe:SetRecipeItem(252842, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252530, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Prowler's Leather Shoulder -- 1255059
	recipe = AddRecipe(1255059, Q.RARE)
	recipe:SetSkillLevels(210, 210, 230, 240, 250)
	recipe:SetRecipeItem(252848, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252534, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Skulker's Leather Shoulder -- 1255058
	recipe = AddRecipe(1255058, Q.RARE)
	recipe:SetSkillLevels(210, 210, 230, 240, 250)
	recipe:SetRecipeItem(252849, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252535, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Warden's Leather Shoulder -- 1255057
	recipe = AddRecipe(1255057, Q.RARE)
	recipe:SetSkillLevels(210, 210, 230, 240, 250)
	recipe:SetRecipeItem(252850, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252536, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Skycaller's Leather Shoulder -- 1255056
	recipe = AddRecipe(1255056, Q.RARE)
	recipe:SetSkillLevels(210, 210, 230, 240, 250)
	recipe:SetRecipeItem(252851, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252537, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Mender's Leather Shoulder -- 1255055
	recipe = AddRecipe(1255055, Q.RARE)
	recipe:SetSkillLevels(210, 210, 230, 240, 250)
	recipe:SetRecipeItem(252852, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252538, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Prowler's Leather Bracers -- 1255054
	recipe = AddRecipe(1255054, Q.RARE)
	recipe:SetSkillLevels(225, 225, 245, 255, 265)
	recipe:SetRecipeItem(252853, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252539, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Skulker's Leather Bracers -- 1255053
	recipe = AddRecipe(1255053, Q.RARE)
	recipe:SetSkillLevels(225, 225, 245, 255, 265)
	recipe:SetRecipeItem(252854, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252540, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Warden's Leather Bracers -- 1255052
	recipe = AddRecipe(1255052, Q.RARE)
	recipe:SetSkillLevels(225, 225, 245, 255, 265)
	recipe:SetRecipeItem(252855, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252541, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Skycaller's Leather Bracers -- 1255051
	recipe = AddRecipe(1255051, Q.RARE)
	recipe:SetSkillLevels(225, 225, 245, 255, 265)
	recipe:SetRecipeItem(252856, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252542, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Mender's Leather Bracers -- 1255050
	recipe = AddRecipe(1255050, Q.RARE)
	recipe:SetSkillLevels(225, 225, 245, 255, 265)
	recipe:SetRecipeItem(252857, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252543, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Prowler's Leather Boots -- 1255047
	recipe = AddRecipe(1255047, Q.RARE)
	recipe:SetSkillLevels(235, 235, 255, 265, 275)
	recipe:SetRecipeItem(252860, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252468, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Skulker's Leather Boots -- 1255046
	recipe = AddRecipe(1255046, Q.RARE)
	recipe:SetSkillLevels(235, 235, 255, 265, 275)
	recipe:SetRecipeItem(252861, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252469, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Warden's Leather Boots -- 1255045
	recipe = AddRecipe(1255045, Q.RARE)
	recipe:SetSkillLevels(235, 235, 255, 265, 275)
	recipe:SetRecipeItem(252862, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252470, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Skycaller's Leather Boots -- 1255044
	recipe = AddRecipe(1255044, Q.RARE)
	recipe:SetSkillLevels(235, 235, 255, 265, 275)
	recipe:SetRecipeItem(252863, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252471, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Mender's Leather Boots -- 1255043
	recipe = AddRecipe(1255043, Q.RARE)
	recipe:SetSkillLevels(235, 235, 255, 265, 275)
	recipe:SetRecipeItem(252864, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252472, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Prowler's Leather Waistguard -- 1255035
	recipe = AddRecipe(1255035, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(252872, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252473, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Skulker's Leather Waistguard -- 1255034
	recipe = AddRecipe(1255034, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(252873, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252474, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Warden's Leather Waistguard -- 1255033
	recipe = AddRecipe(1255033, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(252874, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252475, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Skycaller's Leather Waistguard -- 1255032
	recipe = AddRecipe(1255032, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(252875, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252476, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Mender's Leather Waistguard -- 1255031
	recipe = AddRecipe(1255031, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(252876, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252477, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Stalker's Mail Shoulder -- 1255007
	recipe = AddRecipe(1255007, Q.RARE)
	recipe:SetSkillLevels(210, 210, 220, 230, 240)
	recipe:SetRecipeItem(252900, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252566, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Skycaller's Mail Shoulder -- 1255006
	recipe = AddRecipe(1255006, Q.RARE)
	recipe:SetSkillLevels(210, 210, 220, 230, 240)
	recipe:SetRecipeItem(252901, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252567, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Skirmisher's Mail Shoulder -- 1255005
	recipe = AddRecipe(1255005, Q.RARE)
	recipe:SetSkillLevels(210, 210, 220, 230, 240)
	recipe:SetRecipeItem(252902, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252568, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Mender's Mail Shoulder -- 1255004
	recipe = AddRecipe(1255004, Q.RARE)
	recipe:SetSkillLevels(210, 210, 220, 230, 240)
	recipe:SetRecipeItem(252903, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252569, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.FRIENDLY, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.FRIENDLY, 256734)
	recipe:AddMerchantFavor(60)

	-- Stalker's Mail Bracers -- 1255003
	recipe = AddRecipe(1255003, Q.RARE)
	recipe:SetSkillLevels(225, 225, 220, 230, 240)
	recipe:SetRecipeItem(252904, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252570, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Skycaller's Mail Bracers -- 1255002
	recipe = AddRecipe(1255002, Q.RARE)
	recipe:SetSkillLevels(225, 225, 220, 230, 240)
	recipe:SetRecipeItem(252905, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252571, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Skirmisher's Mail Bracers -- 1255001
	recipe = AddRecipe(1255001, Q.RARE)
	recipe:SetSkillLevels(225, 225, 220, 230, 240)
	recipe:SetRecipeItem(252906, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252572, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Mender's Mail Bracers -- 1255000
	recipe = AddRecipe(1255000, Q.RARE)
	recipe:SetSkillLevels(225, 225, 220, 230, 240)
	recipe:SetRecipeItem(252907, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252573, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Stalker's Mail Sabatons -- 1254997
	recipe = AddRecipe(1254997, Q.RARE)
	recipe:SetSkillLevels(235, 235, 255, 265, 275)
	recipe:SetRecipeItem(252910, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252576, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Skycaller's Mail Sabatons -- 1254996
	recipe = AddRecipe(1254996, Q.RARE)
	recipe:SetSkillLevels(235, 235, 255, 265, 275)
	recipe:SetRecipeItem(252911, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252577, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Skirmisher's Mail Sabatons -- 1254995
	recipe = AddRecipe(1254995, Q.RARE)
	recipe:SetSkillLevels(235, 235, 255, 265, 275)
	recipe:SetRecipeItem(252912, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252578, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Mender's Mail Sabatons -- 1254994
	recipe = AddRecipe(1254994, Q.RARE)
	recipe:SetSkillLevels(235, 235, 255, 265, 275)
	recipe:SetRecipeItem(252913, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252579, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Stalker's Mail Belt -- 1254985
	recipe = AddRecipe(1254985, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(252922, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252588, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Skycaller's Mail Belt -- 1254984
	recipe = AddRecipe(1254984, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(252923, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252589, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Skirmisher's Mail Belt -- 1254983
	recipe = AddRecipe(1254983, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(252924, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252590, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Mender's Mail Belt -- 1254982
	recipe = AddRecipe(1254982, Q.RARE)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(252925, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252591, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)

	-- Mystic Rugged Armor Kit -- 1254966
	recipe = AddRecipe(1254966, Q.UNCOMMON)
	recipe:SetSkillLevels(235, 235, 235, 245, 255)
	recipe:SetRecipeItem(252941, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252487, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddRepVendor(FAC.DUROTAR_SUPPLY_AND_LOGISTICS, REP.HONORED, 248201)
	recipe:AddRepVendor(FAC.AZEROTH_COMMERCE_AUTHORITY, REP.HONORED, 256734)
	recipe:AddMerchantFavor(90)




    -------------------------------------------------------------------------------


	-- Nightscape Cloak -- 10550
	recipe = AddRecipe(10550, Q.UNCOMMON)
	recipe:SetSkillLevels(205, 205, 225, 235, 245)
	recipe:SetRecipeItem(8388, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(8195, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(253524)

	-- Charged Scorpid Belt -- 1254998
	recipe = AddRecipe(1254998, Q.UNCOMMON)
	recipe:SetSkillLevels(230, 230, 250, 260, 270)
	recipe:SetRecipeItem(252909, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252575, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(5296)

	-- Supple Scorpid Boots -- 1254999
	recipe = AddRecipe(1254999, Q.UNCOMMON)
	recipe:SetSkillLevels(230, 230, 250, 260, 270)
	recipe:SetRecipeItem(252908, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252574, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(5471)

	-- Tooled Leather Belt -- 1255049
	recipe = AddRecipe(1255049, Q.UNCOMMON)
	recipe:SetSkillLevels(235, 235, 255, 265, 275)
	recipe:SetRecipeItem(252858, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252544, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(6116)

	-- Blue Suede Gloves -- 1255041
	recipe = AddRecipe(1255041, Q.UNCOMMON)
	recipe:SetSkillLevels(240, 240, 260, 270, 280)
	recipe:SetRecipeItem(252866, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252546, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7153)

	-- Charged Scorpid Helm -- 1254992
	recipe = AddRecipe(1254992, Q.UNCOMMON)
	recipe:SetSkillLevels(240, 240, 260, 270, 280)
	recipe:SetRecipeItem(252915, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252581, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(9318)

	-- Supple Scorpid Leggings -- 1254993
	recipe = AddRecipe(1254993, Q.UNCOMMON)
	recipe:SetSkillLevels(240, 240, 260, 270, 280)
	recipe:SetRecipeItem(252914, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252580, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(6505)

	-- Tooled Leather Boots -- 1255042
	recipe = AddRecipe(1255042, Q.UNCOMMON)
	recipe:SetSkillLevels(240, 240, 260, 270, 280)
	recipe:SetRecipeItem(252865, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252545, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7158)

	-- Charged Scorpid Shoulders -- 1254990
	recipe = AddRecipe(1254990, Q.UNCOMMON)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(252917, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252583, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(950)

	-- Supple Scorpid Bracers -- 1254991
	recipe = AddRecipe(1254991, Q.UNCOMMON)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(252916, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252582, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(5262)

	-- Blue Suede Pants -- 1255029
	recipe = AddRecipe(1255029, Q.UNCOMMON)
	recipe:SetSkillLevels(255, 255, 275, 285, 295)
	recipe:SetRecipeItem(252878, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252478, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(6557)

	-- Charged Scorpid Bracers -- 1254980
	recipe = AddRecipe(1254980, Q.UNCOMMON)
	recipe:SetSkillLevels(255, 255, 275, 285, 295)
	recipe:SetRecipeItem(252927, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252593, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(6527)

	-- Charged Scorpid Gauntlets -- 1254977
	recipe = AddRecipe(1254977, Q.UNCOMMON)
	recipe:SetSkillLevels(255, 255, 275, 285, 295)
	recipe:SetRecipeItem(252930, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252596, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(1784)

	-- Heavy Scorpid Boots -- 1254979
	recipe = AddRecipe(1254979, Q.UNCOMMON)
	recipe:SetSkillLevels(255, 255, 275, 285, 295)
	recipe:SetRecipeItem(252928, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252594, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(6004)

	-- Supple Scorpid Belt -- 1254978
	recipe = AddRecipe(1254978, Q.UNCOMMON)
	recipe:SetSkillLevels(255, 255, 275, 285, 295)
	recipe:SetRecipeItem(252929, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252595, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(6198)

	-- Supple Scorpid Shoulders -- 1254981
	recipe = AddRecipe(1254981, Q.UNCOMMON)
	recipe:SetSkillLevels(255, 255, 275, 285, 295)
	recipe:SetRecipeItem(252926, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252592, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7115)

	-- Blue Suede Shoulders -- 1255026
	recipe = AddRecipe(1255026, Q.UNCOMMON)
	recipe:SetSkillLevels(260, 260, 280, 290, 300)
	recipe:SetRecipeItem(252881, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252554, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(1831)

	-- Charged Scorpid Vest -- 1254975
	recipe = AddRecipe(1254975, Q.UNCOMMON)
	recipe:SetSkillLevels(260, 260, 280, 290, 300)
	recipe:SetRecipeItem(252932, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252598, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(6195)

	-- Supple Scorpid Helm -- 1254976
	recipe = AddRecipe(1254976, Q.UNCOMMON)
	recipe:SetSkillLevels(260, 260, 280, 290, 300)
	recipe:SetRecipeItem(252931, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252597, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(6006)

	-- Tooled Leather Gauntlets -- 1255027
	recipe = AddRecipe(1255027, Q.UNCOMMON)
	recipe:SetSkillLevels(260, 260, 280, 290, 300)
	recipe:SetRecipeItem(252880, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252553, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(1809)

	-- Wicked Leather Boots -- 1255028
	recipe = AddRecipe(1255028, Q.UNCOMMON)
	recipe:SetSkillLevels(260, 260, 280, 290, 300)
	recipe:SetRecipeItem(252879, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252479, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(9878)

	-- Tooled Leather Crown -- 1255025
	recipe = AddRecipe(1255025, Q.UNCOMMON)
	recipe:SetSkillLevels(265, 265, 285, 295, 305)
	recipe:SetRecipeItem(252882, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252555, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(6520)

	-- Blue Suede Belt -- 1255021
	recipe = AddRecipe(1255021, Q.UNCOMMON)
	recipe:SetSkillLevels(270, 270, 290, 300, 310)
	recipe:SetRecipeItem(252886, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252481, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7885)

	-- Charged Scorpid Leggings -- 1254973
	recipe = AddRecipe(1254973, Q.UNCOMMON)
	recipe:SetSkillLevels(270, 270, 290, 300, 310)
	recipe:SetRecipeItem(252934, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252600, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(11291)

	-- Tooled Leather Bracers -- 1255022
	recipe = AddRecipe(1255022, Q.UNCOMMON)
	recipe:SetSkillLevels(270, 270, 290, 300, 310)
	recipe:SetRecipeItem(252885, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252557, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(8534)

	-- Wicked Leather Shoulders -- 1255023
	recipe = AddRecipe(1255023, Q.UNCOMMON)
	recipe:SetSkillLevels(270, 270, 290, 300, 310)
	recipe:SetRecipeItem(252884, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252556, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(8523)

	-- Tooled Leather Epaulets -- 1255020
	recipe = AddRecipe(1255020, Q.UNCOMMON)
	recipe:SetSkillLevels(275, 275, 295, 305, 315)
	recipe:SetRecipeItem(252887, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252558, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(9777)

	-- Supple Scorpid Sabatons -- 1254972
	recipe = AddRecipe(1254972, Q.UNCOMMON)
	recipe:SetSkillLevels(280, 280, 300, 310, 320)
	recipe:SetRecipeItem(252935, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252601, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(8597)

	-- Dawn Armor -- 1255015
	recipe = AddRecipe(1255015, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(252892, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(252483, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(11443)

	-- Prowler's Leather Shoes -- 1255064
	recipe = AddRecipe(1255064, Q.RARE)
	recipe:SetSkillLevels(200, 200, 205, 205, 205)
	recipe:SetRecipeItem(252843, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252465, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7272, 7796)

	-- Skycaller's Mail Boots -- 1255010
	recipe = AddRecipe(1255010, Q.RARE)
	recipe:SetSkillLevels(200, 200, 205, 205, 205)
	recipe:SetRecipeItem(252897, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252563, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(3977, 7796)

	-- Mender's Leather Gauntlets -- 1255036
	recipe = AddRecipe(1255036, Q.RARE)
	recipe:SetSkillLevels(250, 250, 255, 255, 255)
	recipe:SetRecipeItem(252871, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252551, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(9502)

	-- Mender's Mail Gauntlets -- 1254986
	recipe = AddRecipe(1254986, Q.RARE)
	recipe:SetSkillLevels(250, 250, 255, 255, 255)
	recipe:SetRecipeItem(252921, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252587, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(2748, 5709, 5710, 5715, 5719, 5721, 7267, 7271, 7272, 7273, 7275, 7796, 7797, 8127, 8440, 8580, 9018, 9024, 9025, 9056, 9319, 9499, 9502, 9537, 12201, 12203, 12225, 12236, 12237, 12258, 13282, 13596, 13601)

	-- Prowler's Leather Gauntlets -- 1255040
	recipe = AddRecipe(1255040, Q.RARE)
	recipe:SetSkillLevels(250, 250, 255, 255, 255)
	recipe:SetRecipeItem(252867, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252547, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7267, 8580, 12201, 12236)

	-- Skirmisher's Mail Gauntlets -- 1254987
	recipe = AddRecipe(1254987, Q.RARE)
	recipe:SetSkillLevels(250, 250, 255, 255, 255)
	recipe:SetRecipeItem(252920, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252586, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(8127)

	-- Skulker's Leather Gauntlets -- 1255039
	recipe = AddRecipe(1255039, Q.RARE)
	recipe:SetSkillLevels(250, 250, 255, 255, 255)
	recipe:SetRecipeItem(252868, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252548, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(2748, 5709, 5710, 5715, 5719, 5721, 7267, 7271, 7272, 7273, 7275, 7796, 7797, 8127, 8440, 8580, 9018, 9025, 9056, 9319, 9502, 9537, 9543, 12201, 12203, 12225, 12236, 12237, 12258, 13282, 13596, 13601)

	-- Stalker's Mail Gauntlets -- 1254989
	recipe = AddRecipe(1254989, Q.RARE)
	recipe:SetSkillLevels(250, 250, 255, 255, 255)
	recipe:SetRecipeItem(252918, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252584, "BIND_ON_PICKUP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7273, 9024)

	-- Charged Scorpid Boots -- 1254971
	recipe = AddRecipe(1254971, Q.UNCOMMON)
	recipe:SetSkillLevels(280, 280, 300, 310, 320)
	recipe:SetRecipeItem(252936, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252602, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7379)

	-- Tooled Leather Pants -- 1255018
	recipe = AddRecipe(1255018, Q.UNCOMMON)
	recipe:SetSkillLevels(280, 280, 300, 310, 320)
	recipe:SetRecipeItem(252889, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252560, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7376)

	-- Sewing Machine -- 1263079
	recipe = AddRecipe(1263079, Q.UNCOMMON)
	recipe:SetSkillLevels(300, 300, 300, 300, 300)
	recipe:SetRecipeItem(273121, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(279945, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CREATED_ITEM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(10432)

	-- Black Dragonscale Helm -- 1254968
	recipe = AddRecipe(1254968, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(252939, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252605, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(10318)

	-- Blue Dragonscale Helm -- 1254969
	recipe = AddRecipe(1254969, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(252938, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252604, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(261770, 261774, 262164, 262167, 262168, 262188, 262190, 262197)

	-- Ironfeather Leggings -- 1255012
	recipe = AddRecipe(1255012, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(252895, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252486, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(9262)

	-- Living Crown -- 1255016
	recipe = AddRecipe(1255016, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(252891, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252561, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(11462)

	-- Pristine Scorpid Leggings -- 1254967
	recipe = AddRecipe(1254967, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(252940, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252606, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(10499)

	-- Red Dragonscale Leggings -- 1254970
	recipe = AddRecipe(1254970, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(252937, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252603, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(10425)

	-- Timbermaw Tunic -- 1255014
	recipe = AddRecipe(1255014, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(252893, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252484, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(258516)

	-- Warbear Helm -- 1255013
	recipe = AddRecipe(1255013, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(252894, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(252485, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(11469)

    -- Classic.
    -------------------------------------------------------------------------------
	-- Handstitched Leather Boots -- 2149
	recipe = AddRecipe(2149, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 40, 55, 70)
	recipe:SetCraftedItem(2302, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.MISC1)
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Light Armor Kit -- 2152
	recipe = AddRecipe(2152, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 30, 45, 60)
	recipe:SetCraftedItem(2304, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.MISC1)
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Handstitched Leather Pants -- 2153
	recipe = AddRecipe(2153, Q.COMMON)
	recipe:SetSkillLevels(15, 15, 45, 60, 75)
	recipe:SetCraftedItem(2303, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 11097, 11098, 251993, 252376, 255721, 7867, 7868, 7869, 7866)

	-- Fine Leather Boots -- 2158
	recipe = AddRecipe(2158, Q.UNCOMMON)
	recipe:SetSkillLevels(65, 65, 95, 110, 125)
	recipe:SetRecipeItem(2406, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(2307, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.RUINS_OF_LORDAERON, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Fine Leather Cloak -- 2159
	recipe = AddRecipe(2159, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 70, 85, 100)
	recipe:SetCraftedItem(2308, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721, 7867, 7868, 7869, 7866)

	-- Embossed Leather Vest -- 2160
	recipe = AddRecipe(2160, Q.COMMON)
	recipe:SetSkillLevels(35, 35, 65, 80, 95)
	recipe:SetCraftedItem(2300, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 11097, 11098, 251993, 252376, 255721, 7867, 7868, 7869, 7866)

	-- Embossed Leather Boots -- 2161
	recipe = AddRecipe(2161, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 80, 95, 110)
	recipe:SetCraftedItem(2309, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 11097, 11098, 251993, 252376, 255721, 7867, 7868, 7869, 7866)

	-- Embossed Leather Cloak -- 2162
	recipe = AddRecipe(2162, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 70, 85, 100)
	recipe:SetCraftedItem(2310, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 11097, 11098, 251993, 252376, 255721)

	-- White Leather Jerkin -- 2163
	recipe = AddRecipe(2163, Q.UNCOMMON)
	recipe:SetSkillLevels(40, 40, 70, 85, 100)
	recipe:SetRecipeItem(2407, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(2311, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.RUINS_OF_LORDAERON, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Fine Leather Gloves -- 2164
	recipe = AddRecipe(2164, Q.UNCOMMON)
	recipe:SetSkillLevels(50, 50, 80, 95, 110)
	recipe:SetRecipeItem(2408, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(2312, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.RUINS_OF_LORDAERON, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Medium Armor Kit -- 2165
	recipe = AddRecipe(2165, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 90, 97, 105)
	recipe:SetCraftedItem(2313, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Toughened Leather Armor -- 2166
	recipe = AddRecipe(2166, Q.COMMON)
	recipe:SetSkillLevels(95, 95, 120, 132, 145)
	recipe:SetCraftedItem(2314, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721, 7867, 7868, 7869, 7866)

	-- Dark Leather Boots -- 2167
	recipe = AddRecipe(2167, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 100, 112, 125)
	recipe:SetCraftedItem(2315, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721, 7867, 7868, 7869, 7866)

	-- Dark Leather Cloak -- 2168
	recipe = AddRecipe(2168, Q.COMMON)
	recipe:SetSkillLevels(85, 85, 110, 122, 135)
	recipe:SetCraftedItem(2316, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Dark Leather Tunic -- 2169
	recipe = AddRecipe(2169, Q.UNCOMMON)
	recipe:SetSkillLevels(75, 75, 100, 112, 125)
	recipe:SetRecipeItem(2409, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(2317, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Light Leather -- 2881
	recipe = AddRecipe(2881, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 20, 30, 40)
	recipe:SetCraftedItem(2318, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.MISC1)
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Handstitched Leather Belt -- 3753
	recipe = AddRecipe(3753, Q.COMMON)
	recipe:SetSkillLevels(25, 25, 55, 70, 85)
	recipe:SetCraftedItem(4237, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 11097, 11098, 251993, 252376, 255721, 7867, 7868, 7869, 7866)

	-- Embossed Leather Gloves -- 3756
	recipe = AddRecipe(3756, Q.COMMON)
	recipe:SetSkillLevels(40, 40, 70, 85, 100)
	recipe:SetCraftedItem(4239, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 11097, 11098, 251993, 252376, 255721)

	-- Embossed Leather Pants -- 3759
	recipe = AddRecipe(3759, Q.COMMON)
	recipe:SetSkillLevels(50, 50, 80, 95, 110)
	recipe:SetCraftedItem(4242, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 11097, 11098, 251993, 252376, 255721)

	-- Hillman's Cloak -- 3760
	recipe = AddRecipe(3760, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 145, 155, 165)
	recipe:SetCraftedItem(3719, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Fine Leather Tunic -- 3761
	recipe = AddRecipe(3761, Q.COMMON)
	recipe:SetSkillLevels(60, 60, 90, 105, 120)
	recipe:SetCraftedItem(4243, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Hillman's Leather Vest -- 3762
	recipe = AddRecipe(3762, Q.UNCOMMON)
	recipe:SetSkillLevels(75, 75, 100, 112, 125)
	recipe:SetRecipeItem(4293, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(4244, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Fine Leather Belt -- 3763
	recipe = AddRecipe(3763, Q.COMMON)
	recipe:SetSkillLevels(55, 55, 85, 100, 115)
	recipe:SetCraftedItem(4246, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Hillman's Leather Gloves -- 3764
	recipe = AddRecipe(3764, Q.COMMON)
	recipe:SetSkillLevels(120, 120, 145, 157, 170)
	recipe:SetCraftedItem(4247, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Dark Leather Gloves -- 3765
	recipe = AddRecipe(3765, Q.UNCOMMON)
	recipe:SetSkillLevels(95, 95, 140, 152, 165)
	recipe:SetRecipeItem(7360, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(4248, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.ULDAMAN, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Dark Leather Belt -- 3766
	recipe = AddRecipe(3766, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 125, 137, 150)
	recipe:SetCraftedItem(4249, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Hillman's Belt -- 3767
	recipe = AddRecipe(3767, Q.UNCOMMON)
	recipe:SetSkillLevels(95, 95, 125, 137, 150)
	recipe:SetRecipeItem(4294, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(4250, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Hillman's Shoulders -- 3768
	recipe = AddRecipe(3768, Q.COMMON)
	recipe:SetSkillLevels(105, 105, 130, 142, 155)
	recipe:SetCraftedItem(4251, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Dark Leather Shoulders -- 3769
	recipe = AddRecipe(3769, Q.UNCOMMON)
	recipe:SetSkillLevels(115, 115, 140, 152, 165)
	recipe:SetRecipeItem(4296, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(4252, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.ULDAMAN, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Toughened Leather Gloves -- 3770
	recipe = AddRecipe(3770, Q.COMMON)
	recipe:SetSkillLevels(110, 110, 135, 147, 160)
	recipe:SetCraftedItem(4253, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Barbaric Gloves -- 3771
	recipe = AddRecipe(3771, Q.UNCOMMON)
	recipe:SetSkillLevels(125, 125, 150, 160, 170)
	recipe:SetRecipeItem(4297, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(4254, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Green Leather Armor -- 3772
	recipe = AddRecipe(3772, Q.COMMON)
	recipe:SetSkillLevels(130, 130, 150, 160, 170)
	recipe:SetRecipeItem(7613, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(4255, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddLimitedVendor(2679, 1, 2698, 1)
	recipe:AddVendor(12245)

	-- Guardian Armor -- 3773
	recipe = AddRecipe(3773, Q.UNCOMMON)
	recipe:SetSkillLevels(150, 150, 170, 180, 190)
	recipe:SetRecipeItem(4299, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(4256, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_STOCKADE, Z.ULDAMAN, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Green Leather Belt -- 3774
	recipe = AddRecipe(3774, Q.COMMON)
	recipe:SetSkillLevels(135, 135, 155, 165, 175)
	recipe:SetCraftedItem(4257, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721)

	-- Guardian Belt -- 3775
	recipe = AddRecipe(3775, Q.RARE)
	recipe:SetSkillLevels(145, 145, 165, 175, 185)
	recipe:SetRecipeItem(4298, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(4258, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Green Leather Bracers -- 3776
	recipe = AddRecipe(3776, Q.COMMON)
	recipe:SetSkillLevels(155, 155, 175, 185, 195)
	recipe:SetCraftedItem(4259, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721)

	-- Guardian Leather Bracers -- 3777
	recipe = AddRecipe(3777, Q.UNCOMMON)
	recipe:SetSkillLevels(170, 170, 190, 200, 210)
	recipe:SetRecipeItem(4300, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(4260, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Gem-studded Leather Belt -- 3778
	recipe = AddRecipe(3778, Q.COMMON)
	recipe:SetSkillLevels(160, 160, 180, 190, 200)
	recipe:SetRecipeItem(14635, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(4262, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddLimitedVendor(2699, 1, 12245, 1)
	recipe:AddMobDrop(6427)

	-- Barbaric Belt -- 3779
	recipe = AddRecipe(3779, Q.RARE)
	recipe:SetSkillLevels(175, 175, 195, 205, 215)
	recipe:SetRecipeItem(4301, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(4264, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddWorldDrop(Z.EXCAVATION_SITE_WETLANDS, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.ULDAMAN, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Heavy Armor Kit -- 3780
	recipe = AddRecipe(3780, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 145, 155, 165)
	recipe:SetCraftedItem(4265, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Cured Light Hide -- 3816
	recipe = AddRecipe(3816, Q.COMMON)
	recipe:SetSkillLevels(30, 30, 50, 60, 70)
	recipe:SetCraftedItem(4231, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 11097, 11098, 251993, 252376, 255721, 7867, 7868, 7869, 7866)

	-- Cured Medium Hide -- 3817
	recipe = AddRecipe(3817, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 90, 97, 105)
	recipe:SetCraftedItem(4233, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Cured Heavy Hide -- 3818
	recipe = AddRecipe(3818, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 135, 140, 145)
	recipe:SetCraftedItem(4236, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Raptor Hide Harness -- 4096
	recipe = AddRecipe(4096, Q.UNCOMMON)
	recipe:SetSkillLevels(140, 140, 160, 170, 180)
	recipe:SetRecipeItem(13287, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(4455, "BIND_ON_EQUIP")
	recipe:SetRequiredFaction("Horde")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.HORDE, F.DPS, F.TANK)
	recipe:AddLimitedVendor(2819, 1)
	recipe:AddMobDrop(1036)

	-- Raptor Hide Belt -- 4097
	recipe = AddRecipe(4097, Q.UNCOMMON)
	recipe:SetSkillLevels(140, 140, 160, 170, 180)
	recipe:SetRecipeItem(13288, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(4456, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.DPS)
	recipe:AddLimitedVendor(2816, 1)
	recipe:AddMobDrop(2368)

	-- Kodo Hide Bag -- 5244
	recipe = AddRecipe(5244, Q.UNCOMMON)
	recipe:SetSkillLevels(35, 35, 65, 80, 95)
	recipe:SetRecipeItem(5083, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(5081, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BAG")
	recipe:AddFilters(F.HORDE)
	recipe:AddQuest(769)

	-- Barbaric Harness -- 6661
	recipe = AddRecipe(6661, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 185, 195, 205)
	recipe:SetCraftedItem(5739, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721)

	-- Murloc Scale Belt -- 6702
	recipe = AddRecipe(6702, Q.COMMON)
	recipe:SetSkillLevels(65, 65, 95, 110, 125)
	recipe:SetRecipeItem(5786, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(5780, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE, F.DPS)
	recipe:AddLimitedVendor(843, 1, 3556, 1, 4186, 1)
	recipe:AddMobDrop(1732, 3385)

	-- Murloc Scale Breastplate -- 6703
	recipe = AddRecipe(6703, Q.COMMON)
	recipe:SetSkillLevels(70, 70, 100, 115, 130)
	recipe:SetRecipeItem(5787, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(5781, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE, F.DPS)
	recipe:AddLimitedVendor(843, 1, 3556, 1, 4186, 1)
	recipe:AddMobDrop(657, 3386)

	-- Thick Murloc Armor -- 6704
	recipe = AddRecipe(6704, Q.UNCOMMON)
	recipe:SetSkillLevels(145, 145, 165, 175, 185)
	recipe:SetRecipeItem(5788, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(5782, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddLimitedVendor(2381, 1, 2393, 1, 2846, 1)
	recipe:AddMobDrop(938, 1160)

	-- Murloc Scale Bracers -- 6705
	recipe = AddRecipe(6705, Q.UNCOMMON)
	recipe:SetSkillLevels(165, 165, 185, 195, 205)
	recipe:SetRecipeItem(5789, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(5783, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddLimitedVendor(4897, 1)
	recipe:AddVendor(2846)
	recipe:AddMobDrop(1561, 2636)

	-- Handstitched Leather Vest -- 7126
	recipe = AddRecipe(7126, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 40, 55, 70)
	recipe:SetCraftedItem(5957, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.MISC1)
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Fine Leather Pants -- 7133
	recipe = AddRecipe(7133, Q.UNCOMMON)
	recipe:SetSkillLevels(80, 80, 105, 117, 130)
	recipe:SetRecipeItem(5972, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(5958, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Dark Leather Pants -- 7135
	recipe = AddRecipe(7135, Q.COMMON)
	recipe:SetSkillLevels(90, 90, 115, 127, 140)
	recipe:SetCraftedItem(5961, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Guardian Pants -- 7147
	recipe = AddRecipe(7147, Q.COMMON)
	recipe:SetSkillLevels(135, 135, 155, 165, 175)
	recipe:SetCraftedItem(5962, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721)

	-- Barbaric Leggings -- 7149
	recipe = AddRecipe(7149, Q.COMMON)
	recipe:SetSkillLevels(145, 145, 165, 175, 185)
	recipe:SetRecipeItem(5973, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(5963, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER)
	recipe:AddLimitedVendor(2810, 1, 2821, 1, 3958, 1, 4877, 1)
	recipe:AddVendor(12245)

	-- Barbaric Shoulders -- 7151
	recipe = AddRecipe(7151, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 170, 180, 190)
	recipe:SetCraftedItem(5964, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721)

	-- Guardian Cloak -- 7153
	recipe = AddRecipe(7153, Q.UNCOMMON)
	recipe:SetSkillLevels(160, 160, 180, 190, 200)
	recipe:SetRecipeItem(5974, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(5965, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Guardian Gloves -- 7156
	recipe = AddRecipe(7156, Q.COMMON)
	recipe:SetSkillLevels(165, 165, 185, 195, 205)
	recipe:SetCraftedItem(5966, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721)

	-- Deviate Scale Cloak -- 7953
	recipe = AddRecipe(7953, Q.COMMON)
	recipe:SetSkillLevels(65, 65, 95, 110, 125)
	recipe:SetRecipeItem(6474, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(6466, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddLimitedVendor(5783, 2)

	-- Deviate Scale Gloves -- 7954
	recipe = AddRecipe(7954, Q.COMMON)
	recipe:SetSkillLevels(80, 80, 105, 117, 130)
	recipe:SetRecipeItem(6475, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(6467, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddLimitedVendor(5783, 1)

	-- Deviate Scale Belt -- 7955
	recipe = AddRecipe(7955, Q.UNCOMMON)
	recipe:SetSkillLevels(90, 90, 115, 127, 140)
	recipe:SetRecipeItem(6476, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(6468, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.CASTER)
	recipe:AddQuest(1487)

	-- Moonglow Vest -- 8322
	recipe = AddRecipe(8322, Q.UNCOMMON)
	recipe:SetSkillLevels(65, 65, 90, 105, 120)
	recipe:SetRecipeItem(6710, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(6709, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HEALER, F.CASTER)
	recipe:AddQuest(1582)

	-- Handstitched Leather Cloak -- 9058
	recipe = AddRecipe(9058, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 40, 55, 70)
	recipe:SetCraftedItem(7276, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.MISC1)
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Handstitched Leather Bracers -- 9059
	recipe = AddRecipe(9059, Q.COMMON)
	recipe:SetSkillLevels(1, 1, 40, 55, 70)
	recipe:SetCraftedItem(7277, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.MISC1)
	recipe:AddCustom("DEFAULT_RECIPE")

	-- Rugged Leather Pants -- 9064
	recipe = AddRecipe(9064, Q.UNCOMMON)
	recipe:SetSkillLevels(30, 30, 60, 75, 90)
	recipe:SetRecipeItem(7288, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7280, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.RAGEFIRE_CHASM, Z.RUINS_OF_LORDAERON, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Light Leather Bracers -- 9065
	recipe = AddRecipe(9065, Q.COMMON)
	recipe:SetSkillLevels(45, 45, 75, 90, 105)
	recipe:SetCraftedItem(7281, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(223, 1385, 1466, 1632, 3007, 3008, 3069, 3365, 3549, 3605, 3703, 3967, 4212, 4588, 5127, 5564, 5784, 5811, 8153, 11081, 11083, 11084, 11096, 11097, 11098, 251993, 252376, 255721, 7867, 7868, 7869, 7866)

	-- Light Leather Pants -- 9068
	recipe = AddRecipe(9068, Q.COMMON)
	recipe:SetSkillLevels(70, 70, 100, 115, 130)
	recipe:SetCraftedItem(7282, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721, 7867, 7868, 7869, 7866)

	-- Black Whelp Cloak -- 9070
	recipe = AddRecipe(9070, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 100, 112, 125)
	recipe:SetRecipeItem(7289, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7283, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddLimitedVendor(2697, 1)
	recipe:AddMobDrop(423)

	-- Red Whelp Gloves -- 9072
	recipe = AddRecipe(9072, Q.COMMON)
	recipe:SetSkillLevels(95, 95, 120, 132, 145)
	recipe:SetRecipeItem(7290, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7284, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddLimitedVendor(2679, 1)
	recipe:AddMobDrop(2103)

	-- Nimble Leather Gloves -- 9074
	recipe = AddRecipe(9074, Q.COMMON)
	recipe:SetSkillLevels(95, 95, 120, 132, 145)
	recipe:SetCraftedItem(7285, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Fletcher's Gloves -- 9145
	recipe = AddRecipe(9145, Q.COMMON)
	recipe:SetSkillLevels(100, 100, 125, 137, 150)
	recipe:SetCraftedItem(7348, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Herbalist's Gloves -- 9146
	recipe = AddRecipe(9146, Q.UNCOMMON)
	recipe:SetSkillLevels(110, 110, 135, 147, 160)
	recipe:SetRecipeItem(7361, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7349, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE)
	recipe:AddLimitedVendor(6731, 1)
	recipe:AddMobDrop(3783)

	-- Earthen Leather Shoulders -- 9147
	recipe = AddRecipe(9147, Q.COMMON)
	recipe:SetSkillLevels(110, 110, 135, 147, 160)
	recipe:SetRecipeItem(7362, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(7352, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddLimitedVendor(3537, 1)

	-- Pilferer's Gloves -- 9148
	recipe = AddRecipe(9148, Q.UNCOMMON)
	recipe:SetSkillLevels(115, 115, 140, 152, 165)
	recipe:SetRecipeItem(7363, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7358, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_HALL_OF_THANES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Heavy Earthen Gloves -- 9149
	recipe = AddRecipe(9149, Q.UNCOMMON)
	recipe:SetSkillLevels(120, 120, 145, 157, 170)
	recipe:SetRecipeItem(7364, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7359, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAGEFIRE_CHASM, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.RUINS_OF_LORDAERON, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_DEADMINES, Z.THE_STOCKADE, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Dusky Leather Leggings -- 9195
	recipe = AddRecipe(9195, Q.UNCOMMON)
	recipe:SetSkillLevels(140, 140, 160, 170, 180)
	recipe:SetRecipeItem(7449, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7373, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_STOCKADE, Z.ULDAMAN, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Dusky Leather Armor -- 9196
	recipe = AddRecipe(9196, Q.COMMON)
	recipe:SetSkillLevels(150, 150, 170, 180, 190)
	recipe:SetCraftedItem(7374, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721)

	-- Green Whelp Armor -- 9197
	recipe = AddRecipe(9197, Q.UNCOMMON)
	recipe:SetSkillLevels(150, 150, 170, 180, 190)
	recipe:SetRecipeItem(7450, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7375, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.SHADOWFANG_KEEP, Z.THE_STOCKADE, Z.ULDAMAN, Z.WAILING_CAVERNS, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Frost Leather Cloak -- 9198
	recipe = AddRecipe(9198, Q.COMMON)
	recipe:SetSkillLevels(155, 155, 175, 185, 195)
	recipe:SetCraftedItem(7377, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721)

	-- Dusky Bracers -- 9201
	recipe = AddRecipe(9201, Q.COMMON)
	recipe:SetSkillLevels(160, 160, 180, 190, 200)
	recipe:SetCraftedItem(7378, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721)

	-- Green Whelp Bracers -- 9202
	recipe = AddRecipe(9202, Q.UNCOMMON)
	recipe:SetSkillLevels(165, 165, 185, 195, 205)
	recipe:SetRecipeItem(7451, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(7386, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER)
	recipe:AddLimitedVendor(4225, 1, 4589, 1, 7852, 1, 7854, 1)
	recipe:AddVendor(12245)


	-- Dusky Belt -- 9206
	recipe = AddRecipe(9206, Q.COMMON)
	recipe:SetSkillLevels(170, 170, 190, 200, 210)
	recipe:SetCraftedItem(7387, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721)

	-- Dusky Boots -- 9207
	recipe = AddRecipe(9207, Q.RARE)
	recipe:SetSkillLevels(175, 175, 195, 205, 215)
	recipe:SetRecipeItem(7452, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7390, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.STRANGLETHORN_VALE, Z.SWAMP_OF_SORROWS, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Swift Boots -- 9208
	recipe = AddRecipe(9208, Q.UNCOMMON)
	recipe:SetSkillLevels(175, 175, 195, 205, 215)
	recipe:SetRecipeItem(7453, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(7391, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.BLACKFATHOM_DEEPS, Z.EXCAVATION_SITE_WETLANDS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_STOCKADE, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Cured Thick Hide -- 10482
	recipe = AddRecipe(10482, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 175, 175, 175)
	recipe:SetCraftedItem(8172, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721)

	-- Thick Armor Kit -- 10487
	recipe = AddRecipe(10487, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 195, 205, 215)
	recipe:SetCraftedItem(8173, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721)

	-- Comfortable Leather Hat -- 10490
	recipe = AddRecipe(10490, Q.RARE)
	recipe:SetSkillLevels(175, 175, 195, 205, 215)
	recipe:SetRecipeItem(8384, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(8174, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.CASTER)
	recipe:AddWorldDrop(Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.ULDAMAN, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Nightscape Tunic -- 10499
	recipe = AddRecipe(10499, Q.COMMON)
	recipe:SetSkillLevels(180, 180, 200, 210, 220)
	recipe:SetCraftedItem(8175, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721)

	-- Nightscape Headband -- 10507
	recipe = AddRecipe(10507, Q.COMMON)
	recipe:SetSkillLevels(180, 180, 200, 210, 220)
	recipe:SetCraftedItem(8176, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721)

	-- Turtle Scale Gloves -- 10509
	recipe = AddRecipe(10509, Q.COMMON)
	recipe:SetSkillLevels(180, 180, 200, 210, 220)
	recipe:SetRecipeItem(8385, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(8187, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddLimitedVendor(7852, 1, 7854, 1)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)


	-- Turtle Scale Breastplate -- 10511
	recipe = AddRecipe(10511, Q.COMMON)
	recipe:SetSkillLevels(185, 185, 205, 215, 225)
	recipe:SetCraftedItem(8189, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721, 7870)

	-- Nightscape Shoulders -- 10516
	recipe = AddRecipe(10516, Q.UNCOMMON)
	recipe:SetSkillLevels(185, 185, 205, 215, 225)
	recipe:SetRecipeItem(8409, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(8192, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddLimitedVendor(7854, 1, 8160, 1)

	-- Turtle Scale Bracers -- 10518
	recipe = AddRecipe(10518, Q.COMMON)
	recipe:SetSkillLevels(185, 185, 205, 215, 225)
	recipe:SetCraftedItem(8198, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721, 7870)

	-- Big Voodoo Robe -- 10520
	recipe = AddRecipe(10520, Q.UNCOMMON)
	recipe:SetSkillLevels(190, 190, 210, 220, 230)
	recipe:SetRecipeItem(8386, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(8200, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.SCARLET_MONASTERY, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Tough Scorpid Breastplate -- 10525
	recipe = AddRecipe(10525, Q.UNCOMMON)
	recipe:SetSkillLevels(195, 195, 215, 225, 235)
	recipe:SetRecipeItem(8395, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(8203, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddMobDrop(5618)

	-- Wild Leather Shoulders -- 10529
	recipe = AddRecipe(10529, Q.UNCOMMON)
	recipe:SetSkillLevels(195, 195, 215, 225, 235)
	recipe:SetRecipeItem(8403, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(8210, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddQuest(2848, 2855)

	-- Big Voodoo Mask -- 10531
	recipe = AddRecipe(10531, Q.UNCOMMON)
	recipe:SetSkillLevels(195, 195, 215, 225, 235)
	recipe:SetRecipeItem(8387, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(8201, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RAZORFEN_KRAUL, Z.SCARLET_MONASTERY, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Tough Scorpid Bracers -- 10533
	recipe = AddRecipe(10533, Q.UNCOMMON)
	recipe:SetSkillLevels(195, 195, 215, 225, 235)
	recipe:SetRecipeItem(8397, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(8205, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddMobDrop(5617)

	-- Tough Scorpid Gloves -- 10542
	recipe = AddRecipe(10542, Q.UNCOMMON)
	recipe:SetSkillLevels(200, 200, 220, 230, 240)
	recipe:SetRecipeItem(8398, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(8204, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddMobDrop(5616)

	-- Wild Leather Vest -- 10544
	recipe = AddRecipe(10544, Q.UNCOMMON)
	recipe:SetSkillLevels(200, 200, 220, 230, 240)
	recipe:SetRecipeItem(8404, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(8211, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddQuest(2849, 2856, 82656, 82657)

	-- Wild Leather Helmet -- 10546
	recipe = AddRecipe(10546, Q.UNCOMMON)
	recipe:SetSkillLevels(200, 200, 220, 230, 240)
	recipe:SetRecipeItem(8405, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(8214, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddQuest(2850, 2857)

	-- Nightscape Pants -- 10548
	recipe = AddRecipe(10548, Q.COMMON)
	recipe:SetSkillLevels(205, 205, 225, 235, 245)
	recipe:SetCraftedItem(8193, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(11097, 11098, 7870)

	-- Turtle Scale Helm -- 10552
	recipe = AddRecipe(10552, Q.COMMON)
	recipe:SetSkillLevels(205, 205, 225, 235, 245)
	recipe:SetCraftedItem(8191, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddTrainer(11097, 11098, 7870)

	-- Tough Scorpid Boots -- 10554
	recipe = AddRecipe(10554, Q.UNCOMMON)
	recipe:SetSkillLevels(210, 210, 230, 240, 250)
	recipe:SetRecipeItem(8399, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(8209, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddMobDrop(5615)

	-- Turtle Scale Leggings -- 10556
	recipe = AddRecipe(10556, Q.COMMON)
	recipe:SetSkillLevels(210, 210, 230, 240, 250)
	recipe:SetCraftedItem(8185, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddTrainer(11097, 11098, 7870)

	-- Nightscape Boots -- 10558
	recipe = AddRecipe(10558, Q.COMMON)
	recipe:SetSkillLevels(210, 210, 230, 240, 250)
	recipe:SetCraftedItem(8197, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(11097, 11098, 7870)

	-- Big Voodoo Pants -- 10560
	recipe = AddRecipe(10560, Q.UNCOMMON)
	recipe:SetSkillLevels(215, 215, 230, 240, 250)
	recipe:SetRecipeItem(8389, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(8202, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.DIRE_MAUL, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_MONASTERY, Z.STRATHOLME, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Big Voodoo Cloak -- 10562
	recipe = AddRecipe(10562, Q.UNCOMMON)
	recipe:SetSkillLevels(215, 215, 235, 245, 255)
	recipe:SetRecipeItem(8390, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(8216, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.DIRE_MAUL, Z.GNOMEREGAN, Z.MARAUDON, Z.RAZORFEN_DOWNS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_MONASTERY, Z.STRATHOLME, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Tough Scorpid Shoulders -- 10564
	recipe = AddRecipe(10564, Q.UNCOMMON)
	recipe:SetSkillLevels(215, 215, 235, 245, 255)
	recipe:SetRecipeItem(8400, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(8207, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.TANARIS)

	-- Wild Leather Boots -- 10566
	recipe = AddRecipe(10566, Q.UNCOMMON)
	recipe:SetSkillLevels(220, 220, 240, 250, 260)
	recipe:SetRecipeItem(8406, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(8213, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddQuest(2851, 2858)

	-- Tough Scorpid Leggings -- 10568
	recipe = AddRecipe(10568, Q.UNCOMMON)
	recipe:SetSkillLevels(220, 220, 240, 250, 260)
	recipe:SetRecipeItem(8401, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(8206, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddMobDrop(5615)

	-- Tough Scorpid Helm -- 10570
	recipe = AddRecipe(10570, Q.UNCOMMON)
	recipe:SetSkillLevels(225, 225, 245, 255, 265)
	recipe:SetRecipeItem(8402, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(8208, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.TANARIS)

	-- Wild Leather Leggings -- 10572
	recipe = AddRecipe(10572, Q.UNCOMMON)
	recipe:SetSkillLevels(225, 225, 245, 255, 265)
	recipe:SetRecipeItem(8407, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(8212, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddQuest(2852, 2859)

	-- Wild Leather Cloak -- 10574
	recipe = AddRecipe(10574, Q.UNCOMMON)
	recipe:SetSkillLevels(225, 225, 245, 255, 265)
	recipe:SetRecipeItem(8408, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(8215, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddQuest(2853, 2860)

	-- Dragonscale Gauntlets -- 10619
	recipe = AddRecipe(10619, Q.RARE)
	recipe:SetSkillLevels(225, 225, 225, 230, 240)
	recipe:SetCraftedItem(8347, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(7866, 7867)

	-- Wolfshead Helm -- 10621
	recipe = AddRecipe(10621, Q.COMMON)
	recipe:SetSkillLevels(200, 200, 220, 230, 240)
	recipe:SetCraftedItem(8345, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.DRUID)
	recipe:AddTrainer(7870, 7871)

	-- Gauntlets of the Sea -- 10630
	recipe = AddRecipe(10630, Q.COMMON)
	recipe:SetSkillLevels(205, 205, 225, 235, 245)
	recipe:SetCraftedItem(8346, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(7868, 7869)

	-- Helm of Fire -- 10632
	recipe = AddRecipe(10632, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 245, 255, 265)
	recipe:SetCraftedItem(8348, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddTrainer(7868, 7869)

	-- Feathered Breastplate -- 10647
	recipe = AddRecipe(10647, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 245, 255, 265)
	recipe:SetCraftedItem(8349, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddTrainer(7870, 7871, 11097, 11098)

	-- Dragonscale Breastplate -- 10650
	recipe = AddRecipe(10650, Q.RARE)
	recipe:SetSkillLevels(255, 255, 255, 260, 270)
	recipe:SetCraftedItem(8367, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(7866, 7867)

	-- Cured Rugged Hide -- 19047
	recipe = AddRecipe(19047, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 225, 230, 235)
	recipe:SetCraftedItem(15407, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(11097, 11098, 7870)

	-- Heavy Scorpid Bracers -- 19048
	recipe = AddRecipe(19048, Q.COMMON)
	recipe:SetSkillLevels(255, 255, 250, 260, 270)
	recipe:SetRecipeItem(15724, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(15077, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddVendor(12956)

	-- Wicked Leather Gauntlets -- 19049
	recipe = AddRecipe(19049, Q.COMMON)
	recipe:SetSkillLevels(235, 235, 255, 265, 275)
	recipe:SetRecipeItem(15725, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(15083, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddLimitedVendor(12942, 1, 12943, 1)

	-- Green Dragonscale Breastplate -- 19050
	recipe = AddRecipe(19050, Q.RARE)
	recipe:SetSkillLevels(235, 235, 255, 265, 275)
	recipe:SetRecipeItem(15726, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15045, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE, F.HEALER, F.CASTER)
	recipe:AddLimitedVendor(11874, 1)
	recipe:AddMobDrop(5259)

	-- Heavy Scorpid Vest -- 19051
	recipe = AddRecipe(19051, Q.UNCOMMON)
	recipe:SetSkillLevels(240, 240, 260, 270, 280)
	recipe:SetRecipeItem(15727, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15076, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddMobDrop(5981)

	-- Wicked Leather Bracers -- 19052
	recipe = AddRecipe(19052, Q.UNCOMMON)
	recipe:SetRecipeItem(15728, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(240, 240, 260, 270, 280)
	recipe:SetCraftedItem(15084, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddMobDrop(6201, 236876)

	-- Chimeric Gloves -- 19053
	recipe = AddRecipe(19053, Q.COMMON)
	recipe:SetSkillLevels(240, 240, 260, 270, 280)
	recipe:SetRecipeItem(15729, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(15074, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddVendor(12957)

	-- Red Dragonscale Breastplate -- 19054
	recipe = AddRecipe(19054, Q.RARE)
	recipe:SetSkillLevels(290, 290, 310, 320, 330)
	recipe:SetRecipeItem(15730, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(15047, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE, F.HEALER, F.CASTER)
	recipe:AddMobDrop(10363)

	-- Runic Leather Gauntlets -- 19055
	recipe = AddRecipe(19055, Q.UNCOMMON)
	recipe:SetRecipeItem(15731, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(245, 245, 265, 275, 285)
	recipe:SetCraftedItem(15091, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Rugged Armor Kit -- 19058
	recipe = AddRecipe(19058, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 225, 235, 245)
	recipe:SetCraftedItem(15564, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(11097, 11098, 7870)

	-- Volcanic Leggings -- 19059
	recipe = AddRecipe(19059, Q.UNCOMMON)
	recipe:SetSkillLevels(245, 245, 265, 275, 285)
	recipe:SetRecipeItem(15732, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15054, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7035)

	-- Green Dragonscale Leggings -- 19060
	recipe = AddRecipe(19060, Q.RARE)
	recipe:SetSkillLevels(245, 245, 265, 275, 285)
	recipe:SetRecipeItem(15733, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15046, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE, F.HEALER, F.CASTER)
	recipe:AddMobDrop(5226)

	-- Living Shoulders -- 19061
	recipe = AddRecipe(19061, Q.COMMON)
	recipe:SetSkillLevels(245, 245, 265, 275, 285)
	recipe:SetRecipeItem(15734, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15061, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddLimitedVendor(7852, 1, 7854, 1)


	-- Ironfeather Shoulders -- 19062
	recipe = AddRecipe(19062, Q.COMMON)
	recipe:SetSkillLevels(245, 245, 265, 275, 285)
	recipe:SetRecipeItem(15735, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15067, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddLimitedVendor(12958, 1)
	recipe:AddMobDrop(2644)

	-- Chimeric Boots -- 19063
	recipe = AddRecipe(19063, Q.UNCOMMON)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(15737, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15073, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ULDAMAN, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Heavy Scorpid Gauntlets -- 19064
	recipe = AddRecipe(19064, Q.UNCOMMON)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(15738, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15078, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddMobDrop(7025)

	-- Runic Leather Bracers -- 19065
	recipe = AddRecipe(19065, Q.UNCOMMON)
	recipe:SetRecipeItem(15739, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetCraftedItem(15092, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddMobDrop(7112)

	-- Frostsaber Boots -- 19066
	recipe = AddRecipe(19066, Q.COMMON)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(15740, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(15071, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddLimitedVendor(11189, 1)

	-- Stormshroud Pants -- 19067
	recipe = AddRecipe(19067, Q.COMMON)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(15741, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15057, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK, F.HEALER, F.CASTER)
	recipe:AddLimitedVendor(12942, 1, 12943, 1)

	-- Warbear Harness -- 19068
	recipe = AddRecipe(19068, Q.COMMON)
	recipe:SetSkillLevels(250, 250, 270, 280, 290)
	recipe:SetRecipeItem(20253, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(15064, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TIMBERMAW_HOLD)
	recipe:AddRepVendor(FAC.TIMBERMAW_HOLD, REP.FRIENDLY, 11557)
	recipe:AddWorldDrop(Z.BLACKROCK_DEPTHS, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.STORM_CLIFFS, Z.STRATHOLME, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Heavy Scorpid Belt -- 19070
	recipe = AddRecipe(19070, Q.UNCOMMON)
	recipe:SetSkillLevels(255, 255, 275, 285, 295)
	recipe:SetRecipeItem(15743, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15082, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_ENCLAVE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Wicked Leather Headband -- 19071
	recipe = AddRecipe(19071, Q.UNCOMMON)
	recipe:SetRecipeItem(15744, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(255, 255, 275, 285, 295)
	recipe:SetCraftedItem(15086, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddMobDrop(7107)

	-- Runic Leather Belt -- 19072
	recipe = AddRecipe(19072, Q.UNCOMMON)
	recipe:SetRecipeItem(15745, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(255, 255, 275, 285, 295)
	recipe:SetCraftedItem(15093, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_ENCLAVE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Chimeric Leggings -- 19073
	recipe = AddRecipe(19073, Q.UNCOMMON)
	recipe:SetSkillLevels(255, 255, 275, 285, 295)
	recipe:SetRecipeItem(15746, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15072, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_ENCLAVE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Frostsaber Leggings -- 19074
	recipe = AddRecipe(19074, Q.UNCOMMON)
	recipe:SetSkillLevels(260, 260, 280, 290, 300)
	recipe:SetRecipeItem(15747, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15069, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7440)

	-- Heavy Scorpid Leggings -- 19075
	recipe = AddRecipe(19075, Q.UNCOMMON)
	recipe:SetSkillLevels(260, 260, 280, 290, 300)
	recipe:SetRecipeItem(15748, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15079, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddMobDrop(7027)

	-- Volcanic Breastplate -- 19076
	recipe = AddRecipe(19076, Q.UNCOMMON)
	recipe:SetSkillLevels(260, 260, 280, 290, 300)
	recipe:SetRecipeItem(15749, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15053, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
	recipe:AddMobDrop(9259)

	-- Blue Dragonscale Breastplate -- 19077
	recipe = AddRecipe(19077, Q.RARE)
	recipe:SetSkillLevels(260, 260, 280, 290, 300)
	recipe:SetRecipeItem(15751, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15048, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddLimitedVendor(12957, 1)
	recipe:AddMobDrop(6148)

	-- Living Leggings -- 19078
	recipe = AddRecipe(19078, Q.RARE)
	recipe:SetSkillLevels(260, 260, 280, 290, 300)
	recipe:SetRecipeItem(15752, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15060, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddMobDrop(7158)

	-- Stormshroud Armor -- 19079
	recipe = AddRecipe(19079, Q.RARE)
	recipe:SetSkillLevels(260, 260, 280, 290, 300)
	recipe:SetRecipeItem(15753, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15056, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK, F.HEALER, F.CASTER)
	recipe:AddMobDrop(6138)

	-- Warbear Woolies -- 19080
	recipe = AddRecipe(19080, Q.COMMON)
	recipe:SetSkillLevels(260, 260, 280, 290, 300)
	recipe:SetRecipeItem(20254, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(15065, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TIMBERMAW_HOLD)
	recipe:AddRepVendor(FAC.TIMBERMAW_HOLD, REP.FRIENDLY, 11557)

	-- Chimeric Vest -- 19081
	recipe = AddRecipe(19081, Q.UNCOMMON)
	recipe:SetSkillLevels(265, 265, 285, 295, 305)
	recipe:SetRecipeItem(15755, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15075, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_ENCLAVE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Runic Leather Headband -- 19082
	recipe = AddRecipe(19082, Q.COMMON)
	recipe:SetRecipeItem(15756, "BIND_ON_PICKUP")
	recipe:SetSkillLevels(265, 265, 285, 295, 305)
	recipe:SetCraftedItem(15094, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddLimitedVendor(12941, 1)

	-- Wicked Leather Pants -- 19083
	recipe = AddRecipe(19083, Q.UNCOMMON)
	recipe:SetRecipeItem(15757, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(265, 265, 285, 295, 305)
	recipe:SetCraftedItem(15087, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MARAUDON, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_ENCLAVE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ZULFARRAK, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Devilsaur Gauntlets -- 19084
	recipe = AddRecipe(19084, Q.COMMON)
	recipe:SetSkillLevels(265, 265, 285, 295, 305)
	recipe:SetRecipeItem(15758, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15063, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER)
	recipe:AddLimitedVendor(12959, 1)
	recipe:AddMobDrop(6498)

	-- Black Dragonscale Breastplate -- 19085
	recipe = AddRecipe(19085, Q.RARE)
	recipe:SetSkillLevels(265, 265, 285, 295, 305)
	recipe:SetRecipeItem(15759, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15050, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE, F.DPS, F.HEALER, F.CASTER)
	recipe:AddLimitedVendor(9499, 1)

	-- Ironfeather Breastplate -- 19086
	recipe = AddRecipe(19086, Q.RARE)
	recipe:SetSkillLevels(265, 265, 285, 295, 305)
	recipe:SetRecipeItem(15760, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15066, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddMobDrop(2644)

	-- Frostsaber Gloves -- 19087
	recipe = AddRecipe(19087, Q.UNCOMMON)
	recipe:SetSkillLevels(270, 270, 290, 300, 310)
	recipe:SetRecipeItem(15761, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15070, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7441)

	-- Heavy Scorpid Helm -- 19088
	recipe = AddRecipe(19088, Q.COMMON)
	recipe:SetSkillLevels(270, 270, 290, 300, 310)
	recipe:SetRecipeItem(15762, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(15080, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddVendor(12956)

	-- Blue Dragonscale Shoulders -- 19089
	recipe = AddRecipe(19089, Q.RARE)
	recipe:SetSkillLevels(270, 270, 290, 300, 310)
	recipe:SetRecipeItem(15763, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15049, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddMobDrop(6146)

	-- Stormshroud Shoulders -- 19090
	recipe = AddRecipe(19090, Q.RARE)
	recipe:SetSkillLevels(270, 270, 290, 300, 310)
	recipe:SetRecipeItem(15764, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15058, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK, F.HEALER, F.CASTER)
	recipe:AddMobDrop(6144)

	-- Runic Leather Pants -- 19091
	recipe = AddRecipe(19091, Q.UNCOMMON)
	recipe:SetRecipeItem(15765, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(275, 275, 295, 305, 315)
	recipe:SetCraftedItem(15095, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.AHNQIRAJ, Z.BLACKROCK_DEPTHS, Z.BLACKROCK_SPIRE, Z.BLACKWING_LAIR, Z.DEMON_FALL_CANYON, Z.DIRE_MAUL, Z.KARAZHAN_CRYPTS, Z.MOLTEN_CORE, Z.NAXXRAMAS, Z.RUINS_OF_AHNQIRAJ, Z.SCARLET_ENCLAVE, Z.SCHOLOMANCE, Z.STORM_CLIFFS, Z.STRATHOLME, Z.THE_TAINTED_SCAR, Z.THE_TEMPLE_OF_ATALHAKKAR, Z.ZULGURUB, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Wicked Leather Belt -- 19092
	recipe = AddRecipe(19092, Q.UNCOMMON)
	recipe:SetRecipeItem(15768, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(275, 275, 295, 305, 315)
	recipe:SetCraftedItem(15088, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddMobDrop(10406)

	-- Onyxia Scale Cloak -- 19093
	recipe = AddRecipe(19093, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(15769, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(15138, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.RAID, F.MISC1)
	--recipe:AddQuest(7493, 7497)
	recipe:AddCustom("ONYXIA_HEAD_QUEST")

	-- Black Dragonscale Shoulders -- 19094
	recipe = AddRecipe(19094, Q.RARE)
	recipe:SetSkillLevels(270, 270, 310, 320, 330)
	recipe:SetRecipeItem(15770, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15051, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE, F.DPS, F.HEALER, F.CASTER)
	recipe:AddMobDrop(8898)

	-- Living Breastplate -- 19095
	recipe = AddRecipe(19095, Q.RARE)
	recipe:SetSkillLevels(290, 290, 310, 320, 330)
	recipe:SetRecipeItem(15771, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15059, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddMobDrop(1813)

	-- Devilsaur Leggings -- 19097
	recipe = AddRecipe(19097, Q.RARE)
	recipe:SetSkillLevels(290, 290, 310, 320, 330)
	recipe:SetRecipeItem(15772, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15062, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.UNGORO_CRATER)

	-- Wicked Leather Armor -- 19098
	recipe = AddRecipe(19098, Q.UNCOMMON)
	recipe:SetRecipeItem(15773, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(280, 280, 300, 310, 320)
	recipe:SetCraftedItem(15085, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddMobDrop(10499)

	-- Heavy Scorpid Shoulders -- 19100
	recipe = AddRecipe(19100, Q.UNCOMMON)
	recipe:SetSkillLevels(280, 280, 300, 310, 320)
	recipe:SetRecipeItem(15774, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15081, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE, F.DPS)
	recipe:AddMobDrop(7029)

	-- Volcanic Shoulders -- 19101
	recipe = AddRecipe(19101, Q.UNCOMMON)
	recipe:SetSkillLevels(280, 280, 300, 310, 320)
	recipe:SetRecipeItem(15775, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15055, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE)
	recipe:AddMobDrop(9260)

	-- Runic Leather Armor -- 19102
	recipe = AddRecipe(19102, Q.UNCOMMON)
	recipe:SetRecipeItem(15776, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(285, 285, 305, 315, 325)
	recipe:SetCraftedItem(15090, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddMobDrop(11582)

	-- Runic Leather Shoulders -- 19103
	recipe = AddRecipe(19103, Q.UNCOMMON)
	recipe:SetRecipeItem(15777, "BIND_ON_EQUIP")
	recipe:SetSkillLevels(285, 285, 305, 315, 325)
	recipe:SetCraftedItem(15096, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(10425)

	-- Frostsaber Tunic -- 19104
	recipe = AddRecipe(19104, Q.UNCOMMON)
	recipe:SetSkillLevels(290, 290, 310, 320, 330)
	recipe:SetRecipeItem(15779, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15068, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddMobDrop(7438)

	-- Black Dragonscale Leggings -- 19107
	recipe = AddRecipe(19107, Q.RARE)
	recipe:SetSkillLevels(290, 290, 310, 320, 330)
	recipe:SetRecipeItem(15781, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(15052, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.INSTANCE, F.DPS, F.HEALER, F.CASTER)
	recipe:AddMobDrop(8903)

	-- Medium Leather -- 20648
	recipe = AddRecipe(20648, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 75, 80, 85)
	recipe:SetCraftedItem(2319, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Heavy Leather -- 20649
	recipe = AddRecipe(20649, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 125, 130, 135)
	recipe:SetCraftedItem(4234, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(1385, 3007, 3365, 3703, 3967, 4212, 4588, 5127, 5564, 8153, 11081, 11084, 11097, 11098, 252376, 255721)

	-- Thick Leather -- 20650
	recipe = AddRecipe(20650, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 175, 177, 180)
	recipe:SetCraftedItem(4304, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(3007, 4212, 11097, 11098, 255721)

	-- Corehound Boots -- 20853
	recipe = AddRecipe(20853, Q.COMMON)
	recipe:SetSkillLevels(295, 295, 315, 325, 335)
	recipe:SetRecipeItem(17022, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(16982, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.FRIENDLY, 12944)

	-- Molten Helm -- 20854
	recipe = AddRecipe(20854, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(17023, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(16983, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.FRIENDLY, 12944)

	-- Black Dragonscale Boots -- 20855
	recipe = AddRecipe(20855, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(17025, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(16984, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER, F.THORIUM_BROTHERHOOD)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.HONORED, 12944)

	-- Gloves of the Greatfather -- 21943
	recipe = AddRecipe(21943, Q.UNCOMMON)
	recipe:SetSkillLevels(165, 165, 185, 195, 205)
	recipe:SetRecipeItem(17722, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(17721, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldEvent("WINTER_VEIL")

	-- Rugged Leather -- 22331
	recipe = AddRecipe(22331, Q.COMMON)
	recipe:SetSkillLevels(225, 225, 225, 225, 225)
	recipe:SetCraftedItem(8170, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_MATERIALS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddTrainer(11097, 11098)

	-- Shadowskin Gloves -- 22711
	recipe = AddRecipe(22711, Q.COMMON)
	recipe:SetSkillLevels(175, 175, 185, 195, 205)
	recipe:SetRecipeItem(18239, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(18238, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER)
	recipe:AddLimitedVendor(2699, 1)
	recipe:AddMobDrop(2318)

	-- Core Armor Kit -- 22727
	recipe = AddRecipe(22727, Q.RARE)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(18252, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(18251, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_ITEM_ENHANCEMENT")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.RAID, F.TANK)
	recipe:AddWorldDrop(Z.MOLTEN_CORE, Z.EASTERN_KINGDOMS, Z.KALIMDOR)

	-- Gordok Ogre Suit -- 22815
	-- Acquisition source not yet verified for Forever.
	recipe = AddRecipe(22815, Q.COMMON)
	recipe:SetSkillLevels(285, 285, 285, 290, 295)
	recipe:SetCraftedItem(18258, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CREATED_ITEM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)

	-- Girdle of Insight -- 22921
	recipe = AddRecipe(22921, Q.RARE)
	recipe:SetSkillLevels(290, 290, 310, 320, 330)
	recipe:SetRecipeItem(18514, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(18504, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.DIRE_MAUL)

	-- Mongoose Boots -- 22922
	recipe = AddRecipe(22922, Q.RARE)
	recipe:SetSkillLevels(290, 290, 310, 320, 330)
	recipe:SetRecipeItem(18515, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(18506, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddWorldDrop(Z.DIRE_MAUL)

	-- Swift Flight Bracers -- 22923
	recipe = AddRecipe(22923, Q.RARE)
	recipe:SetSkillLevels(290, 290, 310, 320, 330)
	recipe:SetRecipeItem(18516, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(18508, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddWorldDrop(Z.DIRE_MAUL)

	-- Chromatic Cloak -- 22926
	recipe = AddRecipe(22926, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(18517, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(18509, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.DIRE_MAUL)

	-- Hide of the Wild -- 22927
	recipe = AddRecipe(22927, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(18518, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(18510, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddWorldDrop(Z.DIRE_MAUL)

	-- Shifting Cloak -- 22928
	recipe = AddRecipe(22928, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(18519, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(18511, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_BACK")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TANK)
	recipe:AddWorldDrop(Z.DIRE_MAUL)

	-- Heavy Leather Ball -- 23190
	recipe = AddRecipe(23190, Q.COMMON)
	recipe:SetSkillLevels(125, 125, 125, 130, 135)
	recipe:SetRecipeItem(18731, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(18662, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CREATED_ITEM")
	recipe:AddFilters(F.ALLIANCE, F.HORDE)
	recipe:AddLimitedVendor(3366, 1, 5128, 1)

	-- Barbaric Bracers -- 23399
	recipe = AddRecipe(23399, Q.COMMON)
	recipe:SetSkillLevels(130, 130, 155, 165, 175)
	recipe:SetRecipeItem(18949, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(18948, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)
	recipe:AddLimitedVendor(4225, 1, 4589, 1)
	recipe:AddMobDrop(3919)

	-- Might of the Timbermaw -- 23703
	recipe = AddRecipe(23703, Q.COMMON)
	recipe:SetSkillLevels(265, 265, 285, 295, 305)
	recipe:SetRecipeItem(19326, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19044, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TIMBERMAW_HOLD)
	recipe:AddRepVendor(FAC.TIMBERMAW_HOLD, REP.HONORED, 11557)

	-- Timbermaw Brawlers -- 23704
	recipe = AddRecipe(23704, Q.COMMON)
	recipe:SetSkillLevels(295, 295, 315, 325, 335)
	recipe:SetRecipeItem(19327, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19049, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.TIMBERMAW_HOLD)
	recipe:AddRepVendor(FAC.TIMBERMAW_HOLD, REP.REVERED, 11557)

	-- Dawn Treaders -- 23705
	recipe = AddRecipe(23705, Q.COMMON)
	recipe:SetSkillLevels(265, 265, 285, 295, 305)
	recipe:SetRecipeItem(19328, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19052, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.CASTER, F.ARGENTDAWN)
	recipe:AddRepVendor(FAC.ARGENT_DAWN, REP.HONORED, 10856, 10857, 11536)

	-- Golden Mantle of the Dawn -- 23706
	recipe = AddRecipe(23706, Q.COMMON)
	recipe:SetSkillLevels(295, 295, 315, 325, 335)
	recipe:SetRecipeItem(19329, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19058, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.TANK, F.ARGENTDAWN)
	recipe:AddRepVendor(FAC.ARGENT_DAWN, REP.REVERED, 10856, 10857, 11536)

	-- Lava Belt -- 23707
	recipe = AddRecipe(23707, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19330, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19149, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.THORIUM_BROTHERHOOD)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.HONORED, 12944)

	-- Chromatic Gauntlets -- 23708
	recipe = AddRecipe(23708, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19331, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19157, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER, F.THORIUM_BROTHERHOOD)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.REVERED, 12944)

	-- Corehound Belt -- 23709
	recipe = AddRecipe(23709, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19332, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19162, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER, F.THORIUM_BROTHERHOOD)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.REVERED, 12944)

	-- Molten Belt -- 23710
	recipe = AddRecipe(23710, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19333, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19163, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.THORIUM_BROTHERHOOD)
	recipe:AddRepVendor(FAC.THORIUM_BROTHERHOOD, REP.REVERED, 12944)

	-- Primal Batskin Jerkin -- 24121
	recipe = AddRecipe(24121, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19769, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19685, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.CASTER)
	recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.REVERED, 14921)

	-- Primal Batskin Gloves -- 24122
	recipe = AddRecipe(24122, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19770, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19686, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.CASTER)
	recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.HONORED, 14921)

	-- Primal Batskin Bracers -- 24123
	recipe = AddRecipe(24123, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19771, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19687, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.CASTER)
	recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.FRIENDLY, 14921)

	-- Blood Tiger Breastplate -- 24124
	recipe = AddRecipe(24124, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19772, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19688, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER)
	recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.REVERED, 14921)

	-- Blood Tiger Shoulders -- 24125
	recipe = AddRecipe(24125, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(19773, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(19689, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER)
	recipe:AddRepVendor(FAC.ZANDALAR_TRIBE, REP.HONORED, 14921)

	-- Blue Dragonscale Leggings -- 24654
	recipe = AddRecipe(24654, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 310, 320, 330)
	recipe:SetCraftedItem(20295, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddTrainer(7866, 7867)

	-- Green Dragonscale Gauntlets -- 24655
	recipe = AddRecipe(24655, Q.COMMON)
	recipe:SetSkillLevels(280, 280, 280, 285, 295)
	recipe:SetCraftedItem(20296, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HEALER, F.CASTER)
	recipe:AddTrainer(7866, 7867)

	-- Dreamscale Breastplate -- 24703
	recipe = AddRecipe(24703, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(20382, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(20380, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER, F.CENARION_CIRCLE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.EXALTED, 15293)

	-- Spitfire Bracers -- 24846
	recipe = AddRecipe(24846, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(20506, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(20481, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER, F.CENARION_CIRCLE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.FRIENDLY, 15293)

	-- Spitfire Gauntlets -- 24847
	recipe = AddRecipe(24847, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(20507, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(20480, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER, F.CENARION_CIRCLE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15293)

	-- Spitfire Breastplate -- 24848
	recipe = AddRecipe(24848, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(20508, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(20479, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER, F.CENARION_CIRCLE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.REVERED, 15293)

	-- Sandstalker Bracers -- 24849
	recipe = AddRecipe(24849, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(20509, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(20476, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CENARION_CIRCLE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.FRIENDLY, 15293)

	-- Sandstalker Gauntlets -- 24850
	recipe = AddRecipe(24850, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(20510, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(20477, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CENARION_CIRCLE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15293)

	-- Sandstalker Breastplate -- 24851
	recipe = AddRecipe(24851, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(20511, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(20478, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CENARION_CIRCLE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.REVERED, 15293)

	-- Black Whelp Tunic -- 24940
	recipe = AddRecipe(24940, Q.COMMON)
	recipe:SetSkillLevels(75, 75, 100, 112, 125)
	recipe:SetRecipeItem(20576, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(20575, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.DPS, F.CASTER)
	recipe:AddLimitedVendor(777, 1)
	recipe:AddMobDrop(441)

	-- Stormshroud Gloves -- 26279
	recipe = AddRecipe(26279, Q.RARE)
	recipe:SetSkillLevels(290, 290, 310, 320, 330)
	recipe:SetRecipeItem(21548, "BIND_ON_EQUIP")
	recipe:SetCraftedItem(21278, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS, F.HEALER, F.CASTER)
	recipe:AddMobDrop(14454, 14457)

	-- Polar Tunic -- 28219
	-- Acquisition source not yet verified for Forever.
	recipe = AddRecipe(28219, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetCraftedItem(22661, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)

	-- Polar Gloves -- 28220
	-- Acquisition source not yet verified for Forever.
	recipe = AddRecipe(28220, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetCraftedItem(22662, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)

	-- Polar Bracers -- 28221
	-- Acquisition source not yet verified for Forever.
	recipe = AddRecipe(28221, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetCraftedItem(22663, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)

	-- Icy Scale Breastplate -- 28222
	-- Acquisition source not yet verified for Forever.
	recipe = AddRecipe(28222, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetCraftedItem(22664, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_CHEST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)

	-- Icy Scale Gauntlets -- 28223
	-- Acquisition source not yet verified for Forever.
	recipe = AddRecipe(28223, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetCraftedItem(22666, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)

	-- Icy Scale Bracers -- 28224
	-- Acquisition source not yet verified for Forever.
	recipe = AddRecipe(28224, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetCraftedItem(22665, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WRIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DPS)

	-- Bramblewood Helm -- 28472
	recipe = AddRecipe(28472, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(22771, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(22759, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HEAD")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CENARION_CIRCLE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.REVERED, 15293)

	-- Bramblewood Boots -- 28473
	recipe = AddRecipe(28473, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(22770, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(22760, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CENARION_CIRCLE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.HONORED, 15293)

	-- Bramblewood Belt -- 28474
	recipe = AddRecipe(28474, Q.COMMON)
	recipe:SetSkillLevels(300, 300, 320, 330, 340)
	recipe:SetRecipeItem(22769, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(22761, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_WAIST")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.CENARION_CIRCLE)
	recipe:AddRepVendor(FAC.CENARION_CIRCLE, REP.FRIENDLY, 15293)

	-- Grovekeeper Trousers -- 1292920
	recipe = AddRecipe(1292920, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273952, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273884, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:AddCustom("HYJAL_FRIENDLY_ADVICE")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grovekeeper Grips -- 1292921
	recipe = AddRecipe(1292921, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273953, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273885, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_GLOVES_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grovekeeper Shoulderpads -- 1292923
	recipe = AddRecipe(1292923, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273954, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273886, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_SHOULDERS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grovekeeper Stompers -- 1292924
	recipe = AddRecipe(1292924, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273955, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273887, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_BOOTS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grovekeeper Kilt -- 1292925
	recipe = AddRecipe(1292925, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273956, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273888, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:AddCustom("HYJAL_FRIENDLY_ADVICE")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grovekeeper Mitts -- 1292926
	recipe = AddRecipe(1292926, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273957, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273889, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_GLOVES_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grovekeeper Mantle -- 1292927
	recipe = AddRecipe(1292927, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273958, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273890, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_SHOULDERS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grovekeeper Sandals -- 1292928
	recipe = AddRecipe(1292928, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273959, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273891, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_BOOTS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grovekeeper Legguards -- 1292929
	recipe = AddRecipe(1292929, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273960, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273892, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:AddCustom("HYJAL_FRIENDLY_ADVICE")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grovekeeper Handguards -- 1292930
	recipe = AddRecipe(1292930, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273961, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273893, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_GLOVES_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grovekeeper Pauldrons -- 1292931
	recipe = AddRecipe(1292931, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273962, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273894, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_SHOULDERS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grovekeeper Boots -- 1292932
	recipe = AddRecipe(1292932, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273963, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273895, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_BOOTS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grovekeeper Leggings -- 1292933
	recipe = AddRecipe(1292933, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273964, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273896, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:AddCustom("HYJAL_FRIENDLY_ADVICE")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grovekeeper Gauntlets -- 1292934
	recipe = AddRecipe(1292934, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273965, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273897, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_GLOVES_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grovekeeper Spaulders -- 1292935
	recipe = AddRecipe(1292935, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273966, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273898, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_SHOULDERS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grovekeeper Treads -- 1292936
	recipe = AddRecipe(1292936, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273967, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273899, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.DRUID)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_BOOTS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Wildstalker's Legguards -- 1292937
	recipe = AddRecipe(1292937, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273968, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273900, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HUNTER)
	recipe:AddCustom("HYJAL_FRIENDLY_ADVICE")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Wildstalker's Gauntlets -- 1292938
	recipe = AddRecipe(1292938, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273969, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273901, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HUNTER)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_GLOVES_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Wildstalker's Spaulders -- 1292939
	recipe = AddRecipe(1292939, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273970, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273902, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HUNTER)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_SHOULDERS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Wildstalker's Greaves -- 1292940
	recipe = AddRecipe(1292940, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273971, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273903, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.HUNTER)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_BOOTS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grimstitch Pants -- 1292965
	recipe = AddRecipe(1292965, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273996, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273928, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.ROGUE)
	recipe:AddCustom("HYJAL_FRIENDLY_ADVICE")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grimstitch Gloves -- 1292966
	recipe = AddRecipe(1292966, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273997, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273929, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.ROGUE)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_GLOVES_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grimstitch Spaulders -- 1292967
	recipe = AddRecipe(1292967, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273998, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273930, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.ROGUE)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_SHOULDERS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Grimstitch Boots -- 1292968
	recipe = AddRecipe(1292968, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(273999, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273931, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.ROGUE)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_BOOTS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Spiritcaller Leggings -- 1292969
	recipe = AddRecipe(1292969, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274000, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273932, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.SHAMAN)
	recipe:AddCustom("HYJAL_FRIENDLY_ADVICE")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Spiritcaller Grips -- 1292970
	recipe = AddRecipe(1292970, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274001, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273933, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.SHAMAN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_GLOVES_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Spiritcaller Spaulders -- 1292971
	recipe = AddRecipe(1292971, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274002, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273934, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.SHAMAN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_SHOULDERS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Spiritcaller Treads -- 1292972
	recipe = AddRecipe(1292972, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274003, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273935, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.SHAMAN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_BOOTS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Spiritcaller Pants -- 1292973
	recipe = AddRecipe(1292973, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274004, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273936, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.SHAMAN)
	recipe:AddCustom("HYJAL_FRIENDLY_ADVICE")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Spiritcaller Gauntlets -- 1292974
	recipe = AddRecipe(1292974, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274005, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273937, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.SHAMAN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_GLOVES_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Spiritcaller Epaulets -- 1292975
	recipe = AddRecipe(1292975, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274006, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273938, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.SHAMAN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_SHOULDERS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Spiritcaller Greaves -- 1292976
	recipe = AddRecipe(1292976, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(274007, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(273939, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.SHAMAN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_BOOTS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Spiritcaller Kilt -- 1299914
	recipe = AddRecipe(1299914, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(276542, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(276538, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_LEGS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.SHAMAN)
	recipe:AddCustom("HYJAL_FRIENDLY_ADVICE")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Spiritcaller Gloves -- 1299915
	recipe = AddRecipe(1299915, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(276543, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(276539, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_HANDS")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.SHAMAN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_GLOVES_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Spiritcaller Mantle -- 1299916
	recipe = AddRecipe(1299916, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(276544, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(276540, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_SHOULDER")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.SHAMAN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_SHOULDERS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	-- Spiritcaller Boots -- 1299917
	recipe = AddRecipe(1299917, Q.EPIC)
	recipe:SetSkillLevels(300, 300, 320, 325, 330)
	recipe:SetRecipeItem(276545, "BIND_ON_PICKUP")
	recipe:SetCraftedItem(276541, "BIND_ON_EQUIP")
	recipe:SetItemFilterType("LEATHERWORKING_FEET")
	recipe:AddFilters(F.ALLIANCE, F.HORDE, F.SHAMAN)
	recipe:SetRepVendorStandingUnknown(FAC.GUARDIANS_OF_HYJAL)
	recipe:AddCustom("HYJAL_BOOTS_SPECIALIZATION")
	recipe:AddRepVendor(FAC.GUARDIANS_OF_HYJAL, REP.FRIENDLY, 264797)

	self.InitializeRecipes = nil
end
