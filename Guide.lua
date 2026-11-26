-- Generated candidate; review before replacing the installed module guide.
local _, private = ...
local addon = private.addon
if not addon then return end
local module = addon:GetModule(private.module_name)
local Z = addon.constants.ZONE_NAMES
module.Guides = {
["medium-hides-no-heavy-hides-beta"] = {
["chapters"] = {
{
["training"] = {
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
["level"] = 0,
["skill"] = 0,
["rank"] = "Apprentice Leatherworking"
},
["title"] = "Apprentice",
["from"] = 1,
["id"] = "apprentice",
["to"] = 60,
["steps"] = {
{
["id"] = "1-30",
["from"] = 1,
["to"] = 30,
["note"] = "Save the Light Leather you make for later recipes.",
["variants"] = {
{
["spellID"] = 2881,
["title"] = "Light Leather",
["count"] = 35,
["materials"] = {
{
2934,
105
}
},
["outputCount"] = 1,
["outputItemID"] = 2318
}
}
},
{
["id"] = "30-50",
["from"] = 30,
["to"] = 50,
["note"] = "Cure all 20 Light Hides and keep them for Embossed Leather Pants at 60. If you are short on hides, you can use Light Armor Kits until 45 and Embossed Leather Gloves until 50. Budget those materials separately.",
["variants"] = {
{
["spellID"] = 3816,
["title"] = "Cured Light Hide",
["count"] = 20,
["materials"] = {
{
783,
20
},
{
4289,
20
}
},
["outputCount"] = 1,
["outputItemID"] = 4231
}
}
},
{
["id"] = "50-60",
["from"] = 50,
["to"] = 60,
["note"] = "Start making Embossed Leather Gloves and train Journeyman before passing 75.",
["variants"] = {
{
["spellID"] = 3756,
["title"] = "Embossed Leather Gloves",
["count"] = 10,
["materials"] = {
{
2318,
30
},
{
2320,
20
}
}
}
}
}
}
},
{
["training"] = {
["locationIDs"] = {
"karolek",
"arthur-moore",
"tarn",
"simon-tanner",
"fimble-finespindle",
"faldron"
},
["level"] = 10,
["skill"] = 50,
["rank"] = "Journeyman Leatherworking"
},
["title"] = "Journeyman",
["from"] = 60,
["id"] = "journeyman",
["to"] = 130,
["steps"] = {
{
["id"] = "60-80",
["from"] = 60,
["to"] = 80,
["note"] = "Use the 20 Cured Light Hides saved at 30-50. If needed, use Embossed Leather Gloves instead and adjust the shopping list.",
["variants"] = {
{
["spellID"] = 3759,
["title"] = "Embossed Leather Pants",
["count"] = 20,
["materials"] = {
{
2318,
120
},
{
2320,
40
},
{
4231,
20
}
}
}
}
},
{
["id"] = "80-95",
["from"] = 80,
["to"] = 95,
["note"] = "Save all 20 Cured Medium Hides for Dark Leather Belts at 105.",
["variants"] = {
{
["spellID"] = 3817,
["title"] = "Cured Medium Hide",
["count"] = 20,
["materials"] = {
{
4232,
20
},
{
4289,
20
}
},
["outputCount"] = 1,
["outputItemID"] = 4233
}
}
},
{
["id"] = "95-105",
["from"] = 95,
["to"] = 105,
["note"] = "Save 20 of these Fine Leather Belts for the next step.",
["variants"] = {
{
["spellID"] = 3763,
["title"] = "Fine Leather Belt",
["count"] = 22,
["materials"] = {
{
2318,
132
},
{
2320,
44
}
},
["outputCount"] = 1,
["outputItemID"] = 4246
}
}
},
{
["id"] = "105-125",
["from"] = 105,
["to"] = 125,
["note"] = "Use the saved belts and cured hides. Buy Gray Dye and Fine Thread from a supplies vendor.",
["variants"] = {
{
["spellID"] = 3766,
["title"] = "Dark Leather Belt",
["count"] = 20,
["materials"] = {
{
2321,
40
},
{
4233,
20
},
{
4246,
20
},
{
4340,
20
}
}
}
}
},
{
["id"] = "125-130",
["from"] = 125,
["to"] = 130,
["note"] = "Train Expert at skill 125 and character level 20. Keep the Heavy Leather you make.",
["variants"] = {
{
["spellID"] = 20649,
["title"] = "Heavy Leather",
["count"] = 7,
["materials"] = {
{
2319,
35
}
},
["outputCount"] = 1,
["outputItemID"] = 4234
}
}
}
}
},
{
["training"] = {
["locationIDs"] = {
"una",
"telonis"
},
["cost"] = "50s",
["level"] = 20,
["skill"] = 125,
["rank"] = "Expert Leatherworking"
},
["title"] = "Expert",
["from"] = 130,
["id"] = "expert",
["to"] = 205,
["steps"] = {
{
["id"] = "130-143",
["from"] = 130,
["to"] = 143,
["note"] = "Cure and save all 25 Heavy Hides. Reserve 15 for Barbaric Shoulders and 10 for Guardian Gloves.",
["variants"] = {
{
["spellID"] = 3818,
["title"] = "Cured Heavy Hide",
["count"] = 25,
["materials"] = {
{
4235,
25
},
{
4289,
75
}
},
["outputCount"] = 1,
["outputItemID"] = 4236
}
}
},
{
["id"] = "143-150",
["from"] = 143,
["to"] = 150,
["note"] = "Use Medium Leather and Fine Thread to reach 150.",
["variants"] = {
{
["spellID"] = 3764,
["title"] = "Hillman's Leather Gloves",
["count"] = 8,
["materials"] = {
{
2319,
112
},
{
2321,
32
}
}
}
}
},
{
["id"] = "150-165",
["from"] = 150,
["to"] = 165,
["note"] = "Use 15 of your Cured Heavy Hides. Barbaric Leggings are an alternative if you have the pattern, Heavy Leather and Moss Agate.",
["variants"] = {
{
["spellID"] = 7151,
["title"] = "Barbaric Shoulders",
["count"] = 15,
["materials"] = {
{
2321,
30
},
{
4234,
120
},
{
4236,
15
}
}
}
}
},
{
["id"] = "165-175",
["from"] = 165,
["to"] = 175,
["note"] = "Use the last 10 Cured Heavy Hides for Guardian Gloves. If you have no hides left, you can start making Barbaric Harnesses now.",
["variants"] = {
{
["spellID"] = 7156,
["title"] = "Guardian Gloves",
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
}
}
}
},
{
["id"] = "175-185",
["from"] = 175,
["to"] = 185,
["note"] = "Buy Iron Buckles from a Blacksmith or the Auction House. Choose Thick Armor Kit if Thick Leather is easier to obtain.",
["variants"] = {
{
["spellID"] = 6661,
["title"] = "Barbaric Harness",
["count"] = 10,
["materials"] = {
{
2321,
20
},
{
4234,
140
},
{
7071,
10
}
}
},
{
["spellID"] = 10487,
["title"] = "Thick Armor Kit",
["count"] = 10,
["materials"] = {
{
4291,
10
},
{
4304,
50
}
}
}
}
},
{
["id"] = "185-205",
["from"] = 185,
["to"] = 205,
["note"] = "Make Nightscape Headbands. Train Artisan at skill 200 and character level 35 before moving on to Nightscape Pants.",
["variants"] = {
{
["spellID"] = 10507,
["title"] = "Nightscape Headband",
["count"] = 22,
["materials"] = {
{
4291,
44
},
{
4304,
110
}
}
}
}
}
}
},
{
["training"] = {
["locationIDs"] = {
"hahrana-ironhide",
"drakk-stonehand"
},
["note"] = "Learn Nightscape Pants at 205 from Hahrana Ironhide or Drakk Stonehand. The Expert trainers in Thunder Bluff and Darnassus do not teach it.",
["level"] = 35,
["skill"] = 200,
["rank"] = "Artisan Leatherworking"
},
["title"] = "Artisan",
["from"] = 205,
["id"] = "artisan",
["to"] = 300,
["steps"] = {
{
["id"] = "205-235",
["from"] = 205,
["to"] = 235,
["note"] = "Learn Nightscape Pants from Hahrana Ironhide or Drakk Stonehand. You can choose a specialization at level 40 and Leatherworking 225.",
["variants"] = {
{
["spellID"] = 10548,
["title"] = "Nightscape Pants",
["count"] = 36,
["materials"] = {
{
4291,
144
},
{
4304,
504
}
}
}
}
},
{
["id"] = "235-265",
["from"] = 235,
["to"] = 265,
["note"] = "Buy the bind-on-pickup Wicked Leather Gauntlets pattern from Werg Thickblade or Leonard Porter. Blue Suede Shoes use the same amount of Rugged Leather. Check the Auction House or farm the pattern from Dark Iron Taskmasters in Searing Gorge.",
["variants"] = {
{
["spellID"] = 19049,
["title"] = "Wicked Leather Gauntlets",
["count"] = 36,
["materials"] = {
{
2325,
36
},
{
8170,
288
},
{
14341,
36
}
},
["recipeItemID"] = 15725,
["shoppingRequirements"] = {
{
15725,
1
}
}
},
{
["spellID"] = 1255048,
["title"] = "Blue Suede Shoes",
["count"] = 36,
["materials"] = {
{
6260,
36
},
{
8170,
288
},
{
14341,
36
}
},
["recipeItemID"] = 252859,
["shoppingRequirements"] = {
{
252859,
1
}
}
}
}
},
{
["id"] = "265-300",
["from"] = 265,
["to"] = 300,
["note"] = "Buy the Runic Leather Headband pattern from Jase Farlane at Light's Hope Chapel. The recipe turns yellow at 285 and green at 295. If you have the patterns, you can switch to Blue Suede Bracers at 275 or Blue Suede Hat at 280. The hat needs a Sewing Machine placed by a leatherworker with skill 300. Budget those alternatives separately.",
["variants"] = {
{
["spellID"] = 19082,
["title"] = "Runic Leather Headband",
["count"] = 49,
["materials"] = {
{
8170,
686
},
{
14047,
490
},
{
14341,
49
}
},
["recipeItemID"] = 15756,
["shoppingRequirements"] = {
{
15756,
1
}
}
}
}
}
}
}
},
["id"] = "forever-leatherworking-1-225-medium-hides-no-heavy-hides-beta",
["introduction"] = "Keep the listed intermediate materials for later steps. The route uses Light, Medium and Heavy Hides. Craft counts are estimates; stop when you reach each target.",
["label"] = "Leatherworking Guide",
["locations"] = {
[11097] = {
["y"] = 43.3,
["mapID"] = 1425,
["name"] = "Drakk Stonehand",
["faction"] = "Alliance",
["zone"] = Z["THE_HINTERLANDS"],
["x"] = 13.4
},
[11098] = {
["y"] = 43.1,
["mapID"] = 1444,
["name"] = "Hahrana Ironhide",
["faction"] = "Horde",
["zone"] = Z["FERALAS"],
["x"] = 74.4
},
[251993] = {
["y"] = 44.5,
["mapID"] = 2521,
["name"] = "Indari Sunseam",
["faction"] = "Neutral",
["zone"] = Z["ZEPHRAS_ISLE"],
["x"] = 44.7
},
["tarn"] = {
["y"] = 43.0,
["mapID"] = 1456,
["name"] = "Tarn",
["faction"] = "Horde",
["zone"] = Z["THUNDER_BLUFF"],
["x"] = 42.1
},
["jillian-tanner"] = {
["y"] = 62.7,
["mapID"] = 1453,
["name"] = "Jillian Tanner",
["faction"] = "Alliance",
["zone"] = Z["STORMWIND_CITY"],
["x"] = 71.7
},
["nadyia-maneweaver"] = {
["y"] = 49.5,
["mapID"] = 1438,
["name"] = "Nadyia Maneweaver",
["faction"] = "Alliance",
["zone"] = Z["TELDRASSIL"],
["x"] = 41.8
},
[5127] = {
["y"] = 33.7,
["mapID"] = 1455,
["name"] = "Fimble Finespindle",
["faction"] = "Alliance",
["zone"] = Z["IRONFORGE"],
["x"] = 40.2
},
["emerii-tallgust"] = {
["y"] = 80.6,
["mapID"] = 2521,
["name"] = "Emerii Tallgust",
["faction"] = "Neutral",
["zone"] = Z["ZEPHRAS_ISLE"],
["x"] = 63.8
},
["simon-tanner"] = {
["y"] = 62.9,
["mapID"] = 1453,
["name"] = "Simon Tanner",
["faction"] = "Alliance",
["zone"] = Z["STORMWIND_CITY"],
["x"] = 71.7
},
[3549] = {
["y"] = 60.1,
["mapID"] = 1420,
["name"] = "Shelene Rhobart",
["faction"] = "Horde",
["zone"] = Z["TIRISFAL_GLADES"],
["x"] = 65.4
},
["drakk-stonehand"] = {
["y"] = 43.3,
["mapID"] = 1425,
["name"] = "Drakk Stonehand",
["faction"] = "Alliance",
["zone"] = Z["THE_HINTERLANDS"],
["x"] = 13.4
},
[3069] = {
["y"] = 61.5,
["mapID"] = 1412,
["name"] = "Chaw Stronghide",
["faction"] = "Horde",
["zone"] = Z["MULGORE"],
["x"] = 45.0
},
[3605] = {
["y"] = 49.5,
["mapID"] = 1438,
["name"] = "Nadyia Maneweaver",
["faction"] = "Alliance",
["zone"] = Z["TELDRASSIL"],
["x"] = 41.8
},
[3007] = {
["y"] = 42.6,
["mapID"] = 1456,
["name"] = "Una",
["faction"] = "Horde",
["zone"] = Z["THUNDER_BLUFF"],
["x"] = 41.7
},
["dan-golthas"] = {
["y"] = 58.6,
["mapID"] = 1458,
["name"] = "Dan Golthas",
["faction"] = "Horde",
["zone"] = Z["UNDERCITY"],
["x"] = 70.8
},
["chaw-stronghide"] = {
["y"] = 61.5,
["mapID"] = 1412,
["name"] = "Chaw Stronghide",
["faction"] = "Horde",
["zone"] = Z["MULGORE"],
["x"] = 45.0
},
["hahrana-ironhide"] = {
["y"] = 43.1,
["mapID"] = 1444,
["name"] = "Hahrana Ironhide",
["faction"] = "Horde",
["zone"] = Z["FERALAS"],
["x"] = 74.4
},
[12941] = {
["y"] = 48.1,
["mapID"] = 1423,
["name"] = "Jase Farlane",
["faction"] = "Neutral",
["zone"] = Z["EASTERN_PLAGUELANDS"],
["x"] = 70.8
},
[12942] = {
["y"] = 84.3,
["mapID"] = 1422,
["name"] = "Leonard Porter",
["faction"] = "Alliance",
["zone"] = Z["WESTERN_PLAGUELANDS"],
["x"] = 43.1
},
["indari-sunseam"] = {
["y"] = 44.5,
["mapID"] = 2521,
["name"] = "Indari Sunseam",
["faction"] = "Neutral",
["zone"] = Z["ZEPHRAS_ISLE"],
["x"] = 44.7
},
[12943] = {
["y"] = 69.7,
["mapID"] = 1420,
["name"] = "Werg Thickblade",
["faction"] = "Horde",
["zone"] = Z["TIRISFAL_GLADES"],
["x"] = 83.2
},
["una"] = {
["y"] = 42.6,
["mapID"] = 1456,
["name"] = "Una",
["faction"] = "Horde",
["zone"] = Z["THUNDER_BLUFF"],
["x"] = 41.7
},
["tharynn-bouden"] = {
["y"] = 67.1,
["mapID"] = 1429,
["name"] = "Tharynn Bouden",
["faction"] = "Alliance",
["zone"] = Z["ELWYNN_FOREST"],
["x"] = 41.9
},
["fimble-finespindle"] = {
["y"] = 33.7,
["mapID"] = 1455,
["name"] = "Fimble Finespindle",
["faction"] = "Alliance",
["zone"] = Z["IRONFORGE"],
["x"] = 40.2
},
["adele-fielder"] = {
["y"] = 62.1,
["mapID"] = 1429,
["name"] = "Adele Fielder",
["faction"] = "Alliance",
["zone"] = Z["ELWYNN_FOREST"],
["x"] = 46.4
},
["gretta-finespindle"] = {
["y"] = 32.7,
["mapID"] = 1455,
["name"] = "Gretta Finespindle",
["faction"] = "Alliance",
["zone"] = Z["IRONFORGE"],
["x"] = 39.0
},
["shelene-rhobart"] = {
["y"] = 60.1,
["mapID"] = 1420,
["name"] = "Shelene Rhobart",
["faction"] = "Horde",
["zone"] = Z["TIRISFAL_GLADES"],
["x"] = 65.4
},
["faldron"] = {
["y"] = 21.6,
["mapID"] = 1457,
["name"] = "Faldron",
["faction"] = "Alliance",
["zone"] = Z["DARNASSUS"],
["x"] = 64.9
},
["kamari"] = {
["y"] = 44.6,
["mapID"] = 1454,
["name"] = "Kamari",
["faction"] = "Horde",
["zone"] = Z["ORGRIMMAR"],
["x"] = 63.2
},
["saenorion"] = {
["y"] = 22.6,
["mapID"] = 1457,
["name"] = "Saenorion",
["faction"] = "Alliance",
["zone"] = Z["DARNASSUS"],
["x"] = 63.5
},
["bombus-finespindle"] = {
["y"] = 34.1,
["mapID"] = 1455,
["name"] = "Bombus Finespindle",
["faction"] = "Alliance",
["zone"] = Z["IRONFORGE"],
["x"] = 39.3
},
["randal-worth"] = {
["y"] = 62.8,
["mapID"] = 1453,
["name"] = "Randal Worth",
["faction"] = "Alliance",
["zone"] = Z["STORMWIND_CITY"],
["x"] = 72.2
},
["mak"] = {
["y"] = 43.3,
["mapID"] = 1456,
["name"] = "Mak",
["faction"] = "Horde",
["zone"] = Z["THUNDER_BLUFF"],
["x"] = 42.2
},
["darianna"] = {
["y"] = 21.0,
["mapID"] = 1457,
["name"] = "Darianna",
["faction"] = "Alliance",
["zone"] = Z["DARNASSUS"],
["x"] = 64.5
},
["karolek"] = {
["y"] = 44.3,
["mapID"] = 1454,
["name"] = "Karolek",
["faction"] = "Horde",
["zone"] = Z["ORGRIMMAR"],
["x"] = 62.8
},
["joseph-moore"] = {
["y"] = 59.1,
["mapID"] = 1458,
["name"] = "Joseph Moore",
["faction"] = "Horde",
["zone"] = Z["UNDERCITY"],
["x"] = 70.2
},
["telonis"] = {
["y"] = 21.5,
["mapID"] = 1457,
["name"] = "Telonis",
["faction"] = "Alliance",
["zone"] = Z["DARNASSUS"],
["x"] = 64.4
},
[3365] = {
["y"] = 44.3,
["mapID"] = 1454,
["name"] = "Karolek",
["faction"] = "Horde",
["zone"] = Z["ORGRIMMAR"],
["x"] = 62.8
},
["arthur-moore"] = {
["y"] = 57.6,
["mapID"] = 1458,
["name"] = "Arthur Moore",
["faction"] = "Horde",
["zone"] = Z["UNDERCITY"],
["x"] = 70.2
},
[5564] = {
["y"] = 62.9,
["mapID"] = 1453,
["name"] = "Simon Tanner",
["faction"] = "Alliance",
["zone"] = Z["STORMWIND_CITY"],
["x"] = 71.7
},
["tamar"] = {
["y"] = 45.5,
["mapID"] = 1454,
["name"] = "Tamar",
["faction"] = "Horde",
["zone"] = Z["ORGRIMMAR"],
["x"] = 63.1
},
[4588] = {
["y"] = 57.6,
["mapID"] = 1458,
["name"] = "Arthur Moore",
["faction"] = "Horde",
["zone"] = Z["UNDERCITY"],
["x"] = 70.2
},
["abigail-shiel"] = {
["y"] = 52.4,
["mapID"] = 1420,
["name"] = "Abigail Shiel",
["faction"] = "Horde",
["zone"] = Z["TIRISFAL_GLADES"],
["x"] = 61.0
},
[4212] = {
["y"] = 21.5,
["mapID"] = 1457,
["name"] = "Telonis",
["faction"] = "Alliance",
["zone"] = Z["DARNASSUS"],
["x"] = 64.4
},
[1632] = {
["y"] = 62.1,
["mapID"] = 1429,
["name"] = "Adele Fielder",
["faction"] = "Alliance",
["zone"] = Z["ELWYNN_FOREST"],
["x"] = 46.4
}
},
["materialNames"] = {
[4234] = "Heavy Leather",
[4304] = "Thick Leather",
[4246] = "Fine Leather Belt",
[7071] = "Iron Buckle",
[4289] = "Salt",
[2319] = "Medium Leather",
[2321] = "Fine Thread",
[2325] = "Black Dye",
[4340] = "Gray Dye",
[15725] = "Pattern: Wicked Leather Gauntlets",
[4232] = "Medium Hide",
[4236] = "Cured Heavy Hide",
[2934] = "Ruined Leather Scraps",
[8170] = "Rugged Leather",
[2318] = "Light Leather",
[2320] = "Coarse Thread",
[783] = "Light Hide",
[4291] = "Silken Thread",
[14341] = "Rune Thread",
[4235] = "Heavy Hide",
[14047] = "Runecloth",
[4233] = "Cured Medium Hide",
[4231] = "Cured Light Hide",
[15756] = "Pattern: Runic Leather Headband",
[6260] = "Blue Dye",
[252859] = "Pattern: Blue Suede Shoes"
},
["materialSources"] = {
[4234] = {
["zones"] = {
Z["STRANGLETHORN_VALE"]
},
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops."
},
[4304] = {
["zones"] = {
Z["DUSTWALLOW_MARSH"],
Z["STRANGLETHORN_VALE"]
},
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops."
},
[4246] = {
["note"] = "Use 20 belts saved from 95-105.",
["kind"] = "craft",
["stepID"] = "95-105",
["spellID"] = 3763
},
[7071] = {
["note"] = "Iron Buckles are made by Blacksmiths (Iron Buckle, spell 8768). Buy the finished buckles from a Blacksmith or the Auction House.",
["kind"] = "auction"
},
[4289] = {
["kind"] = "supply"
},
[2319] = {
["zones"] = {
Z["WETLANDS"],
Z["ASHENVALE"]
},
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops."
},
[2321] = {
["kind"] = "supply"
},
[2325] = {
["kind"] = "supply"
},
[4340] = {
["kind"] = "supply"
},
[15725] = {
["kind"] = "supply"
},
[4232] = {
["zones"] = {
Z["WETLANDS"],
Z["ASHENVALE"]
},
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops."
},
[4236] = {
["note"] = "Reserve the 25 cured hides from 130-143 for Barbaric Shoulders and Guardian Gloves.",
["stepID"] = "130-143",
["outputCount"] = 1,
["kind"] = "craft",
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
["spellID"] = 3818
},
[2934] = {
["zones"] = {
Z["ELWYNN_FOREST"],
Z["MULGORE"]
},
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops."
},
[8170] = {
["zones"] = {
Z["WINTERSPRING"],
Z["EASTERN_PLAGUELANDS"]
},
["kind"] = "skinning",
["note"] = "Skin high-level beasts or buy Rugged Leather at the Auction House."
},
[2318] = {
["zones"] = {
Z["THE_BARRENS"],
Z["DARKSHORE"],
Z["SILVERPINE_FOREST"]
},
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops."
},
[2320] = {
["kind"] = "supply"
},
[783] = {
["zones"] = {
Z["ELWYNN_FOREST"],
Z["MULGORE"],
Z["DUN_MOROGH"]
},
["kind"] = "skinning",
["note"] = "Light Hides can come from skinning suitable beasts. Hides are not guaranteed; buy any shortfall from other players."
},
[4291] = {
["kind"] = "supply"
},
[14341] = {
["kind"] = "supply"
},
[4235] = {
["zones"] = {
Z["STRANGLETHORN_VALE"]
},
["kind"] = "skinning",
["note"] = "Skin eligible beasts, or buy at the Auction House. Hides are occasional drops."
},
[14047] = {
["zones"] = {
Z["EASTERN_PLAGUELANDS"],
Z["WESTERN_PLAGUELANDS"]
},
["kind"] = "drop",
["note"] = "Collect Runecloth from high-level humanoids or buy it at the Auction House."
},
[4233] = {
["note"] = "Use the 20 cured hides from 80-95 in Dark Leather Belts.",
["kind"] = "craft",
["stepID"] = "80-95",
["spellID"] = 3817
},
[4231] = {
["note"] = "Use the cured hides from 30-50 in Embossed Leather Pants.",
["kind"] = "craft",
["stepID"] = "30-50",
["spellID"] = 3816
},
[15756] = {
["kind"] = "supply"
},
[6260] = {
["kind"] = "supply"
},
[252859] = {
["kind"] = "drop",
["note"] = "Drops from Dark Iron Taskmasters. Check the Auction House for the pattern.",
["zones"] = {
Z["SEARING_GORGE"]
}
}
},
["maxSkill"] = 300,
["menuTitle"] = "Leatherworking Guide",
["minSkill"] = 1,
["setupItems"] = {

},
["shoppingRequirements"] = {

},
["source"] = "https://www.wow-professions.com/forever/leatherworking-leveling-guide",
["sourceDate"] = "2026-11-20",
["sourceHash"] = "d7c2980b93ee79e4679ca104b56edd0dc817aa87c3653536313db0609bc8d49a",
["stepProgressMigrations"] = {
["30-55"] = {
"30-50"
},
["143-155"] = {
"143-150"
},
["165-185"] = {
"165-175",
"175-185"
}
},
["supplies"] = {
{
["items"] = {
[2320] = true,
[4289] = true,
[6260] = true
},
["mapID"] = 1420,
["name"] = "Abigail Shiel",
["faction"] = "Horde",
["id"] = "abigail-shiel",
["zone"] = Z["TIRISFAL_GLADES"],
["y"] = 52.4,
["x"] = 61.0
},
{
["items"] = {
[4289] = true,
[4291] = true,
[14341] = true,
[2320] = true,
[2321] = true,
[4340] = true,
[2325] = true,
[6260] = true
},
["mapID"] = 1455,
["name"] = "Bombus Finespindle",
["faction"] = "Alliance",
["id"] = "bombus-finespindle",
["zone"] = Z["IRONFORGE"],
["y"] = 34.1,
["x"] = 39.3
},
{
["items"] = {
[4289] = true,
[4291] = true,
[14341] = true,
[2320] = true,
[2321] = true,
[4340] = true,
[2325] = true,
[6260] = true
},
["mapID"] = 1453,
["name"] = "Jillian Tanner",
["faction"] = "Alliance",
["id"] = "jillian-tanner",
["zone"] = Z["STORMWIND_CITY"],
["y"] = 62.7,
["x"] = 71.7
},
{
["items"] = {
[4289] = true,
[4291] = true,
[14341] = true,
[2320] = true,
[2321] = true,
[4340] = true,
[2325] = true,
[6260] = true
},
["mapID"] = 1458,
["name"] = "Joseph Moore",
["faction"] = "Horde",
["id"] = "joseph-moore",
["zone"] = Z["UNDERCITY"],
["y"] = 59.1,
["x"] = 70.2
},
{
["items"] = {
[4289] = true,
[4291] = true,
[14341] = true,
[2320] = true,
[2321] = true,
[4340] = true,
[2325] = true,
[6260] = true
},
["mapID"] = 1457,
["name"] = "Saenorion",
["faction"] = "Alliance",
["id"] = "saenorion",
["zone"] = Z["DARNASSUS"],
["y"] = 22.6,
["x"] = 63.5
},
{
["items"] = {
[4289] = true,
[4291] = true,
[14341] = true,
[2320] = true,
[2321] = true,
[4340] = true,
[2325] = true,
[6260] = true
},
["mapID"] = 1454,
["name"] = "Tamar",
["faction"] = "Horde",
["id"] = "tamar",
["zone"] = Z["ORGRIMMAR"],
["y"] = 45.5,
["x"] = 63.1
},
{
["items"] = {
[2320] = true,
[4289] = true,
[6260] = true
},
["mapID"] = 1429,
["name"] = "Tharynn Bouden",
["faction"] = "Alliance",
["id"] = "tharynn-bouden",
["zone"] = Z["ELWYNN_FOREST"],
["y"] = 67.1,
["x"] = 41.9
},
{
["items"] = {
[4289] = true,
[4291] = true,
[15756] = true,
[2320] = true,
[2321] = true,
[4340] = true,
[2325] = true
},
["mapID"] = 1423,
["name"] = "Jase Farlane",
["faction"] = "Neutral",
["id"] = "jase-farlane",
["zone"] = Z["EASTERN_PLAGUELANDS"],
["y"] = 48.1,
["x"] = 70.8
},
{
["items"] = {
[15725] = true
},
["mapID"] = 1422,
["name"] = "Leonard Porter",
["faction"] = "Alliance",
["id"] = "leonard-porter",
["zone"] = Z["WESTERN_PLAGUELANDS"],
["y"] = 84.3,
["x"] = 43.1
},
{
["items"] = {
[4289] = true,
[4291] = true,
[14341] = true,
[15725] = true,
[2320] = true,
[2321] = true,
[4340] = true,
[2325] = true,
[6260] = true
},
["mapID"] = 1420,
["name"] = "Werg Thickblade",
["faction"] = "Horde",
["id"] = "werg-thickblade",
["zone"] = Z["TIRISFAL_GLADES"],
["y"] = 69.7,
["x"] = 83.2
}
},
["title"] = "Leatherworking Guide",
["tools"] = {

}
}
}
module.GuideOrder = {
"medium-hides-no-heavy-hides-beta"
}
module.Guide = module.Guides[module.GuideOrder[1]]
