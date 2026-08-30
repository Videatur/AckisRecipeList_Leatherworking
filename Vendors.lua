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
local V = constants.GAME_VERSIONS

-----------------------------------------------------------------------
-- What we _really_ came here to see...
-----------------------------------------------------------------------
function module:InitializeVendors()
	local function AddVendor(vendorID, vendorName, zoneName, coordX, coordY, faction, expansionID)
		addon.AcquireTypes.Vendor:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			expansionID = expansionID,
			faction = faction,
			identifier = vendorID,
			item_list = {},
			locationName = zoneName,
			name = vendorName,
		})
	end

	-----------------------------------------------------------------------
	-- Vanilla
	-----------------------------------------------------------------------
	AddVendor(2697,		L["Clyde Ranthal"],			Z.REDRIDGE_MOUNTAINS,			89.0, 	70.2,	"Alliance",	V.ORIG)
	AddVendor(2698,		L["George Candarte"],		Z.HILLSBRAD_FOOTHILLS,			92.0, 	38.6,	"Horde",	V.ORIG)
	AddVendor(2699,		L["Rikqiz"],				Z.STRANGLETHORN_VALE,			28.4, 	76.0,	"Neutral",	V.ORIG)
	AddVendor(2816,		L["Androd Fadran"],			Z.ARATHI_HIGHLANDS,				45.0, 	46.8,	"Alliance",	V.ORIG)
	AddVendor(2819,		L["Tunkk"],					Z.ARATHI_HIGHLANDS,				74.8, 	34.6,	"Horde",	V.ORIG)
	AddVendor(2846,		L["Blixrez Goodstitch"],	Z.STRANGLETHORN_VALE,			28.2, 	77.6,	"Neutral",	V.ORIG)
	AddVendor(3008,		L["Mak"],					Z.THUNDER_BLUFF,				42.0,	43.5,	"Horde",	V.ORIG)
	AddVendor(3366,		L["Tamar"],					Z.ORGRIMMAR,					63.0, 	45.2,	"Horde",	V.ORIG)
	AddVendor(3958,		L["Lardan"],				Z.ASHENVALE,					34.8,	49.8,	"Alliance",	V.ORIG)
	AddVendor(4225,		L["Saenorion"],				Z.DARNASSUS,					63.8, 	22.0,	"Alliance",	V.ORIG)
	AddVendor(4589,		L["Joseph Moore"],			Z.UNDERCITY,					70.0,	58.5,	"Horde",	V.ORIG)
	AddVendor(5128,		L["Bombus Finespindle"],	Z.IRONFORGE,					39.6,	34.5,	"Alliance",	V.ORIG)
	AddVendor(5565,		L["Jillian Tanner"],		Z.STORMWIND_CITY,				67.2, 	49.6,	"Alliance",	V.ORIG)
	AddVendor(7854,		L["Jangdor Swiftstrider"],	Z.FERALAS,						74.4, 	42.8,	"Horde",	V.ORIG)
	AddVendor(8160,		L["Nioma"],					Z.THE_HINTERLANDS,				13.4,	43.4,	"Alliance",	V.ORIG)
	AddVendor(12942,	L["Leonard Porter"],		Z.WESTERN_PLAGUELANDS,			43.0,	84.2,	"Alliance",	V.ORIG)
	AddVendor(12943,	L["Werg Thickblade"],		Z.TIRISFAL_GLADES,				83.2,	69.6,	"Horde",	V.ORIG)
	AddVendor(12956,	L["Zannok Hidepiercer"],	Z.SILITHUS,						81.8,	17.8,	"Neutral",	V.ORIG)
	AddVendor(12958,	L["Gigget Zipcoil"],		Z.THE_HINTERLANDS,				34.6,	38.6,	"Neutral",	V.ORIG)
	AddVendor(12959,	L["Nergal"],				Z.UNGORO_CRATER,				43.2, 	7.8,	"Neutral",	V.ORIG)
	AddVendor(15293,	L["Aendel Windspear"],		Z.SILITHUS,						62.6, 	49.8,	"Neutral",	V.ORIG)

	-----------------------------------------------------------------------
	-- TBC
	-----------------------------------------------------------------------
	AddVendor(16689,	L["Zaralda"],				Z.SILVERMOON_CITY,				84.8,	78.6,	"Horde",	V.TBC)
	AddVendor(16748,	L["Haferet"],				Z.THE_EXODAR,					66.6,	73.7,	"Alliance",	V.TBC)
	AddVendor(18672,	L["Thomas Yance"],			Z.OLD_HILLSBRAD_FOOTHILLS,		0,		0,		"Neutral",	V.TBC)

	-----------------------------------------------------------------------
	-- Wrath of The Lich King
	-----------------------------------------------------------------------
	AddVendor(32515,	L["Braeg Stoutbeard"],		Z.DALARAN_NORTHREND,			37.6,	29.5,	"Neutral",	V.WOTLK)

	-----------------------------------------------------------------------
	-- Cataclysm
	-----------------------------------------------------------------------
	AddVendor(2697,		L["Clyde Ranthal"],			Z.REDRIDGE_MOUNTAINS,			78.6,	63.6,	"Alliance",	V.CATA)
	AddVendor(2698,		L["George Candarte"],		Z.HILLSBRAD_FOOTHILLS,			76.6,	58.6,	"Horde",	V.CATA)
	AddVendor(2699,		L["Rikqiz"],				Z.THE_CAPE_OF_STRANGLETHORN,	43.2, 	71.6,	"Neutral",	V.CATA)
	AddVendor(2816,		L["Androd Fadran"],			Z.ARATHI_HIGHLANDS,				39.2,	48.2,	"Alliance",	V.CATA)
	AddVendor(2819,		L["Tunkk"],					Z.ARATHI_HIGHLANDS,				70.0,	35.6,	"Horde",	V.CATA)
	AddVendor(2846,		L["Blixrez Goodstitch"],	Z.THE_CAPE_OF_STRANGLETHORN,	42.8,	74.1,	"Neutral",	V.CATA)
	AddVendor(3366,		L["Tamar"],					Z.ORGRIMMAR,					60.6, 	54.6,	"Horde",	V.CATA)
	AddVendor(4225,		L["Saenorion"],				Z.DARNASSUS,					60.0,	37.2,	"Alliance",	V.CATA)
	AddVendor(5565,		L["Jillian Tanner"],		Z.STORMWIND_CITY,				71.6,	62.8,	"Alliance",	V.CATA)
	AddVendor(7854,		L["Jangdor Swiftstrider"],	Z.FERALAS,						52.8,	47.0,	"Horde",	V.CATA)
	AddVendor(12959,	L["Nergal"],				Z.UNGORO_CRATER,				54.8,	62.5,	"Neutral",	V.CATA)
	AddVendor(15293,	L["Aendel Windspear"],		Z.SILITHUS,						64.6,	45.8,	"Neutral",	V.CATA)
	AddVendor(34601,	L["Harlown Darkweave"],		Z.ASHENVALE,					18.2,	60.0,	"Alliance",	V.CATA)
	AddVendor(40226,	L["Pratt McGrubben"],		Z.FERALAS,						45.4,	41.2,	"Alliance",	V.CATA)
	AddVendor(50172,	L["Threm Blackscalp"],		Z.TWILIGHT_HIGHLANDS,			75.2,	50.1,	"Horde",	V.CATA)
	AddVendor(50381,	L["Misty Merriweather"],	Z.TWILIGHT_HIGHLANDS,			78.8,	76.2,	"Alliance",	V.CATA)

	-----------------------------------------------------------------------
	-- Mists of Pandaria
	-----------------------------------------------------------------------
	AddVendor(64054,	L["Krogo Darkhide"],		Z.VALE_OF_ETERNAL_BLOSSOMS,		32.0, 	48.0,	"Horde",	V.MOP)
	AddVendor(64094,	L["Tanner Pang"],			Z.VALE_OF_ETERNAL_BLOSSOMS,		75.8, 	47.6,	"Alliance",	V.MOP)

	-----------------------------------------------------------------------
	-- Warlords of Draenor
	-----------------------------------------------------------------------
	AddVendor(77383,	L["Anders Longstitch"],		Z.LUNARFALL,			 		0.0,	 0.0,	"Alliance",	V.WOD) -- Alliance Garrison
	AddVendor(79834,	L["Murne Greenhoof"],		Z.FROSTWALL,			 		0.0,	 0.0,	"Horde",	V.WOD) -- Horde Garrison
	AddVendor(87057,	L["Leara Moonsilk"],		Z.STORMSHIELD,					52.4,	42.2,	"Alliance",	V.WOD) -- Alliance Ashran
	AddVendor(87549,	L["Garm Gladestride"],		Z.WARSPEAR,						50.6,	27.8,	"Horde",	V.WOD) -- Horde Ashran
	AddVendor(91024,	L["Jake the Fox"],			Z.LUNARFALL,					34.6,	33.0,	"Alliance",	V.WOD) -- Alliance Garrison
	AddVendor(91033,	L["Zeezu"],					Z.FROSTWALL,					40.8,	54.8,	"Horde",	V.WOD) -- Horde Garrison

	-----------------------------------------------------------------------
	-- Legion
	-----------------------------------------------------------------------
	AddVendor(93521,	L["Ranid Glowergold"],		Z.DALARAN_BROKENISLES,			34.4,	28.4,	"Neutral",	V.LEGION)
	AddVendor(97364,	L["Laura Malley"],			Z.DALARAN_BROKENISLES,			58.4,	57.5,	"Neutral",	V.LEGION)
	AddVendor(98969,	L["Stalriss Dawnrunner"],	Z.SURAMAR,						26.6,	71.6,	"Neutral",	V.LEGION)

	self.InitializeVendors = nil
end
