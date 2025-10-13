--- Filter Title: WolfieeifloW's Debug v1.15
--- Filter Type: NOT FOR NORMAL USAGE. Used for debugging and testing.
--- Filter Description: DO NOT USE THIS FOR NORMAL PLAY. It is for testing and debugging, mostly for filter creators.
--- Filter Link: https://github.com/locbones/D2RLAN-Filters/raw/refs/heads/main/ReMoDDeD/wolfiedebug.lua

return {
    reload = "WolfieeifloW's DEBUG v1.15: {green}reloaded",
    debug = false,
    allowOverrides = true,
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
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your inventory and every stash{tan} page {gray}{link}"
        },
        { -- Rule 6: Cube these Ethereal Superior or lower bases to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = true,
            location = "equipped",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your equipment {gray}{link}"
        },
        { -- Rule 7: Cube these Ethereal Superior or lower bases to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = true,
            location = "atvendor",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it.{tan} This may trigger from vendor shops. Please recheck in a different Act.{red} Check your Merc's equipment {gray}{link}"
        },
        { -- Rule 8: Cube these Non-Ethereal 1+ socket Superior or lower bases to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = false,
            sockets = "1+",
            location = "onplayer",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your inventory and every stash{tan} page {gray}{link}"
        },
        { -- Rule 9: Cube these Non-Ethereal 1+ socket Superior or lower bases to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = false,
            sockets = "1+",
            location = "equipped",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it. Check your equipment {gray}{link}"
        },
        { -- Rule 10: Cube these Non-Ethereal 1+ socket Superior or lower bases to fix them for upcoming changes
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Sa6", "Ca4", "Ca5", "Ca6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = false,
            sockets = "1+",
            location = "atvendor",
            notify = "{red}WARNING! This item must be cubed alone to fix it before the next patch. It will NOT reroll the stats. The item will have a warning on it.{tan} This may trigger from vendor shops. Please recheck in a different Act.{red} Check your Merc's equipment {gray}{link}"
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
        -- | MAX SOCKET HELPER TEXT  |
        -- +-------------------------+
        { -- Rule 33: Shows maximum sockets a non-Weapon item can get
            codes = NOT { "bks", "bkd", "leg", "hdm", "ass", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", "qf2", "bbb", "mss", "hfh", "ice", "tr2" },
            itype = { 10, 12, 50 },
            location = { "onplayer", "atvendor" },
            prefix_desc = "{white}Maximum Sockets: {maxsock}\n"
        },
        { -- Rule 34: Shows maximum sockets an Inferior/Normal/Magic/Rare/Crafted Weapon can get
            codes = "allitems",
            quality = { "1", "2", "3", "4", "6", "8" },
            itype = 45,
            location = { "onplayer", "atvendor" },
            prefix_desc = "{white}Maximum Sockets: {maxsock}\n"
        },
        { -- Rule 35: Add helper text for Set/Unique Weapons that have a maximum of 2, 3, & 4 sockets
            codes = NOT { "bks", "bkd", "leg", "hdm", "ass", "hst", "vip", "msf", "j34", "g34", "xyz", "g33", "qey", "qbr", "qhr", "qf1", "qf2", "bbb", "mss", "hfh", "ice", "tr2" },
            quality = { "5", "7" },
            maxsock = "4-",
            itype = 45,
            location = { "onplayer", "atvendor" },
            prefix_desc = "{white}Maximum Sockets: {maxsock}\n"
        },
        { -- Rule 36: Add helper text for 1-Hand Set/Unique Weapons that have a maximum of 5 & 6 sockets
            codes = { "hax", "axe", "2ax", "mpi", "wax", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "9ha", "9ax", "92a", "9mp", "9wa", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "7mp", "7wa", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "ob1", "ob2", "ob3", "ob4", "ob5", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "ama", "obb", "obc", "obd", "obe", "obf", "amf", "k01", "k02", "k03", "Pm1", "Pm2", "Pm3", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "Ss1", "Ss2", "Ss3", "Ss4", "l13", "l16", "l18" },
            quality = { "5", "7" },
            maxsock = "5+",
            itype = 45,
            location = { "onplayer", "atvendor" },
            prefix_desc = "{white}Maximum Sockets: 4\n"
        },
        { -- Rule 37: Add helper text for 2-Hand Set/Unique Weapons that have a maximum of 5 & 6 sockets
            codes = { "lax", "bax", "btx", "gax", "gix", "mau", "gma", "clm", "gis", "bsw", "flb", "gsd", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "9la", "9ba", "9bt", "9ga", "9gi", "9m9", "9gm", "9cm", "9gs", "9b9", "9fb", "9gd", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "7la", "7ba", "7bt", "7ga", "7gi", "7m7", "7gm", "7cm", "7gs", "7b7", "7fb", "7gd", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "am1", "am2", "am3", "am4", "am6", "am7", "am8", "am9", "amb", "amc", "amd", "ame", "Ds1", "Ds2", "Ds3", "Ds4", "Ds5", "Ds6", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "l14", "l15", "l17" },
            quality = { "5", "7" },
            maxsock = "5+",
            itype = 45,
            location = { "onplayer", "atvendor" },
            prefix_desc = "{white}Maximum Sockets: {maxsock}\n"
        },
        { -- Rule 38: Special use-case for Rune Master (since it can get 5 sockets)
            code = "72a",
            quality = "7",
            index = 189,
            sockets = "4-",
            location = { "onplayer", "atvendor" },
            prefix_desc = "{white}Maximum Sockets: 4\n"
        },
        { -- Rule 39: Special use-case for Rune Master (since it can get 5 sockets)
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
        { -- Rule 40: Adding item level to appropriate items (Rings, Amulets, Weapons, Armors, Jewels, and Small/Large/Grand Charms)
            codes = "allitems",
            itype = { 10, 12, 45, 50, 58, 82, 83, 84 },
            location = { "onplayer", "equipped" , "onground", "dropping", "atvendor" },
            suffix = " ({ilvl})"
        },
        { -- Rule 41: Adding [Eth] tag to items
            codes = "allitems",
            ethereal = true,
            suffix = " {gray}[Eth]"
        },
        { -- Rule 42: Adding socket number tag to Ethereal items
            codes = "allitems",
            ethereal = true,
            sockets = "1+",
            prefix = "ÿcI",
            suffix = "{gray}[{sockets}]"
        },
        { -- Rule 43: Adding socket number tag to Non-Ethereal items
            codes = "allitems",
            ethereal = false,
            sockets = "1+",
            suffix = " {gray}[{sockets}]"
            -- This second rule makes [Eth] and socket number ([#]) beside each other
        },
        { -- Rule 44: Adding superscript "1" in front of Normal tier items names
            codes = "allitems",
            rarity = 0,
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "¹"
        },
        { -- Rule 45: Adding superscript "2" in front of Exceptional tier items names
            codes = "allitems",
            rarity = 1,
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "²"
        },
        { -- Rule 46: Adding superscript "EB 3" in front of Elite tier items names
            codes = NOT { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17" },
            rarity = 2,
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "ⅲ ³"
        },
        { -- Rule 47: Adding superscript "LB 3" in front of Elite tier Limit Break items names
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17" },
            rarity = 2,
            itype = { 45, 50 },
            location = { "onground", "onplayer", "equipped", "atvendor" },
            prefix = "ⅳ ³",
            -- prefix = "⁴"
        },
        { -- Rule 48: Notify for Elite tier Limit Break items
            codes = { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17" },
            rarity = 2,
            itype = { 45, 50 },
            notify = "{red}LB Item {link}"
        },
        -- +-------------------------+
        -- | MISC TESTING            |
        -- +-------------------------+
        { -- Rule 49: Adding generic information to items name
            codes = "allitems",
            location = { "onplayer", "equipped", "onground", "dropping", "atvendor" },
            suffix = " \n{gray}[Code: {orange}{code}{gray}]\n[Quality: {orange}{quality}{gray}]\n[Rarity: {orange}{rarity}{gray}]\n[Index: {orange}{index}{gray}]"
        },
        { -- Rule 50: Adding line break to show info below this line is generic (misc) info
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n{red}------ MISC INFO ------{white}"
        },
        -- +-------------------------+
        -- | ITYPE TESTING           |
        -- +-------------------------+
        { -- Rule 51: Properly coloring items text after itype info
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "{white}"
        },
        { -- Rule 52: Spears and Polearms
            codes = "allitems",
            itype = 104,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[104: Spears and Polearms]"
        },
        { -- Rule 53: Swords and Knives
            codes = "allitems",
            itype = 103,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[103: Swords and Knives]"
        },
        { -- Rule 54: Skull
            codes = "allitems",
            itype = 102,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[102: Skull]"
        },
        { -- Rule 55: Topaz
            codes = "allitems",
            itype = 101,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[101: Topaz]"
        },
        { -- Rule 56: Sapphire
            codes = "allitems",
            itype = 100,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[100: Sapphire]"
        },
        { -- Rule 57: Ruby
            codes = "allitems",
            itype = 99,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[99: Ruby]"
        },
        { -- Rule 58: Emerald
            codes = "allitems",
            itype = 98,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[98: Emerald]"
        },
        { -- Rule 59: Diamond
            codes = "allitems",
            itype = 97,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[97: Diamond]"
        },
        { -- Rule 60: Amethyst
            codes = "allitems",
            itype = 96,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[96: Amethyst]"
        },
        { -- Rule 61: Perfect Gem
            codes = "allitems",
            itype = 95,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[95: Perfect Gem]"
        },
        { -- Rule 62: Flawless Gem
            codes = "allitems",
            itype = 94,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[94: Flawless Gem]"
        },
        { -- Rule 63: Standard Gem
            codes = "allitems",
            itype = 93,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[93: Standard Gem]"
        },
        { -- Rule 64: Flawed Gem
            codes = "allitems",
            itype = 92,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[92: Flawed Gem]"
        },
        { -- Rule 65: Chipped Gem
            codes = "allitems",
            itype = 91,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[91: Chipped Gem]"
        },
        { -- Rule 66: Magic Xbow Quiv
            codes = "allitems",
            itype = 90,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[90: Magic Xbow Quiv]"
        },
        { -- Rule 67: Magic Bow Quiv
            codes = "allitems",
            itype = 89,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[89: Magic Bow Quiv]"
        },
        { -- Rule 68: Hand to Hand 2
            codes = "allitems",
            itype = 88,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[88: Hand to Hand 2]"
        },
        { -- Rule 69: Amazon Javelin
            codes = "allitems",
            itype = 87,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[87: Amazon Javelin]"
        },
        { -- Rule 70: Amazon Spear
            codes = "allitems",
            itype = 86,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[86: Amazon Spear]"
        },
        { -- Rule 71: Amazon Bow
            codes = "allitems",
            itype = 85,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[85: Amazon Bow]"
        },
        { -- Rule 72: Large Charm
            codes = "allitems",
            itype = 84,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[84: Large Charm]"
        },
        { -- Rule 73: Medium Charm
            codes = "allitems",
            itype = 83,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[83: Medium Charm]"
        },
        { -- Rule 74: Small Charm
            codes = "allitems",
            itype = 82,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[82: Small Charm]"
        },
        { -- Rule 75: Thawing Potion
            codes = "allitems",
            itype = 81,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[81: Thawing Potion]"
        },
        { -- Rule 76: Antidote Potion
            codes = "allitems",
            itype = 80,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[80: Antidote Potion]"
        },
        { -- Rule 77: Stamina Potion
            codes = "allitems",
            itype = 79,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[79: Stamina Potion]"
        },
        { -- Rule 78: Rejuv Potion
            codes = "allitems",
            itype = 78,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[78: Rejuv Potion]"
        },
        { -- Rule 79: Mana Potion
            codes = "allitems",
            itype = 77,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[77: Mana Potion]"
        },
        { -- Rule 80: Healing Potion
            codes = "allitems",
            itype = 76,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[76: Healing Potion]"
        },
        { -- Rule 81: Circlet
            codes = "allitems",
            itype = 75,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[75: Circlet]"
        },
        { -- Rule 82: Rune
            codes = "allitems",
            itype = 74,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[74: Rune]"
        },
        { -- Rule 83: Cloak
            codes = "allitems",
            itype = 73,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[73: Cloak]"
        },
        { -- Rule 84: Pelt
            codes = "allitems",
            itype = 72,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[72: Pelt]"
        },
        { -- Rule 85: Primal Helm
            codes = "allitems",
            itype = 71,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[71: Primal Helm]"
        },
        { -- Rule 86: Auric Shields
            codes = "allitems",
            itype = 70,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[70: Auric Shields]"
        },
        { -- Rule 87: Voodoo Heads
            codes = "allitems",
            itype = 69,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[69: Voodoo Heads]"
        },
        { -- Rule 88: Orb
            codes = "allitems",
            itype = 68,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[68: Orb]"
        },
        { -- Rule 89: Hand to Hand
            codes = "allitems",
            itype = 67,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[67: Hand to Hand]"
        },
        { -- Rule 90: Druid Item
            codes = "allitems",
            itype = 66,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[66: Druid Item]"
        },
        { -- Rule 91: Assassin Item
            codes = "allitems",
            itype = 65,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[65: Assassin Item]"
        },
        { -- Rule 92: Sorceress Item
            codes = "allitems",
            itype = 64,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[64: Sorceress Item]"
        },
        { -- Rule 93: Paladin Item
            codes = "allitems",
            itype = 63,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[63: Paladin Item]"
        },
        { -- Rule 94: Necromancer Item
            codes = "allitems",
            itype = 62,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[62: Necromancer Item]"
        },
        { -- Rule 95: Barbarian Item
            codes = "allitems",
            itype = 61,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[61: Barbarian Item]"
        },
        { -- Rule 96: Amazon Item
            codes = "allitems",
            itype = 60,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[60: Amazon Item]"
        },
        { -- Rule 97: Class Specific
            codes = "allitems",
            itype = 59,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[59: Class Specific]"
        },
        { -- Rule 98: Jewel
            codes = "allitems",
            itype = 58,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[58: Jewel]"
        },
        { -- Rule 99: Blunt
            codes = "allitems",
            itype = 57,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[57: Blunt]"
        },
        { -- Rule 100: Missile
            codes = "allitems",
            itype = 56,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[56: Missile]"
        },
        { -- Rule 101: Staves And Rods
            codes = "allitems",
            itype = 55,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[55: Staves And Rods]"
        },
        { -- Rule 102: Second Hand
            codes = "allitems",
            itype = 54,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[54: Second Hand]"
        },
        { -- Rule 103: Socket Filler
            codes = "allitems",
            itype = 53,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[53: Socket Filler]"
        },
        { -- Rule 104: Miscellaneous
            codes = "allitems",
            itype = 52,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[52: Miscellaneous]"
        },
        { -- Rule 105: Any Shield
            codes = "allitems",
            itype = 51,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[51: Any Shield]"
        },
        { -- Rule 106: Any Armor
            codes = "allitems",
            itype = 50,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[50: Any Armor]"
        },
        { -- Rule 107: Combo Weapon
            codes = "allitems",
            itype = 49,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[49: Combo Weapon]"
        },
        { -- Rule 108: Thrown Weapon
            codes = "allitems",
            itype = 48,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[48: Thrown Weapon]"
        },
        { -- Rule 109: Missile Weapon
            codes = "allitems",
            itype = 47,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[47: Missile Weapon]"
        },
        { -- Rule 110: Melee Weapon
            codes = "allitems",
            itype = 46,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[46: Melee Weapon]"
        },
        { -- Rule 111: Weapon
            codes = "allitems",
            itype = 45,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[45: Weapon]"
        },
        { -- Rule 112: Javelin
            codes = "allitems",
            itype = 44,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[44: Javelin]"
        },
        { -- Rule 113: Throwing Axe
            codes = "allitems",
            itype = 43,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[43: Throwing Axe]"
        },
        { -- Rule 114: Throwing Knife
            codes = "allitems",
            itype = 42,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[42: Throwing Knife]"
        },
        { -- Rule 115: Key
            codes = "allitems",
            itype = 41,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[41: Key]"
        },
        { -- Rule 116: Body Part
            codes = "allitems",
            itype = 40,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[40: Body Part]"
        },
        { -- Rule 117: Quest
            codes = "allitems",
            itype = 39,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[39: Quest]"
        },
        { -- Rule 118: Missile Potion
            codes = "allitems",
            itype = 38,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[38: Missile Potion]"
        },
        { -- Rule 119: Helm
            codes = "allitems",
            itype = 37,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[37: Helm]"
        },
        { -- Rule 120: Mace
            codes = "allitems",
            itype = 36,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[36: Mace]"
        },
        { -- Rule 121: Crossbow
            codes = "allitems",
            itype = 35,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[35: Crossbow]"
        },
        { -- Rule 122: Polearm
            codes = "allitems",
            itype = 34,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[34: Polearm]"
        },
        { -- Rule 123: Spear
            codes = "allitems",
            itype = 33,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[33: Spear]"
        },
        { -- Rule 124: Knife
            codes = "allitems",
            itype = 32,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[32: Knife]"
        },
        { -- Rule 125: Hammer
            codes = "allitems",
            itype = 31,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[31: Hammer]"
        },
        { -- Rule 126: Sword
            codes = "allitems",
            itype = 30,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[30: Sword]"
        },
        { -- Rule 127: Club
            codes = "allitems",
            itype = 29,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[29: Club]"
        },
        { -- Rule 128: Axe
            codes = "allitems",
            itype = 28,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[28: Axe]"
        },
        { -- Rule 129: Bow
            codes = "allitems",
            itype = 27,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[27: Bow]"
        },
        { -- Rule 130: Staff
            codes = "allitems",
            itype = 26,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[26: Staff]"
        },
        { -- Rule 131: Wand
            codes = "allitems",
            itype = 25,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[25: Wand]"
        },
        { -- Rule 132: Scepter
            codes = "allitems",
            itype = 24,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[24: Scepter]"
        },
        { -- Rule 133: Not Used
            codes = "allitems",
            itype = 23,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[23: Not Used]"
        },
        { -- Rule 134: Scroll
            codes = "allitems",
            itype = 22,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[22: Scroll]"
        },
        { -- Rule 135: Torch
            codes = "allitems",
            itype = 21,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[21: Torch]"
        },
        { -- Rule 136: Gem
            codes = "allitems",
            itype = 20,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[20: Gem]"
        },
        { -- Rule 137: Belt
            codes = "allitems",
            itype = 19,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[19: Belt]"
        },
        { -- Rule 138: Book
            codes = "allitems",
            itype = 18,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[18: Book]"
        },
        { -- Rule 139: Not Used
            codes = "allitems",
            itype = 17,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[17: Not Used]"
        },
        { -- Rule 140: Gloves
            codes = "allitems",
            itype = 16,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[16: Gloves]"
        },
        { -- Rule 141: Boots
            codes = "allitems",
            itype = 15,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[15: Boots]"
        },
        { -- Rule 142: Not Used
            codes = "allitems",
            itype = 14,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[14: Not Used]"
        },
        { -- Rule 143: Charm
            codes = "allitems",
            itype = 13,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[13: Charm]"
        },
        { -- Rule 144: Amulet
            codes = "allitems",
            itype = 12,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[12: Amulet]"
        },
        { -- Rule 145: Elixir
            codes = "allitems",
            itype = 11,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[11: Elixir]"
        },
        { -- Rule 146: Ring
            codes = "allitems",
            itype = 10,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[10: Ring]"
        },
        { -- Rule 147: Potion
            codes = "allitems",
            itype = 9,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[9: Potion]"
        },
        { -- Rule 148: Herb
            codes = "allitems",
            itype = 8,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[8: Herb]"
        },
        { -- Rule 149: Player Body Part
            codes = "allitems",
            itype = 7,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[7: Player Body Part]"
        },
        { -- Rule 150: Crossbow Quiver
            codes = "allitems",
            itype = 6,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[6: Crossbow Quiver]"
        },
        { -- Rule 151: Bow Quiver
            codes = "allitems",
            itype = 5,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[5: Bow Quiver]"
        },
        { -- Rule 152: Gold
            codes = "allitems",
            itype = 4,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[4: Gold]"
        },
        { -- Rule 153: Armor
            codes = "allitems",
            itype = 3,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[3: Armor]"
        },
        { -- Rule 154: Shield
            codes = "allitems",
            itype = 2,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[2: Shield]"
        },
        { -- Rule 155: None
            codes = "allitems",
            itype = 1,
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[1: None]"
        },
        { -- Rule 156: Adding line break to show info below this line is itype info
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n{red}-------- ITYPE --------{white}"
        },
        -- +-------------------------+
        -- | STAT INDEX TESTING      |
        -- +-------------------------+
        { -- Rule 157: LB_Three
            codes = "allitems",
            stat = {index = 485, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[485: LB_Three]"
        },
        { -- Rule 158: LB_Two
            codes = "allitems",
            stat = {index = 484, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[484: LB_Two]"
        },
        { -- Rule 159: LB_One
            codes = "allitems",
            stat = {index = 483, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[483: LB_One]"
        },
        { -- Rule 160: LB_Unlock
            codes = "allitems",
            stat = {index = 482, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[482: LB_Unlock]"
        },
        { -- Rule 161: xp_hidden
            codes = "allitems",
            stat = {index = 481, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[481: xp_hidden]"
        },
        { -- Rule 162: item_skillonmondeath
            codes = "allitems",
            stat = {index = 480, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[480: item_skillonmondeath]"
        },
        { -- Rule 163: item_skillonhit_piercing
            codes = "allitems",
            stat = {index = 479, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[479: item_skillonhit_piercing]"
        },
        { -- Rule 164: item_skillonhit_cleaving
            codes = "allitems",
            stat = {index = 478, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[478: item_skillonhit_cleaving]"
        },
        { -- Rule 165: item_skillonhit_sweeping
            codes = "allitems",
            stat = {index = 477, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[477: item_skillonhit_sweeping]"
        },
        { -- Rule 166: RB_Ultra
            codes = "allitems",
            stat = {index = 476, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[476: RB_Ultra]"
        },
        { -- Rule 167: RW_TierDisplay
            codes = "allitems",
            stat = {index = 475, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[475: RW_TierDisplay]"
        },
        { -- Rule 168: RW_Tier
            codes = "allitems",
            stat = {index = 474, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[474: RW_Tier]"
        },
        { -- Rule 169: energy_hidden
            codes = "allitems",
            stat = {index = 473, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[473: energy_hidden]"
        },
        { -- Rule 170: item_numsockets_percent
            codes = "allitems",
            stat = {index = 472, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[472: item_numsockets_percent]"
        },
        { -- Rule 171: item_skillongethit_hidden
            codes = "allitems",
            stat = {index = 471, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[471: item_skillongethit_hidden]"
        },
        { -- Rule 172: item_skillonhit_hidden
            codes = "allitems",
            stat = {index = 470, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[470: item_skillonhit_hidden]"
        },
        { -- Rule 173: item_skillonhit_noctc
            codes = "allitems",
            stat = {index = 469, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[469: item_skillonhit_noctc]"
        },
        { -- Rule 174: item_reanimate_display
            codes = "allitems",
            stat = {index = 468, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[468: item_reanimate_display]"
        },
        { -- Rule 175: map_p_crush
            codes = "allitems",
            stat = {index = 467, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[467: map_p_crush]"
        },
        { -- Rule 176: map_p_cdr
            codes = "allitems",
            stat = {index = 466, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[466: map_p_cdr]"
        },
        { -- Rule 177: map_p_itd
            codes = "allitems",
            stat = {index = 465, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[465: map_p_itd]"
        },
        { -- Rule 178: map_p_exp
            codes = "allitems",
            stat = {index = 464, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[464: map_p_exp]"
        },
        { -- Rule 179: map_p_magic
            codes = "allitems",
            stat = {index = 463, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[463: map_p_magic]"
        },
        { -- Rule 180: map_p_gold
            codes = "allitems",
            stat = {index = 462, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[462: map_p_gold]"
        },
        { -- Rule 181: map_p_haek
            codes = "allitems",
            stat = {index = 461, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[461: map_p_haek]"
        },
        { -- Rule 182: map_p_maek
            codes = "allitems",
            stat = {index = 460, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[460: map_p_maek]"
        },
        { -- Rule 183: map_p_undead
            codes = "allitems",
            stat = {index = 459, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[459: map_p_undead]"
        },
        { -- Rule 184: map_p_demon
            codes = "allitems",
            stat = {index = 458, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[458: map_p_demon]"
        },
        { -- Rule 185: map_p_cnbf
            codes = "allitems",
            stat = {index = 457, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[457: map_p_cnbf]"
        },
        { -- Rule 186: map_p_speedc
            codes = "allitems",
            stat = {index = 456, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[456: map_p_speedc]"
        },
        { -- Rule 187: map_p_speeda
            codes = "allitems",
            stat = {index = 455, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[455: map_p_speeda]"
        },
        { -- Rule 188: map_p_speedm
            codes = "allitems",
            stat = {index = 454, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[454: map_p_speedm]"
        },
        { -- Rule 189: map_p_psnres
            codes = "allitems",
            stat = {index = 453, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[453: map_p_psnres]"
        },
        { -- Rule 190: map_p_coldres
            codes = "allitems",
            stat = {index = 452, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[452: map_p_coldres]"
        },
        { -- Rule 191: map_p_lightres
            codes = "allitems",
            stat = {index = 451, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[451: map_p_lightres]"
        },
        { -- Rule 192: map_p_fireres
            codes = "allitems",
            stat = {index = 450, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[450: map_p_fireres]"
        },
        { -- Rule 193: map_p_magres
            codes = "allitems",
            stat = {index = 449, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[449: map_p_magres]"
        },
        { -- Rule 194: map_p_dmgres
            codes = "allitems",
            stat = {index = 448, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[448: map_p_dmgres]"
        },
        { -- Rule 195: map_p_hpper
            codes = "allitems",
            stat = {index = 447, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[447: map_p_hpper]"
        },
        { -- Rule 196: map_p_defper
            codes = "allitems",
            stat = {index = 446, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[446: map_p_defper]"
        },
        { -- Rule 197: map_e_crush
            codes = "allitems",
            stat = {index = 445, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[445: map_e_crush]"
        },
        { -- Rule 198: map_e_allskills
            codes = "allitems",
            stat = {index = 444, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[444: map_e_allskills]"
        },
        { -- Rule 199: map_e_cnbf
            codes = "allitems",
            stat = {index = 443, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[443: map_e_cnbf]"
        },
        { -- Rule 200: map_e_speedm
            codes = "allitems",
            stat = {index = 442, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[442: map_e_speedm]"
        },
        { -- Rule 201: map_e_speeda
            codes = "allitems",
            stat = {index = 441, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[441: map_e_speeda]"
        },
        { -- Rule 202: map_e_psnres
            codes = "allitems",
            stat = {index = 440, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[440: map_e_psnres]"
        },
        { -- Rule 203: map_e_coldres
            codes = "allitems",
            stat = {index = 439, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[439: map_e_coldres]"
        },
        { -- Rule 204: map_e_lightres
            codes = "allitems",
            stat = {index = 438, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[438: map_e_lightres]"
        },
        { -- Rule 205: map_e_fireres
            codes = "allitems",
            stat = {index = 437, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[437: map_e_fireres]"
        },
        { -- Rule 206: map_e_magres
            codes = "allitems",
            stat = {index = 436, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[436: map_e_magres]"
        },
        { -- Rule 207: map_e_dmgres
            codes = "allitems",
            stat = {index = 435, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[435: map_e_dmgres]"
        },
        { -- Rule 208: map_e_level
            codes = "allitems",
            stat = {index = 434, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[434: map_e_level]"
        },
        { -- Rule 209: map_e_hpper
            codes = "allitems",
            stat = {index = 433, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[433: map_e_hpper]"
        },
        { -- Rule 210: map_e_defper
            codes = "allitems",
            stat = {index = 432, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[432: map_e_defper]"
        },
        { -- Rule 211: Freeze_HalfToFull
            codes = "allitems",
            stat = {index = 431, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[431: Freeze_HalfToFull]"
        },
        { -- Rule 212: Weight_Display
            codes = "allitems",
            stat = {index = 430, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[430: Weight_Display]"
        },
        { -- Rule 213: Weight_Dummy
            codes = "allitems",
            stat = {index = 429, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[429: Weight_Dummy]"
        },
        { -- Rule 214: skel_commander
            codes = "allitems",
            stat = {index = 428, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[428: skel_commander]"
        },
        { -- Rule 215: buff_length_modifier
            codes = "allitems",
            stat = {index = 427, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[427: buff_length_modifier]"
        },
        { -- Rule 216: item_fasterattackrate_perenr
            codes = "allitems",
            stat = {index = 426, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[426: item_fasterattackrate_perenr]"
        },
        { -- Rule 217: item_tohit_perenr
            codes = "allitems",
            stat = {index = 425, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[425: item_tohit_perenr]"
        },
        { -- Rule 218: item_fasterattackrate_perstr
            codes = "allitems",
            stat = {index = 424, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[424: item_fasterattackrate_perstr]"
        },
        { -- Rule 219: KillBonus_Display
            codes = "allitems",
            stat = {index = 423, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[423: KillBonus_Display]"
        },
        { -- Rule 220: KillBonus_Dummy
            codes = "allitems",
            stat = {index = 422, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[422: KillBonus_Dummy]"
        },
        { -- Rule 221: KillBonus
            codes = "allitems",
            stat = {index = 421, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[421: KillBonus]"
        },
        { -- Rule 222: PB_Rejuv
            codes = "allitems",
            stat = {index = 420, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[420: PB_Rejuv]"
        },
        { -- Rule 223: JB_Rare
            codes = "allitems",
            stat = {index = 419, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[419: JB_Rare]"
        },
        { -- Rule 224: fireball_radius
            codes = "allitems",
            stat = {index = 418, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[418: fireball_radius]"
        },
        { -- Rule 225: hitpoints_hidden
            codes = "allitems",
            stat = {index = 417, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[417: hitpoints_hidden]"
        },
        { -- Rule 226: Weight_CapacityBase
            codes = "allitems",
            stat = {index = 416, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[416: Weight_CapacityBase]"
        },
        { -- Rule 227: Weight_Capacity
            codes = "allitems",
            stat = {index = 415, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[415: Weight_Capacity]"
        },
        { -- Rule 228: Weight_Tracker
            codes = "allitems",
            stat = {index = 414, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[414: Weight_Tracker]"
        },
        { -- Rule 229: item_openwounds_perdex
            codes = "allitems",
            stat = {index = 413, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[413: item_openwounds_perdex]"
        },
        { -- Rule 230: Soul_Level
            codes = "allitems",
            stat = {index = 412, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[412: Soul_Level]"
        },
        { -- Rule 231: item_magskill
            codes = "allitems",
            stat = {index = 411, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[411: item_magskill]"
        },
        { -- Rule 232: item_poisskill
            codes = "allitems",
            stat = {index = 410, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[410: item_poisskill]"
        },
        { -- Rule 233: item_coldskill
            codes = "allitems",
            stat = {index = 409, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[409: item_coldskill]"
        },
        { -- Rule 234: item_lightskill
            codes = "allitems",
            stat = {index = 408, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[408: item_lightskill]"
        },
        { -- Rule 235: item_fireskill
            codes = "allitems",
            stat = {index = 407, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[407: item_fireskill]"
        },
        { -- Rule 236: Soul_Tracker
            codes = "allitems",
            stat = {index = 406, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[406: Soul_Tracker]"
        },
        { -- Rule 237: item_feralsteal
            codes = "allitems",
            stat = {index = 405, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[405: item_feralsteal]"
        },
        { -- Rule 238: item_maulsteal
            codes = "allitems",
            stat = {index = 404, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[404: item_maulsteal]"
        },
        { -- Rule 239: item_ravendamage
            codes = "allitems",
            stat = {index = 403, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[403: item_ravendamage]"
        },
        { -- Rule 240: demontemper_check
            codes = "allitems",
            stat = {index = 402, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[402: demontemper_check]"
        },
        { -- Rule 241: incant_radius
            codes = "allitems",
            stat = {index = 401, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[401: incant_radius]"
        },
        { -- Rule 242: incant_duration
            codes = "allitems",
            stat = {index = 400, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[400: incant_duration]"
        },
        { -- Rule 243: unused399
            codes = "allitems",
            stat = {index = 399, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[399: unused399]"
        },
        { -- Rule 244: body_level
            codes = "allitems",
            stat = {index = 398, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[398: body_level]"
        },
        { -- Rule 245: life_per_hit
            codes = "allitems",
            stat = {index = 397, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[397: life_per_hit]"
        },
        { -- Rule 246: mana_per_hit
            codes = "allitems",
            stat = {index = 396, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[396: mana_per_hit]"
        },
        { -- Rule 247: sorceress
            codes = "allitems",
            stat = {index = 395, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[395: sorceress]"
        },
        { -- Rule 248: item_deathregister
            codes = "allitems",
            stat = {index = 394, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[394: item_deathregister]"
        },
        { -- Rule 249: death_display
            codes = "allitems",
            stat = {index = 393, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[393: death_display]"
        },
        { -- Rule 250: death_dummy
            codes = "allitems",
            stat = {index = 392, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[392: death_dummy]"
        },
        { -- Rule 251: item_killregister
            codes = "allitems",
            stat = {index = 391, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[391: item_killregister]"
        },
        { -- Rule 252: kill_display
            codes = "allitems",
            stat = {index = 390, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[390: kill_display]"
        },
        { -- Rule 253: kill_dummy
            codes = "allitems",
            stat = {index = 389, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[389: kill_dummy]"
        },
        { -- Rule 254: smite
            codes = "allitems",
            stat = {index = 388, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[388: smite]"
        },
        { -- Rule 255: portals_unlock
            codes = "allitems",
            stat = {index = 387, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[387: portals_unlock]"
        },
        { -- Rule 256: ucore_tracker
            codes = "allitems",
            stat = {index = 386, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[386: ucore_tracker]"
        },
        { -- Rule 257: enhance_high
            codes = "allitems",
            stat = {index = 385, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[385: enhance_high]"
        },
        { -- Rule 258: enhance_low
            codes = "allitems",
            stat = {index = 384, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[384: enhance_low]"
        },
        { -- Rule 259: chest_treasure
            codes = "allitems",
            stat = {index = 383, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[383: chest_treasure]"
        },
        { -- Rule 260: item_slow_perdex
            codes = "allitems",
            stat = {index = 382, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[382: item_slow_perdex]"
        },
        { -- Rule 261: hsbonus
            codes = "allitems",
            stat = {index = 381, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[381: hsbonus]"
        },
        { -- Rule 262: vitality_hidden
            codes = "allitems",
            stat = {index = 380, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[380: vitality_hidden]"
        },
        { -- Rule 263: boneadded
            codes = "allitems",
            stat = {index = 379, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[379: boneadded]"
        },
        { -- Rule 264: Celestial_Aid
            codes = "allitems",
            stat = {index = 378, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[378: Celestial_Aid]"
        },
        { -- Rule 265: RW_Tracker
            codes = "allitems",
            stat = {index = 377, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[377: RW_Tracker]"
        },
        { -- Rule 266: Soul_Ass
            codes = "allitems",
            stat = {index = 376, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[376: Soul_Ass]"
        },
        { -- Rule 267: Soul_Dru
            codes = "allitems",
            stat = {index = 375, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[375: Soul_Dru]"
        },
        { -- Rule 268: Soul_Bar
            codes = "allitems",
            stat = {index = 374, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[374: Soul_Bar]"
        },
        { -- Rule 269: Soul_Pal
            codes = "allitems",
            stat = {index = 373, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[373: Soul_Pal]"
        },
        { -- Rule 270: Soul_Nec
            codes = "allitems",
            stat = {index = 372, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[372: Soul_Nec]"
        },
        { -- Rule 271: Soul_Sor
            codes = "allitems",
            stat = {index = 371, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[371: Soul_Sor]"
        },
        { -- Rule 272: Soul_Ama
            codes = "allitems",
            stat = {index = 370, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[370: Soul_Ama]"
        },
        { -- Rule 273: score_tracker
            codes = "allitems",
            stat = {index = 369, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[369: score_tracker]"
        },
        { -- Rule 274: CD_Tracker
            codes = "allitems",
            stat = {index = 368, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[368: CD_Tracker]"
        },
        { -- Rule 275: CD_Purple
            codes = "allitems",
            stat = {index = 367, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[367: CD_Purple]"
        },
        { -- Rule 276: CD_Yellow
            codes = "allitems",
            stat = {index = 366, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[366: CD_Yellow]"
        },
        { -- Rule 277: CD_Green
            codes = "allitems",
            stat = {index = 365, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[365: CD_Green]"
        },
        { -- Rule 278: CD_Red
            codes = "allitems",
            stat = {index = 364, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[364: CD_Red]"
        },
        { -- Rule 279: CD_Blue
            codes = "allitems",
            stat = {index = 363, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[363: CD_Blue]"
        },
        { -- Rule 280: CD_Black
            codes = "allitems",
            stat = {index = 362, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[362: CD_Black]"
        },
        { -- Rule 281: CD_White
            codes = "allitems",
            stat = {index = 361, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[361: CD_White]"
        },
        { -- Rule 282: skill_missile_damage_scale
            codes = "allitems",
            stat = {index = 360, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[360: skill_missile_damage_scale]"
        },
        { -- Rule 283: skill_cooldown
            codes = "allitems",
            stat = {index = 359, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[359: skill_cooldown]"
        },
        { -- Rule 284: passive_mag_pierce
            codes = "allitems",
            stat = {index = 358, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[358: passive_mag_pierce]"
        },
        { -- Rule 285: passive_mag_mastery
            codes = "allitems",
            stat = {index = 357, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[357: passive_mag_mastery]"
        },
        { -- Rule 286: questitemdifficulty
            codes = "allitems",
            stat = {index = 356, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[356: questitemdifficulty]"
        },
        { -- Rule 287: shortparam1
            codes = "allitems",
            stat = {index = 355, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[355: shortparam1]"
        },
        { -- Rule 288: source_unit_id
            codes = "allitems",
            stat = {index = 354, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[354: source_unit_id]"
        },
        { -- Rule 289: source_unit_type
            codes = "allitems",
            stat = {index = 353, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[353: source_unit_type]"
        },
        { -- Rule 290: last_sent_hp_pct
            codes = "allitems",
            stat = {index = 352, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[352: last_sent_hp_pct]"
        },
        { -- Rule 291: modifierlist_level
            codes = "allitems",
            stat = {index = 351, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[351: modifierlist_level]"
        },
        { -- Rule 292: modifierlist_skill
            codes = "allitems",
            stat = {index = 350, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[350: modifierlist_skill]"
        },
        { -- Rule 293: passive_summon_resist
            codes = "allitems",
            stat = {index = 349, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[349: passive_summon_resist]"
        },
        { -- Rule 294: passive_weaponblock
            codes = "allitems",
            stat = {index = 348, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[348: passive_weaponblock]"
        },
        { -- Rule 295: passive_mastery_throw_crit
            codes = "allitems",
            stat = {index = 347, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[347: passive_mastery_throw_crit]"
        },
        { -- Rule 296: passive_mastery_throw_dmg
            codes = "allitems",
            stat = {index = 346, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[346: passive_mastery_throw_dmg]"
        },
        { -- Rule 297: passive_mastery_throw_th
            codes = "allitems",
            stat = {index = 345, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[345: passive_mastery_throw_th]"
        },
        { -- Rule 298: passive_mastery_melee_crit
            codes = "allitems",
            stat = {index = 344, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[344: passive_mastery_melee_crit]"
        },
        { -- Rule 299: passive_mastery_melee_dmg
            codes = "allitems",
            stat = {index = 343, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[343: passive_mastery_melee_dmg]"
        },
        { -- Rule 300: passive_mastery_melee_th
            codes = "allitems",
            stat = {index = 342, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[342: passive_mastery_melee_th]"
        },
        { -- Rule 301: passive_warmth
            codes = "allitems",
            stat = {index = 341, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[341: passive_warmth]"
        },
        { -- Rule 302: passive_evade
            codes = "allitems",
            stat = {index = 340, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[340: passive_evade]"
        },
        { -- Rule 303: passive_avoid
            codes = "allitems",
            stat = {index = 339, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[339: passive_avoid]"
        },
        { -- Rule 304: passive_dodge
            codes = "allitems",
            stat = {index = 338, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[338: passive_dodge]"
        },
        { -- Rule 305: passive_critical_strike
            codes = "allitems",
            stat = {index = 337, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[337: passive_critical_strike]"
        },
        { -- Rule 306: passive_pois_pierce
            codes = "allitems",
            stat = {index = 336, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[336: passive_pois_pierce]"
        },
        { -- Rule 307: passive_cold_pierce
            codes = "allitems",
            stat = {index = 335, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[335: passive_cold_pierce]"
        },
        { -- Rule 308: passive_ltng_pierce
            codes = "allitems",
            stat = {index = 334, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[334: passive_ltng_pierce]"
        },
        { -- Rule 309: passive_fire_pierce
            codes = "allitems",
            stat = {index = 333, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[333: passive_fire_pierce]"
        },
        { -- Rule 310: passive_pois_mastery
            codes = "allitems",
            stat = {index = 332, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[332: passive_pois_mastery]"
        },
        { -- Rule 311: passive_cold_mastery
            codes = "allitems",
            stat = {index = 331, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[331: passive_cold_mastery]"
        },
        { -- Rule 312: passive_ltng_mastery
            codes = "allitems",
            stat = {index = 330, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[330: passive_ltng_mastery]"
        },
        { -- Rule 313: passive_fire_mastery
            codes = "allitems",
            stat = {index = 329, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[329: passive_fire_mastery]"
        },
        { -- Rule 314: pierce_idx
            codes = "allitems",
            stat = {index = 328, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[328: pierce_idx]"
        },
        { -- Rule 315: damage_framerate
            codes = "allitems",
            stat = {index = 327, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[327: damage_framerate]"
        },
        { -- Rule 316: poison_count
            codes = "allitems",
            stat = {index = 326, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[326: poison_count]"
        },
        { -- Rule 317: progressive_tohit
            codes = "allitems",
            stat = {index = 325, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[325: progressive_tohit]"
        },
        { -- Rule 318: item_extra_charges
            codes = "allitems",
            stat = {index = 324, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[324: item_extra_charges]"
        },
        { -- Rule 319: progressive_lightning
            codes = "allitems",
            stat = {index = 323, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[323: progressive_lightning]"
        },
        { -- Rule 320: progressive_cold
            codes = "allitems",
            stat = {index = 322, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[322: progressive_cold]"
        },
        { -- Rule 321: progressive_fire
            codes = "allitems",
            stat = {index = 321, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[321: progressive_fire]"
        },
        { -- Rule 322: progressive_other
            codes = "allitems",
            stat = {index = 320, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[320: progressive_other]"
        },
        { -- Rule 323: progressive_steal
            codes = "allitems",
            stat = {index = 319, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[319: progressive_steal]"
        },
        { -- Rule 324: progressive_damage
            codes = "allitems",
            stat = {index = 318, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[318: progressive_damage]"
        },
        { -- Rule 325: burningmax
            codes = "allitems",
            stat = {index = 317, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[317: burningmax]"
        },
        { -- Rule 326: burningmin
            codes = "allitems",
            stat = {index = 316, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[316: burningmin]"
        },
        { -- Rule 327: firelength
            codes = "allitems",
            stat = {index = 315, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[315: firelength]"
        },
        { -- Rule 328: item_ac_percent_vs_monster
            codes = "allitems",
            stat = {index = 314, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[314: item_ac_percent_vs_monster]"
        },
        { -- Rule 329: item_ac_vs_monster
            codes = "allitems",
            stat = {index = 313, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[313: item_ac_vs_monster]"
        },
        { -- Rule 330: item_tohit_percent_vs_monster
            codes = "allitems",
            stat = {index = 312, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[312: item_tohit_percent_vs_monster]"
        },
        { -- Rule 331: item_tohit_vs_monster
            codes = "allitems",
            stat = {index = 311, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[311: item_tohit_vs_monster]"
        },
        { -- Rule 332: item_damage_percent_vs_monster
            codes = "allitems",
            stat = {index = 310, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[310: item_damage_percent_vs_monster]"
        },
        { -- Rule 333: item_damage_vs_monster
            codes = "allitems",
            stat = {index = 309, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[309: item_damage_vs_monster]"
        },
        { -- Rule 334: item_pierce_pois
            codes = "allitems",
            stat = {index = 308, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[308: item_pierce_pois]"
        },
        { -- Rule 335: item_pierce_ltng
            codes = "allitems",
            stat = {index = 307, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[307: item_pierce_ltng]"
        },
        { -- Rule 336: item_pierce_fire
            codes = "allitems",
            stat = {index = 306, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[306: item_pierce_fire]"
        },
        { -- Rule 337: item_pierce_cold
            codes = "allitems",
            stat = {index = 305, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[305: item_pierce_cold]"
        },
        { -- Rule 338: aura_display
            codes = "allitems",
            stat = {index = 304, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[305: aura_display]"
        },
        { -- Rule 339: oskill_display
            codes = "allitems",
            stat = {index = 303, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[303: oskill_display]"
        },
        { -- Rule 340: relic_tracker
            codes = "allitems",
            stat = {index = 302, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[302: relic_tracker]"
        },
        { -- Rule 341: unused301
            codes = "allitems",
            stat = {index = 301, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[301: unused301]"
        },
        { -- Rule 342: OB_Meph
            codes = "allitems",
            stat = {index = 300, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[300: OB_Meph]"
        },
        { -- Rule 343: OB_Baal
            codes = "allitems",
            stat = {index = 299, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[299: OB_Baal]"
        },
        { -- Rule 344: OB_Diablo
            codes = "allitems",
            stat = {index = 298, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[298: OB_Diablo]"
        },
        { -- Rule 345: KB_Dest
            codes = "allitems",
            stat = {index = 297, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[297: KB_Dest]"
        },
        { -- Rule 346: KB_Hate
            codes = "allitems",
            stat = {index = 296, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[296: KB_Hate]"
        },
        { -- Rule 347: KB_Terror
            codes = "allitems",
            stat = {index = 295, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[295: KB_Terror]"
        },
        { -- Rule 348: RB_High
            codes = "allitems",
            stat = {index = 294, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[294: RB_High]"
        },
        { -- Rule 349: RB_Mid
            codes = "allitems",
            stat = {index = 293, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[293: RB_Mid]"
        },
        { -- Rule 350: RB_Low
            codes = "allitems",
            stat = {index = 292, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[292: RB_Low]"
        },
        { -- Rule 351: GB_Total
            codes = "allitems",
            stat = {index = 291, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[291: GB_Total]"
        },
        { -- Rule 352: skill_focus
            codes = "allitems",
            stat = {index = 290, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[290: skill_focus]"
        },
        { -- Rule 353: skill_rage
            codes = "allitems",
            stat = {index = 289, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[289: skill_rage]"
        },
        { -- Rule 354: skill_bonesyn
            codes = "allitems",
            stat = {index = 288, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[288: skill_bonesyn]"
        },
        { -- Rule 355: item_pierce_perdex
            codes = "allitems",
            stat = {index = 287, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[287: item_pierce_perdex]"
        },
        { -- Rule 356: item_cooldownreduction
            codes = "allitems",
            stat = {index = 286, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[286: item_cooldownreduction]"
        },
        { -- Rule 357: sum_cr
            codes = "allitems",
            stat = {index = 285, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[285: sum_cr]"
        },
        { -- Rule 358: sum_hp_perc
            codes = "allitems",
            stat = {index = 284, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[284: sum_hp_perc]"
        },
        { -- Rule 359: sum_ex
            codes = "allitems",
            stat = {index = 283, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[283: sum_ex]"
        },
        { -- Rule 360: sum_speed
            codes = "allitems",
            stat = {index = 282, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[282: sum_speed]"
        },
        { -- Rule 361: sum_dmg_perc
            codes = "allitems",
            stat = {index = 281, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[281: sum_dmg_perc]"
        },
        { -- Rule 362: curse_resistance_perenr
            codes = "allitems",
            stat = {index = 280, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[280: curse_resistance_perenr]"
        },
        { -- Rule 363: map_quality
            codes = "allitems",
            stat = {index = 279, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[279: map_quality]"
        },
        { -- Rule 364: ex_attacks
            codes = "allitems",
            stat = {index = 278, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[278: ex_attacks]"
        },
        { -- Rule 365: item_attackertakescolddamage
            codes = "allitems",
            stat = {index = 277, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[277: item_attackertakescolddamage]"
        },
        { -- Rule 366: ex_missiles
            codes = "allitems",
            stat = {index = 276, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[276: ex_missiles]"
        },
        { -- Rule 367: life_per_gethit
            codes = "allitems",
            stat = {index = 275, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[275: life_per_gethit]"
        },
        { -- Rule 368: mana_per_gethit
            codes = "allitems",
            stat = {index = 274, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[274: mana_per_gethit]"
        },
        { -- Rule 369: dont_use_me_273
            codes = "allitems",
            stat = {index = 273, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[273: dont_use_me_273]"
        },
        { -- Rule 370: dont_use_me_272
            codes = "allitems",
            stat = {index = 272, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[272: dont_use_me_272]"
        },
        { -- Rule 371: item_attackertakesfiredamage
            codes = "allitems",
            stat = {index = 271, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[271: item_attackertakesfiredamage]"
        },
        { -- Rule 372: cheatcheck
            codes = "allitems",
            stat = {index = 270, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[270: cheatcheck]"
        },
        { -- Rule 373: skill_chillsyn
            codes = "allitems",
            stat = {index = 269, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[269: skill_chillsyn]"
        },
        { -- Rule 374: skill_freezesyn
            codes = "allitems",
            stat = {index = 268, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[268: skill_freezesyn]"
        },
        { -- Rule 375: item_skillonmisshit
            codes = "allitems",
            stat = {index = 267, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[267: item_skillonmisshit]"
        },
        { -- Rule 376: item_splash
            codes = "allitems",
            stat = {index = 266, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[266: item_splash]"
        },
        { -- Rule 377: item_energy_percent
            codes = "allitems",
            stat = {index = 265, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[265: item_energy_percent]"
        },
        { -- Rule 378: item_vitality_percent
            codes = "allitems",
            stat = {index = 264, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[264: item_vitality_percent]"
        },
        { -- Rule 379: item_dexterity_percent
            codes = "allitems",
            stat = {index = 263, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[263: item_dexterity_percent]"
        },
        { -- Rule 380: item_strength_percent
            codes = "allitems",
            stat = {index = 262, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[262: item_strength_percent]"
        },
        { -- Rule 381: item_crushingblow_perstr
            codes = "allitems",
            stat = {index = 261, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[261: item_crushingblow_perstr]"
        },
        { -- Rule 382: item_fastercastrate_perenr
            codes = "allitems",
            stat = {index = 260, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[260: item_fastercastrate_perenr]"
        },
        { -- Rule 383: item_armor_perstr
            codes = "allitems",
            stat = {index = 259, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[259: item_armor_perstr]"
        },
        { -- Rule 384: item_deadlystrike_perstr
            codes = "allitems",
            stat = {index = 258, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[258: item_deadlystrike_perstr]"
        },
        { -- Rule 385: item_deadlystrike_perdex
            codes = "allitems",
            stat = {index = 257, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[257: item_deadlystrike_perdex]"
        },
        { -- Rule 386: item_openwounds_perstr
            codes = "allitems",
            stat = {index = 256, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[256: item_openwounds_perstr]"
        },
        { -- Rule 387: item_find_item
            codes = "allitems",
            stat = {index = 255, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[255: item_find_item]"
        },
        { -- Rule 388: item_extra_stack
            codes = "allitems",
            stat = {index = 254, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[254: item_extra_stack]"
        },
        { -- Rule 389: item_replenish_quantity
            codes = "allitems",
            stat = {index = 253, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[253: item_replenish_quantity]"
        },
        { -- Rule 390: item_replenish_durability
            codes = "allitems",
            stat = {index = 252, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[252: item_replenish_durability]"
        },
        { -- Rule 391: item_find_gems_perlevel
            codes = "allitems",
            stat = {index = 251, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[251: item_find_gems_perlevel]"
        },
        { -- Rule 392: item_deadlystrike_perlevel
            codes = "allitems",
            stat = {index = 250, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[250: item_deadlystrike_perlevel]"
        },
        { -- Rule 393: item_kick_damage_perlevel
            codes = "allitems",
            stat = {index = 249, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[249: item_kick_damage_perlevel]"
        },
        { -- Rule 394: item_openwounds_perlevel
            codes = "allitems",
            stat = {index = 248, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[248: item_openwounds_perlevel]"
        },
        { -- Rule 395: item_crushingblow_perlevel
            codes = "allitems",
            stat = {index = 247, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[247: item_crushingblow_perlevel]"
        },
        { -- Rule 396: item_tohit_undead_perlevel
            codes = "allitems",
            stat = {index = 246, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[246: item_tohit_undead_perlevel]"
        },
        { -- Rule 397: item_tohit_demon_perlevel
            codes = "allitems",
            stat = {index = 245, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[245: item_tohit_demon_perlevel]"
        },
        { -- Rule 398: item_damage_undead_perlevel
            codes = "allitems",
            stat = {index = 244, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[244: item_damage_undead_perlevel]"
        },
        { -- Rule 399: item_damage_demon_perlevel
            codes = "allitems",
            stat = {index = 243, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[243: item_damage_demon_perlevel]"
        },
        { -- Rule 400: item_stamina_perlevel
            codes = "allitems",
            stat = {index = 242, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[242: item_stamina_perlevel]"
        },
        { -- Rule 401: item_regenstamina_perlevel
            codes = "allitems",
            stat = {index = 241, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[241: item_regenstamina_perlevel]"
        },
        { -- Rule 402: item_find_magic_perlevel
            codes = "allitems",
            stat = {index = 240, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[240: item_find_magic_perlevel]"
        },
        { -- Rule 403: item_find_gold_perlevel
            codes = "allitems",
            stat = {index = 239, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[239: item_find_gold_perlevel]"
        },
        { -- Rule 404: item_thorns_perlevel
            codes = "allitems",
            stat = {index = 238, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[238: item_thorns_perlevel]"
        },
        { -- Rule 405: item_absorb_mag_perlevel
            codes = "allitems",
            stat = {index = 237, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[237: item_absorb_mag_perlevel]"
        },
        { -- Rule 406: item_absorb_ltng_perlevel
            codes = "allitems",
            stat = {index = 236, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[236: item_absorb_ltng_perlevel]"
        },
        { -- Rule 407: item_absorb_fire_perlevel
            codes = "allitems",
            stat = {index = 235, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[235: item_absorb_fire_perlevel]"
        },
        { -- Rule 408: item_absorb_cold_perlevel
            codes = "allitems",
            stat = {index = 234, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[234: item_absorb_cold_perlevel]"
        },
        { -- Rule 409: item_resist_pois_perlevel
            codes = "allitems",
            stat = {index = 233, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[233: item_resist_pois_perlevel]"
        },
        { -- Rule 410: item_resist_ltng_perlevel
            codes = "allitems",
            stat = {index = 232, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[232: item_resist_ltng_perlevel]"
        },
        { -- Rule 411: item_resist_fire_perlevel
            codes = "allitems",
            stat = {index = 231, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[231: item_resist_fire_perlevel]"
        },
        { -- Rule 412: item_resist_cold_perlevel
            codes = "allitems",
            stat = {index = 230, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[230: item_resist_cold_perlevel]"
        },
        { -- Rule 413: item_pois_damagemax_perlevel
            codes = "allitems",
            stat = {index = 229, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[229: item_pois_damagemax_perlevel]"
        },
        { -- Rule 414: item_ltng_damagemax_perlevel
            codes = "allitems",
            stat = {index = 228, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[228: item_ltng_damagemax_perlevel]"
        },
        { -- Rule 415: item_fire_damagemax_perlevel
            codes = "allitems",
            stat = {index = 227, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[227: item_fire_damagemax_perlevel]"
        },
        { -- Rule 416: item_cold_damagemax_perlevel
            codes = "allitems",
            stat = {index = 226, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[226: item_cold_damagemax_perlevel]"
        },
        { -- Rule 417: item_tohitpercent_perlevel
            codes = "allitems",
            stat = {index = 225, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[225: item_tohitpercent_perlevel]"
        },
        { -- Rule 418: item_tohit_perlevel
            codes = "allitems",
            stat = {index = 224, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[224: item_tohit_perlevel]"
        },
        { -- Rule 419: item_vitality_perlevel
            codes = "allitems",
            stat = {index = 223, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[223: item_vitality_perlevel]"
        },
        { -- Rule 420: item_energy_perlevel
            codes = "allitems",
            stat = {index = 222, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[222: item_energy_perlevel]"
        },
        { -- Rule 421: item_dexterity_perlevel
            codes = "allitems",
            stat = {index = 221, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[221: item_dexterity_perlevel]"
        },
        { -- Rule 422: item_strength_perlevel
            codes = "allitems",
            stat = {index = 220, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[220: item_strength_perlevel]"
        },
        { -- Rule 423: item_maxdamage_percent_perlevel
            codes = "allitems",
            stat = {index = 219, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[219: item_maxdamage_percent_perlevel]"
        },
        { -- Rule 424: item_maxdamage_perlevel
            codes = "allitems",
            stat = {index = 218, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[218: item_maxdamage_perlevel]"
        },
        { -- Rule 425: item_mana_perlevel
            codes = "allitems",
            stat = {index = 217, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[217: item_mana_perlevel]"
        },
        { -- Rule 426: item_hp_perlevel
            codes = "allitems",
            stat = {index = 216, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[216: item_hp_perlevel]"
        },
        { -- Rule 427: item_armorpercent_perlevel
            codes = "allitems",
            stat = {index = 215, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[215: item_armorpercent_perlevel]"
        },
        { -- Rule 428: item_armor_perlevel
            codes = "allitems",
            stat = {index = 214, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[214: item_armor_perlevel]"
        },
        { -- Rule 429: passive_mastery_attack_speed
            codes = "allitems",
            stat = {index = 213, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[213: passive_mastery_attack_speed]"
        },
        { -- Rule 430: passive_mastery_gethit_rate
            codes = "allitems",
            stat = {index = 212, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[212: passive_mastery_gethit_rate]"
        },
        { -- Rule 431: unused211
            codes = "allitems",
            stat = {index = 211, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[211: unused211]"
        },
        { -- Rule 432: unused210
            codes = "allitems",
            stat = {index = 210, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[210: unused210]"
        },
        { -- Rule 433: pali_killtrack
            codes = "allitems",
            stat = {index = 209, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[209: pali_killtrack]"
        },
        { -- Rule 434: Item_Enhanced
            codes = "allitems",
            stat = {index = 208, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[208: Item_Enhanced]"
        },
        { -- Rule 435: passive_mastery_replenish_oncrit
            codes = "allitems",
            stat = {index = 207, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[207: passive_mastery_replenish_oncrit]"
        },
        { -- Rule 436: passive_mastery_noconsume
            codes = "allitems",
            stat = {index = 206, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[206: passive_mastery_noconsume]"
        },
        { -- Rule 437: item_noconsume
            codes = "allitems",
            stat = {index = 205, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[205: item_noconsume]"
        },
        { -- Rule 438: item_charged_skill
            codes = "allitems",
            stat = {index = 204, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[204: item_charged_skill]"
        },
        { -- Rule 439: unused203
            codes = "allitems",
            stat = {index = 203, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[203: unused203]"
        },
        { -- Rule 440: modifierlist_castid
            codes = "allitems",
            stat = {index = 202, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[202: modifierlist_castid]"
        },
        { -- Rule 441: item_skillongethit
            codes = "allitems",
            stat = {index = 201, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[201: item_skillongethit]"
        },
        { -- Rule 442: item_charge_noconsume
            codes = "allitems",
            stat = {index = 200, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[200: item_charge_noconsume]"
        },
        { -- Rule 443: item_skillonlevelup
            codes = "allitems",
            stat = {index = 199, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[199: item_skillonlevelup]"
        },
        { -- Rule 444: item_skillonhit
            codes = "allitems",
            stat = {index = 198, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[198: item_skillonhit]"
        },
        { -- Rule 445: item_skillondeath
            codes = "allitems",
            stat = {index = 197, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[197: item_skillondeath]"
        },
        { -- Rule 446: item_skillonkill
            codes = "allitems",
            stat = {index = 196, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[196: item_skillonkill]"
        },
        { -- Rule 447: item_skillonattack
            codes = "allitems",
            stat = {index = 195, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[195: item_skillonattack]"
        },
        { -- Rule 448: item_numsockets
            codes = "allitems",
            stat = {index = 194, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[194: item_numsockets]"
        },
        { -- Rule 449: item_pierce_magic_immunity
            codes = "allitems",
            stat = {index = 193, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[193: item_pierce_magic_immunity]"
        },
        { -- Rule 450: item_pierce_damage_immunity
            codes = "allitems",
            stat = {index = 192, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[192: item_pierce_damage_immunity]"
        },
        { -- Rule 451: item_pierce_poison_immunity
            codes = "allitems",
            stat = {index = 191, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[191: item_pierce_poison_immunity]"
        },
        { -- Rule 452: item_pierce_light_immunity
            codes = "allitems",
            stat = {index = 190, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[190: item_pierce_light_immunity]"
        },
        { -- Rule 453: item_pierce_fire_immunity
            codes = "allitems",
            stat = {index = 189, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[189: item_pierce_fire_immunity]"
        },
        { -- Rule 454: item_addskill_tab
            codes = "allitems",
            stat = {index = 188, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[188: item_addskill_tab]"
        },
        { -- Rule 455: item_pierce_cold_immunity
            codes = "allitems",
            stat = {index = 187, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[187: item_pierce_cold_immunity]"
        },
        { -- Rule 456: bonus_maxdamage
            codes = "allitems",
            stat = {index = 186, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[186: bonus_maxdamage]"
        },
        { -- Rule 457: bonus_mindamage
            codes = "allitems",
            stat = {index = 185, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[185: bonus_mindamage]"
        },
        { -- Rule 458: deathtrack
            codes = "allitems",
            stat = {index = 184, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[184: deathtrack]"
        },
        { -- Rule 459: killtrack
            codes = "allitems",
            stat = {index = 183, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[183: killtrack]"
        },
        { -- Rule 460: armor_override_percent
            codes = "allitems",
            stat = {index = 182, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[182: armor_override_percent]"
        },
        { -- Rule 461: fade
            codes = "allitems",
            stat = {index = 181, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[181: fade]"
        },
        { -- Rule 462: damage_vs_montype
            codes = "allitems",
            stat = {index = 180, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[180: damage_vs_montype]"
        },
        { -- Rule 463: attack_vs_montype
            codes = "allitems",
            stat = {index = 179, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[179: attack_vs_montype]"
        },
        { -- Rule 464: unit_dooverlay
            codes = "allitems",
            stat = {index = 178, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[178: unit_dooverlay]"
        },
        { -- Rule 465: conversion_maxhp
            codes = "allitems",
            stat = {index = 177, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[177: conversion_maxhp]"
        },
        { -- Rule 466: conversion_level
            codes = "allitems",
            stat = {index = 176, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[176: conversion_level]"
        },
        { -- Rule 467: goldlost
            codes = "allitems",
            stat = {index = 175, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[175: goldlost]"
        },
        { -- Rule 468: target1
            codes = "allitems",
            stat = {index = 174, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[174: target1]"
        },
        { -- Rule 469: target0
            codes = "allitems",
            stat = {index = 173, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[173: target0]"
        },
        { -- Rule 470: alignment
            codes = "allitems",
            stat = {index = 172, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[172: alignment]"
        },
        { -- Rule 471: skill_armor_percent
            codes = "allitems",
            stat = {index = 171, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[171: skill_armor_percent]"
        },
        { -- Rule 472: skill_decrepify
            codes = "allitems",
            stat = {index = 170, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[170: skill_decrepify]"
        },
        { -- Rule 473: skill_frenzy
            codes = "allitems",
            stat = {index = 169, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[169: skill_frenzy]"
        },
        { -- Rule 474: skill_chillingarmor
            codes = "allitems",
            stat = {index = 168, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[168: skill_chillingarmor]"
        },
        { -- Rule 475: skill_conviction
            codes = "allitems",
            stat = {index = 167, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[167: skill_conviction]"
        },
        { -- Rule 476: skill_pierce
            codes = "allitems",
            stat = {index = 166, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[166: skill_pierce]"
        },
        { -- Rule 477: skill_enchant
            codes = "allitems",
            stat = {index = 165, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[165: skill_enchant]"
        },
        { -- Rule 478: skill_concentration
            codes = "allitems",
            stat = {index = 164, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[164: skill_concentration]"
        },
        { -- Rule 479: skill_passive_staminapercent
            codes = "allitems",
            stat = {index = 163, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[163: skill_passive_staminapercent]"
        },
        { -- Rule 480: skill_staminapercent
            codes = "allitems",
            stat = {index = 162, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[162: skill_staminapercent]"
        },
        { -- Rule 481: skill_handofathena
            codes = "allitems",
            stat = {index = 161, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[161: skill_handofathena]"
        },
        { -- Rule 482: item_throw_maxdamage
            codes = "allitems",
            stat = {index = 160, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[160: item_throw_maxdamage]"
        },
        { -- Rule 483: item_throw_mindamage
            codes = "allitems",
            stat = {index = 159, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[159: item_throw_mindamage]"
        },
        { -- Rule 484: item_explosivearrow
            codes = "allitems",
            stat = {index = 158, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[158: item_explosivearrow]"
        },
        { -- Rule 485: item_magicarrow
            codes = "allitems",
            stat = {index = 157, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[157: item_magicarrow]"
        },
        { -- Rule 486: item_pierce
            codes = "allitems",
            stat = {index = 156, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[156: item_pierce]"
        },
        { -- Rule 487: item_reanimate
            codes = "allitems",
            stat = {index = 155, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[155: item_reanimate]"
        },
        { -- Rule 488: item_staminadrainpct
            codes = "allitems",
            stat = {index = 154, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[154: item_staminadrainpct]"
        },
        { -- Rule 489: item_cannotbefrozen
            codes = "allitems",
            stat = {index = 153, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[153: item_cannotbefrozen]"
        },
        { -- Rule 490: item_indesctructible
            codes = "allitems",
            stat = {index = 152, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[152: item_indesctructible]"
        },
        { -- Rule 491: aura_display
            codes = "allitems",
            stat = {index = 151, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[151: aura_display]"
        },
        { -- Rule 492: item_slow
            codes = "allitems",
            stat = {index = 150, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[150: item_slow]"
        },
        { -- Rule 493: item_absorbcold
            codes = "allitems",
            stat = {index = 149, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[149: item_absorbcold]"
        },
        { -- Rule 494: item_absorbcold_percent
            codes = "allitems",
            stat = {index = 148, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[148: item_absorbcold_percent]"
        },
        { -- Rule 495: item_absorbmagic
            codes = "allitems",
            stat = {index = 147, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[147: item_absorbmagic]"
        },
        { -- Rule 496: item_absorbmagic_percent
            codes = "allitems",
            stat = {index = 146, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[146: item_absorbmagic_percent]"
        },
        { -- Rule 497: item_absorblight
            codes = "allitems",
            stat = {index = 145, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[145: item_absorblight]"
        },
        { -- Rule 498: item_absorblight_percent
            codes = "allitems",
            stat = {index = 144, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[144: item_absorblight_percent]"
        },
        { -- Rule 499: item_absorbfire
            codes = "allitems",
            stat = {index = 143, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[143: item_absorbfire]"
        },
        { -- Rule 500: item_absorbfire_percent
            codes = "allitems",
            stat = {index = 142, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[142: item_absorbfire_percent]"
        },
        { -- Rule 501: item_deadlystrike
            codes = "allitems",
            stat = {index = 141, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[141: item_deadlystrike]"
        },
        { -- Rule 502: item_extrablood
            codes = "allitems",
            stat = {index = 140, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[140: item_extrablood]"
        },
        { -- Rule 503: item_healafterdemonkill
            codes = "allitems",
            stat = {index = 139, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[139: item_healafterdemonkill]"
        },
        { -- Rule 504: item_manaafterkill
            codes = "allitems",
            stat = {index = 138, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[138: item_manaafterkill]"
        },
        { -- Rule 505: item_kickdamage
            codes = "allitems",
            stat = {index = 137, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[137: item_kickdamage]"
        },
        { -- Rule 506: item_crushingblow
            codes = "allitems",
            stat = {index = 136, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[136: item_crushingblow]"
        },
        { -- Rule 507: item_openwounds
            codes = "allitems",
            stat = {index = 135, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[135: item_openwounds]"
        },
        { -- Rule 508: item_freeze
            codes = "allitems",
            stat = {index = 134, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[134: item_freeze]"
        },
        { -- Rule 509: bonearmormax
            codes = "allitems",
            stat = {index = 133, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[133: bonearmormax]"
        },
        { -- Rule 510: bonearmor
            codes = "allitems",
            stat = {index = 132, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[132: bonearmor]"
        },
        { -- Rule 511: thorns_percent
            codes = "allitems",
            stat = {index = 131, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[131: thorns_percent]"
        },
        { -- Rule 512: lifetap_level
            codes = "allitems",
            stat = {index = 130, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[130: lifetap_level]"
        },
        { -- Rule 513: ironmaiden_level
            codes = "allitems",
            stat = {index = 129, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[129: ironmaiden_level]"
        },
        { -- Rule 514: item_attackertakeslightdamage
            codes = "allitems",
            stat = {index = 128, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[128: item_attackertakeslightdamage]"
        },
        { -- Rule 515: item_allskills
            codes = "allitems",
            stat = {index = 127, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[127: item_allskills]"
        },
        { -- Rule 516: item_elemskill
            codes = "allitems",
            stat = {index = 126, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[126: item_elemskill]"
        },
        { -- Rule 517: item_throwable
            codes = "allitems",
            stat = {index = 125, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[125: item_throwable]"
        },
        { -- Rule 518: item_undead_tohit
            codes = "allitems",
            stat = {index = 124, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[124: item_undead_tohit]"
        },
        { -- Rule 519: item_demon_tohit
            codes = "allitems",
            stat = {index = 123, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[123: item_demon_tohit]"
        },
        { -- Rule 520: item_undeaddamage_percent
            codes = "allitems",
            stat = {index = 122, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[122: item_undeaddamage_percent]"
        },
        { -- Rule 521: item_demondamage_percent
            codes = "allitems",
            stat = {index = 121, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[121: item_demondamage_percent]"
        },
        { -- Rule 522: item_damagetargetac
            codes = "allitems",
            stat = {index = 120, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[120: item_damagetargetac]"
        },
        { -- Rule 523: item_tohit_percent
            codes = "allitems",
            stat = {index = 119, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[119: item_tohit_percent]"
        },
        { -- Rule 524: item_halffreezeduration
            codes = "allitems",
            stat = {index = 118, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[118: item_halffreezeduration]"
        },
        { -- Rule 525: item_preventheal
            codes = "allitems",
            stat = {index = 117, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[117: item_preventheal]"
        },
        { -- Rule 526: item_fractionaltargetac
            codes = "allitems",
            stat = {index = 116, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[116: item_fractionaltargetac]"
        },
        { -- Rule 527: item_ignoretargetac
            codes = "allitems",
            stat = {index = 115, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[115: item_ignoretargetac]"
        },
        { -- Rule 528: item_damagetomana
            codes = "allitems",
            stat = {index = 114, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[114: item_damagetomana]"
        },
        { -- Rule 529: item_stupidity
            codes = "allitems",
            stat = {index = 113, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[113: item_stupidity]"
        },
        { -- Rule 530: item_howl
            codes = "allitems",
            stat = {index = 112, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[112: item_howl]"
        },
        { -- Rule 531: item_normaldamage
            codes = "allitems",
            stat = {index = 111, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[111: item_normaldamage]"
        },
        { -- Rule 532: item_poisonlengthresist
            codes = "allitems",
            stat = {index = 110, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[110: item_poisonlengthresist]"
        },
        { -- Rule 533: curse_resistance
            codes = "allitems",
            stat = {index = 109, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[109: curse_resistance]"
        },
        { -- Rule 534: item_restinpeace
            codes = "allitems",
            stat = {index = 108, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[108: item_restinpeace]"
        },
        { -- Rule 535: item_singleskill
            codes = "allitems",
            stat = {index = 107, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[107: item_singleskill]"
        },
        { -- Rule 536: skill_bypass_beasts
            codes = "allitems",
            stat = {index = 106, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[106: skill_bypass_beasts]"
        },
        { -- Rule 537: item_fastercastrate
            codes = "allitems",
            stat = {index = 105, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[105: item_fastercastrate]"
        },
        { -- Rule 538: skill_bypass_demons
            codes = "allitems",
            stat = {index = 104, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[104: skill_bypass_demons]"
        },
        { -- Rule 539: skill_bypass_undead
            codes = "allitems",
            stat = {index = 103, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[103: skill_bypass_undead]"
        },
        { -- Rule 540: item_fasterblockrate
            codes = "allitems",
            stat = {index = 102, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[102: item_fasterblockrate]"
        },
        { -- Rule 541: skill_poison_override_length
            codes = "allitems",
            stat = {index = 101, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[101: skill_poison_override_length]"
        },
        { -- Rule 542: monster_playercount
            codes = "allitems",
            stat = {index = 100, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[100: monster_playercount]"
        },
        { -- Rule 543: item_fastergethitrate
            codes = "allitems",
            stat = {index = 99, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[99: item_fastergethitrate]"
        },
        { -- Rule 544: state
            codes = "allitems",
            stat = {index = 98, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[98: state]"
        },
        { -- Rule 545: item_nonclassskill
            codes = "allitems",
            stat = {index = 97, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[97: item_nonclassskill]"
        },
        { -- Rule 546: item_fastermovevelocity
            codes = "allitems",
            stat = {index = 96, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[96: item_fastermovevelocity]"
        },
        { -- Rule 547: lastblockframe
            codes = "allitems",
            stat = {index = 95, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[95: lastblockframe]"
        },
        { -- Rule 548: item_levelreqpct
            codes = "allitems",
            stat = {index = 94, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[94: item_levelreqpct]"
        },
        { -- Rule 549: item_fasterattackrate
            codes = "allitems",
            stat = {index = 93, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[93: item_fasterattackrate]"
        },
        { -- Rule 550: item_levelreq
            codes = "allitems",
            stat = {index = 92, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[92: item_levelreq]"
        },
        { -- Rule 551: item_req_percent
            codes = "allitems",
            stat = {index = 91, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[91: item_req_percent]"
        },
        { -- Rule 552: item_lightcolor
            codes = "allitems",
            stat = {index = 90, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[90: item_lightcolor]"
        },
        { -- Rule 553: item_lightradius
            codes = "allitems",
            stat = {index = 89, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[89: item_lightradius]"
        },
        { -- Rule 554: item_doubleherbduration
            codes = "allitems",
            stat = {index = 88, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[88: item_doubleherbduration]"
        },
        { -- Rule 555: item_reducedprices
            codes = "allitems",
            stat = {index = 87, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[87: item_reducedprices]"
        },
        { -- Rule 556: item_healafterkill
            codes = "allitems",
            stat = {index = 86, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[86: item_healafterkill]"
        },
        { -- Rule 557: item_addexperience
            codes = "allitems",
            stat = {index = 85, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[85: item_addexperience]"
        },
        { -- Rule 558: unsentparam1
            codes = "allitems",
            stat = {index = 84, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[84: unsentparam1]"
        },
        { -- Rule 559: item_addclassskills
            codes = "allitems",
            stat = {index = 83, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[83: item_addclassskills]"
        },
        { -- Rule 560: item_timeduration
            codes = "allitems",
            stat = {index = 82, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[82: item_timeduration]"
        },
        { -- Rule 561: item_knockback
            codes = "allitems",
            stat = {index = 81, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[81: item_knockback]"
        },
        { -- Rule 562: item_magicbonus
            codes = "allitems",
            stat = {index = 80, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[80: item_magicbonus]"
        },
        { -- Rule 563: item_goldbonus
            codes = "allitems",
            stat = {index = 79, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[79: item_goldbonus]"
        },
        { -- Rule 564: item_attackertakesdamage
            codes = "allitems",
            stat = {index = 78, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[78: item_attackertakesdamage]"
        },
        { -- Rule 565: item_maxmana_percent
            codes = "allitems",
            stat = {index = 77, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[77: item_maxmana_percent]"
        },
        { -- Rule 566: item_maxhp_percent
            codes = "allitems",
            stat = {index = 76, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[76: item_maxhp_percent]"
        },
        { -- Rule 567: item_maxdurability_percent
            codes = "allitems",
            stat = {index = 75, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[75: item_maxdurability_percent]"
        },
        { -- Rule 568: hpregen
            codes = "allitems",
            stat = {index = 74, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[74: hpregen]"
        },
        { -- Rule 569: maxdurability
            codes = "allitems",
            stat = {index = 73, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[73: maxdurability]"
        },
        { -- Rule 570: durability
            codes = "allitems",
            stat = {index = 72, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[72: durability]"
        },
        { -- Rule 571: value
            codes = "allitems",
            stat = {index = 71, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[71: value]"
        },
        { -- Rule 572: quantity
            codes = "allitems",
            stat = {index = 70, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[70: quantity]"
        },
        { -- Rule 573: other_animrate
            codes = "allitems",
            stat = {index = 69, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[69: other_animrate]"
        },
        { -- Rule 574: attackrate
            codes = "allitems",
            stat = {index = 68, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[68: attackrate]"
        },
        { -- Rule 575: velocitypercent
            codes = "allitems",
            stat = {index = 67, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[67: velocitypercent]"
        },
        { -- Rule 576: stunlength
            codes = "allitems",
            stat = {index = 66, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[66: stunlength]"
        },
        { -- Rule 577: stamdrainmaxdam
            codes = "allitems",
            stat = {index = 65, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[65: stamdrainmaxdam]"
        },
        { -- Rule 578: stamdrainmindam
            codes = "allitems",
            stat = {index = 64, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[64: stamdrainmindam]"
        },
        { -- Rule 579: manadrainmaxdam
            codes = "allitems",
            stat = {index = 63, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[63: manadrainmaxdam]"
        },
        { -- Rule 580: manadrainmindam
            codes = "allitems",
            stat = {index = 62, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[62: manadrainmindam]"
        },
        { -- Rule 581: lifedrainmaxdam
            codes = "allitems",
            stat = {index = 61, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[61: lifedrainmaxdam]"
        },
        { -- Rule 582: lifedrainmindam
            codes = "allitems",
            stat = {index = 60, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[60: lifedrainmindam]"
        },
        { -- Rule 583: poisonlength
            codes = "allitems",
            stat = {index = 59, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[59: poisonlength]"
        },
        { -- Rule 584: poisonmaxdam
            codes = "allitems",
            stat = {index = 58, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[58: poisonmaxdam]"
        },
        { -- Rule 585: poisonmindam
            codes = "allitems",
            stat = {index = 57, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[57: poisonmindam]"
        },
        { -- Rule 586: coldlength
            codes = "allitems",
            stat = {index = 56, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[56: coldlength]"
        },
        { -- Rule 587: coldmaxdam
            codes = "allitems",
            stat = {index = 55, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[55: coldmaxdam]"
        },
        { -- Rule 588: coldmindam
            codes = "allitems",
            stat = {index = 54, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[54: coldmindam]"
        },
        { -- Rule 589: magicmaxdam
            codes = "allitems",
            stat = {index = 53, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[53: magicmaxdam]"
        },
        { -- Rule 590: magicmindam
            codes = "allitems",
            stat = {index = 52, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[52: magicmindam]"
        },
        { -- Rule 591: lightmaxdam
            codes = "allitems",
            stat = {index = 51, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[51: lightmaxdam]"
        },
        { -- Rule 592: lightmindam
            codes = "allitems",
            stat = {index = 50, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[50: lightmindam]"
        },
        { -- Rule 593: firemaxdam
            codes = "allitems",
            stat = {index = 49, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[49: firemaxdam]"
        },
        { -- Rule 594: firemindam
            codes = "allitems",
            stat = {index = 48, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[48: firemindam]"
        },
        { -- Rule 595: damageaura
            codes = "allitems",
            stat = {index = 47, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[47: damageaura]"
        },
        { -- Rule 596: maxpoisonresist
            codes = "allitems",
            stat = {index = 46, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[46: maxpoisonresist]"
        },
        { -- Rule 597: poisonresist
            codes = "allitems",
            stat = {index = 45, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[45: poisonresist]"
        },
        { -- Rule 598: maxcoldresist
            codes = "allitems",
            stat = {index = 44, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[44: maxcoldresist]"
        },
        { -- Rule 599: coldresist
            codes = "allitems",
            stat = {index = 43, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[43: coldresist]"
        },
        { -- Rule 600: maxlightresist
            codes = "allitems",
            stat = {index = 42, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[42: maxlightresist]"
        },
        { -- Rule 601: lightresist
            codes = "allitems",
            stat = {index = 41, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[41: lightresist]"
        },
        { -- Rule 602: maxfireresist
            codes = "allitems",
            stat = {index = 40, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[40: maxfireresist]"
        },
        { -- Rule 603: fireresist
            codes = "allitems",
            stat = {index = 39, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[39: fireresist]"
        },
        { -- Rule 604: maxmagicresist
            codes = "allitems",
            stat = {index = 38, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[38: maxmagicresist]"
        },
        { -- Rule 605: magicresist
            codes = "allitems",
            stat = {index = 37, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[37: magicresist]"
        },
        { -- Rule 606: damageresist
            codes = "allitems",
            stat = {index = 36, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[36: damageresist]"
        },
        { -- Rule 607: magic_damage_reduction
            codes = "allitems",
            stat = {index = 35, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[35: magic_damage_reduction]"
        },
        { -- Rule 608: normal_damage_reduction
            codes = "allitems",
            stat = {index = 34, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[34: normal_damage_reduction]"
        },
        { -- Rule 609: armorclass_vs_hth
            codes = "allitems",
            stat = {index = 33, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[33: armorclass_vs_hth]"
        },
        { -- Rule 610: armorclass_vs_missile
            codes = "allitems",
            stat = {index = 32, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[32: armorclass_vs_missile]"
        },
        { -- Rule 611: armorclass
            codes = "allitems",
            stat = {index = 31, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[31: armorclass]"
        },
        { -- Rule 612: nextexp
            codes = "allitems",
            stat = {index = 30, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[30: nextexp]"
        },
        { -- Rule 613: lastexp
            codes = "allitems",
            stat = {index = 29, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[29: lastexp]"
        },
        { -- Rule 614: staminarecoverybonus
            codes = "allitems",
            stat = {index = 28, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[28: staminarecoverybonus]"
        },
        { -- Rule 615: manarecoverybonus
            codes = "allitems",
            stat = {index = 27, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[27: manarecoverybonus]"
        },
        { -- Rule 616: manarecovery
            codes = "allitems",
            stat = {index = 26, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[26: manarecovery]"
        },
        { -- Rule 617: damagepercent
            codes = "allitems",
            stat = {index = 25, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[25: damagepercent]"
        },
        { -- Rule 618: secondary_maxdamage
            codes = "allitems",
            stat = {index = 24, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[24: secondary_maxdamage]"
        },
        { -- Rule 619: secondary_mindamage
            codes = "allitems",
            stat = {index = 23, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[23: secondary_mindamage]"
        },
        { -- Rule 620: maxdamage
            codes = "allitems",
            stat = {index = 22, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[22: maxdamage]"
        },
        { -- Rule 621: mindamage
            codes = "allitems",
            stat = {index = 21, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[21: mindamage]"
        },
        { -- Rule 622: toblock
            codes = "allitems",
            stat = {index = 20, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[20: toblock]"
        },
        { -- Rule 623: tohit
            codes = "allitems",
            stat = {index = 19, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[19: tohit]"
        },
        { -- Rule 624: item_mindamage_percent
            codes = "allitems",
            stat = {index = 18, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[18: item_mindamage_percent]"
        },
        { -- Rule 625: item_maxdamage_percent
            codes = "allitems",
            stat = {index = 17, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[17: item_maxdamage_percent]"
        },
        { -- Rule 626: item_armor_percent
            codes = "allitems",
            stat = {index = 16, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[16: item_armor_percent]"
        },
        { -- Rule 627: goldbank
            codes = "allitems",
            stat = {index = 15, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[15: goldbank]"
        },
        { -- Rule 628: gold
            codes = "allitems",
            stat = {index = 14, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[14: gold]"
        },
        { -- Rule 629: experience
            codes = "allitems",
            stat = {index = 13, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[13: experience]"
        },
        { -- Rule 630: level
            codes = "allitems",
            stat = {index = 12, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[12: level]"
        },
        { -- Rule 631: maxstamina
            codes = "allitems",
            stat = {index = 11, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[11: maxstamina]"
        },
        { -- Rule 632: stamina
            codes = "allitems",
            stat = {index = 10, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[10: stamina]"
        },
        { -- Rule 633: maxmana
            codes = "allitems",
            stat = {index = 9, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[9: maxmana]"
        },
        { -- Rule 634: mana
            codes = "allitems",
            stat = {index = 8, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[8: mana]"
        },
        { -- Rule 635: maxhp
            codes = "allitems",
            stat = {index = 7, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[7: maxhp]"
        },
        { -- Rule 636: hitpoints
            codes = "allitems",
            stat = {index = 6, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[6: hitpoints]"
        },
        { -- Rule 637: newskills
            codes = "allitems",
            stat = {index = 5, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[5: newskills]"
        },
        { -- Rule 638: statpts
            codes = "allitems",
            stat = {index = 4, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[4: statpts]"
        },
        { -- Rule 639: vitality
            codes = "allitems",
            stat = {index = 3, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[3: vitality]"
        },
        { -- Rule 640: dexterity
            codes = "allitems",
            stat = {index = 2, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[2: dexterity]"
        },
        { -- Rule 641: energy
            codes = "allitems",
            stat = {index = 1, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[1: energy]"
        },
        { -- Rule 642: strength
            codes = "allitems",
            stat = {index = 0, op = ">=", value = 1},
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n[0: strength]"
        },
        { -- Rule 643: Adding line break to show info below this line is stat id info
            codes = "allitems",
            location = { "onplayer", "equipped", "atvendor" },
            suffix = "\n{red}------- STAT ID -------{white}"
        }
    }
}
