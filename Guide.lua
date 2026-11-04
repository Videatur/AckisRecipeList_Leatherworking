local _, private = ...
local addon = private.addon
if not addon then return end
local module = addon:GetModule(private.module_name)
local Z = addon.constants.ZONE_NAMES
module.Guides = {
["medium-hides-heavy-hides-beta"] = {
["chapters"] = {
{
["from"] = 1,
["id"] = "apprentice",
["steps"] = {
{
["from"] = 1,
["id"] = "1-30",
["note"] = "Keep the Light Leather you make. If you already have Light Leather, Light Armor Kit is another way to reach 30; use the skill colors in your client. This optional start has no fixed craft count and is excluded from the default shopping list.",
["to"] = 30,
["variants"] = {
{
["count"] = 33,
["materials"] = {
{
2934,
100
}
},
["outputCount"] = 1,
["outputItemID"] = 2318,
["spellID"] = 2881,
["title"] = "Light Leather"
}
}
},
{
["from"] = 30,
["id"] = "30-55",
["note"] = "Make the full preparation and reserve 24 Cured Light Hides for the pants at 100. Additional crafts may be needed for the target skill.",
["to"] = 55,
["variants"] = {
{
["count"] = 27,
["materials"] = {
{
783,
27
},
{
4289,
27
}
},
["outputCount"] = 1,
["outputItemID"] = 4231,
["spellID"] = 3816,
["title"] = "Cured Light Hide"
}
}
}
},
["title"] = "Apprentice",
["to"] = 55,
["training"] = {
["level"] = 0,
["locationIDs"] = {
"kamari",
"dan-golthas",
"mak",
"randal-worth",
"gretta-finespindle",
"darianna",
"chaw-stronghide",
"shelene-rhobart",
"adele-fielder",
"nadyia-maneweaver",
"emerii-tallgust",
"indari-sunseam"
},
["rank"] = "Apprentice Leatherworking",
["skill"] = 0
}
},
{
["from"] = 55,
["id"] = "journeyman",
["steps"] = {
{
["from"] = 55,
["id"] = "55-75",
["note"] = "Train Journeyman before passing 75. Buy Coarse Thread from a listed supplies vendor.",
["to"] = 75,
["variants"] = {
{
["count"] = 21,
["materials"] = {
{
2318,
63
},
{
2320,
42
}
},
["spellID"] = 3756,
["title"] = "Embossed Leather Gloves"
}
}
},
{
["from"] = 75,
["id"] = "75-80",
["note"] = "Save the Medium Leather for later gloves or Heavy Leather preparation.",
["to"] = 80,
["variants"] = {
{
["count"] = 8,
["materials"] = {
{
2318,
32
}
},
["outputCount"] = 1,
["outputItemID"] = 2319,
["spellID"] = 20648,
["title"] = "Medium Leather"
}
}
},
{
["from"] = 80,
["id"] = "80-90",
["note"] = "Reserve all 10 Cured Medium Hides for the belts at 115.",
["to"] = 90,
["variants"] = {
{
["count"] = 10,
["materials"] = {
{
4232,
10
},
{
4289,
10
}
},
["outputCount"] = 1,
["outputItemID"] = 4233,
["spellID"] = 3817,
["title"] = "Cured Medium Hide"
}
}
},
{
["from"] = 90,
["id"] = "90-100",
["note"] = "Reserve 10 Fine Leather Belts for the later Dark Leather Belt step.",
["to"] = 100,
["variants"] = {
{
["count"] = 19,
["materials"] = {
{
2318,
114
},
{
2320,
38
}
},
["outputCount"] = 1,
["outputItemID"] = 4246,
["spellID"] = 3763,
["title"] = "Fine Leather Belt"
}
}
},
{
["from"] = 100,
["id"] = "100-115",
["note"] = "Use 24 Cured Light Hides saved at 30-55. Keep enough Light Leather for the remaining crafts.",
["to"] = 115,
["variants"] = {
{
["count"] = 24,
["materials"] = {
{
2318,
240
},
{
2321,
24
},
{
4231,
24
}
},
["spellID"] = 9068,
["title"] = "Light Leather Pants"
}
}
},
{
["from"] = 115,
["id"] = "115-125",
["note"] = "Use the 10 saved belts and 10 cured hides. Buy Fine Thread and Gray Dye from a supplies vendor.",
["to"] = 125,
["variants"] = {
{
["count"] = 10,
["materials"] = {
{
2321,
20
},
{
4233,
10
},
{
4246,
10
},
{
4340,
10
}
},
["spellID"] = 3766,
["title"] = "Dark Leather Belt"
}
}
},
{
["from"] = 125,
["id"] = "125-130",
["note"] = "Train Expert at skill 125 and character level 20. Save the Heavy Leather you craft.",
["to"] = 130,
["variants"] = {
{
["count"] = 7,
["materials"] = {
{
2319,
35
}
},
["outputCount"] = 1,
["outputItemID"] = 4234,
["spellID"] = 20649,
["title"] = "Heavy Leather"
}
}
}
},
["title"] = "Journeyman",
["to"] = 130,
["training"] = {
["level"] = 10,
["locationIDs"] = {
"karolek",
"arthur-moore",
"tarn",
"simon-tanner",
"fimble-finespindle",
"faldron"
},
["rank"] = "Journeyman Leatherworking",
["skill"] = 50
}
},
{
["from"] = 130,
["id"] = "expert",
["steps"] = {
{
["from"] = 130,
["id"] = "130-140",
["note"] = "Prepare all 20 Cured Heavy Hides and save them for the shoulders and gloves through 175.",
["to"] = 140,
["variants"] = {
{
["count"] = 20,
["materials"] = {
{
4235,
20
},
{
4289,
60
}
},
["outputCount"] = 1,
["outputItemID"] = 4236,
["spellID"] = 3818,
["title"] = "Cured Heavy Hide"
}
}
},
{
["from"] = 140,
["id"] = "140-155",
["note"] = "Use Medium Leather and Fine Thread. The estimate includes 20 pairs of gloves.",
["to"] = 155,
["variants"] = {
{
["count"] = 20,
["materials"] = {
{
2319,
280
},
{
2321,
80
}
},
["spellID"] = 3764,
["title"] = "Hillman's Leather Gloves"
}
}
},
{
["from"] = 155,
["id"] = "155-165",
["note"] = "Use 10 of the prepared cured hides; save the other 10 for Guardian Gloves.",
["to"] = 165,
["variants"] = {
{
["count"] = 10,
["materials"] = {
{
2321,
20
},
{
4234,
80
},
{
4236,
10
}
},
["spellID"] = 7151,
["title"] = "Barbaric Shoulders"
}
}
},
{
["from"] = 165,
["id"] = "165-175",
["note"] = "Use the remaining 10 cured hides from the preparation step.",
["to"] = 175,
["variants"] = {
{
["count"] = 10,
["materials"] = {
{
4234,
40
},
{
4236,
10
},
{
4291,
10
}
},
["spellID"] = 7156,
["title"] = "Guardian Gloves"
}
}
},
{
["from"] = 175,
["id"] = "175-195",
["note"] = "Both routes need 26 additional Cured Heavy Hides here. Cure 26 Heavy Hides with 78 Salt, or obtain the cured hides directly. Earlier hides are already reserved for the earlier recipes. The shopping list budgets raw hides and Salt.",
["to"] = 195,
["variants"] = {
{
["count"] = 26,
["materials"] = {
{
4234,
104
},
{
4236,
26
},
{
4291,
26
}
},
["spellID"] = 7156,
["title"] = "Guardian Gloves"
}
}
},
{
["from"] = 195,
["id"] = "195-210",
["note"] = "Switch to Thick Leather and continue with Nightscape Headband. Allow extra materials for missed skill gains.",
["to"] = 210,
["variants"] = {
{
["count"] = 21,
["materials"] = {
{
4291,
42
},
{
4304,
105
}
},
["spellID"] = 10507,
["title"] = "Nightscape Headband"
}
}
}
},
["title"] = "Expert",
["to"] = 210,
["training"] = {
["cost"] = "50s",
["level"] = 20,
["locationIDs"] = {
"una",
"telonis"
},
["rank"] = "Expert Leatherworking",
["skill"] = 125
}
},
{
["from"] = 210,
["id"] = "artisan",
["steps"] = {
{
["from"] = 210,
["id"] = "210-225",
["note"] = "Learn Nightscape Pants from Hahrana Ironhide or Drakk Stonehand. Visit that trainer before buying the Thick Leather for this step.",
["to"] = 225,
["variants"] = {
{
["count"] = 15,
["materials"] = {
{
4291,
60
},
{
4304,
210
}
},
["spellID"] = 10548,
["title"] = "Nightscape Pants"
}
}
}
},
["title"] = "Artisan",
["to"] = 225,
["training"] = {
["level"] = 35,
["locationIDs"] = {
"hahrana-ironhide",
"drakk-stonehand"
},
["note"] = "Nightscape Pants at 210 requires one of these trainers. The Expert trainers in Thunder Bluff and Darnassus do not teach it.",
["rank"] = "Artisan Leatherworking",
["skill"] = 200
}
}
},
["id"] = "forever-leatherworking-1-225-medium-hides-heavy-hides-beta",
["introduction"] = "Select a route for the 130-175 interval before buying materials. Counts are estimates; stop at the target skill unless preparing components for later recipes. Save the listed belts and cured hides. Each route tracks completion separately. Some recipe requirements in the Ackis catalogue differ from this updated route; follow the requirements shown in your profession window.",
["label"] = "Heavy hides",
["locations"] = {
[11097] = {
["faction"] = "Alliance",
["mapID"] = 1425,
["name"] = "Drakk Stonehand",
["x"] = 13.4,
["y"] = 43.3,
["zone"] = Z["THE_HINTERLANDS"]
},
[11098] = {
["faction"] = "Horde",
["mapID"] = 1444,
["name"] = "Hahrana Ironhide",
["x"] = 74.4,
["y"] = 43.1,
["zone"] = Z["FERALAS"]
},
[1632] = {
["faction"] = "Alliance",
["mapID"] = 1429,
["name"] = "Adele Fielder",
["x"] = 46.4,
["y"] = 62.1,
["zone"] = Z["ELWYNN_FOREST"]
},
[251993] = {
["faction"] = "Neutral",
["mapID"] = 2521,
["name"] = "Indari Sunseam",
["x"] = 44.7,
["y"] = 44.5,
["zone"] = Z["ZEPHRAS_ISLE"]
},
[3007] = {
["faction"] = "Horde",
["mapID"] = 1456,
["name"] = "Una",
["x"] = 41.7,
["y"] = 42.7,
["zone"] = Z["THUNDER_BLUFF"]
},
[3069] = {
["faction"] = "Horde",
["mapID"] = 1412,
["name"] = "Chaw Stronghide",
["x"] = 45.0,
["y"] = 61.5,
["zone"] = Z["MULGORE"]
},
[3365] = {
["faction"] = "Horde",
["mapID"] = 1454,
["name"] = "Karolek",
["x"] = 62.7,
["y"] = 44.4,
["zone"] = Z["ORGRIMMAR"]
},
[3549] = {
["faction"] = "Horde",
["mapID"] = 1420,
["name"] = "Shelene Rhobart",
["x"] = 65.4,
["y"] = 60.1,
["zone"] = Z["TIRISFAL_GLADES"]
},
[3605] = {
["faction"] = "Alliance",
["mapID"] = 1438,
["name"] = "Nadyia Maneweaver",
["x"] = 41.8,
["y"] = 49.4,
["zone"] = Z["TELDRASSIL"]
},
[4212] = {
["faction"] = "Alliance",
["mapID"] = 1457,
["name"] = "Telonis",
["x"] = 64.4,
["y"] = 21.5,
["zone"] = Z["DARNASSUS"]
},
[4588] = {
["faction"] = "Horde",
["mapID"] = 1458,
["name"] = "Arthur Moore",
["x"] = 70.2,
["y"] = 57.6,
["zone"] = Z["UNDERCITY"]
},
[5127] = {
["faction"] = "Alliance",
["mapID"] = 1455,
["name"] = "Fimble Finespindle",
["x"] = 40.2,
["y"] = 33.7,
["zone"] = Z["IRONFORGE"]
},
[5564] = {
["faction"] = "Alliance",
["mapID"] = 1453,
["name"] = "Simon Tanner",
["x"] = 71.7,
["y"] = 62.9,
["zone"] = Z["STORMWIND_CITY"]
},
["abigail-shiel"] = {
["faction"] = "Horde",
["mapID"] = 1420,
["name"] = "Abigail Shiel",
["x"] = 61.0,
["y"] = 52.4,
["zone"] = Z["TIRISFAL_GLADES"]
},
["adele-fielder"] = {
["faction"] = "Alliance",
["mapID"] = 1429,
["name"] = "Adele Fielder",
["x"] = 46.4,
["y"] = 62.1,
["zone"] = Z["ELWYNN_FOREST"]
},
["arthur-moore"] = {
["faction"] = "Horde",
["mapID"] = 1458,
["name"] = "Arthur Moore",
["x"] = 70.2,
["y"] = 57.6,
["zone"] = Z["UNDERCITY"]
},
["bombus-finespindle"] = {
["faction"] = "Alliance",
["mapID"] = 1455,
["name"] = "Bombus Finespindle",
["x"] = 39.3,
["y"] = 34.1,
["zone"] = Z["IRONFORGE"]
},
["chaw-stronghide"] = {
["faction"] = "Horde",
["mapID"] = 1412,
["name"] = "Chaw Stronghide",
["x"] = 45.0,
["y"] = 61.5,
["zone"] = Z["MULGORE"]
},
["dan-golthas"] = {
["faction"] = "Horde",
["mapID"] = 1458,
["name"] = "Dan Golthas",
["x"] = 70.8,
["y"] = 58.6,
["zone"] = Z["UNDERCITY"]
},
["darianna"] = {
["faction"] = "Alliance",
["mapID"] = 1457,
["name"] = "Darianna",
["x"] = 64.5,
["y"] = 21.0,
["zone"] = Z["DARNASSUS"]
},
["drakk-stonehand"] = {
["faction"] = "Alliance",
["mapID"] = 1425,
["name"] = "Drakk Stonehand",
["x"] = 13.4,
["y"] = 43.3,
["zone"] = Z["THE_HINTERLANDS"]
},
["emerii-tallgust"] = {
["faction"] = "Neutral",
["mapID"] = 2521,
["name"] = "Emerii Tallgust",
["x"] = 63.8,
["y"] = 80.6,
["zone"] = Z["ZEPHRAS_ISLE"]
},
["faldron"] = {
["faction"] = "Alliance",
["mapID"] = 1457,
["name"] = "Faldron",
["x"] = 64.9,
["y"] = 21.6,
["zone"] = Z["DARNASSUS"]
},
["fimble-finespindle"] = {
["faction"] = "Alliance",
["mapID"] = 1455,
["name"] = "Fimble Finespindle",
["x"] = 40.2,
["y"] = 33.7,
["zone"] = Z["IRONFORGE"]
},
["gretta-finespindle"] = {
["faction"] = "Alliance",
["mapID"] = 1455,
["name"] = "Gretta Finespindle",
["x"] = 39.0,
["y"] = 32.7,
["zone"] = Z["IRONFORGE"]
},
["hahrana-ironhide"] = {
["faction"] = "Horde",
["mapID"] = 1444,
["name"] = "Hahrana Ironhide",
["x"] = 74.4,
["y"] = 43.1,
["zone"] = Z["FERALAS"]
},
["hammon-karwn"] = {
["faction"] = "Alliance",
["mapID"] = 1417,
["name"] = "Hammon Karwn",
["x"] = 46.3,
["y"] = 47.4,
["zone"] = Z["ARATHI_HIGHLANDS"]
},
["indari-sunseam"] = {
["faction"] = "Neutral",
["mapID"] = 2521,
["name"] = "Indari Sunseam",
["x"] = 44.7,
["y"] = 44.5,
["zone"] = Z["ZEPHRAS_ISLE"]
},
["jandia"] = {
["faction"] = "Horde",
["mapID"] = 1441,
["name"] = "Jandia",
["x"] = 46.2,
["y"] = 51.5,
["zone"] = Z["THOUSAND_NEEDLES"]
},
["jillian-tanner"] = {
["faction"] = "Alliance",
["mapID"] = 1453,
["name"] = "Jillian Tanner",
["x"] = 71.7,
["y"] = 62.7,
["zone"] = Z["STORMWIND_CITY"]
},
["joseph-moore"] = {
["faction"] = "Horde",
["mapID"] = 1458,
["name"] = "Joseph Moore",
["x"] = 70.2,
["y"] = 59.1,
["zone"] = Z["UNDERCITY"]
},
["kamari"] = {
["faction"] = "Horde",
["mapID"] = 1454,
["name"] = "Kamari",
["x"] = 63.2,
["y"] = 44.6,
["zone"] = Z["ORGRIMMAR"]
},
["karolek"] = {
["faction"] = "Horde",
["mapID"] = 1454,
["name"] = "Karolek",
["x"] = 62.7,
["y"] = 44.4,
["zone"] = Z["ORGRIMMAR"]
},
["keena"] = {
["faction"] = "Horde",
["mapID"] = 1417,
["name"] = "Keena",
["x"] = 74.0,
["y"] = 32.8,
["zone"] = Z["ARATHI_HIGHLANDS"]
},
["lardan"] = {
["faction"] = "Alliance",
["mapID"] = 1440,
["name"] = "Lardan",
["x"] = 34.8,
["y"] = 49.8,
["zone"] = Z["ASHENVALE"]
},
["mak"] = {
["faction"] = "Horde",
["mapID"] = 1456,
["name"] = "Mak",
["x"] = 42.2,
["y"] = 43.1,
["zone"] = Z["THUNDER_BLUFF"]
},
["nadyia-maneweaver"] = {
["faction"] = "Alliance",
["mapID"] = 1438,
["name"] = "Nadyia Maneweaver",
["x"] = 41.8,
["y"] = 49.4,
["zone"] = Z["TELDRASSIL"]
},
["randal-worth"] = {
["faction"] = "Alliance",
["mapID"] = 1453,
["name"] = "Randal Worth",
["x"] = 72.2,
["y"] = 62.8,
["zone"] = Z["STORMWIND_CITY"]
},
["saenorion"] = {
["faction"] = "Alliance",
["mapID"] = 1457,
["name"] = "Saenorion",
["x"] = 63.5,
["y"] = 22.6,
["zone"] = Z["DARNASSUS"]
},
["shelene-rhobart"] = {
["faction"] = "Horde",
["mapID"] = 1420,
["name"] = "Shelene Rhobart",
["x"] = 65.4,
["y"] = 60.1,
["zone"] = Z["TIRISFAL_GLADES"]
},
["simon-tanner"] = {
["faction"] = "Alliance",
["mapID"] = 1453,
["name"] = "Simon Tanner",
["x"] = 71.7,
["y"] = 62.9,
["zone"] = Z["STORMWIND_CITY"]
},
["tamar"] = {
["faction"] = "Horde",
["mapID"] = 1454,
["name"] = "Tamar",
["x"] = 63.0,
["y"] = 45.5,
["zone"] = Z["ORGRIMMAR"]
},
["tarn"] = {
["faction"] = "Horde",
["mapID"] = 1456,
["name"] = "Tarn",
["x"] = 42.5,
["y"] = 42.9,
["zone"] = Z["THUNDER_BLUFF"]
},
["telonis"] = {
["faction"] = "Alliance",
["mapID"] = 1457,
["name"] = "Telonis",
["x"] = 64.4,
["y"] = 21.5,
["zone"] = Z["DARNASSUS"]
},
["tharynn-bouden"] = {
["faction"] = "Alliance",
["mapID"] = 1429,
["name"] = "Tharynn Bouden",
["x"] = 41.9,
["y"] = 67.1,
["zone"] = Z["ELWYNN_FOREST"]
},
["una"] = {
["faction"] = "Horde",
["mapID"] = 1456,
["name"] = "Una",
["x"] = 41.7,
["y"] = 42.7,
["zone"] = Z["THUNDER_BLUFF"]
}
},
["materialNames"] = {
[2318] = "Light Leather",
[2319] = "Medium Leather",
[2320] = "Coarse Thread",
[2321] = "Fine Thread",
[2934] = "Ruined Leather Scraps",
[4231] = "Cured Light Hide",
[4232] = "Medium Hide",
[4233] = "Cured Medium Hide",
[4234] = "Heavy Leather",
[4235] = "Heavy Hide",
[4236] = "Cured Heavy Hide",
[4246] = "Fine Leather Belt",
[4289] = "Salt",
[4291] = "Silken Thread",
[4304] = "Thick Leather",
[4340] = "Gray Dye",
[5973] = "Pattern: Barbaric Leggings",
[783] = "Light Hide"
},
["materialSources"] = {
[2318] = {
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops. Higher leather tiers may be difficult to access during the beta.",
["zones"] = {
Z["THE_BARRENS"],
Z["DARKSHORE"],
Z["SILVERPINE_FOREST"]
}
},
[2319] = {
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops. Higher leather tiers may be difficult to access during the beta.",
["zones"] = {
Z["WETLANDS"],
Z["ASHENVALE"]
}
},
[2320] = {
["kind"] = "supply"
},
[2321] = {
["kind"] = "supply"
},
[2934] = {
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops. Higher leather tiers may be difficult to access during the beta.",
["zones"] = {
Z["ELWYNN_FOREST"],
Z["MULGORE"]
}
},
[4231] = {
["kind"] = "craft",
["note"] = "Use the cured hides saved from the Light Hide preparation.",
["spellID"] = 3816,
["stepID"] = "30-55"
},
[4232] = {
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops. Higher leather tiers may be difficult to access during the beta.",
["zones"] = {
Z["WETLANDS"],
Z["ASHENVALE"]
}
},
[4233] = {
["kind"] = "craft",
["note"] = "Use the ten cured hides prepared at 80-90.",
["spellID"] = 3817,
["stepID"] = "80-90"
},
[4234] = {
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops. Higher leather tiers may be difficult to access during the beta.",
["zones"] = {
Z["STRANGLETHORN_VALE"]
}
},
[4235] = {
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops. Higher leather tiers may be difficult to access during the beta.",
["zones"] = {
Z["STRANGLETHORN_VALE"]
}
},
[4236] = {
["ingredients"] = {
{
4235,
1
},
{
4289,
3
}
},
["kind"] = "craft",
["note"] = "Cure one Heavy Hide with three Salt for each additional Cured Heavy Hide. Extra preparation for 175-195 is included in the shopping totals.",
["outputCount"] = 1,
["spellID"] = 3818,
["stepID"] = "175-195"
},
[4246] = {
["kind"] = "craft",
["note"] = "Use ten belts saved from 90-100.",
["spellID"] = 3763,
["stepID"] = "90-100"
},
[4289] = {
["kind"] = "supply"
},
[4291] = {
["kind"] = "supply"
},
[4304] = {
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops. Higher leather tiers may be difficult to access during the beta.",
["zones"] = {
Z["DUSTWALLOW_MARSH"],
Z["STRANGLETHORN_VALE"]
}
},
[4340] = {
["kind"] = "supply"
},
[5973] = {
["kind"] = "supply"
},
[783] = {
["kind"] = "skinning",
["note"] = "Light Hides can come from skinning suitable beasts. Hides are not guaranteed; buy any shortfall from other players.",
["zones"] = {
Z["ELWYNN_FOREST"],
Z["MULGORE"],
Z["DUN_MOROGH"]
}
}
},
["maxSkill"] = 225,
["menuTitle"] = "Heavy hides (130-175)",
["minSkill"] = 1,
["setupItems"] = {

},
["shoppingRequirements"] = {

},
["source"] = "https://www.wow-professions.com/forever/leatherworking-leveling-guide",
["sourceDate"] = "2026-10-25",
["sourceHash"] = "6c48063941f973208dde7a24d4e6c59a90f055ea249c5a1723e39dd6fe6a4374",
["supplies"] = {
{
["faction"] = "Horde",
["id"] = "abigail-shiel",
["items"] = {
[2320] = true,
[4289] = true
},
["mapID"] = 1420,
["name"] = "Abigail Shiel",
["x"] = 61.0,
["y"] = 52.4,
["zone"] = Z["TIRISFAL_GLADES"]
},
{
["faction"] = "Alliance",
["id"] = "bombus-finespindle",
["items"] = {
[2320] = true,
[2321] = true,
[4289] = true,
[4291] = true,
[4340] = true
},
["mapID"] = 1455,
["name"] = "Bombus Finespindle",
["x"] = 39.3,
["y"] = 34.1,
["zone"] = Z["IRONFORGE"]
},
{
["faction"] = "Alliance",
["id"] = "hammon-karwn",
["items"] = {
[5973] = true
},
["mapID"] = 1417,
["name"] = "Hammon Karwn",
["x"] = 46.3,
["y"] = 47.4,
["zone"] = Z["ARATHI_HIGHLANDS"]
},
{
["faction"] = "Horde",
["id"] = "jandia",
["items"] = {
[2320] = true,
[2321] = true,
[4289] = true,
[4291] = true,
[5973] = true
},
["mapID"] = 1441,
["name"] = "Jandia",
["x"] = 46.2,
["y"] = 51.5,
["zone"] = Z["THOUSAND_NEEDLES"]
},
{
["faction"] = "Alliance",
["id"] = "jillian-tanner",
["items"] = {
[2320] = true,
[2321] = true,
[4289] = true,
[4291] = true,
[4340] = true
},
["mapID"] = 1453,
["name"] = "Jillian Tanner",
["x"] = 71.7,
["y"] = 62.7,
["zone"] = Z["STORMWIND_CITY"]
},
{
["faction"] = "Horde",
["id"] = "joseph-moore",
["items"] = {
[2320] = true,
[2321] = true,
[4289] = true,
[4291] = true,
[4340] = true
},
["mapID"] = 1458,
["name"] = "Joseph Moore",
["x"] = 70.2,
["y"] = 59.1,
["zone"] = Z["UNDERCITY"]
},
{
["faction"] = "Horde",
["id"] = "keena",
["items"] = {
[5973] = true
},
["mapID"] = 1417,
["name"] = "Keena",
["x"] = 74.0,
["y"] = 32.8,
["zone"] = Z["ARATHI_HIGHLANDS"]
},
{
["faction"] = "Alliance",
["id"] = "lardan",
["items"] = {
[2320] = true,
[2321] = true,
[4289] = true,
[4291] = true,
[4340] = true,
[5973] = true
},
["mapID"] = 1440,
["name"] = "Lardan",
["x"] = 34.8,
["y"] = 49.8,
["zone"] = Z["ASHENVALE"]
},
{
["faction"] = "Alliance",
["id"] = "saenorion",
["items"] = {
[2320] = true,
[2321] = true,
[4289] = true,
[4291] = true,
[4340] = true
},
["mapID"] = 1457,
["name"] = "Saenorion",
["x"] = 63.5,
["y"] = 22.6,
["zone"] = Z["DARNASSUS"]
},
{
["faction"] = "Horde",
["id"] = "tamar",
["items"] = {
[2320] = true,
[2321] = true,
[4289] = true,
[4291] = true,
[4340] = true
},
["mapID"] = 1454,
["name"] = "Tamar",
["x"] = 63.0,
["y"] = 45.5,
["zone"] = Z["ORGRIMMAR"]
},
{
["faction"] = "Alliance",
["id"] = "tharynn-bouden",
["items"] = {
[2320] = true,
[4289] = true
},
["mapID"] = 1429,
["name"] = "Tharynn Bouden",
["x"] = 41.9,
["y"] = 67.1,
["zone"] = Z["ELWYNN_FOREST"]
}
},
["title"] = "Leatherworking Guide",
["tools"] = {

}
},
["medium-hides-no-heavy-hides-beta"] = {
["chapters"] = {
{
["from"] = 1,
["id"] = "apprentice",
["steps"] = {
{
["from"] = 1,
["id"] = "1-30",
["note"] = "Keep the Light Leather you make. If you already have Light Leather, Light Armor Kit is another way to reach 30; use the skill colors in your client. This optional start has no fixed craft count and is excluded from the default shopping list.",
["to"] = 30,
["variants"] = {
{
["count"] = 33,
["materials"] = {
{
2934,
100
}
},
["outputCount"] = 1,
["outputItemID"] = 2318,
["spellID"] = 2881,
["title"] = "Light Leather"
}
}
},
{
["from"] = 30,
["id"] = "30-55",
["note"] = "Make the full preparation and reserve 24 Cured Light Hides for the pants at 100. Additional crafts may be needed for the target skill.",
["to"] = 55,
["variants"] = {
{
["count"] = 27,
["materials"] = {
{
783,
27
},
{
4289,
27
}
},
["outputCount"] = 1,
["outputItemID"] = 4231,
["spellID"] = 3816,
["title"] = "Cured Light Hide"
}
}
}
},
["title"] = "Apprentice",
["to"] = 55,
["training"] = {
["level"] = 0,
["locationIDs"] = {
"kamari",
"dan-golthas",
"mak",
"randal-worth",
"gretta-finespindle",
"darianna",
"chaw-stronghide",
"shelene-rhobart",
"adele-fielder",
"nadyia-maneweaver",
"emerii-tallgust",
"indari-sunseam"
},
["rank"] = "Apprentice Leatherworking",
["skill"] = 0
}
},
{
["from"] = 55,
["id"] = "journeyman",
["steps"] = {
{
["from"] = 55,
["id"] = "55-75",
["note"] = "Train Journeyman before passing 75. Buy Coarse Thread from a listed supplies vendor.",
["to"] = 75,
["variants"] = {
{
["count"] = 21,
["materials"] = {
{
2318,
63
},
{
2320,
42
}
},
["spellID"] = 3756,
["title"] = "Embossed Leather Gloves"
}
}
},
{
["from"] = 75,
["id"] = "75-80",
["note"] = "Save the Medium Leather for later gloves or Heavy Leather preparation.",
["to"] = 80,
["variants"] = {
{
["count"] = 8,
["materials"] = {
{
2318,
32
}
},
["outputCount"] = 1,
["outputItemID"] = 2319,
["spellID"] = 20648,
["title"] = "Medium Leather"
}
}
},
{
["from"] = 80,
["id"] = "80-90",
["note"] = "Reserve all 10 Cured Medium Hides for the belts at 115.",
["to"] = 90,
["variants"] = {
{
["count"] = 10,
["materials"] = {
{
4232,
10
},
{
4289,
10
}
},
["outputCount"] = 1,
["outputItemID"] = 4233,
["spellID"] = 3817,
["title"] = "Cured Medium Hide"
}
}
},
{
["from"] = 90,
["id"] = "90-100",
["note"] = "Reserve 10 Fine Leather Belts for the later Dark Leather Belt step.",
["to"] = 100,
["variants"] = {
{
["count"] = 19,
["materials"] = {
{
2318,
114
},
{
2320,
38
}
},
["outputCount"] = 1,
["outputItemID"] = 4246,
["spellID"] = 3763,
["title"] = "Fine Leather Belt"
}
}
},
{
["from"] = 100,
["id"] = "100-115",
["note"] = "Use 24 Cured Light Hides saved at 30-55. Keep enough Light Leather for the remaining crafts.",
["to"] = 115,
["variants"] = {
{
["count"] = 24,
["materials"] = {
{
2318,
240
},
{
2321,
24
},
{
4231,
24
}
},
["spellID"] = 9068,
["title"] = "Light Leather Pants"
}
}
},
{
["from"] = 115,
["id"] = "115-125",
["note"] = "Use the 10 saved belts and 10 cured hides. Buy Fine Thread and Gray Dye from a supplies vendor.",
["to"] = 125,
["variants"] = {
{
["count"] = 10,
["materials"] = {
{
2321,
20
},
{
4233,
10
},
{
4246,
10
},
{
4340,
10
}
},
["spellID"] = 3766,
["title"] = "Dark Leather Belt"
}
}
},
{
["from"] = 125,
["id"] = "125-130",
["note"] = "Train Expert at skill 125 and character level 20. Save the Heavy Leather you craft.",
["to"] = 130,
["variants"] = {
{
["count"] = 7,
["materials"] = {
{
2319,
35
}
},
["outputCount"] = 1,
["outputItemID"] = 4234,
["spellID"] = 20649,
["title"] = "Heavy Leather"
}
}
}
},
["title"] = "Journeyman",
["to"] = 130,
["training"] = {
["level"] = 10,
["locationIDs"] = {
"karolek",
"arthur-moore",
"tarn",
"simon-tanner",
"fimble-finespindle",
"faldron"
},
["rank"] = "Journeyman Leatherworking",
["skill"] = 50
}
},
{
["from"] = 130,
["id"] = "expert",
["steps"] = {
{
["from"] = 130,
["id"] = "130-155",
["note"] = "This interval avoids Heavy Hides, using more Medium Leather instead.",
["to"] = 155,
["variants"] = {
{
["count"] = 30,
["materials"] = {
{
2319,
420
},
{
2321,
120
}
},
["spellID"] = 3764,
["title"] = "Hillman's Leather Gloves"
}
}
},
{
["from"] = 155,
["id"] = "155-170",
["note"] = "Obtain Pattern: Barbaric Leggings from a vendor available to your faction before buying Moss Agate.",
["to"] = 170,
["variants"] = {
{
["count"] = 17,
["materials"] = {
{
1206,
17
},
{
2321,
34
},
{
4234,
170
}
},
["recipeItemID"] = 5973,
["shoppingRequirements"] = {
{
5973,
1
}
},
["spellID"] = 7149,
["title"] = "Barbaric Leggings"
}
}
},
{
["from"] = 170,
["id"] = "170-175",
["note"] = "Buy five Iron Buckles from a Blacksmith or the Auction House. Buckles are inputs, not leatherworking outputs.",
["to"] = 175,
["variants"] = {
{
["count"] = 5,
["materials"] = {
{
2321,
10
},
{
4234,
70
},
{
7071,
5
}
},
["spellID"] = 6661,
["title"] = "Barbaric Harness"
}
}
},
{
["from"] = 175,
["id"] = "175-195",
["note"] = "Both routes need 26 additional Cured Heavy Hides here. Cure 26 Heavy Hides with 78 Salt, or obtain the cured hides directly. Earlier hides are already reserved for the earlier recipes. The shopping list budgets raw hides and Salt.",
["to"] = 195,
["variants"] = {
{
["count"] = 26,
["materials"] = {
{
4234,
104
},
{
4236,
26
},
{
4291,
26
}
},
["spellID"] = 7156,
["title"] = "Guardian Gloves"
}
}
},
{
["from"] = 195,
["id"] = "195-210",
["note"] = "Switch to Thick Leather and continue with Nightscape Headband. Allow extra materials for missed skill gains.",
["to"] = 210,
["variants"] = {
{
["count"] = 21,
["materials"] = {
{
4291,
42
},
{
4304,
105
}
},
["spellID"] = 10507,
["title"] = "Nightscape Headband"
}
}
}
},
["title"] = "Expert",
["to"] = 210,
["training"] = {
["cost"] = "50s",
["level"] = 20,
["locationIDs"] = {
"una",
"telonis"
},
["rank"] = "Expert Leatherworking",
["skill"] = 125
}
},
{
["from"] = 210,
["id"] = "artisan",
["steps"] = {
{
["from"] = 210,
["id"] = "210-225",
["note"] = "Learn Nightscape Pants from Hahrana Ironhide or Drakk Stonehand. Visit that trainer before buying the Thick Leather for this step.",
["to"] = 225,
["variants"] = {
{
["count"] = 15,
["materials"] = {
{
4291,
60
},
{
4304,
210
}
},
["spellID"] = 10548,
["title"] = "Nightscape Pants"
}
}
}
},
["title"] = "Artisan",
["to"] = 225,
["training"] = {
["level"] = 35,
["locationIDs"] = {
"hahrana-ironhide",
"drakk-stonehand"
},
["note"] = "Nightscape Pants at 210 requires one of these trainers. The Expert trainers in Thunder Bluff and Darnassus do not teach it.",
["rank"] = "Artisan Leatherworking",
["skill"] = 200
}
}
},
["id"] = "forever-leatherworking-1-225-medium-hides-no-heavy-hides-beta",
["introduction"] = "Select a route for the 130-175 interval before buying materials. Counts are estimates; stop at the target skill unless preparing components for later recipes. Save the listed belts and cured hides. Each route tracks completion separately. Some recipe requirements in the Ackis catalogue differ from this updated route; follow the requirements shown in your profession window.",
["label"] = "No Heavy hides",
["locations"] = {
[11097] = {
["faction"] = "Alliance",
["mapID"] = 1425,
["name"] = "Drakk Stonehand",
["x"] = 13.4,
["y"] = 43.3,
["zone"] = Z["THE_HINTERLANDS"]
},
[11098] = {
["faction"] = "Horde",
["mapID"] = 1444,
["name"] = "Hahrana Ironhide",
["x"] = 74.4,
["y"] = 43.1,
["zone"] = Z["FERALAS"]
},
[1632] = {
["faction"] = "Alliance",
["mapID"] = 1429,
["name"] = "Adele Fielder",
["x"] = 46.4,
["y"] = 62.1,
["zone"] = Z["ELWYNN_FOREST"]
},
[251993] = {
["faction"] = "Neutral",
["mapID"] = 2521,
["name"] = "Indari Sunseam",
["x"] = 44.7,
["y"] = 44.5,
["zone"] = Z["ZEPHRAS_ISLE"]
},
[3007] = {
["faction"] = "Horde",
["mapID"] = 1456,
["name"] = "Una",
["x"] = 41.7,
["y"] = 42.7,
["zone"] = Z["THUNDER_BLUFF"]
},
[3069] = {
["faction"] = "Horde",
["mapID"] = 1412,
["name"] = "Chaw Stronghide",
["x"] = 45.0,
["y"] = 61.5,
["zone"] = Z["MULGORE"]
},
[3365] = {
["faction"] = "Horde",
["mapID"] = 1454,
["name"] = "Karolek",
["x"] = 62.7,
["y"] = 44.4,
["zone"] = Z["ORGRIMMAR"]
},
[3549] = {
["faction"] = "Horde",
["mapID"] = 1420,
["name"] = "Shelene Rhobart",
["x"] = 65.4,
["y"] = 60.1,
["zone"] = Z["TIRISFAL_GLADES"]
},
[3605] = {
["faction"] = "Alliance",
["mapID"] = 1438,
["name"] = "Nadyia Maneweaver",
["x"] = 41.8,
["y"] = 49.4,
["zone"] = Z["TELDRASSIL"]
},
[4212] = {
["faction"] = "Alliance",
["mapID"] = 1457,
["name"] = "Telonis",
["x"] = 64.4,
["y"] = 21.5,
["zone"] = Z["DARNASSUS"]
},
[4588] = {
["faction"] = "Horde",
["mapID"] = 1458,
["name"] = "Arthur Moore",
["x"] = 70.2,
["y"] = 57.6,
["zone"] = Z["UNDERCITY"]
},
[5127] = {
["faction"] = "Alliance",
["mapID"] = 1455,
["name"] = "Fimble Finespindle",
["x"] = 40.2,
["y"] = 33.7,
["zone"] = Z["IRONFORGE"]
},
[5564] = {
["faction"] = "Alliance",
["mapID"] = 1453,
["name"] = "Simon Tanner",
["x"] = 71.7,
["y"] = 62.9,
["zone"] = Z["STORMWIND_CITY"]
},
["abigail-shiel"] = {
["faction"] = "Horde",
["mapID"] = 1420,
["name"] = "Abigail Shiel",
["x"] = 61.0,
["y"] = 52.4,
["zone"] = Z["TIRISFAL_GLADES"]
},
["adele-fielder"] = {
["faction"] = "Alliance",
["mapID"] = 1429,
["name"] = "Adele Fielder",
["x"] = 46.4,
["y"] = 62.1,
["zone"] = Z["ELWYNN_FOREST"]
},
["arthur-moore"] = {
["faction"] = "Horde",
["mapID"] = 1458,
["name"] = "Arthur Moore",
["x"] = 70.2,
["y"] = 57.6,
["zone"] = Z["UNDERCITY"]
},
["bombus-finespindle"] = {
["faction"] = "Alliance",
["mapID"] = 1455,
["name"] = "Bombus Finespindle",
["x"] = 39.3,
["y"] = 34.1,
["zone"] = Z["IRONFORGE"]
},
["chaw-stronghide"] = {
["faction"] = "Horde",
["mapID"] = 1412,
["name"] = "Chaw Stronghide",
["x"] = 45.0,
["y"] = 61.5,
["zone"] = Z["MULGORE"]
},
["dan-golthas"] = {
["faction"] = "Horde",
["mapID"] = 1458,
["name"] = "Dan Golthas",
["x"] = 70.8,
["y"] = 58.6,
["zone"] = Z["UNDERCITY"]
},
["darianna"] = {
["faction"] = "Alliance",
["mapID"] = 1457,
["name"] = "Darianna",
["x"] = 64.5,
["y"] = 21.0,
["zone"] = Z["DARNASSUS"]
},
["drakk-stonehand"] = {
["faction"] = "Alliance",
["mapID"] = 1425,
["name"] = "Drakk Stonehand",
["x"] = 13.4,
["y"] = 43.3,
["zone"] = Z["THE_HINTERLANDS"]
},
["emerii-tallgust"] = {
["faction"] = "Neutral",
["mapID"] = 2521,
["name"] = "Emerii Tallgust",
["x"] = 63.8,
["y"] = 80.6,
["zone"] = Z["ZEPHRAS_ISLE"]
},
["faldron"] = {
["faction"] = "Alliance",
["mapID"] = 1457,
["name"] = "Faldron",
["x"] = 64.9,
["y"] = 21.6,
["zone"] = Z["DARNASSUS"]
},
["fimble-finespindle"] = {
["faction"] = "Alliance",
["mapID"] = 1455,
["name"] = "Fimble Finespindle",
["x"] = 40.2,
["y"] = 33.7,
["zone"] = Z["IRONFORGE"]
},
["gretta-finespindle"] = {
["faction"] = "Alliance",
["mapID"] = 1455,
["name"] = "Gretta Finespindle",
["x"] = 39.0,
["y"] = 32.7,
["zone"] = Z["IRONFORGE"]
},
["hahrana-ironhide"] = {
["faction"] = "Horde",
["mapID"] = 1444,
["name"] = "Hahrana Ironhide",
["x"] = 74.4,
["y"] = 43.1,
["zone"] = Z["FERALAS"]
},
["hammon-karwn"] = {
["faction"] = "Alliance",
["mapID"] = 1417,
["name"] = "Hammon Karwn",
["x"] = 46.3,
["y"] = 47.4,
["zone"] = Z["ARATHI_HIGHLANDS"]
},
["indari-sunseam"] = {
["faction"] = "Neutral",
["mapID"] = 2521,
["name"] = "Indari Sunseam",
["x"] = 44.7,
["y"] = 44.5,
["zone"] = Z["ZEPHRAS_ISLE"]
},
["jandia"] = {
["faction"] = "Horde",
["mapID"] = 1441,
["name"] = "Jandia",
["x"] = 46.2,
["y"] = 51.5,
["zone"] = Z["THOUSAND_NEEDLES"]
},
["jillian-tanner"] = {
["faction"] = "Alliance",
["mapID"] = 1453,
["name"] = "Jillian Tanner",
["x"] = 71.7,
["y"] = 62.7,
["zone"] = Z["STORMWIND_CITY"]
},
["joseph-moore"] = {
["faction"] = "Horde",
["mapID"] = 1458,
["name"] = "Joseph Moore",
["x"] = 70.2,
["y"] = 59.1,
["zone"] = Z["UNDERCITY"]
},
["kamari"] = {
["faction"] = "Horde",
["mapID"] = 1454,
["name"] = "Kamari",
["x"] = 63.2,
["y"] = 44.6,
["zone"] = Z["ORGRIMMAR"]
},
["karolek"] = {
["faction"] = "Horde",
["mapID"] = 1454,
["name"] = "Karolek",
["x"] = 62.7,
["y"] = 44.4,
["zone"] = Z["ORGRIMMAR"]
},
["keena"] = {
["faction"] = "Horde",
["mapID"] = 1417,
["name"] = "Keena",
["x"] = 74.0,
["y"] = 32.8,
["zone"] = Z["ARATHI_HIGHLANDS"]
},
["lardan"] = {
["faction"] = "Alliance",
["mapID"] = 1440,
["name"] = "Lardan",
["x"] = 34.8,
["y"] = 49.8,
["zone"] = Z["ASHENVALE"]
},
["mak"] = {
["faction"] = "Horde",
["mapID"] = 1456,
["name"] = "Mak",
["x"] = 42.2,
["y"] = 43.1,
["zone"] = Z["THUNDER_BLUFF"]
},
["nadyia-maneweaver"] = {
["faction"] = "Alliance",
["mapID"] = 1438,
["name"] = "Nadyia Maneweaver",
["x"] = 41.8,
["y"] = 49.4,
["zone"] = Z["TELDRASSIL"]
},
["randal-worth"] = {
["faction"] = "Alliance",
["mapID"] = 1453,
["name"] = "Randal Worth",
["x"] = 72.2,
["y"] = 62.8,
["zone"] = Z["STORMWIND_CITY"]
},
["saenorion"] = {
["faction"] = "Alliance",
["mapID"] = 1457,
["name"] = "Saenorion",
["x"] = 63.5,
["y"] = 22.6,
["zone"] = Z["DARNASSUS"]
},
["shelene-rhobart"] = {
["faction"] = "Horde",
["mapID"] = 1420,
["name"] = "Shelene Rhobart",
["x"] = 65.4,
["y"] = 60.1,
["zone"] = Z["TIRISFAL_GLADES"]
},
["simon-tanner"] = {
["faction"] = "Alliance",
["mapID"] = 1453,
["name"] = "Simon Tanner",
["x"] = 71.7,
["y"] = 62.9,
["zone"] = Z["STORMWIND_CITY"]
},
["tamar"] = {
["faction"] = "Horde",
["mapID"] = 1454,
["name"] = "Tamar",
["x"] = 63.0,
["y"] = 45.5,
["zone"] = Z["ORGRIMMAR"]
},
["tarn"] = {
["faction"] = "Horde",
["mapID"] = 1456,
["name"] = "Tarn",
["x"] = 42.5,
["y"] = 42.9,
["zone"] = Z["THUNDER_BLUFF"]
},
["telonis"] = {
["faction"] = "Alliance",
["mapID"] = 1457,
["name"] = "Telonis",
["x"] = 64.4,
["y"] = 21.5,
["zone"] = Z["DARNASSUS"]
},
["tharynn-bouden"] = {
["faction"] = "Alliance",
["mapID"] = 1429,
["name"] = "Tharynn Bouden",
["x"] = 41.9,
["y"] = 67.1,
["zone"] = Z["ELWYNN_FOREST"]
},
["una"] = {
["faction"] = "Horde",
["mapID"] = 1456,
["name"] = "Una",
["x"] = 41.7,
["y"] = 42.7,
["zone"] = Z["THUNDER_BLUFF"]
}
},
["materialNames"] = {
[1206] = "Moss Agate",
[2318] = "Light Leather",
[2319] = "Medium Leather",
[2320] = "Coarse Thread",
[2321] = "Fine Thread",
[2934] = "Ruined Leather Scraps",
[4231] = "Cured Light Hide",
[4232] = "Medium Hide",
[4233] = "Cured Medium Hide",
[4234] = "Heavy Leather",
[4235] = "Heavy Hide",
[4236] = "Cured Heavy Hide",
[4246] = "Fine Leather Belt",
[4289] = "Salt",
[4291] = "Silken Thread",
[4304] = "Thick Leather",
[4340] = "Gray Dye",
[5973] = "Pattern: Barbaric Leggings",
[7071] = "Iron Buckle",
[783] = "Light Hide"
},
["materialSources"] = {
[1206] = {
["kind"] = "mining",
["note"] = "Look for Moss Agate while mining, or buy it at the Auction House.",
["zones"] = {
Z["HILLSBRAD_FOOTHILLS"],
Z["ASHENVALE"],
Z["WETLANDS"]
}
},
[2318] = {
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops. Higher leather tiers may be difficult to access during the beta.",
["zones"] = {
Z["THE_BARRENS"],
Z["DARKSHORE"],
Z["SILVERPINE_FOREST"]
}
},
[2319] = {
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops. Higher leather tiers may be difficult to access during the beta.",
["zones"] = {
Z["WETLANDS"],
Z["ASHENVALE"]
}
},
[2320] = {
["kind"] = "supply"
},
[2321] = {
["kind"] = "supply"
},
[2934] = {
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops. Higher leather tiers may be difficult to access during the beta.",
["zones"] = {
Z["ELWYNN_FOREST"],
Z["MULGORE"]
}
},
[4231] = {
["kind"] = "craft",
["note"] = "Use the cured hides saved from the Light Hide preparation.",
["spellID"] = 3816,
["stepID"] = "30-55"
},
[4232] = {
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops. Higher leather tiers may be difficult to access during the beta.",
["zones"] = {
Z["WETLANDS"],
Z["ASHENVALE"]
}
},
[4233] = {
["kind"] = "craft",
["note"] = "Use the ten cured hides prepared at 80-90.",
["spellID"] = 3817,
["stepID"] = "80-90"
},
[4234] = {
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops. Higher leather tiers may be difficult to access during the beta.",
["zones"] = {
Z["STRANGLETHORN_VALE"]
}
},
[4235] = {
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops. Higher leather tiers may be difficult to access during the beta.",
["zones"] = {
Z["STRANGLETHORN_VALE"]
}
},
[4236] = {
["ingredients"] = {
{
4235,
1
},
{
4289,
3
}
},
["kind"] = "craft",
["note"] = "Cure one Heavy Hide with three Salt for each additional Cured Heavy Hide. Extra preparation for 175-195 is included in the shopping totals.",
["outputCount"] = 1,
["spellID"] = 3818,
["stepID"] = "175-195"
},
[4246] = {
["kind"] = "craft",
["note"] = "Use ten belts saved from 90-100.",
["spellID"] = 3763,
["stepID"] = "90-100"
},
[4289] = {
["kind"] = "supply"
},
[4291] = {
["kind"] = "supply"
},
[4304] = {
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops. Higher leather tiers may be difficult to access during the beta.",
["zones"] = {
Z["DUSTWALLOW_MARSH"],
Z["STRANGLETHORN_VALE"]
}
},
[4340] = {
["kind"] = "supply"
},
[5973] = {
["kind"] = "supply"
},
[7071] = {
["kind"] = "auction",
["note"] = "Iron Buckles are made by Blacksmiths (Iron Buckle, spell 8768). Buy the finished buckles from a Blacksmith or the Auction House."
},
[783] = {
["kind"] = "skinning",
["note"] = "Light Hides can come from skinning suitable beasts. Hides are not guaranteed; buy any shortfall from other players.",
["zones"] = {
Z["ELWYNN_FOREST"],
Z["MULGORE"],
Z["DUN_MOROGH"]
}
}
},
["maxSkill"] = 225,
["menuTitle"] = "No Heavy hides (130-175)",
["minSkill"] = 1,
["setupItems"] = {

},
["shoppingRequirements"] = {

},
["source"] = "https://www.wow-professions.com/forever/leatherworking-leveling-guide",
["sourceDate"] = "2026-10-25",
["sourceHash"] = "6c48063941f973208dde7a24d4e6c59a90f055ea249c5a1723e39dd6fe6a4374",
["supplies"] = {
{
["faction"] = "Horde",
["id"] = "abigail-shiel",
["items"] = {
[2320] = true,
[4289] = true
},
["mapID"] = 1420,
["name"] = "Abigail Shiel",
["x"] = 61.0,
["y"] = 52.4,
["zone"] = Z["TIRISFAL_GLADES"]
},
{
["faction"] = "Alliance",
["id"] = "bombus-finespindle",
["items"] = {
[2320] = true,
[2321] = true,
[4289] = true,
[4291] = true,
[4340] = true
},
["mapID"] = 1455,
["name"] = "Bombus Finespindle",
["x"] = 39.3,
["y"] = 34.1,
["zone"] = Z["IRONFORGE"]
},
{
["faction"] = "Alliance",
["id"] = "hammon-karwn",
["items"] = {
[5973] = true
},
["mapID"] = 1417,
["name"] = "Hammon Karwn",
["x"] = 46.3,
["y"] = 47.4,
["zone"] = Z["ARATHI_HIGHLANDS"]
},
{
["faction"] = "Horde",
["id"] = "jandia",
["items"] = {
[2320] = true,
[2321] = true,
[4289] = true,
[4291] = true,
[5973] = true
},
["mapID"] = 1441,
["name"] = "Jandia",
["x"] = 46.2,
["y"] = 51.5,
["zone"] = Z["THOUSAND_NEEDLES"]
},
{
["faction"] = "Alliance",
["id"] = "jillian-tanner",
["items"] = {
[2320] = true,
[2321] = true,
[4289] = true,
[4291] = true,
[4340] = true
},
["mapID"] = 1453,
["name"] = "Jillian Tanner",
["x"] = 71.7,
["y"] = 62.7,
["zone"] = Z["STORMWIND_CITY"]
},
{
["faction"] = "Horde",
["id"] = "joseph-moore",
["items"] = {
[2320] = true,
[2321] = true,
[4289] = true,
[4291] = true,
[4340] = true
},
["mapID"] = 1458,
["name"] = "Joseph Moore",
["x"] = 70.2,
["y"] = 59.1,
["zone"] = Z["UNDERCITY"]
},
{
["faction"] = "Horde",
["id"] = "keena",
["items"] = {
[5973] = true
},
["mapID"] = 1417,
["name"] = "Keena",
["x"] = 74.0,
["y"] = 32.8,
["zone"] = Z["ARATHI_HIGHLANDS"]
},
{
["faction"] = "Alliance",
["id"] = "lardan",
["items"] = {
[2320] = true,
[2321] = true,
[4289] = true,
[4291] = true,
[4340] = true,
[5973] = true
},
["mapID"] = 1440,
["name"] = "Lardan",
["x"] = 34.8,
["y"] = 49.8,
["zone"] = Z["ASHENVALE"]
},
{
["faction"] = "Alliance",
["id"] = "saenorion",
["items"] = {
[2320] = true,
[2321] = true,
[4289] = true,
[4291] = true,
[4340] = true
},
["mapID"] = 1457,
["name"] = "Saenorion",
["x"] = 63.5,
["y"] = 22.6,
["zone"] = Z["DARNASSUS"]
},
{
["faction"] = "Horde",
["id"] = "tamar",
["items"] = {
[2320] = true,
[2321] = true,
[4289] = true,
[4291] = true,
[4340] = true
},
["mapID"] = 1454,
["name"] = "Tamar",
["x"] = 63.0,
["y"] = 45.5,
["zone"] = Z["ORGRIMMAR"]
},
{
["faction"] = "Alliance",
["id"] = "tharynn-bouden",
["items"] = {
[2320] = true,
[4289] = true
},
["mapID"] = 1429,
["name"] = "Tharynn Bouden",
["x"] = 41.9,
["y"] = 67.1,
["zone"] = Z["ELWYNN_FOREST"]
}
},
["title"] = "Leatherworking Guide",
["tools"] = {

}
}
}
module.GuideOrder = {
"medium-hides-no-heavy-hides-beta",
"medium-hides-heavy-hides-beta"
}
module.Guide = module.Guides[module.GuideOrder[1]]
