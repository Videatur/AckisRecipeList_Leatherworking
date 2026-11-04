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
function module:InitializeVendors()
	local function AddVendor(vendorID, vendorName, zoneName, coordX, coordY, faction)
		addon.AcquireTypes.Vendor:AddEntity(module, {
			coord_x = coordX,
			coord_y = coordY,
			faction = faction,
			identifier = vendorID,
			item_list = {},
			locationName = zoneName,
			name = vendorName,
		})
	end


	AddVendor(777, 		L["Amy Davenport"], 		Z.REDRIDGE_MOUNTAINS, 			24.1, 	47.3, 	"Alliance")
	AddVendor(843, 		L["Gina MacGregor"], 		Z.WESTFALL, 					57.6, 	54.0, 	"Alliance")
	AddVendor(2381,		L["Micha Yance"], 			Z.HILLSBRAD_FOOTHILLS, 			49.0, 	55.0, 	"Alliance")
	AddVendor(2393, 	L["Christoph Jeffcoat"], 	Z.HILLSBRAD_FOOTHILLS, 			62.2, 	19.0, 	"Horde")
	AddVendor(2679, 	L["Wenna Silkbeard"], 		Z.WETLANDS, 					25.6, 	25.8, 	"Alliance")
	AddVendor(2697,		L["Clyde Ranthal"],			Z.REDRIDGE_MOUNTAINS,			83.8, 	70.8,	"Alliance")
	AddVendor(2698,		L["George Candarte"],		Z.HILLSBRAD_FOOTHILLS,			92.0, 	38.6,	"Horde")
	AddVendor(2699,		L["Rikqiz"],				Z.STRANGLETHORN_VALE,			28.4, 	76.0,	"Neutral")
	AddVendor(2810, 	L["Hammon Karwn"], 			Z.ARATHI_HIGHLANDS, 			46.4, 	47.4, 	"Alliance")
	AddVendor(2816,		L["Androd Fadran"],			Z.ARATHI_HIGHLANDS,				45.0, 	46.8,	"Alliance")
	AddVendor(2819,		L["Tunkk"],					Z.ARATHI_HIGHLANDS,				74.8, 	34.6,	"Horde")
	AddVendor(2821, 	L["Keena"], 				Z.ARATHI_HIGHLANDS, 			74.0, 	32.6, 	"Horde")
	AddVendor(2846,		L["Blixrez Goodstitch"],	Z.STRANGLETHORN_VALE,			28.2, 	77.6,	"Neutral")
	AddVendor(3005, 	L["Mahu"], 					Z.THUNDER_BLUFF, 				43.8, 	44.4, 	"Horde")
	AddVendor(3008,		L["Mak"],					Z.THUNDER_BLUFF,				42.0,	43.5,	"Horde")
	AddVendor(3366,		L["Tamar"],					Z.ORGRIMMAR,					63.0, 	45.2,	"Horde")
	AddVendor(3537, 	L["Zixil"], 				Z.HILLSBRAD_FOOTHILLS, 			55.6, 	34.6, 	"Neutral")
	AddVendor(3556, 	L["Andrew Hilbert"], 		Z.SILVERPINE_FOREST, 			43.2, 	40.6, 	"Horde")
	AddVendor(3958,		L["Lardan"],				Z.ASHENVALE,					34.8,	49.8,	"Alliance")
	AddVendor(4186, 	L["Mavralyn"], 				Z.DARKSHORE, 					37.0, 	41.2, 	"Alliance")
	AddVendor(4225,		L["Saenorion"],				Z.DARNASSUS,					63.5, 	22.6,	"Alliance")
	AddVendor(4589,		L["Joseph Moore"],			Z.UNDERCITY,					70.2,	59.1,	"Horde")
	AddVendor(4877, 	L["Jandia"], 				Z.THOUSAND_NEEDLES, 			46.0, 	51.6, 	"Horde")
	AddVendor(4897, 	L["Helenia Olden"], 		Z.DUSTWALLOW_MARSH, 			66.4, 	51.6, 	"Alliance")
	AddVendor(5128,		L["Bombus Finespindle"],	Z.IRONFORGE,					39.6,	34.5,	"Alliance")
	AddVendor(5565,		L["Jillian Tanner"],		Z.STORMWIND_CITY,				71.6, 	62.6,	"Alliance")
	AddVendor(5783, 	L["Kalldan Felmoon"], 		Z.THE_BARRENS, 					45.9, 	35.7, 	"Neutral")
	AddVendor(6731,		L["Harlown Darkweave"],		Z.ASHENVALE,					18.2, 	60.0,	"Alliance")
	AddVendor(7852, 	L["Pratt McGrubben"], 		Z.FERALAS, 						30.6, 	42.6, 	"Alliance")
	AddVendor(7854,		L["Jangdor Swiftstrider"],	Z.FERALAS,						74.4, 	42.8,	"Horde")
	AddVendor(8160,		L["Nioma"],					Z.THE_HINTERLANDS,				13.4,	43.4,	"Alliance")
	AddVendor(9499, 	L["Plugger Spazzring"], 	Z.BLACKROCK_DEPTHS, 			0, 		0, 		"Neutral")
	AddVendor(10856, 	L["Argent Quartermaster Hasana"], Z.TIRISFAL_GLADES, 		83.2, 	68.2, 	"Neutral")
	AddVendor(10857, 	L["Argent Quartermaster Lightspark"], Z.WESTERN_PLAGUELANDS, 42.8, 83.8, 	"Neutral")
	AddVendor(11189, 	L["Qia"], 					Z.WINTERSPRING, 				61.2, 	37.2,	"Neutral")
	AddVendor(11278, 	L["Magnus Frostwake"], 		Z.WESTERN_PLAGUELANDS, 			68.1, 	77.6, 	"Neutral")
	AddVendor(11536, 	L["Quartermaster Miranda Breechlock"], Z.EASTERN_PLAGUELANDS, 81.6, 60.0, 	"Neutral")
	AddVendor(11557, 	L["Meilosh"], 				Z.FELWOOD, 						65.6, 	2.8, 	"Neutral")
	AddVendor(11874, 	L["Masat T'andr"], 			Z.SWAMP_OF_SORROWS, 			26.3, 	31.7, 	"Neutral")
	AddVendor(12245, 	L["Vendor-Tron 1000"], 		Z.DESOLACE, 					60.2, 	38.2, 	"Neutral")
	AddVendor(12941, 	L["Jase Farlane"], 			Z.EASTERN_PLAGUELANDS, 			80.4, 	57.6, 	"Neutral")
	AddVendor(12942,	L["Leonard Porter"],		Z.WESTERN_PLAGUELANDS,			43.0,	84.2,	"Alliance")
	AddVendor(12943,	L["Werg Thickblade"],		Z.TIRISFAL_GLADES,				83.2,	69.6,	"Horde")
	AddVendor(12944, 	L["Lokhtos Darkbargainer"], Z.BLACKROCK_DEPTHS, 			0, 		0, 		"Neutral")
	AddVendor(12956,	L["Zannok Hidepiercer"],	Z.SILITHUS,						81.8,	17.8,	"Neutral")
	AddVendor(12957, 	L["Blimo Gadgetspring"], 	Z.AZSHARA, 						45.2, 	90.8, 	"Neutral")
	AddVendor(12958,	L["Gigget Zipcoil"],		Z.THE_HINTERLANDS,				34.6,	38.6,	"Neutral")
	AddVendor(12959,	L["Nergal"],				Z.UNGORO_CRATER,				43.2, 	7.8,	"Neutral")
	AddVendor(14921, 	L["Rin'wosho the Trader"], 	Z.STRANGLETHORN_VALE, 			15.0, 	16.0, 	"Neutral")
	AddVendor(15293,	L["Aendel Windspear"],		Z.SILITHUS,						62.6, 	49.8,	"Neutral")
   	AddVendor(32287,	L["Archmage Alvareaux"],	Z.ALTERAC_MOUNTAINS,			14.0, 	63.2,	"Alliance")
	AddVendor(217689, "Ziri \"The Wrench\" Littlesprocket", Z.GNOMEREGAN, 0, 0, "Neutral")
   	AddVendor(248201,	L["Pawani"],				Z.THE_BARRENS,					49.6, 	29.6,	"Horde")
	AddVendor(254151, 	L["Vayn Moongaze"], 		Z.ZEPHRAS_ISLE, 				63.8, 	36.0, 	"Neutral")
   	AddVendor(256734,	L["Daniel Stitchsong"],		Z.REDRIDGE_MOUNTAINS,			10.0, 	72.6,	"Alliance")
	AddVendor(258306,	L["Granny Finespindle"], 	Z.IRONFORGE, 					39.2, 	33.6, 	"Alliance")
   	AddVendor(264078,	L["Sutara Plainstalker"],	Z.MULGORE,						34.6, 	22.8,	"Horde")
	AddVendor(264797, 	L["Aisarra Nightmeadow"], 	Z.MOUNT_HYJAL, 					71.0, 	51.2, 	"Neutral")

	self.InitializeVendors = nil
end
