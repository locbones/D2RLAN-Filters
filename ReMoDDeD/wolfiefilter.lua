--- Filter Title: WolfieeifloW's Filter v1.42
--- Filter Type: Relaxed, non-strict
--- Filter Description: Adding some QoL to the game while maintaining a very LoD-like style.\n\nHides small gold piles, Magic items that can be gambled instead for crafting, and in the later character levels it hides useless & non max-socket bases; everything else is shown.\nNotifies and adds borders to good items and new RMD items.\nFilter is very non-strict. For those who are collectors or those who like to still see loot.
--- Filter Link: https://github.com/locbones/D2RLAN-Filters/raw/refs/heads/main/ReMoDDeD/wolfiefilter.lua

-- For notification messages and some items I use the following color scheme:
-- +--------------------------+
-- | Purple   : highest value |
-- | Red      : high value    |
-- | Yellow   : medium value  |
-- | Green    : low value     |
-- +--------------------------+
-- Think of it as a standard traffic light.
-- Top (highest) color is red, then yellow, than green at the bottom (lowest).
--
-- All items are only hidden OUTSIDE of towns.
-- All items will be shown in towns for muling and other purposes.

return {
    reload = "WolfieeifloW's Filter v1.42: {green}reloaded",
    allowOverrides = true,
    -- debug = true,
    rules = {
        -- +-------------------------+
        -- | HOTFIXES                |
        -- +-------------------------+
        { -- Rule 1: Cube these bases to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            location = { "onplayer", "equipped", "atvendor" },
            prefix_desc = "{red}It will fix the item {tan}without {red}rerolling the stats\nCube this item alone before the next patch to fix it\n"
        },
        { -- Rule 2: Cube these Non-Ethereal 0 socket Superior or lower bases to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = false,
            sockets = "0",
            location = "onplayer",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your inventory and every stash{tan} page {white}{link}"
        },
        { -- Rule 3: Cube these Non-Ethereal 0 socket Superior or lower bases to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = false,
            sockets = "0",
            location = "equipped",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your equipment {white}{link}"
        },
        { -- Rule 4: Cube these Non-Ethereal 0 socket Superior or lower bases to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = false,
            sockets = "0",
            location = "atvendor",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it.{tan} This may trigger from vendor shops. Please recheck in a different Act.{red} Check your Merc's equipment {white}{link}"
        },
        { -- Rule 5: Cube these Ethereal Superior or lower bases to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = true,
            location = "onplayer",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your inventory and every stash{tan} page {grey}{link}"
        },
        { -- Rule 6: Cube these Ethereal Superior or lower bases to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = true,
            location = "equipped",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your equipment {grey}{link}"
        },
        { -- Rule 7: Cube these Ethereal Superior or lower bases to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = true,
            location = "atvendor",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it.{tan} This may trigger from vendor shops. Please recheck in a different Act.{red} Check your Merc's equipment {grey}{link}"
        },
        { -- Rule 8: Cube these Non-Ethereal 1+ socket Superior or lower bases to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = false,
            sockets = "1+",
            location = "onplayer",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your inventory and every stash{tan} page {grey}{link}"
        },
        { -- Rule 9: Cube these Non-Ethereal 1+ socket Superior or lower bases to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = false,
            sockets = "1+",
            location = "equipped",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your equipment {grey}{link}"
        },
        { -- Rule 10: Cube these Non-Ethereal 1+ socket Superior or lower bases to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = false,
            sockets = "1+",
            location = "atvendor",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it.{tan} This may trigger from vendor shops. Please recheck in a different Act.{red} Check your Merc's equipment {grey}{link}"
        },
        { -- Rule 11: Cube these Magic items to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "4",
            location = "onplayer",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your inventory and every stash{tan} page {blue}{link}"
        },
        { -- Rule 12: Cube these Magic items to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "4",
            location = "equipped",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your equipment {blue}{link}"
        },
        { -- Rule 13: Cube these Magic items to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "4",
            location = "atvendor",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it.{tan} This may trigger from vendor shops. Please recheck in a different Act.{red} Check your Merc's equipment {blue}{link}"
        },
        { -- Rule 14: Cube these Set items to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "5",
            location = "onplayer",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your inventory and every stash{tan} page {green}{link}"
        },
        { -- Rule 15: Cube these Set items to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "5",
            location = "equipped",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your equipment {green}{link}"
        },
        { -- Rule 16: Cube these Set items to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "5",
            location = "atvendor",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it.{tan} This may trigger from vendor shops. Please recheck in a different Act.{red} Check your Merc's equipment {green}{link}"
        },
        { -- Rule 17: Cube these Rare items to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "6",
            location = "onplayer",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your inventory and every stash{tan} page {yellow}{link}"
        },
        { -- Rule 18: Cube these Rare items to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "6",
            location = "equipped",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your equipment {yellow}{link}"
        },
        { -- Rule 19: Cube these Rare items to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "6",
            location = "atvendor",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it.{tan} This may trigger from vendor shops. Please recheck in a different Act.{red} Check your Merc's equipment {yellow}{link}"
        },
        { -- Rule 20: Cube these Unique items to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "7",
            location = "onplayer",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your inventory and every stash{tan} page {gold}{link}"
        },
        { -- Rule 21: Cube these Unique items to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "7",
            location = "equipped",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your equipment {gold}{link}"
        },
        { -- Rule 22: Cube these Unique items to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "7",
            location = "atvendor",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it.{tan} This may trigger from vendor shops. Please recheck in a different Act.{red} Check your Merc's equipment {gold}{link}"
        },
        { -- Rule 23: Cube these Crafted items to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "8",
            location = "onplayer",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your inventory and every stash{tan} page {orange}{link}"
        },
        { -- Rule 24: Cube these Crafted items to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "8",
            location = "equipped",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your equipment {orange}{link}"
        },
        { -- Rule 25: Cube these Crafted items to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "8",
            location = "atvendor",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it.{tan} This may trigger from vendor shops. Please recheck in a different Act.{red} Check your Merc's equipment {orange}{link}"
        },
        { -- Rule 26: Cube these Demon Tempered to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "9",
            location = "onplayer",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your inventory and every stash{tan} page {dark green}{link}"
        },
        { -- Rule 27: Cube these Demon Tempered to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "9",
            location = "equipped",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your equipment {dark green}{link}"
        },
        { -- Rule 28: Cube these Demon Tempered to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "9",
            location = "atvendor",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it.{tan} This may trigger from vendor shops. Please recheck in a different Act.{red} Check your Merc's equipment {dark green}{link}"
        },
        { -- Rule 29: Cube these unique charms to fix them for upcoming changes
            codes = { "m32", "m34", "m36" },
            quality = "7",
            location = { "onplayer", "equipped" },
            prefix_desc = "{red}It will fix the item {tan}without {red}rerolling the stats\nCube this item alone before the next patch to fix it\n"
        },
        { -- Rule 30: Cube these unique charms to fix them for upcoming changes
            codes = { "m32", "m34", "m36" },
            quality = "7",
            location = { "onplayer", "equipped" },
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your inventory and every stash{tan} page {gold}{link}"
        },
        { -- Rule 31: Cube Unholy Commander charm to fix it for upcoming changes
            code = "m35",
            quality = "7",
            location = { "onplayer", "equipped" },
            prefix_desc = "{red}It will fix the item {tan}without {red}rerolling the stats\nCube this item with a Token of Evil (from Edyrem) before the next patch to fix it\n"
        },
        { -- Rule 32: Cube Unholy Commander charm to fix it for upcoming changes
            code = "m35",
            quality = "7",
            location = { "onplayer", "equipped" },
            notify = "{red}WARNING! This item must be cubed with a Token of Evil (from Edyrem) to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your inventory and every stash{tan} page {gold}{link}"
        },
        -- +-------------------------+
        -- | GOLD                    |
        -- +-------------------------+
        { -- Rule 33: Hide 100 gold and less if Character Level 20+
            code = "gld",
            stat = { index = 14, op = "<=", value = 100 },
            pstat = { index = 12, op = ">=", value = 20 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 34: Hide 125 gold and less if Character Level 40+
            code = "gld",
            stat = { index = 14, op = "<=", value = 125 },
            pstat = { index = 12, op = ">=", value = 40 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 35: Hide 150 gold and less if Character Level 60+
            code = "gld",
            stat = { index = 14, op = "<=", value = 150 },
            pstat = { index = 12, op = ">=", value = 60 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 36: Hide 175 gold and less if Character Level 80+
            code = "gld",
            stat = { index = 14, op = "<=", value = 175 },
            pstat = { index = 12, op = ">=", value = 80 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 37: Hide 200 gold and less if Character Level 99+
            code = "gld",
            stat = { index = 14, op = "<=", value = 200 },
            pstat = { index = 12, op = ">=", value = 99 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        -- +-------------------------+
        -- | RMD STARTER ITEMS       |
        -- +-------------------------+
        { -- Rule 38: Reminder to pick up Horadric Cube so it doesn't get left behind
            code = "box",
            notify = "{gold}DON'T FORGET ME! {link}",
            border = { 199, 179, 119, 255, 5 }
        },
        { -- Rule 39: Reminder to pick up Town Portal Book so it doesn't get left behind
            code = "tbk",
            name_override = "{blue}Book of Safe Return",
            notify = "{blue}DON'T FORGET ME! {link}",
            border = { 110, 110, 255, 255, 5 }
        },
        { -- Rule 40: Reminder to pick up Identify Book so it doesn't get left behind
            code = "ibk",
            name_override = "{red}Book of Insight",
            notify = "{red}DON'T FORGET ME! {link}",
            border = { 255, 77, 77, 255, 5 }
        },
        { -- Rule 41: Overriding Tome of Town Portal name to the cooler name
            code = "tbk",
            name_override = "{blue}Book of Safe Return",
            location = { "onplayer", "onground", "atvendor" }
        },
        { -- Rule 42: Overriding Tome of Identify name to the cooler name
            code = "ibk",
            name_override = "{red}Book of Insight",
            location = { "onplayer", "onground", "atvendor" }
        },
        { -- Rule 43: Reminder to pick up Key so it doesn't get left behind
            code = "key",
            notify = "{gold}DON'T FORGET ME! {link}",
            border = { 199, 179, 119, 255, 5 }
        },
        { -- Rule 44: Reminder to pick up The Statue of Mythos Soul Tracker so it doesn't get left behind
            codes = { "y01", "y02", "y03", "y04", "y05", "y06", "y07", "y08", "y34", "y35", "y36", "y37", "y38", "y39", "y40" },
            notify = "{gold}DON'T FORGET ME! {link}",
            border = { 199, 179, 119, 255, 5 }
        },
        { -- Rule 45: Reminder to pick up Storage Bag so it doesn't get left behind
            code = "Z01",
            notify = "{gold}DON'T FORGET ME! {link}",
            border = { 199, 179, 119, 255, 5 }
        },
        { -- Rule 46: Fixing Storage Bag helper info
            code = "Z01",
            location = { "onplayer", "onground", "atvendor" },
            prefix_desc = "{purple}------------------\n{pink}(Cube with item to store it)\n",
        },
        { -- Rule 47: Reminder to pick up Starter's Cube of Endless Convenience so it doesn't get left behind
            code = "y66",
            notify = "{turquoise}DON'T FORGET ME! {link}",
            border = { 6, 165, 221, 255, 5 }
        },
        -- +-------------------------+
        -- | RMD NEW ITEMS           |
        -- +-------------------------+
        { -- Rule 48: Notify and medium border for all Codexes
            codes = { "a10", "a11", "a12", "a13", "a14", "a15", "a16", "a17", "a18", "a19", "a20", "a21", "a22", "a23", "a24", "a25", "a26", "a27", "a28", "a29", "a30", "a31", "a32", "a33", "a34", "a35", "a36", "a37", "a38", "a39", "a40", "a41", "a42", "a43", "a44", "a45", "a46", "a47", "a48", "a49", "a50", "a51", "a52", "a53", "a54", "a55", "a56", "a57", "a58" },
            notify = "{purple}Codex Drop {gold}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 49: Notify and medium border for all Blood Contracts
            codes = { "a00", "A00", "a01", "A01", "a02", "A02", "a03", "A03", "a04", "A04", "a05", "A05", "A06", "a07", "A07", "a08", "A08", "a09", "A09", "A10", "A11", "A12", "A13", "A14", "A15", "A16", "A17", "A18", "A19", "A20", "A21", "A22", "A23", "A24", "A25", "A26", "A27", "A28", "A29", "A30", "A31", "A32", "A33", "A34", "A35", "A36", "A37", "A38", "A39", "A40", "A41", "A42", "A43", "A44", "A45", "A46", "A47", "A48", "A49", "A50", "A51", "A52", "A53", "A54", "A55", "A56", "A57", "A58", "A59", "A60", "A61", "A62", "A63", "A64", "A65", "A66", "a67", "A67", "a68", "A68", "a69", "A69", "a70", "A70", "a71", "A71", "a72", "A72", "a73", "A73", "a74", "A74", "a75", "A75", "a76", "A76", "a77", "A77", "a78", "A78", "a79", "A79", "a80", "A80", "a81", "A81", "a82", "A82", "a83", "A83", "a84", "A84", "a85", "A85", "a86", "A86", "a87", "A87", "a88", "A88", "a89", "A89", "a90", "A90", "a91", "A91", "a92", "A92", "a93", "A93", "a94", "A94", "a95", "A95", "a96", "A96", "a97", "A97", "a98", "A98", "a99", "A99", "b00", "b01", "b02", "b03", "b04", "b05", "b06", "b07", "b08", "b09", "b10", "b11", "b12", "b13", "b14", "b15", "b16", "b17", "b18", "b19", "b20", "b21", "b22", "b23", "b24", "b25", "b26", "b27", "b28", "b29", "b30", "b31", "b32", "b33", "b34", "b35", "b36", "b37", "b38", "b39", "b40", "b41", "b42", "b43", "b44", "b45", "b46", "b47", "b48", "b49", "b50", "b51", "b52", "b53", "b54", "b55", "b56", "b57", "b58", "b59", "b60", "b61", "b62", "b63" },
            notify = "{purple}Blood Contract {orange}{link}",
            border = { 255, 168, 0, 255, 3 }
        },
        { -- Rule 50: Notify and medium border for all Blood Contracts
            codes = { "a00", "A00", "a01", "A01", "a02", "A02", "a03", "A03", "a04", "A04", "a05", "A05", "A06", "a07", "A07", "a08", "A08", "a09", "A09", "A10", "A11", "A12", "A13", "A14", "A15", "A16", "A17", "A18", "A19", "A20", "A21", "A22", "A23", "A24", "A25", "A26", "A27", "A28", "A29", "A30", "A31", "A32", "A33", "A34", "A35", "A36", "A37", "A38", "A39", "A40", "A41", "A42", "A43", "A44", "A45", "A46", "A47", "A48", "A49", "A50", "A51", "A52", "A53", "A54", "A55", "A56", "A57", "A58", "A59", "A60", "A61", "A62", "A63", "A64", "A65", "A66", "a67", "A67", "a68", "A68", "a69", "A69", "a70", "A70", "a71", "A71", "a72", "A72", "a73", "A73", "a74", "A74", "a75", "A75", "a76", "A76", "a77", "A77", "a78", "A78", "a79", "A79", "a80", "A80", "a81", "A81", "a82", "A82", "a83", "A83", "a84", "A84", "a85", "A85", "a86", "A86", "a87", "A87", "a88", "A88", "a89", "A89", "a90", "A90", "a91", "A91", "a92", "A92", "a93", "A93", "a94", "A94", "a95", "A95", "a96", "A96", "a97", "A97", "a98", "A98", "a99", "A99", "b00", "b01", "b02", "b03", "b04", "b05", "b06", "b07", "b08", "b09", "b10", "b11", "b12", "b13", "b14", "b15", "b16", "b17", "b18", "b19", "b20", "b21", "b22", "b23", "b24", "b25", "b26", "b27", "b28", "b29", "b30", "b31", "b32", "b33", "b34", "b35", "b36", "b37", "b38", "b39", "b40", "b41", "b42", "b43", "b44", "b45", "b46", "b47", "b48", "b49", "b50", "b51", "b52", "b53", "b54", "b55", "b56", "b57", "b58", "b59", "b60", "b61", "b62", "b63" },
            name_override = "{orange}Blood Contract"
        },
        { -- Rule 51: On ground add what type of Blood Contract this is (Unique Weapon)
            code = "a00",
            name_override = "{gold}Unique Weapon\n{orange}Blood Contract"
        },
        { -- Rule 52: On ground add what type of Blood Contract this is (Unique Armor)
            code = "a01",
            name_override = "{gold}Unique Armor\n{orange}Blood Contract"
        },
        { -- Rule 53: On ground add what type of Blood Contract this is (Unique Jewelry)
            code = "a02",
            name_override = "{gold}Unique Jewelry\n{orange}Blood Contract"
        },
        { -- Rule 54: On ground add what type of Blood Contract this is (Set Weapon)
            code = "a03",
            name_override = "{green}Set Weapon\n{orange}Blood Contract"
        },
        { -- Rule 55: On ground add what type of Blood Contract this is (Set Armor)
            code = "a04",
            name_override = "{green}Set Armor\n{orange}Blood Contract"
        },
        { -- Rule 56: On ground add what type of Blood Contract this is (Set Jewelry)
            code = "a05",
            name_override = "{green}Set Jewelry\n{orange}Blood Contract"
        },
        { -- Rule 57: Random RMD items that have gold names (used to match chat color brackets for notify)
            codes = { "a06", "b64", "b65", "BoH", "luv", "m27", "m32", "m33", "m34", "m35", "m36", "Rgx", "TK0", "TK8", "y09", "y10", "y11", "y12", "y13", "y14", "y15", "y16", "y17", "y18", "y19", "y20", "y21", "y22", "y23", "y24", "y25", "y26", "y27", "y28", "y29", "y30", "y31", "y32", "z00", "z01", "z02", "Z02", "z03", "Z03", "z04", "Z04", "z05", "Z05", "z06", "Z06", "z07", "Z07", "z08", "Z08", "z09", "Z09", "z10", "Z10", "z11", "Z11", "z12", "Z12", "z13", "Z13", "z14", "Z14", "z15", "Z15", "z16", "Z16", "z17", "Z17", "z18", "Z18", "Z19", "Z20", "Z21", "Z22", "Z23", "Z24", "Z25", "Z26", "Z27", "Z28", "Z29", "Z30", "Z31", "Z32", "Z33", "Z34", "Z35", "Z36", "Z37", "Z38", "Z39", "Z40", "Z41", "Z42", "Z43", "Z44", "Z45", "Z46", "Z47", "Z48", "Z49", "Z50", "Z51", "Z60", "Z61", "Z62", "Z63", "Z64", "Z65", "Z66", "Z67", "Z68", "Z69", "Z70", "Z71", "Z72", "Z73", "Z74", "Z75", "Z76", "Z77", "Z78", "Z79", "z80", "Z80", "z81", "Z81", "z82", "Z82", "z83", "Z83", "z84", "Z84", "Z85", "Z86", "Z87", "Z88", "Z89", "Z90", "Z91", "Z92", "Z93", "Z94", "Z95", "Z96", "Z97", "Z98", "Z99" },
            notify = "{purple}RMD Item {gold}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 58: Random RMD items that have red names (used to match chat color brackets for notify)
            codes = { "hpf", "hpo", "rpl", "rps", "y67" },
            notify = "{purple}RMD Item {red}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 59: Random RMD items that have blue names (used to match chat color brackets for notify)
            codes = { "m00", "m01", "m02", "m03", "m04", "m05", "m06", "m07", "m08", "m09", "m10", "m11", "m12", "m13", "m14", "m15", "m16", "m17", "m18", "m19", "m20", "m21", "m22", "m23", "m24", "m25", "m26" },
            notify = "{purple}RMD Item {blue}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 60: Random RMD items that have white names (used to match chat color brackets for notify)
            codes = { "0sc", "bpl", "bps", "brz", "elx", "eyz", "flg", "fng", "GBd", "hrn", "hrt", "jaw", "m28", "m29", "m30", "m31", "mpf", "mpo", "scz", "sol", "spe", "tal", "tch", "z19", "z20", "z21", "z22", "z23", "z24", "z25", "z26", "z27", "z28", "z29", "z30", "z31", "z32", "z33", "z34", "z35", "z36", "z37", "z38", "z39", "z40", "z41", "z42", "z43", "z44", "z45", "z46", "z47", "z48", "z49", "z50", "z51", "z52", "z53", "z54", "z55", "z56", "z57", "z58", "z59", "z60", "z61", "z62", "z63", "z64", "z65", "z66", "z67", "z68", "z69", "z70", "z71", "z72", "z73", "z74", "z75", "z76", "z77" },
            notify = "{purple}RMD Item {white}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 61: Random RMD items that have pink names (used to match chat color brackets for notify)
            codes = { "y33" },
            notify = "{purple}RMD Item {pink}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 62: Random RMD items that I'm unsure what color their name is (recoloring them white for now)
            codes = { "Bbp", "C00", "C01", "C02", "C03", "C04", "C05", "C06", "C07", "C08", "C09", "C10", "C11", "C12", "C13", "C14", "C15", "C16", "C17", "C18", "C19", "C20", "C21", "C22", "C23", "C24", "C25", "C26", "C27", "C28", "C29", "C30", "C31", "C32", "C33", "C34", "C35", "C36", "C37", "Cr1", "Cr2", "Cr3", "Cr4", "Cr5", "Cr6", "D06", "D07", "D10", "D18", "D22", "D32", "Ebp", "EcW", "Ev0", "Ev1", "Ev2", "Ev3", "Ev4", "Ev5", "Ev6", "Ev7", "Ev8", "Gu1", "Gu2", "Gu3", "Gu4", "Gu5", "IN1", "IN2", "IN3", "IN4", "IN5", "IN6", "IN7", "K01", "K02", "K03", "K04", "K05", "K06", "K07", "K08", "K09", "K10", "K11", "K12", "K13", "K14", "K15", "K16", "K17", "K18", "K19", "K20", "K21", "K22", "K23", "K24", "K25", "K26", "K27", "K28", "K29", "K30", "K31", "K32", "K33", "K34", "K35", "K36", "K37", "K38", "K39", "K40", "K41", "K42", "K43", "K44", "K45", "K46", "K47", "K48", "K49", "K50", "K51", "K52", "K53", "K54", "K55", "K56", "K57", "K58", "K59", "K60", "K61", "K62", "K63", "K64", "K65", "K66", "K67", "K68", "K69", "K70", "K71", "K72", "K73", "K74", "K75", "K76", "K77", "K78", "K79", "K80", "L00", "L01", "L02", "L03", "L04", "L05", "L06", "L07", "L08", "L09", "L10", "L11", "L12", "L13", "L14", "L15", "L16", "L17", "L18", "L19", "L20", "L21", "L22", "L23", "L24", "L25", "L26", "L27", "L28", "L29", "L30", "L31", "L32", "L33", "L34", "L35", "L36", "L37", "L38", "L39", "L40", "L41", "L42", "L43", "L44", "L45", "L46", "L47", "L48", "L49", "L50", "L51", "L52", "L53", "L54", "L55", "L56", "L57", "L58", "L59", "L60", "L61", "L62", "L63", "L64", "L65", "L66", "L67", "L68", "L69", "L70", "L71", "L72", "L73", "L74", "L75", "L76", "L77", "L78", "L79", "L80", "L81", "L82", "L83", "L84", "L85", "L86", "L87", "L88", "L89", "L90", "L91", "L92", "L93", "L94", "L95", "L96", "L97", "L98", "L99", "S01", "TK1", "TK2", "TK3", "TK4", "TK5", "TK6", "TK7", "UCR", "Xbp", "Y20", "Z52", "Z53", "Z54", "Z55", "Z56", "Z57", "Z58", "Z59" },
            notify = "{purple}RMD Item {white}{link}",
            border = { 174, 0, 255, 255, 3 }
        },
        { -- Rule 63: Add helper text to Gold Bar Splitter
            code = "GBd",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Used for splitting stacked {gold}Gold Bars\n"
        },
        { -- Rule 64: Add helper text to Key of Terror Remover to show where the key drops
            code = "Z42",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{orange}Key of Terror {grey}drops from Hell The Countess (Act 1: Forgotten Tower)\n"
        },
        { -- Rule 65: Add helper text to Key of Hate Remover to show where the key drops
            code = "Z43",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{orange}Key of Hate {grey}drops from Hell The Summoner (Act 2: Arcane Sanctuary)\n"
        },
        { -- Rule 66: Add helper text to Key of Destruction Remover to show where the key drops
            code = "Z44",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{orange}Key of Destruction {grey}drops from Hell Nihlathak (Act 5: Halls of Vaught)\n"
        },
        { -- Rule 67: Add helper text to Diablo's Horn Remover to show where the key drops
            code = "Z45",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{orange}Diablo's Horn {grey}drops from Lilth (Matron's Den)\n"
        },
        { -- Rule 68: Add helper text to Baal's Eye Remover to show where the key drops
            code = "Z46",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{orange}Baal's Eye {grey}drops from Über Izual (Furnace of Pain)\n"
        },
        { -- Rule 69: Add helper text to Mephisto's Brain Remover to show where the key drops
            code = "Z47",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{orange}Mephisto's Brain {grey}drops from Über Duriel (Forgotten Sands)\n"
        },
        { -- Rule 70: UpConverter's are only for Rare and Unique items
            codes = { "u01", "u02" },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Only works on {green}Set{grey}, {yellow}Rare{grey}, and {gold}Unique {grey}items\n\n"
        },
        -- +-------------------------+
        -- | QUEST ITEMS             |
        -- +-------------------------+
        { -- Rule 71: Notify and medium border all quest items
            codes = { "bks", "bkd", "leg", "hdm", "ass", "tr1", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", "qf2", "bbb", "mss", "hfh", "ice", "tr2" },
            notify = "Quest Item {link}",
            border = { 199, 179, 119, 255, 3 }
        },
        -- +-------------------------+
        -- | ESSENCES & TOKEN        |
        -- +-------------------------+
        { -- Rule 72: Notify and small border on essences and tokens
            codes = { "tes", "ceh", "bet", "fed", "toa" },
            notify = "{orange}Essence Drop {link}",
            border = { 255, 168, 0, 255, 1 }
        },
        -- +-------------------------+
        -- | UBER ITEMS              |
        -- +-------------------------+
        { -- Rule 73: Notify and small border on Über items
            codes = { "pk1", "pk2", "pk3", "mbr", "dhn", "bey" },
            notify = "{orange}Übers Item {link}",
            border = { 255, 168, 0, 255, 1 }
        },
        { -- Rule 74: Notify and small border on Standard of Heroes
            code = "std",
            notify = "Übers Item {link}",
            border = { 199, 179, 119, 255, 1 }
        },
        -- +-------------------------+
        -- | RUNES                   |
        -- +-------------------------+
        { -- Rule 75: Always give runes a small border (will be overridden by other borders below)
            codes = "allitems",
            itype = 74,
            border = { 255, 168, 0, 255, 1 }
        },
        { -- Rule 76: Notify until Character Level 25 and small border for Low Runes
            codes = { "r01", "r02", "r03", "r04", "r05", "r06", "r07", "r08", "r09", "r10", "r11" },
            pstat = { index = 12, op = "<=", value = 25 },
            notify = "{green}Low Rune {orange}{link}"
        },
        { -- Rule 77: Notify until Character Level 75 and medium border for Mid Runes
            codes = { "r12", "r13", "r14", "r15", "r16", "r17", "r18", "r19", "r20", "r21", "r22" },
            pstat = { index = 12, op = "<=", value = 75 },
            notify = "{yellow}Mid Rune {orange}{link}",
            border = { 255, 168, 0, 255, 3 }
        },
        { -- Rule 78: Notify and large border for High Runes
            codes = { "r23", "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31", "r32", "r33" },
            notify = "{red}High Rune {orange}{link}",
            border = { 255, 168, 0, 255, 5 }
        },
        { -- Rule 79: Notify and extra large border for Ultra Runes
            codes = { "r34", "r35", "r36" },
            notify = "{purple}Ultra Rune {orange}{link}",
            border = { 255, 168, 0, 255, 7 }
        },
        { -- Rule 80: Show Rune Points on El Rune
            code = "r01",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Low Points{blue} +1{white}){orange}\n"
        },
        { -- Rule 81: Show Rune Points on Eld Rune
            code = "r02",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Low Points{blue} +2{white}){orange}\n"
        },
        { -- Rule 82: Show Rune Points on Tir Rune
            code = "r03",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Low Points{blue} +4{white}){orange}\n"
        },
        { -- Rule 83: Show Rune Points on Nef Rune
            code = "r04",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Low Points{blue} +8{white}){orange}\n"
        },
        { -- Rule 84: Show Rune Points on Eth Rune
            code = "r05",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Low Points{blue} +16{white}){orange}\n"
        },
        { -- Rule 85: Show Rune Points on Ith Rune
            code = "r06",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Low Points{blue} +32{white}){orange}\n"
        },
        { -- Rule 86: Show Rune Points on Tal Rune
            code = "r07",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Low Points{blue} +64{white}){orange}\n"
        },
        { -- Rule 87: Show Rune Points on Ral Rune
            code = "r08",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Low Points{blue} +128{white}){orange}\n"
        },
        { -- Rule 88: Show Rune Points on Ort Rune
            code = "r09",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Low Points{blue} +256{white}){orange}\n"
        },
        { -- Rule 89: Show Rune Points on Thul Rune
            code = "r10",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Low Points{blue} +512{white}){orange}\n"
        },
        { -- Rule 90: Show Rune Points on Amn Rune
            code = "r11",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Low Points{blue} +1024{white}){orange}\n"
        },
        { -- Rule 91: Show Rune Points on Sol Rune
            code = "r12",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Mid Points{blue} +1{white}){orange}\n"
        },
        { -- Rule 92: Show Rune Points on Shael Rune
            code = "r13",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Mid Points{blue} +2{white}){orange}\n"
        },
        { -- Rule 93: Show Rune Points on Dol Rune
            code = "r14",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Mid Points{blue} +4{white}){orange}\n"
        },
        { -- Rule 94: Show Rune Points on Hel Rune
            code = "r15",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Mid Points{blue} +8{white}){orange}\n"
        },
        { -- Rule 95: Show Rune Points on #VALUE! Rune
            code = "r16",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Mid Points{blue} +16{white}){orange}\n"
        },
        { -- Rule 96: Show Rune Points on Lum Rune
            code = "r17",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Mid Points{blue} +32{white}){orange}\n"
        },
        { -- Rule 97: Show Rune Points on Ko Rune
            code = "r18",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Mid Points{blue} +64{white}){orange}\n"
        },
        { -- Rule 98: Show Rune Points on Fal Rune
            code = "r19",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Mid Points{blue} +128{white}){orange}\n"
        },
        { -- Rule 99: Show Rune Points on Lem Rune
            code = "r20",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Mid Points{blue} +256{white}){orange}\n"
        },
        { -- Rule 100: Show Rune Points on Pul Rune
            code = "r21",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Mid Points{blue} +512{white}){orange}\n"
        },
        { -- Rule 101: Show Rune Points on Um Rune
            code = "r22",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Mid Points{blue} +1024{white}){orange}\n"
        },
        { -- Rule 102: Show Rune Points on Mal Rune
            code = "r23",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(High Points{blue} +1{white}){orange}\n"
        },
        { -- Rule 103: Show Rune Points on Ist Rune
            code = "r24",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(High Points{blue} +2{white}){orange}\n"
        },
        { -- Rule 104: Show Rune Points on Gul Rune
            code = "r25",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(High Points{blue} +4{white}){orange}\n"
        },
        { -- Rule 105: Show Rune Points on Vex Rune
            code = "r26",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(High Points{blue} +8{white}){orange}\n"
        },
        { -- Rule 106: Show Rune Points on Ohm Rune
            code = "r27",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(High Points{blue} +16{white}){orange}\n"
        },
        { -- Rule 107: Show Rune Points on Lo Rune
            code = "r28",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(High Points{blue} +32{white}){orange}\n"
        },
        { -- Rule 108: Show Rune Points on Sur Rune
            code = "r29",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(High Points{blue} +64{white}){orange}\n"
        },
        { -- Rule 109: Show Rune Points on Ber Rune
            code = "r30",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(High Points{blue} +128{white}){orange}\n"
        },
        { -- Rule 110: Show Rune Points on Jah Rune
            code = "r31",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(High Points{blue} +256{white}){orange}\n"
        },
        { -- Rule 111: Show Rune Points on Cham Rune
            code = "r32",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(High Points{blue} +512{white}){orange}\n"
        },
        { -- Rule 112: Show Rune Points on Zod Rune
            code = "r33",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(High Points{blue} +1024{white}){orange}\n"
        },
        { -- Rule 113: Show Rune Points on Di Rune
            code = "r34",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Ultra Points{blue} +1{white}){orange}\n"
        },
        { -- Rule 114: Show Rune Points on Ab Rune
            code = "r35",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Ultra Points{blue} +2{white}){orange}\n"
        },
        { -- Rule 115: Show Rune Points on Er Rune
            code = "r36",
            location = { "onplayer", "atvendor" },
            prefix = "{white}(Ultra Points{blue} +4{white}){orange}\n"
        },
        -- +-------------------------+
        -- | MAGIC ITEMS             |
        -- +-------------------------+
        { -- Rule 116: Hide all non-LB Magic Weapon and Armor items at Character Level 75+ (non-LB Magic items can be gambled for crafting)
            -- codes = { "2ax", "2hs", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7hw", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mf", "7mp", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7vo", "7wa", "7wb", "7wc", "7wd", "7wh", "7wn", "7ws", "7xf", "7yw", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gs", "9gw", "9h9", "9ha", "9hw", "9ja", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mp", "9mt", "9p9", "9pa", "9pi", "9qr", "9qs", "9s8", "9s9", "9sb", "9sc", "9sm", "9sp", "9sr", "9ss", "9st", "9ta", "9tk", "9tr", "9ts", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xf", "9yw", "aar", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "bhm", "bkf", "bld", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "btx", "buc", "bwn", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "clb", "clm", "clw", "crn", "crs", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "fhl", "fla", "flb", "flc", "fld", "ful", "gax", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gst", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "jav", "kit", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mpi", "msk", "mst", "mxb", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "nec", "ned", "nee", "nef", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "pik", "pil", "plt", "qui", "rng", "rxb", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "skp", "skr", "sml", "spc", "spk", "spl", "spr", "spt", "ssd", "ssp", "sst", "stu", "swb", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "vgl", "vou", "wax", "whm", "wnd", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xcl", "xea", "xh9", "xhb", "xhg", "xhl", "xhm", "xhn", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlm", "xlt", "xmb", "xmg", "xml", "xng", "xow", "xpk", "xpl", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "ywn", "zhb", "zlb", "zmb", "ztb", "zvb" },
            codes = { "2ax", "2hs", "6bs", "6cb", "6cs", "6hb", "6hx", "6l7", "6lb", "6ls", "6lw", "6lx", "6mx", "6rx", "6s7", "6sb", "6ss", "6sw", "6ws", "72a", "72h", "7ar", "7ax", "7b7", "7b8", "7ba", "7bk", "7bl", "7br", "7bs", "7bt", "7bw", "7cl", "7cm", "7cr", "7cs", "7dg", "7di", "7fb", "7fc", "7fl", "7ga", "7gd", "7gi", "7gl", "7gm", "7gs", "7gw", "7h7", "7ha", "7hw", "7ja", "7kr", "7la", "7ls", "7lw", "7m7", "7ma", "7mf", "7mp", "7mt", "7o7", "7p7", "7pa", "7pi", "7qr", "7qs", "7s7", "7s8", "7sb", "7sc", "7sm", "7sp", "7sr", "7ss", "7st", "7ta", "7tk", "7tr", "7ts", "7tw", "7vo", "7wa", "7wb", "7wc", "7wd", "7wh", "7wn", "7ws", "7xf", "7yw", "8bs", "8cb", "8cs", "8hb", "8hx", "8l8", "8lb", "8ls", "8lw", "8lx", "8mx", "8rx", "8s8", "8sb", "8ss", "8sw", "8ws", "92a", "92h", "9ar", "9ax", "9b7", "9b8", "9b9", "9ba", "9bk", "9bl", "9br", "9bs", "9bt", "9bw", "9cl", "9cm", "9cr", "9cs", "9dg", "9di", "9fb", "9fc", "9fl", "9ga", "9gd", "9gi", "9gl", "9gm", "9gs", "9gw", "9h9", "9ha", "9hw", "9ja", "9kr", "9la", "9ls", "9lw", "9m9", "9ma", "9mp", "9mt", "9p9", "9pa", "9pi", "9qr", "9qs", "9s8", "9s9", "9sb", "9sc", "9sm", "9sp", "9sr", "9ss", "9st", "9ta", "9tk", "9tr", "9ts", "9tw", "9vo", "9wa", "9wb", "9wc", "9wd", "9wh", "9wn", "9ws", "9xf", "9yw", "aar", "Ab1", "Ab2", "Ab3", "Ab4", "Ab5", "Ab6", "Ag1", "Ag2", "Ag3", "Ag4", "Ag5", "Ag6", "am1", "am2", "am3", "am4", "am5", "am6", "am7", "am8", "am9", "ama", "amb", "amc", "amd", "ame", "amf", "axe", "axf", "ba1", "ba2", "ba3", "ba4", "ba5", "ba6", "ba7", "ba8", "ba9", "baa", "bab", "bac", "bad", "bae", "baf", "bal", "bar", "bax", "Bb1", "Bb2", "Bb3", "Bb4", "Bb5", "Bb6", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "bhm", "bkf", "bld", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bp1", "Bp2", "Bp3", "Bp4", "Bp5", "Bp6", "brn", "brs", "bsd", "bsh", "bst", "bsw", "btl", "btx", "buc", "bwn", "Ca1", "Ca2", "Ca3", "Ca4", "Ca5", "Ca6", "cap", "cbw", "ces", "chn", "ci0", "ci1", "ci2", "ci3", "clb", "clm", "clw", "crn", "crs", "cst", "dgr", "dir", "dr1", "dr2", "dr3", "dr4", "dr5", "dr6", "dr7", "dr8", "dr9", "dra", "drb", "drc", "drd", "dre", "drf", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "fhl", "fla", "flb", "flc", "fld", "ful", "gax", "Gg1", "Gg2", "Gg3", "ghm", "gis", "gix", "glv", "gma", "gsc", "gsd", "gst", "gth", "gts", "gwn", "hal", "hax", "hbl", "hbt", "hbw", "hgl", "hla", "hlm", "hxb", "jav", "k01", "k02", "k03", "kit", "kri", "ktr", "lax", "lbb", "lbl", "lbt", "lbw", "lea", "lgl", "lrg", "lsd", "lst", "ltp", "lwb", "lxb", "mac", "mau", "mbl", "mbt", "mgl", "mpi", "msk", "mst", "mxb", "Na1", "Na2", "Na3", "Na4", "Na5", "Na6", "ne1", "ne2", "ne3", "ne4", "ne5", "ne6", "ne7", "ne8", "ne9", "nea", "neb", "nec", "ned", "nee", "nef", "neg", "Oa1", "Oa2", "Oa3", "ob1", "ob2", "ob3", "ob4", "ob5", "ob6", "ob7", "ob8", "ob9", "oba", "obb", "obc", "obd", "obe", "obf", "pa1", "pa2", "pa3", "pa4", "pa5", "pa6", "pa7", "pa8", "pa9", "paa", "pab", "pac", "pad", "pae", "paf", "pax", "Pc1", "Pc2", "Pc3", "pik", "pil", "plt", "Pm1", "Pm2", "Pm3", "qui", "rng", "rxb", "Sa1", "Sa2", "Sa3", "Sa4", "Sa5", "Sa6", "sbb", "sbr", "sbw", "scl", "scm", "scp", "scy", "skp", "skr", "sml", "spc", "spk", "spl", "spr", "spt", "Ss1", "Ss2", "Ss3", "Ss4", "ssd", "ssp", "sst", "St0", "St1", "St2", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "stu", "swb", "tax", "tbl", "tbt", "tgl", "tkf", "tow", "tri", "tsp", "uap", "uar", "ucl", "uea", "uh9", "uhb", "uhc", "uhg", "uhl", "uhm", "uhn", "uit", "ukp", "ula", "ulb", "ulc", "uld", "ulg", "ulm", "ult", "umb", "umc", "umg", "uml", "ung", "uow", "upk", "upl", "urg", "urn", "urs", "ush", "usk", "utb", "utc", "utg", "uth", "utp", "uts", "utu", "uuc", "uui", "uul", "uvb", "uvc", "uvg", "vbl", "vbt", "Vg1", "Vg2", "Vg3", "Vg4", "Vg5", "Vg6", "vgl", "vou", "wax", "whm", "wnd", "Wp1", "Wp2", "Wp3", "wrb", "wsc", "wsd", "wsp", "wst", "xap", "xar", "xcl", "xea", "xh9", "xhb", "xhg", "xhl", "xhm", "xhn", "xit", "xkp", "xla", "xlb", "xld", "xlg", "xlm", "xlt", "xmb", "xmg", "xml", "xng", "xow", "xpk", "xpl", "xrg", "xrn", "xrs", "xsh", "xsk", "xtb", "xtg", "xth", "xtp", "xts", "xtu", "xuc", "xui", "xul", "xvb", "xvg", "ywn", "Zc1", "Zc2", "Zc3", "Zc4", "Zc5", "Zc6", "zhb", "zlb", "zmb", "ztb", "zvb" },
            quality = "4",
            itype = { 45, 50 },
            pstat = { index = 12, op = ">=", value = 75 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 117: Hide all magic Amulets, Rings, & Quivers at Character Level 75+ (Magic items can be gambled for crafting)
            codes = { "amu", "rin", "aqv", "cqv" },
            quality = "4",
            pstat = { index = 12, op = ">=", value = 75 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 118: Let player know LB items can be good for crafting
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17" },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Craft with {red}ⅳ {grey}items as you can 6os them after\n"
        },
        -- +-------------------------+
        -- | SET ITEMS               |
        -- +-------------------------+
        { -- Rule 119: Notify and small border for all Set items
            codes = "allitems",
            quality = "5",
            notify = "{green}Set Drop {link}",
            border = { 0, 206, 0, 255, 1 },
        },
        { -- Rule 120: Civerb's Vestments Set items
            codes = "allitems",
            quality = "5",
            index = { 0, 1, 2 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Mirrored Flames*\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 121: Hsarus' Defense Set items
            codes = "allitems",
            quality = "5",
            index = { 3, 4, 5 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Mangala's Teachings\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 122: Cleglaw's Brace Set items
            codes = "allitems",
            quality = "5",
            index = { 6, 7, 8 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Mikael's Toxicity\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 123: Iratha's Finery Set items
            codes = "allitems",
            quality = "5",
            index = { 9, 10, 11, 12 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Elemental Blueprints*\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 124: Isenhart's Armory Set items
            codes = "allitems",
            quality = "5",
            index = { 13, 14, 15, 16 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Plates of Protection\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 125: Vidala's Rig Set items
            codes = "allitems",
            quality = "5",
            index = { 17, 18, 19, 20 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Blessing of Artemis*\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 126: Milabrega's Regalia Set items
            codes = "allitems",
            quality = "5",
            index = { 21, 22, 23, 24 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Raijin's Rebellion\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 127: Cathan's Traps Set items
            codes = "allitems",
            quality = "5",
            index = { 25, 26, 27, 28, 29 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Raijin's Rebellion\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 128: Tancred's Battlegear Set items
            codes = "allitems",
            quality = "5",
            index = { 30, 31, 32, 33, 34 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Underworld Unrest\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 129: Sigon's Complete Steel Set items
            codes = "allitems",
            quality = "5",
            index = { 35, 36, 37, 38, 39, 40 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Blacklight (Paladin)\nBlacklight (Barbarian)\nPulsing Presence\nJustitia's Divinity\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 130: Infernal Tools Set items
            codes = "allitems",
            quality = "5",
            index = { 41, 42, 43 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Warrior's Wrath\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 131: Berserker's Arsenal Set items
            codes = "allitems",
            quality = "5",
            index = { 44, 45, 46 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Unstoppable Force**\nArtio's Calling*\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 132: Death's Disguise Set items
            codes = "allitems",
            quality = "5",
            index = { 47, 48, 49 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Unstoppable Force**\nMemento Mori\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 133: Angelic Raiment Set items
            codes = "allitems",
            quality = "5",
            index = { 50, 51, 52, 53 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Pulsing Presence\nCelestial Caress\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        -- { -- Rule xx: Arctic Gear Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 54, 55, 56, 57 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        { -- Rule 134: Arcanna's Tricks Set items
            codes = "allitems",
            quality = "5",
            index = { 58, 59, 60, 61 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Elemental Blueprints*\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 135: Natalya's Odium Set items
            codes = "allitems",
            quality = "5",
            index = { 62, 63, 64, 65 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Path of the Vortex (Barbarian)\nPath of the Vortex (Assassin)\nSilhouette of Silence\nMangala's Teachings\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 136: Aldur's Watchtower Set items
            codes = "allitems",
            quality = "5",
            index = { 66, 67, 68, 69 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Warrior's Wrath\nMirrored Flames*\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 137: Immortal King Set items
            codes = "allitems",
            quality = "5",
            index = { 70, 71, 72, 73, 74, 75 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Blacklight (Paladin)\nBlacklight (Barbarian)\nWarrior's Wrath\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 138: Tal Rasha's Wrappings Set items
            codes = "allitems",
            quality = "5",
            index = { 76, 77, 78, 79, 80 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Sacrificial Tribute\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 139: Griswold's Legacy Set items
            codes = "allitems",
            quality = "5",
            index = { 81, 82, 83, 84 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Sacrificial Tribute\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 140: Trang-Oul's Avatar Set items
            codes = "allitems",
            quality = "5",
            index = { 85, 86, 87, 88, 89 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Underworld Unrest\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 141: M'avina's Battle Hymn Set items
            codes = "allitems",
            quality = "5",
            index = { 90, 91, 92, 93, 94 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Blessing of Artemis*\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 142: The Disciple Set items
            codes = "allitems",
            quality = "5",
            index = { 95, 96, 97, 98, 99 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Celestial Caress\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 143: Heaven's Brethren Set items
            codes = "allitems",
            quality = "5",
            index = { 100, 101, 102, 103 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Raijin's Rebellion\nPulsing Presence\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 144: Orphan's Call Set items
            codes = "allitems",
            quality = "5",
            index = { 104, 105, 106, 107 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Justitia's Divinity\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        -- { -- Rule xx: Hwanin's Majesty Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 108, 109, 110, 111 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        { -- Rule 145: Sazabi's Grand Tribute Set items
            codes = "allitems",
            quality = "5",
            index = { 112, 113, 114 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Plates of Protection\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 146: Bul-Kathos' Children Set items
            codes = "allitems",
            quality = "5",
            index = { 115, 116 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Unstoppable Force**\nBlessing of Artemis*\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 147: Cow King's Leathers Set items
            codes = "allitems",
            quality = "5",
            index = { 117, 118, 119 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Artio's Calling*\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 148: Naj's Ancient Vestige Set items
            codes = "allitems",
            quality = "5",
            index = { 120, 121, 122 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Elemental Blueprints*\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        -- { -- Rule xx: Sander's Folly Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 123, 124, 125, 126 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        { -- Rule 149: Holy Vessel Set items
            codes = "allitems",
            quality = "5",
            index = { 127, 128, 129, 130 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Celestial Caress\nBreaker of Chains\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 150: Majestic Lancer Set items
            codes = "allitems",
            quality = "5",
            index = { 131, 132, 133 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Breaker of Chains\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        -- { -- Rule xx: Skovos Storm Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 134, 135, 136 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        { -- Rule 151: Wonder Wear Set items
            codes = "allitems",
            quality = "5",
            index = { 137, 138, 139, 140 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Plates of Protection\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 152: Vizjerei Vocation Set items
            codes = "allitems",
            quality = "5",
            index = { 141, 142, 143 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Cascading Caldera\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 153: Beyond Battlemage Set items
            codes = "allitems",
            quality = "5",
            index = { 144, 145, 146 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Cascading Caldera\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 154: Glacial Plains Set items
            codes = "allitems",
            quality = "5",
            index = { 147, 148, 149 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Black Tempest\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 155: Rathma's Calling Set items
            codes = "allitems",
            quality = "5",
            index = { 150, 151, 152, 153 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Mikael's Toxicity\nMemento Mori\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 156: Stacatomamba's Guidance Set items
            codes = "allitems",
            quality = "5",
            index = { 154, 155 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Mangala's Teachings\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 157: Kreigur's Mastery Set items
            codes = "allitems",
            quality = "5",
            index = { 156, 157 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Silhouette of Silence\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        -- { -- Rule xx: Scarlet Sukami Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 158, 159 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        { -- Rule 158: Mirrored Flames Set items
            codes = "allitems",
            quality = "5",
            index = { 160, 161, 162 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Sacrificial Tribute\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 159: Unstoppable Force Set items
            codes = "allitems",
            quality = "5",
            index = { 163, 164 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Path of the Vortex (Barbarian)\nPath of the Vortex (Assassin)\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        -- { -- Rule xx: Underworld's Unrest Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 165, 166, 167 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        { -- Rule 160: Elemental Blueprints Set items
            codes = "allitems",
            quality = "5",
            index = { 168, 169, 170 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Cascading Caldera\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        -- { -- Rule xx: Raijin's Rebellion Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 171, 172, 173 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Mikael's Toxicity Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 174, 175, 176 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Warrior's Path Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 177, 178 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        { -- Rule 161: Blessings of Artemis Set items
            codes = "allitems",
            quality = "5",
            index = { 179, 180 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Black Tempest\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 162: Artio's Calling Set items
            codes = "allitems",
            quality = "5",
            index = { 181, 182, 183 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Memento Mori\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        },
        -- { -- Rule xx: Justitia's Divinity Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 184, 185 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Pulsing Presence Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 186, 187, 188 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Celestial Caress Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 189, 190, 191 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Breaker of Chains Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 192, 193 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Silhouette of Silence Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 194, 195, 196 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Mangala's Teachings Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 197, 198 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Sacrificial Trinity Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 199, 200, 201 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Plates of Protection Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 202, 203, 204 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Black Tempest Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 205, 206, 207 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Memento Mori Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 208, 209, 210 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Cascading Caldera Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 211, 212, 213 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Path of the Vortex (Assassin) Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 214, 215 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Path of the Vortex (Barbarian) Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 216, 217 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Blacklight (Barbarian) Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",
        --     index = { 218, 219 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- { -- Rule xx: Blacklight (Paladin) Set items (not currently used in any Forsaken Pacts)
        --     codes = "allitems",
        --     quality = "5",i
        --     index = { 220, 221 },
        --     location = { "onplayer", "atvendor" },
        --     prefix_desc = "{green}xx\n{grey}Used in {green}Forsaken Pacts{grey}:\n"
        -- },
        -- +-------------------------+
        -- | FORSAKEN PACTS HELPERS  |
        -- +-------------------------+
        { -- Rule 163: Civerb's Vestments Forsaken Pact
            code = "L00",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Mirrored Flames {grey}({green}Civerb's + Aldur's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 164: Hsarus' Defense Forsaken Pact
            code = "L01",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Mangala's Teachings {grey}({green}Hsarus' + Natalya's + Stacatomamba's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 165: Cleglaw's Brace Forsaken Pact
            code = "L02",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Mikael's Toxicity {grey}({green}Cleglaw's + Rathma's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 166: Iratha's Finery Forsaken Pact
            code = "L03",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Elemental Blueprints {grey}({green}Iratha's + Arcanna's + Naj's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 167: Isenhart's Armory Forsaken Pact
            code = "L04",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Plates of Protection {grey}({green}Isenhart's + Sazabi's + Wonder Wear{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 168: Vidala's Rig Forsaken Pact
            code = "L05",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Blessing of Artemis {grey}({green}Vidala's + M'avina's + Bul-Kathos'{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 169: Milabrega's Regalia Forsaken Pact
            code = "L06",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Raijin's Rebellion {grey}({green}Milabrega's + Cathan's + Heaven's Brethren{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 170: Cathan's Traps Forsaken Pact
            code = "L07",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Raijin's Rebellion {grey}({green}Milabrega's + Cathan's + Heaven's Brethren{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 171: Tancred's Battlegear Forsaken Pact
            code = "L08",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Underworld Unrest {grey}({green}Trang-Oul's + Tancred's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 172: Sigon's Complete Steel Forsaken Pact
            code = "L09",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Blacklight (Paladin) {grey}({green}Sigon's + Immortal King{grey})\n{green}Blacklight (Barbarian) {grey}({green}Sigon's + Immortal King{grey})\n{green}Pulsing Presence {grey}({green}Sigon's + Angelic + Heaven's Brethren{grey})\n{green}Justitia's Divinity {grey}({green}Sigon's + Orphan's Call{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 173: Infernal Tools Forsaken Pact
            code = "L10",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Warrior's Wrath {grey}({green}Immortal King + Aldur's + Infernal{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 174: Berserker's Arsenal Forsaken Pact
            code = "L11",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Unstoppable Force {grey}({green}Bul-Kathos' + Berserker's + Death's{grey})\n{green}Artio's Calling {grey}({green}Berserker's + Cow King's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 175: Death's Disguise Forsaken Pact
            code = "L12",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Unstoppable Force {grey}({green}Bul-Kathos' + Berserker's + Death's{grey})\n{green}Memento Mori {grey}({green}Rathma's + Artio's Calling + Death's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 176: Angelic Raiment Forsaken Pact
            code = "L13",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Pulsing Presence {grey}({green}Sigon's + Angelic + Heaven's Brethren{grey})\n{green}Celestial Caress {grey}({green}Angelic + Disciple + Holy Vessel's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 177: Arctic Gear Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L14",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 178: Arcanna's Tricks Forsaken Pact
            code = "L15",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Elemental Blueprints {grey}({green}Iratha's + Arcanna's + Naj's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 179: Natalya's Odium Forsaken Pact
            code = "L16",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Path of the Vortex (Barbarian) {grey}({green}Unstoppable Force + Natalya's{grey})\n{green}Path of the Vortex (Assassin) {grey}({green}Unstoppable Force + Natalya's{grey})\n{green}Silhouette of Silence {grey}({green}Natalya's + Kreigur's{grey})\n{green}Mangala's Teachings {grey}({green}Hsarus' + Natalya's + Stacatomamba's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 180: Aldur's Watchtower Forsaken Pact
            code = "L17",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Warrior's Wrath {grey}({green}Immortal King + Aldur's + Infernal{grey})\n{green}Mirrored Flames {grey}({green}Civerb's + Aldur's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 181: Immortal King Forsaken Pact
            code = "L18",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Blacklight (Paladin) {grey}({green}Sigon's + Immortal King{grey})\n{green}Blacklight (Barbarian) {grey}({green}Sigon's + Immortal King{grey})\n{green}Warrior's Wrath {grey}({green}Immortal King + Aldur's + Infernal{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 182: Tal Rasha's Wrappings Forsaken Pact
            code = "L19",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Sacrificial Tribute {grey}({green}Tal Rasha's + Griswold's + Mirrored Flames{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 183: Griswold's Legacy Forsaken Pact
            code = "L20",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Sacrificial Tribute {grey}({green}Tal Rasha's + Griswold's + Mirrored Flames{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 184: Trang-Oul's Avatar Forsaken Pact
            code = "L21",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Underworld Unrest {grey}({green}Trang-Oul's + Tancred's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 185: M'avina's Battle Hymn Forsaken Pact
            code = "L22",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Blessing of Artemis {grey}({green}Vidala's + M'avina's + Bul-Kathos'{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 186: The Disciple Forsaken Pact
            code = "L23",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Celestial Caress {grey}({green}Angelic + Disciple + Holy Vessel's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 187: Heaven's Brethren Forsaken Pact
            code = "L24",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Raijin's Rebellion {grey}({green}Milabrega's + Cathan's + Heaven's Brethren{grey})\n{green}Pulsing Presence {grey}({green}Sigon's + Angelic + Heaven's Brethren{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 188: Orphan's Call Forsaken Pact
            code = "L25",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Justitia's Divinity {grey}({green}Sigon's + Orphan's Call{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 189: Hwanin's Majesty Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L26",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 190: Sazabi's Grand Tribute Forsaken Pact
            code = "L27",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Plates of Protection {grey}({green}Isenhart's + Sazabi's + Wonder Wear{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 191: Bul-Kathos' Children Forsaken Pact
            code = "L28",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Unstoppable Force {grey}({green}Bul-Kathos' + Berserker's + Death's{grey})\n{green}Blessing of Artemis {grey}({green}Vidala's + M'avina's + Bul-Kathos'{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 192: Cow King's Leathers Forsaken Pact
            code = "L29",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Artio's Calling {grey}({green}Berserker's + Cow King's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 193: Naj's Ancient Vestige Forsaken Pact
            code = "L30",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Elemental Blueprints {grey}({green}Iratha's + Arcanna's + Naj's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 194: Sander's Folly Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L31",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 195: Holy Vessel Forsaken Pact
            code = "L32",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Celestial Caress {grey}({green}Angelic + Disciple + Holy Vessel's{grey})\n{green}Breaker of Chains {grey}({green}Holy Vessel's + Majestic Lancer's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 196: Majestic Lancer Forsaken Pact
            code = "L33",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Breaker of Chains {grey}({green}Holy Vessel's + Majestic Lancer's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 197: Skovos Storm Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L34",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 198: Wonder Wear Forsaken Pact
            code = "L35",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Plates of Protection {grey}({green}Isenhart's + Sazabi's + Wonder Wear{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 199: Vizjerei Vocation Forsaken Pact
            code = "L36",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Cascading Caldera {grey}({green}Elemental Blueprints + Vizjerei + Beyond Battlemage{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 200: Beyond Battlemage Forsaken Pact
            code = "L37",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Cascading Caldera {grey}({green}Elemental Blueprints + Vizjerei + Beyond Battlemage{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 201: Glacial Plains Forsaken Pact
            code = "L38",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Black Tempest {grey}({green}Glacial Plains + Blessings of Artemis{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 202: Rathma's Calling Forsaken Pact
            code = "L39",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Mikael's Toxicity {grey}({green}Cleglaw's + Rathma's{grey})\n{green}Memento Mori {grey}({green}Rathma's + Artio's Calling + Death's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 203: Stacatomamba's Guidance Forsaken Pact
            code = "L40",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Mangala's Teachings {grey}({green}Hsarus' + Natalya's + Stacatomamba's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 204: Kreigur's Mastery Forsaken Pact
            code = "L41",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Silhouette of Silence {grey}({green}Natalya's + Kreigur's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 205: Scarlet Sukami Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L42",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 206: Mirrored Flames Forsaken Pact
            code = "L43",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Sacrificial Tribute {grey}({green}Tal Rasha's + Griswold's + Mirrored Flames{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 207: Unstoppable Force Forsaken Pact
            code = "L44",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Path of the Vortex (Barbarian) {grey}({green}Unstoppable Force + Natalya's{grey})\n{green}Path of the Vortex (Assassin) {grey}({green}Unstoppable Force + Natalya's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 208: Underworld's Unrest Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L45",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 209: Elemental Blueprints Forsaken Pact
            code = "L46",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Cascading Caldera {grey}({green}Elemental Blueprints + Vizjerei + Beyond Battlemage{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 210: Raijin's Rebellion Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L47",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 211: Mikael's Toxicity Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L48",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 212: Warrior's Wrath Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L49",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 213: Blessings of Artemis Forsaken Pact
            code = "L50",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Black Tempest {grey}({green}Glacial Plains + Blessings of Artemis{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 214: Artio's Calling Forsaken Pact
            code = "L51",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{green}Memento Mori {grey}({green}Rathma's + Artio's Calling + Death's{grey})\nUsed in {green}Forsaken Pacts{grey}:\n"
        },
        { -- Rule 215: Justitia's Divinity Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L52",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 216: Pulsing Presence Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L53",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 217: Celestial Caress Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L54",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 218: Breaker of Chains Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L55",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 219: Silhouette of Silence Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L56",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 220: Mangala's Teachings Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L57",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 221: Sacrificial Trinity Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L58",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 222: Plates of Protection Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L59",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        { -- Rule 223: Black Tempest Forsaken Pact (not currently used in any Forsaken Forsaken Pacts)
            code = "L60",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Not used in any {green}Forsaken Pacts{grey} currently\n"
        },
        -- +-------------------------+
        -- | RARE ITEMS              |
        -- +-------------------------+
        { -- Rule 224: Small border on Rare Amulets, Rings, and Jewels
            codes = { "amu", "rin", "jew" },
            quality = "6",
            border = { 255, 255, 100, 255, 1 }
        },
        { -- Rule 225: Hide all non-LB Rare Weapons and Armor items at Character Level 75+ (they are relatively useless)
            codes = NOT { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17" },
            quality = "6",
            itype = { 45, 50 },
            pstat = { index = 12, op = ">=", value = 75 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        -- +-------------------------+
        -- | UNIQUE ITEMS            |
        -- +-------------------------+
        { -- Rule 226: Notify and small border for all Unique items
            codes = NOT { "bks", "bkd", "leg", "hdm", "ass", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", "qf2", "bbb", "mss", "hfh", "ice", "tr2", "std" },
            quality = "7",
            notify = "Unique Drop {link}",
            border = { 199, 179, 119, 255, 1 }
        },
        { -- Rule 227: Correcting Unique Small Charm color on ground
            codes = "allitems",
            quality = "7",
            identified = false,
            itype = 82,
            location = { "onplayer", "onground", "atvendor" },
            name_override = "{gold}Small Charm"
        },
        { -- Rule 228: Correcting Unique Medium Charm color on ground
            codes = "allitems",
            quality = "7",
            identified = false,
            itype = 83,
            location = { "onplayer", "onground", "atvendor" },
            name_override = "{gold}Medium Charm"
        },
        { -- Rule 229: Correcting Unique Grand Carm color on ground
            codes = "allitems",
            quality = "7",
            identified = false,
            itype = 84,
            location = { "onplayer", "onground", "atvendor" },
            name_override = "{gold}Grand Charm"
        },
        { -- Rule 230: Correcting Annihilus name color
            code = "cm1",
            quality = "7",
            index = 543,
            identified = true,
            itype = 82,
            location = { "onplayer", "onground", "atvendor" },
            name_override = "{purple}Small Charm\n{gold}Annihilus"
        },
        { -- Rule 231: Correcting Cola Cube name color
            code = "cm1",
            quality = "7",
            index = 606,
            identified = true,
            itype = 82,
            location = { "onplayer", "onground", "atvendor" },
            name_override = "{purple}Small Charm\n{gold}Cola Cube"
        },
        { -- Rule 232: Correcting Gheed's Fortune name color
            code = "cm3",
            quality = "7",
            index = 542,
            identified = true,
            itype = 84,
            location = { "onplayer", "onground", "atvendor" },
            name_override = "{purple}Grand Charm\n{gold}Gheed's Fortune"
        },
        { -- Rule 233: Correcting Unholy Commander name color
            code = "cm3",
            quality = "7",
            index = 590,
            identified = true,
            itype = 84,
            location = { "onplayer", "onground", "atvendor" },
            name_override = "{purple}Grand Charm\n{gold}Unholy Commander",
            prefix_desc = "{grey}Cube alone to change number of {blue}Leoric's Chosen {grey}(max 5)\n"
        },
        { -- Rule 234: Correcting Kuroneko no Himitsu name color
            code = "cm3",
            quality = "7",
            index = 654,
            identified = true,
            itype = 84,
            location = { "onplayer", "onground", "atvendor" },
            name_override = "{purple}Grand Charm\n{gold}Kuroneko no Himitsu"
        },
        { -- Rule 235: Correcting Blank Talent name color
            code = "cm3",
            quality = "7",
            index = 611,
            identified = true,
            itype = 84,
            location = { "onplayer", "onground", "atvendor" },
            name_override = "{purple}Grand Charm\n{gold}Blank Talent",
            prefix_desc = "{grey}Can be modified with Enhancement Crystals\n"
        },
        -- +-------------------------+
        -- | CRAFTED ITEMS           |
        -- +-------------------------+
        { -- Rule 236: Reminder to pick up Crafted items so they don't get left behind
            codes = "allitems",
            quality = "8",
            notify = "{orange}DON'T FORGET ME! {link}"
        },
        -- +-------------------------+
        -- | TEMPERED ITEMS          |
        -- +-------------------------+
        { -- Rule 237: Reminder to pick up Tempered items so they don't get left behind
            codes = "allitems",
            quality = "9",
            notify = "{green}DON'T FORGET ME! {link}"
        },
        { -- Rule 238: Normal Uniques that can be Demon-Tempered
            codes = "allitems",
            quality = "7",
            rarity = "0",
            stat = { index = 402, op = "==", value = 0 },
            index =  { 6, 45, 55, 71, 299, 330, 335 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Can be {dark green}Demon-Tempered\n"
        },
        { -- Rule 239: Exceptional Uniques that can be Demon-Tempered
            codes = "allitems",
            quality = "7",
            rarity = "1",
            stat = { index = 402, op = "==", value = 0 },
            index =  { 143, 281, 286, 347, 366, 369, 379, 386, 483 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Can be {dark green}Demon-Tempered\n"
        },
        { -- Rule 240: Elite Uniques that can be Demon-Tempered
            codes = "allitems",
            quality = "7",
            rarity = "2",
            stat = { index = 402, op = "==", value = 0 },
            index =  { 189, 211, 213, 217, 225, 226, 231, 246, 247, 249, 254, 262, 292, 295, 412, 413, 418, 423, 428, 433, 438, 445, 447, 453 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Can be {dark green}Demon-Tempered\n"
        },
        { -- Rule 241: Misc Uniques that can be Demon-Tempered
            codes = "allitems",
            quality = "7",
            stat = { index = 402, op = "==", value = 0 },
            index =  { 525, 527, 529, 532, 543, 556 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Can be {dark green}Demon-Tempered\n"
        },
        {-- Rule 242: Parts for Demon-Tempering
            codes = { "y67", "C00", "C01", "C02", "C03", "C04", "C05", "C06", "C07", "C08", "C09", "C10", "C11", "C12", "C13", "C14", "C15", "C16", "C17", "C18", "C19", "C20", "C21", "C22", "C23", "C24", "C25", "C26", "C27", "C28", "C29", "C30", "C31", "C32", "C33", "C34", "C35", "C36", "C37" },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Used in {dark green}Demon-Tempering\n"
        },
        -- +-------------------------+
        -- | POTIONS & SCROLLS       |
        -- +-------------------------+
        { -- Rule 243: Hides all non-large Potions & Scrolls after Normal Difficulty
            codes = { "mp1", "mp2", "mp3", "hp1", "hp2", "hp3", "isc", "tsc", "rvs"},
            difficulty = "1+",
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 244: Add helper text to Antidote Potion that it's used in Blood Contracts
            code = "yps",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Used for {green}Set {gray}Blood Contracts\n"
        },
        { -- Rule 245: Add helper text to Thawing Potion that it's used in Blood Contracts
            code = "wms",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Used for {gold}Unique {gray}Blood Contracts\n"
        },
        { -- Rule 246: Add helper text to Scroll of Identify for some cube recipes it's in
            code = "isc",
            location = { "onplayer", "atvendor" },
            prefix = "{red}ID Scroll {grey}+ {red}HP Potion {grey}in Nightmare or Hell = new {gold}Beacon of Hope\n{grey}Used for re-rolling {gold}Unique{grey}/{green}Set {grey}items\n"
        },
        -- +-------------------------+
        -- | BASE ITEMS              |
        -- +-------------------------+
        { -- Rule 247: Reminder to pick up Runeword items so they don't get left behind
            codes = "allitems",
            runeword = true,
            notify = "{grey}DON'T FORGET ME! {gold}{link}",
            border = { 199, 179, 119, 255, 3 }
        },
        { -- Rule 248: Hiding Inferior items at Character Level 10+
            codes = NOT { "leg" },
            quality = "1",
            itype = { 45, 50 },
            runeword = false,
            pstat = { index = 12, op = ">=", value = 10 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 249: Hiding Normal items at Character Level 50+
            codes = NOT { "leg" },
            quality = "2",
            itype = { 45, 50 },
            runeword = false,
            pstat = { index = 12, op = ">=", value = 50 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 250: Hiding Normal quivers at Character Level 10+
            codes = { "aqv", "cqv" },
            quality = "3-",
            pstat = { index = 12, op = ">=", value = 10 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        { -- Rule 251: Hides all +0 to Paladin Skill Levels Scepters at Character Level 50+
            codes = { "scp", "gsc", "wsp", "7sc", "7qs", "7ws", "9sc", "9qs", "9ws" },
            quality = "4-",
            runeword = false,
            stat = { index = 83, op = "<=", value = 0, param = 3 },
            pstat = { index = 12, op = ">=", value = 50 },
            area = NOT { "Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath" },
            hide = true
        },
        -- +-------------------------+
        -- | ITEM HELPER TEXT        |
        -- +-------------------------+
        { -- Rule 252: Scroll of Inifuss
            code = "bks",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Talk to {white}Akara {grey}in Act 1\n\n"
        },
        { -- Rule 253: Scroll of Inifuss, deciphered
            code = "bkd",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Go to Act 1: Stony Field\n\n"
        },
        { -- Rule 254: Wirt's Leg
            code = "leg",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Cube with {blue}Book of Safe Return {grey}in Act 1 to open Cow Level\n"
        },
        { -- Rule 255: Horadric Malus
            code = "hdm",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Give to {white}Charsi {grey}in Act 1\n"
        },
        { -- Rule 256: Book of Skill
            code = "ass",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Use for +1 Skill Point\n"
        },
        { -- Rule 257: Horadric Staff
            code = "hst",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{red}0   )   []   +   >>   /\\   0)\nTal Rasha's Tombs order:\n{grey}Place in {white}Orifice {grey}in Act 2: Tal Rashas Tomb\n"
        },
        { -- Rule 258: Amulet of the Viper
            code = "vip",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Cube with {gold}Staff of Kings {grey}(Act 2: Maggot Lair)\n"
        },
        { -- Rule 259: Staff of Kings
            code = "msf",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Cube with {gold}Amulet of the Viper {grey}(Act 2: Claw Viper Temple)\n"
        },
        { -- Rule 260: A Jade Figurine
            code = "j34",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Give to {white}Meshif {grey}in Act 3\n"
        },
        { -- Rule 261: The Golden Bird
            code = "g34",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Give to {white}Alkor {grey}in Act 3\n"
        },
        { -- Rule 262: Potion of Life
            code = "xyz",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Use for a permanent {blue}+20 to Life\n"
        },
        { -- Rule 263: Gidbinn
            code = "g33",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Give to {white}Ormus {grey}in Act 3\n"
        },
        { -- Rule 264: Khalim's Eye
            code = "qey",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{gold}Khalim's Flail {grey}(Act 3: Travincal)\n{gold}Khalim's Heart {grey}(Act 3: Kurast Sewers)\n{gold}Khalim's Brain {grey}(Act 3: Flayer Dungeon)\nCube with:\n\nDrops in Act 3: Spider Cavern\n"
        },
        { -- Rule 265: Khalim's Brain
            code = "qbr",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{gold}Khalim's Flail {grey}(Act 3: Travincal)\n{gold}Khalim's Heart {grey}(Act 3: Kurast Sewers)\n{gold}Khalim's Eye {grey}(Act 3: Spider Cavern)\nCube with:\n\nDrops in Act 3: Flayer Dungeon\n"
        },
        { -- Rule 266: Khalim's Heart
            code = "qhr",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{gold}Khalim's Flail {grey}(Act 3: Travincal)\n{gold}Khalim's Brain {grey}(Act 3: Flayer Dungeon)\n{gold}Khalim's Eye {grey}(Act 3: Spider Cavern)\nCube with:\n\nDrops in Act 3: Kurast Sewers\n"
        },
        { -- Rule 267: Khalim's Flail
            code = "qf1",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{gold}Khalim's Heart {grey}(Act 3: Kurast Sewers)\n{gold}Khalim's Brain {grey}(Act 3: Flayer Dungeon)\n{gold}Khalim's Eye {grey}(Act 3: Spider Cavern)\nCube with:\n\nDrops in Act 3: Travincal\n"
        },
        { -- Rule 268: Khalim's Will
            code = "qf2",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Attack {white}Compelling Orb {grey}in Act 3: Travincal\n"
        },
        { -- Rule 269: Lam Esen's Tome
            code = "bbb",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Give to {white}Alkor {grey}for +5 Stat Points\n"
        },
        { -- Rule 270: Mephisto's Soulstone
            code = "mss",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Take to the {white}Hellforge {grey}in Act 4: River of Flame\n"
        },
        { -- Rule 271: Hellforge Hammer
            code = "hfh",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Attack {white}Hellforge {grey}in Act 4: River of Flame\n"
        },
        { -- Rule 272: Malah's Potion
            code = "ice",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Use on {white}Anya {grey}in Act 5: Frozen River\n\n"
        },
        { -- Rule 273: Scroll of Resistance
            code = "tr2",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Use for a permanent {blue}All Resistances +10%%\n"
        },
        { -- Rule 274: Twisted Essence of Suffering
            code = "tes",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Cube with 1x of each {orange}Essence {grey}for a {gold}Socket Remover\n{grey}Cube with {tan}Storage Bag {grey}for +(4-7) Gems {red}or\n\n{grey}Drops from Hell Andariel & Hell Duriel\n{orange}",
        },
        { -- Rule 275: Charged Essence of Hatred
            code = "ceh",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Cube with 1x of each {orange}Essence {grey}for a {gold}Socket Remover\n{grey}Cube with {tan}Storage Bag {grey}for +(1-3) High Rune Points {red}or\n\n{grey}Drops from Hell Mephisto\n{orange}",
        },
        { -- Rule 276: Burning Essence of Terror
            code = "bet",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Cube with 1x of each {orange}Essence {grey}for a {gold}Socket Remover\n{grey}Cube with {tan}Storage Bag {grey}for +(3-6) Set Cores {red}or\n\n{grey}Drops from Hell Diablo\n{orange}",
        },
        { -- Rule 277: Festering Essence of Destruction
            code = "fed",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Cube with 1x of each {orange}Essence {grey}for a {gold}Socket Remover\n{grey}Cube with {tan}Storage Bag {grey}for +(3-6) Unique Cores {red}or\n\n{grey}Drops from Hell Baal\n{orange}",
        },
        { -- Rule 278: Key of Terror
            code = "pk1",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Cube 2x {orange}Key of Terror {grey}to get 1x {orange}Key of Hate\n{red}or\n{orange}Key of Destruction {grey}(Hell Nihlathak)\n{orange}Key of Hate {grey}(Hell Summoner)\nOpen Mini-Über portal by cubing in Act 5 with:\n\nDrops from Hell Countess\n{orange}"
        },
        { -- Rule 279: Key of Hate
            code = "pk2",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Cube 2x {orange}Key of Hate {grey}to get 1x {orange}Key of Destruction\n{red}or\n{orange}Key of Destruction {grey}(Hell Nihlathak)\n{orange}Key of Terror {grey}(Hell Countess)\nOpen Mini-Über portal by cubing in Act 5 with:\n\nDrops from Hell Summoner\n{orange}"
        },
        { -- Rule 280: Key of Destruction
            code = "pk3",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Cube 2x {orange}Key of Destruction {grey}to get 1x {orange}Key of Terror\n{red}or\n{orange}Key of Hate {grey}(Hell Summoner)\n{orange}Key of Terror {grey}(Hell Countess)\nOpen Mini-Über portal by cubing in Act 5 with:\n\nDrops from Hell Nihlathak\n{orange}"
        },
        { -- Rule 281: Mephisto's Brain
            code = "mbr",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{orange}Baal's Eye {grey}(Forgotten Sands: Über Duriel)\n{orange}Diablo's Horn {grey}(Matron's Den: Lilith)\nOpen Über Tristram portal by cubing in Act 5 with:\n\nDrops from Furance of Pain: Über Izual\n{orange}"
        },
        { -- Rule 282: Diablo's Horn
            code = "dhn",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{orange}Baal's Eye {grey}(Forgotten Sands: Über Duriel)\n{orange}Mephisto's Brain {grey}(Furance of Pain: Über Izual)\nOpen Über Tristram portal by cubing in Act 5 with:\n\nDrops from Matron's Den: Lilith\n{orange}"
        },
        { -- Rule 283: Baal's Eye
            code = "bey",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{orange}Diablo's Horn {grey}(Matron's Den: Lilith)\n{orange}Mephisto's Brain {grey}(Furance of Pain: Über Izual)\nOpen Über Tristram portal by cubing in Act 5 with:\n\nDrops from Forgotten Sands: Über Duriel\n{orange}"
        },
        { -- Rule 284: Standard of Heroes
            code = "std",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Cube with {gold}Hellfire Torch {grey}to re-roll the {gold}Hellfire Torch {grey}(any class)\nCube with {gold}Annihilus {grey}to re-roll the {gold}Annihilus {red}or\n{grey}Can be sold to {white}vendors {grey}to spawn Über Diablo {red}or\n\n{grey}Drops from Über Tristram\n"
        },
        { -- Rule 285: Amethyst gems
            codes = "allitems",
            itype = 96,
            location = { "onplayer", "atvendor" },
            prefix = "{grey}Used in {purple}Caster {grey}crafting\n"
        },
        { -- Rule 286: Diamond gems
            codes = "allitems",
            itype = 97,
            location = { "onplayer", "atvendor" },
            prefix = "{grey}Used in {white}Legion {grey}crafting\n{white}"
        },
        { -- Rule 287: Emerald gems
            codes = "allitems",
            itype = 98,
            location = { "onplayer", "atvendor" },
            prefix = "{grey}Used in {green}Safety {grey}crafting\n"
        },
        { -- Rule 288: Ruby gems
            codes = "allitems",
            itype = 99,
            location = { "onplayer", "atvendor" },
            prefix = "{grey}Used in {red}Blood {grey}crafting\n"
        },
        { -- Rule 289: Sapphire gems
            codes = "allitems",
            itype = 100,
            location = { "onplayer", "atvendor" },
            prefix = "{grey}Used in {blue}Hit Power {grey}crafting\n"
        },
        { -- Rule 290: Topaz gems
            codes = "allitems",
            itype = 101,
            location = { "onplayer", "atvendor" },
            prefix = "{grey}Used in {yellow}Disarm {grey}crafting\n"
        },
        { -- Rule 291: Amethyst Remover
            code = "Z02",
            location = { "onplayer", "atvendor" },
            prefix = "{grey}Used in {purple}Caster {grey}crafting\n"
        },
        { -- Rule 292: Topaz Remover
            code = "Z03",
            location = { "onplayer", "atvendor" },
            prefix = "{grey}Used in {yellow}Disarm {grey}crafting\n"
        },
        { -- Rule 293: Sapphire Remover
            code = "Z04",
            location = { "onplayer", "atvendor" },
            prefix = "{grey}Used in {blue}Hit Power {grey}crafting\n"
        },
        { -- Rule 294: Emerald Remover
            code = "Z05",
            location = { "onplayer", "atvendor" },
            prefix = "{grey}Used in {green}Safety {grey}crafting\n"
        },
        { -- Rule 295: Ruby Remover
            code = "Z06",
            location = { "onplayer", "atvendor" },
            prefix = "{grey}Used in {red}Blood {grey}crafting\n"
        },
        { -- Rule 296: Diamond Remover
            code = "Z07",
            location = { "onplayer", "atvendor" },
            prefix = "{grey}Used in {white}Legion {grey}crafting\n{white}"
        },
        { -- Rule 297: Skull Remover
            code = "Z08",
            location = { "onplayer", "atvendor" },
        },
        { -- Rule 298: Adding Soul Shards helper text
            code = "S01",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{tan}1-3 Soul Shards (used for Soul Summons)\n",
        },
        { -- Rule 299: Normal Unique Armor & Weapon upgrade recipe
            codes = NOT { "bks", "bkd", "leg", "hdm", "ass", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", "qf2", "bbb", "mss", "hfh", "ice", "tr2", "std" },
            itype = { 45, 50 },
            quality = "7",
            rarity = "0",
            location = "onplayer",
            prefix_desc = "{grey}Upgrade Recipe: cube with {gold}Item UpConverter {white}(Advanced)\n{gold}"
        },
        { -- Rule 300: Normal Rare Armor & Weapon upgrade recipe
            codes = "allitems",
            itype = { 45, 50 },
            quality = "6",
            rarity = "0",
            location = "onplayer",
            prefix_desc = "{grey}Upgrade Recipe: cube with {gold}Item UpConverter {white}(Advanced)\n{gold}"
        },
        { -- Rule 301: Exceptional Unique Armor & Weapon upgrade recipe
            codes = NOT { "bks", "bkd", "leg", "hdm", "ass", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", "qf2", "bbb", "mss", "hfh", "ice", "tr2", "std" },
            itype = { 45, 50 },
            quality = "7",
            rarity = "1",
            location = "onplayer",
            prefix_desc = "{grey}Upgrade Recipe: cube with {gold}Item UpConverter {white}(Elite)\n{gold}"
        },
        { -- Rule 302: Exceptional Rare Armor & Weapon upgrade recipe
            codes = "allitems",
            itype = { 45, 50 },
            quality = "6",
            rarity = "1",
            location = "onplayer",
            prefix_desc = "{grey}Upgrade Recipe: cube with {gold}Item UpConverter {white}(Elite)\n{gold}"
        },
        { -- Rule 303: Socket Remover
            code = "b64",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Cube a stack of 10x for a {gold}Premium Socket Remover\n{grey}Cube alone to remove 1x from the stack {pink}or\n",
            suffix_desc = "{tan}Cube alone to remove 1 quantity before using\n"
        },
        { -- Rule 304: Premium Socket Remover
            code = "b65",
            location = { "onplayer", "atvendor" },
            name_override = "{gold}Premium Socket Remover",
            prefix_desc = "{grey}Cube 1x alone for 10x {gold}Socket Remover\n{grey}Cube alone to remove 1x from the stack {pink}or\n",
            suffix_desc = "{tan}Cube alone to remove 1 quantity before using\n"
        },
        { -- Rule 305: Infinite Socket Remover
            code = "b66",
            location = { "onplayer", "atvendor" },
            name_override = "{gold}Infinite Socket Remover",
        },
        { -- Rule 306: Rainbow Facets
            code = "jew",
            quality = "7",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{purple}------------------\n{grey}(30 total; 5x {red}Fire{grey}, 5x {yellow}Lightning{grey}, 5x {blue}Cold{grey}, 5x {green}Poison{grey}, 5x Physical, 5x {orange}Magic{grey})\nCube 5x of each Element for a {yellow}P{blue}r{red}i{green}s{gold}m{yellow}a{blue}t{red}i{green}c {yellow}F{blue}a{red}c{green}e{gold}t\n"
        },
        { -- Rule 307: Color all class tokens
            codes = { "TK1", "TK2", "TK3", "TK4", "TK5", "TK6", "TK7" },
            location = { "onplayer", "atvendor", "onground" },
            prefix = "{purple}",
        },
        { -- Rule 308: Add info to Amazon Class Token
            code = "TK1",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{pink}Tokens required = Soul Tier (Tier 2 requires 2 tokens, Tier 3 requires 3, etc)\n{grey}Cube with {gold}Beacon of Hope {grey}to add {purple}Amazon Soul Summon\n{grey}Cube {purple}Class Token {grey}alone to change the class {red}or\n"
        },
        { -- Rule 309: Add info to Sorceress Class Token
            code = "TK2",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{pink}Tokens required = Soul Tier (Tier 2 requires 2 tokens, Tier 3 requires 3, etc)\n{grey}Cube with {gold}Beacon of Hope {grey}to add {purple}Sorceress Soul Summon\n{grey}Cube {purple}Class Token {grey}alone to change the class {red}or\n"
        },
        { -- Rule 310: Add info to Necromancer Class Token
            code = "TK3",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{pink}Tokens required = Soul Tier (Tier 2 requires 2 tokens, Tier 3 requires 3, etc)\n{grey}Cube with {gold}Beacon of Hope {grey}to add {purple}Necromancer Soul Summon\n{grey}Cube {purple}Class Token {grey}alone to change the class {red}or\n"
        },
        { -- Rule 311: Add info to Paladin Class Token
            code = "TK4",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{pink}Tokens required = Soul Tier (Tier 2 requires 2 tokens, Tier 3 requires 3, etc)\n{grey}Cube with {gold}Beacon of Hope {grey}to add {purple}Paladin Soul Summon\n{grey}Cube {purple}Class Token {grey}alone to change the class {red}or\n"
        },
        { -- Rule 312: Add info to Barbarian Class Token
            code = "TK5",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{pink}Tokens required = Soul Tier (Tier 2 requires 2 tokens, Tier 3 requires 3, etc)\n{grey}Cube with {gold}Beacon of Hope {grey}to add {purple}Barbarian Soul Summon\n{grey}Cube {purple}Class Token {grey}alone to change the class {red}or\n"
        },
        { -- Rule 313: Add info to Druid Class Token
            code = "TK6",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{pink}Tokens required = Soul Tier (Tier 2 requires 2 tokens, Tier 3 requires 3, etc)\n{grey}Cube with {gold}Beacon of Hope {grey}to add {purple}Druid Soul Summon\n{grey}Cube {purple}Class Token {grey}alone to change the class {red}or\n"
        },
        { -- Rule 314: Add info to Assassin Class Token
            code = "TK7",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{pink}Tokens required = Soul Tier (Tier 2 requires 2 tokens, Tier 3 requires 3, etc)\n{grey}Cube with {gold}Beacon of Hope {grey}to add {purple}Assassin Soul Summon\n{grey}Cube {purple}Class Token {grey}alone to change the class {red}or\n"
        },
        { -- Rule 315: Enhancement Crystals warning their only usable on Weapons/Armors
            codes = { "z00", "z01", "z02", "z03", "z04", "z05", "z06", "z07", "z08", "z09", "z10", "z11", "z12", "z13", "z14", "z15", "z16", "z17", "z18", "Z60", "Z61", "Z62", "Z63", "Z64", "Z65", "Z66", "Z67", "Z68", "Z69", "Z70", "Z71", "Z72", "Z73", "Z74", "Z75", "Z76", "Z77", "Z78", "Z79", "Z80", "Z81", "Z82", "Z83", "Z84", "Z85", "Z86", "Z87", "Z88", "Z89", "Z90", "Z91", "Z92", "Z93", "Z94", "Z95", "Z96", "Z97", "Z98", "Z99" },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Only usable on Weapons & Armors\n\n",
        },
        { -- Rule 316: Display cube recipes on Gold Bar that relate to it
            code = "Y21",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{pink}Demon-Temper recipe only works if you are LB2: Path of the Blacksmith\n{dark green}Demon-Tempered Unique {grey}+ 1x {gold}Gold Bar {grey}= Dismantle (Generate Original Unique)\n{pink}Gold Bar Cost - {white}Normal{pink}/{grey}Socketed{pink}: 2, {blue}Magic{pink}/{grey}Superior{pink}: 3, {yellow}Rare{pink}: 4, {gold}Unique{pink}/{green}Set{pink}: 5\n{grey}Any Item + {gold}Gold Bars {grey}(Separated) = Add Ethereal to Item\n\n"
        },
        { -- Rule 317: On Ramaladni's Gift display the limits it has on Weapons
            code = "Rgx",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}*NOTE: {green}Set{grey}/{gold}Unique {grey}Weapons cannot go over their natural maximum sockets\n\n{dark green}Demon Tempered{grey}: cannot use Gifts (unless LB2: Path of the Blacksmith)\n{green}Set {grey}& {gold}Unique {grey}Armor & Jewellery: up to item's maximum sockets\n{green}Set {grey}& {gold}Unique Weapons{grey}*: 1-hand: 4, 2-hand: 6\n{blue}Magic{grey}, {yellow}Rare{grey}, & {orange}Crafted{grey}: up to item's maximum sockets\n{white}Inferior{grey}, {white}Normal{grey}, & Superior: up to item's maximum sockets\n{gold}Ramaladni's Gift {grey}Socket Limits:\n"
        },
        { -- Rule 318: Helper text for 0 socket items to use Ramaladni's Gift to add sockets
            codes = "allitems",
            quality = "8-",
            maxsock = false,
            itype = { 10, 12, 50 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Use a {gold}Ramaladni's Gift {grey}to add a socket\n"
        },
        { -- Rule 319: Helper text for Magic/Rare/Crafted 0 socket Weapons to use Ramaladni's Gift to add sockets
            codes = "allitems",
            quality = { "4", "6", "8" },
            maxsock = false,
            itype = 45,
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Use a {gold}Ramaladni's Gift {grey}to add a socket\n"
        },
        { -- Rule 320: Helper text for Set/Unique 1-Hand 0 socket Weapons to use Ramaladni's Gift to add sockets
            codes = { "hax", "axe", "2ax", "mpi", "wax", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "9ha", "9ax", "92a", "9mp", "9wa", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "ob1", "ob2", "ob3", "ob4", "ob5", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "ama", "obb", "obc", "obd", "obe", "obf", "amf", "k01", "k02", "k03", "Pm1", "Pm2", "Pm3", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "Ss1", "Ss2", "Ss3", "Ss4", "l13", "l16", "l18" },
            quality = { "5", "7" },
            maxsock = false,
            itype = 45,
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Use a {gold}Ramaladni's Gift {grey}to add a socket\n"
        },
        { -- Rule 321: Helper text for Set/Unique 2-Hand 0 socket Weapons to use Ramaladni's Gift to add sockets
            codes = { "lax", "bax", "btx", "gax", "gix", "mau", "gma", "clm", "gis", "bsw", "flb", "gsd", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "9la", "9ba", "9bt", "9ga", "9gi", "9m9", "9gm", "9cm", "9gs", "9b9", "9fb", "9gd", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "7la", "7ba", "7bt", "7ga", "7gi", "7m7", "7gm", "7cm", "7gs", "7b7", "7fb", "7gd", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "am1", "am2", "am3", "am4", "am6", "am7", "am8", "am9", "amb", "amc", "amd", "ame", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "l14", "l15", "l17" },
            quality = { "5", "7" },
            maxsock = false,
            itype = 45,
            location = { "onplayer", "atvendor" },
            prefix_desc = "{grey}Use a {gold}Ramaladni's Gift {grey}to add a socket\n"
        },
        { -- Rule 322: Shows maximum sockets a non-Weapon item can get
            codes = NOT { "bks", "bkd", "leg", "hdm", "ass", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", "qf2", "bbb", "mss", "hfh", "ice", "tr2" },
            itype = { 10, 12, 50 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{white}Maximum Sockets: {maxsock}\n"
        },
        { -- Rule 323: Shows maximum sockets an Inferior/Normal/Magic/Rare/Crafted Weapon can get
            codes = "allitems",
            quality = { "1", "2", "3", "4", "6", "8" },
            itype = 45,
            location = { "onplayer", "atvendor" },
            prefix_desc = "{white}Maximum Sockets: {maxsock}\n"
        },
        { -- Rule 324: Add helper text for Set/Unique Weapons that have a maximum of 2, 3, & 4 sockets
            codes = NOT { "bks", "bkd", "leg", "hdm", "ass", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", "qf2", "bbb", "mss", "hfh", "ice", "tr2" },
            quality = { "5", "7" },
            maxsock = "4-",
            itype = 45,
            location = { "onplayer", "atvendor" },
            prefix_desc = "{white}Maximum Sockets: {maxsock}\n"
        },
        { -- Rule 325: Add helper text for 1-Hand Set/Unique Weapons that have a maximum of 5 & 6 sockets
            codes = { "hax", "axe", "2ax", "mpi", "wax", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "9ha", "9ax", "92a", "9mp", "9wa", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "7mp", "7wa", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "ob1", "ob2", "ob3", "ob4", "ob5", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "ama", "obb", "obc", "obd", "obe", "obf", "amf", "k01", "k02", "k03", "Pm1", "Pm2", "Pm3", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "Ss1", "Ss2", "Ss3", "Ss4", "l13", "l16", "l18" },
            quality = { "5", "7" },
            maxsock = "5+",
            itype = 45,
            location = { "onplayer", "atvendor" },
            prefix_desc = "{white}Maximum Sockets: 4\n"
        },
        { -- Rule 326: Add helper text for 2-Hand Set/Unique Weapons that have a maximum of 5 & 6 sockets
            codes = { "lax", "bax", "btx", "gax", "gix", "mau", "gma", "clm", "gis", "bsw", "flb", "gsd", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "9la", "9ba", "9bt", "9ga", "9gi", "9m9", "9gm", "9cm", "9gs", "9b9", "9fb", "9gd", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "7la", "7ba", "7bt", "7ga", "7gi", "7m7", "7gm", "7cm", "7gs", "7b7", "7fb", "7gd", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "am1", "am2", "am3", "am4", "am6", "am7", "am8", "am9", "amb", "amc", "amd", "ame", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "l14", "l15", "l17" },
            quality = { "5", "7" },
            maxsock = "5+",
            itype = 45,
            location = { "onplayer", "atvendor" },
            prefix_desc = "{white}Maximum Sockets: {maxsock}\n"
        },
        { -- Rule 327: Special use-case for Rune Master (since it can get 5 sockets)
            code = "72a",
            quality = "7",
            index = 189,
            sockets = "4-",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{white}Maximum Sockets: 4\n"
        },
        { -- Rule 328: Special use-case for Rune Master (since it can get 5 sockets)
            code = "72a",
            quality = "7",
            index = 189,
            sockets = "5",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{white}Maximum Sockets: 5\n"
        },
        -- +-------------------------+
        -- | TAGS & GENERIC RULES    |
        -- +-------------------------+
        { -- Rule 329: Adding item level to non-Ethereal non-socketed items (Rings, Amulets, Weapons, Armors, Jewels, and Small/Large/Grand Charms)
            codes = "allitems",
            itype = { 10, 12, 45, 50, 58, 82, 83, 84 },
            ethereal = false,
            sockets = "0",
            location = { "onplayer", "equipped" , "onground", "dropping", "atvendor" },
            suffix = " ({ilvl})"
        },
        { -- Rule 330: Adding item level to Ethereal items (Rings, Amulets, Weapons, Armors, Jewels, and Small/Large/Grand Charms)
            codes = "allitems",
            itype = { 10, 12, 45, 50, 58, 82, 83, 84 },
            ethereal = true,
            location = { "onplayer", "equipped" , "onground", "dropping", "atvendor" },
            suffix = " ({ilvl}) ",
        },
        { -- Rule 331: Adding item level to Non-Ethereal socketed items (Rings, Amulets, Weapons, Armors, Jewels, and Small/Large/Grand Charms)
            codes = "allitems",
            itype = { 10, 12, 45, 50, 58, 82, 83, 84 },
            ethereal = false,
            sockets = "1+",
            location = { "onplayer", "equipped" , "onground", "dropping", "atvendor" },
            suffix = " ({ilvl}) "
        },
        { -- Rule 332: Color item name and add [Eth] tag to Inferior, Normal, and Superior items
            codes = "allitems",
            quality = "3-",
            ethereal = true,
            prefix = "ÿcI",
            suffix = "{grey}[Eth]"
        },
        { -- Rule 333: Do NOT color item name but still add [Eth] tag to Magic+ items
            codes = "allitems",
            quality = "4+",
            ethereal = true,
            suffix = "{grey}[Eth]"
        },
        { -- Rule 334: Adding socket number tag to 1 socket items
            codes = "allitems",
            sockets = "1",
            suffix = "{grey}[{sockets}]"
        },
        { -- Rule 335: Adding socket number tag to 2 socket non-max sockets items
            codes = "allitems",
            sockets = "2",
            maxsock = "3+",
            suffix = "{grey}[{sockets}]"
        },
        { -- Rule 336: Adding socket number tag to 2 socket max sockets items
            codes = "allitems",
            sockets = "2",
            maxsock = "2",
            suffix = "{grey}[{green}{sockets}{grey}]"
        },
        { -- Rule 337: Adding socket number tag to 3 socket non-max sockets items
            codes = "allitems",
            sockets = "3",
            maxsock = "4+",
            suffix = "{grey}[{sockets}]"
        },
        { -- Rule 338: Adding socket number tag to 3 socket max sockets items
            codes = "allitems",
            sockets = "3",
            maxsock = "3",
            suffix = "{grey}[{green}{sockets}{grey}]"
        },
        { -- Rule 339: Adding socket number tag to 4 socket non-max sockets items
            codes = "allitems",
            sockets = "4",
            maxsock = "5+",
            suffix = "{grey}[{sockets}]"
        },
        { -- Rule 340: Adding socket number tag to 4 socket max sockets items
            codes = "allitems",
            sockets = "4",
            maxsock = "4",
            suffix = "{grey}[{green}{sockets}{grey}]"
        },
        { -- Rule 341: Adding socket number tag to 5 socket non-max sockets items
            codes = "allitems",
            sockets = "5",
            maxsock = "6+",
            suffix = "{grey}[{sockets}]"
        },
        { -- Rule 342: Adding socket number tag to 5 socket max sockets items
            codes = "allitems",
            sockets = "5",
            maxsock = "5",
            suffix = "{grey}[{green}{sockets}{grey}]"
        },
        { -- Rule 343: Adding socket number tag to 6 socket non-max sockets items
            codes = "allitems",
            sockets = "6",
            maxsock = "7+",
            suffix = "{grey}[{sockets}]"
        },
        { -- Rule 344: Adding socket number tag to 6 socket max sockets items
            codes = "allitems",
            sockets = "6",
            maxsock = "6",
            suffix = "{grey}[{green}{sockets}{grey}]"
        },
        { -- Rule 345: Adding socket number tag to 7 socket non-max sockets items
            codes = "allitems",
            sockets = "7",
            maxsock = "8+",
            suffix = "{grey}[{sockets}]"
        },
        { -- Rule 346: Adding socket number tag to 7 socket max sockets items
            codes = "allitems",
            sockets = "7",
            maxsock = "7",
            suffix = "{grey}[{green}{sockets}{grey}]"
        },
        { -- Rule 347: Adding socket number tag to 8 socket non-max sockets items
            codes = "allitems",
            sockets = "8",
            maxsock = "9+",
            suffix = "{grey}[{sockets}]"
        },
        { -- Rule 348: Adding socket number tag to 8 socket max sockets items
            codes = "allitems",
            sockets = "8",
            maxsock = "8",
            suffix = "{grey}[{green}{sockets}{grey}]"
        },
        { -- Rule 349: Adding socket number tag to 9 socket non-max sockets items
            codes = "allitems",
            sockets = "9",
            maxsock = "10+",
            suffix = "{grey}[{sockets}]"
        },
        { -- Rule 350: Adding socket number tag to 9 socket max sockets items
            codes = "allitems",
            sockets = "9",
            maxsock = "9",
            suffix = "{grey}[{green}{sockets}{grey}]"
        },
        { -- Rule 351: Adding superscript "1" in front of Normal tier items names
            codes = "allitems",
            rarity = "0",
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "¹"
        },
        { -- Rule 352: Adding superscript "2" in front of Exceptional tier items names
            codes = "allitems",
            rarity = "1",
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "²"
        },
        { -- Rule 353: Adding superscript "EB 3" in front of Elite tier items names
            codes = NOT { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17" },
            rarity = "2",
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "ⅲ ³"
        },
        { -- Rule 354: Adding colored superscript "LB 3" in front of Elite tier Inferior/Normal/Superior Ethereal Limit Break items names
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17" },
            ethereal = true,
            rarity = "2",
            quality = "3-",
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "{red}ⅳ ³ÿcI",
            -- prefix = "⁴"
        },
        { -- Rule 355: Adding colored superscript "LB 3" in front of Elite tier Inferior/Normal/Superior non-Ethereal socketed Limit Break items names
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17" },
            ethereal = false,
            sockets = "1+",
            rarity = "2",
            quality = "3-",
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "{red}ⅳ ³{grey}",
            -- prefix = "⁴"
        },
        { -- Rule 356: Adding colored superscript "LB 3" in front of Elite tier Inferior/Normal/Superior non-Ethereal non-socketed Limit Break items names
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17" },
            ethereal = false,
            sockets = "0",
            rarity = "2",
            quality = "3-",
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "{red}ⅳ ³{white}",
            -- prefix = "⁴"
        },
        { -- Rule 357: Adding colored superscript "LB 3" in front of Elite tier Magic Limit Break items names
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17" },
            rarity = "2",
            quality = "4",
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "{red}ⅳ ³{blue}",
            -- prefix = "⁴"
        },
        { -- Rule 358: Adding colored superscript "LB 3" in front of Elite tier Set Limit Break items names
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17" },
            rarity = "2",
            quality = "5",
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "{red}ⅳ ³{green}",
            -- prefix = "⁴"
        },
        { -- Rule 359: Adding colored superscript "LB 3" in front of Elite tier Rare Limit Break items names
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17" },
            rarity = "2",
            quality = "6",
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "{red}ⅳ ³{yellow}",
            -- prefix = "⁴"
        },
        { -- Rule 360: Adding colored superscript "LB 3" in front of Elite tier Unique Limit Break items names
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17" },
            rarity = "2",
            quality = "7",
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "{red}ⅳ ³{gold}",
            -- prefix = "⁴"
        },
        { -- Rule 361: Adding colored superscript "LB 3" in front of Elite tier Crafted Limit Break items names
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17" },
            rarity = "2",
            quality = "8",
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "{red}ⅳ ³{orange}",
            -- prefix = "⁴"
        },
        { -- Rule 362: Adding colored superscript "LB 3" in front of Elite tier Demon Tempered Limit Break items names
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17" },
            rarity = "2",
            quality = "9",
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "{red}ⅳ ³{dark green}",
            -- prefix = "⁴"
        },
        { -- Rule 363: Notify for Elite tier Limit Break items
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17" },
            rarity = "2",
            itype = { 45, 50 },
            notify = "{red}LB Item {link}"
        },
        -- +-------------------------+
        -- | TESTING                 |
        -- +-------------------------+
        -- { -- Rule 364: For testing, adds a bunch of info to item
        --     codes = "allitems",
        --     location = { "onplayer", "equipped", "onground", "dropping", "atvendor" },
        --     suffix = " \n{grey}[Code: {orange}{code}{grey}]\n[Quality: {orange}{quality}{grey}]\n[Rarity: {orange}{rarity}{grey}]\n[Index: {orange}{index}{grey}]"
        -- },
    }
}
