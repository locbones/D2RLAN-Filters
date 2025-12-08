--#region Not/OR Exclusion Variable

-- Define NOT variable as a non-global entity
local function NOT(tbl)
    return setmetatable(tbl, { __not = true })
end

-- Define OR variable as a non-global entity
local function OR(tbl)
    return setmetatable(tbl, { __or = true })
end

local configEnv = {
    NOT = NOT,
    OR = OR,
}

setmetatable(configEnv, { __index = _G })

-- Define LUA Environment
local function loadConfig(filename)
    local chunk, err
    if _VERSION == "Lua 5.1" then
        chunk, err = loadfile(filename)
        if not chunk then error(err) end
        setfenv(chunk, configEnv)
    else
        chunk, err = loadfile(filename, "t", configEnv)
        if not chunk then error(err) end
    end
    return chunk()
end

-- Open TTS Pipe w/ D2RLAN
local function speak(text)
    if not text or text == "" then return end

    local pipeName = "\\\\.\\pipe\\D2RLAN_TTS"
    local f = io.open(pipeName, "w")
    if f then
        f:write(text .. "\n")
        f:flush()
        f:close()
    else
        print("Failed to write to TTS pipe. Is D2RLAN running?")
    end
end

-- Tell the TTS service to reload the audioVoice from lootfilter_config.lua
local function reloadTTSVoice()
    local pipeName = "\\\\.\\pipe\\D2RLAN_TTS"
    local f = io.open(pipeName, "w")
    if f then
        f:write("VOICE_RELOAD\n")
        f:flush()
        f:close()
    else
        print("Failed to send VOICE_RELOAD. Is D2RLAN running?")
    end
end

reloadTTSVoice()

--#endregion Not Exclusion Variable

-- Clear cache and load config
package.loaded["lootfilter_config"] = nil
local config = loadConfig("lootfilter_config.lua")
local version = "1.3.8"
local mod = "RMD"
local userLanguage = config.language or "enUS"


--#region Mapping Tables

-- Mapping tables for user-convenience
local qualityMap = { [1] = "Inferior", [2] = "Normal", [3] = "Superior", [4] = "Magic", [5] = "Set", [6] = "Rare", [7] = "Unique", [8] = "Crafted", [9] = "Tempered" }
local rarityMap = { [0] = "Normal", [1] = "Exceptional", [2] = "Elite" }
local difficultyMap = { [0] = "Normal", [1] = "Nightmare", [2] = "Hell" }
local locationMap = { onplayer = 0, equipped = 1 , onground = 3, dropping = 5, atvendor = "atvendor" }
local colorMap = { white = "ÿc0", red = "ÿc1", green = "ÿc2", blue = "ÿc3", gold = "ÿc4", grey = "ÿc5", gray = "ÿc5", black = "ÿc6", tan = "ÿc7", orange = "ÿc8", yellow = "ÿc9", purple = "ÿc;", ["dark green"] = "ÿcA", turquoise = "ÿcN", pink = "ÿcO", lilac = "ÿcP" }
local colorMapLink = { white = "0", red = "1", green = "2", blue = "3", gold = "4", grey = "5", gray = "5", black = "6", tan = "7", orange = "8", yellow = "9", purple = ";", ["dark green"] = "A", turquoise = "N", pink = "O" }
local ColorsOfTheRainbow = { "ÿc1", "ÿc2", "ÿc3", "ÿc4", "ÿc5", "ÿc7", "ÿc8", "ÿc9", "ÿc;", "ÿcA", "ÿcN", "ÿcO" }
local FlameColors = { "ÿc1", "ÿc8", "ÿc5", "ÿcU" }
local CandyColors = { "ÿcN", "ÿc3", "ÿc;", "ÿcO" }
local OceanColors = { "ÿcN", "ÿc3", "ÿcT", "ÿcP" }
local ToxicColors = { "ÿc2", "ÿcA", "ÿc0" }

RMDAreaIDs = {
    -- Act 1
    ["Rogue Encampment"] = 1, ["Blood Moor"] = 2, ["Cold Plains"] = 3, ["Stony Field"] = 4, ["Dark Wood"] = 5, ["Black Marsh"] = 6, ["Tamoe Highland"] = 7, ["Den Of Evil"] = 8, ["Cave Level 1"] = 9, ["Underground Passage Level 1"] = 10,
    ["Hole Level 1"] = 11, ["Pit Level 1"] = 12, ["Cave Level 2"] = 13, ["Underground Passage Level 2"] = 14, ["Hole Level 2"] = 15, ["Pit Level 2"] = 16, ["Burial Grounds"] = 17, ["Crypt"] = 18, ["Mausoleum"] = 19, ["Forgotten Tower"] = 20,
    ["Tower Cellar Level 1"] = 21, ["Tower Cellar Level 5"] = 25, ["Monastery Gate"] = 26, ["Outer Cloister"] = 27, ["Barracks"] = 28, ["Jail Level 3"] = 31, ["Inner Cloister"] = 32, ["Cathedral"] = 33, ["Catacombs Level 2"] = 35,
    ["Catacombs Level 4"] = 37, ["Tristram"] = 38, ["Moo Moo Farm"] = 39,
    -- Act 2
    ["Lut Gholein"] = 40, ["Rocky Waste"] = 41, ["Dry Hills"] = 42, ["Far Oasis"] = 43, ["Lost City"] = 44, ["Valley Of Snakes"] = 45, ["Canyon Of The Magi"] = 46, ["A2 Sewers Level 1"] = 47, ["A2 Sewers Level 2"] = 48, ["A2 Sewers Level 3"] = 49,
    ["Palace Cellar Level 3"] = 54, ["Stony Tomb Level 1"] = 55, ["Halls Of The Dead Level 1"] = 56, ["Halls Of The Dead Level 2"] = 57, ["Claw Viper Temple Level 1"] = 58, ["Stony Tomb Level 2"] = 59, ["Halls Of The Dead Level 3"] = 60,
    ["Claw Viper Temple Level 2"] = 61, ["Maggot Lair Level 3"] = 64, ["Ancient Tunnels"] = 65, ["Tal Rashas Tomb level 1"] = 66, ["Tal Rashas Tomb level 2"] = 67, ["Tal Rashas Tomb level 3"] = 68, ["Tal Rashas Tomb level 4"] = 69,
    ["Tal Rashas Tomb level 5"] = 70, ["Tal Rashas Tomb level 6"] = 71, ["Tal Rashas Tomb level 7"] = 72, ["Duriels Lair"] = 73, ["Arcane Sanctuary"] = 74,
    -- Act 3
    ["Kurast Docktown"] = 75, ["Spider Forest"] = 76, ["Great Marsh"] = 77, ["Flayer Jungle"] = 78, ["Lower Kurast"] = 79, ["Kurast Bazaar"] = 80, ["Upper Kurast"] = 81, ["Kurast Causeway"] = 82, ["Travincal"] = 83, ["Spider Cave"] = 84,
    ["Spider Cavern"] = 85, ["Swampy Pit Level 1"] = 86, ["Swampy Pit Level 2"] = 87, ["Flayer Dungeon Level 1"] = 88, ["Flayer Dungeon Level 2"] = 89, ["Swampy Pit Level 3"] = 90, ["Flayer Dungeon Level 3"] = 91, ["A3 Sewers Level 1"] = 92,
    ["A3 Sewers Level 2"] = 93, ["Ruined Temple"] = 94, ["Disused Fane"] = 95, ["Forgotten Reliquary"] = 96, ["Forgotten Temple"] = 97, ["Ruined Fane"] = 98, ["Disused Reliquary"] = 99, ["Durance Of Hate Level 1"] = 100, ["Durance Of Hate Level 2"] = 101, ["Durance Of Hate Level 3"] = 102,
    -- Act 4
    ["The Pandemonium Fortress"] = 103, ["Outer Steppes"] = 104, ["Plains Of Despair"] = 105, ["City Of The Damned"] = 106, ["River Of Flame"] = 107, ["Chaos Sanctuary"] = 108,
    -- Act 5
    ["Harrogath"] = 109, ["Bloody Foothills"] = 110, ["Frigid Highlands"] = 111, ["Arreat Plateau"] = 112, ["Crystalized Passage"] = 113, ["Frozen River"] = 114, ["Glacial Trail"] = 115, ["Drifter Cavern"] = 116, ["Frozen Tundra"] = 117,
    ["Ancients Way"] = 118, ["Icy Cellar"] = 119, ["Arreat Summit"] = 120, ["Nihlathaks Temple"] = 121, ["Halls Of Anguish"] = 122, ["Halls Of Pain"] = 123, ["Halls Of Vaught"] = 124, ["Abaddon"] = 125, ["Pit Of Acheron"] = 126, ["Infernal Pit"] = 127,
    ["The Worldstone Keep Level 1"] = 128, ["The Worldstone Keep Level 2"] = 129, ["The Worldstone Keep Level 3"] = 130, ["Throne Of Destruction"] = 131, ["The Worldstone Chamber"] = 132,
    -- Act X
    ["Matrons Den"] = 133, ["Fogotten Sands"] = 134, ["Furnace of Pain"] = 135, ["Tristram2"] = 136
}

AreaIDs = {
    -- Act 1
    ["Rogue Encampment"] = 1, ["Blood Moor"] = 2, ["Cold Plains"] = 3, ["Stony Field"] = 4, ["Dark Wood"] = 5, ["Black Marsh"] = 6, ["Tamoe Highland"] = 7, ["Den Of Evil"] = 8, ["Cave Level 1"] = 9, ["Underground Passage Level 1"] = 10,
    ["Hole Level 1"] = 11, ["Pit Level 1"] = 12, ["Cave Level 2"] = 13, ["Underground Passage Level 2"] = 14, ["Hole Level 2"] = 15, ["Pit Level 2"] = 16, ["Burial Grounds"] = 17, ["Crypt"] = 18, ["Mausoleum"] = 19, ["Forgotten Tower"] = 20,
    ["Tower Cellar Level 1"] = 21, ["Tower Cellar Level 2"] = 22, ["Tower Cellar Level 3"] = 23, ["Tower Cellar Level 4"] = 24, ["Tower Cellar Level 5"] = 25, ["Monastery Gate"] = 26, ["Outer Cloister"] = 27, ["Barracks"] = 28, ["Jail Level 1"] = 29,
    ["Jail Level 2"] = 30, ["Jail Level 3"] = 31, ["Inner Cloister"] = 32, ["Cathedral"] = 33, ["Catacombs Level 1"] = 34, ["Catacombs Level 2"] = 35, ["Catacombs Level 3"] = 36, ["Catacombs Level 4"] = 37, ["Tristram"] = 38, ["Moo Moo Farm"] = 39,
    -- Act 2
    ["Lut Gholein"] = 40, ["Rocky Waste"] = 41, ["Dry Hills"] = 42, ["Far Oasis"] = 43, ["Lost City"] = 44, ["Valley Of Snakes"] = 45, ["Canyon Of The Magi"] = 46, ["A2 Sewers Level 1"] = 47, ["A2 Sewers Level 2"] = 48, ["A2 Sewers Level 3"] = 49,
    ["Harem Level 1"] = 50, ["Harem Level 2"] = 51, ["Palace Cellar Level 1"] = 52, ["Palace Cellar Level 2"] = 53, ["Palace Cellar Level 3"] = 54, ["Stony Tomb Level 1"] = 55, ["Halls Of The Dead Level 1"] = 56, ["Halls Of The Dead Level 2"] = 57,
    ["Claw Viper Temple Level 1"] = 58, ["Stony Tomb Level 2"] = 59, ["Halls Of The Dead Level 3"] = 60, ["Claw Viper Temple Level 2"] = 61, ["Maggot Lair Level 1"] = 62, ["Maggot Lair Level 2"] = 63, ["Maggot Lair Level 3"] = 64, ["Ancient Tunnels"] = 65,
    ["Tal Rashas Tomb level 1"] = 66, ["Tal Rashas Tomb level 2"] = 67, ["Tal Rashas Tomb level 3"] = 68, ["Tal Rashas Tomb level 4"] = 69, ["Tal Rashas Tomb level 5"] = 70, ["Tal Rashas Tomb level 6"] = 71, ["Tal Rashas Tomb level 7"] = 72, ["Duriels Lair"] = 73,
    -- Act 3
    ["Arcane Sanctuary"] = 74, ["Kurast Docktown"] = 75, ["Spider Forest"] = 76, ["Great Marsh"] = 77, ["Flayer Jungle"] = 78, ["Lower Kurast"] = 79, ["Kurast Bazaar"] = 80, ["Upper Kurast"] = 81, ["Kurast Causeway"] = 82, ["Travincal"] = 83,
    ["Spider Cave"] = 84, ["Spider Cavern"] = 85, ["Swampy Pit Level 1"] = 86, ["Swampy Pit Level 2"] = 87, ["Flayer Dungeon Level 1"] = 88, ["Flayer Dungeon Level 2"] = 89, ["Swampy Pit Level 3"] = 90, ["Flayer Dungeon Level 3"] = 91,
    ["A3 Sewers Level 1"] = 92, ["A3 Sewers Level 2"] = 93, ["Ruined Temple"] = 94, ["Disused Fane"] = 95, ["Forgotten Reliquary"] = 96, ["Forgotten Temple"] = 97, ["Ruined Fane"] = 98, ["Disused Reliquary"] = 99, ["Durance Of Hate Level 1"] = 100,
    ["Durance Of Hate Level 2"] = 101, ["Durance Of Hate Level 3"] = 102,
    -- Act 4
    ["The Pandemonium Fortress"] = 103, ["Outer Steppes"] = 104, ["Plains Of Despair"] = 105, ["City Of The Damned"] = 106, ["River Of Flame"] = 107, ["Chaos Sanctuary"] = 108,
    -- Act 5
    ["Harrogath"] = 109, ["Bloody Foothills"] = 110, ["Frigid Highlands"] = 111, ["Arreat Plateau"] = 112, ["Crystalized Passage"] = 113, ["Frozen River"] = 114, ["Glacial Trail"] = 115, ["Drifter Cavern"] = 116, ["Frozen Tundra"] = 117, ["Ancients Way"] = 118,
    ["Icy Cellar"] = 119, ["Arreat Summit"] = 120, ["Nihlathaks Temple"] = 121, ["Halls Of Anguish"] = 122, ["Halls Of Pain"] = 123, ["Halls Of Vaught"] = 124, ["Abaddon"] = 125, ["Pit Of Acheron"] = 126, ["Infernal Pit"] = 127,
    ["The Worldstone Keep Level 1"] = 128, ["The Worldstone Keep Level 2"] = 129, ["The Worldstone Keep Level 3"] = 130, ["Throne Of Destruction"] = 131, ["The Worldstone Chamber"] = 132,
    -- Act X
    ["Matrons Den"] = 133, ["Fogotten Sands"] = 134, ["Furnace of Pain"] = 135, ["Tristram2"] = 136
}

-- The list of item types
local itemTypes = {
    "Shield", "Armor", "Gold", "Bow Quiver", "Crossbow Quiver", "Player Body Part", "Herb", "Potion", "Ring", "Elixir", "Amulet", "Charm", "Not Used", "Boots", "Gloves", "Not Used", "Book", "Belt", "Gem", "Torch", "Scroll", "Not Used", 
    "Scepter", "Wand", "Staff", "Bow", "Axe", "Club", "Sword", "Hammer", "Knife", "Spear", "Polearm", "Crossbow", "Mace", "Helm", "Missile Potion", "Quest", "Body Part", "Key", "Throwing Knife", "Throwing Axe", "Javelin", "Weapon", 
    "Melee Weapon", "Missile Weapon", "Thrown Weapon", "Combo Weapon", "Any Armor", "Any Shield", "Miscellaneous", "Socket Filler", "Second Hand", "Staves And Rods", "Missile", "Blunt", "Jewel", "Class Specific", "Amazon Item", "Barbarian Item", 
    "Necromancer Item", "Paladin Item", "Sorceress Item", "Assassin Item", "Druid Item", "Hand to Hand", "Orb", "Voodoo Heads", "Auric Shields", "Primal Helm", "Pelt", "Cloak", "Rune", "Circlet", "Healing Potion", "Mana Potion", "Rejuv Potion", 
    "Stamina Potion", "Antidote Potion", "Thawing Potion", "Small Charm", "Medium Charm", "Large Charm", "Amazon Bow", "Amazon Spear", "Amazon Javelin", "Hand to Hand 2", "Magic Bow Quiv", "Magic Xbow Quiv", "Chipped Gem", "Flawed Gem", "Standard Gem", 
    "Flawless Gem", "Perfect Gem", "Amethyst", "Diamond", "Emerald", "Ruby", "Sapphire", "Topaz", "Skull", "Swords and Knives", "Spears and Polearms"
}

-- Create the mapping starting from integer 2
local itemTypeMap = {}
for i, name in ipairs(itemTypes) do
    itemTypeMap[i + 1] = name  -- start from 2
end

--#endregion Mapping Tables

--#region Style Controls
local function HSVtoRGB(h, s, v)
    local r, g, b

    local i = math.floor(h * 6)
    local f = h * 6 - i
    local p = v * (1 - s)
    local q = v * (1 - f * s)
    local t = v * (1 - (1 - f) * s)

    i = i % 6

    if i == 0 then
        r, g, b = v, t, p
    elseif i == 1 then
        r, g, b = q, v, p
    elseif i == 2 then
        r, g, b = p, v, t
    elseif i == 3 then
        r, g, b = p, q, v
    elseif i == 4 then
        r, g, b = t, p, v
    elseif i == 5 then
        r, g, b = v, p, q
    end

    return r, g, b
end

-- Preset Background Styles
local backgroundStyles = {
    Rainbow = function(Item, Result, Tick)
        local speed = 2000.0
        local id = ((Item.ID * 2654435761) % 2 ^ 32)
        local offset = (id % speed) / speed
        local t = ((Tick % speed) / speed + offset) % 1.0
        local hue = t
        local r, g, b = HSVtoRGB(hue, 1.0, 1.0)
        local pulse = (math.sin(t * 2 * math.pi) + 1) / 2
        local a = 0.6 + 0.3 * pulse
        local width = 2 + 4 * pulse

        Result.Border[1], Result.Border[2], Result.Border[3], Result.Border[4], Result.Border[5] = r, g, b, a, width
        Result.Background[1], Result.Background[2], Result.Background[3], Result.Background[4] = r, g, b, a * 0.4
    end,
    OceanDrift = function(Item, Result, Tick)
        local t = (Tick % 2000) / 2000
        local pulse = (math.sin(t * 2 * math.pi) + 1) / 2
        local r = 0.0
        local g = 0.1 + 0.15 * pulse
        local b = 0.4 + 0.4 * pulse
        local a = 0.6 + 0.3 * pulse
        local width = 2 + 4 * pulse

        Result.Border[1], Result.Border[2], Result.Border[3], Result.Border[4], Result.Border[5] = r, g, b, a, width
        Result.Background[1], Result.Background[2], Result.Background[3], Result.Background[4] = r, g, b, a * 0.4
    end,
    FadingEmber = function(Item, Result, Tick)
        local t = (Tick % 2000) / 2000
        local pulse = (math.sin(t * 2 * math.pi) + 1) / 2
        local r = 0.4 + 0.2 * pulse
        local g = 0.05 + 0.1 * pulse
        local b = 0.0
        local a = 0.6 + 0.3 * pulse
        local width = 2 + 4 * pulse

        Result.Border[1], Result.Border[2], Result.Border[3], Result.Border[4], Result.Border[5] = r, g, b, a, width
        Result.Background[1], Result.Background[2], Result.Background[3], Result.Background[4] = r, g, b, a * 0.4
    end,
    MidnightMemory = function(Item, Result, Tick)
        local t = (Tick % 2000) / 2000
        local pulse = (math.sin(t * 2 * math.pi) + 1) / 2
        local r = 0.2 + 0.2 * pulse
        local g = 0.1 + 0.1 * (1 - pulse)
        local b = 0.4 + 0.3 * pulse
        local a = 0.6 + 0.3 * pulse
        local width = 2 + 4 * pulse

        Result.Border[1], Result.Border[2], Result.Border[3], Result.Border[4], Result.Border[5] = r, g, b, a, width
        Result.Background[1], Result.Background[2], Result.Background[3], Result.Background[4] = r, g, b, a * 0.4
    end,
    VerdantBloom = function(Item, Result, Tick)
        local t = (Tick % 2000) / 2000
        local pulse = (math.sin(t * 2 * math.pi) + 1) / 2
        local r = 0.05 + 0.1 * pulse
        local g = 0.2 + 0.3 * pulse
        local b = 0.05 + 0.1 * (1 - pulse)
        local a = 0.6 + 0.3 * pulse
        local width = 2 + 4 * pulse

        Result.Border[1], Result.Border[2], Result.Border[3], Result.Border[4], Result.Border[5] = r, g, b, a, width
        Result.Background[1], Result.Background[2], Result.Background[3], Result.Background[4] = r, g, b, a * 0.4
    end,
    SapphireSonnet = function(Item, Result, Tick)
        local t = (Tick % 2500) / 2500
        local pulse = (math.sin(t * 2 * math.pi) + 1) / 1
        local r = 0.2
        local g = 0.1 + 0.1 * pulse
        local b = 0.4 + 0.2 * pulse
        local a = 1
        local width = 1 + 2 * pulse

        Result.Border[1], Result.Border[2], Result.Border[3], Result.Border[4], Result.Border[5] = r, g, b, a * 0.8, width
        Result.Background[1], Result.Background[2], Result.Background[3], Result.Background[4] = r, g, b, a * 0.1
    end,
    TamarilloGlow = function(Item, Result, Tick)
        local t = (Tick % 2300) / 2300
        local pulse = (math.sin(t * 2 * math.pi) + 1) / 1
        local r = 0.4 + 0.2 * pulse
        local g = 0.1
        local b = 0.1
        local a = 1
        local width = 1

        Result.Border[1], Result.Border[2], Result.Border[3], Result.Border[4], Result.Border[5] = 0, 0, 0, 1, width
        Result.Background[1], Result.Background[2], Result.Background[3], Result.Background[4] = r, g, b, a * 0.7
    end
}

-- Helper to remove color codes and split into itemType and itemName
local function SplitItemName(Name)
    local cleanName = Name:gsub("ÿc.", "")
    local newlineIndex = cleanName:find("\n", 1, true)
    if newlineIndex then
        return cleanName:sub(1, newlineIndex), cleanName:sub(newlineIndex + 1)
    else
        return "", cleanName
    end
end

-- Preset Name Styles
local function utf8_chars(str)
    local chars = {}
    local i = 1
    local len = #str
    while i <= len do
        local byte = string.byte(str, i)
        local char_len = 1
        if byte >= 0xF0 then
            char_len = 4
        elseif byte >= 0xE0 then
            char_len = 3
        elseif byte >= 0xC0 then
            char_len = 2
        end
        table.insert(chars, string.sub(str, i, i + char_len - 1))
        i = i + char_len
    end
    return chars
end

local nameStyles = {
    Rainbow = function(Item, Name, Tick)
        local itemType, itemName = SplitItemName(Name)
        local result = { itemType }
        local slowFactor = 300
        local colorCount = #ColorsOfTheRainbow
        local offset = ((Item.ID * 2654435761) % 2^32) % colorCount

        local chars = utf8_chars(itemName)

        for i = 1, #chars do
            local index = (math.floor(Tick / slowFactor) + i - 1 + offset) % colorCount + 1
            table.insert(result, ColorsOfTheRainbow[index] .. itemName:sub(i, i))
        end

        return table.concat(result)
    end,

    RainbowGroup = function(Item, Name, Tick)
        local itemType, itemName = SplitItemName(Name)
        local result = { itemType }
        local slowFactor = 300
        local colorCount = #ColorsOfTheRainbow
        local offset = ((Item.ID * 2654435761) % 2^32) % colorCount
        local index = (math.floor(Tick / slowFactor) + offset) % colorCount + 1
        local color = ColorsOfTheRainbow[index]

        local chars = utf8_chars(itemName)

        for i = 1, #chars do
            table.insert(result, color .. itemName:sub(i, i))
        end

        return table.concat(result)
    end,

    CottonCandy = function(Item, Name, Tick)
        local itemType, itemName = SplitItemName(Name)
        local result = { itemType }
        local speed = 500

        local chars = utf8_chars(itemName)

        for i = 1, #chars do
            local index = (math.floor((Tick / speed) + i) % #CandyColors) + 1
            table.insert(result, CandyColors[index] .. itemName:sub(i, i))
        end

        return table.concat(result)
    end,

    FrostWave = function(Item, Name, Tick)
        local itemType, itemName = SplitItemName(Name)
        local result = { itemType }
        local speed = 500

        local chars = utf8_chars(itemName)

        for i = 1, #chars do
            local index = (math.floor((Tick / speed) + i) % #OceanColors) + 1
            table.insert(result, OceanColors[index] .. itemName:sub(i, i))
        end

        return table.concat(result)
    end,

    ToxicFog = function(Item, Name, Tick)
        local itemType, itemName = SplitItemName(Name)
        local result = { itemType }
        local speed = 500

        local chars = utf8_chars(itemName)

        for i = 1, #chars do
            local index = (math.floor((Tick / speed) + i) % #ToxicColors) + 1
            table.insert(result, ToxicColors[index] .. itemName:sub(i, i))
        end

        return table.concat(result)
    end,

    OpenFlames = function(Item, Name, Tick)
        local itemType, itemName = SplitItemName(Name)
        local result = { itemType }
        local speed = 500

        local chars = utf8_chars(itemName)

        for i = 1, #chars do
            local index = (math.floor((Tick / speed) + i) % #FlameColors) + 1
            table.insert(result, FlameColors[index] .. chars[i])
        end

        return table.concat(result)
    end,
    RainbowStatic = function(Item, Name)
        local ColorsOfTheRainbowSize = #ColorsOfTheRainbow
        local cleanName = Name:gsub("ÿc.", "")
        local result = {}
        local offset = ((Item.ID * 2654435761) % 2 ^ 32) % ColorsOfTheRainbowSize

        for i = 1, #cleanName do
            local char = cleanName:sub(i, i)
            local colorIndex = (i - 1 + offset) % ColorsOfTheRainbowSize + 1
            local color = ColorsOfTheRainbow[colorIndex]
            table.insert(result, color .. char)
        end

        return table.concat(result)
    end,

    RainbowGroupStatic = function(Item, Name)
        local cleanName = Name:gsub("ÿc.", "")
        local colorIndex = ((Item.ID * 2654435761) % 2 ^ 32) % #ColorsOfTheRainbow + 1
        local color = ColorsOfTheRainbow[colorIndex]
        return color .. cleanName
    end,

    CottonCandyStatic = function(Item, Name)
        local cleanName = Name:gsub("ÿc.", "")
        local result = {}
        for i = 1, #cleanName do
            local colorIndex = (i % #CandyColors) + 1
            table.insert(result, CandyColors[colorIndex] .. cleanName:sub(i, i))
        end
        return table.concat(result)
    end,

    FrostWaveStatic = function(Item, Name)
        local cleanName = Name:gsub("ÿc.", "")
        local result = {}
        for i = 1, #cleanName do
            local colorIndex = (i % #OceanColors) + 1
            table.insert(result, OceanColors[colorIndex] .. cleanName:sub(i, i))
        end
        return table.concat(result)
    end,

    ToxicFogStatic = function(Item, Name)
        local cleanName = Name:gsub("ÿc.", "")
        local result = {}
        for i = 1, #cleanName do
            local colorIndex = (i % #ToxicColors) + 1
            table.insert(result, ToxicColors[colorIndex] .. cleanName:sub(i, i))
        end
        return table.concat(result)
    end,

    OpenFlamesStatic = function(Item, Name)
        local cleanName = Name:gsub("ÿc.", "")
        local result = {}
        for i = 1, #cleanName do
            local colorIndex = (i % #FlameColors) + 1
            table.insert(result, FlameColors[colorIndex] .. cleanName:sub(i, i))
        end
        return table.concat(result)
    end,
}
--#endregion Style Controls

--#region Helper Functions

-- UTF-8 helper: safely extract each character (works in Lua 5.1)


-- Treat 3 (onground) and 5 (dropping) as equivalent
local function normalize_location(loc)
    if loc == 3 or loc == 5 then return "onground" end
    return loc
end

-- Code Matching Helper
local function code_matches(rule, code)
    if rule.codes == "allitems" then return not (HideAllItems and HideAllItems[code]) end
    if not rule.code and not rule.codes then return false end
    

    local codeList = rule.codes or { rule.code }

    -- If NOT is used
    local isNot = getmetatable(codeList) and getmetatable(codeList).__not

    if isNot then
        for _, c in ipairs(codeList) do
            if c == code then return false end
        end
        return true
    else
        for _, c in ipairs(codeList) do
            if c == code then return true end
        end
        return false
    end
end


-- Color Mapping Helper
local function applyColorTags(text)
    return text:gsub("{(.-)}", function(color)
        return (colorMap[color:lower()]) or ("{" .. color .. "}")
    end)
end

-- Reload Filter Helper
function GetWelcomeMessage()
    if config.reload then
        return applyColorTags(config.reload)
    end
end

-- Operands Comparison Helper
local function check_op(val, ruleVal)
    local op = "=="
    local r = ruleVal

    if type(r) == "string" then
        -- trim whitespace
        r = r:match("^%s*(.-)%s*$")

        if r:sub(-1) == "+" then
            op = ">="
            r = tonumber(r:match("^(%d+)")) or 0
        elseif r:sub(-1) == "-" then
            op = "<="
            r = tonumber(r:match("^(%d+)")) or 0
        else
            op = "=="
            r = tonumber(r) or 0
        end
    elseif type(r) == "number" then
        op = "=="
    else
        return false
    end

    if op == "==" then return val == r end
    if op == ">=" then return val >= r end
    if op == "<=" then return val <= r end
end

-- Check ItemType
local function checkItemType(Item, idList)
    -- Detect NOT table
    local mt = type(idList) == "table" and getmetatable(idList)
    local isNot = mt and mt.__not or false

    -- For NOT, the actual list is idList itself (not idList.list)
    -- Normalize single values
    if type(idList) == "number" or type(idList) == "string" then
        idList = { idList }
    end

    -- Validate it's table
    if type(idList) ~= "table" then
        return nil
    end

    -- Search for a match
    local found = nil
    for _, id in ipairs(idList) do
        if Item:IsType(id) then
            found = id
            break
        end
    end

    if isNot then
        -- NOT mode: return true only if NOTHING matched
        return (found == nil) and true or nil
    end

    -- Normal mode: return the matched id or nil
    return found
end


-- Data Output Helper
local function replace_placeholders(template, Item, Me, rule)
    if not template then return "" end

    return template
        :gsub("{code}", Item.Txt.Code or "")
        :gsub("{ilvl}", Item.Data.ItemLevel or "")
        :gsub("{rarity}", rarityMap[Item.Rarity] or tostring(Item.Rarity or ""))
        :gsub("{quality}", qualityMap[Item.Data.Quality] or tostring(Item.Data.Quality or ""))
        :gsub("{ethereal}", tostring(Item.Data.IsEthereal or false))
        :gsub("{sockets}", tostring(Item:Stat(194) or ""))
        :gsub("{index}", Item.Data.FileIndex or "")
        :gsub("{maxsock}", function()
            local currentSockets = Item:Stat(194) or 0
            local maxPossible = Item:MaxSockets() or 0
            local hasMaxSockets = (currentSockets == maxPossible)

            return string.format("%s (%d/%d)", tostring(hasMaxSockets), currentSockets, maxPossible)
        end)
        :gsub("{name}", function()
            if Item:IsType(4) and not Item:IsType(45) and not Item:IsType(50) then
                return tostring(Item:Stat(14) or "")
            else
                return Item.Name or ""
            end
        end)
        :gsub("{itype}", function()
            if rule and rule.itype then
                return checkItemType(Item, rule.itype) and "true" or "false"
            end
            return ""
        end)
        :gsub("{stat=%((%d+),?(%d*)%)%}", function(i, p)
            local val = p ~= "" and Item:Stat(tonumber(i), tonumber(p)) or Item:Stat(tonumber(i))
            return tostring(val or "")
        end)
        :gsub("{pstat=%((%d+)%)}", function(i)
            return tostring(Me:Stat(tonumber(i)) or "")
        end)
end

-- Helper to normalize style keys (remove spaces and optionally lowercase)
local function normalizeStyleKey(key)
    return key:gsub("%s+", "")
end

--#endregion Helper Functions

--#region Operand Checkers

-- Check Difficulty
local function check_difficulty(diffVal, ruleDiff)
    local function resolve(val)
        local n = tonumber(val)
        if n then return n end
        for id, name in pairs(difficultyMap) do if name:lower() == val:lower() then return id end end
    end
    if type(ruleDiff) == "number" then return diffVal == ruleDiff end
    local s = ruleDiff:gsub("%s+", "")
    if s:find(",") then
        for part in s:gmatch("[^,]+") do if resolve(part) == diffVal then return true end end
        return false
    end
    local op, part = "==", s
    if s:sub(-1) == "+" then
        op = ">="
        part = s:sub(1, -2)
    elseif s:sub(-1) == "-" then
        op = "<="
        part = s:sub(1, -2)
    end
    local val = resolve(part)
    if not val then return false end
    return (op == "==" and diffVal == val) or (op == ">=" and diffVal >= val) or (op == "<=" and diffVal <= val)
end

-- Check Stats
local function stat_match(stats, getStat)
    if type(stats) ~= "table" then return true end

    -- Wrap single stat in array if needed
    stats = stats.index and { stats } or stats

    -- Handle OR group
    local mt = getmetatable(stats)
    if mt and mt.__or then
        -- For OR, only one index in any stat needs to pass
        for _, stat in ipairs(stats) do
            local indices = type(stat.index) == "table" and stat.index or { stat.index }
            for _, idx in ipairs(indices) do
                local passed = false
                if stat.param == nil then
                    local val = getStat(idx)
                    passed = (stat.op == "==" and val == stat.value) or
                             (stat.op == ">"  and val > stat.value)  or
                             (stat.op == "<"  and val < stat.value)  or
                             (stat.op == ">=" and val >= stat.value) or
                             (stat.op == "<=" and val <= stat.value) or
                             (stat.op == "between" and type(stat.value) == "table" and val >= stat.value[1] and val <= stat.value[2])
                else
                    local paramList = type(stat.param) == "table" and stat.param or { stat.param }
                    for _, p in ipairs(paramList) do
                        local val = getStat(idx, p)
                        local ok = (stat.op == "==" and val == stat.value) or
                                   (stat.op == ">"  and val > stat.value)  or
                                   (stat.op == "<"  and val < stat.value)  or
                                   (stat.op == ">=" and val >= stat.value) or
                                   (stat.op == "<=" and val <= stat.value) or
                                   (stat.op == "between" and type(stat.value) == "table" and val >= stat.value[1] and val <= stat.value[2])
                        if ok then
                            passed = true
                            break
                        end
                    end
                end

                if passed then
                    return true
                end
            end
        end
        return false
    end

    -- Normal (AND) logic: all stats must pass
    for _, stat in ipairs(stats) do
        local indices = type(stat.index) == "table" and stat.index or { stat.index }
        for _, idx in ipairs(indices) do
            local passed = false
            if stat.param == nil then
                local val = getStat(idx)
                passed = (stat.op == "==" and val == stat.value) or
                         (stat.op == ">"  and val > stat.value)  or
                         (stat.op == "<"  and val < stat.value)  or
                         (stat.op == ">=" and val >= stat.value) or
                         (stat.op == "<=" and val <= stat.value) or
                         (stat.op == "between" and type(stat.value) == "table" and val >= stat.value[1] and val <= stat.value[2])
            else
                local paramList = type(stat.param) == "table" and stat.param or { stat.param }
                for _, p in ipairs(paramList) do
                    local val = getStat(idx, p)
                    local ok = (stat.op == "==" and val == stat.value) or
                               (stat.op == ">"  and val > stat.value)  or
                               (stat.op == "<"  and val < stat.value)  or
                               (stat.op == ">=" and val >= stat.value) or
                               (stat.op == "<=" and val <= stat.value) or
                               (stat.op == "between" and type(stat.value) == "table" and val >= stat.value[1] and val <= stat.value[2])
                    if not ok then
                        passed = false
                        break
                    end
                    passed = true
                end
            end
            if not passed then return false end
        end
    end

    return true
end

-- Check Sockets
local function socket_match(ruleSockets, socketVal)
    if ruleSockets == nil then return true end
    local passed = false
    if type(ruleSockets) == "string" then
        if ruleSockets:find(",") then
            for num in ruleSockets:gmatch("%d+") do
                if tonumber(num) == socketVal then
                    passed = true
                    break
                end
            end
        else
            local val = tonumber(ruleSockets:match("%d+")) or 0
            local op = ruleSockets:find("%+") and ">=" or ruleSockets:find("%-") and "<=" or "=="
            passed = (op == "==" and socketVal == val) or (op == ">=" and socketVal >= val) or
                (op == "<=" and socketVal <= val)
        end
    end
    return passed
end

-- Helper to check runeword flag
function IsRuneword(flags)
    return (flags & 0x04000000) ~= 0
end

-- Helper to check identified flag
function IsIdentified(flags)
    return (flags & 0x00000010) ~= 0
end

--Check for quality inputs
local function norm_quality(q)
    if q == nil then return nil end
    if type(q) == "number" then
        return qualityMap[q] or tostring(q), q
    elseif type(q) == "string" then
        local s = q:match("^%s*(.-)%s*$") -- trim
        local n = tonumber(s)
        if n then
            return qualityMap[n] or s, n
        end
        return s, tonumber(s)
    end
    return tostring(q), tonumber(q)
end

local function check_quality(itemQuality, ruleQuality)
    local itemStr, itemNum = norm_quality(itemQuality)

    if type(ruleQuality) == "string" then
        local r = ruleQuality:match("^%s*(.-)%s*$")

        -- numeric comparisons like "3-", "5+", or "4"
        local num = tonumber(r:match("^(%d+)"))
        if num then
            if r:sub(-1) == "-" then
                return itemNum and itemNum <= num
            elseif r:sub(-1) == "+" then
                return itemNum and itemNum >= num
            else
                return itemNum and itemNum == num
            end
        end

        -- string match with qualityMap (case-insensitive)
        local _, ruleNum = norm_quality(r)
        return itemStr and r and itemStr:lower() == r:lower()
    elseif type(ruleQuality) == "number" then
        return itemNum and itemNum == ruleQuality
    elseif type(ruleQuality) == "table" then
        for _, qr in ipairs(ruleQuality) do
            if check_quality(itemQuality, qr) then return true end
        end
        return false
    end

    return false
end

-- helper to check if value is in a list
local function contains(list, value)
    for _, v in ipairs(list) do
        if v == value then return true end
    end
    return false
end

local overrideConfig = nil
if config.allowOverrides then
    local status, result = pcall(function() return dofile("overrides.lua") end)
    if status and result then
        overrideConfig = result
        if config.debug then
            print("Override config loaded successfully")
        end
    else
        if config.debug then
            print("Override config not found or failed to load")
        end
    end
end

--#endregion Operand Checkers

--#region Apply Filter Logic

-- Main Filter Logic

function ApplyFilter(Me, Item, Result, level)
    if not Item then
        if config.debug then
            print("ApplyFilter called with nil Item")
        end
        return
    end

    local function level_matches(selectedLevel, ruleLevels)
        if not ruleLevels then
            return true -- always apply
        end

        for lvl in string.gmatch(ruleLevels, "[^,]+") do
            lvl = lvl:gsub("%s+", "") -- trim spaces
            if lvl:match("^(%d+)%+$") then
                local minLevel = tonumber(lvl:match("^(%d+)%+$"))
                if tonumber(selectedLevel) >= minLevel then
                    return true
                end
            elseif lvl:match("^(%d+)%-$") then
                local maxLevel = tonumber(lvl:match("^(%d+)%-$"))
                if tonumber(selectedLevel) <= maxLevel then
                    return true
                end
            elseif tonumber(lvl) == tonumber(selectedLevel) then
                return true
            end
        end

        return false
    end

    -- pick ruleset
    local selectedLevel = level or config.filter_level or "1"
    local rules = {}

    for _, rule in ipairs(config.rules or {}) do
        if level_matches(selectedLevel, rule.filter_levels) then
            table.insert(rules, rule)
        end
    end



    -- load overrides
    if config.allowOverrides then
    if config.debug then
        print("Attempting to load override rules...")
    end

    local success, overrideConfig = pcall(require, "override_rules")
    if success and overrideConfig.rules then
        local overrideRules = {}

        if type(overrideConfig.rules[1]) == "table" then
            -- Legacy format: plain list
            overrideRules = overrideConfig.rules
            if config.debug then
                print("Override file using legacy format")
            end
        elseif selectedLevel and overrideConfig.rules[selectedLevel] then
            -- Level-based format
            overrideRules = overrideConfig.rules[selectedLevel]
            if config.debug then
                print("Override file using level-based format, matched " .. selectedLevel)
            end
        elseif overrideConfig.rules.level_1 then
            -- Fallback to level_1 if defined
            overrideRules = overrideConfig.rules.level_1
            if config.debug then
                print("Override file has level_1 fallback")
            end
        end

        for _, r in ipairs(overrideRules or {}) do
            table.insert(rules, r)
        end

        if config.debug then
            print("Override rules applied: " .. #overrideRules .. " rules added")
        end
    elseif config.debug then
        print("Failed to load override rules or no rules found")
    end
end


    -- load item data
    local code, quality, rarity, index, location, area, ilvl, itype, identified, maxsock = Item.Txt.Code, Item.Data.Quality, Item.Rarity, Item.Data.FileIndex, Item.Mode, Item.Area, Item.Data.ItemLevel, Item.isType, Item.Data.Flags, Item:MaxSockets()
    local difficulty = Me and Me.Difficulty or 0
    function SSet()
    end
    HideAllItems = HideAllItems or SSet()


    local matched = false
    local baseName = Result.Name
    local baseDesc = Result.Description
    local actualLoc
    if Me and Item.Data and Me.ID ~= Item.Data.Owner and location ~= 3  and location ~= 5 and Item.Data.Owner >= 450 then
        actualLoc = "atvendor"
    else
        actualLoc = normalize_location(location)
    end

    -- Check identification state
    local isID = IsIdentified(Item.Data.Flags)

    -- Apply placeholder values if item is at vendor AND not identified
    local restrictData = (actualLoc == "atvendor" and not isID)
    if restrictData then
        code = "???"
        quality = -1
        rarity = -1
        index = -1
        maxsock = -1
        ilvl = -1
    end

    for ruleIndex, rule in ipairs(rules or {}) do
        local locs = {}

        if type(rule.location) == "table" then
            for _, locStr in ipairs(rule.location) do
                table.insert(locs, normalize_location(locationMap[locStr] or 3))
            end
        else
            table.insert(locs, normalize_location(locationMap[rule.location or "onground"] or 3))
        end

        if code_matches(rule, code) then
            local allConditionsMet = true
            local failedReasons = {}

            -- When unidentified vendor item, immediately skip rule-based checks
            if restrictData then
                allConditionsMet = false
                table.insert(failedReasons, "Unidentified vendor item — skipping detailed match checks")
                return false
            end

            if rule.location and not contains(locs, actualLoc) then
                allConditionsMet = false
                table.insert(failedReasons, "location mismatch (got " .. tostring(location) .. ", expected one of: " .. table.concat(locs, ", ") .. ")")
            end
            if rule.quality ~= nil then
                if not check_quality(quality, rule.quality) then
                    allConditionsMet = false
                    table.insert(failedReasons, ("quality mismatch (got %s, expected %s)"):format(tostring(norm_quality(quality)), tostring(rule.quality)
                    ))
                end
            end

            if rule.ilvl and not check_op(ilvl, rule.ilvl) then
                allConditionsMet = false
                table.insert(failedReasons, "itemlevel mismatch (got " .. tostring(ilvl) .. ", expected " .. tostring(rule.ilvl) .. ")")
            end
            -- MaxSockets & Sockets
            local socketVal = Item:Stat(194) or 0
            if not socket_match(rule.sockets, socketVal) then
                allConditionsMet = false
                table.insert(failedReasons, "socket mismatch")
            end
            if rule.maxsock ~= nil then
                local hasMaxSock = false
            if rule.maxsock == true then
                hasMaxSock = (socketVal == maxsock)
            elseif rule.maxsock == false then
                hasMaxSock = (socketVal ~= maxsock)
            else
                hasMaxSock = check_op(maxsock, rule.maxsock)
            end
            if not hasMaxSock then
                allConditionsMet = false
                table.insert(failedReasons, string.format("MaxSock mismatch (got %s, expected %s)", tostring(socketVal), tostring(rule.maxsock)))
                end
            end

            

            if rule.rarity and not check_op(rarity, rule.rarity) then
                allConditionsMet = false
                table.insert(failedReasons, "rarity mismatch (got " .. tostring(rarity) .. ", expected " .. tostring(rule.rarity) .. ")")
            end
            -- check index
            if rule.index then
                if type(rule.index) == "table" then
                    local mt = getmetatable(rule.index)

                    -- NOT wrapper
                    if mt and mt.__not then
                        if contains(rule.index, index) then
                            allConditionsMet = false
                            table.insert(failedReasons, "index in NOT list (got " .. tostring(index) .. ")")
                        end

                    -- normal multi-index list
                    else
                        if not contains(rule.index, index) then
                            allConditionsMet = false
                            table.insert(failedReasons, "index mismatch (got " .. tostring(index) .. ", expected one of {" .. table.concat(rule.index, ", ") .. "})")
                        end
                    end

                else
                    -- single value case
                    if rule.index ~= index then
                        allConditionsMet = false
                        table.insert(failedReasons, "index mismatch (got " .. tostring(index) .. ", expected " .. tostring(rule.index) .. ")")
                    end
                end
            end
            local itypeMatch = rule.itype and checkItemType(Item, rule.itype) or nil
            if rule.itype and not itypeMatch then
                allConditionsMet = false
                table.insert(failedReasons, "iType mismatch (got " .. tostring(Item.isType) .. ", expected " .. tostring(rule.itype) .. ")")
            end
            if rule.difficulty and not check_difficulty(difficulty, rule.difficulty) then
                allConditionsMet = false
                table.insert(failedReasons, "difficulty mismatch")
            end
            if rule.area then
                local isMatch = false
                local function getAreaID(name)
                    return (mod == "RMD" and RMDAreaIDs[name]) or AreaIDs[name]
                end
                if getmetatable(rule.area) and getmetatable(rule.area).__not then
                    isMatch = true
                    for _, name in ipairs(rule.area) do
                        if getAreaID(name) == area then
                            isMatch = false
                            table.insert(failedReasons, "area excluded (got " .. tostring(area) .. ", excluded: " .. name .. ")")
                            break
                        end
                    end
                elseif type(rule.area) == "table" then
                    for _, name in ipairs(rule.area) do
                        if getAreaID(name) == area then
                            isMatch = true
                            break
                        end
                    end
                    if not isMatch then
                        table.insert(failedReasons, "area mismatch (got " .. tostring(area) .. ", expected one of: " .. table.concat(rule.area, ", ") .. ")")
                    end
                else
                    if getAreaID(rule.area) == area then
                        isMatch = true
                    else
                        table.insert(failedReasons,
                            "area mismatch (got " .. tostring(area) .. ", expected: " .. tostring(rule.area) .. ")")
                    end
                end

                if not isMatch then
                    allConditionsMet = false
                end
            end
            if rule.ethereal ~= nil and rule.ethereal ~= Item.Data.IsEthereal then
                allConditionsMet = false
                table.insert(failedReasons, "ethereal mismatch (got " .. tostring(Item.Data.IsEthereal) .. ", expected " .. tostring(rule.ethereal) .. ")")
            end
            if rule.identified ~= nil then
                local isID = IsIdentified(Item.Data.Flags)
                if rule.identified ~= isID then
                    allConditionsMet = false
                    table.insert(failedReasons, "identified mismatch (got " .. tostring(isID) .. ", expected " .. tostring(rule.identified) .. ")")
                end
            end
            if not stat_match(rule.stat, function(i, p) return p and Item:Stat(i, p) or Item:Stat(i) end) then
                allConditionsMet = false
                table.insert(failedReasons, "stat mismatch")
            end
            if Me and not stat_match(rule.pstat, function(i, p) return p and Me:Stat(i, p) or Me:Stat(i) end) then
                allConditionsMet = false
                table.insert(failedReasons, "pstat mismatch")
            elseif not Me and rule.pstat then
                allConditionsMet = false
                table.insert(failedReasons, "pstat check skipped due to nil Me")
            end
            if rule.runeword ~= nil then
                local isRW = IsRuneword(Item.Data.Flags)
                if rule.runeword ~= isRW then
                    allConditionsMet = false
                    table.insert(failedReasons, "runeword mismatch (got " .. tostring(isRW) .. ", expected " .. tostring(rule.runeword) .. ")")
                end
            end

            if allConditionsMet then
                matched = true
                local style = nil

                if rule.style and config.styles and config.styles[rule.style] then
                    style = config.styles[rule.style]
                end

                if contains(locs, actualLoc) then

                    -- Apply TTS or audio file based on rule value
                    if config.audioPlayback == true and rule.audio ~= nil then
                        local text = rule.audio:match("^%s*(.-)%s*$")
                        text = text or ""
                        local lower = text:lower()

                        if lower:match("%.mp3$") or lower:match("%.flac$") or lower:match("%.wav$") then
                            speak("PLAY:" .. text)
                        else
                            speak("SAY:" .. text)
                        end
                    end

                    if config.debug then
                        print("ÿcNRule #" .. ruleIndex .. " ÿc0matched for: ÿc2" .. (Item.Name or "Unnamed item"))
                    end

                    if rule.notify or (style and style.notify) then
                        local notifyRaw = rule.notify or (style and style.notify)
                        local linkColor = "4" -- default gold

                        -- Try to find first color tag
                        local firstColorTag = notifyRaw and notifyRaw:match("{(%a+)}")
                        if firstColorTag ~= nil then
                            local mapped = colorMapLink[firstColorTag:lower()]
                            if mapped then
                                linkColor = mapped
                            end
                        end

                        -- Try to find a color tag followed by {link}
                        local colorTag = notifyRaw and notifyRaw:match("{(%a+)}%s*{?link}?")
                        if colorTag ~= nil then
                            local mapped = colorMapLink[colorTag:lower()]
                            if mapped then
                                linkColor = mapped
                                notifyRaw = (notifyRaw or ""):gsub("{" .. (colorTag or "") .. "}(%s*)", "", 1)
                            end
                        end

                        -- Build item link
                        local itemLink = ": " .. Item:Link(linkColor)

                        -- Replace {link} and {name} placeholders
                        local msg = notifyRaw or ""
                        msg = msg:gsub("{link}", itemLink)
                        msg = msg:gsub("{name}", function()
                            if Item and Item:IsType(4) and not Item:IsType(45) and not Item:IsType(50) then
                                return tostring(Item:Stat(14) or "") .. "G"
                            elseif Item then
                                return tostring(Item.Name or "")
                            else
                                return ""
                            end
                        end)

                        -- Clean up remaining color tags
                        msg = applyColorTags(msg)
                        print(msg)
                    end
                end

                if (rule.hide or (style and style.hide)) and contains(locs, actualLoc) then
                    Result.Hide = true
                    local printMsg = rule.print or (style and style.print)
                    if printMsg then
                        if printMsg == true then
                            print("Hiding item: " .. Item.Name)
                        elseif type(printMsg) == "string" then
                            print(printMsg)
                        end
                    end
                    return
                end

                local background = rule.background or (style and style.background)
                if background and contains(locs, actualLoc) and type(background) == "table" and #background >= 3 then
                    local function toFloat(val)
                        return math.max(0, math.min(1, val / 255))
                    end
                    Result.Background[1] = toFloat(background[1])
                    Result.Background[2] = toFloat(background[2])
                    Result.Background[3] = toFloat(background[3])
                    Result.Background[4] = background[4] and toFloat(background[4]) or 0.95
                end

                local border = rule.border or (style and style.border)
                if border and contains(locs, actualLoc) and type(border) == "table" and #border >= 3 then
                    local function toFloat(val)
                        val = tonumber(val) or 0
                        return math.max(0, math.min(1, val / 255))
                    end
                    for i = 1, 4 do
                        Result.Border[i] = toFloat(border[i] or 255)
                    end
                    Result.Border[5] = math.max(0, math.floor(border[5] or 1))
                end

                if contains(locs, actualLoc) then
                    local name = baseName
                    local name_override = rule.name_override or (style and style.name_override)
                    local prefix = rule.prefix
                    local desc = baseDesc
                    if type(prefix) == "table" then
                        prefix = prefix[userLanguage] or prefix["enUS"]
                    end

                    local suffix = rule.suffix
                    if type(suffix) == "table" then
                        suffix = suffix[userLanguage] or suffix["enUS"]
                    end

                    local prefix_desc = rule.prefix_desc
                    if type(prefix_desc) == "table" then
                        prefix_desc = prefix_desc[userLanguage] or prefix_desc["enUS"]
                    end

                    local suffix_desc = rule.suffix_desc
                    if type(suffix_desc) == "table" then
                        suffix_desc = suffix_desc[userLanguage] or suffix_desc["enUS"]
                    end

                    if name_override then
                        name = applyColorTags(replace_placeholders(name_override, Item, Me, rule))
                    end
                    if prefix then
                        name = applyColorTags(replace_placeholders(prefix, Item, Me, rule)) .. name
                    end
                    if suffix then
                        name = name .. applyColorTags(replace_placeholders(suffix, Item, Me, rule))
                    end
                    baseName = name

                    if prefix_desc then
                        desc = desc .. applyColorTags(replace_placeholders(prefix_desc, Item, Me, rule))
                    end
                    if suffix_desc then
                        desc = applyColorTags(replace_placeholders(suffix_desc, Item, Me, rule)) .. desc
                    end
                    baseDesc = desc
                end

                if (rule.background_style or (style and style.background_style)) and contains(locs, actualLoc) then
                    local key = normalizeStyleKey(rule.background_style or (style and style.background_style) or "")
                    local bgFunc = backgroundStyles[key]
                    if bgFunc then
                        Result.BackgroundFunction = bgFunc
                    elseif config.debug then
                        print("Unknown background_style: " .. tostring(key))
                    end
                end

                if (rule.name_style or (style and style.name_style)) and contains(locs, actualLoc) then
                    local key = normalizeStyleKey(rule.name_style or (style and style.name_style) or "")
                    local nameFunc = nameStyles[key]
                    if nameFunc then
                        Result.NameFunction = nameFunc
                    elseif config.debug then
                        print("Unknown name_style: " .. tostring(key))
                    end
                end
            elseif rule.hide_mismatches then
                if (location == 0 or location == 1 or location == 2) then
                    local isLocationRulePresent = type(rule.location) == "table" or type(rule.location) == "string"
                    local safeLocations = {}

                    if isLocationRulePresent then
                        if type(rule.location) == "table" then
                            for _, locStr in ipairs(rule.location) do
                            if locStr == "atvendor" then
                                table.insert(locs, "atvendor")
                            else
                                table.insert(locs, normalize_location(locationMap[locStr] or 3))
                            end
                        end
                    else
                        if rule.location == "atvendor" then
                            table.insert(locs, "atvendor")
                        else
                            table.insert(locs, normalize_location(locationMap[rule.location or "onground"] or 3))
                        end
                    end

                    else
                        safeLocations = { 0, 1 }
                    end

                    local isSafeLocation = contains(safeLocations, actualLoc)

                    local filteredFailedReasons = {}
                    for _, reason in ipairs(failedReasons) do
                        if not reason:match("^location mismatch") or not isSafeLocation then
                            table.insert(filteredFailedReasons, reason)
                        end
                    end

                    if not isSafeLocation then
                        Result.Hide = true
                        if config.debug then
                            print("ÿc8Rule #" .. ruleIndex .. " matched code '" .. code .. "' but failed condition(s):")
                            for _, reason in ipairs(filteredFailedReasons) do
                                print("  ✖ " .. reason)
                            end
                            print("  → Item hidden: " .. (Item.Name or code))
                        end
                        return
                    elseif config.debug then
                        if #filteredFailedReasons > 0 then
                            print("ÿc8Rule #" .. ruleIndex .. " matched code '" .. code .. "' but failed condition(s):")
                            for _, reason in ipairs(filteredFailedReasons) do
                                print("  ✖ " .. reason)
                            end
                        end
                        print("  → Item not hidden due to safe location: " ..
                            tostring(location) .. " (" .. (Item.Name or code) .. ")")
                    end
                end
            end
        end

        if matched then
            Result.Name = baseName
            Result.Description = baseDesc
        elseif config.hide_mismatches then
            Result.Hide = true
            if config.debug then
                print("ÿc1No rule matched. Hiding by config.hide_mismatches: " .. Item.Name)
            end
        end
    end
end

--#endregion Apply Filter Logic
