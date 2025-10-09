--- Filter Title: No Filter
--- Filter Type: (None)
--- Filter Description: This is not a filter, it applies no changes.
--- Filter Link: https://somelinkhere.com


-- Filling out the above info ^^ will help you display important info in D2RLAN, as well as enable auto-updating for your players

return {-- The below settings are all optional, default/false entries will be assumed for anything not included

    reload = "My Filter Name", --Allows you to specify a custom message when reloading the filter in-game
    debug = false, --Allows you to toggle Debug Mode on/off, which displays rule matching logic in-game for each item
    language = "enUS", --Allows you to set the filter language to one of the 13 currently supported languages
    filter_titles = {"Early-Game", "Mid-Game", "End-Game"}, --Allows you to specify the text displayed for varying filter 'levels'
    filter_level = 1, --Indicates your currently active filter level, normally controlled via D2RLAN hotkey
    allowOverrides = true, --Allows a mod author (or another filter) to include default/added rules to your loot filter

    --Begin Loot Filter Operations
    rules = {

        -- For a more detailed explanation of how to create your own filter rules, please use the included lootfilter_guide
        -- In this template, only one basic example will be shown for syntax purposes:

        { --Display socket count in gray, to the right of item name, [x]  <--- Helper comment to explain what it does
            codes = "allitems",  -- Special rule to match all items
            sockets = "1+", -- Match items with 1 or more sockets
            location = { "onground", "onplayer", "equipped", "atvendor" }, -- Match items found in these locations
            itype = { 10, 12, 45, 50, 58, 82, 83, 84 }, -- Match items of the following itemtypes
            suffix = " {gray}[{sockets}]" -- Add grey text before the item name, displaying the socket count
        },
    }
}
