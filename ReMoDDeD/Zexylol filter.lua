--- Filter Title: Zexylol's Hardfilter v1.4
--- Filter Type: (Hardconfig filter)
--- Filter Description: \nFilter to remove non perfect superior bases. \nThis filter removes alot of items, and will continue to expand on that front. \nAll Uniques Max stat is done, all stats <70% is hidden done!.\nThis does not include ED% (damage or defense), and not bonus damage on wep and bonus armor on armors.(will need to figure this out later.)
--- Filter Link: https://github.com/locbones/D2RLAN-Filters/raw/refs/heads/main/ReMoDDeD/Zexylol%20filter.lua
return {
  reload = "{pink} Zexylol's Hardconfig Filter {pink}Reloaded",
  --debug = true,
  filter_level = 1,
  filter_titles = {"Endgame", "Gearing", "Leveling",},
  allowOverrides = true,
  rules = {
  --Rules Debugg.
    {
      --codes = "allitems",
      --location = {"onground", "onplayer","equipped"},
      --prefix = "S388={stat=(388)}|S20={stat=(20)}|",
      --prefix = "[{index}]",
      --prefix = "[{code}]",
      --prefix = "[{code}] [{rarity}] [{index}] [{itype}]",
      --suffix = "[{quality}]",
      --suffix = "[{rarity}]",
      --suffix = "[{index}]",
      --suffix = "[{ilvl}]",
      --prefix = "Sockets[{maxsock}]",
      --filter_levels = "1,2,3"
    },
  --[[Rules Event Items
    {--Snowballs
      codes = {"Ev00", "Ev01", "Ev02"},
      location = {"onground"},
      notify = "ÿc;Throwing time!!",
      filter_levels = "1,2,3"
    },
    {--Cube items
      codes = {"Ev03", "Ev04"},
      location = {"onground"},
      notify = "ÿc;Cubing!",
      filter_levels = "1,2,3"
    },
    {--Potions
      codes = {"Ev05", "Ev06", "Ev07", "Ev08", "Ev09", "Ev10"},
      location = {"onground"},
      notify = "ÿc;Drink me!",
      filter_levels = "1,2,3"
    },
   --[[
    {--Thanksgiving Items
      codes = {"Ev1", "Ev2", "Ev3", "Ev4", "Ev5", "Ev6", "Ev7", "Ev8", "elx"},
      location = {"onground"},
      notify = "ÿc;YUMMY PIE!",
      filter_levels = "1,2,3"
    },]]--

  --Rules 1-9 shows sockets, runewords, tempered, crafted, low/mid/hi/ultra runes, tempering souls.
  
  --Rules Sockets.
    {--Display socket count in green if maxed [x]
      codes = "allitems",
      location = {"onground", "onplayer", "equipped", "atvendor"},
      maxsock = true,
      itype = {10, 12, 45, 50 },
      prefix_desc = "{green} [Sockets: {sockets}/{maxsock}] \n",
      filter_levels = "1,2,3"
    },
    {--Display socket count in grey if not maxed [x]
      codes = "allitems",
      location = {"onground", "onplayer", "equipped", "atvendor"},
      maxsock = false,
      itype = {10, 12, 45, 50 },
      prefix_desc = "{gray} [Sockets: {sockets}/{maxsock}] \n",
      filter_levels = "1,2,3"
    },

  --Rules Item Tags
    {--Display Runewords tag.
      codes = "allitems",
      location = {"onground", "onplayer", "equipped", "atvendor"},
      runeword = true,
      suffix = "\n{red}Runeword",
      hide = false,
      filter_levels = "1,2,3"
    },
    {--Display Temepered tag.
      codes = "allitems",
      quality = "tempered",
      suffix = "\n{red}Tempered",
      location = {"onground", "onplayer", "equipped", "atvendor"},
      hide = false,
      filter_levels = "1,2,3"
    },
    {--Display Crafted tag.
      codes = "allitems",
      quality = "crafted",
      suffix = "\n{red} Crafted",
      location = {"onground", "onplayer", "equipped", "atvendor"},
      hide = false,
      filter_levels = "1,2,3"
    },
    {--Display Low rune name.
      codes = {"r01", "r02", "r03", "r04", "r05", "r06", "r07", "r08", "r09", "r10", "r11"},
      suffix = "\n{gray} Low Points Rune",
      --notify = "{gray} Low Rune Points!", --Disabled, remove --in fron of notify to activate.
      hide = false,
      filter_levels = "1,2,3"
    },
    {--Display Mid rune name.
      codes = {"r12", "r13", "r14", "r15", "r16", "r17", "r18", "r19", "r20", "r21", "r22"},
      suffix = "\n{green} Mid Points Rune",
      --notify = "{green} Mid Rune Points!", --Disabled, remove --in fron of notify to activate.
      hide = false,
      filter_levels = "1,2,3"
    },
    {--Display High rune name with notify.
      codes = {"r23", "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31", "r32", "r33"},
      suffix = "\n{red} High Points Rune",
      notify = "{red} High Rune Points!",
      hide = false,
      filter_levels = "1,2,3"
    },
    {--Display Ultra rune name with notify.
      codes = {"r34", "r35", "r36"},
      name_style = "Rainbow",
      suffix = "\n Ultra Points Rune",
      notify = "{pink} Ultra Rune Points!",
      border = {255,0,0},
      hide = false,
      filter_levels = "1,2,3"
    },
    {--Display Ultra Enhancment crystals
      codes = {"z19", "z20", "z21", "z22", "z23", "z24", "z25", "z26", "z27"},
      notify = "{red} Ultra Enhancement Crystal",
      name_override = "{red} Ultra Enhancement Crystal",
      border = {255,0,0},
      filter_levels = "1,2,3",
    },
    {--Color Dyes
      codes = {"z60", "z61", "z62", "z63", "z64", "z65", "z66", "z67", "z68", "z69","z70", "z71", "z72", "z73"},
      border = { 255, 255, 255},
    },
    {--Display DemonTempering name with notify.
      codes = {"C00", "C01", "C02", "C03", "C04", "C05", "C06", "C07", "C08", "C09", "C10", "C11", "C12", "C13", "C14", 
      "C15", "C16", "C17", "C18", "C19", "C20", "C21", "C22", "C23", "C24", "C25", "C26", "C27", "C28", "C29", "C30", "C31", 
      "C32", "C33", "C34", "C35", "C36", "C37"},
      name_style = "Toxic Fog",
      suffix = "\n Temepered Mats!",
      notify = "{pink} Tempered Material!",
      border = {255,0,0},
      filter_levels = "1,2,3"
    },
    { -- Display Unique Small Charm Color
      codes = "allitems",
      quality = "7",
      identified = false,
      itype = 82,
      location = { "onplayer", "onground", "atvendor" },
      prefix = "{gold}"
    },
    { -- Display Unique Large Charm Color
      codes = "allitems",
      quality = "7",
      identified = false,
      itype = 83,
      location = { "onplayer", "onground", "atvendor" },
      prefix = "{gold}"
    },
    { -- Display Unique Grand Charm Color
      codes = "allitems",
      quality = "7",
      identified = false,
      itype = 84,
      location = { "onplayer", "onground", "atvendor" },
      prefix = "{gold}"
    },
    {--Display green set border
      codes = "allitems",
      quality = 5,
      border = {000, 255, 000},
    },
  --Rules 10-11 Hide Gold.

    {--Hide Gold <1000, level 50-98
      code = "gld",
      stat = {index = 14, op = "<=", value = 1000 }, --Goldstack under 1000 is hidden.
      pstat = {index = 12, op = ">=", value = 50 }, --Level above 50.
      location = {"onground", "dropping"},
      hide = true, 
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2"
    },
    {--Hide Gold <5000, level 99+
      code = "gld",
      stat = {index = 14, op = "<=", value = 5000 }, --Goldstack under 5000 is hidden.
      pstat = {index = 12, op = ">=", value = 99 }, --Level above 99.
      location = {"onground", "dropping"},
      hide = true, 
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1"
    },

  --Rule 12-17 Hide all Inferior and normal types of weapons.

    {--Hide all Inferior, Normal Weapons
      codes = {"rxb", "jav", "ces", "lwb", "Bm4", "mac", "gis", "gma", "am2", "wrb", "dgr", "mau", "ob5", "glv", "btl", 
      "mpi", "brn", "mxb", "hal", "spr", "Bm7", "crs", "lxb", "mst", "2hs", "cst", "scp", "lst", "Pm1", "bsd", "bwn", "gix", 
      "tax", "ywn", "wsd", "spc", "wnd", "dir", "ssd", "gsc", "whm", "Bf4", "wsp", "axe", "ssp", "bld", "clb", "sbw", "am5", 
      "clw", "btx", "sst", "am1", "Bf1", "ktr", "sbb", "Bm1", "swb", "skr", "tsp", "spt", "vou", "2ax", "bal", "am4", "bst", 
      "kri", "Ds1", "lsd", "bsw", "clm", "ob4", "gwn", "ob2", "ob1", "bkf", "tkf", "ob3", "axf", "sbr", "fla", "flc", "pil", 
      "bax", "wax", "lbb", "scm", "hbw", "hax", "lax", "92h", "k01", "gsd", "flb", "gax", "pik", "wst", "scy", "am3", "bar", 
      "hxb", "Ds4", "wsc", "lbw", "tri", "pax", "cbw"},
      quality = "1",
      rarity = "0",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Inferior, Exceptional Weapons
      codes = {"8sw", "9bl", "9sp", "9gl", "Bm8", "92a", "9wb", "9mt", "9cs", "8ss", "9dg", "9ta", "9fc", "9ax", "9st", 
      "9bw", "9bt", "8ls", "am7", "9tr", "9sm", "9wn", "8lx", "Bf5", "9cr", "9sr", "9wa", "9pa", "8cb", "9m9", "8sb", "9fl", 
      "9sc", "9kr", "9s9", "9h9", "9wd", "8l8", "9ws", "9ja", "9xf", "8cs", "9bs", "9gs", "8hb", "9b7", "am6", "9p9", "9qs", 
      "9gi", "92h", "ob6", "9ss", "9lw", "9la", "8ws", "9fb", "9ma", "9yw", "Pm2", "9bk", "9tk", "am8", "9ha", "8mx", "9qr", 
      "8s8", "Bm5", "oba", "k02", "9gw", "9mp", "Bf2", "9cm", "9vo", "ama", "9sb", "9b8", "ob9", "8lw", "9br", "8hx", "9s8", 
      "9di", "9ar", "9gm", "9pi", "9tw", "9ls", "8rx", "ob7", "ob8", "9cl", "9gd", "8lb", "8bs", "9ba", "9wh", "am9", "9wc", 
      "9b9", "9ga", "9ts", "Bm2", "Ds2", "Ds5"},
      quality = "1",
      rarity = "1",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Inferior, Elite Weapons
      codes = {"l13", "7sp", "7ts", "7o7", "Ss2", "l17", "6sw", "7sm", "7bl", "amb", "obe", "7dg", "7cr", "7wn", "6hx", 
      "7bs", "l14", "7qs", "Ds3", "Bm9", "6ls", "Ss3", "6lx", "6s7", "Pm3", "7gs", "6sb", "7bk", "7xf", "amd", "7st", "7pi", 
      "7gw", "7sr", "7vo", "l15", "72a", "7di", "obd", "7la", "7ma", "7lw", "7h7", "7gm", "Bm6", "7fl", "6lb", "k03", "7cl", 
      "6ss", "7wd", "7ba", "7s7", "7tw", "ame", "7p7", "7sb", "7fb", "6lw", "7wh", "7yw", "obc", "7ta", "obb", "7sc", "amf", 
      "7gi", "6mx", "Bm3", "7ax", "7wb", "Bf3", "7mt", "6hb", "7ss", "7cs", "7kr", "7tr", "6ws", "7s8", "Ds6", "amc", "7bt", 
      "7b7", "7wc", "Ss4", "6l7", "6rx", "l16", "7b8", "7mp", "Bf6", "7ls", "7qr", "6cb", "7m7", "7cm", "7pa", "7gd", "7bw", 
      "7tk", "7ja", "7br", "obf", "7wa", "7gl", "6bs", "7ga", "7ha", "7ar", "7ws", "6cs", "72h", "7fc", "Ss1"},
      quality = "1",
      rarity = "2",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Normal, Normal Weapons
      codes = {"rxb", "jav", "ces", "lwb", "Bm4", "mac", "gis", "gma", "am2", "wrb", "dgr", "mau", "ob5", "glv", "btl", 
      "mpi", "brn", "mxb", "hal", "spr", "Bm7", "crs", "lxb", "mst", "2hs", "cst", "scp", "lst", "Pm1", "bsd", "bwn", "gix", 
      "tax", "ywn", "wsd", "spc", "wnd", "dir", "ssd", "gsc", "whm", "Bf4", "wsp", "axe", "ssp", "bld", "clb", "sbw", "am5", 
      "clw", "btx", "sst", "am1", "Bf1", "ktr", "sbb", "Bm1", "swb", "skr", "tsp", "spt", "vou", "2ax", "bal", "am4", "bst", 
      "kri", "Ds1", "lsd", "bsw", "clm", "ob4", "gwn", "ob2", "ob1", "bkf", "tkf", "ob3", "axf", "sbr", "fla", "flc", "pil", 
      "bax", "wax", "lbb", "scm", "hbw", "hax", "lax", "92h", "k01", "gsd", "flb", "gax", "pik", "wst", "scy", "am3", "bar", 
      "hxb", "Ds4", "wsc", "lbw", "tri", "pax", "cbw"},
      quality = "2",
      rarity = "0",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Normal, Exceptional Weapons
      codes = {"8sw", "9bl", "9sp", "9gl", "Bm8", "92a", "9wb", "9mt", "9cs", "8ss", "9dg", "9ta", "9fc", "9ax", "9st", 
      "9bw", "9bt", "8ls", "am7", "9tr", "9sm", "9wn", "8lx", "Bf5", "9cr", "9sr", "9wa", "9pa", "8cb", "9m9", "8sb", "9fl", 
      "9sc", "9kr", "9s9", "9h9", "9wd", "8l8", "9ws", "9ja", "9xf", "8cs", "9bs", "9gs", "8hb", "9b7", "am6", "9p9", "9qs", 
      "9gi", "92h", "ob6", "9ss", "9lw", "9la", "8ws", "9fb", "9ma", "9yw", "Pm2", "9bk", "9tk", "am8", "9ha", "8mx", "9qr", 
      "8s8", "Bm5", "oba", "k02", "9gw", "9mp", "Bf2", "9cm", "9vo", "ama", "9sb", "9b8", "ob9", "8lw", "9br", "8hx", "9s8", 
      "9di", "9ar", "9gm", "9pi", "9tw", "9ls", "8rx", "ob7", "ob8", "9cl", "9gd", "8lb", "8bs", "9ba", "9wh", "am9", "9wc", 
      "9b9", "9ga", "9ts", "Bm2", "Ds2", "Ds5"},
      quality = "2",
      rarity = "1",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Normal, Elite Weapons
      codes = {"7sp", "7ts", "7o7", "Ss2", "6sw", "7sm", "7bl", "amb", "obe", "7dg", "7cr", "7wn", "6hx", "7bs", "7qs", 
      "Ds3", "Bm9", "6ls", "Ss3", "6lx", "6s7", "Pm3", "7gs", "6sb", "7bk", "7xf", "amd", "7st", "7pi", "7gw", "7sr", "7vo", 
      "72a", "7di", "obd", "7la", "7ma", "7lw", "7h7", "7gm", "Bm6", "7fl", "6lb", "k03", "7cl", "6ss", "7wd", "7ba", "7s7", 
      "7tw", "ame", "7p7", "7sb", "7fb", "6lw", "7wh", "7yw", "obc", "7ta", "obb", "7sc", "amf", "7gi", "6mx", "Bm3", "7ax", 
      "7wb", "Bf3", "7mt", "6hb", "7ss", "7cs", "7kr", "7tr", "6ws", "7s8", "Ds6", "amc", "7bt", "7b7", "7wc", "Ss4", "6l7", 
      "6rx", "7b8", "7mp", "Bf6", "7ls", "7qr", "6cb", "7m7", "7cm", "7pa", "7gd", "7bw", "7tk", "7ja", "7br", "obf", "7wa", 
      "7gl", "6bs", "7ga", "7ha", "7ar", "7ws", "6cs", "72h", "7fc", "Ss1", "l13", "l17", "l14", "l15", "l16"},
      quality = "2",
      rarity = "2",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },

  --[[Rule 18-19 Hides Superior Weapons that is Normal och Exceptional Rarity.

    Disabled due to low level req might be needed.

    {--Hide all Superior, Normal Weapons
      codes = {"rxb", "jav", "ces", "lwb", "Bm4", "mac", "gis", "gma", "am2", "wrb", "dgr", "mau", "ob5", "glv", "btl", 
      "mpi", "brn", "mxb", "hal", "spr", "Bm7", "crs", "lxb", "mst", "2hs", "cst", "scp", "lst", "Pm1", "bsd", "bwn", "gix", 
      "tax", "ywn", "wsd", "spc", "wnd", "dir", "ssd", "gsc", "whm", "Bf4", "wsp", "axe", "ssp", "bld", "clb", "sbw", "am5", 
      "clw", "btx", "sst", "am1", "Bf1", "ktr", "sbb", "Bm1", "swb", "skr", "tsp", "spt", "vou", "2ax", "bal", "am4", "bst", 
      "kri", "Ds1", "lsd", "bsw", "clm", "ob4", "gwn", "ob2", "ob1", "bkf", "tkf", "ob3", "axf", "sbr", "fla", "flc", "pil", 
      "bax", "wax", "lbb", "scm", "hbw", "hax", "lax", "92h", "k01", "gsd", "flb", "gax", "pik", "wst", "scy", "am3", "bar", 
      "hxb", "Ds4", "wsc", "lbw", "tri", "pax", "cbw"},
      quality = "3",
      rarity = "0",
      runeword = false,
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Superior, Exceptional Weapons
      codes = {"8sw", "9bl", "9sp", "9gl", "Bm8", "92a", "9wb", "9mt", "9cs", "8ss", "9dg", "9ta", "9fc", "9ax", "9st", 
      "9bw", "9bt", "8ls", "am7", "9tr", "9sm", "9wn", "8lx", "Bf5", "9cr", "9sr", "9wa", "9pa", "8cb", "9m9", "8sb", "9fl", 
      "9sc", "9kr", "9s9", "9h9", "9wd", "8l8", "9ws", "9ja", "9xf", "8cs", "9bs", "9gs", "8hb", "9b7", "am6", "9p9", "9qs", 
      "9gi", "92h", "ob6", "9ss", "9lw", "9la", "8ws", "9fb", "9ma", "9yw", "Pm2", "9bk", "9tk", "am8", "9ha", "8mx", "9qr", 
      "8s8", "Bm5", "oba", "k02", "9gw", "9mp", "Bf2", "9cm", "9vo", "ama", "9sb", "9b8", "ob9", "8lw", "9br", "8hx", "9s8", 
      "9di", "9ar", "9gm", "9pi", "9tw", "9ls", "8rx", "ob7", "ob8", "9cl", "9gd", "8lb", "8bs", "9ba", "9wh", "am9", "9wc", 
      "9b9", "9ga", "9ts", "Bm2", "Ds2", "Ds5"},
      quality = "3",
      rarity = "1",
      runeword = false,
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },]]--

  --Rule 20-25 Hide all Magic and Rare Weapons that is Normal, Exceptional or Elite.

    {--Hide all Magic, Normal Weapons
      codes = {"rxb", "jav", "ces", "lwb", "Bm4", "mac", "gis", "gma", "am2", "wrb", "dgr", "mau", "ob5", "glv", "btl", 
      "mpi", "brn", "mxb", "hal", "spr", "Bm7", "crs", "lxb", "mst", "2hs", "cst", "scp", "lst", "Pm1", "bsd", "bwn", "gix", 
      "tax", "ywn", "wsd", "spc", "wnd", "dir", "ssd", "gsc", "whm", "Bf4", "wsp", "axe", "ssp", "bld", "clb", "sbw", "am5", 
      "clw", "btx", "sst", "am1", "Bf1", "ktr", "sbb", "Bm1", "swb", "skr", "tsp", "spt", "vou", "2ax", "bal", "am4", "bst", 
      "kri", "Ds1", "lsd", "bsw", "clm", "ob4", "gwn", "ob2", "ob1", "bkf", "tkf", "ob3", "axf", "sbr", "fla", "flc", "pil", 
      "bax", "wax", "lbb", "scm", "hbw", "hax", "lax", "92h", "k01", "gsd", "flb", "gax", "pik", "wst", "scy", "am3", "bar", 
      "hxb", "Ds4", "wsc", "lbw", "tri", "pax", "cbw"},
      quality = "4",
      rarity = "0",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Magic, Exceptional Weapons
      codes = {"8sw", "9bl", "9sp", "9gl", "Bm8", "92a", "9wb", "9mt", "9cs", "8ss", "9dg", "9ta", "9fc", "9ax", "9st", 
      "9bw", "9bt", "8ls", "am7", "9tr", "9sm", "9wn", "8lx", "Bf5", "9cr", "9sr", "9wa", "9pa", "8cb", "9m9", "8sb", "9fl", 
      "9sc", "9kr", "9s9", "9h9", "9wd", "8l8", "9ws", "9ja", "9xf", "8cs", "9bs", "9gs", "8hb", "9b7", "am6", "9p9", "9qs", 
      "9gi", "92h", "ob6", "9ss", "9lw", "9la", "8ws", "9fb", "9ma", "9yw", "Pm2", "9bk", "9tk", "am8", "9ha", "8mx", "9qr", 
      "8s8", "Bm5", "oba", "k02", "9gw", "9mp", "Bf2", "9cm", "9vo", "ama", "9sb", "9b8", "ob9", "8lw", "9br", "8hx", "9s8", 
      "9di", "9ar", "9gm", "9pi", "9tw", "9ls", "8rx", "ob7", "ob8", "9cl", "9gd", "8lb", "8bs", "9ba", "9wh", "am9", "9wc", 
      "9b9", "9ga", "9ts", "Bm2", "Ds2", "Ds5"},
      quality = "4",
      rarity = "1",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Magic, Elite Weapons
      codes = {"l13", "7sp", "7ts", "7o7", "Ss2", "l17", "6sw", "7sm", "7bl", "amb", "obe", "7dg", "7cr", "7wn", "6hx", 
      "7bs", "l14", "7qs", "Ds3", "Bm9", "6ls", "Ss3", "6lx", "6s7", "Pm3", "7gs", "6sb", "7bk", "7xf", "amd", "7st", "7pi", 
      "7gw", "7sr", "7vo", "l15", "72a", "7di", "obd", "7la", "7ma", "7lw", "7h7", "7gm", "Bm6", "7fl", "6lb", "k03", "7cl", 
      "6ss", "7wd", "7ba", "7s7", "7tw", "ame", "7p7", "7sb", "7fb", "6lw", "7wh", "7yw", "obc", "7ta", "obb", "7sc", "amf", 
      "7gi", "6mx", "Bm3", "7ax", "7wb", "Bf3", "7mt", "6hb", "7ss", "7cs", "7kr", "7tr", "6ws", "7s8", "Ds6", "amc", "7bt", 
      "7b7", "7wc", "Ss4", "6l7", "6rx", "l16", "7b8", "7mp", "Bf6", "7ls", "7qr", "6cb", "7m7", "7cm", "7pa", "7gd", "7bw", 
      "7tk", "7ja", "7br", "obf", "7wa", "7gl", "6bs", "7ga", "7ha", "7ar", "7ws", "6cs", "72h", "7fc", "Ss1"},
      quality = "4",
      rarity = "2",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Rare, Normal Weapons
      codes = {"rxb", "jav", "ces", "lwb", "Bm4", "mac", "gis", "gma", "am2", "wrb", "dgr", "mau", "ob5", "glv", "btl", 
      "mpi", "brn", "mxb", "hal", "spr", "Bm7", "crs", "lxb", "mst", "2hs", "cst", "scp", "lst", "Pm1", "bsd", "bwn", "gix", 
      "tax", "ywn", "wsd", "spc", "wnd", "dir", "ssd", "gsc", "whm", "Bf4", "wsp", "axe", "ssp", "bld", "clb", "sbw", "am5", 
      "clw", "btx", "sst", "am1", "Bf1", "ktr", "sbb", "Bm1", "swb", "skr", "tsp", "spt", "vou", "2ax", "bal", "am4", "bst", 
      "kri", "Ds1", "lsd", "bsw", "clm", "ob4", "gwn", "ob2", "ob1", "bkf", "tkf", "ob3", "axf", "sbr", "fla", "flc", "pil", 
      "bax", "wax", "lbb", "scm", "hbw", "hax", "lax", "92h", "k01", "gsd", "flb", "gax", "pik", "wst", "scy", "am3", "bar", 
      "hxb", "Ds4", "wsc", "lbw", "tri", "pax", "cbw"},
      quality = "6",
      rarity = "0",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Rare, Exceptional Weapons
      codes = {"8sw", "9bl", "9sp", "9gl", "Bm8", "92a", "9wb", "9mt", "9cs", "8ss", "9dg", "9ta", "9fc", "9ax", "9st", 
      "9bw", "9bt", "8ls", "am7", "9tr", "9sm", "9wn", "8lx", "Bf5", "9cr", "9sr", "9wa", "9pa", "8cb", "9m9", "8sb", "9fl", 
      "9sc", "9kr", "9s9", "9h9", "9wd", "8l8", "9ws", "9ja", "9xf", "8cs", "9bs", "9gs", "8hb", "9b7", "am6", "9p9", "9qs", 
      "9gi", "92h", "ob6", "9ss", "9lw", "9la", "8ws", "9fb", "9ma", "9yw", "Pm2", "9bk", "9tk", "am8", "9ha", "8mx", "9qr", 
      "8s8", "Bm5", "oba", "k02", "9gw", "9mp", "Bf2", "9cm", "9vo", "ama", "9sb", "9b8", "ob9", "8lw", "9br", "8hx", "9s8", 
      "9di", "9ar", "9gm", "9pi", "9tw", "9ls", "8rx", "ob7", "ob8", "9cl", "9gd", "8lb", "8bs", "9ba", "9wh", "am9", "9wc", 
      "9b9", "9ga", "9ts", "Bm2", "Ds2", "Ds5"},
      quality = "6",
      rarity = "1",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Rare, Elite Weapons
      codes = {"l13", "7sp", "7ts", "7o7", "Ss2", "l17", "6sw", "7sm", "7bl", "amb", "obe", "7dg", "7cr", "7wn", "6hx", 
      "7bs", "l14", "7qs", "Ds3", "Bm9", "6ls", "Ss3", "6lx", "6s7", "Pm3", "7gs", "6sb", "7bk", "7xf", "amd", "7st", "7pi", 
      "7gw", "7sr", "7vo", "l15", "72a", "7di", "obd", "7la", "7ma", "7lw", "7h7", "7gm", "Bm6", "7fl", "6lb", "k03", "7cl", 
      "6ss", "7wd", "7ba", "7s7", "7tw", "ame", "7p7", "7sb", "7fb", "6lw", "7wh", "7yw", "obc", "7ta", "obb", "7sc", "amf", 
      "7gi", "6mx", "Bm3", "7ax", "7wb", "Bf3", "7mt", "6hb", "7ss", "7cs", "7kr", "7tr", "6ws", "7s8", "Ds6", "amc", "7bt", 
      "7b7", "7wc", "Ss4", "6l7", "6rx", "l16", "7b8", "7mp", "Bf6", "7ls", "7qr", "6cb", "7m7", "7cm", "7pa", "7gd", "7bw", 
      "7tk", "7ja", "7br", "obf", "7wa", "7gl", "6bs", "7ga", "7ha", "7ar", "7ws", "6cs", "72h", "7fc", "Ss1"},
      quality = "6",
      rarity = "2",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },

  --Rule 26-31 Hide all Inferior and normal types of Armors.

    {--Hide all Inferior, Normal Armors
      codes = {"dr1", "hlm", "hla", "chn", "vgl", "ghm", "qui", "kit", "pa3", "pa5", "rng", "aar", "Na4", "Zc4", "ne2", 
      "bhm", "ba2", "ba5", "dr5", "plt", "msk", "tgl", "gth", "Zc1", "pa1", "ba1", "ne5", "ne1", "Vg4", "Bb1", "Oa1", "Wp1", 
      "ba3", "dr2", "Na1", "Ag1", "Vg1", "Ag4", "bsh", "Pc1", "ci1", "Bb4", "ci0", "Ca1", "Gg1", "Sa1", "Ca4", "ba4", "Ab1", 
      "dr4", "dr3", "scl", "hbt", "Bp1", "Sa4", "ne3", "ful", "Ab4", "fhl", "cap", "spk", "lrg", "fld", "stu", "mbt", "ltp", 
      "buc", "mbl", "crn", "sml", "skp", "ne4", "vbl", "pa2", "lbt", "tbl", "Bp4", "tow", "hgl", "mgl", "brs", "spl", "tbt", 
      "hbl", "pa4", "gts", "vbt", "lgl", "lea", "lbl"},
      quality = "1",
      rarity = "0",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Inferior, Exceptional Armors
      codes = {"xla", "xow", "xhg", "xh9", "xhb", "zmb", "xui", "xul", "xhl", "xsk", "xkp", "xlm", "paa", "Ca2", "xlg", 
      "ztb", "zvb", "Bb2", "dr7", "Bp2", "ba6", "dr9", "xtg", "xvb", "Vg5", "xvg", "ba9", "xml", "ba7", "Wp2", "Zc2", "xmb", 
      "pa6", "xts", "ne8", "dr8", "xuc", "xpl", "xlt", "Ca5", "ne6", "Ab5", "dra", "Bp5", "Ab2", "xar", "xit", "xsh", "xhn", 
      "Gg2", "dr6", "ne9", "xld", "xtb", "ba8", "pa7", "pa9", "pa8", "xap", "xrn", "xrs", "xhm", "Zc5", "xmg", "Vg2", "Pc2", 
      "nea", "baa", "xlb", "xrg", "xea", "ne7", "xth", "xtu", "xcl", "xpk", "ci2", "xng", "Oa2", "xtp", "zlb", "zhb", "Bb5"},
      quality = "1",
      rarity = "1",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Inferior, Elite Armors
      codes = {"nef", "utc", "paf", "pab", "uul", "l09", "l04", "l01", "Bp6", "pae", "l03", "utp", "utg", "baf", "ulc", 
      "ci3", "l08", "ned", "uh9", "uhm", "Pc3", "Na3", "Ca3", "Zc6", "Sa3", "upk", "uhl", "pad", "usk", "utu", "ula", "Vg6", 
      "pac", "ukp", "upl", "Gg3", "drc", "neb", "uvb", "l12", "uvc", "uap", "uts", "Ab3", "utb", "drd", "Ca6", "l06", "l02", 
      "Ag6", "l07", "Sa6", "bab", "urg", "ult", "l11", "urn", "uld", "ung", "Na6", "drb", "uhb", "uui", "ucl", "Vg3", "uow", 
      "uhn", "uar", "umg", "neg", "uhg", "Ag3", "umb", "bac", "drf", "uvg", "ulm", "bae", "ush", "uit", "nee", "uea", "uhc", 
      "umc", "dre", "Ab6", "Zc3", "ulb", "l10", "uml", "Bb6", "Bb3", "ulg", "uth", "l05", "Bp3", "bad", "urs", "Wp3", "uuc", 
      "Oa3"},
      quality = "1",
      rarity = "2",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Normal, Normal Armors
      codes = {"dr1", "hlm", "hla", "chn", "vgl", "ghm", "qui", "kit", "pa3", "pa5", "rng", "aar", "Na4", "Zc4", "ne2", 
      "bhm", "ba2", "ba5", "dr5", "plt", "msk", "tgl", "gth", "Zc1", "pa1", "ba1", "ne5", "ne1", "Vg4", "Bb1", "Oa1", "Wp1", 
      "ba3", "dr2", "Na1", "Ag1", "Vg1", "Ag4", "bsh", "Pc1", "ci1", "Bb4", "ci0", "Ca1", "Gg1", "Sa1", "Ca4", "ba4", "Ab1", 
      "dr4", "dr3", "scl", "hbt", "Bp1", "Sa4", "ne3", "ful", "Ab4", "fhl", "cap", "spk", "lrg", "fld", "stu", "mbt", "ltp", 
      "buc", "mbl", "crn", "sml", "skp", "ne4", "vbl", "pa2", "lbt", "tbl", "Bp4", "tow", "hgl", "mgl", "brs", "spl", "tbt", 
      "hbl", "pa4", "gts", "vbt", "lgl", "lea", "lbl"},
      quality = "2",
      rarity = "0",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Normal, Exceptional Armors
      codes = {"xla", "xow", "xhg", "xh9", "xhb", "zmb", "xui", "xul", "xhl", "xsk", "xkp", "xlm", "paa", "Ca2", "xlg", 
      "ztb", "zvb", "Bb2", "dr7", "Bp2", "ba6", "dr9", "xtg", "xvb", "Vg5", "xvg", "ba9", "xml", "ba7", "Wp2", "Zc2", "xmb", 
      "pa6", "xts", "ne8", "dr8", "xuc", "xpl", "xlt", "Ca5", "ne6", "Ab5", "dra", "Bp5", "Ab2", "xar", "xit", "xsh", "xhn", 
      "Gg2", "dr6", "ne9", "xld", "xtb", "ba8", "pa7", "pa9", "pa8", "xap", "xrn", "xrs", "xhm", "Zc5", "xmg", "Vg2", "Pc2", 
      "nea", "baa", "xlb", "xrg", "xea", "ne7", "xth", "xtu", "xcl", "xpk", "ci2", "xng", "Oa2", "xtp", "zlb", "zhb", "Bb5"},
      quality = "2",
      rarity = "1",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Normal, Elite Armors
      codes = {"nef", "utc", "paf", "pab", "uul", "l04", "Bp6", "pae", "utp", "utg", "baf", "ulc", "ci3", "ned", "uh9", 
      "uhm", "Pc3", "Na3", "Ca3", "Zc6", "Sa3", "upk", "uhl", "pad", "usk", "utu", "ula", "Vg6", "pac", "ukp", "upl", "Gg3", 
      "drc", "neb", "uvb", "uvc", "uap", "uts", "Ab3", "utb", "drd", "Ca6", "Ag6", "Sa6", "bab", "urg", "ult", "urn", "uld", 
      "ung", "Na6", "drb", "uhb", "uui", "ucl", "Vg3", "uow", "uhn", "uar", "umg", "neg", "uhg", "Ag3", "umb", "bac", "drf", 
      "uvg", "ulm", "bae", "ush", "uit", "nee", "uea", "uhc", "umc", "dre", "Ab6", "Zc3", "ulb", "uml", "Bb6", "Bb3", "ulg", 
      "uth", "Bp3", "bad", "urs", "Wp3", "uuc", "Oa3", "l01", "l03", "l09", "l08", "l12", "l11", "l06", "l02", "l07", "l10", 
      "l05"},
      quality = "2",
      rarity = "2",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },

  --[[Rule 32-33 Hides Superior Armors that is Normal och Exceptional Rarity.

    Disabled due to low level req might be needed.

    {--Hide all Superior, Normal Armors
      codes = {"dr1", "hlm", "hla", "chn", "vgl", "ghm", "qui", "kit", "pa3", "pa5", "rng", "aar", "Na4", "Zc4", "ne2", 
      "bhm", "ba2", "ba5", "dr5", "plt", "msk", "tgl", "gth", "Zc1", "pa1", "ba1", "ne5", "ne1", "Vg4", "Bb1", "Oa1", "Wp1", 
      "ba3", "dr2", "Na1", "Ag1", "Vg1", "Ag4", "bsh", "Pc1", "ci1", "Bb4", "ci0", "Ca1", "Gg1", "Sa1", "Ca4", "ba4", "Ab1", 
      "dr4", "dr3", "scl", "hbt", "Bp1", "Sa4", "ne3", "ful", "Ab4", "fhl", "cap", "spk", "lrg", "fld", "stu", "mbt", "ltp", 
      "buc", "mbl", "crn", "sml", "skp", "ne4", "vbl", "pa2", "lbt", "tbl", "Bp4", "tow", "hgl", "mgl", "brs", "spl", "tbt", 
      "hbl", "pa4", "gts", "vbt", "lgl", "lea", "lbl"},
      quality = "3",
      rarity = "0",
      runeword = false,
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all superior, Exceptional Armors
      codes = {"xla", "xow", "xhg", "xh9", "xhb", "zmb", "xui", "xul", "xhl", "xsk", "xkp", "xlm", "paa", "Ca2", "xlg", 
      "ztb", "zvb", "Bb2", "dr7", "Bp2", "ba6", "dr9", "xtg", "xvb", "Vg5", "xvg", "ba9", "xml", "ba7", "Wp2", "Zc2", "xmb", 
      "pa6", "xts", "ne8", "dr8", "xuc", "xpl", "xlt", "Ca5", "ne6", "Ab5", "dra", "Bp5", "Ab2", "xar", "xit", "xsh", "xhn", 
      "Gg2", "dr6", "ne9", "xld", "xtb", "ba8", "pa7", "pa9", "pa8", "xap", "xrn", "xrs", "xhm", "Zc5", "xmg", "Vg2", "Pc2", 
      "nea", "baa", "xlb", "xrg", "xea", "ne7", "xth", "xtu", "xcl", "xpk", "ci2", "xng", "Oa2", "xtp", "zlb", "zhb", "Bb5"},
      quality = "3",
      rarity = "1",
      runeword = false,
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },]]--

  --Rule 34-39 Hide all Magic and Rare Weapons that is Normal, Exceptional or Elite.

    {--Hide all Magic, Normal Armors
      codes = {"dr1", "hlm", "hla", "chn", "vgl", "ghm", "qui", "kit", "pa3", "pa5", "rng", "aar", "Na4", "Zc4", "ne2", 
      "bhm", "ba2", "ba5", "dr5", "plt", "msk", "tgl", "gth", "Zc1", "pa1", "ba1", "ne5", "ne1", "Vg4", "Bb1", "Oa1", "Wp1", 
      "ba3", "dr2", "Na1", "Ag1", "Vg1", "Ag4", "bsh", "Pc1", "ci1", "Bb4", "ci0", "Ca1", "Gg1", "Sa1", "Ca4", "ba4", "Ab1", 
      "dr4", "dr3", "scl", "hbt", "Bp1", "Sa4", "ne3", "ful", "Ab4", "fhl", "cap", "spk", "lrg", "fld", "stu", "mbt", "ltp", 
      "buc", "mbl", "crn", "sml", "skp", "ne4", "vbl", "pa2", "lbt", "tbl", "Bp4", "tow", "hgl", "mgl", "brs", "spl", "tbt", 
      "hbl", "pa4", "gts", "vbt", "lgl", "lea", "lbl"},
      quality = "4",
      rarity = "0",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Magic, Exceptional Armors
      codes = {"xla", "xow", "xhg", "xh9", "xhb", "zmb", "xui", "xul", "xhl", "xsk", "xkp", "xlm", "paa", "Ca2", "xlg", 
      "ztb", "zvb", "Bb2", "dr7", "Bp2", "ba6", "dr9", "xtg", "xvb", "Vg5", "xvg", "ba9", "xml", "ba7", "Wp2", "Zc2", "xmb", 
      "pa6", "xts", "ne8", "dr8", "xuc", "xpl", "xlt", "Ca5", "ne6", "Ab5", "dra", "Bp5", "Ab2", "xar", "xit", "xsh", "xhn", 
      "Gg2", "dr6", "ne9", "xld", "xtb", "ba8", "pa7", "pa9", "pa8", "xap", "xrn", "xrs", "xhm", "Zc5", "xmg", "Vg2", "Pc2", 
      "nea", "baa", "xlb", "xrg", "xea", "ne7", "xth", "xtu", "xcl", "xpk", "ci2", "xng", "Oa2", "xtp", "zlb", "zhb", "Bb5"},
      quality = "4",
      rarity = "1",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Magic, Elite Armors
      codes = {"nef", "utc", "paf", "pab", "uul", "l09", "l04", "l01", "Bp6", "pae", "l03", "utp", "utg", "baf", "ulc", 
      "ci3", "l08", "ned", "uh9", "uhm", "Pc3", "Na3", "Ca3", "Zc6", "Sa3", "upk", "uhl", "pad", "usk", "utu", "ula", "Vg6", 
      "pac", "ukp", "upl", "Gg3", "drc", "neb", "uvb", "l12", "uvc", "uap", "uts", "Ab3", "utb", "drd", "Ca6", "l06", "l02", 
      "Ag6", "l07", "Sa6", "bab", "urg", "ult", "l11", "urn", "uld", "ung", "Na6", "drb", "uhb", "uui", "ucl", "Vg3", "uow", 
      "uhn", "uar", "umg", "neg", "uhg", "Ag3", "umb", "bac", "drf", "uvg", "ulm", "bae", "ush", "uit", "nee", "uea", "uhc", 
      "umc", "dre", "Ab6", "Zc3", "ulb", "l10", "uml", "Bb6", "Bb3", "ulg", "uth", "l05", "Bp3", "bad", "urs", "Wp3", "uuc", 
      "Oa3"},
      quality = "4",
      rarity = "2",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Rare, Normal Armors
      codes = {"dr1", "hlm", "hla", "chn", "vgl", "ghm", "qui", "kit", "pa3", "pa5", "rng", "aar", "Na4", "Zc4", "ne2", 
      "bhm", "ba2", "ba5", "dr5", "plt", "msk", "tgl", "gth", "Zc1", "pa1", "ba1", "ne5", "ne1", "Vg4", "Bb1", "Oa1", "Wp1", 
      "ba3", "dr2", "Na1", "Ag1", "Vg1", "Ag4", "bsh", "Pc1", "ci1", "Bb4", "ci0", "Ca1", "Gg1", "Sa1", "Ca4", "ba4", "Ab1", 
      "dr4", "dr3", "scl", "hbt", "Bp1", "Sa4", "ne3", "ful", "Ab4", "fhl", "cap", "spk", "lrg", "fld", "stu", "mbt", "ltp", 
      "buc", "mbl", "crn", "sml", "skp", "ne4", "vbl", "pa2", "lbt", "tbl", "Bp4", "tow", "hgl", "mgl", "brs", "spl", "tbt", 
      "hbl", "pa4", "gts", "vbt", "lgl", "lea", "lbl"},
      quality = "6",
      rarity = "0",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Rare, Exceptional Armors
      codes = {"xla", "xow", "xhg", "xh9", "xhb", "zmb", "xui", "xul", "xhl", "xsk", "xkp", "xlm", "paa", "Ca2", "xlg", 
      "ztb", "zvb", "Bb2", "dr7", "Bp2", "ba6", "dr9", "xtg", "xvb", "Vg5", "xvg", "ba9", "xml", "ba7", "Wp2", "Zc2", "xmb", 
      "pa6", "xts", "ne8", "dr8", "xuc", "xpl", "xlt", "Ca5", "ne6", "Ab5", "dra", "Bp5", "Ab2", "xar", "xit", "xsh", "xhn", 
      "Gg2", "dr6", "ne9", "xld", "xtb", "ba8", "pa7", "pa9", "pa8", "xap", "xrn", "xrs", "xhm", "Zc5", "xmg", "Vg2", "Pc2", 
      "nea", "baa", "xlb", "xrg", "xea", "ne7", "xth", "xtu", "xcl", "xpk", "ci2", "xng", "Oa2", "xtp", "zlb", "zhb", "Bb5"},
      quality = "6",
      rarity = "1",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide all Rare, Elite Armors
      codes = {"nef", "utc", "paf", "pab", "uul", "l09", "l04", "l01", "Bp6", "pae", "l03", "utp", "utg", "baf", "ulc", 
      "ci3", "l08", "ned", "uh9", "uhm", "Pc3", "Na3", "Ca3", "Zc6", "Sa3", "upk", "uhl", "pad", "usk", "utu", "ula", "Vg6", 
      "pac", "ukp", "upl", "Gg3", "drc", "neb", "uvb", "l12", "uvc", "uap", "uts", "Ab3", "utb", "drd", "Ca6", "l06", "l02", 
      "Ag6", "l07", "Sa6", "bab", "urg", "ult", "l11", "urn", "uld", "ung", "Na6", "drb", "uhb", "uui", "ucl", "Vg3", "uow", 
      "uhn", "uar", "umg", "neg", "uhg", "Ag3", "umb", "bac", "drf", "uvg", "ulm", "bae", "ush", "uit", "nee", "uea", "uhc", 
      "umc", "dre", "Ab6", "Zc3", "ulb", "l10", "uml", "Bb6", "Bb3", "ulg", "uth", "l05", "Bp3", "bad", "urs", "Wp3", "uuc", 
      "Oa3"},
      quality = "6",
      rarity = "2",
      runeword = false,
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },

  --Rule 40-41 Hide Arrows that are Inferior, Normal, Superior, Magic and Rare.

    {--Arrows who?
      codes = {"aqv", "cqv"},
      quality = "4-",
      rarity = "2-",
      location = {"onground", "dropping"},
      runeword = false,
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Rare Arrows who?
      codes = {"aqv", "cqv"},
      quality = "6",
      rarity = "2-",
      location = {"onground", "dropping"},
      runeword = false,
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2"
    },

  --Rule 42-43 Hide all Gems.

    {--Hide all low Gems.
      codes = {"gcr", "gcy", "gcb", "gsy", "gfv", "gfw", "gfy", "gfb", "skf", "gfg", "gsg", "sku", "gsr", "gsv", "gsw", 
      "gfr", "gsb", "glb", "glw", "gzv", "glg", "skl", "glr", "skc", "gly", "gcv", "gcg", "gcw"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2"
    },
    {--Hide all high Gems. DISABLE THIS IF YOU NEED GEMS.
      codes = {"gpv", "skz", "gpr", "gpg", "gpb", "gpy", "gpw"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1"
    },

  --Rule 49-53 Shows all SUPERIOR ITEMS with max suffix stat and border + notify

    {--MAX ATTR!
      codes = "allitems",
      quality = "3",
      runeword = false,
      location = "onground",
      stat = {
      {index = 0, op = "==", value = 15 }, --MAX STR = MAX ATTR!
      },
      border = {204, 204, 204, 204},
      --notify = "Maxed Superior!",
      --name_style = "Rainbow",
      suffix = "\n {red} Attribute!",
      filter_levels = "1,2,3"
    },
    {--MAX ALL RES!
      codes = "allitems",
      quality = "3",
      runeword = false,
      location = "onground",
      stat = {
      {index = 39, op = "==", value = 10 }, --MAX FIRE RESS = MAX ALL RES!
      },
      border = {204, 204, 204, 204},
      --notify = "Maxed Superior!",
      --name_style = "Rainbow",
      suffix = "\n {red} All Res!",
      filter_levels = "1,2,3"
    },
    {--MAX ALL RES!
      codes = {"Bp4", "Bp5"},
      quality = "3",
      runeword = false,
      location = "onground",
      stat = {
      {index = 39, op = "==", value = 25 }, --MAX FIRE RESS = MAX ALL RES!
      },
      border = {204, 204, 204, 204},
      --notify = "Maxed Superior!",
      --name_style = "Rainbow",
      suffix = "\n {red} All Res!",
      filter_levels = "1,2,3"
    },
    {--MAX RES!
      codes = "allitems",
      quality = "3",
      runeword = false,
      location = "onground",
      stat = {
      {index = 40, op = "==", value = 5 }, --MAX MAXFIRERESS = MAX RES!
      },
      border = {204, 204, 204, 204},
      --notify = "Maxed Superior!",
      --name_style = "Rainbow",
      suffix = "\n {red} Max res!",
      filter_levels = "1,2,3"
    },
    {--MAX CRUSHING BLOW!
      codes = "allitems",
      quality = "3",
      runeword = false,
      location = "onground",
      stat = {
      {index = 136, op = "==", value = 10 }, -- +10% Chance of Crushing Blow 
      },
      border = {204, 204, 204, 204},
      --notify = "Maxed Superior!",
      --name_style = "Rainbow",
      suffix = "\n {red} CB/AR!",
      filter_levels = "1,2,3"
    },
    --[[{--MAX CRUSHING BLOW!
      code = {"Bm7", "Bm9"},
      quality = "3",
      runeword = false,
      location = "onground",
      stat = {
      {index = 136, op = "==", value = 30 }, -- +30% Chance of Crushing Blow
      },
      border = {204, 204, 204, 204},
      --notify = "Maxed Superior!",
      --name_style = "Rainbow",
      suffix = "\n {red} CB/AR!",
      filter_levels = "1,2,3"
    },]]--
    {--MAX RUN SPEED!
      codes = "allitems",
      quality = "3",
      runeword = false,
      location = "onground",
      stat = {
      {index = 96, op = "==", value = 15 }, --MAX RUN SPEED!
      },
      border = {204, 204, 204, 204},
      --notify = "Maxed Superior!",
      --name_style = "Rainbow",
      suffix = "\n {red} Run Speed!",
      filter_levels = "1,2,3"
    },
    {--MAX -ENEMY RES/IMMUNITY!
      codes = "allitems",
      quality = "3",
      runeword = false,
      location = "onground",
      stat = {
      {index = 333, op = "==", value = 10 }, --MAX -ENEMY RES!
      {index = 187, op = "==", value = 10 }, --MAX -IMMUNITY!
      },
      border = {204, 204, 204, 204},
      --notify = "Maxed Superior!",
      --name_style = "Rainbow",
      suffix = "\n {red} -Res/Immune!",
      filter_levels = "1,2,3"
    },
    {--MAX ATTACKSPEED/CASTSPEED!
      codes = "allitems",
      quality = "3",
      runeword = false,
      location = "onground",
      stat = {
      {index = 93, op = "==", value = 15 }, --MAX ATTACKSPEED!
      {index = 105, op = "==", value = 15 }, --MAX CASTSPEED!
      },
      border = {204, 204, 204, 204},
      --notify = "Maxed Superior!",
      --name_style = "Rainbow",
      suffix = "\n {red} Atkspd/FCR!",
      filter_levels = "1,2,3"
    },
    {--MAX EXPERIENCE GAINED!
      codes = "allitems",
      quality = "3",
      runeword = false,
      location = "onground",
      stat = {
      {index = 85, op = "==", value = 10 }, --MAX EXPERIENCE GAINED!
      {index = 60, op = "==", value = 5 }, --MAX LIFE STOLEN PER HIT!
      {index = 62, op = "==", value = 5 }, --MAX MANA STOLEN PER HIT!
      },
      border = {204, 204, 204, 204},
      --notify = "Maxed Superior!",
      --name_style = "Rainbow",
      suffix = "\n {red} Exp/Life/Mana!",
      filter_levels = "1,2,3"
    },
    {--MAX COOLDOWN/BUFF DURATION!
      codes = "allitems",
      quality = "3",
      runeword = false,
      location = "onground",
      stat = {
      {index = 286, op = "==", value = 15 }, --Reduce Cooldowns by 15%
      {index = 427, op = "==", value = 20 }, --Increase Buff Durations by 20%
      },
      border = {204, 204, 204, 204},
      --notify = "Maxed Superior!",
      --name_style = "Rainbow",
      suffix = "\n {red} CD/Buff!",
      filter_levels = "1,2,3"
    },
    {--Hides Supperior items by checking between the stats.
      codes = "allitems",
      quality = "3",
      runeword = false,
      location = {"onground", "dropping"},
      stat = OR {
      {index = 0, op = "between", value = {1,14 }, }, --MAX STR = MAX ATTR!
      {index = 39, op = "between", value = {1,9 }, }, --MAX FIRE RESS = MAX ALL RES!
      {index = 40, op = "between", value = {1,4, }, }, --MAX MAXFIRERESS = MAX RES!
      {index = 136, op = "between", value = {1,9, }, }, -- +1-9% Chance of Crushing Blow
      {index = 96, op = "between", value = {1,14, }, }, --MAX RUN SPEED!
      {index = 333, op = "between", value = {1,9, }, }, --MAX -ENEMY RES! / IMMUNITY!
      {index = 187, op = "between", value = {1,9, }, }, --MAX -ENEMY RES! / IMMUNITY!
      {index = 93, op = "between", value = {1,14}, }, --MAX ATTACKSPEED! / CASTSPEED
      {index = 105, op = "between", value = {1,14}, }, --MAX ATTACKSPEED! / CASTSPEED
      {index = 85, op = "between", value = {1,9, }, }, --MAX EXPERIENCE GAINED!
      {index = 60, op = "between", value = {1,4, }, }, --MAX LIFE STOLEN PER HIT!
      {index = 62, op = "between", value = {1,4, }, }, --MAX MANA STOLEN PER HIT!
      {index = 286, op = "between", value = {1,14, }, }, --Reduce Cooldowns by 1-14%
      {index = 427, op = "between", value = {1,19, }, }, --Increase Buff Durations by 1-19%
      },
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2"
    },
    {--Shows Indestructible Superior items.
      codes = "allitems",
      quality = "3",
      runeword = false,
      location = "onground",
      stat = {index = 152, op = "==", value = 1 },
      suffix = "{grey}\n Indestructible",
      filter_levels = "1,2,3"
    },

  --Rule 54-   MISC OR THINGS I FORGOT.

    {--Treasures Notify
      codes = {"Rgx", "Ev0", "y09", "y10", "y11", "y12", "y13", "y14", "y15", "y16", "y17", "y18", "y19", "y20", "y21", 
      "y22", "y23", "y24", "y25", "y26", "y27", "y28", "y29", "y30", "y31", "y32", "y33","S01"},
      notify = "ÿc;Treasure Nearby",
      border = {139, 99, 197},
      filter_levels = "1,2,3"
    },
    {--Hide Magic Rings/Amulet, if you want to get Magic rings/Amulet, change: hide = true, to: false, .
      codes = {"rin", "amu"},
      quality = "4",
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2"
    },
    {--Display Scrolls of Torment and notify.
      codes = {"K01", "K02", "K03", "K04", "K05", "K06", "K07", "K08", "K09", "K10", "K11", "K12", "K13", "K14", "K15", 
      "K16", "K17", "K18", "K19", "K20", "K21", "K22", "K23", "K24", "K25", "K26", "K27", "K28", "K29", "K30", "K31", "K32", 
      "K33", "K34", "K35", "K36", "K37", "K38", "K39", "K40", "K41", "K42", "K43", "K44", "K45", "K46", "K47", "K48", "K49", 
      "K50", "K51", "K52", "K53", "K54", "K55", "K56", "K57", "K58", "K59", "K60", "K61", "K62", "K63", "K64", "K65", "K66", 
      "K67", "K68", "K69", "K70", "K71", "K72", "K73", "K74", "K75", "K76", "K77", "K78", "K79", "K80"},
      name_style = "Frost Wave",
      suffix = "\n Trial Portal",
      notify = "{pink} Trial Portal!",
      filter_levels = "1,2,3"
    },
    {--Hide Magic Jewels, if you want to get Magic Jewels, change: hide = true, to: false, .
      code = "jew",
      quality = "4",
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2"
    },
    {--Hide Charms, to hide Magic charms, change: hide = false, to: true, .
      codes = {"cm1", "cm2", "cm3"},
      quality = "4",
      hide = false,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Weird items to hide.
      codes = {"Ag2", "Ag5", "Na5", "Na2", "Sa2", "Sa5"},
      quality = {"1", "2", "4", "6"},
      rarity = "2-",
      location = {"onground", "dropping"},
      hide = true,
      area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
      filter_levels = "1,2,3"
    },
    {--Hide pots, Minor/major HP / MP, small Rejuvs.
      codes = {"hp1", "hp2", "hp3", "hp4", "hp5", "mp1", "mp2", "mp3", "mp4", "mp5", "rvs"},
      location = {"onground", "dropping"},
      hide = true,
      filter_levels = "1,2"
    },
    {--Display RMD "Elite Bases"with a special EB icon in RMD Red, to the right of item name
      codes = NOT {"l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18"},
      rarity = 2,
      location = {"onground", "onplayer", "equipped", "atvendor"},
      itype = {45, 50 },
      suffix = "{tan}ⅲ",
      filter_levels = "1,2,3"
    },
    {--Display RMD "Limit Broken Bases"with a special LB icon in RMD Red, to the right of item name
      codes = {"l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18"},
      location = {"onground", "onplayer", "equipped", "atvendor"},
      itype = {45, 50 },
      ilvl = "103+",
      suffix = "{tan}ⅳ",
      filter_levels = "1,2,3"
    },
    --[[{--Uniques that can be Demon-Tempered
      codes = "allitems",
      quality = "7",
      stat = {index = 402, op = "==", value = 0 },
      index = {6, 45, 55, 71, 143, 189, 211, 213, 217, 225, 226, 231, 246, 247, 249, 254, 262, 281, 286, 292, 295, 299, 330, 335, 347, 366, 369, 379, 386, 412, 413, 418, 423, 428, 433, 438, 445, 447, 453, 483, 525, 527, 529, 532, 543, 556},
      location = {"onplayer", "atvendor"},
      prefix_desc = "{dark green}Can be Demon-Tempered\n",
      filter_levels = "1,2,3",
    },--]]
  --ALL UNIQUES MAX STATS Index 1-20
    {
      codes = "allitems",
      quality = "7",
      index = 6, --The Gnasher
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 34, op = "==", value = 5 }, -- Damage Reduced by 2-5
      {index = 35, op = "==", value = 5 }, -- Magic Damage Reduced by 2-5
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats", 
      filter_levels = "1,2,3",
    },
    {
      codes = "allitems",
      quality = "7",
      index = 7, --Deathspade
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 35, op = "==", value = 5 }, -- Magic Damage Reduced by 2-5
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 8, --Bladebone
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 34, op = "==", value = 8 }, -- Damage Reduced by 4-8
      {index = 35, op = "==", value = 8 }, -- Magic Damage Reduced by 4-8
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 9, --Skull Splitter
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 51, op = "==", value = 15 }, -- Adds 1-12/15 Lighting Damage
      {index = 19, op = "==", value = 100 }, -- +50-100 to Attack Rating
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 35, op = "==", value = 7 }, -- Magic Damage Reduced by 3-7
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 10, --Rakescar
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 34, op = "==", value = 8 }, -- Damage Reduced by 4-8
      {index = 35, op = "==", value = 8 }, -- Magic Damage Reduced by 4-8
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 11, --Axe of Fechmar
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 5 }, -- Damage Reduced by 3-5
      {index = 35, op = "==", value = 5 }, -- Magic Damage Reduced by 3-5
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 12, --Goreshovel
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 6 }, -- Damage Reduced by 2-6
      {index = 35, op = "==", value = 6 }, -- Magic Damage Reduced by 2-6
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 13, --The Cheiftain
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 39, op = "==", value = 20 }, -- All Resistances +10-20%
      {index = 34, op = "==", value = 7 }, -- Damage Reduced by 3-7
      {index = 35, op = "==", value = 7 }, -- Magic Damage Reduced by 3-7
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 14, --Brainhew
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 62, op = "==", value = 13 }, -- +10-13% Mana stolen per hit
      {index = 34, op = "==", value = 9 }, -- Damage Reduced by 6-9
      {index = 35, op = "==", value = 9 }, -- Magic Damage Reduced by 6-9
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 15, --Humongous
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 0, op = "==", value = 30 }, -- +20-30 Strength
      {index = 34, op = "==", value = 10 }, -- Damage Reduced by 8-10
      {index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 8-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 16, --Torch of Iro
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 39, op = "==", value = 10 }, -- Fire Resist +5-10%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 17, --Maelstrom
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 357, op = "==", value = 10 }, -- +5-10% to Magic Skill Damage
      {index = 97, op = "==", param = 77, value = 3}, -- +1-3 to Terror
      {index = 97, op = "==", param = 71, value = 3}, -- +1-3 to Dim Vision
      {index = 97, op = "==", param = 74, value = 3}, -- +1-3 to Corpse Explosion
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 18, --Gravenspine
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 284, op = "==", value = 20 }, -- Summon Max HP: +10-20%
      {index = 9, op = "==", value = 256*50 }, -- +25-50 to Mana (value*256)
      {index = 97, op = "==", param = 87, value = 2}, -- +1-2 to Decrepify
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 19, --Ume's Lament
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 97, op = "==", param = 87, value = 2}, -- +1-2 to Decrepify
      {index = 85, op = "==", value = 5 } -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 20, --Felloak
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 1-20
    {
      codes = "allitems",
      quality = "7",
      index = 6, --The Gnasher, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 34, op = "<=", value = (2 + (5-2)*0.7)}, -- Damage Reduced by 2-5
      {index = 35, op = "<=", value = (2 + (5-2)*0.7)}, -- Magic Damage Reduced by 2-5
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 7, --Deathspade, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 35, op = "<=", value = (2 + (5-2)*0.7)}, -- Magic Damage Reduced by 2-5
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 8, --Bladebone, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 34, op = "<=", value = (4 + (8-4)*0.7)}, -- Damage Reduced by 4-8
      {index = 35, op = "<=", value = (4 + (8-4)*0.7)}, -- Magic Damage Reduced by 4-8
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 9, --Skull Splitter, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 51, op = "<=", value = (1 + (15-1)*0.7)}, -- Adds 1-12/15 Lightning Damage
      {index = 19, op = "<=", value = (50 + (100-50)*0.7)}, -- +50-100 to Attack Rating
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 35, op = "<=", value = (3 + (7-3)*0.7)}, -- Magic Damage Reduced by 3-7
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 10, --Rakescar, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 34, op = "<=", value = (4 + (8-4)*0.7)}, -- Damage Reduced by 4-8
      {index = 35, op = "<=", value = (4 + (8-4)*0.7)}, -- Magic Damage Reduced by 4-8
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 11, --Axe of Fechmar, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (3 + (5-3)*0.7)}, -- Damage Reduced by 3-5
      {index = 35, op = "<=", value = (3 + (5-3)*0.7)}, -- Magic Damage Reduced by 3-5
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 12, --Goreshovel, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (2 + (6-2)*0.7)}, -- Damage Reduced by 2-6
      {index = 35, op = "<=", value = (2 + (6-2)*0.7)}, -- Magic Damage Reduced by 2-6
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 13, --The Cheiftain, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 39, op = "<=", value = (10 + (20-10)*0.7)}, -- All Resistances +10-20%
      {index = 34, op = "<=", value = (3 + (7-3)*0.7)}, -- Damage Reduced by 3-7
      {index = 35, op = "<=", value = (3 + (7-3)*0.7)}, -- Magic Damage Reduced by 3-7
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 14, --Brainhew, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 62, op = "<=", value = (10 + (13-10)*0.7)}, -- +10-13% Mana stolen per hit
      {index = 34, op = "<=", value = (6 + (9-6)*0.7)}, -- Damage Reduced by 6-9
      {index = 35, op = "<=", value = (6 + (9-6)*0.7)}, -- Magic Damage Reduced by 6-9
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 15, --Humongous, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 0, op = "<=", value = (20 + (30-20)*0.7)}, -- +20-30 Strength
      {index = 34, op = "<=", value = (8 + (10-8)*0.7)}, -- Damage Reduced by 8-10
      {index = 35, op = "<=", value = (8 + (10-8)*0.7)}, -- Magic Damage Reduced by 8-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 16, --Torch of Iro, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 39, op = "<=", value = (5 + (10-5)*0.7)}, -- Fire Resist +5-10%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 17, --Maelstrom, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 357, op = "<=", value = (5 + (10-5)*0.7)}, -- +5-10% to Magic Skill Damage
      {index = 97, op = "<=", param = 77, value = (1 + (3-1)*0.7)}, -- +1-3 to Terror
      {index = 97, op = "<=", param = 71, value = (1 + (3-1)*0.7)}, -- +1-3 to Dim Vision
      {index = 97, op = "<=", param = 74, value = (1 + (3-1)*0.7)}, -- +1-3 to Corpse Explosion
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 18, --Gravenspine, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 284, op = "<=", value = (10 + (20-10)*0.7)}, -- Summon Max HP: +10-20%
      {index = 9, op = "<=", value = (25 + (50-25)*0.7)*256}, -- +25-50 to Mana (value*256)
      {index = 97, op = "<=", param = 87, value = (1 + (2-1)*0.7)}, -- +1-2 to Decrepify
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 19, --Ume's Lament, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 97, op = "<=", param = 87, value = (1 + (2-1)*0.7)}, -- +1-2 to Decrepify
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 20, --Felloak, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 21-40
    {
      codes = "allitems",
      quality = "7",
      index = 21, --Knell Striker
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 22, --Rusthandle
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 122, op = "==", value = 60 }, -- +50-60% Damage to Undead
      {index = 107, op = "==", param = 111, value = 3}, -- +1-3 to Vengeance (Paladin only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 23, --Stormeye
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 107, op = "==", param = 112, value = 5}, -- +3-5 to Blessed Hammer (Paladin only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 24, --Stoutnail
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 78, op = "==", value = 10 }, -- Attacker Takes Damage of 3-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 25, --Crushflange
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 4 }, -- Damage Reduced by 2-4
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 26, --Bloodrise
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 34, op = "==", value = 6 }, -- Damage Reduced by 4-6
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 27, --The General's Tan Do Li Ga
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 6 }, -- Damage Reduced by 4-6
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 28, --Ironstone
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 19, op = "==", value = 150 }, -- +100-150 to Attack Rating
      {index = 34, op = "==", value = 10 }, -- Damage Reduced by 7-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 29, --Bonesnap
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 34, op = "==", value = 6 }, -- Damage Reduced by 4-6
      {index = 35, op = "==", value = 6 } -- Magic Damage Reduced by 4-6
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 30, --Steeldriver
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 9 }, -- Damage Reduced by 7-9
      {index = 35, op = "==", value = 9 }, -- Magic Damage Reduced by 7-9
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 31, --Rixot's Keen
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 3 } -- Damage Reduced by 1-3
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 32, --Blood Crescent
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 34, op = "==", value = 4 } -- Damage Reduced by 2-4
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 33, --Krintiz's Skewer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 34, op = "==", value = 6 } -- Damage Reduced by 2-6
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 34, --Gleamscythe
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 6 } -- Damage Reduced by 3-6
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 35, --Light's Beacon
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 329, op = "==", value = 10 }, -- +5-10% to Fire Skill Damage
      {index = 331, op = "==", value = 10 }, -- +5-10% to Cold Skill Damage
      {index = 330, op = "==", value = 10 }, -- +5-10% to Lightning Skill Damage
      {index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 7-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 36, --Griswold's Edge
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 48, op = "==", value = 12 }, -- +10-12 to Minimum Fire Damage
      {index = 49, op = "==", value = 25 }, -- +15-25 to Maximum Fire Damage
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 37, --Hellplague
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 35, op = "==", value = 6 } -- Magic Damage Reduced by 4-6
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 38, --Culwen's Point
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 7 } -- Damage Reduced by 4-7
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 39, --Shadowfang
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 35, op = "==", value = 5 }, -- Magic Damage Reduced by 3-5
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 40, --Soulflay
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 62, op = "==", value = 10 }, -- 4-10% Mana stolen per hit
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 34, op = "==", value = 5 } -- Damage Reduced by 2-5
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 21-40
    {
      codes = "allitems",
      quality = "7",
      index = 21, --Knell Striker, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 22, --Rusthandle, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 122, op = "<=", value = (50 + (60-50)*0.7)}, -- +50-60% Damage to Undead
      {index = 107, op = "<=", param = 111, value = (1 + (3-1)*0.7)}, -- +1-3 to Vengeance (Paladin only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 23, --Stormeye, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 107, op = "<=", param = 112, value = (3 + (5-3)*0.7)}, -- +3-5 to Blessed Hammer (Paladin only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 24, --Stoutnail, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 78, op = "<=", value = (3 + (10-3)*0.7)}, -- Attacker Takes Damage of 3-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 25, --Crushflange, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (2 + (4-2)*0.7)}, -- Damage Reduced by 2-4
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 26, --Bloodrise, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 34, op = "<=", value = (4 + (6-4)*0.7)}, -- Damage Reduced by 4-6
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 27, --The General's Tan Do Li Ga, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (4 + (6-4)*0.7)}, -- Damage Reduced by 4-6
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 28, --Ironstone, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 19, op = "<=", value = (100 + (150-100)*0.7)}, -- +100-150 to Attack Rating
      {index = 34, op = "<=", value = (7 + (10-7)*0.7)}, -- Damage Reduced by 7-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 29, --Bonesnap, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 34, op = "<=", value = (4 + (6-4)*0.7)}, -- Damage Reduced by 4-6
      {index = 35, op = "<=", value = (4 + (6-4)*0.7)}, -- Magic Damage Reduced by 4-6
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 30, --Steeldriver, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (7 + (9-7)*0.7)}, -- Damage Reduced by 7-9
      {index = 35, op = "<=", value = (7 + (9-7)*0.7)}, -- Magic Damage Reduced by 7-9
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 31, --Rixot's Keen, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (1 + (3-1)*0.7)}, -- Damage Reduced by 1-3
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 32, --Blood Crescent, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 34, op = "<=", value = (2 + (4-2)*0.7)}, -- Damage Reduced by 2-4
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 33, --Krintiz's Skewer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 34, op = "<=", value = (2 + (6-2)*0.7)}, -- Damage Reduced by 2-6
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 34, --Gleamscythe, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (3 + (6-3)*0.7)}, -- Damage Reduced by 3-6
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 35, --Light's Beacon, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 329, op = "<=", value = (5 + (10-5)*0.7)}, -- +5-10% to Fire Skill Damage
      {index = 331, op = "<=", value = (5 + (10-5)*0.7)}, -- +5-10% to Cold Skill Damage
      {index = 330, op = "<=", value = (5 + (10-5)*0.7)}, -- +5-10% to Lightning Skill Damage
      {index = 35, op = "<=", value = (7 + (12-7)*0.7)}, -- Magic Damage Reduced by 7-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 36, --Griswold's Edge, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 48, op = "<=", value = (10 + (12-10)*0.7)}, -- +10-12 to Minimum Fire Damage
      {index = 49, op = "<=", value = (15 + (25-15)*0.7)}, -- +15-25 to Maximum Fire Damage
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 37, --Hellplague, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 35, op = "<=", value = (4 + (6-4)*0.7)}, -- Magic Damage Reduced by 4-6
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 38, --Culwen's Point, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (4 + (7-4)*0.7)}, -- Damage Reduced by 4-7
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 39, --Shadowfang, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 35, op = "<=", value = (3 + (5-3)*0.7)}, -- Magic Damage Reduced by 3-5
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 40, --Soulflay, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 62, op = "<=", value = (4 + (10-4)*0.7)}, -- 4-10% Mana stolen per hit
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 34, op = "<=", value = (2 + (5-2)*0.7)}, -- Damage Reduced by 2-5
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 41-60
    {
      codes = "allitems",
      quality = "7",
      index = 41, --Kinemil's Awl
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 19, op = "==", value = 150 }, -- +100-150 to Attack Rating
      {index = 49, op = "==", value = 40 }, -- +20-40 to Maximum Fire Damage
      {index = 34, op = "==", value = 8 } -- Damage Reduced by 6-8
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 42, --Blacktongue
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 35, op = "==", value = 8 }, -- Magic Damage Reduced by 6-8
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 43, --Ripsaw
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 135, op = "==", value = 35 }, -- +15-35% Chance of Open Wounds
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 35, op = "==", value = 8 } -- Magic Damage Reduced by 6-8
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 44, --The Patriarch
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 } -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 45, --Gull
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 80, op = "==", value = 100 }, -- +50-100% Chance of Higher Quality Items
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 46, --The Diggler
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 } -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 47, --The Jade Tan Do
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 19, op = "==", value = 150 }, -- +100-150 to Attack Rating
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 400, op = "==", value = 3 }, -- Increase Curse Duration by 1-3 seconds
      {index = 401, op = "==", value = 3 }, -- Increase Curse Radius by 1-3 units
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 48, --Spectral Shard
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 400, op = "==", value = 3 }, -- Increase Curse Duration by 1-3 seconds
      {index = 401, op = "==", value = 3 }, -- Increase Curse Radius by 1-3 units
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 49, --Shadow Strike
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 150, op = "==", value = 15 }, -- Slows Target by 5-15%
      {index = 19, op = "==", value = 30 }, -- +15-30 to Attack Rating
      {index = 119, op = "==", value = 15 }, -- 10-15% Bonus to Attack Rating
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 50, --Madawc's First
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 93, op = "==", value = 15 }, -- +10-15% Increased Attack Speed
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },


    
    {
      codes = "allitems",
      quality = "7",
      index = 51, --Carefully
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 116, op = "==", value = 20 }, -- -15-20% Target Defense
      {index = 136, op = "==", value = 15 }, -- 5-15% Chance of Crushing Blow
      {index = 141, op = "==", value = 20 }, -- 15-20% Deadly Strike
      {index = 119, op = "==", value = 25 }, -- 15-25% Bonus to Attack Rating
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 52, --Ancient's Assault
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 19, op = "==", value = 45 }, -- +35-45 to Attack Rating
      {index = 7, op = "==", value = 256*20 }, -- +15-20 to Life
      {index = 39, op = "==", value = 10 }, -- All Resistances +5-10%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 53, --Harpoonist's Training
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 10, value = 3 }, -- +2-3 to Jab (Amazon only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 54, --Glorious Point
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 25, value = 2 }, -- +1-2 to Plague Javelin (Amazon only)
      {index = 119, op = "==", value = 15 }, -- 10-15% Bonus to Attack Rating
      {index = 60, op = "==", value = 6 }, -- 4-6% Life stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 55, --Not So
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 14, value = 3 }, -- +1-3 to Recharge (Amazon only)
      {index = 107, op = "==", param = 24, value = 3 }, -- +1-3 to Charged Strike (Amazon only)
      {index = 41, op = "==", value = 15 }, -- Lightning Resist +10-15%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 56, --Double Trouble
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 135, value = 2 }, -- +1-2 to Throwing Mastery (Barbarian only)
      {index = 136, op = "==", value = 15 }, -- 10-15% Chance of Crushing Blow
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 57, --Straight Shot
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 134, value = 2 }, -- +1-2 to Homing Harpoon (Barbarian only)
      {index = 107, op = "==", param = 137, value = 3 }, -- +1-3 to Icy Trail (Barbarian only)
      {index = 107, op = "==", param = 138, value = 3 }, -- +1-3 to Shout (Barbarian only)
      {index = 9, op = "==", value = 25 * 256 }, -- +20-25 to Mana
      {index = 119, op = "==", value = 15 }, -- 10-15% Bonus to Attack Rating
      {index = 62, op = "==", value = 5 }, -- 1-5% Mana stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 58, --The Dragon Chang
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 } -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 59, --Razortine
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 60, --Bloodthief
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 135, op = "==", value = 30 }, -- 20-30% Chance of Open Wounds
      {index = 60, op = "==", value = 12 }, -- 8-12% Life stolen per hit
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 34, op = "==", value = 4 }, -- Damage Reduced by 2-4
      {index = 35, op = "==", value = 4 } -- Magic Damage Reduced by 2-4
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 41-60
    {
      codes = "allitems",
      quality = "7",
      index = 41, --Kinemil's Awl, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 19, op = "<=", value = (100 + (150-100)*0.7)}, -- +100-150 to Attack Rating
      {index = 49, op = "<=", value = (20 + (40-20)*0.7)}, -- +20-40 to Maximum Fire Damage
      {index = 34, op = "<=", value = (6 + (8-6)*0.7)}, -- Damage Reduced by 6-8
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 42, --Blacktongue, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 35, op = "<=", value = (6 + (8-6)*0.7)}, -- Magic Damage Reduced by 6-8
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 43, --Ripsaw, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 135, op = "<=", value = (15 + (35-15)*0.7)}, -- +15-35% Chance of Open Wounds
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 35, op = "<=", value = (6 + (8-6)*0.7)}, -- Magic Damage Reduced by 6-8
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 44, --The Patriarch, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 45, --Gull, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 80, op = "<=", value = (50 + (100-50)*0.7)}, -- +50-100% Chance of Higher Quality Items
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 46, --The Diggler, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 47, --The Jade Tan Do, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 19, op = "<=", value = (100 + (150-100)*0.7)}, -- +100-150 to Attack Rating
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 400, op = "<=", value = (1 + (3-1)*0.7)}, -- Increase Curse Duration by 1-3 seconds
      {index = 401, op = "<=", value = (1 + (3-1)*0.7)}, -- Increase Curse Radius by 1-3 units
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 48, --Spectral Shard, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 400, op = "<=", value = (1 + (3-1)*0.7)}, -- Increase Curse Duration by 1-3 seconds
      {index = 401, op = "<=", value = (1 + (3-1)*0.7)}, -- Increase Curse Radius by 1-3 units
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 49, --Shadow Strike, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 150, op = "<=", value = (5 + (15-5)*0.7)}, -- Slows Target by 5-15%
      {index = 19, op = "<=", value = (15 + (30-15)*0.7)}, -- +15-30 to Attack Rating
      {index = 119, op = "<=", value = (10 + (15-10)*0.7)}, -- 10-15% Bonus to Attack Rating
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 50, --Madawc's First, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 93, op = "<=", value = (10 + (15-10)*0.7)}, -- +10-15% Increased Attack Speed
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 51, --Carefully, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 116, op = "<=", value = (15 + (20-15)*0.7)}, -- -15-20% Target Defense
      {index = 136, op = "<=", value = (5 + (15-5)*0.7)}, -- 5-15% Chance of Crushing Blow
      {index = 141, op = "<=", value = (15 + (20-15)*0.7)}, -- 15-20% Deadly Strike
      {index = 119, op = "<=", value = (15 + (25-15)*0.7)}, -- 15-25% Bonus to Attack Rating
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 52, --Ancient's Assault, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 19, op = "<=", value = (35 + (45-35)*0.7)}, -- +35-45 to Attack Rating
      {index = 7, op = "<=", value = (15 + (20-15)*0.7)*256}, -- +15-20 to Life
      {index = 39, op = "<=", value = (5 + (10-5)*0.7)}, -- All Resistances +5-10%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 53, --Harpoonist's Training, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 10, value = (2 + (3-2)*0.7)}, -- +2-3 to Jab (Amazon only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 54, --Glorious Point, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 25, value = (1 + (2-1)*0.7)}, -- +1-2 to Plague Javelin (Amazon only)
      {index = 119, op = "<=", value = (10 + (15-10)*0.7)}, -- 10-15% Bonus to Attack Rating
      {index = 60, op = "<=", value = (4 + (6-4)*0.7)}, -- 4-6% Life stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 55, --Not So, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 14, value = (1 + (3-1)*0.7)}, -- +1-3 to Recharge (Amazon only)
      {index = 107, op = "<=", param = 24, value = (1 + (3-1)*0.7)}, -- +1-3 to Charged Strike (Amazon only)
      {index = 41, op = "<=", value = (10 + (15-10)*0.7)}, -- Lightning Resist +10-15%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 56, --Double Trouble, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 135, value = (1 + (2-1)*0.7)}, -- +1-2 to Throwing Mastery (Barbarian only)
      {index = 136, op = "<=", value = (10 + (15-10)*0.7)}, -- 10-15% Chance of Crushing Blow
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 57, --Straight Shot, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 134, value = (1 + (2-1)*0.7)}, -- +1-2 to Homing Harpoon (Barbarian only)
      {index = 107, op = "<=", param = 137, value = (1 + (3-1)*0.7)}, -- +1-3 to Icy Trail (Barbarian only)
      {index = 107, op = "<=", param = 138, value = (1 + (3-1)*0.7)}, -- +1-3 to Shout (Barbarian only)
      {index = 9, op = "<=", value = (20 + (25-20)*0.7)*256}, -- +20-25 to Mana
      {index = 119, op = "<=", value = (10 + (15-10)*0.7)}, -- 10-15% Bonus to Attack Rating
      {index = 62, op = "<=", value = (1 + (5-1)*0.7)}, -- 1-5% Mana stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 58, --The Dragon Chang, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 59, --Razortine, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 60, --Bloodthief, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 135, op = "<=", value = (20 + (30-20)*0.7)}, -- 20-30% Chance of Open Wounds
      {index = 60, op = "<=", value = (8 + (12-8)*0.7)}, -- 8-12% Life stolen per hit
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 34, op = "<=", value = (2 + (4-2)*0.7)}, -- Damage Reduced by 2-4
      {index = 35, op = "<=", value = (2 + (4-2)*0.7)}, -- Magic Damage Reduced by 2-4
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 61-80
    {
      codes = "allitems",
      quality = "7",
      index = 61, --Lance of Yaggai
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 8 }, -- Damage Reduced by 4-8
      {index = 35, op = "==", value = 8 }, -- Magic Damage Reduced by 4-8
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 62, --The Tannr Gorerod
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 8 }, -- Damage Reduced by 4-8
      {index = 35, op = "==", value = 8 }, -- Magic Damage Reduced by 4-8
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 63, --Dimoak's Hew
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 34, op = "==", value = 5 }, -- Damage Reduced by 2-5
      {index = 35, op = "==", value = 5 }, -- Magic Damage Reduced by 2-5
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 64, --Steelgoad
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 5 }, -- Damage Reduced by 3-5
      {index = 35, op = "==", value = 5 }, -- Magic Damage Reduced by 3-5
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 65, --Soul Harvest
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 135, op = "==", value = 30 }, -- 10-30% Chance of Open Wounds
      {index = 107, op = "==", param = 73, value = 4 }, -- +1-4 to Blight Strike (Necromancer only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 66, --The Battlebranch
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 19, op = "==", value = 100 }, -- +50-100 to Attack Rating
      {index = 34, op = "==", value = 7 }, -- Damage Reduced by 5-7
      {index = 35, op = "==", value = 7 }, -- Magic Damage Reduced by 5-7
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 67, --Woestave
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 7 }, -- Damage Reduced by 5-7
      {index = 35, op = "==", value = 7 }, -- Magic Damage Reduced by 5-7
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 68, --The Grim Reaper
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 141, op = "==", value = 50 }, -- 25-50% Deadly Strike
      {index = 107, op = "==", param = 73, value = 5 }, -- +3-5 to Blight Strike (Necromancer only)
      {index = 332, op = "==", value = 15 }, -- +10-15% to Poison Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 69, --Bane Ash
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 70, --Serpent Lord
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 71, --Spire of Lazarus
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 72, --The Salamander
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 73, --The Iron Jang Bong
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 46, value = 4 }, -- +2-4 to Fatal Flare (Sorceress only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 74, --Pluckeye
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 10 }, -- +7-10% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 75, --Witherstring
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 76, --Raven Claw
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 77, --Rogue's Bow
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 78, --Stormstrike
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 79, --Wizendraw
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 19, op = "==", value = 100 }, -- +50-100 to Attack Rating
      {index = 335, op = "==", value = 35 }, -- -20-35% to Enemy Cold Resistance
      {index = 187, op = "==", value = 15 }, -- Enemy cold immunity reduced by 10-15%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 80, --Hellclap
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 49, op = "==", value = 50 }, -- +30-50 to Maximum Fire Damage
      {index = 19, op = "==", value = 75 }, -- +50-75 to Attack Rating
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 61-80
    {
      codes = "allitems",
      quality = "7",
      index = 61, --Lance of Yaggai, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (4 + (8-4)*0.7)}, -- Damage Reduced by 4-8
      {index = 35, op = "<=", value = (4 + (8-4)*0.7)}, -- Magic Damage Reduced by 4-8
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 62, --The Tannr Gorerod, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (4 + (8-4)*0.7)}, -- Damage Reduced by 4-8
      {index = 35, op = "<=", value = (4 + (8-4)*0.7)}, -- Magic Damage Reduced by 4-8
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 63, --Dimoak's Hew, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 34, op = "<=", value = (2 + (5-2)*0.7)}, -- Damage Reduced by 2-5
      {index = 35, op = "<=", value = (2 + (5-2)*0.7)}, -- Magic Damage Reduced by 2-5
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 64, --Steelgoad, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (3 + (5-3)*0.7)}, -- Damage Reduced by 3-5
      {index = 35, op = "<=", value = (3 + (5-3)*0.7)}, -- Magic Damage Reduced by 3-5
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 65, --Soul Harvest, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 135, op = "<=", value = (10 + (30-10)*0.7)}, -- 10-30% Chance of Open Wounds
      {index = 107, op = "<=", param = 73, value = (1 + (4-1)*0.7)}, -- +1-4 to Blight Strike (Necromancer only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 66, --The Battlebranch, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 19, op = "<=", value = (50 + (100-50)*0.7)}, -- +50-100 to Attack Rating
      {index = 34, op = "<=", value = (5 + (7-5)*0.7)}, -- Damage Reduced by 5-7
      {index = 35, op = "<=", value = (5 + (7-5)*0.7)}, -- Magic Damage Reduced by 5-7
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 67, --Woestave, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (5 + (7-5)*0.7)}, -- Damage Reduced by 5-7
      {index = 35, op = "<=", value = (5 + (7-5)*0.7)}, -- Magic Damage Reduced by 5-7
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 68, --The Grim Reaper, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 141, op = "<=", value = (25 + (50-25)*0.7)}, -- 25-50% Deadly Strike
      {index = 107, op = "<=", param = 73, value = (3 + (5-3)*0.7)}, -- +3-5 to Blight Strike (Necromancer only)
      {index = 332, op = "<=", value = (10 + (15-10)*0.7)}, -- +10-15% to Poison Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 69, --Bane Ash, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 70, --Serpent Lord, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 71, --Spire of Lazarus, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 72, --The Salamander, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 73, --The Iron Jang Bong, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 46, value = (2 + (4-2)*0.7)}, -- +2-4 to Fatal Flare (Sorceress only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 74, --Pluckeye, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (7 + (10-7)*0.7)}, -- +7-10% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 75, --Witherstring, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 76, --Raven Claw, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 77, --Rogue's Bow, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 78, --Stormstrike, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 79, --Wizendraw, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 19, op = "<=", value = (50 + (100-50)*0.7)}, -- +50-100 to Attack Rating
      {index = 335, op = "<=", value = (20 + (35-20)*0.7)}, -- -20-35% to Enemy Cold Resistance
      {index = 187, op = "<=", value = (10 + (15-10)*0.7)}, -- Enemy cold immunity reduced by 10-15%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 80, --Hellclap, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 49, op = "<=", value = (30 + (50-30)*0.7)}, -- +30-50 to Maximum Fire Damage
      {index = 19, op = "<=", value = (50 + (75-50)*0.7)}, -- +50-75 to Attack Rating
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 81-100
    {
      codes = "allitems",
      quality = "7",
      index = 81, --Blastbark
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 82, --Leadcrow
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 83, --Ichorsting
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 84, --Hellcast
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 85, --Doomslinger
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 86, --Coldkill
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 10 }, -- Damage Reduced by 5-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 87, --Butcher's Pupil
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 141, op = "==", value = 15 }, -- 5-15% Deadly Strike
      {index = 135, op = "==", value = 20 }, -- 5-20% Chance of Open Wounds
      {index = 34, op = "==", value = 10 }, -- Damage Reduced by 5-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 88, --Islestrike
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 233, value = 3 }, -- +1-3 to Maul (Druid only)
      {index = 107, op = "==", param = 232, value = 3 }, -- +1-3 to Feral Rage (Druid only)
      {index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 5-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 89, --Pompeii's Wrath
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 90, --Guardian Naga
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 7-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 91, --Warlord's Trust
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 34, op = "==", value = 10 }, -- Damage Reduced by 6-10
      {index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 6-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 92, --Spellsteel
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 12-15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 93, --Stormrider
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 9-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 94, --Boneslayer Blade
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 34, op = "==", value = 12 }, -- Damage Reduced by 9-12
      {index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 9-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 95, --The Minotaur
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 0, op = "==", value = 20 }, -- +15-20 to Strength
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 34, op = "==", value = 12 }, -- Damage Reduced by 9-12
      {index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 9-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 96, --Suicide Branch
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +3-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 97, --Carin Shard
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 98, --Arm of King Leoric
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 400, op = "==", value = 5 }, -- Increase Curse Duration by 3-5 
      {index = 97, op = "==", param = 68, value = 3 }, -- +2-3 to Bone Armor
      {index = 284, op = "==", value = 60 }, -- Summon Max HP: +40-60%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 99, --Blackhand Key
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 100, --Dark Clan Crusher
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 119, op = "==", value = 25 }, -- 20-25% Bonus to Attack Rating
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 81-100
    {
      codes = "allitems",
      quality = "7",
      index = 81, --Blastbark, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 82, --Leadcrow, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 83, --Ichorsting, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 84, --Hellcast, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 85, --Doomslinger, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 86, --Coldkill, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (5 + (10-5)*0.7)}, -- Damage Reduced by 5-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 87, --Butcher's Pupil, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 141, op = "<=", value = (5 + (15-5)*0.7)}, -- 5-15% Deadly Strike
      {index = 135, op = "<=", value = (5 + (20-5)*0.7)}, -- 5-20% Chance of Open Wounds
      {index = 34, op = "<=", value = (5 + (10-5)*0.7)}, -- Damage Reduced by 5-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 88, --Islestrike, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 233, value = (1 + (3-1)*0.7)}, -- +1-3 to Maul (Druid only)
      {index = 107, op = "<=", param = 232, value = (1 + (3-1)*0.7)}, -- +1-3 to Feral Rage (Druid only)
      {index = 35, op = "<=", value = (5 + (10-5)*0.7)}, -- Magic Damage Reduced by 5-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 89, --Pompeii's Wrath, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 90, --Guardian Naga, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 35, op = "<=", value = (7 + (12-7)*0.7)}, -- Magic Damage Reduced by 7-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 91, --Warlord's Trust, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 34, op = "<=", value = (6 + (10-6)*0.7)}, -- Damage Reduced by 6-10
      {index = 35, op = "<=", value = (6 + (10-6)*0.7)}, -- Magic Damage Reduced by 6-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 92, --Spellsteel, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 35, op = "<=", value = (12 + (15-12)*0.7)}, -- Magic Damage Reduced by 12-15
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 93, --Stormrider, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 35, op = "<=", value = (9 + (12-9)*0.7)}, -- Magic Damage Reduced by 9-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 94, --Boneslayer Blade, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 34, op = "<=", value = (9 + (12-9)*0.7)}, -- Damage Reduced by 9-12
      {index = 35, op = "<=", value = (9 + (12-9)*0.7)}, -- Magic Damage Reduced by 9-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 95, --The Minotaur, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 0, op = "<=", value = (15 + (20-15)*0.7)}, -- +15-20 Strength
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 34, op = "<=", value = (9 + (12-9)*0.7)}, -- Damage Reduced by 9-12
      {index = 35, op = "<=", value = (9 + (12-9)*0.7)}, -- Magic Damage Reduced by 9-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 96, --Suicide Branch, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (3 + (5-3)*0.7)}, -- +3-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 97, --Carin Shard, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 98, --Arm of King Leoric, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 400, op = "<=", value = (3 + (5-3)*0.7)}, -- Increase Curse Duration by 3-5
      {index = 97, op = "<=", param = 68, value = (2 + (3-2)*0.7)}, -- +2-3 to Bone Armor
      {index = 284, op = "<=", value = (40 + (60-40)*0.7)}, -- Summon Max HP: +40-60%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 99, --Blackhand Key, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 100, --Dark Clan Crusher, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 119, op = "<=", value = (20 + (25-20)*0.7)}, -- 20-25% Bonus to Attack Rating
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 101-120
    {
      codes = "allitems",
      quality = "7",
      index = 101, --Zakarum's Hand
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 27, op = "==", value = 25 }, -- Regenerate Mana 15-25%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 102, --The Fetid Sprinkler
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 19, op = "==", value = 200 }, -- +150-200 to Attack Rating
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 103, --Hand of Blessed Light
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 104, --Fleshrender
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 135, op = "==", value = 15 }, -- 5-15% Chance of Open Wounds
      {index = 141, op = "==", value = 15 }, -- 5-15% Deadly Strike
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 105, --Sureshrill Frost
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 34, op = "==", value = 10 }, -- Damage Reduced by 5-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 106, --Moonfall
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 9-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 107, --Baezil's Vortex
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 10 }, -- Damage Reduced by 7-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 108, --Earthshaker
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      {index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 7-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 109, --Bloodtree Stump
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 10 }, -- Damage Reduced by 5-10
      {index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 5-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 110, --The Gavel of Pain
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 10 }, -- Damage Reduced by 5-10
      {index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 5-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 111, --Bloodletter
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 127, value = 4 }, -- +2-4 to Master At Arms (Barbarian only)
      {index = 107, op = "==", param = 151, value = 3 }, -- +1-3 to Whirlwind (Barbarian only)
      {index = 34, op = "==", value = 8 }, -- Damage Reduced by 5-8
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 112, --Coldsteel Eye
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 150, op = "==", value = 30 }, -- Slows Target by 15-30%
      {index = 34, op = "==", value = 9 }, -- Damage Reduced by 6-9
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 113, --Hexfire
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 7-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 114, --Blade of Ali Baba
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 2, op = "==", value = 15 }, -- +5-15 to Dexterity
      {index = 34, op = "==", value = 12 }, -- Damage Reduced by 7-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 115, --Ginther's Rift
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 7-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 116, --Headstriker
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 9 }, -- Damage Reduced by 6-9
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 117, --Plague Bearer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 9 }, -- Damage Reduced by 6-9
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 118, --The Atlantean
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 9 }, -- Damage Reduced by 6-9
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 119, --Crainte Vomir
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 7-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 120, --Bing Sz Wang
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 7-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 101-120
    {
      codes = "allitems",
      quality = "7",
      index = 101, --Zakarum's Hand, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 27, op = "<=", value = (15 + (25-15)*0.7)}, -- Regenerate Mana 15-25%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 102, --The Fetid Sprinkler, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 19, op = "<=", value = (150 + (200-150)*0.7)}, -- +150-200 to Attack Rating
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 103, --Hand of Blessed Light, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 104, --Fleshrender, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 135, op = "<=", value = (5 + (15-5)*0.7)}, -- 5-15% Chance of Open Wounds
      {index = 141, op = "<=", value = (5 + (15-5)*0.7)}, -- 5-15% Deadly Strike
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 105, --Sureshrill Frost, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 34, op = "<=", value = (5 + (10-5)*0.7)}, -- Damage Reduced by 5-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 106, --Moonfall, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 35, op = "<=", value = (9 + (12-9)*0.7)}, -- Magic Damage Reduced by 9-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 107, --Baezil's Vortex, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (7 + (10-7)*0.7)}, -- Damage Reduced by 7-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 108, --Earthshaker, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      {index = 35, op = "<=", value = (7 + (10-7)*0.7)}, -- Magic Damage Reduced by 7-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 109, --Bloodtree Stump, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (5 + (10-5)*0.7)}, -- Damage Reduced by 5-10
      {index = 35, op = "<=", value = (5 + (10-5)*0.7)}, -- Magic Damage Reduced by 5-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 110, --The Gavel of Pain, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (5 + (10-5)*0.7)}, -- Damage Reduced by 5-10
      {index = 35, op = "<=", value = (5 + (10-5)*0.7)}, -- Magic Damage Reduced by 5-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 111, --Bloodletter, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 127, value = (2 + (4-2)*0.7)}, -- +2-4 to Master At Arms
      {index = 107, op = "<=", param = 151, value = (1 + (3-1)*0.7)}, -- +1-3 to Whirlwind
      {index = 34, op = "<=", value = (5 + (8-5)*0.7)}, -- Damage Reduced by 5-8
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 112, --Coldsteel Eye, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 150, op = "<=", value = (15 + (30-15)*0.7)}, -- Slows Target by 15-30%
      {index = 34, op = "<=", value = (6 + (9-6)*0.7)}, -- Damage Reduced by 6-9
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 113, --Hexfire, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 35, op = "<=", value = (7 + (12-7)*0.7)}, -- Magic Damage Reduced by 7-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 114, --Blade of Ali Baba, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 2, op = "<=", value = (5 + (15-5)*0.7)}, -- +5-15 Dexterity
      {index = 34, op = "<=", value = (7 + (12-7)*0.7)}, -- Damage Reduced by 7-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 115, --Ginther's Rift, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 35, op = "<=", value = (7 + (12-7)*0.7)}, -- Magic Damage Reduced by 7-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 116, --Headstriker, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (6 + (9-6)*0.7)}, -- Damage Reduced by 6-9
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 117, --Plague Bearer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (6 + (9-6)*0.7)}, -- Damage Reduced by 6-9
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 118, --The Atlantean, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (6 + (9-6)*0.7)}, -- Damage Reduced by 6-9
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 119, --Crainte Vomir, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 35, op = "<=", value = (7 + (10-7)*0.7)}, -- Magic Damage Reduced by 7-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 120, --Bing Sz Wang, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 35, op = "<=", value = (7 + (10-7)*0.7)}, -- Magic Damage Reduced by 7-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 121-140
    {
      codes = "allitems",
      quality = "7",
      index = 121, --The Vile Husk
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 10 }, -- Damage Reduced by 7-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 122, --Cloudcrack
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 12 }, -- Damage Reduced by 8-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 123, --Todesfaelle Flamme
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 8-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 124, --Swordguard
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 39, op = "==", value = 20 }, -- All Resistances +10-20%
      {index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 8-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 125, --Spineripper
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 126, --Heart Carver
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 127, --Blackbog's Sharp
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 128, --Stormspike
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 129, --Deathbit
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 19, op = "==", value = 450 }, -- +200-450 to Attack Rating
      {index = 60, op = "==", value = 9 }, -- 7-9% Life stolen per hit
      {index = 62, op = "==", value = 6 }, -- 4-6% Mana stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 130, --The Scalper
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 135, op = "==", value = 25 }, -- 5-25% Chance of Open Wounds
      {index = 60, op = "==", value = 6 }, -- 4-6% Life stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 131, --Constantly Waging
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 266, value = 5 }, -- +2-5 to Blade Fury (Assassin only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 132, --Realm Crusher
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 129, value = 2 }, -- +1-2 to Fan Out (Barbarian only)
      {index = 276, op = "==", value = 2 }, -- +1-2 Spell Power
      {index = 138, op = "==", value = 5 }, -- +1-5 to Mana after each Kill
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 133, --Quickening Strikes
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 93, op = "==", value = 40 }, -- +10-40% Increased Attack Speed
      {index = 335, op = "==", value = 15 }, -- -5-15% to Enemy Cold Resistance
      {index = 331, op = "==", value = 20 }, -- +10-20% to Cold Skill Damage
      {index = 62, op = "==", value = 5 }, -- 3-5% Mana stolen per hit
      {index = 187, op = "==", value = 8 }, -- Enemy cold immunity reduced by 3-8%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 134, --Shrapnel Impact
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 19, op = "==", value = 95 }, -- +80-95 to Attack Rating
      {index = 276, op = "==", value = 2 }, -- +1-2 Spell Power
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 135, --Tempest Flash
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 96, op = "==", value = 25 }, -- +10-25% Faster Run/Walk
      {index = 9, op = "==", value = 35*256 }, -- +25-35 to Mana
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 136, --Untethered
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 188, op = "==", param = 34, value = 4 }, -- +2-4 to Destructive Range (Barbarian Only)
      {index = 19, op = "==", value = 150 }, -- +100-150 to Attack Rating
      {index = 119, op = "==", value = 45 }, -- 35-45% Bonus to Attack Rating
      {index = 331, op = "==", value = 7 }, -- +3-7% to Cold Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 137, --Unrelenting Will
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 116, op = "==", value = 25 }, ---15-25% Target Defense
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 138, --The Impaler
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 135, op = "==", value = 40 }, -- 15-40% Chance of Open Wounds
      {index = 216, op = "==", value = 2048*2 }, --+1.0-2.0 to Life (Based on Character Level)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 139, --Kelpie Snare
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 10 }, -- Damage Reduced by 5-10
      {index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 5-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 140, --Soulfeast Tine
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 76, op = "==", value = 10 }, -- Increase Maximum Life by 6-10%
      {index = 19, op = "==", value = 250 }, -- +150-250 to Attack Rating
      {index = 34, op = "==", value = 9 }, -- Damage Reduced by 3-9
      {index = 35, op = "==", value = 9 }, -- Magic Damage Reduced by 3-9
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 121-140
    {
      codes = "allitems",
      quality = "7",
      index = 121, --The Vile Husk, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (7 + (10-7)*0.7)}, -- Damage Reduced by 7-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 122, --Cloudcrack, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (8 + (12-8)*0.7)}, -- Damage Reduced by 8-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 123, --Todesfaelle Flamme, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 35, op = "<=", value = (8 + (12-8)*0.7)}, -- Magic Damage Reduced by 8-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 124, --Swordguard, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 39, op = "<=", value = (10 + (20-10)*0.7)}, -- All Resistances +10-20%
      {index = 35, op = "<=", value = (8 + (12-8)*0.7)}, -- Magic Damage Reduced by 8-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 125, --Spineripper, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 126, --Heart Carver, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 127, --Blackbog's Sharp, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 128, --Stormspike, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 129, --Deathbit, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 19, op = "<=", value = (200 + (450-200)*0.7)}, -- +200-450 to Attack Rating
      {index = 60, op = "<=", value = (7 + (9-7)*0.7)}, -- 7-9% Life stolen per hit
      {index = 62, op = "<=", value = (4 + (6-4)*0.7)}, -- 4-6% Mana stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 130, --The Scalper, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 135, op = "<=", value = (5 + (25-5)*0.7)}, -- 5-25% Chance of Open Wounds
      {index = 60, op = "<=", value = (4 + (6-4)*0.7)}, -- 4-6% Life stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 131, --Constantly Waging, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 266, value = (2 + (5-2)*0.7)}, -- +2-5 to Blade Fury
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 132, --Realm Crusher, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 129, value = (1 + (2-1)*0.7)}, -- +1-2 to Fan Out
      {index = 276, op = "<=", value = (1 + (2-1)*0.7)}, -- +1-2 Spell Power
      {index = 138, op = "<=", value = (1 + (5-1)*0.7)}, -- +1-5 Mana after each Kill
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 133, --Quickening Strikes, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 93, op = "<=", value = (10 + (40-10)*0.7)}, -- +10-40% IAS
      {index = 335, op = "<=", value = (5 + (15-5)*0.7)}, -- -5-15% Enemy Cold Res
      {index = 331, op = "<=", value = (10 + (20-10)*0.7)}, -- +10-20% Cold Skill Damage
      {index = 62, op = "<=", value = (3 + (5-3)*0.7)}, -- 3-5% Mana leech
      {index = 187, op = "<=", value = (3 + (8-3)*0.7)}, -- 3-8% Cold Immunity Pierce
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 134, --Shrapnel Impact, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 19, op = "<=", value = (80 + (95-80)*0.7)}, -- +80-95 AR
      {index = 276, op = "<=", value = (1 + (2-1)*0.7)}, -- +1-2 Spell Power
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 135, --Tempest Flash, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 96, op = "<=", value = (10 + (25-10)*0.7)}, -- +10-25% FRW
      {index = 9, op = "<=", value = (25 + (35-25)*0.7) * 256}, -- +25-35 Mana
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 136, --Untethered, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 188, op = "<=", param = 34, value = (2 + (4-2)*0.7)}, -- +2-4 Destructive Range
      {index = 19, op = "<=", value = (100 + (150-100)*0.7)}, -- +100-150 AR
      {index = 119, op = "<=", value = (35 + (45-35)*0.7)}, -- 35-45% AR Bonus
      {index = 331, op = "<=", value = (3 + (7-3)*0.7)}, -- +3-7% Cold Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 137, --Unrelenting Will, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 116, op = "<=", value = (15 + (25-15)*0.7)}, -- -15-25% Target Defense
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 138, --The Impaler, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 135, op = "<=", value = (15 + (40-15)*0.7)}, -- 15-40% Open Wounds
      {index = 216, op = "<=", value = (1.0 + (2.0-1.0)*0.7) * 2048}, -- +1.0-2.0 Life/Level
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 139, --Kelpie Snare, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (5 + (10-5)*0.7)}, -- Damage Reduced by 5-10
      {index = 35, op = "<=", value = (5 + (10-5)*0.7)}, -- Magic Damage Reduced by 5-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 140, --Soulfeast Tine, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 76, op = "<=", value = (6 + (10-6)*0.7)}, -- +6-10% Max Life
      {index = 19, op = "<=", value = (150 + (250-150)*0.7)}, -- +150-250 AR
      {index = 34, op = "<=", value = (3 + (9-3)*0.7)}, -- Damage Reduced by 3-9
      {index = 35, op = "<=", value = (3 + (9-3)*0.7)}, -- Magic Damage Reduced by 3-9
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 141-160
    {
      codes = "allitems",
      quality = "7",
      index = 141, --Hone Sundan
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 136, op = "==", value = 15 }, -- 5-15% Chance of Crushing Blow
      {index = 34, op = "==", value = 8 }, -- Damage Reduced by 4-8
      {index = 35, op = "==", value = 8 }, -- Magic Damage Reduced by 4-8
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 142, --Spire of Honor
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 10 }, -- Damage Reduced by 6-10
      {index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 6-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 143, --The Meat Scraper
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 135, op = "==", value = 40 }, -- 15-40% Chance of Open Wounds
      {index = 34, op = "==", value = 10 }, -- Damage Reduced by 5-10
      {index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 5-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 144, --Blackleach Blade
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 7 }, -- Damage Reduced by 3-7
      {index = 35, op = "==", value = 7 }, -- Magic Damage Reduced by 3-7
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 145, --Athena's Wrath
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 83, op = "==", param = 2, value = 3 }, -- +1-3 to Necromancer Skill Levels
      {index = 332, op = "==", value = 15 }, -- +8-15% to Poison Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 146, --Pierre Tombale Couant
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 141, op = "==", value = 40 }, -- 15-40% Deadly Strike
      {index = 34, op = "==", value = 8 }, -- Damage Reduced by 2-8
      {index = 35, op = "==", value = 8 }, -- Magic Damage Reduced by 2-8
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 147, --Husoldal Evo
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 19, op = "==", value = 250 }, -- +200-250 to Attack Rating
      {index = 34, op = "==", value = 8 }, -- Damage Reduced by 5-8
      {index = 35, op = "==", value = 8 }, -- Magic Damage Reduced by 5-8
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 148, --Grim's Burning Dead
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 19, op = "==", value = 250 }, -- +200-250 to Attack Rating
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 149, --Razorswitch
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 127, op = "==", value = 2 }, -- +1-2 to All Skills
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 150, --Ribcracker
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 136, op = "==", value = 30 }, -- 15-30% Chance of Crushing Blow
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },

    {
      codes = "allitems",
      quality = "7",
      index = 151, --Chromatic Ire
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 39, op = "==", value = 40 }, -- All Resistances +20-40%
      {index = 76, op = "==", value = 25 }, -- Increase Maximum Life by 20-25%
      {index = 107, op = "==", param = 61, value = 3 }, -- +1-3 to Fire Mastery (Sorceress only)
      {index = 107, op = "==", param = 63, value = 3 }, -- +1-3 to Lightning Mastery (Sorceress only)
      {index = 107, op = "==", param = 65, value = 3 }, -- +1-3 to Cold Mastery (Sorceress only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 152, --Warpspear
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 93, op = "==", value = 60 }, -- +40-60% Increased Attack Speed
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 153, --Skull Collector
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 154, --Skystrike
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 155, --Riphook
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 135, op = "==", value = 30 }, -- 15-30% Chance of Open Wounds
      {index = 60, op = "==", value = 10 }, -- 7-10% Life stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 156, --Kuko Shakaku
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 157, --Endlesshail
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 21, value = 4 }, -- +1-4 to Hail of Arrows (Amazon only)
      {index = 335, op = "==", value = 20 }, -- -10-20% to Enemy Cold Resistance
      {index = 187, op = "==", value = 10 }, -- Enemy cold immunity reduced by 5-10%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 158, --Witchwild String
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 7, value = 7 }, -- +3-7 to Prismatic Arrow (Amazon only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 159, --Cliffkiller
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 32, op = "==", value = 280 }, -- +180-280 Defense vs. Missile
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 160, --Magewrath
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 35, op = "==", value = 13 }, -- Magic Damage Reduced by 9-13
      {index = 19, op = "==", value = 250 }, -- +200-250 to Attack Rating
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 141-160
    {
      codes = "allitems",
      quality = "7",
      index = 141, --Hone Sundan, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 136, op = "<=", value = (5 + (15-5)*0.7)}, -- Crushing Blow 5-15%
      {index = 34, op = "<=", value = (4 + (8-4)*0.7)}, -- DR 4-8
      {index = 35, op = "<=", value = (4 + (8-4)*0.7)}, -- MDR 4-8
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 142, --Spire of Honor, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (6 + (10-6)*0.7)}, -- DR 6-10
      {index = 35, op = "<=", value = (6 + (10-6)*0.7)}, -- MDR 6-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 143, --The Meat Scraper, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 135, op = "<=", value = (15 + (40-15)*0.7)}, -- Open Wounds 15-40%
      {index = 34, op = "<=", value = (5 + (10-5)*0.7)}, -- DR 5-10
      {index = 35, op = "<=", value = (5 + (10-5)*0.7)}, -- MDR 5-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 144, --Blackleach Blade, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (3 + (7-3)*0.7)}, -- DR 3-7
      {index = 35, op = "<=", value = (3 + (7-3)*0.7)}, -- MDR 3-7
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 145, --Athena's Wrath, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 83, op = "<=", param = 2, value = (1 + (3-1)*0.7)}, -- +1-3 Necro Skills
      {index = 332, op = "<=", value = (8 + (15-8)*0.7)}, -- Poison Skill Damage 8-15%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 146, --Pierre Tombale Couant, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 141, op = "<=", value = (15 + (40-15)*0.7)}, -- Deadly Strike 15-40%
      {index = 34, op = "<=", value = (2 + (8-2)*0.7)}, -- DR 2-8
      {index = 35, op = "<=", value = (2 + (8-2)*0.7)}, -- MDR 2-8
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 147, --Husoldal Evo, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 19, op = "<=", value = (200 + (250-200)*0.7)}, -- AR 200-250
      {index = 34, op = "<=", value = (5 + (8-5)*0.7)}, -- DR 5-8
      {index = 35, op = "<=", value = (5 + (8-5)*0.7)}, -- MDR 5-8
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 148, --Grim's Burning Dead, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 19, op = "<=", value = (200 + (250-200)*0.7)}, -- AR 200-250
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 149, --Razorswitch, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 127, op = "<=", value = (1 + (2-1)*0.7)}, -- +1-2 All Skills
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 150, --Ribcracker, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 136, op = "<=", value = (15 + (30-15)*0.7)}, -- Crushing Blow 15-30%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 151, --Chromatic Ire, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 39, op = "<=", value = (20 + (40-20)*0.7)}, -- All Res 20-40%
      {index = 76, op = "<=", value = (20 + (25-20)*0.7)}, -- Max Life 20-25%
      {index = 107, op = "<=", param = 61, value = (1 + (3-1)*0.7)}, -- Fire Mastery
      {index = 107, op = "<=", param = 63, value = (1 + (3-1)*0.7)}, -- Lightning Mastery
      {index = 107, op = "<=", param = 65, value = (1 + (3-1)*0.7)}, -- Cold Mastery
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 152, --Warpspear, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 93, op = "<=", value = (40 + (60-40)*0.7)}, -- IAS 40-60%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 153, --Skull Collector, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 154, --Skystrike, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 155, --Riphook, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 135, op = "<=", value = (15 + (30-15)*0.7)}, -- Open Wounds 15-30%
      {index = 60, op = "<=", value = (7 + (10-7)*0.7)}, -- Life Leech 7-10%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 156, --Kuko Shakaku, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 157, --Endlesshail, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 21, value = (1 + (4-1)*0.7)}, -- Hail of Arrows
      {index = 335, op = "<=", value = (10 + (20-10)*0.7)}, -- -Enemy Cold Res
      {index = 187, op = "<=", value = (5 + (10-5)*0.7)}, -- Cold Immunity Pierce
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 158, --Witchwild String, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 7, value = (3 + (7-3)*0.7)}, -- Prismatic Arrow
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 159, --Cliffkiller, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 32, op = "<=", value = (180 + (280-180)*0.7)}, -- Defense vs Missile
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 160, --Magewrath, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 35, op = "<=", value = (9 + (13-9)*0.7)}, -- MDR 9-13
      {index = 19, op = "<=", value = (200 + (250-200)*0.7)}, -- AR 200-250
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 161-180
    {
      codes = "allitems",
      quality = "7",
      index = 161, --Goldstrike Arch
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 119, op = "==", value = 150 }, -- 100-150% Bonus to Attack Rating
      {index = 122, op = "==", value = 200 }, -- +100-200% Damage to Undead
      {index = 121, op = "==", value = 200 }, -- +100-200% Damage to Demons
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 162, --Langer Briser
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 80, op = "==", value = 60 }, -- +30-60% Chance of Higher Quality Items
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 163, --Pus Spitter
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 278, value = 4}   -- +2-4 to Venom (Assassin only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 164, --Buriza-Do Kyanon
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 31, op = "==", value = 150 }, -- +75-150 Defense
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 165, --Demon Machine
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 121, op = "==", value = 200 }, -- +100-200% Damage to Demons
      {index = 278, op = "==", value = 2 }, -- +1-2 Combat Power
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 166, --Untrained Eye
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 96, op = "==", value = 20 }, -- +10-20% Faster Run/Walk
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 167, --Redemption
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 62, op = "==", value = 8 }, -- 5-8% Mana stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 168, --Ancient Hand
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 169, --Willbreaker
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 170, --Skyfall Grip
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 171, --Oathbinder
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 172, --Pride's Fan
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 97, op = "==", param = 280, value = 3 }, -- +1-3 to Phoenix Strike
      {index = 139, op = "==", value = 10 }, -- +6-10 Life after each Demon Kill
      {index = 396, op = "==", value = 2 }, -- +1-2 Mana Stolen Per Hit
      {index = 150, op = "==", value = 40 }, -- Slows Target by 20-40%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 173, --Burning Sun
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 97, op = "==", param = 259, value = 3 }, -- +2-3 to Fists of Fire
      {index = 333, op = "==", value = 25 }, -- -10-25% to Enemy Fire Resistance
      {index = 0, op = "==", value = 15 }, -- +6-15 to all Attributes
      {index = 135, op = "==", value = 25 }, -- 10-25% Chance of Open Wounds
      {index = 60, op = "==", value = 5 }, -- 3-5% Life stolen per hit
      {index = 62, op = "==", value = 5 }, -- 3-5% Mana stolen per hit
      {index = 189, op = "==", value = 10 }, -- Enemy fire immunity reduced by 5-10%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 174, --Severance
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 33, op = "==", value = 175 }, -- +100-175 Defense vs. Melee
      {index = 396, op = "==", value = 5 }, -- +3-5 Mana Stolen Per Hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 175, --Hand of Madness
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 93, op = "==", value = 50 }, -- +40-50% Increased Attack Speed
      {index = 107, op = "==", param = 278, value = 6 }, -- +3-6 to Venom (Assassin only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 176, --Vanquisher
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 188, op = "==", param = 48, value = 3 }, -- +1-3 to Traps (Assassin Only)
      {index = 97, op = "==", param = 262, value = 2 }, -- +1-2 to Wake of Fire
      {index = 329, op = "==", value = 20 }, -- +5-20% to Fire Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 177, --Wind-Forged Blade
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 97, op = "==", param = 269, value = 3 }, -- +2-3 to Claws of Thunder
      {index = 97, op = "==", param = 235, value = 4 }, -- +0-4 to Cyclone Armor
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 178, --Bartuc's Cut-Throat
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 60, op = "==", value = 9 }, -- 5-9% Life stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 179, --Void Ripper
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 119, op = "==", value = 40 }, -- 15-40% Bonus to Attack Rating
      {index = 0, op = "==", value = 15 }, -- +5-15 to all Attributes
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 180, --Soul-Forged Grip
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 151, op = "==", param = 381, value = 10 }, -- Level 6-10 Redemption Aura When Equipped
      {index = 19, op = "==", value = 475 }, -- +200-475 to Attack Rating
      {index = 83, op = "==", param = 6, value = 3 }, -- +1-3 to Assassin Skill Levels
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 161-180
    {
      codes = "allitems",
      quality = "7",
      index = 161, --Goldstrike Arch, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 119, op = "<=", value = (100 + (150-100)*0.7)}, -- AR%
      {index = 122, op = "<=", value = (100 + (200-100)*0.7)}, -- vs Undead%
      {index = 121, op = "<=", value = (100 + (200-100)*0.7)}, -- vs Demons%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 162, --Langer Briser, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 80, op = "<=", value = (30 + (60-30)*0.7)}, -- MF%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 163, --Pus Spitter, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 278, value = (2 + (4-2)*0.7)}, -- Venom
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 164, --Buriza-Do Kyanon, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 31, op = "<=", value = (75 + (150-75)*0.7)}, -- Defense
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 165, --Demon Machine, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 121, op = "<=", value = (100 + (200-100)*0.7)}, -- vs Demons%
      {index = 278, op = "<=", value = (1 + (2-1)*0.7)}, -- Combat Power
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 166, --Untrained Eye, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 96, op = "<=", value = (10 + (20-10)*0.7)}, -- FRW%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 167, --Redemption, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 62, op = "<=", value = (5 + (8-5)*0.7)}, -- Mana Leech%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 168, --Ancient Hand, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 169, --Willbreaker, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 170, --Skyfall Grip, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 171, --Oathbinder, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 172, --Pride's Fan, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 97, op = "<=", param = 280, value = (1 + (3-1)*0.7)}, -- Phoenix Strike
      {index = 139, op = "<=", value = (6 + (10-6)*0.7)}, -- Life after Demon Kill
      {index = 396, op = "<=", value = (1 + (2-1)*0.7)}, -- Mana Leech
      {index = 150, op = "<=", value = (20 + (40-20)*0.7)}, -- Slow%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 173, --Burning Sun, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 97, op = "<=", param = 259, value = (2 + (3-2)*0.7)}, -- Fists of Fire
      {index = 333, op = "<=", value = (10 + (25-10)*0.7)}, -- -Enemy Fire Res
      {index = 0, op = "<=", value = (6 + (15-6)*0.7)}, -- Attributes
      {index = 135, op = "<=", value = (10 + (25-10)*0.7)}, -- Open Wounds
      {index = 60, op = "<=", value = (3 + (5-3)*0.7)}, -- Life Leech
      {index = 62, op = "<=", value = (3 + (5-3)*0.7)}, -- Mana Leech
      {index = 189, op = "<=", value = (5 + (10-5)*0.7)}, -- Fire Immunity Pierce
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 174, --Severance, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 33, op = "<=", value = (100 + (175-100)*0.7)}, -- Def vs Melee
      {index = 396, op = "<=", value = (3 + (5-3)*0.7)}, -- Mana Leech
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 175, --Hand of Madness, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 93, op = "<=", value = (40 + (50-40)*0.7)}, -- IAS
      {index = 107, op = "<=", param = 278, value = (3 + (6-3)*0.7)}, -- Venom
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 176, --Vanquisher, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 188, op = "<=", param = 48, value = (1 + (3-1)*0.7)}, -- Traps
      {index = 97, op = "<=", param = 262, value = (1 + (2-1)*0.7)}, -- Wake of Fire
      {index = 329, op = "<=", value = (5 + (20-5)*0.7)}, -- Fire Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 177, --Wind-Forged Blade, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 97, op = "<=", param = 269, value = (2 + (3-2)*0.7)}, -- Claws of Thunder
      {index = 97, op = "<=", param = 235, value = (0 + (4-0)*0.7)}, -- Cyclone Armor
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 178, --Bartuc's Cut-Throat, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 60, op = "<=", value = (5 + (9-5)*0.7)}, -- Life Leech
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 179, --Void Ripper, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 119, op = "<=", value = (15 + (40-15)*0.7)}, -- AR%
      {index = 0, op = "<=", value = (5 + (15-5)*0.7)}, -- Attributes
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 180, --Soul-Forged Grip, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 151, op = "<=", param = 381, value = (6 + (10-6)*0.7)}, -- Redemption Aura
      {index = 19, op = "<=", value = (200 + (475-200)*0.7)}, -- AR
      {index = 83, op = "<=", param = 6, value = (1 + (3-1)*0.7)}, -- Assassin Skills
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 181-200
    {
      codes = "allitems",
      quality = "7",
      index = 181, --Jade Talon
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 62, op = "==", value = 15 }, -- 10-15% Mana stolen per hit
      {index = 39, op = "==", value = 50 }, -- All Resistances +40-50%
      {index = 188, op = "==", param = 49, value = 2 }, -- +1-2 to Shadow Disciplines (Assassin Only)
      {index = 188, op = "==", param = 50, value = 2 }, -- +1-2 to Deadly Arts (Assassin Only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 182, --Malignant Touch
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 97, op = "==", param = 280, value = 3 }, -- +1-3 to Phoenix Strike
      {index = 74, op = "==", value = 15 }, -- Replenish Life +10-15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 183, --Shadow Killer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 138, op = "==", value = 15 }, -- +10-15 to Mana after each Kill
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 184, --Firelizard's Talons
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 188, op = "==", param = 50, value = 3 }, -- +1-3 to Deadly Arts (Assassin Only)
      {index = 39, op = "==", value = 70 }, -- Fire Resist +40-70%
      {index = 107, op = "==", param = 262, value = 2 }, -- +1-2 to Wake of Fire (Assassin only)
      {index = 107, op = "==", param = 251, value = 2 }, -- +1-2 to Fire Blast (Assassin only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 185, --Viz-Jaq'taar Order
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{index = 91, op = "==", value = -50 }, --Requirements -50%
      {index = 107, op = "==", param = 264, value = 6 }, -- +4-6 to Cloak of Shadows (Assassin only)
      {index = 188, op = "==", param = 48, value = 4 }, -- +2-4 to Traps (Assassin Only)
      {index = 39, op = "==", value = 25 }, -- All Resistances +5-25%
      {index = 0, op = "==", value = 35 }, -- +20-35 to Strength
      {index = 93, op = "==", value = 50 }, -- +20-50% Increased Attack Speed
      {index = 86, op = "==", value = 25 }, -- +5-25 Life after each Kill
      {index = 329, op = "==", value = 25 }, -- +10-25% to Fire Skill Damage
      {index = 331, op = "==", value = 25 }, -- +10-25% to Cold Skill Damage
      {index = 330, op = "==", value = 25 }, -- +10-25% to Lightning Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 186, --Mage Crusher
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 39, op = "==", value = 30 }, -- All Resistances +10-30%
      {index = 119, op = "==", value = 120 }, -- 90-120% Bonus to Attack Rating
      {index = 127, op = "==", value = 3 }, -- +1-3 to All Skills
      {index = 138, op = "==", value = 20 }, -- +10-20 to Mana after each Kill
      {index = 397, op = "==", value = 6 }, -- +3-6 Life Stolen Per Hit
      {index = 121, op = "==", value = 200 }, -- +100-200% Damage to Demons
      {index = 123, op = "==", value = 200 }, -- +180-200 to Attack Rating against Demons
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 187, --Razor's Edge
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 135, op = "==", value = 15 }, -- 5-15% Chance of Open Wounds
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 188, --Glittering Crescent
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 52, op = "==", value = 45 }, -- +38-45 magic damage
      {index = 53, op = "==", value = 67 }, -- +60-67 magic damage
      {index = 48, op = "==", value = 45 }, -- +38-45 to Minimum Fire Damage
      {index = 49, op = "==", value = 67 }, -- +60-67 to Maximum Fire Damage
      {index = 141, op = "==", value = 10 }, -- 5-10% Deadly Strike
      {index = 19, op = "==", value = 250 }, -- +200-250 to Attack Rating
      {index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 8-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 189, --Rune Master
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 12 }, -- Damage Reduced by 8-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 190, --Cranebeak
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 80, op = "==", value = 50 }, -- +20-50% Chance of Higher Quality Items
      {index = 410, op = "==", value = 2 }, -- +1-2 to Poison Skills
      {index = 83, op = "==", param = 2, value = 2 }, -- +1-2 to Necromancer Skill Levels
      {index = 151, op = "==", param = 495, value = 25 }, -- Level 15-25 Poison Conviction Aura When Equipped
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 191, --Death Cleaver
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 86, op = "==", value = 9 }, -- +6-9 Life after each Kill
      {index = 34, op = "==", value = 15 }, -- Damage Reduced by 10-15
      {index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 10-15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 192, --Blessed Beheader
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 141, op = "==", value = 20 }, -- 5-20% Deadly Strike
      {index = 135, op = "==", value = 15 }, -- 5-15% Chance of Open Wounds
      {index = 121, op = "==", value = 110 }, -- +100-110% Damage to Demons
      {index = 122, op = "==", value = 110 }, -- +100-110% Damage to Undead
      {index = 60, op = "==", value = 7 }, -- 4-7% Life stolen per hit
      {index = 123, op = "==", value = 200 }, -- +180-200 to Attack Rating against Demons
      {index = 124, op = "==", value = 200 }, -- +180-200 to Attack Rating against Undead
      {index = 34, op = "==", value = 15 }, -- Damage Reduced by 10-15
      {index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 10-15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 193, --Ethereal Edge
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 143, op = "==", value = 12 }, -- +10-12 Fire Absorb
      {index = 121, op = "==", value = 200 }, -- +150-200% Damage to Demons
      {index = 139, op = "==", value = 10 }, -- +5-10 Life after each Demon Kill
      {index = 19, op = "==", value = 350 }, -- +270-350 to Attack Rating
      {index = 34, op = "==", value = 15 }, -- Damage Reduced by 10-15
      {index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 10-15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 194, --Hellslayer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 16 }, -- Damage Reduced by 12-16
      {index = 35, op = "==", value = 16 }, -- Magic Damage Reduced by 12-16
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 195, --Messerschmidt's Reaver
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 16 }, -- Damage Reduced by 12-16
      {index = 35, op = "==", value = 16 }, -- Magic Damage Reduced by 12-16
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 196, --Executioner's Justice
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 136, op = "==", value = 20 }, -- 10-20% Chance of Crushing Blow
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 197, --Bane Glow
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 83, op = "==", param = 2, value = 2 }, -- +1-2 to Necromancer Skill Levels
      {index = 97, op = "==", param = 0, value = 3 }, -- +1-3 to Attack (broken skill)
      {index = 97, op = "==", param = 92, value = 3 }, -- +1-3 to Poison Nova
      {index = 105, op = "==", value = 30 }, -- +25-30% Faster Cast Rate
      {index = 332, op = "==", value = 30 }, -- +10-30% to Poison Skill Damage
      {index = 336, op = "==", value = 15 }, -- -10-15% to Enemy Poison Resistance
      {index = 191, op = "==", value = 15 }, -- Enemy poison immunity reduced by 5-15%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 198, --Malthael Touch
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 284, op = "==", value = 40 }, -- Summon Max HP: +25-40%
      {index = 285, op = "==", value = 40 }, -- Summon Combat Rating: +25-40%
      {index = 281, op = "==", value = 40 }, -- Summon Damage: +25-40%
      {index = 188, op = "==", param = 18, value = 4 }, -- +1-4 to Summoning Skills (Necromancer Only)
      {index = 77, op = "==", value = 35 }, -- Increase Maximum Mana by 25-35%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 199, --Boneshade
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 83, op = "==", param = 2, value = 2 }, -- +1-2 to Necromancer Skill Levels
      {index = 107, op = "==", param = 67, value = 5 }, -- +4-5 to Teeth (Necromancer only)
      {index = 107, op = "==", param = 68, value = 3 }, -- +2-3 to Bone Armor (Necromancer only)
      {index = 107, op = "==", param = 84, value = 3 }, -- +2-3 to Bone Spear (Necromancer only)
      {index = 107, op = "==", param = 93, value = 2 }, -- +1-2 to Bone Spirit (Necromancer only)
      {index = 97, op = "==", param = 161, value = 5 }, -- +0-5 to Feeble Frame
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 200, --Death's Web
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 127, op = "==", value = 2 }, -- +1-2 to All Skills
      {index = 336, op = "==", value = 50 }, -- -40-50% to Enemy Poison Resistance
      {index = 86, op = "==", value = 12 }, -- +7-12 Life after each Kill
      {index = 138, op = "==", value = 12 }, -- +7-12 to Mana after each Kill
      {index = 188, op = "==", param = 17, value = 2 }, -- +1-2 to Poison and Bone Skills (Necromancer Only)
      {index = 191, op = "==", value = 25 }, -- Enemy poison immunity reduced by 20-25%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 181-200
    {
      codes = "allitems",
      quality = "7",
      index = 181, --Jade Talon, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 62, op = "<=", value = (10 + (15-10)*0.7)}, -- Mana leech 10-15%
      {index = 39, op = "<=", value = (40 + (50-40)*0.7)}, -- All res 40-50%
      {index = 188, op = "<=", param = 49, value = (1 + (2-1)*0.7)}, -- Shadow Disciplines
      {index = 188, op = "<=", param = 50, value = (1 + (2-1)*0.7)}, -- Deadly Arts
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 182, --Malignant Touch, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 97, op = "<=", param = 280, value = (1 + (3-1)*0.7)}, -- Phoenix Strike
      {index = 74, op = "<=", value = (10 + (15-10)*0.7)}, -- Replenish Life
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 183, --Shadow Killer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 138, op = "<=", value = (10 + (15-10)*0.7)}, -- Mana after kill
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 184, --Firelizard's Talons, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 188, op = "<=", param = 50, value = (1 + (3-1)*0.7)}, -- Deadly Arts
      {index = 39, op = "<=", value = (40 + (70-40)*0.7)}, -- Fire res
      {index = 107, op = "<=", param = 262, value = (1 + (2-1)*0.7)}, -- Wake of Fire
      {index = 107, op = "<=", param = 251, value = (1 + (2-1)*0.7)}, -- Fire Blast
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 185, --Viz-Jaq'taar Order, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 264, value = (4 + (6-4)*0.7)}, -- Cloak of Shadows
      {index = 188, op = "<=", param = 48, value = (2 + (4-2)*0.7)}, -- Traps
      {index = 39, op = "<=", value = (5 + (25-5)*0.7)}, -- All res
      {index = 0, op = "<=", value = (20 + (35-20)*0.7)}, -- Strength
      {index = 93, op = "<=", value = (20 + (50-20)*0.7)}, -- IAS
      {index = 86, op = "<=", value = (5 + (25-5)*0.7)}, -- Life after kill
      {index = 329, op = "<=", value = (10 + (25-10)*0.7)}, -- Fire skill dmg
      {index = 331, op = "<=", value = (10 + (25-10)*0.7)}, -- Cold skill dmg
      {index = 330, op = "<=", value = (10 + (25-10)*0.7)}, -- Lightning skill dmg
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 186, --Mage Crusher, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 39, op = "<=", value = (10 + (30-10)*0.7)}, -- All res
      {index = 119, op = "<=", value = (90 + (120-90)*0.7)}, -- AR%
      {index = 127, op = "<=", value = (1 + (3-1)*0.7)}, -- All skills
      {index = 138, op = "<=", value = (10 + (20-10)*0.7)}, -- Mana after kill
      {index = 397, op = "<=", value = (3 + (6-3)*0.7)}, -- Life leech
      {index = 121, op = "<=", value = (100 + (200-100)*0.7)}, -- vs Demons%
      {index = 123, op = "<=", value = (180 + (200-180)*0.7)}, -- AR vs Demons
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 187, --Razor's Edge, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 135, op = "<=", value = (5 + (15-5)*0.7)}, -- Open wounds
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 188, --Glittering Crescent, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 52, op = "<=", value = (38 + (45-38)*0.7)}, -- Magic dmg min
      {index = 53, op = "<=", value = (60 + (67-60)*0.7)}, -- Magic dmg max
      {index = 48, op = "<=", value = (38 + (45-38)*0.7)}, -- Fire dmg min
      {index = 49, op = "<=", value = (60 + (67-60)*0.7)}, -- Fire dmg max
      {index = 141, op = "<=", value = (5 + (10-5)*0.7)}, -- Deadly strike
      {index = 19, op = "<=", value = (200 + (250-200)*0.7)}, -- AR
      {index = 35, op = "<=", value = (8 + (12-8)*0.7)}, -- MDR
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 189, --Rune Master, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (8 + (12-8)*0.7)}, -- DR
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 190, --Cranebeak, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 80, op = "<=", value = (20 + (50-20)*0.7)}, -- MF
      {index = 410, op = "<=", value = (1 + (2-1)*0.7)}, -- Poison skills
      {index = 83, op = "<=", param = 2, value = (1 + (2-1)*0.7)}, -- Necro skills
      {index = 151, op = "<=", param = 495, value = (15 + (25-15)*0.7)}, -- Poison Conviction aura
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 191, --Death Cleaver, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 86, op = "<=", value = (6 + (9-6)*0.7)}, -- Life after kill
      {index = 34, op = "<=", value = (10 + (15-10)*0.7)}, -- DR
      {index = 35, op = "<=", value = (10 + (15-10)*0.7)}, -- MDR
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 192, --Blessed Beheader, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 141, op = "<=", value = (5 + (20-5)*0.7)}, -- Deadly strike
      {index = 135, op = "<=", value = (5 + (15-5)*0.7)}, -- Open wounds
      {index = 121, op = "<=", value = (100 + (110-100)*0.7)}, -- vs Demons%
      {index = 122, op = "<=", value = (100 + (110-100)*0.7)}, -- vs Undead%
      {index = 60, op = "<=", value = (4 + (7-4)*0.7)}, -- Life leech
      {index = 123, op = "<=", value = (180 + (200-180)*0.7)}, -- AR vs Demons
      {index = 124, op = "<=", value = (180 + (200-180)*0.7)}, -- AR vs Undead
      {index = 34, op = "<=", value = (10 + (15-10)*0.7)}, -- DR
      {index = 35, op = "<=", value = (10 + (15-10)*0.7)}, -- MDR
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 193, --Ethereal Edge, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 143, op = "<=", value = (10 + (12-10)*0.7)}, -- Fire absorb
      {index = 121, op = "<=", value = (150 + (200-150)*0.7)}, -- vs Demons%
      {index = 139, op = "<=", value = (5 + (10-5)*0.7)}, -- Life after demon kill
      {index = 19, op = "<=", value = (270 + (350-270)*0.7)}, -- AR
      {index = 34, op = "<=", value = (10 + (15-10)*0.7)}, -- DR
      {index = 35, op = "<=", value = (10 + (15-10)*0.7)}, -- MDR
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 194, --Hellslayer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (12 + (16-12)*0.7)}, -- DR
      {index = 35, op = "<=", value = (12 + (16-12)*0.7)}, -- MDR
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 195, --Messerschmidt's Reaver, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (12 + (16-12)*0.7)}, -- DR
      {index = 35, op = "<=", value = (12 + (16-12)*0.7)}, -- MDR
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 196, --Executioner's Justice, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 136, op = "<=", value = (10 + (20-10)*0.7)}, -- Crushing blow
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 197, --Bane Glow, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 83, op = "<=", param = 2, value = (1 + (2-1)*0.7)}, -- Necro skills
      {index = 97, op = "<=", param = 0, value = (1 + (3-1)*0.7)}, -- Attack (broken)
      {index = 97, op = "<=", param = 92, value = (1 + (3-1)*0.7)}, -- Poison Nova
      {index = 105, op = "<=", value = (25 + (30-25)*0.7)}, -- FCR
      {index = 332, op = "<=", value = (10 + (30-10)*0.7)}, -- Poison skill dmg
      {index = 336, op = "<=", value = (10 + (15-10)*0.7)}, -- -Enemy poison res
      {index = 191, op = "<=", value = (5 + (15-5)*0.7)}, -- Poison immunity pierce
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 198, --Malthael Touch, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 284, op = "<=", value = (25 + (40-25)*0.7)}, -- Summon HP
      {index = 285, op = "<=", value = (25 + (40-25)*0.7)}, -- Summon CR
      {index = 281, op = "<=", value = (25 + (40-25)*0.7)}, -- Summon dmg
      {index = 188, op = "<=", param = 18, value = (1 + (4-1)*0.7)}, -- Summoning skills
      {index = 77, op = "<=", value = (25 + (35-25)*0.7)}, -- Max mana%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 199, --Boneshade, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 83, op = "<=", param = 2, value = (1 + (2-1)*0.7)}, -- Necro skills
      {index = 107, op = "<=", param = 67, value = (4 + (5-4)*0.7)}, -- Teeth
      {index = 107, op = "<=", param = 68, value = (2 + (3-2)*0.7)}, -- Bone Armor
      {index = 107, op = "<=", param = 84, value = (2 + (3-2)*0.7)}, -- Bone Spear
      {index = 107, op = "<=", param = 93, value = (1 + (2-1)*0.7)}, -- Bone Spirit
      {index = 97, op = "<=", param = 161, value = (0 + (5-0)*0.7)}, -- Feeble Frame
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 200, --Death's Web, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 127, op = "<=", value = (1 + (2-1)*0.7)}, -- +1-2 to All Skills
      {index = 336, op = "<=", value = (40 + (50-40)*0.7)}, -- -40-50% Enemy Poison Res
      {index = 86, op = "<=", value = (7 + (12-7)*0.7)}, -- Life after kill
      {index = 138, op = "<=", value = (7 + (12-7)*0.7)}, -- Mana after kill
      {index = 188, op = "<=", param = 17, value = (1 + (2-1)*0.7)}, -- Poison & Bone Skills
      {index = 191, op = "<=", value = (20 + (25-20)*0.7)}, -- Poison immunity pierce
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 201-220
    {
      codes = "allitems",
      quality = "7",
      index = 201, --Nord's Tenderizer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 148, op = "==", value = 15 }, -- Cold Absorb 5-15%
      {index = 119, op = "==", value = 180 }, -- 150-180% Bonus to Attack Rating
      {index = 151, op = "==", param = 103, value = 20 }, -- Level 15-20 Thorns Aura When Equipped
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 202, --Heaven's Light
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 139, op = "==", value = 20 }, -- +15-20 Life after each Demon Kill
      {index = 83, op = "==", param = 3, value = 3 }, -- +2-3 to Paladin Skill Levels
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 203, --The Redeemer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 121, op = "==", value = 250 }, -- +200-250% Damage to Demons
      {index = 107, op = "==", param = 118, value = 4 }, -- +2-4 to Holy Shock (Paladin only)
      {index = 107, op = "==", param = 101, value = 4 }, -- +2-4 to Holy Bolt (Paladin only)
      {index = 111, op = "==", value = 120 }, -- Damage +60-120
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 204, --Astreon's Iron Ward
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 119, op = "==", value = 200 }, -- 150-200% Bonus to Attack Rating
      {index = 34, op = "==", value = 7 }, -- Damage Reduced by 4-7
      {index = 111, op = "==", value = 85 }, -- Damage +40-85
      {index = 188, op = "==", param = 24, value = 4 }, -- +2-4 to Combat Skills (Paladin Only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 205, --Demon Limb
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 60, op = "==", value = 13 }, -- 7-13% Life stolen per hit
      {index = 39, op = "==", value = 25 }, -- Fire Resist +15-25%
      {index = 83, op = "==", param = 5, value = 2 }, -- +1-2 to Druid Skill Levels
      {index = 189, op = "==", value = 25}, -- Enemy fire immunity reduced by 15-25%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 206, --Stormlash
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 145, op = "==", value = 9 }, -- +3-9 Lightning Absorb
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 207, --Baranar's Star
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 12 }, -- Damage Reduced by 8-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 208, --Horizon's Tornado
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 8-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 209, --Schaefer's Hammer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 210, --Windhammer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 136, op = "==", value = 25 }, -- 10-25% Chance of Crushing Blow
      {index = 34, op = "==", value = 12 }, -- Damage Reduced by 8-12
      {index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 8-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 211, --The Cranium Basher
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 20 }, -- Damage Reduced by 14-20
      {index = 35, op = "==", value = 20 }, -- Magic Damage Reduced by 14-20
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 212, --Vows of Promise
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 93, op = "==", value = 45 }, -- +30-45% Increased Attack Speed
      {index = 138, op = "==", value = 7 }, -- +5-7 to Mana after each Kill
      {index = 86, op = "==", value = 12 }, -- +5-12 Life after each Kill
      {index = 34, op = "==", value = 14 }, -- Damage Reduced by 11-14
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 213, --Djinn Slayer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 121, op = "==", value = 150 }, -- +100-150% Damage to Demons
      {index = 123, op = "==", value = 300 }, -- +200-300 to Attack Rating against Demons
      {index = 145, op = "==", value = 7 }, -- +3-7 Lightning Absorb
      {index = 62, op = "==", value = 6 }, -- 3-6% Mana stolen per hit
      {index = 34, op = "==", value = 12 }, -- Damage Reduced by 8-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 214, --Bloodmoon
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 60, op = "==", value = 15 }, -- 10-15% Life stolen per hit
      {index = 86, op = "==", value = 13 }, -- +7-13 Life after each Kill
      {index = 135, op = "==", value = 15 }, -- 10-15% Chance of Open Wounds
      {index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 12-15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 215, --Starward Fencer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 60, op = "==", value = 10 }, -- 3-10% Life stolen per hit
      {index = 34, op = "==", value = 13 }, -- Damage Reduced by 9-13
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 216, --Lightsabre
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 62, op = "==", value = 7 }, -- 5-7% Mana stolen per hit
      {index = 35, op = "==", value = 25 }, -- Magic Damage Reduced by 15-25
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 217, --Azurewrath
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 151, op = "==", param = 380, value = 13 }, -- Level 10-13 Sanctuary Aura When Equipped
      {index = 0, op = "==", value = 10 }, -- +5-10 to all Attributes
      {index = 35, op = "==", value = 18 }, -- Magic Damage Reduced by 15-18
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 218, --Frostwind
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 148, op = "==", value = 15 }, -- Cold Absorb 7-15%
      {index = 97, op = "==", param = 156, value = 14 }, -- +7-14 to Arctic Blast
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 219, --Last Legend
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 119, value = 3 }, -- +1-3 to Faithful Follower (Paladin only)
      {index = 97, op = "==", param = 175, value = 3 }, -- +2-3 to Chance For Glory
      {index = 27, op = "==", value = 200 }, -- Regenerate Mana 80-200%
      {index = 83, op = "==", param = 3, value = 3 }, -- +2-3 to Paladin Skill Levels
      {index = 138, op = "==", value = 10 }, -- +3-10 to Mana after each Kill
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 220, --Oashi
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 12-15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 201-220
    {
      codes = "allitems",
      quality = "7",
      index = 201, --Nord's Tenderizer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 148, op = "<=", value = (5 + (15-5)*0.7)}, -- Cold Absorb 5-15%
      {index = 119, op = "<=", value = (150 + (180-150)*0.7)}, -- 150-180% Bonus to Attack Rating
      {index = 151, op = "<=", param = 103, value = (15 + (20-15)*0.7)}, -- Level 15-20 Thorns Aura When Equipped
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 202, --Heaven's Light, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 139, op = "<=", value = (15 + (20-15)*0.7)}, -- +15-20 Life after each Demon Kill
      {index = 83, op = "<=", param = 3, value = (2 + (3-2)*0.7)}, -- +2-3 to Paladin Skill Levels
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 203, --The Redeemer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 121, op = "<=", value = (200 + (250-200)*0.7)}, -- +200-250% Damage to Demons
      {index = 107, op = "<=", param = 118, value = (2 + (4-2)*0.7)}, -- +2-4 to Holy Shock (Paladin only)
      {index = 107, op = "<=", param = 101, value = (2 + (4-2)*0.7)}, -- +2-4 to Holy Bolt (Paladin only)
      {index = 111, op = "<=", value = (60 + (120-60)*0.7)}, -- Damage +60-120
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 204, --Astreon's Iron Ward, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 119, op = "<=", value = (150 + (200-150)*0.7)}, -- 150-200% Bonus to Attack Rating
      {index = 34, op = "<=", value = (4 + (7-4)*0.7)}, -- Damage Reduced by 4-7
      {index = 111, op = "<=", value = (40 + (85-40)*0.7)}, -- Damage +40-85
      {index = 188, op = "<=", param = 24, value = (2 + (4-2)*0.7)}, -- +2-4 to Combat Skills (Paladin Only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 205, --Demon Limb, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 60, op = "<=", value = (7 + (13-7)*0.7)}, -- 7-13% Life stolen per hit
      {index = 39, op = "<=", value = (15 + (25-15)*0.7)}, -- Fire Resist +15-25%
      {index = 83, op = "<=", param = 5, value = (1 + (2-1)*0.7)}, -- +1-2 to Druid Skill Levels
      {index = 189, op = "<=", value = (15 + (25-15)*0.7)}, -- Enemy fire immunity reduced by 15-25%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 206, --Stormlash, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 145, op = "<=", value = (3 + (9-3)*0.7)}, -- +3-9 Lightning Absorb
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 207, --Baranar's Star, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (8 + (12-8)*0.7)}, -- Damage Reduced by 8-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 208, --Horizon's Tornado, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 35, op = "<=", value = (8 + (12-8)*0.7)}, -- Magic Damage Reduced by 8-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 209, --Schaefer's Hammer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 210, --Windhammer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 136, op = "<=", value = (10 + (25-10)*0.7)}, -- 10-25% Chance of Crushing Blow
      {index = 34, op = "<=", value = (8 + (12-8)*0.7)}, -- Damage Reduced by 8-12
      {index = 35, op = "<=", value = (8 + (12-8)*0.7)}, -- Magic Damage Reduced by 8-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 211, --The Cranium Basher, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (14 + (20-14)*0.7)}, -- Damage Reduced by 14-20
      {index = 35, op = "<=", value = (14 + (20-14)*0.7)}, -- Magic Damage Reduced by 14-20
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 212, --Vows of Promise, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 93, op = "<=", value = (30 + (45-30)*0.7)}, -- +30-45% Increased Attack Speed
      {index = 138, op = "<=", value = (5 + (7-5)*0.7)}, -- +5-7 to Mana after each Kill
      {index = 86, op = "<=", value = (5 + (12-5)*0.7)}, -- +5-12 Life after each Kill
      {index = 34, op = "<=", value = (11 + (14-11)*0.7)}, -- Damage Reduced by 11-14
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 213, --Djinn Slayer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 121, op = "<=", value = (100 + (150-100)*0.7)}, -- +100-150% Damage to Demons
      {index = 123, op = "<=", value = (200 + (300-200)*0.7)}, -- +200-300 to Attack Rating against Demons
      {index = 145, op = "<=", value = (3 + (7-3)*0.7)}, -- +3-7 Lightning Absorb
      {index = 62, op = "<=", value = (3 + (6-3)*0.7)}, -- 3-6% Mana stolen per hit
      {index = 34, op = "<=", value = (8 + (12-8)*0.7)}, -- Damage Reduced by 8-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 214, --Bloodmoon, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 60, op = "<=", value = (10 + (15-10)*0.7)}, -- 10-15% Life stolen per hit
      {index = 86, op = "<=", value = (7 + (13-7)*0.7)}, -- +7-13 Life after each Kill
      {index = 135, op = "<=", value = (10 + (15-10)*0.7)}, -- 10-15% Chance of Open Wounds
      {index = 35, op = "<=", value = (12 + (15-12)*0.7)}, -- Magic Damage Reduced by 12-15
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 215, --Starward Fencer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 60, op = "<=", value = (3 + (10-3)*0.7)}, -- 3-10% Life stolen per hit
      {index = 34, op = "<=", value = (9 + (13-9)*0.7)}, -- Damage Reduced by 9-13
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 216, --Lightsabre, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 62, op = "<=", value = (5 + (7-5)*0.7)}, -- 5-7% Mana stolen per hit
      {index = 35, op = "<=", value = (15 + (25-15)*0.7)}, -- Magic Damage Reduced by 15-25
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 217, --Azurewrath, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 151, op = "<=", param = 380, value = (10 + (13-10)*0.7)}, -- Level 10-13 Sanctuary Aura When Equipped
      {index = 0, op = "<=", value = (5 + (10-5)*0.7)}, -- +5-10 to all Attributes
      {index = 35, op = "<=", value = (15 + (18-15)*0.7)}, -- Magic Damage Reduced by 15-18
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 218, --Frostwind, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 148, op = "<=", value = (7 + (15-7)*0.7)}, -- Cold Absorb 7-15%
      {index = 97, op = "<=", param = 156, value = (7 + (14-7)*0.7)}, -- +7-14 to Arctic Blast
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 219, --Last Legend, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 119, value = (1 + (3-1)*0.7)}, -- +1-3 to Faithful Follower (Paladin only)
      {index = 97, op = "<=", param = 175, value = (2 + (3-2)*0.7)}, -- +2-3 to Chance For Glory
      {index = 27, op = "<=", value = (80 + (200-80)*0.7)}, -- Regenerate Mana 80-200%
      {index = 83, op = "<=", param = 3, value = (2 + (3-2)*0.7)}, -- +2-3 to Paladin Skill Levels
      {index = 138, op = "<=", value = (3 + (10-3)*0.7)}, -- +3-10 to Mana after each Kill
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 220, --Oashi, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 35, op = "<=", value = (12 + (15-12)*0.7)}, -- Magic Damage Reduced by 12-15
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 221-240
    {
      codes = "allitems",
      quality = "7",
      index = 221, --Gleam Rod
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 151, op = "==", param = 389, value = 20 }, -- Level 15-20 Magic Conviction Aura When Equipped
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 222, --Flamebellow
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 142, op = "==", value = 30 }, -- Fire Absorb 20-30%
      {index = 0, op = "==", value = 20 }, -- +10-20 to Strength
      {index = 3, op = "==", value = 10 }, -- +5-10 to Vitality
      {index = 97, op = "==", param = 173, value = 18 }, -- +12-18 to Inferno
      {index = 34, op = "==", value = 15 }, -- Damage Reduced by 12-15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 223, --Doombringer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 60, op = "==", value = 7 }, -- 5-7% Life stolen per hit
      {index = 34, op = "==", value = 30 }, -- Damage Reduced by 20-30
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 224, --Burning Bane
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 151, op = "==", param = 387, value = 20 }, -- Level 15-20 Fire Conviction Aura When Equipped
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 225, --The Grandfather
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 151, op = "==", param = 503, value = 20 }, -- Level 10-20 Physical Conviction Aura When Equipped
      {index = 34, op = "==", value = 25 }, -- Damage Reduced by 20-25
      {index = 35, op = "==", value = 25 }, -- Magic Damage Reduced by 20-25
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 226, --Wizardspike
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 77, op = "==", value = 30 }, -- Increase Maximum Mana by 15-30%
      {index = 39, op = "==", value = 95 }, -- All Resistances +75-95%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 227, --Rapid Strike
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 228, --Fleshripper
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 135, op = "==", value = 20 }, -- 5-20% Chance of Open Wounds
      {index = 97, op = "==", param = 180, value = 10 }, -- +6-10 to Patient Zero
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 229, --Ghostflame
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 62, op = "==", value = 15 }, -- 10-15% Mana stolen per hit
      {index = 93, op = "==", value = 40 }, -- +25-40% Increased Attack Speed
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 230, --Sentinel's Call
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 266, value = 5 }, -- +3-5 to Blade Fury (Assassin only)
      {index = 107, op = "==", param = 257, value = 4 }, -- +2-4 to Blade Sentinel (Assassin only)
      {index = 107, op = "==", param = 277, value = 4 }, -- +2-4 to Blade Shield (Assassin only)
      {index = 93, op = "==", value = 50 }, -- +30-50% Increased Attack Speed
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 231, --Gimmershred
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 232, --Warshrike
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 233, --Lacerator
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 135, op = "==", value = 30 }, -- 20-30% Chance of Open Wounds
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 234, --Contemplation
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 127, op = "==", value = 3 }, -- +2-3 to All Skills
      {index = 0, op = "==", value = 60 }, -- +40-60 to Strength
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 235, --Main Hand
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 135, op = "==", value = 30 }, -- 10-30% Chance of Open Wounds
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 236, --Demon's Arch
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 60, op = "==", value = 12 }, -- 6-12% Life stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 237, --Wraith Flight
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 60, op = "==", value = 13 }, -- 9-13% Life stolen per hit
      {index = 111, op = "==", value = 250 }, -- Damage +200-250
      {index = 83, op = "==", param = 4, value = 3 }, -- +2-3 to Barbarian Skill Levels
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 238, --Gargoyle's Bite
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 60, op = "==", value = 15 }, -- 9-15% Life stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 239, --Arioc's Needle
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 141, op = "==", value = 50 }, -- 30-50% Deadly Strike
      {index = 127, op = "==", value = 4 }, -- +2-4 to All Skills
      {index = 34, op = "==", value = 15 }, -- Damage Reduced by 12-15
      {index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 12-15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 240, --Rock Piercer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 357, op = "==", value = 60 }, -- +40-60% to Magic Skill Damage
      {index = 107, op = ">=", param = 30, value = 7 }, -- +3-7 to Fend (Amazon only)
      {index = 107, op = "==", param = 19, value = 7 }, -- +5-7 to Impale (Amazon only)
      {index = 135, op = "==", value = 70 }, -- 30-70% Chance of Open Wounds
      {index = 32, op = "==", value = 400 }, -- +200-400 Defense vs. Missile
      {index = 34, op = "==", value = 12 }, -- Damage Reduced by 10-12
      {index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 10-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 221-240
    {
      codes = "allitems",
      quality = "7",
      index = 221, --Gleam Rod, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 151, op = "<=", param = 389, value = (15 + (20-15)*0.7)}, -- Level 15-20 Magic Conviction Aura When Equipped
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 222, --Flamebellow, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 142, op = "<=", value = (20 + (30-20)*0.7)}, -- Fire Absorb 20-30%
      {index = 0, op = "<=", value = (10 + (20-10)*0.7)}, -- +10-20 to Strength
      {index = 3, op = "<=", value = (5 + (10-5)*0.7)}, -- +5-10 to Vitality
      {index = 97, op = "<=", param = 173, value = (12 + (18-12)*0.7)}, -- +12-18 to Inferno
      {index = 34, op = "<=", value = (12 + (15-12)*0.7)}, -- Damage Reduced by 12-15
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 223, --Doombringer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 60, op = "<=", value = (5 + (7-5)*0.7)}, -- 5-7% Life stolen per hit
      {index = 34, op = "<=", value = (20 + (30-20)*0.7)}, -- Damage Reduced by 20-30
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 224, --Burning Bane, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 151, op = "<=", param = 387, value = (15 + (20-15)*0.7)}, -- Level 15-20 Fire Conviction Aura When Equipped
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 225, --The Grandfather, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 151, op = "<=", param = 503, value = (10 + (20-10)*0.7)}, -- Level 10-20 Physical Conviction Aura When Equipped
      {index = 34, op = "<=", value = (20 + (25-20)*0.7)}, -- Damage Reduced by 20-25
      {index = 35, op = "<=", value = (20 + (25-20)*0.7)}, -- Magic Damage Reduced by 20-25
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 226, --Wizardspike, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 77, op = "<=", value = (15 + (30-15)*0.7)}, -- Increase Maximum Mana by 15-30%
      {index = 39, op = "<=", value = (75 + (95-75)*0.7)}, -- All Resistances +75-95%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 227, --Rapid Strike, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 228, --Fleshripper, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 135, op = "<=", value = (5 + (20-5)*0.7)}, -- 5-20% Chance of Open Wounds
      {index = 97, op = "<=", param = 180, value = (6 + (10-6)*0.7)}, -- +6-10 to Patient Zero
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 229, --Ghostflame, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 62, op = "<=", value = (10 + (15-10)*0.7)}, -- 10-15% Mana stolen per hit
      {index = 93, op = "<=", value = (25 + (40-25)*0.7)}, -- +25-40% Increased Attack Speed
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 230, --Sentinel's Call, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 266, value = (3 + (5-3)*0.7)}, -- +3-5 to Blade Fury (Assassin only)
      {index = 107, op = "<=", param = 257, value = (2 + (4-2)*0.7)}, -- +2-4 to Blade Sentinel (Assassin only)
      {index = 107, op = "<=", param = 277, value = (2 + (4-2)*0.7)}, -- +2-4 to Blade Shield (Assassin only)
      {index = 93, op = "<=", value = (30 + (50-30)*0.7)}, -- +30-50% Increased Attack Speed
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 231, --Gimmershred, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 232, --Warshrike, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 233, --Lacerator, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 135, op = "<=", value = (20 + (30-20)*0.7)}, -- 20-30% Chance of Open Wounds
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 234, --Contemplation, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 127, op = "<=", value = (2 + (3-2)*0.7)}, -- +2-3 to All Skills
      {index = 0, op = "<=", value = (40 + (60-40)*0.7)}, -- +40-60 to Strength
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 235, --Main Hand, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 135, op = "<=", value = (10 + (30-10)*0.7)}, -- 10-30% Chance of Open Wounds
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 236, --Demon's Arch, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 60, op = "<=", value = (6 + (12-6)*0.7)}, -- 6-12% Life stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 237, --Wraith Flight, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 60, op = "<=", value = (9 + (13-9)*0.7)}, -- 9-13% Life stolen per hit
      {index = 111, op = "<=", value = (200 + (250-200)*0.7)}, -- Damage +200-250
      {index = 83, op = "<=", param = 4, value = (2 + (3-2)*0.7)}, -- +2-3 to Barbarian Skill Levels
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 238, --Gargoyle's Bite, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 60, op = "<=", value = (9 + (15-9)*0.7)}, -- 9-15% Life stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 239, --Arioc's Needle, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 141, op = "<=", value = (30 + (50-30)*0.7)}, -- 30-50% Deadly Strike
      {index = 127, op = "<=", value = (2 + (4-2)*0.7)}, -- +2-4 to All Skills
      {index = 34, op = "<=", value = (12 + (15-12)*0.7)}, -- Damage Reduced by 12-15
      {index = 35, op = "<=", value = (12 + (15-12)*0.7)}, -- Magic Damage Reduced by 12-15
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 240, --Rock Piercer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 357, op = "<=", value = (40 + (60-40)*0.7)}, -- +40-60% to Magic Skill Damage
      {index = 107, op = "<=", param = 30, value = (3 + (7-3)*0.7)}, -- +3-7 to Fend (Amazon only)
      {index = 107, op = "<=", param = 19, value = (5 + (7-5)*0.7)}, -- +5-7 to Impale (Amazon only)
      {index = 135, op = "<=", value = (30 + (70-30)*0.7)}, -- 30-70% Chance of Open Wounds
      {index = 32, op = "<=", value = (200 + (400-200)*0.7)}, -- +200-400 Defense vs. Missile
      {index = 34, op = "<=", value = (10 + (12-10)*0.7)}, -- Damage Reduced by 10-12
      {index = 35, op = "<=", value = (10 + (12-10)*0.7)}, -- Magic Damage Reduced by 10-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 241-260
    {
      codes = "allitems",
      quality = "7",
      index = 241, --Viperfork
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 19, op = "==", value = 250 }, -- +200-250 to Attack Rating
      {index = 45, op = "==", value = 50 }, -- Poison Resist +30-50%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 242, --Flash Forward
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 151, op = "==", param = 390, value = 20 }, -- Level 15-20 Lightning Conviction Aura When Equipped
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 243, --Steel Pillar
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 136, op = "==", value = 30 }, -- 10-30% Chance of Crushing Blow
      {index = 34, op = "==", value = 17 }, -- Damage Reduced by 13-17
      {index = 35, op = "==", value = 17 }, -- Magic Damage Reduced by 13-17
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 244, --Bonehew
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 17 }, -- Damage Reduced by 13-17
      {index = 35, op = "==", value = 17 }, -- Magic Damage Reduced by 13-17
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 245, --Tundra Tamer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 151, op = "==", param = 388, value = 20 }, -- Level 15-20 Cold Conviction Aura When Equipped
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 246, --The Reaper's Toll
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 60, op = "==", value = 15 }, -- 11-15% Life stolen per hit
      {index = 97, op = "==", param = 179, value = 5 }, -- +1-5 to Calcified Carve
      {index = 97, op = "==", param = 178, value = 5 }, -- +3-5 to Bone Spikes
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 247, --Tomb Reaver
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 122, op = "==", value = 230 }, -- +150-230% Damage to Undead
      {index = 80, op = "==", value = 80 }, -- +50-80% Chance of Higher Quality Items
      {index = 39, op = "==", value = 50 }, -- All Resistances +30-50%
      {index = 124, op = "==", value = 350 }, -- +250-350 to Attack Rating against Undead
      {index = 86, op = "==", value = 14 }, -- +10-14 Life after each Kill
      {index = 34, op = "==", value = 20 }, -- Damage Reduced by 15-20
      {index = 35, op = "==", value = 20 }, -- Magic Damage Reduced by 15-20
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 248, --Wind Shatter
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 151, value = 6 }, -- +3-6 to Whirlwind (Barbarian only)
      {index = 150, op = "==", value = 60 }, -- Slows Target by 40-60%
      {index = 34, op = "==", value = 18 }, -- Damage Reduced by 12-18
      {index = 35, op = "==", value = 18 }, -- Magic Damage Reduced by 12-18
      {index = 93, op = "<=", value = 60 }, -- +40-60% Increased Attack Speed
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 249, --Bonespire
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 97, op = ">=", param = 178, value = 5 }, -- +3-5 to Bone Spikes
      },
      border = {165, 146, 099, 230},
      --notify = "",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 250, --Nature's Intention
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 332, op = "==", value = 50 }, -- +25-50% to Poison Skill Damage
      {index = 357, op = "==", value = 50 }, -- +25-50% to Magic Skill Damage
      {index = 188, op = "==", param = 40, value = 4 }, -- +2-4 to Nature's Teachings (Druid Only)
      {index = 77, op = "==", value = 20 }, -- Increase Maximum Mana by 10-20%
      {index = 31, op = "==", value = 300 }, -- +100-300 Defense
      {index = 45, op = "==", value = 50 }, -- Poison Resist +35-50%
      {index = 97, op = "==", param = 183, value = 3 }, -- +1-3 to Arachnophobia
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 251, -- Thermite Quicksand
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 48, op = "==", value = 250 }, -- +200-250 to Minimum Fire Damage
      {index = 49, op = "==", value = 505 }, -- +375-505 to Maximum Fire Damage
      {index = 141, op = "==", value = 15 }, -- 10-15% Deadly Strike
      {index = 36, op = "==", value = 15 }, -- Damage Reduced by 8-15%
      {index = 142, op = "==", value = 15 }, -- Fire Absorb 5-15%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 252, -- Ondal's Wisdom
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 1, op = "==", value = 50 }, -- +40-50 to Energy
      {index = 127, op = "==", value = 4 }, -- +2-4 to All Skills
      {index = 31, op = "==", value = 550 }, -- +450-550 Defense
      {index = 35, op = "==", value = 8 }, -- Magic Damage Reduced by 5-8
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 253, -- Stone Crusher
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 0, op = "==", value = 30 }, -- +20-30 to Strength
      {index = 136, op = "==", value = 25 }, -- 10-25% Chance of Crushing Blow
      {index = 111, op = "==", value = 30 }, -- Damage +10-30
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 254, -- Mang Song's Lesson
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 333, op = "==", value = 15 }, -- -7-15% to Enemy Fire Resistance
      {index = 334, op = "==", value = 15 }, -- -7-15% to Enemy Lightning Resistance
      {index = 335, op = "==", value = 15 }, -- -7-15% to Enemy Cold Resistance
      {index = 336, op = "==", value = 15 }, -- -7-15% to Enemy Poison Resistance
      {index = 86, op = "==", value = 15 }, -- +10-15 Life after each Kill
      {index = 187, op = "==", value = 10 }, -- Enemy Cold immunity reduced by 5-10%
      {index = 189, op = "==", value = 10 }, -- Enemy Fire immunity reduced by 5-10%
      {index = 190, op = "==", value = 10 }, -- Enemy Light immunity reduced by 5-10%
      {index = 191, op = "==", value = 10 }, -- Enemy Poison immunity reduced by 5-10%
      {index = 192, op = "==", value = 10 }, -- Enemy Physical immunity reduced by 5-10%
      {index = 193, op = "==", value = 10 }, -- Enemy Magic immunity reduced by 5-10%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 255, -- Cold Crow's Caw
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 19, op = "==", value = 200 }, -- +75-200 to Attack Rating
      {index = 188, op = "==", param = 1, value = 5 }, -- +2-5 to Passive and Magic Skills (Amazon Only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 256, -- Trembling Vortex
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 331, op = "==", value = 25 }, -- +15-25% to Cold Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 257, -- Corrupted String
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 76, op = "==", value = -5 }, -- Decrease Maximum Life by -5 - -10%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 258, -- Gyro Blaster
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 97, op = "==", param = 182, value = 7 }, -- +5-7 to Electro Ball
      {index = 330, op = "==", value = 30 }, -- +20-30% to Lightning Skill Damage
      {index = 51, op = "==", value = 1000 }, -- +900-1000 to Maximum Lightning 
      {index = 62, op = "==", value = 12 }, -- 4-12% Mana stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 259, -- Underground
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 39, op = "==", value = 15 }, -- All Resistances +10-15
      {index = 119, op = "==", value = 150 }, -- 75-150% Bonus to Attack Rating
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 260, -- Eaglehorn
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 241-260
    {
      codes = "allitems",
      quality = "7",
      index = 241, --Viperfork, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 19, op = "<=", value = (200 + (250-200)*0.7)}, -- +200-250 to Attack Rating
      {index = 45, op = "<=", value = (30 + (50-30)*0.7)}, -- Poison Resist +30-50%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 242, --Flash Forward, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 151, op = "<=", param = 390, value = (15 + (20-15)*0.7)}, -- Level 15-20 Lightning Conviction Aura When Equipped
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 243, --Steel Pillar, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 136, op = "<=", value = (10 + (30-10)*0.7)}, -- 10-30% Chance of Crushing Blow
      {index = 34, op = "<=", value = (13 + (17-13)*0.7)}, -- Damage Reduced by 13-17
      {index = 35, op = "<=", value = (13 + (17-13)*0.7)}, -- Magic Damage Reduced by 13-17
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 244, --Bonehew, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (13 + (17-13)*0.7)}, -- Damage Reduced by 13-17
      {index = 35, op = "<=", value = (13 + (17-13)*0.7)}, -- Magic Damage Reduced by 13-17
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 245, --Tundra Tamer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 151, op = "<=", param = 388, value = (15 + (20-15)*0.7)}, -- Level 15-20 Cold Conviction Aura When Equipped
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 246, --The Reaper's Toll, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 60, op = "<=", value = (11 + (15-11)*0.7)}, -- 11-15% Life stolen per hit
      {index = 97, op = "<=", param = 179, value = (1 + (5-1)*0.7)}, -- +1-5 to Calcified Carve
      {index = 97, op = "<=", param = 178, value = (3 + (5-3)*0.7)}, -- +3-5 to Bone Spikes
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 247, --Tomb Reaver, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 122, op = "<=", value = (150 + (230-150)*0.7)}, -- +150-230% Damage to Undead
      {index = 80, op = "<=", value = (50 + (80-50)*0.7)}, -- +50-80% Chance of Higher Quality Items
      {index = 39, op = "<=", value = (30 + (50-30)*0.7)}, -- All Resistances +30-50%
      {index = 124, op = "<=", value = (250 + (350-250)*0.7)}, -- +250-350 to Attack Rating against Undead
      {index = 86, op = "<=", value = (10 + (14-10)*0.7)}, -- +10-14 Life after each Kill
      {index = 34, op = "<=", value = (15 + (20-15)*0.7)}, -- Damage Reduced by 15-20
      {index = 35, op = "<=", value = (15 + (20-15)*0.7)}, -- Magic Damage Reduced by 15-20
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 248, --Wind Shatter, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 151, value = (3 + (6-3)*0.7)}, -- +3-6 to Whirlwind (Barbarian only)
      {index = 150, op = "<=", value = (40 + (60-40)*0.7)}, -- Slows Target by 40-60%
      {index = 34, op = "<=", value = (12 + (18-12)*0.7)}, -- Damage Reduced by 12-18
      {index = 35, op = "<=", value = (12 + (18-12)*0.7)}, -- Magic Damage Reduced by 12-18
      {index = 93, op = "<=", value = (40 + (60-40)*0.7)}, -- +40-60% Increased Attack Speed
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 249, --Bonespire, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 97, op = "<=", param = 178, value = (3 + (5-3)*0.7)}, -- +3-5 to Bone Spikes
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 250, --Nature's Intention, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 332, op = "<=", value = (25 + (50-25)*0.7)}, -- +25-50% to Poison Skill Damage
      {index = 357, op = "<=", value = (25 + (50-25)*0.7)}, -- +25-50% to Magic Skill Damage
      {index = 188, op = "<=", param = 40, value = (2 + (4-2)*0.7)}, -- +2-4 to Nature's Teachings (Druid Only)
      {index = 77, op = "<=", value = (10 + (20-10)*0.7)}, -- Increase Maximum Mana by 10-20%
      {index = 31, op = "<=", value = (100 + (300-100)*0.7)}, -- +100-300 Defense
      {index = 45, op = "<=", value = (35 + (50-35)*0.7)}, -- Poison Resist +35-50%
      {index = 97, op = "<=", param = 183, value = (1 + (3-1)*0.7)}, -- +1-3 to Arachnophobia
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 251, --Thermite Quicksand, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 48, op = "<=", value = (200 + (250-200)*0.7)}, -- +200-250 to Minimum Fire Damage
      {index = 49, op = "<=", value = (375 + (505-375)*0.7)}, -- +375-505 to Maximum Fire Damage
      {index = 141, op = "<=", value = (10 + (15-10)*0.7)}, -- 10-15% Deadly Strike
      {index = 36, op = "<=", value = (8 + (15-8)*0.7)}, -- Damage Reduced by 8-15%
      {index = 142, op = "<=", value = (5 + (15-5)*0.7)}, -- Fire Absorb 5-15%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 252, --Ondal's Wisdom, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 1, op = "<=", value = (40 + (50-40)*0.7)}, -- +40-50 to Energy
      {index = 127, op = "<=", value = (2 + (4-2)*0.7)}, -- +2-4 to All Skills
      {index = 31, op = "<=", value = (450 + (550-450)*0.7)}, -- +450-550 Defense
      {index = 35, op = "<=", value = (5 + (8-5)*0.7)}, -- Magic Damage Reduced by 5-8
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 253, --Stone Crusher, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 0, op = "<=", value = (20 + (30-20)*0.7)}, -- +20-30 to Strength
      {index = 136, op = "<=", value = (10 + (25-10)*0.7)}, -- 10-25% Chance of Crushing Blow
      {index = 111, op = "<=", value = (10 + (30-10)*0.7)}, -- Damage +10-30
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 254, --Mang Song's Lesson, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 333, op = "<=", value = (7 + (15-7)*0.7)}, -- -7-15% to Enemy Fire Resistance
      {index = 334, op = "<=", value = (7 + (15-7)*0.7)}, -- -7-15% to Enemy Lightning Resistance
      {index = 335, op = "<=", value = (7 + (15-7)*0.7)}, -- -7-15% to Enemy Cold Resistance
      {index = 336, op = "<=", value = (7 + (15-7)*0.7)}, -- -7-15% to Enemy Poison Resistance
      {index = 86, op = "<=", value = (10 + (15-10)*0.7)}, -- +10-15 Life after each Kill
      {index = 187, op = "<=", value = (5 + (10-5)*0.7)}, -- Enemy Cold immunity reduced by 5-10%
      {index = 189, op = "<=", value = (5 + (10-5)*0.7)}, -- Enemy Fire immunity reduced by 5-10%
      {index = 190, op = "<=", value = (5 + (10-5)*0.7)}, -- Enemy Light immunity reduced by 5-10%
      {index = 191, op = "<=", value = (5 + (10-5)*0.7)}, -- Enemy Poison immunity reduced by 5-10%
      {index = 192, op = "<=", value = (5 + (10-5)*0.7)}, -- Enemy Physical immunity reduced by 5-10%
      {index = 193, op = "<=", value = (5 + (10-5)*0.7)}, -- Enemy Magic immunity reduced by 5-10%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 255, --Cold Crow's Caw, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 19, op = "<=", value = (75 + (200-75)*0.7)}, -- +75-200 to Attack Rating
      {index = 188, op = "<=", param = 1, value = (2 + (5-2)*0.7)}, -- +2-5 to Passive and Magic Skills (Amazon Only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 256, --Trembling Vortex, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 331, op = "<=", value = (15 + (25-15)*0.7)}, -- +15-25% to Cold Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 257, --Corrupted String, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 76, op = "<=", value = (-10 + (-5+10)*0.7)}, -- Decrease Maximum Life by -5 - -10%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 258, --Gyro Blaster, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 97, op = "<=", param = 182, value = (5 + (7-5)*0.7)}, -- +5-7 to Electro Ball
      {index = 330, op = "<=", value = (20 + (30-20)*0.7)}, -- +20-30% to Lightning Skill Damage
      {index = 51, op = "<=", value = (900 + (1000-900)*0.7)}, -- +900-1000 to Maximum Lightning 
      {index = 62, op = "<=", value = (4 + (12-4)*0.7)}, -- 4-12% Mana stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 259, --Underground, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 39, op = "<=", value = (10 + (15-10)*0.7)}, -- All Resistances +10-15
      {index = 119, op = "<=", value = (75 + (150-75)*0.7)}, -- 75-150% Bonus to Attack Rating
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 260, --Eaglehorn, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 261-280
    {
      codes = "allitems",
      quality = "7",
      index = 261, -- Widowmaker
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 6, value = 6 }, -- +3-6 to Magic Arrow (Amazon only)
      {index = 97, op = "==", param = 22, value = 5 }, -- +3-5 to Guided Arrow
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 262, -- Windforce
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 96, op = "==", value = 30 }, -- +20-30% Faster Run/Walk
      {index = 62, op = "==", value = 8 }, -- 6-8% Mana stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 263, -- Shadow Hunter
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 188, op = "==", param = 49, value = 4}, -- +2-4 to Shadow Disciplines (Assassin Only)
      {index = 192, op = ">=", value = 40 }, -- Enemy physical immunity reduced by 30-40%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 264, -- Amnesty's Glare
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 265, -- Hellrack
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 119, op = "==", value = 150 }, -- 100-150% Bonus to Attack Rating
      {index = 189, op = "==", value = 30 }, -- Enemy fire immunity reduced by 20-30%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 266, -- Gut Siphon
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 83, op = "==", param = 6, value = 3 }, -- +2-3 to Assassin Skill Levels
      {index = 60, op = "==", value = 18 }, -- 12-18% Life stolen per hit
      {index = 107, op = "==", param = 278, value = 2 }, -- +1-2 to Venom (Assassin only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 267, -- Enlightener
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 138, op = "==", value = 4 }, -- +1-4 to Mana after each Kill
      {index = 9, op = "==", value = 25*256 }, -- +8-25 to Mana
      {index = 329, op = "==", value = 6 }, -- +4-6% to Fire Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 268, -- Endothermic Stone
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 27, op = "==", value = 30 }, -- Regenerate Mana 10-30%
      {index = 77, op = "==", value = 20 }, -- Increase Maximum Mana by 8-20%
      {index = 331, op = "==", value = 8 }, -- +6-8% to Cold Skill Damage
      {index = 105, op = "==", value = 20 }, -- +10-20% Faster Cast Rate
      {index = 97, op = "==", param = 39, value = 3 }, -- +2-3 to Ice Bolt
      {index = 43, op = "==", value = 13 }, -- Cold Resist +8-13%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 269, -- Sensor
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 31, op = "==", value = 25 }, -- +10-25 Defense
      {index = 7, op = "==", value = 20*256 }, -- +15-20 to Life
      {index = 9, op = "==", value = 30*256 }, -- +20-30 to Mana
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 270, -- Lightning Rod
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 334, op = ">=", value = 15 }, -- -7-15% to Enemy Lightning Resistance
      {index = 145, op = ">=", value = 5 }, -- +1-5 Lightning Absorb
      {index = 41, op = ">=", value = 15 }, -- Lightning Resist +10-15%
      {index = 27, op = ">=", value = 40 }, -- Regenerate Mana 30-40%
      {index = 190, op = ">=", value = 10 }, -- Enemy lightning immunity reduced by 5-10%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 271, -- Energizer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 9, op = "==", value = 50*256 }, -- +30-50 to Mana
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 272, -- The Artemis String
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 93, op = "==", value = 15 }, -- +10-15% Increased Attack Speed
      {index = 122, op = "==", value = 80 }, -- +60-80% Damage to Undead
      {index = 121, op = "==", value = 60 }, -- +40-60% Damage to Demons
      {index = 2, op = "==", value = 10 }, -- +5-10 to Dexterity
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 273, -- Pinaka
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 331, op = "==", value = 15 }, -- +10-15% to Cold Skill Damage
      {index = 9, op = "==", value = 45*256 }, -- +35-45 to Mana
      {index = 150, op = "==", value = 25 }, -- Slows Target by 15-25%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 274, -- The Pain Producer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 93, op = "==", value = 30 }, -- +20-30% Increased Attack Speed
      {index = 60, op = "==", value = 5 }, -- 3-5% Life stolen per hit
      {index = 62, op = "==", value = 5 }, -- 3-5% Mana stolen per hit
      {index = 34, op = "==", value = 6 }, -- Damage Reduced by 4-6
      {index = 35, op = "==", value = 6 }, -- Magic Damage Reduced by 4-6
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 275, -- The Poking Pike
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 93, op = "==", value = 25 }, -- +15-25% Increased Attack Speed
      {index = 34, op = "==", value = 6 }, -- Damage Reduced by 4-6
      {index = 35, op = "==", value = 6 }, -- Magic Damage Reduced by 4-6
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 276, -- Skovos Striker
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 188, op = "==", param = 1, value = 2 }, -- +1-2 to Passive and Magic Skills (Amazon Only)
      {index = 62, op = "==", value = 6 }, -- 4-6% Mana stolen per hit
      {index = 96, op = "==", value = 30 }, -- +20-30% Faster Run/Walk
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 277, -- Risen Phoenix
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 407, op = "==", value = 3 }, -- +1-3 to Fire Skills
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 278, -- Glacial Oasis
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 188, op = "==", param = 10, value = 3 }, -- +1-3 to Cold Skills (Sorceress Only)
      {index = 105, op = "==", value = 40 }, -- +20-40% Faster Cast Rate
      {index = 1, op = "==", value = 40 }, -- +10-40 to Energy
      {index = 79, op = "==", value = 60 }, -- 25-60% Extra Gold from Monsters
      {index = 281, op = "==", value = 150 }, -- Summon Damage: +75-150%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 279, -- Thunderous
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 31, op = "==", value = 175 }, -- +50-175 Defense
      {index = 188, op = "==", param = 9, value = 4 }, -- +2-4 to Lightning Skills (Sorceress Only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 280, -- Magic
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 80, op = "==", value = 60 }, -- +20-60% Chance of Higher Quality Items
      {index = 329, op = "==", value = 20 }, -- +10-20% to Fire Skill Damage
      {index = 331, op = "==", value = 20 }, -- +10-20% to Cold Skill Damage
      {index = 330, op = "==", value = 20 }, -- +10-20% to Lightning Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 261-280
    {
      codes = "allitems",
      quality = "7",
      index = 261, -- Widowmaker, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 6, value = (3 + (6-3)*0.7)}, -- +3-6 to Magic Arrow (Amazon only)
      {index = 97, op = "<=", param = 22, value = (3 + (5-3)*0.7)}, -- +3-5 to Guided Arrow
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 262, -- Windforce, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 96, op = "<=", value = (20 + (30-20)*0.7)}, -- +20-30% Faster Run/Walk
      {index = 62, op = "<=", value = (6 + (8-6)*0.7)}, -- 6-8% Mana stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 263, -- Shadow Hunter, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 188, op = "<=", param = 49, value = (2 + (4-2)*0.7)}, -- +2-4 to Shadow Disciplines (Assassin Only)
      {index = 192, op = "<=", value = (30 + (40-30)*0.7)}, -- Enemy physical immunity reduced by 30-40%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 264, -- Amnesty's Glare, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 265, -- Hellrack, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 119, op = "<=", value = (100 + (150-100)*0.7)}, -- 100-150% Bonus to Attack Rating
      {index = 189, op = "<=", value = (20 + (30-20)*0.7)}, -- Enemy fire immunity reduced by 20-30%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 266, -- Gut Siphon, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 83, op = "<=", param = 6, value = (2 + (3-2)*0.7)}, -- +2-3 to Assassin Skill Levels
      {index = 60, op = "<=", value = (12 + (18-12)*0.7)}, -- 12-18% Life stolen per hit
      {index = 107, op = "<=", param = 278, value = (1 + (2-1)*0.7)}, -- +1-2 to Venom (Assassin only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 267, -- Enlightener, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 138, op = "<=", value = (1 + (4-1)*0.7)}, -- +1-4 to Mana after each Kill
      {index = 9, op = "<=", value = ((8 + (25-8)*0.7) * 256)}, -- +8-25 to Mana
      {index = 329, op = "<=", value = (4 + (6-4)*0.7)}, -- +4-6% to Fire Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 268, -- Endothermic Stone, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 27, op = "<=", value = (10 + (30-10)*0.7)}, -- Regenerate Mana 10-30%
      {index = 77, op = "<=", value = (8 + (20-8)*0.7)}, -- Increase Maximum Mana by 8-20%
      {index = 331, op = "<=", value = (6 + (8-6)*0.7)}, -- +6-8% to Cold Skill Damage
      {index = 105, op = "<=", value = (10 + (20-10)*0.7)}, -- +10-20% Faster Cast Rate
      {index = 97, op = "<=", param = 39, value = (2 + (3-2)*0.7)}, -- +2-3 to Ice Bolt
      {index = 43, op = "<=", value = (8 + (13-8)*0.7)}, -- Cold Resist +8-13%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 269, -- Sensor, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 31, op = "<=", value = (10 + (25-10)*0.7)}, -- +10-25 Defense
      {index = 7, op = "<=", value = ((15 + (20-15)*0.7) * 256)}, -- +15-20 to Life
      {index = 9, op = "<=", value = ((20 + (30-20)*0.7) * 256)}, -- +20-30 to Mana
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 270, -- Lightning Rod, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 334, op = "<=", value = (7 + (15-7)*0.7)}, -- -7-15% to Enemy Lightning Resistance
      {index = 145, op = "<=", value = (1 + (5-1)*0.7)}, -- +1-5 Lightning Absorb
      {index = 41, op = "<=", value = (10 + (15-10)*0.7)}, -- Lightning Resist +10-15%
      {index = 27, op = "<=", value = (30 + (40-30)*0.7)}, -- Regenerate Mana 30-40%
      {index = 190, op = "<=", value = (5 + (10-5)*0.7)}, -- Enemy lightning immunity reduced by 5-10%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 271, -- Energizer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 9, op = "<=", value = ((30 + (50-30)*0.7) * 256)}, -- +30-50 to Mana
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 272, -- The Artemis String, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 93, op = "<=", value = (10 + (15-10)*0.7)}, -- +10-15% Increased Attack Speed
      {index = 122, op = "<=", value = (60 + (80-60)*0.7)}, -- +60-80% Damage to Undead
      {index = 121, op = "<=", value = (40 + (60-40)*0.7)}, -- +40-60% Damage to Demons
      {index = 2, op = "<=", value = (5 + (10-5)*0.7)}, -- +5-10 to Dexterity
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 273, -- Pinaka, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 331, op = "<=", value = (10 + (15-10)*0.7)}, -- +10-15% to Cold Skill Damage
      {index = 9, op = "<=", value = ((35 + (45-35)*0.7) * 256)}, -- +35-45 to Mana
      {index = 150, op = "<=", value = (15 + (25-15)*0.7)}, -- Slows Target by 15-25%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 274, -- The Pain Producer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 93, op = "<=", value = (20 + (30-20)*0.7)}, -- +20-30% Increased Attack Speed
      {index = 60, op = "<=", value = (3 + (5-3)*0.7)}, -- 3-5% Life stolen per hit
      {index = 62, op = "<=", value = (3 + (5-3)*0.7)}, -- 3-5% Mana stolen per hit
      {index = 34, op = "<=", value = (4 + (6-4)*0.7)}, -- Damage Reduced by 4-6
      {index = 35, op = "<=", value = (4 + (6-4)*0.7)}, -- Magic Damage Reduced by 4-6
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 275, -- The Poking Pike, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 93, op = "<=", value = (15 + (25-15)*0.7)}, -- +15-25% Increased Attack Speed
      {index = 34, op = "<=", value = (4 + (6-4)*0.7)}, -- Damage Reduced by 4-6
      {index = 35, op = "<=", value = (4 + (6-4)*0.7)}, -- Magic Damage Reduced by 4-6
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 276, -- Skovos Striker, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 188, op = "<=", param = 1, value = (1 + (2-1)*0.7)}, -- +1-2 to Passive and Magic Skills (Amazon Only)
      {index = 62, op = "<=", value = (4 + (6-4)*0.7)}, -- 4-6% Mana stolen per hit
      {index = 96, op = "<=", value = (20 + (30-20)*0.7)}, -- +20-30% Faster Run/Walk
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 277, -- Risen Phoenix, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 407, op = "<=", value = (1 + (3-1)*0.7)}, -- +1-3 to Fire Skills
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 278, -- Glacial Oasis, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 188, op = "<=", param = 10, value = (1 + (3-1)*0.7)}, -- +1-3 to Cold Skills (Sorceress Only)
      {index = 105, op = "<=", value = (20 + (40-20)*0.7)}, -- +20-40% Faster Cast Rate
      {index = 1, op = "<=", value = (10 + (40-10)*0.7)}, -- +10-40 to Energy
      {index = 79, op = "<=", value = (25 + (60-25)*0.7)}, -- 25-60% Extra Gold from Monsters
      {index = 281, op = "<=", value = (75 + (150-75)*0.7)}, -- Summon Damage: +75-150%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 279, -- Thunderous, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 31, op = "<=", value = (50 + (175-50)*0.7)}, -- +50-175 Defense
      {index = 188, op = "<=", param = 9, value = (2 + (4-2)*0.7)}, -- +2-4 to Lightning Skills (Sorceress Only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 280, -- Magic, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 80, op = "<=", value = (20 + (60-20)*0.7)}, -- +20-60% Chance of Higher Quality Items
      {index = 329, op = "<=", value = (10 + (20-10)*0.7)}, -- +10-20% to Fire Skill Damage
      {index = 331, op = "<=", value = (10 + (20-10)*0.7)}, -- +10-20% to Cold Skill Damage
      {index = 330, op = "<=", value = (10 + (20-10)*0.7)}, -- +10-20% to Lightning Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 281-300
    {
      codes = "allitems",
      quality = "7",
      index = 281, -- The Oculus
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 282, -- Windraven
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 39, op = "==", value = 30 }, -- All Resistances +15-30%
      {index = 31, op = "==", value = 400 }, -- +200-400 Defense
      {index = 188, op = "==", param = 0, value = 3 }, -- +1-3 to Bow and Crossbow Skills (Amazon Only)
      {index = 76, op = "==", value = 10 }, -- Increase Maximum Life by 5-10%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 283, -- no item yet
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- NO STATS FOUND IN SOURCE FILE
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 284, -- no item yet
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- NO STATS FOUND IN SOURCE FILE
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 285, -- Lycander's Aim
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 62, op = "==", value = 8 }, -- 5-8% Mana stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 286, -- Titan's Revenge
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 60, op = "==", value = 9 }, -- 5-9% Life stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 287, -- Lycander's Flank
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 60, op = "==", value = 9 }, -- 5-9% Life stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 288, -- Above All
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 107, op = "==", param = 58, value = 7 }, -- +4-7 to Energy Shield (Sorceress only)
      {index = 107, op = "==", param = 37, value = 5 }, -- +3-5 to Warmth (Sorceress only)
      {index = 77, op = "==", value = 35 }, -- Increase Maximum Mana by 20-35%
      {index = 74, op = "==", value = 25 }, -- Replenish Life +5-25
      {index = 286, op = "==", value = 25 }, -- Reduce Cooldowns by 10-25%
      {index = 39, op = "==", value = 15 }, -- All Resistances +5-15%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 289, -- Eschuta's Temper
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 83, op = "==", param = 1, value = 3 }, -- +1-3 to Sorceress Skill Levels
      {index = 329, op = "==", value = 20 }, -- +10-20% to Fire Skill Damage
      {index = 330, op = "==", value = 20 }, -- +10-20% to Lightning Skill Damage
      {index = 1, op = "==", value = 30 }, -- +20-30 to Energy
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 290, -- Belphegor's Beating
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 139, op = "==", value = 30 }, -- +20-30 Life after each Demon Kill
      {index = 31, op = "==", value = 400 }, -- +200-400 Defense
      {index = 36, op = "==", value = 20 }, -- Damage Reduced by 10-20%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 291, -- Tempest Fiery
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 127, op = "==", value = 2 }, -- +1-2 to All Skills
      {index = 329, op = "==", value = 15 }, -- +10-15% to Fire Skill Damage
      {index = 107, op = "==", param = 62, value = 5 }, -- +3-5 to Hydra (Sorceress only)
      {index = 39, op = "==", value = 60 }, -- Fire Resist +25-60%
      {index = 142, op = "==", value = 10 }, -- Fire Absorb 5-10%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 292, -- Death's Fathom
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 331, op = "==", value = 30 }, -- +15-30% to Cold Skill Damage
      {index = 39, op = "==", value = 40 }, -- Fire Resist +25-40%
      {index = 41, op = "==", value = 40 }, -- Lightning Resist +25-40%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 293, -- Blood Raven's Charge
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 119, op = "==", value = 300 }, -- 200-300% Bonus to Attack Rating
      {index = 107, op = "==", param = 16, value = 6 }, -- +3-6 to Exploding Arrow (Amazon only)
      {index = 188, op = "==", param = 0, value = 4 }, -- +2-4 to Bow and Crossbow Skills (Amazon Only)
      {index = 83, op = "==", param = 0, value = 2 }, -- +1-2 to Amazon Skill Levels
      {index = 2, op = "==", value = 40 }, -- +20-40 to Dexterity
      {index = 415, op = "==", value = 10 }, -- Increase charm max weight by 5-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 294, -- Shredwind Hell
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 119, op = "==", value = 200 }, -- 100-200% Bonus to Attack Rating
      {index = 188, op = "==", param = 0, value = 3 }, -- +1-3 to Bow and Crossbow Skills (Amazon Only)
      {index = 121, op = "==", value = 200 }, -- +125-200% Damage to Demons
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 295, -- Thunderstroke
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 188, op = "==", param = 2, value = 4 }, -- +2-4 to Javelin and Spear Skills (Amazon Only)
      {index = 107, op = "==", param = 35, value = 3 }, -- +1-3 to Lightning Fury (Amazon only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 296, -- Stoneraven
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 39, op = "==", value = 50 }, -- All Resistances +30-50%
      {index = 31, op = "==", value = 600 }, -- +400-600 Defense
      {index = 188, op = "==", param = 2, value = 3 }, -- +1-3 to Javelin and Spear Skills (Amazon Only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 297, -- Biggin's Bonnet
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 34, op = "==", value = 3 }, -- Damage Reduced by 1-3
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 298, -- Tarnhelm
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 79, op = "==", value = 20 }, -- 15-20% Extra Gold from Monsters
      {index = 80, op = "==", value = 50 }, -- +25-50% Chance of Higher Quality Items
      {index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 299, -- Coif of Glory
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 300, -- Duskdeep
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 281-300
    {
      codes = "allitems",
      quality = "7",
      index = 281, -- The Oculus, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 282, -- Windraven, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 39, op = "<=", value = (15 + (30-15)*0.7)}, -- All Resistances +15-30%
      {index = 31, op = "<=", value = (200 + (400-200)*0.7)}, -- +200-400 Defense
      {index = 188, op = "<=", param = 0, value = (1 + (3-1)*0.7)}, -- +1-3 to Bow and Crossbow Skills (Amazon Only)
      {index = 76, op = "<=", value = (5 + (10-5)*0.7)}, -- Increase Maximum Life by 5-10%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 283, -- no item yet, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      -- NO STATS FOUND IN SOURCE FILE
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 284, -- no item yet, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      -- NO STATS FOUND IN SOURCE FILE
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 285, -- Lycander's Aim, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 62, op = "<=", value = (5 + (8-5)*0.7)}, -- 5-8% Mana stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 286, -- Titan's Revenge, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 60, op = "<=", value = (5 + (9-5)*0.7)}, -- 5-9% Life stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 287, -- Lycander's Flank, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 60, op = "<=", value = (5 + (9-5)*0.7)}, -- 5-9% Life stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 288, -- Above All, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 107, op = "<=", param = 58, value = (4 + (7-4)*0.7)}, -- +4-7 to Energy Shield (Sorceress only)
      {index = 107, op = "<=", param = 37, value = (3 + (5-3)*0.7)}, -- +3-5 to Warmth (Sorceress only)
      {index = 77, op = "<=", value = (20 + (35-20)*0.7)}, -- Increase Maximum Mana by 20-35%
      {index = 74, op = "<=", value = (5 + (25-5)*0.7)}, -- Replenish Life +5-25
      {index = 286, op = "<=", value = (10 + (25-10)*0.7)}, -- Reduce Cooldowns by 10-25%
      {index = 39, op = "<=", value = (5 + (15-5)*0.7)}, -- All Resistances +5-15%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 289, -- Eschuta's Temper, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 83, op = "<=", param = 1, value = (1 + (3-1)*0.7)}, -- +1-3 to Sorceress Skill Levels
      {index = 329, op = "<=", value = (10 + (20-10)*0.7)}, -- +10-20% to Fire Skill Damage
      {index = 330, op = "<=", value = (10 + (20-10)*0.7)}, -- +10-20% to Lightning Skill Damage
      {index = 1, op = "<=", value = (20 + (30-20)*0.7)}, -- +20-30 to Energy
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 290, -- Belphegor's Beating, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 139, op = "<=", value = (20 + (30-20)*0.7)}, -- +20-30 Life after each Demon Kill
      {index = 31, op = "<=", value = (200 + (400-200)*0.7)}, -- +200-400 Defense
      {index = 36, op = "<=", value = (10 + (20-10)*0.7)}, -- Damage Reduced by 10-20%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 291, -- Tempest Fiery, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 127, op = "<=", value = (1 + (2-1)*0.7)}, -- +1-2 to All Skills
      {index = 329, op = "<=", value = (10 + (15-10)*0.7)}, -- +10-15% to Fire Skill Damage
      {index = 107, op = "<=", param = 62, value = (3 + (5-3)*0.7)}, -- +3-5 to Hydra (Sorceress only)
      {index = 39, op = "<=", value = (25 + (60-25)*0.7)}, -- Fire Resist +25-60%
      {index = 142, op = "<=", value = (5 + (10-5)*0.7)}, -- Fire Absorb 5-10%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 292, -- Death's Fathom, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 331, op = "<=", value = (15 + (30-15)*0.7)}, -- +15-30% to Cold Skill Damage
      {index = 39, op = "<=", value = (25 + (40-25)*0.7)}, -- Fire Resist +25-40%
      {index = 41, op = "<=", value = (25 + (40-25)*0.7)}, -- Lightning Resist +25-40%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 293, -- Blood Raven's Charge, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 119, op = "<=", value = (200 + (300-200)*0.7)}, -- 200-300% Bonus to Attack Rating
      {index = 107, op = "<=", param = 16, value = (3 + (6-3)*0.7)}, -- +3-6 to Exploding Arrow (Amazon only)
      {index = 188, op = "<=", param = 0, value = (2 + (4-2)*0.7)}, -- +2-4 to Bow and Crossbow Skills (Amazon Only)
      {index = 83, op = "<=", param = 0, value = (1 + (2-1)*0.7)}, -- +1-2 to Amazon Skill Levels
      {index = 2, op = "<=", value = (20 + (40-20)*0.7)}, -- +20-40 to Dexterity
      {index = 415, op = "<=", value = (5 + (10-5)*0.7)}, -- Increase charm max weight by 5-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 294, -- Shredwind Hell, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 119, op = "<=", value = (100 + (200-100)*0.7)}, -- 100-200% Bonus to Attack Rating
      {index = 188, op = "<=", param = 0, value = (1 + (3-1)*0.7)}, -- +1-3 to Bow and Crossbow Skills (Amazon Only)
      {index = 121, op = "<=", value = (125 + (200-125)*0.7)}, -- +125-200% Damage to Demons
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 295, -- Thunderstroke, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 188, op = "<=", param = 2, value = (2 + (4-2)*0.7)}, -- +2-4 to Javelin and Spear Skills (Amazon Only)
      {index = 107, op = "<=", param = 35, value = (1 + (3-1)*0.7)}, -- +1-3 to Lightning Fury (Amazon only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 296, -- Stoneraven, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 39, op = "<=", value = (30 + (50-30)*0.7)}, -- All Resistances +30-50%
      {index = 31, op = "<=", value = (400 + (600-400)*0.7)}, -- +400-600 Defense
      {index = 188, op = "<=", param = 2, value = (1 + (3-1)*0.7)}, -- +1-3 to Javelin and Spear Skills (Amazon Only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 297, -- Biggin's Bonnet, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 34, op = "<=", value = (1 + (3-1)*0.7)}, -- Damage Reduced by 1-3
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 298, -- Tarnhelm, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      {index = 79, op = "<=", value = (15 + (20-15)*0.7)}, -- 15-20% Extra Gold from Monsters
      {index = 80, op = "<=", value = (25 + (50-25)*0.7)}, -- +25-50% Chance of Higher Quality Items
      {index = 85, op = "<=", value = (2 + (5-2)*0.7)}, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 299, -- Coif of Glory, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 300, -- Duskdeep, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 301-320
    {
      codes = "allitems",
      quality = "7",
      index = 301, -- Howltusk
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 302, -- Undead Crown
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 303, -- The Face of Horror
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 304, -- Greyform
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 305, -- Blinkbat's Form
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 306, -- The Centurion
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 307, -- Twitchthroe
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 308, -- Darkglow
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      { index = 35, op = "==", value = 5 }, -- Magic Damage Reduced by 3-5
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 309, -- Hawkmail
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 310, -- Sparking Mail
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 128, op = "==", value = 14 }, -- Attacker Takes Lightning Damage of 10-14
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 311, -- Venom Ward
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 312, -- Iceblink
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 313, -- Boneflesh
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 314, -- Rockfleece
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 315, -- Rattlecage
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 316, -- Goldskin
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 317, -- Silks of the Victor
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 34, op = "==", value = 7 }, -- Damage Reduced by 5-7
      { index = 35, op = "==", value = 7 }, -- Magic Damage Reduced by 5-7
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 318, -- Heavenly Garb
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 319, -- Pelta Lunata
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 3 }, -- Smite: 2-3
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 320, -- Umbral Disk
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 4 }, -- Smite: 3-4
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 301-320
    {
      codes = "allitems",
      quality = "7",
      index = 301, -- Howltusk, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 302, -- Undead Crown, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 303, -- The Face of Horror, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 304, -- Greyform, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 305, -- Blinkbat's Form, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 306, -- The Centurion, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 307, -- Twitchthroe, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 308, -- Darkglow, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      { index = 35, op = "<=", value = (3 + (5-3)*0.7) }, -- Magic Damage Reduced by 3-5
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 309, -- Hawkmail, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 310, -- Sparking Mail, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 128, op = "<=", value = (10 + (14-10)*0.7) }, -- Attacker Takes Lightning Damage of 10-14
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 311, -- Venom Ward, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 312, -- Iceblink, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 313, -- Boneflesh, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 314, -- Rockfleece, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 315, -- Rattlecage, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 316, -- Goldskin, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 317, -- Silks of the Victor, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 34, op = "<=", value = (5 + (7-5)*0.7) }, -- Damage Reduced by 5-7
      { index = 35, op = "<=", value = (5 + (7-5)*0.7) }, -- Magic Damage Reduced by 5-7
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 318, -- Heavenly Garb, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 319, -- Pelta Lunata, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (2 + (3-2)*0.7) }, -- Smite: 2-3
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 320, -- Umbral Disk, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (3 + (4-3)*0.7) }, -- Smite: 3-4
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 321-340
    {
      codes = "allitems",
      quality = "7",
      index = 321, -- Stormguild
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 4 }, -- Smite: 3-4
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 322, -- Steelclash
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 8 }, -- Smite: 7-8
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 323, -- Bverrit Keep
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 7 }, -- Smite: 6-7
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 324, -- The Ward
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 50 }, -- All Resistances +30-50%
      { index = 388, op = "==", value = 6 }, -- Smite: 5-6
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 325, -- The Hand of Broc
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 326, -- Bloodfist
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      { index = 34, op = "==", value = 3 }, -- Damage Reduced by 1-3
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 327, -- Chance Guards
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 80, op = "==", value = 40 }, -- +25-40% Chance of Higher Quality Items
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 328, -- Magefist (fire)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 329, -- Frostburn
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 330, -- Hotspur
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 331, -- Gorefoot
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 140, op = "==", value = 5 }, -- Open Wounds Blood Visual +3-5
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 332, -- Treads of Cthon
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 357, op = "==", value = 10 }, -- +5-10% to Magic Skill Damage
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 333, -- Goblin Toe
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 334, -- Tearhaunch
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 335, -- Lenymo
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 85, op = "==", value = 10 }, -- +8-10% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 336, -- Snakecord
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 337, -- Nightsmoke
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 338, -- Goldwrap
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 79, op = "==", value = 20 }, -- 12-20% Extra Gold from Monsters
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 339, -- Bladebuckle
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 340, -- Wormskull
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 124, op = "==", value = 100 }, -- +50-100 to Attack Rating against Undead
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 321-340
    {
      codes = "allitems",
      quality = "7",
      index = 321, -- Stormguild, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (3 + (4-3)*0.7) }, -- Smite: 3-4
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 322, -- Steelclash, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (7 + (8-7)*0.7) }, -- Smite: 7-8
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 323, -- Bverrit Keep, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (6 + (7-6)*0.7) }, -- Smite: 6-7
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 324, -- The Ward, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (30 + (50-30)*0.7) }, -- All Resistances +30-50%
      { index = 388, op = "<=", value = (5 + (6-5)*0.7) }, -- Smite: 5-6
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 325, -- The Hand of Broc, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 326, -- Bloodfist, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      { index = 34, op = "<=", value = (1 + (3-1)*0.7) }, -- Damage Reduced by 1-3
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 327, -- Chance Guards, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 80, op = "<=", value = (25 + (40-25)*0.7) }, -- +25-40% Chance of Higher Quality Items
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 328, -- Magefist (fire), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 329, -- Frostburn, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 330, -- Hotspur, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 331, -- Gorefoot, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 140, op = "<=", value = (3 + (5-3)*0.7) }, -- Open Wounds Blood Visual +3-5
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 332, -- Treads of Cthon, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 357, op = "<=", value = (5 + (10-5)*0.7) }, -- +5-10% to Magic Skill Damage
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 333, -- Goblin Toe, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 334, -- Tearhaunch, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 335, -- Lenymo, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 85, op = "<=", value = (8 + (10-8)*0.7) }, -- +8-10% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 336, -- Snakecord, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 337, -- Nightsmoke, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 338, -- Goldwrap, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 79, op = "<=", value = (12 + (20-12)*0.7) }, -- 12-20% Extra Gold from Monsters
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 339, -- Bladebuckle, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 340, -- Wormskull, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 124, op = "<=", value = (50 + (100-50)*0.7) }, -- +50-100 to Attack Rating against Undead
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 341-360
    {
      codes = "allitems",
      quality = "7",
      index = 341, -- Wall of the Eyeless
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 85, op = "==", value = 5 }, -- +2-5% to Experience Gained
      { index = 388, op = "==", value = 6 }, -- Smite: 3-6
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 342, -- Swordback Hold
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 135, op = "==", value = 25 }, -- 15-25% Chance of Open Wounds
      { index = 140, op = "==", value = 5 }, -- Open Wounds Blood Visual +3-5
      { index = 388, op = "==", value = 12 }, -- Smite: 11-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 343, -- Peasant Crown
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 74, op = "==", value = 12 }, -- Replenish Life +6-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 344, -- Rockstopper
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 41, op = "==", value = 40 }, -- Lightning Resist +20-40%
      { index = 39, op = "==", value = 50 }, -- Fire Resist +20-50%
      { index = 43, op = "==", value = 40 }, -- Cold Resist +20-40%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 345, -- Stealskull
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 80, op = "==", value = 50 }, -- +30-50% Chance of Higher Quality Items
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 346, -- Darksight Helm
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 40 }, -- Fire Resist +20-40%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 347, -- Valkyrie Wing
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 83, op = "==", param = 0, value = 2 }, -- +1-2 to Amazon Skill Levels
      { index = 138, op = "==", value = 4 }, -- +2-4 to Mana after each Kill
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 348, -- Crown of Thieves
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 60, op = "==", value = 12 }, -- 9-12% Life stolen per hit
      { index = 79, op = "==", value = 25 }, -- 20-25% Extra Gold from Monsters
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 349, -- Blackhorn's Face
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 350, -- The Spirit Shroud
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 35, op = "==", value = 11 }, -- Magic Damage Reduced by 7-11
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 351, -- Skin of the Vipermagi
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 35 }, -- All Resistances +20-35%
      { index = 35, op = "==", value = 13 }, -- Magic Damage Reduced by 9-13
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 352, -- Skin of the Flayed One
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 74, op = "==", value = 25 }, -- Replenish Life +15-25
      { index = 60, op = "==", value = 7 }, -- 5-7% Life stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 353, -- Iron Pelt
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 35, op = "==", value = 16 }, -- Magic Damage Reduced by 10-16
      { index = 34, op = "==", value = 20 }, -- Damage Reduced by 15-20
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 354, -- Spirit Forge
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 355, -- Crow Caw
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 356, -- Shaftstop
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 34, op = "==", value = 13 }, -- Damage Reduced by 9-13
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 357, -- Duriel's Shell
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 34, op = "==", value = 12 }, -- Damage Reduced by 8-12
      { index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 8-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 358, -- Skullder's Ire
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 359, -- Guardian Angel
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 34, op = "==", value = 15 }, -- Damage Reduced by 7-15
      { index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 7-15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 360, -- Toothrow
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 78, op = "==", value = 40 }, -- Attacker Takes Damage of 20-40
      { index = 135, op = "==", value = 15 }, -- 10-15% Chance of Open Wounds
      { index = 34, op = "==", value = 12 }, -- Damage Reduced by 8-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 341-360
    {
      codes = "allitems",
      quality = "7",
      index = 341, -- Wall of the Eyeless, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 85, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% to Experience Gained
      { index = 388, op = "<=", value = (3 + (6-3)*0.7) }, -- Smite: 3-6
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 342, -- Swordback Hold, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 135, op = "<=", value = (15 + (25-15)*0.7) }, -- 15-25% Chance of Open Wounds
      { index = 140, op = "<=", value = (3 + (5-3)*0.7) }, -- Open Wounds Blood Visual +3-5
      { index = 388, op = "<=", value = (11 + (12-11)*0.7) }, -- Smite: 11-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 343, -- Peasant Crown, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 74, op = "<=", value = (6 + (12-6)*0.7) }, -- Replenish Life +6-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 344, -- Rockstopper, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 41, op = "<=", value = (20 + (40-20)*0.7) }, -- Lightning Resist +20-40%
      { index = 39, op = "<=", value = (20 + (50-20)*0.7) }, -- Fire Resist +20-50%
      { index = 43, op = "<=", value = (20 + (40-20)*0.7) }, -- Cold Resist +20-40%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 345, -- Stealskull, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 80, op = "<=", value = (30 + (50-30)*0.7) }, -- +30-50% Chance of Higher Quality Items
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 346, -- Darksight Helm, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (20 + (40-20)*0.7) }, -- Fire Resist +20-40%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 347, -- Valkyrie Wing, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 83, op = "<=", param = 0, value = (1 + (2-1)*0.7) }, -- +1-2 to Amazon Skill Levels
      { index = 138, op = "<=", value = (2 + (4-2)*0.7) }, -- +2-4 to Mana after each Kill
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 348, -- Crown of Thieves, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 60, op = "<=", value = (9 + (12-9)*0.7) }, -- 9-12% Life stolen per hit
      { index = 79, op = "<=", value = (20 + (25-20)*0.7) }, -- 20-25% Extra Gold from Monsters
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 349, -- Blackhorn's Face, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 350, -- The Spirit Shroud, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 35, op = "<=", value = (7 + (11-7)*0.7) }, -- Magic Damage Reduced by 7-11
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 351, -- Skin of the Vipermagi, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (20 + (35-20)*0.7) }, -- All Resistances +20-35%
      { index = 35, op = "<=", value = (9 + (13-9)*0.7) }, -- Magic Damage Reduced by 9-13
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 352, -- Skin of the Flayed One, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 74, op = "<=", value = (15 + (25-15)*0.7) }, -- Replenish Life +15-25
      { index = 60, op = "<=", value = (5 + (7-5)*0.7) }, -- 5-7% Life stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 353, -- Iron Pelt, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 35, op = "<=", value = (10 + (16-10)*0.7) }, -- Magic Damage Reduced by 10-16
      { index = 34, op = "<=", value = (15 + (20-15)*0.7) }, -- Damage Reduced by 15-20
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 354, -- Spirit Forge, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 355, -- Crow Caw, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 356, -- Shaftstop, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 34, op = "<=", value = (9 + (13-9)*0.7) }, -- Damage Reduced by 9-13
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 357, -- Duriel's Shell, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 34, op = "<=", value = (8 + (12-8)*0.7) }, -- Damage Reduced by 8-12
      { index = 35, op = "<=", value = (8 + (12-8)*0.7) }, -- Magic Damage Reduced by 8-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 358, -- Skullder's Ire, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 359, -- Guardian Angel, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 34, op = "<=", value = (7 + (15-7)*0.7) }, -- Damage Reduced by 7-15
      { index = 35, op = "<=", value = (7 + (15-7)*0.7) }, -- Magic Damage Reduced by 7-15
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 360, -- Toothrow, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 78, op = "<=", value = (20 + (40-20)*0.7) }, -- Attacker Takes Damage of 20-40
      { index = 135, op = "<=", value = (10 + (15-10)*0.7) }, -- 10-15% Chance of Open Wounds
      { index = 34, op = "<=", value = (8 + (12-8)*0.7) }, -- Damage Reduced by 8-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 361-380
    {
      codes = "allitems",
      quality = "7",
      index = 361, -- Atma's Wail
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 362, -- Black Hades
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 123, op = "==", value = 250 }, -- +200-250 to Attack Rating against Demons
      { index = 121, op = "==", value = 60 }, -- +30-60% Damage to Demons
      { index = 34, op = "==", value = 15 }, -- Damage Reduced by 10-15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 363, -- Corpsemourn
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 364, -- Que-Hegan's Wisdom
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 6-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 365, -- Visceratuant
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 13 }, -- Smite: 12-13
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 366, -- Moser's Blessed Circle
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 15 }, -- Smite: 14-15
      { index = 34, op = "==", value = 10 }, -- Damage Reduced by 5-10
      { index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 5-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 367, -- Stormchaser
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 15 }, -- Smite: 11-15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 368, -- Tiamat's Rebuke
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 35 }, -- All Resistances +25-35%
      { index = 388, op = "==", value = 27 }, -- Smite: 26-27
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 369, -- Gerke's Sanctuary
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 34, op = "==", value = 20 }, -- Damage Reduced by 15-20
      { index = 35, op = "==", value = 23 }, -- Magic Damage Reduced by 18-23
      { index = 39, op = "==", value = 35 }, -- All Resistances +25-35%
      { index = 388, op = "==", value = 20 }, -- Smite: 19-20
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 370, -- Radament's Sphere
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 17 }, -- Smite: 16-17
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 371, -- Venom Grip
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 372, -- Gravepalm
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 122, op = "==", value = 200 }, -- +100-200% Damage to Undead
      { index = 124, op = "==", value = 200 }, -- +100-200 to Attack Rating against Undead
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 373, -- Ghoulhide
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 62, op = "==", value = 5 }, -- 4-5% Mana stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 374, -- Lava Gout
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 375, -- Hellmouth
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 35, op = "==", value = 6 }, -- Magic Damage Reduced by 4-6
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 376, -- Infernostride
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 79, op = "==", value = 20 }, -- 10-20% Extra Gold from Monsters
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 377, -- Waterwalk
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 7, op = "==", value = 65*256 }, -- +45-65 to Life
      { index = 74, op = "==", value = 10 }, -- Replenish Life +5-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 378, -- Silkweave
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 379, -- War Traveler
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 80, op = "==", value = 50 }, -- +30-50% Chance of Higher Quality Items
      { index = 78, op = "==", value = 10 }, -- Attacker Takes Damage of 5-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 380, -- Gore Rider
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 135, op = "==", value = 10 }, -- 5-10% Chance of Open Wounds
      { index = 34, op = "==", value = 5 }, -- Damage Reduced by 0-5
      { index = 35, op = "==", value = 5 }, -- Magic Damage Reduced by 0-5
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 361-380
    {
      codes = "allitems",
      quality = "7",
      index = 361, -- Atma's Wail, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 362, -- Black Hades, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 123, op = "<=", value = (200 + (250-200)*0.7) }, -- +200-250 to Attack Rating against Demons
      { index = 121, op = "<=", value = (30 + (60-30)*0.7) }, -- +30-60% Damage to Demons
      { index = 34, op = "<=", value = (10 + (15-10)*0.7) }, -- Damage Reduced by 10-15
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 363, -- Corpsemourn, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 364, -- Que-Hegan's Wisdom, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 35, op = "<=", value = (6 + (10-6)*0.7) }, -- Magic Damage Reduced by 6-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 365, -- Visceratuant, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (12 + (13-12)*0.7) }, -- Smite: 12-13
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 366, -- Moser's Blessed Circle, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (14 + (15-14)*0.7) }, -- Smite: 14-15
      { index = 34, op = "<=", value = (5 + (10-5)*0.7) }, -- Damage Reduced by 5-10
      { index = 35, op = "<=", value = (5 + (10-5)*0.7) }, -- Magic Damage Reduced by 5-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 367, -- Stormchaser, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (11 + (15-11)*0.7) }, -- Smite: 11-15
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 368, -- Tiamat's Rebuke, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (25 + (35-25)*0.7) }, -- All Resistances +25-35%
      { index = 388, op = "<=", value = (26 + (27-26)*0.7) }, -- Smite: 26-27
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 369, -- Gerke's Sanctuary, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 34, op = "<=", value = (15 + (20-15)*0.7) }, -- Damage Reduced by 15-20
      { index = 35, op = "<=", value = (18 + (23-18)*0.7) }, -- Magic Damage Reduced by 18-23
      { index = 39, op = "<=", value = (25 + (35-25)*0.7) }, -- All Resistances +25-35%
      { index = 388, op = "<=", value = (19 + (20-19)*0.7) }, -- Smite: 19-20
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 370, -- Radament's Sphere, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (16 + (17-16)*0.7) }, -- Smite: 16-17
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 371, -- Venom Grip, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 372, -- Gravepalm, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 122, op = "<=", value = (100 + (200-100)*0.7) }, -- +100-200% Damage to Undead
      { index = 124, op = "<=", value = (100 + (200-100)*0.7) }, -- +100-200 to Attack Rating against Undead
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 373, -- Ghoulhide, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 62, op = "<=", value = (4 + (5-4)*0.7) }, -- 4-5% Mana stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 374, -- Lava Gout, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 375, -- Hellmouth, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 35, op = "<=", value = (4 + (6-4)*0.7) }, -- Magic Damage Reduced by 4-6
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 376, -- Infernostride, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 79, op = "<=", value = (10 + (20-10)*0.7) }, -- 10-20% Extra Gold from Monsters
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 377, -- Waterwalk, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 7, op = "<=", value = ((45 + (65-45)*0.7) * 256) }, -- +45-65 to Life
      { index = 74, op = "<=", value = (5 + (10-5)*0.7) }, -- Replenish Life +5-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 378, -- Silkweave, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 379, -- War Traveler, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 80, op = "<=", value = (30 + (50-30)*0.7) }, -- +30-50% Chance of Higher Quality Items
      { index = 78, op = "<=", value = (5 + (10-5)*0.7) }, -- Attacker Takes Damage of 5-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 380, -- Gore Rider, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 135, op = "<=", value = (5 + (10-5)*0.7) }, -- 5-10% Chance of Open Wounds
      { index = 34, op = "<=", value = (0 + (5-0)*0.7) }, -- Damage Reduced by 0-5
      { index = 35, op = "<=", value = (0 + (5-0)*0.7) }, -- Magic Damage Reduced by 0-5
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 381-400
    {
      codes = "allitems",
      quality = "7",
      index = 381, -- String of Ears
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 10-15
      { index = 36, op = "==", value = 15 }, -- Damage Reduced by 10-15%
      { index = 60, op = "==", value = 8 }, -- 6-8% Life stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 382, -- Razortail
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 383, -- Gloom's Trap
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 77, op = "==", value = 20 }, -- Increase Maximum Mana by 15-20%
      { index = 62, op = "==", value = 8 }, -- 5-8% Mana stolen per hit
      { index = 3, op = "==", value = 20 }, -- +15-20 to Vitality
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 384, -- Snowclash
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 385, -- Thundergod's Vigor
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 386, -- Vampire Gaze
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 60, op = "==", value = 8 }, -- 6-8% Life stolen per hit
      { index = 62, op = "==", value = 8 }, -- 6-8% Mana stolen per hit
      { index = 36, op = "==", value = 20 }, -- Damage Reduced by 15-20%
      { index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 10-15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 387, -- Lidless Wall
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 138, op = "==", value = 5 }, -- +3-5 to Mana after each Kill
      { index = 388, op = "==", value = 20 }, -- Smite: 14-20
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 388, -- Lance Guard
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 36 }, -- Smite: 35-36
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 389, -- Primal Power
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 3, op = "==", value = 15 }, -- +5-15 to Vitality
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 390, -- Murder of Crows
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 283, op = "==", value = 2 }, -- +1-2 Summoning Power
      { index = 403, op = "==", value = 55 }, -- Increase Raven Damage by 45-55%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 391, -- Cheetah Stance
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 96, op = "==", value = 10 }, -- +5-10% Faster Run/Walk
      { index = 99, op = "==", value = 20 }, -- +10-20% Faster Hit Recovery
      { index = 93, op = "==", value = 10 }, -- +5-10% Increased Attack Speed
      { index = 105, op = "==", value = 10 }, -- +5-10% Faster Cast Rate
      { index = 0, op = "==", value = 10 }, -- + -5-10 to Strength
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 392, -- Uproar
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 393, -- Flame Spirit
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 93, op = "==", value = 20 }, -- +10-20% Increased Attack Speed
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 394, -- Toothless Maw
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 395, -- Darkfear
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 156, op = "==", value = 10 }, -- +5-10% Chance of Piercing Attack
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 396, -- Thermal Shock
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 335, op = "==", value = 10 }, -- -5-10% to Enemy Cold Resistance
      { index = 333, op = "==", value = 10 }, -- -5-10% to Enemy Fire Resistance
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 397, -- Nature's Protector
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 15 }, -- All Resistances +10-15%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 398, -- Reckless Fury
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 399, -- Siggard's Stealth
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 7 }, -- Smite: 6-7
      { index = 96, op = "==", value = 10 }, -- +5-10% Faster Run/Walk
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 400, -- Caster's Courage
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 9 }, -- Smite: 8-9
      { index = 1, op = "==", value = 15 }, -- +10-15 to Energy
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 381-400
    {
      codes = "allitems",
      quality = "7",
      index = 381, -- String of Ears, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 35, op = "<=", value = (10 + (15-10)*0.7) }, -- Magic Damage Reduced by 10-15
      { index = 36, op = "<=", value = (10 + (15-10)*0.7) }, -- Damage Reduced by 10-15%
      { index = 60, op = "<=", value = (6 + (8-6)*0.7) }, -- 6-8% Life stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 382, -- Razortail, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 383, -- Gloom's Trap, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 77, op = "<=", value = (15 + (20-15)*0.7) }, -- Increase Maximum Mana by 15-20%
      { index = 62, op = "<=", value = (5 + (8-5)*0.7) }, -- 5-8% Mana stolen per hit
      { index = 3, op = "<=", value = (15 + (20-15)*0.7) }, -- +15-20 to Vitality
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 384, -- Snowclash, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 385, -- Thundergod's Vigor, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 386, -- Vampire Gaze, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 60, op = "<=", value = (6 + (8-6)*0.7) }, -- 6-8% Life stolen per hit
      { index = 62, op = "<=", value = (6 + (8-6)*0.7) }, -- 6-8% Mana stolen per hit
      { index = 36, op = "<=", value = (15 + (20-15)*0.7) }, -- Damage Reduced by 15-20%
      { index = 35, op = "<=", value = (10 + (15-10)*0.7) }, -- Magic Damage Reduced by 10-15
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 387, -- Lidless Wall, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 138, op = "<=", value = (3 + (5-3)*0.7) }, -- +3-5 to Mana after each Kill
      { index = 388, op = "<=", value = (14 + (20-14)*0.7) }, -- Smite: 14-20
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 388, -- Lance Guard, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (35 + (36-35)*0.7) }, -- Smite: 35-36
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 389, -- Primal Power, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 3, op = "<=", value = (5 + (15-5)*0.7) }, -- +5-15 to Vitality
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 390, -- Murder of Crows, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 283, op = "<=", value = (1 + (2-1)*0.7) }, -- +1-2 Summoning Power
      { index = 403, op = "<=", value = (45 + (55-45)*0.7) }, -- Increase Raven Damage by 45-55%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 391, -- Cheetah Stance, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 96, op = "<=", value = (5 + (10-5)*0.7) }, -- +5-10% Faster Run/Walk
      { index = 99, op = "<=", value = (10 + (20-10)*0.7) }, -- +10-20% Faster Hit Recovery
      { index = 93, op = "<=", value = (5 + (10-5)*0.7) }, -- +5-10% Increased Attack Speed
      { index = 105, op = "<=", value = (5 + (10-5)*0.7) }, -- +5-10% Faster Cast Rate
      { index = 0, op = "<=", value = (-5 + (10-(-5))*0.7) }, -- + -5-10 to Strength
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 392, -- Uproar, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 393, -- Flame Spirit, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 93, op = "<=", value = (10 + (20-10)*0.7) }, -- +10-20% Increased Attack Speed
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 394, -- Toothless Maw, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 395, -- Darkfear, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 156, op = "<=", value = (5 + (10-5)*0.7) }, -- +5-10% Chance of Piercing Attack
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 396, -- Thermal Shock, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 335, op = "<=", value = (5 + (10-5)*0.7) }, -- -5-10% to Enemy Cold Resistance
      { index = 333, op = "<=", value = (5 + (10-5)*0.7) }, -- -5-10% to Enemy Fire Resistance
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 397, -- Nature's Protector, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (10 + (15-10)*0.7) }, -- All Resistances +10-15%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 398, -- Reckless Fury, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 399, -- Siggard's Stealth, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (6 + (7-6)*0.7) }, -- Smite: 6-7
      { index = 96, op = "<=", value = (5 + (10-5)*0.7) }, -- +5-10% Faster Run/Walk
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 400, -- Caster's Courage, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (8 + (9-8)*0.7) }, -- Smite: 8-9
      { index = 1, op = "<=", value = (10 + (15-10)*0.7) }, -- +10-15 to Energy
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 401-420
    {
      codes = "allitems",
      quality = "7",
      index = 401, --Briar Patch
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 11 }, -- Smite: 10-11
      { index = 3, op = "==", value = 15 }, -- +10-15 to Vitality
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 402, --Ricochet
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 13 }, -- Smite: 12-13
      { index = 93, op = "==", value = 20 }, -- +10-20% Increased Attack Speed
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 403, --Favored Path
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 17 }, -- Smite: 16-17
      { index = 39, op = "==", value = 20 }, -- All Resistances +10-20%
      { index = 329, op = "==", value = 10 }, -- +0-10% to Fire Skill Damage
      { index = 330, op = "==", value = 10 }, -- +0-10% to Lightning Skill Damage
      { index = 331, op = "==", value = 10 }, -- +0-10% to Cold Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 404, --Old Friend
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 405, --Decomposed
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 45, op = "==", value = 30 }, -- Poison Resist +20-30%
      { index = 102, op = "==", value = 27 }, -- +16-27% Faster Block Rate
      { index = 43, op = "==", value = 15 }, -- Cold Resist +10-15%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 406, --Tangled Fellow
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 9, op = "==", value = 25*256 }, -- +15-25 to Mana
      { index = 20, op = "==", value = 12 }, -- +3-4% Chance to Block (value 11-12)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 407, --Stubborn Stone
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 284, op = "==", value = 8 }, -- Summon Max HP: +6-8%
      { index = 7, op = "==", value = 25*256 }, -- +15-25 to Life
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 408, --Spiked Dreamcatcher
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 332, op = "==", value = 6 }, -- +4-6% to Poison Skill Damage
      { index = 357, op = "==", value = 6 }, -- +4-6% to Magic Skill Damage
      { index = 78, op = "==", value = 7 }, -- Attacker Takes Damage of 6-7
      { index = 2, op = "==", value = 14 }, -- +8-14 to Dexterity
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 409, --Journeyman's Band
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 415, op = "==", value = 5 }, -- Increase charm max weight by 3-5
      { index = 142, op = "==", value = 3 }, -- Fire Absorb 1-3%
      { index = 148, op = "==", value = 3 }, -- Cold Absorb 1-3%
      { index = 144, op = "==", value = 3 }, -- Lightning Absorb 1-3%
      { index = 0, op = "==", value = 15 }, -- +10-15 to Strength
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 410, --Hygieia's Purity
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 415, op = "==", value = 5 }, -- Increase charm max weight by 3-5
      { index = 151, op = "==", param = 109, value = 8 }, -- Level 5-8 Clear Ailment Aura When Equipped
      { index = 286, op = "==", value = 40 }, -- Reduce Cooldowns by 30-40%
      { index = 276, op = "==", value = 3 }, -- +1-3 Spell Power
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 411, --Kira's Guardian
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 70 }, -- All Resistances +50-70%
      { index = 415, op = "==", value = 5 }, -- Increase charm max weight by 3-5
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 412, --Griffon's Eye
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 330, op = "==", value = 15 }, -- +10-15% to Lightning Skill Damage
      { index = 334, op = "==", value = 20 }, -- -15-20% to Enemy Lightning 
      { index = 415, op = "==", value = 5 }, -- Increase charm max weight by 3-5
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 413, --Harlequin Crest
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 414, --Tarnhelm's Revenge
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 0, op = "==", value = 35 }, -- +20-35 to Strength
      { index = 187, op = "==", value = 15 }, -- Enemy cold immunity reduced by 5-15%
      { index = 189, op = "==", value = 15 }, -- Enemy Fire Immunity Reduced by 5-15%
      { index = 190, op = "==", value = 15 }, -- Enemy Lighting Immunity Reduced by 5-15%
      { index = 191, op = "==", value = 15 }, -- Enemy Poison Immunity Reduced by 5-15%
      { index = 192, op = "==", value = 15 }, -- Enemy Physical Immunity Reduced by 5-15%
      { index = 193, op = "==", value = 15 }, -- Enemy Magic Immunity Reduced by 5-15%
      { index = 396, op = "==", value = 8 }, -- +4-8 Mana Stolen per Hit 
      { index = 397, op = "==", value = 8 }, -- +4-8 Life Stolen Per Hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 415, --Steel Shade
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 143, op = "==", value = 11 }, -- +5-11 Fire Absorb
      { index = 62, op = "==", value = 8 }, -- 4-8% Mana stolen per hit
      { index = 74, op = "==", value = 18 }, -- Replenish Life +10-18
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 416, --Veil of Steel
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 417, --Nightwing's Veil
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 2, op = "==", value = 20 }, -- +10-20 to Dexterity
      { index = 149, op = "==", value = 9 }, -- +5-9 Cold Absorb
      { index = 331, op = "==", value = 15 }, -- +8-15% to Cold Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 418, --Crown of Ages
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 30 }, -- All Resistances +20-30%
      { index = 36, op = "==", value = 15 }, -- Damage Reduced by 10-15%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 419, --Andariel's Visage
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 0, op = "==", value = 30 }, -- +25-30 to Strength
      { index = 60, op = "==", value = 10 }, -- 8-10% Life stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 420, --Ormus' Robes
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 329, op = "==", value = 15 }, -- +10-15% to Fire Skill Damage
      { index = 330, op = "==", value = 15 }, -- +10-15% to Lightning Skill Damage
      { index = 331, op = "==", value = 15 }, -- +10-15% to Cold Skill Damage
      { index = 27, op = "==", value = 15 }, -- Regenerate Mana 10-15%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 401-420
    {
      codes = "allitems",
      quality = "7",
      index = 401, --Briar Patch, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (10 + (11-10)*0.7) }, -- Smite: 10-11
      { index = 3, op = "<=", value = (10 + (15-10)*0.7) }, -- +10-15 to Vitality
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 402, --Ricochet, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (12 + (13-12)*0.7) }, -- Smite: 12-13
      { index = 93, op = "<=", value = (10 + (20-10)*0.7) }, -- +10-20% Increased Attack Speed
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 403, --Favored Path, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (16 + (17-16)*0.7) }, -- Smite: 16-17
      { index = 39, op = "<=", value = (10 + (20-10)*0.7) }, -- All Resistances +10-20%
      { index = 329, op = "<=", value = (0 + (10-0)*0.7) }, -- +0-10% to Fire Skill Damage
      { index = 330, op = "<=", value = (0 + (10-0)*0.7) }, -- +0-10% to Lightning Skill Damage
      { index = 331, op = "<=", value = (0 + (10-0)*0.7) }, -- +0-10% to Cold Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 404, --Old Friend, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 405, --Decomposed, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 45, op = "<=", value = (20 + (30-20)*0.7) }, -- Poison Resist +20-30%
      { index = 102, op = "<=", value = (16 + (27-16)*0.7) }, -- +16-27% Faster Block Rate
      { index = 43, op = "<=", value = (10 + (15-10)*0.7) }, -- Cold Resist +10-15%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 406, --Tangled Fellow, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 9, op = "<=", value = ((15 + (25-15)*0.7) * 256) }, -- +15-25 to Mana
      { index = 20, op = "<=", value = (11 + (12-11)*0.7) }, -- +3-4% Chance to Block (value 11-12)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 407, --Stubborn Stone, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 284, op = "<=", value = (6 + (8-6)*0.7) }, -- Summon Max HP: +6-8%
      { index = 7, op = "<=", value = ((15 + (25-15)*0.7) * 256) }, -- +15-25 to Life
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 408, --Spiked Dreamcatcher, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 332, op = "<=", value = (4 + (6-4)*0.7) }, -- +4-6% to Poison Skill Damage
      { index = 357, op = "<=", value = (4 + (6-4)*0.7) }, -- +4-6% to Magic Skill Damage
      { index = 78, op = "<=", value = (6 + (7-6)*0.7) }, -- Attacker Takes Damage of 6-7
      { index = 2, op = "<=", value = (8 + (14-8)*0.7) }, -- +8-14 to Dexterity
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 409, --Journeyman's Band, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 415, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase charm max weight by 3-5
      { index = 142, op = "<=", value = (1 + (3-1)*0.7) }, -- Fire Absorb 1-3%
      { index = 148, op = "<=", value = (1 + (3-1)*0.7) }, -- Cold Absorb 1-3%
      { index = 144, op = "<=", value = (1 + (3-1)*0.7) }, -- Lightning Absorb 1-3%
      { index = 0, op = "<=", value = (10 + (15-10)*0.7) }, -- +10-15 to Strength
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 410, --Hygieia's Purity, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 415, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase charm max weight by 3-5
      { index = 151, op = "<=", param = 109, value = (5 + (8-5)*0.7) }, -- Level 5-8 Clear Ailment Aura When Equipped
      { index = 286, op = "<=", value = (30 + (40-30)*0.7) }, -- Reduce Cooldowns by 30-40%
      { index = 276, op = "<=", value = (1 + (3-1)*0.7) }, -- +1-3 Spell Power
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 411, --Kira's Guardian, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (50 + (70-50)*0.7) }, -- All Resistances +50-70%
      { index = 415, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase charm max weight by 3-5
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 412, --Griffon's Eye, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 330, op = "<=", value = (10 + (15-10)*0.7) }, -- +10-15% to Lightning Skill Damage
      { index = 334, op = "<=", value = (15 + (20-15)*0.7) }, -- -15-20% to Enemy Lightning 
      { index = 415, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase charm max weight by 3-5
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 413, --Harlequin Crest, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 414, --Tarnhelm's Revenge, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 0, op = "<=", value = (20 + (35-20)*0.7) }, -- +20-35 to Strength
      { index = 187, op = "<=", value = (5 + (15-5)*0.7) }, -- Enemy cold immunity reduced by 5-15%
      { index = 189, op = "<=", value = (5 + (15-5)*0.7) }, -- Enemy Fire Immunity Reduced by 5-15%
      { index = 190, op = "<=", value = (5 + (15-5)*0.7) }, -- Enemy Lighting Immunity Reduced by 5-15%
      { index = 191, op = "<=", value = (5 + (15-5)*0.7) }, -- Enemy Poison Immunity Reduced by 5-15%
      { index = 192, op = "<=", value = (5 + (15-5)*0.7) }, -- Enemy Physical Immunity Reduced by 5-15%
      { index = 193, op = "<=", value = (5 + (15-5)*0.7) }, -- Enemy Magic Immunity Reduced by 5-15%
      { index = 396, op = "<=", value = (4 + (8-4)*0.7) }, -- +4-8 Mana Stolen per Hit 
      { index = 397, op = "<=", value = (4 + (8-4)*0.7) }, -- +4-8 Life Stolen Per Hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 415, --Steel Shade, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 143, op = "<=", value = (5 + (11-5)*0.7) }, -- +5-11 Fire Absorb
      { index = 62, op = "<=", value = (4 + (8-4)*0.7) }, -- 4-8% Mana stolen per hit
      { index = 74, op = "<=", value = (10 + (18-10)*0.7) }, -- Replenish Life +10-18
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 416, --Veil of Steel, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 417, --Nightwing's Veil, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 2, op = "<=", value = (10 + (20-10)*0.7) }, -- +10-20 to Dexterity
      { index = 149, op = "<=", value = (5 + (9-5)*0.7) }, -- +5-9 Cold Absorb
      { index = 331, op = "<=", value = (8 + (15-8)*0.7) }, -- +8-15% to Cold Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 418, --Crown of Ages, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (20 + (30-20)*0.7) }, -- All Resistances +20-30%
      { index = 36, op = "<=", value = (10 + (15-10)*0.7) }, -- Damage Reduced by 10-15%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 419, --Andariel's Visage, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 0, op = "<=", value = (25 + (30-25)*0.7) }, -- +25-30 to Strength
      { index = 60, op = "<=", value = (8 + (10-8)*0.7) }, -- 8-10% Life stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 420, --Ormus' Robes, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 329, op = "<=", value = (10 + (15-10)*0.7) }, -- +10-15% to Fire Skill Damage
      { index = 330, op = "<=", value = (10 + (15-10)*0.7) }, -- +10-15% to Lightning Skill Damage
      { index = 331, op = "<=", value = (10 + (15-10)*0.7) }, -- +10-15% to Cold Skill Damage
      { index = 27, op = "<=", value = (10 + (15-10)*0.7) }, -- Regenerate Mana 10-15%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 421-440
    {
      codes = "allitems",
      quality = "7",
      index = 421, --Arcane Protector
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 20 }, -- All Resistances +15-20%
      { index = 107, op = "==", param = 58, value = 5 }, -- +3-5 to Energy Shield (Sorceress only)
      { index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 5-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 422, --Spell Splitter
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 276, op = "==", value = 3 }, -- +1-3 Spell Power
      { index = 286, op = "==", value = 40 }, -- Reduce Cooldowns by 25-40%
      { index = 333, op = "==", value = 25 }, -- -15-25% to Enemy Fire Resistance
      { index = 334, op = "==", value = 25 }, -- -15-25% to Enemy Lightning Resistance
      { index = 335, op = "==", value = 25 }, -- -15-25% to Enemy Cold Resistance
      { index = 336, op = "==", value = 25 }, -- -15-25% to Enemy Poison Resistance
      { index = 80, op = "==", value = 35 }, -- +25-35% Chance of Higher Quality Items
      { index = 415, op = "==", value = 6 }, -- Increase charm max weight by 3-6
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 423, --The Gladiator's Bane
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 34, op = "==", value = 20 }, -- Damage Reduced by 15-20
      { index = 35, op = "==", value = 20 }, -- Magic Damage Reduced by 15-20
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 424, --Balled Lightning
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 25 }, -- All Resistances +15-25
      { index = 79, op = "==", value = 20 }, -- 10-20% Extra Gold from Monsters
      { index = 96, op = "==", value = 30 }, -- +20-30% Faster Run/Walk
      { index = 27, op = "==", value = 50 }, -- Regenerate Mana 25-50%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 425, -- Giant Crusher
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 83, op = "==", param = 4, value = 2 }, -- +1-2 to Barbarian Skill Levels
      { index = 262, op = "==", value = 10 }, -- Increase Strength by +5-10%
      { index = 36, op = "==", value = 10 }, -- Damage Reduced by 5-10%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 426, -- Chained Lightning
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 217, op = "==", value = 2048*2 }, -- +1-2 Mana per level
      { index = 107, op = "==", param = 53, value = 6 }, -- +3-6 to Chain Lightning (Sorceress only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 427, -- Savitr's Garb
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 99, op = "==", value = 24 }, -- +12-24% Faster Hit Recovery
      { index = 286, op = "==", value = 20 }, -- Reduce Cooldowns by 10-20%
      { index = 278, op = "==", value = 5 }, -- +3-5 Combat Power
      { index = 119, op = "==", value = 10 }, -- 5-10% Bonus to Attack Rating
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 428, -- Arkaine's Valor
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 127, op = "==", value = 2 }, -- +1-2 to All Skills
      { index = 34, op = "==", value = 25 }, -- Damage Reduced by 20-25
      { index = 35, op = "==", value = 25 }, -- Magic Damage Reduced by 20-25
      { index = 96, op = "==", value = 30 }, -- +20-30% Faster Run/Walk
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 429, -- Strength Unleashed
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 262, op = "==", value = 15 }, -- Increase Strength by +5-15%
      { index = 278, op = "==", value = 3 }, -- +1-3 Combat Power
      { index = 76, op = "==", value = 5 }, -- Increase Maximum Life by 3-5%
      { index = 415, op = "==", value = 4 }, -- Increase charm max weight by 2-4
      { index = 34, op = "==", value = 15 }, -- Damage Reduced by 5-15
      { index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 5-15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 430, -- Leviathan
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 36, op = "==", value = 25 }, -- Damage Reduced by 15-25%
      { index = 0, op = "==", value = 50 }, -- +40-50 to Strength
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 431, -- Duality
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 16, op = "==", value = 240 }, -- +200-240% Enhanced Defense
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      --{ index = 91, op = "==", value = -35 }, -- Requirements -35%
      --{ index = 96, op = "==", value = 25 }, -- +25% Faster Run/Walk
      { index = 136, op = "==", value = 20 }, -- 10-20% Chance of Crushing Blow
      { index = 286, op = "==", value = 25 }, -- Reduce Cooldowns by 15-25%
      { index = 187, op = "==", value = 20 }, -- Enemy Cold Immunity Reduced by 10-20%
      { index = 189, op = "==", value = 20 }, -- Enemy Fire Immunity Reduced by 10-20%
      { index = 190, op = "==", value = 20 }, -- Enemy Lighting Immunity Reduced by 10-20%
      { index = 191, op = "==", value = 20 }, -- Enemy Poison Immunity Reduced by 10-20%
      { index = 192, op = "==", value = 20 }, -- Enemy Physical Immunity Reduced by 10-20%
      { index = 193, op = "==", value = 20 }, -- Enemy Magic Immunity Reduced by 10-20%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 432, -- Steel Carapace
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 34, op = "==", value = 14 }, -- Damage Reduced by 9-14
      { index = 43, op = "==", value = 60 }, -- Cold Resist +40-60%
      { index = 27, op = "==", value = 15 }, -- Regenerate Mana 10-15%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 433, -- Tyrael's Might
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 121, op = "==", value = 100 }, -- +50-100% Damage to Demons
      { index = 39, op = "==", value = 30 }, -- All Resistances +20-30%
      { index = 415, op = "==", value = 10 }, -- Increase charm max weight by 5-10
      { index = 97, op = "==", param = 100, value = 7 }, -- +3-7 to Consecrated Ground
      { index = 142, op = "==", value = 5 }, -- +2-5% Magic, Fire, Light, Cold Absorb
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 434, -- Spiritual Protector
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 7, op = "==", value = 100*256 }, -- +50-100 to Life
      { index = 76, op = "==", value = 10 }, -- Increase Maximum Life by 5-10%
      { index = 187, op = "==", value = 50 }, -- Enemy cold immunity reduced by 30-50%
      { index = 40, op = "==", value = 5 }, -- +3-5% to Maximum Fire Resist
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 435, -- Cleansing Ward
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 262, op = "==", value = 5 }, -- Increase Strength by +3-5%
      { index = 263, op = "==", value = 5 }, -- Increase Dexterity by +3-5%
      { index = 264, op = "==", value = 5 }, -- Increase Vitality by +3-5%
      { index = 265, op = "==", value = 5 }, -- Increase Energy by +3-5%
      { index = 388, op = "==", value = 37 }, -- Smite: 36-37
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 436, -- Blackoak Shield
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 40 }, -- Smite: 39-40
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 437, -- Astrogha's Web
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 86, op = "==", value = 7 }, -- +3-7 Life after each Kill
      { index = 138, op = "==", value = 5 }, -- +3-5 to Mana after each Kill
      { index = 283, op = "==", value = 3 }, -- +1-3 Summoning Power
      { index = 105, op = "==", value = 25 }, -- +15-25% Faster Cast Rate
      { index = 40, op = "==", value = 5 }, -- +1-5% to Maximum Fire Resist
      { index = 388, op = "==", value = 44 }, -- Smite: 41-44
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 438, -- Stormshield
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 61 }, -- Smite: 60-61
      { index = 34, op = "==", value = 13 }, -- Damage Reduced by 7-13
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 439, -- Medusa's Gaze
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 60, op = "==", value = 9 }, -- 5-9% Life stolen per hit
      { index = 43, op = "==", value = 80 }, -- Cold Resist +40-80%
      { index = 388, op = "==", value = 49 }, -- Smite: 48-49
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 440, -- Spirit Ward
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 149, op = "==", value = 11 }, -- +6-11 Cold Absorb
      { index = 39, op = "==", value = 40 }, -- All Resistances +30-40%
      { index = 20, op = "==", value = 54 }, -- 20-30% Chance to Block (value 44-54)
      { index = 388, op = "==", value = 43 }, -- Smite: 42-43
      { index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 8-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 421-440
    {
      codes = "allitems",
      quality = "7",
      index = 421, --Arcane Protector, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (15 + (20-15)*0.7) }, -- All Resistances +15-20%
      { index = 107, op = "<=", param = 58, value = (3 + (5-3)*0.7) }, -- +3-5 to Energy Shield (Sorceress only)
      { index = 35, op = "<=", value = (5 + (10-5)*0.7) }, -- Magic Damage Reduced by 5-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 422, --Spell Splitter, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 276, op = "<=", value = (1 + (3-1)*0.7) }, -- +1-3 Spell Power
      { index = 286, op = "<=", value = (25 + (40-25)*0.7) }, -- Reduce Cooldowns by 25-40%
      { index = 333, op = "<=", value = (15 + (25-15)*0.7) }, -- -15-25% to Enemy Fire Resistance
      { index = 334, op = "<=", value = (15 + (25-15)*0.7) }, -- -15-25% to Enemy Lightning Resistance
      { index = 335, op = "<=", value = (15 + (25-15)*0.7) }, -- -15-25% to Enemy Cold Resistance
      { index = 336, op = "<=", value = (15 + (25-15)*0.7) }, -- -15-25% to Enemy Poison Resistance
      { index = 80, op = "<=", value = (25 + (35-25)*0.7) }, -- +25-35% Chance of Higher Quality Items
      { index = 415, op = "<=", value = (3 + (6-3)*0.7) }, -- Increase charm max weight by 3-6
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 423, --The Gladiator's Bane, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 34, op = "<=", value = (15 + (20-15)*0.7) }, -- Damage Reduced by 15-20
      { index = 35, op = "<=", value = (15 + (20-15)*0.7) }, -- Magic Damage Reduced by 15-20
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 424, --Balled Lightning, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (15 + (25-15)*0.7) }, -- All Resistances +15-25
      { index = 79, op = "<=", value = (10 + (20-10)*0.7) }, -- 10-20% Extra Gold from Monsters
      { index = 96, op = "<=", value = (20 + (30-20)*0.7) }, -- +20-30% Faster Run/Walk
      { index = 27, op = "<=", value = (25 + (50-25)*0.7) }, -- Regenerate Mana 25-50%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 425, -- Giant Crusher, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 83, op = "<=", param = 4, value = (1 + (2-1)*0.7) }, -- +1-2 to Barbarian Skill Levels
      { index = 262, op = "<=", value = (5 + (10-5)*0.7) }, -- Increase Strength by +5-10%
      { index = 36, op = "<=", value = (5 + (10-5)*0.7) }, -- Damage Reduced by 5-10%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 426, -- Chained Lightning, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 217, op = "<=", value = ((1 + (2-1)*0.7) * 2048) }, -- +1-2 Mana per level
      { index = 107, op = "<=", param = 53, value = (3 + (6-3)*0.7) }, -- +3-6 to Chain Lightning (Sorceress only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 427, -- Savitr's Garb, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 99, op = "<=", value = (12 + (24-12)*0.7) }, -- +12-24% Faster Hit Recovery
      { index = 286, op = "<=", value = (10 + (20-10)*0.7) }, -- Reduce Cooldowns by 10-20%
      { index = 278, op = "<=", value = (3 + (5-3)*0.7) }, -- +3-5 Combat Power
      { index = 119, op = "<=", value = (5 + (10-5)*0.7) }, -- 5-10% Bonus to Attack Rating
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 428, -- Arkaine's Valor, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 127, op = "<=", value = (1 + (2-1)*0.7) }, -- +1-2 to All Skills
      { index = 34, op = "<=", value = (20 + (25-20)*0.7) }, -- Damage Reduced by 20-25
      { index = 35, op = "<=", value = (20 + (25-20)*0.7) }, -- Magic Damage Reduced by 20-25
      { index = 96, op = "<=", value = (20 + (30-20)*0.7) }, -- +20-30% Faster Run/Walk
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 429, -- Strength Unleashed, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 262, op = "<=", value = (5 + (15-5)*0.7) }, -- Increase Strength by +5-15%
      { index = 278, op = "<=", value = (1 + (3-1)*0.7) }, -- +1-3 Combat Power
      { index = 76, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase Maximum Life by 3-5%
      { index = 415, op = "<=", value = (2 + (4-2)*0.7) }, -- Increase charm max weight by 2-4
      { index = 34, op = "<=", value = (5 + (15-5)*0.7) }, -- Damage Reduced by 5-15
      { index = 35, op = "<=", value = (5 + (15-5)*0.7) }, -- Magic Damage Reduced by 5-15
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 430, -- Leviathan, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 36, op = "<=", value = (15 + (25-15)*0.7) }, -- Damage Reduced by 15-25%
      { index = 0, op = "<=", value = (40 + (50-40)*0.7) }, -- +40-50 to Strength
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 431, -- Duality, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 136, op = "<=", value = (10 + (20-10)*0.7) }, -- 10-20% Chance of Crushing Blow
      { index = 286, op = "<=", value = (15 + (25-15)*0.7) }, -- Reduce Cooldowns by 15-25%
      { index = 187, op = "<=", value = (10 + (20-10)*0.7) }, -- Enemy Cold Immunity Reduced by 10-20%
      { index = 189, op = "<=", value = (10 + (20-10)*0.7) }, -- Enemy Fire Immunity Reduced by 10-20%
      { index = 190, op = "<=", value = (10 + (20-10)*0.7) }, -- Enemy Lighting Immunity Reduced by 10-20%
      { index = 191, op = "<=", value = (10 + (20-10)*0.7) }, -- Enemy Poison Immunity Reduced by 10-20%
      { index = 192, op = "<=", value = (10 + (20-10)*0.7) }, -- Enemy Physical Immunity Reduced by 10-20%
      { index = 193, op = "<=", value = (10 + (20-10)*0.7) }, -- Enemy Magic Immunity Reduced by 10-20%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 432, -- Steel Carapace, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 34, op = "<=", value = (9 + (14-9)*0.7) }, -- Damage Reduced by 9-14
      { index = 43, op = "<=", value = (40 + (60-40)*0.7) }, -- Cold Resist +40-60%
      { index = 27, op = "<=", value = (10 + (15-10)*0.7) }, -- Regenerate Mana 10-15%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 433, -- Tyrael's Might, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 121, op = "<=", value = (50 + (100-50)*0.7) }, -- +50-100% Damage to Demons
      { index = 39, op = "<=", value = (20 + (30-20)*0.7) }, -- All Resistances +20-30%
      { index = 415, op = "<=", value = (5 + (10-5)*0.7) }, -- Increase charm max weight by 5-10
      { index = 97, op = "<=", param = 100, value = (3 + (7-3)*0.7) }, -- +3-7 to Consecrated Ground
      { index = 142, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5% Magic, Fire, Light, Cold Absorb
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 434, -- Spiritual Protector, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 7, op = "<=", value = ((50 + (100-50)*0.7) * 256) }, -- +50-100 to Life
      { index = 76, op = "<=", value = (5 + (10-5)*0.7) }, -- Increase Maximum Life by 5-10%
      { index = 187, op = "<=", value = (30 + (50-30)*0.7) }, -- Enemy cold immunity reduced by 30-50%
      { index = 40, op = "<=", value = (3 + (5-3)*0.7) }, -- +3-5% to Maximum Fire Resist
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 435, -- Cleansing Ward, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 262, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase Strength by +3-5%
      { index = 263, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase Dexterity by +3-5%
      { index = 264, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase Vitality by +3-5%
      { index = 265, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase Energy by +3-5%
      { index = 388, op = "<=", value = (36 + (37-36)*0.7) }, -- Smite: 36-37
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 436, -- Blackoak Shield, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (39 + (40-39)*0.7) }, -- Smite: 39-40
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 437, -- Astrogha's Web, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 86, op = "<=", value = (3 + (7-3)*0.7) }, -- +3-7 Life after each Kill
      { index = 138, op = "<=", value = (3 + (5-3)*0.7) }, -- +3-5 to Mana after each Kill
      { index = 283, op = "<=", value = (1 + (3-1)*0.7) }, -- +1-3 Summoning Power
      { index = 105, op = "<=", value = (15 + (25-15)*0.7) }, -- +15-25% Faster Cast Rate
      { index = 40, op = "<=", value = (1 + (5-1)*0.7) }, -- +1-5% to Maximum Fire Resist
      { index = 388, op = "<=", value = (41 + (44-41)*0.7) }, -- Smite: 41-44
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 438, -- Stormshield, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (60 + (61-60)*0.7) }, -- Smite: 60-61
      { index = 34, op = "<=", value = (7 + (13-7)*0.7) }, -- Damage Reduced by 7-13
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 439, -- Medusa's Gaze, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 60, op = "<=", value = (5 + (9-5)*0.7) }, -- 5-9% Life stolen per hit
      { index = 43, op = "<=", value = (40 + (80-40)*0.7) }, -- Cold Resist +40-80%
      { index = 388, op = "<=", value = (48 + (49-48)*0.7) }, -- Smite: 48-49
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 440, -- Spirit Ward, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 149, op = "<=", value = (6 + (11-6)*0.7) }, -- +6-11 Cold Absorb
      { index = 39, op = "<=", value = (30 + (40-30)*0.7) }, -- All Resistances +30-40%
      { index = 20, op = "<=", value = (44 + (54-44)*0.7) }, -- 20-30% Chance to Block (value 44-54)
      { index = 388, op = "<=", value = (42 + (43-42)*0.7) }, -- Smite: 42-43
      { index = 35, op = "<=", value = (8 + (10-8)*0.7) }, -- Magic Damage Reduced by 8-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 441-460
    {
      codes = "allitems",
      quality = "7",
      index = 441, -- Indra's Mark
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 330, op = "==", value = 15 }, -- +5-15% to Lightning Skill Damage
      { index = 286, op = "==", value = 20 }, -- Reduce Cooldowns by 10-20%
      { index = 144, op = "==", value = 10 }, -- Lightning Absorb 5-10%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 442, -- Dracul's Grasp
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 60, op = "==", value = 10 }, -- 7-10% Life stolen per hit
      { index = 86, op = "==", value = 10 }, -- +5-10 Life after each Kill
      { index = 0, op = "==", value = 15 }, -- +10-15 to Strength
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 443, -- Soul Drainer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 60, op = "==", value = 7 }, -- 4-7% Life stolen per hit
      { index = 62, op = "==", value = 7 }, -- 4-7% Mana stolen per hit
      { index = 97, op = "==", param = 386, value = 10 }, -- +3-10 to Unholy Barrage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 444, -- Carthas's Presence
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 85, op = "==", value = 10 }, -- +5-10% to Experience Gained
      { index = 74, op = "==", value = 10 }, -- Replenish Life +5-10
      { index = 333, op = "==", value = 15 }, -- -10-15% to Enemy Fire Resistance
      { index = 334, op = "==", value = 15 }, -- -10-15% to Enemy Lightning Resistance
      { index = 335, op = "==", value = 15 }, -- -10-15% to Enemy Cold Resistance
      { index = 286, op = "==", value = 10 }, -- Reduce Cooldowns by 5-10%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 445, -- Steelrend
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 0, op = "==", value = 20 }, -- +15-20 to Strength
      { index = 151, op = "==", param = 98, value = 7 }, -- Level 5-7 Might Aura When Equipped
      { index = 34, op = "==", value = 10 }, -- Damage Reduced by 5-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 446, -- Mana Wyrm
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 96, op = "==", value = 20 }, -- +10-20% Faster Run/Walk
      { index = 39, op = "==", value = 15 }, -- Fire Resist +10-15%
      { index = 41, op = "==", value = 15 }, -- Lightning Resist +10-15%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 447, -- Sandstorm Trek
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 9, op = "==", value = 50*256 }, -- +25-50 to Mana
      { index = 45, op = "==", value = 70 }, -- Poison Resist +40-70%
      { index = 0, op = "==", value = 15 }, -- +10-15 to Strength
      { index = 3, op = "==", value = 15 }, -- +10-15 to Vitality
      { index = 34, op = "==", value = 7 }, -- Damage Reduced by 3-7
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 448, -- Marrowwalk
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 74, op = "==", value = 10 }, -- Replenish Life +3-10
      { index = 0, op = "==", value = 20 }, -- +10-20 to Strength
      { index = 107, op = "==", param = 69, value = 2 }, -- +1-2 to Summon Mastery (Necromancer only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 449, -- Crimson Shift
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 25 }, -- Fire Resist +15-25%
      { index = 41, op = "==", value = 25 }, -- Lightning Resist +15-25%
      { index = 43, op = "==", value = 25 }, -- Cold Resist +15-25%
      { index = 19, op = "==", value = 250 }, -- +150-250 to Attack Rating
      { index = 34, op = "==", value = 12 }, -- Damage Reduced by 8-12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 450, -- Lelantus's Frenzy
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 86, op = "==", value = 5 }, -- +2-5 Life after each Kill
      { index = 138, op = "==", value = 5 }, -- +2-5 to Mana after each Kill
      { index = 278, op = "==", value = 2 }, -- +1-2 Combat Power
      { index = 34, op = "==", value = 10 }, -- Damage Reduced by 6-10
      { index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 6-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 451, -- Arachnid Mesh
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 97, op = "==", param = 183, value = 3 }, -- +1-3 to Arachnophobia
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 452, -- Nosferatu's Coil
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 60, op = "==", value = 7 }, -- 5-7% Life stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 453, -- Verdungo's Hearty Cord
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 3, op = "==", value = 40 }, -- +30-40 to Vitality
      { index = 36, op = "==", value = 15 }, -- Damage Reduced by 10-15%
      { index = 74, op = "==", value = 13 }, -- Replenish Life +10-13
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 454, -- Magni's Warband
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 0, op = "==", value = 45 }, -- +25-45 to Strength
      { index = 278, op = "==", value = 7 }, -- +4-7 Combat Power
      { index = 99, op = "==", value = 24 }, -- +12-24% Faster Hit Recovery
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 455, -- Arcanist's Safeguard
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 99, op = "==", value = 24 }, -- +12-24% Faster Hit Recovery
      { index = 7, op = "==", value = 125*256 }, -- +75-125 to Life
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 456, -- Giant Skull
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 0, op = "==", value = 35 }, -- +25-35 to Strength
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 457, -- Head Hunter's Glory
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 32, op = "==", value = 350 }, -- +300-350 Defense vs. Missile
      { index = 45, op = "==", value = 40 }, -- Poison Resist +30-40%
      { index = 39, op = "==", value = 30 }, -- Fire Resist +20-30%
      { index = 86, op = "==", value = 7 }, -- +5-7 Life after each Kill
      { index = 388, op = "==", value = 38 }, -- Smite: 24-38
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 458, -- Spike Thorn
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 36, op = "==", value = 20 }, -- Damage Reduced by 15-20%
      { index = 388, op = "==", value = 76 }, -- Smite: 75-76
      { index = 151, op = "==", param = 103, value = 20 }, -- Level 15-20 Thorns Aura When Equipped
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 459, -- Flame of Combat
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 278, op = "==", value = 3 }, -- +1-3 Combat Power
      { index = 283, op = "==", value = 3 }, -- +1-3 Summoning Power
      { index = 329, op = "==", value = 25 }, -- +10-25% to Fire Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 460, -- Mystic Command
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 276, op = "==", value = 3 }, -- +1-3 Spell Power
      { index = 283, op = "==", value = 3 }, -- +1-3 Summoning Power
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 441-460
    {
      codes = "allitems",
      quality = "7",
      index = 441, -- Indra's Mark, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 330, op = "<=", value = (5 + (15-5)*0.7) }, -- +5-15% to Lightning Skill Damage
      { index = 286, op = "<=", value = (10 + (20-10)*0.7) }, -- Reduce Cooldowns by 10-20%
      { index = 144, op = "<=", value = (5 + (10-5)*0.7) }, -- Lightning Absorb 5-10%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 442, -- Dracul's Grasp, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 60, op = "<=", value = (7 + (10-7)*0.7) }, -- 7-10% Life stolen per hit
      { index = 86, op = "<=", value = (5 + (10-5)*0.7) }, -- +5-10 Life after each Kill
      { index = 0, op = "<=", value = (10 + (15-10)*0.7) }, -- +10-15 to Strength
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 443, -- Soul Drainer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 60, op = "<=", value = (4 + (7-4)*0.7) }, -- 4-7% Life stolen per hit
      { index = 62, op = "<=", value = (4 + (7-4)*0.7) }, -- 4-7% Mana stolen per hit
      { index = 97, op = "<=", param = 386, value = (3 + (10-3)*0.7) }, -- +3-10 to Unholy Barrage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 444, -- Carthas's Presence, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 85, op = "<=", value = (5 + (10-5)*0.7) }, -- +5-10% to Experience Gained
      { index = 74, op = "<=", value = (5 + (10-5)*0.7) }, -- Replenish Life +5-10
      { index = 333, op = "<=", value = (10 + (15-10)*0.7) }, -- -10-15% to Enemy Fire Resistance
      { index = 334, op = "<=", value = (10 + (15-10)*0.7) }, -- -10-15% to Enemy Lightning Resistance
      { index = 335, op = "<=", value = (10 + (15-10)*0.7) }, -- -10-15% to Enemy Cold Resistance
      { index = 286, op = "<=", value = (5 + (10-5)*0.7) }, -- Reduce Cooldowns by 5-10%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 445, -- Steelrend, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 0, op = "<=", value = (15 + (20-15)*0.7) }, -- +15-20 to Strength
      { index = 151, op = "<=", param = 98, value = (5 + (7-5)*0.7) }, -- Level 5-7 Might Aura When Equipped
      { index = 34, op = "<=", value = (5 + (10-5)*0.7) }, -- Damage Reduced by 5-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 446, -- Mana Wyrm, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 96, op = "<=", value = (10 + (20-10)*0.7) }, -- +10-20% Faster Run/Walk
      { index = 39, op = "<=", value = (10 + (15-10)*0.7) }, -- Fire Resist +10-15%
      { index = 41, op = "<=", value = (10 + (15-10)*0.7) }, -- Lightning Resist +10-15%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 447, -- Sandstorm Trek, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 9, op = "<=", value = ((25 + (50-25)*0.7) * 256) }, -- +25-50 to Mana
      { index = 45, op = "<=", value = (40 + (70-40)*0.7) }, -- Poison Resist +40-70%
      { index = 0, op = "<=", value = (10 + (15-10)*0.7) }, -- +10-15 to Strength
      { index = 3, op = "<=", value = (10 + (15-10)*0.7) }, -- +10-15 to Vitality
      { index = 34, op = "<=", value = (3 + (7-3)*0.7) }, -- Damage Reduced by 3-7
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 448, -- Marrowwalk, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 74, op = "<=", value = (3 + (10-3)*0.7) }, -- Replenish Life +3-10
      { index = 0, op = "<=", value = (10 + (20-10)*0.7) }, -- +10-20 to Strength
      { index = 107, op = "<=", param = 69, value = (1 + (2-1)*0.7) }, -- +1-2 to Summon Mastery (Necromancer only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 449, -- Crimson Shift, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (15 + (25-15)*0.7) }, -- Fire Resist +15-25%
      { index = 41, op = "<=", value = (15 + (25-15)*0.7) }, -- Lightning Resist +15-25%
      { index = 43, op = "<=", value = (15 + (25-15)*0.7) }, -- Cold Resist +15-25%
      { index = 19, op = "<=", value = (150 + (250-150)*0.7) }, -- +150-250 to Attack Rating
      { index = 34, op = "<=", value = (8 + (12-8)*0.7) }, -- Damage Reduced by 8-12
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 450, -- Lelantus's Frenzy, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 86, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5 Life after each Kill
      { index = 138, op = "<=", value = (2 + (5-2)*0.7) }, -- +2-5 to Mana after each Kill
      { index = 278, op = "<=", value = (1 + (2-1)*0.7) }, -- +1-2 Combat Power
      { index = 34, op = "<=", value = (6 + (10-6)*0.7) }, -- Damage Reduced by 6-10
      { index = 35, op = "<=", value = (6 + (10-6)*0.7) }, -- Magic Damage Reduced by 6-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 451, -- Arachnid Mesh, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 97, op = "<=", param = 183, value = (1 + (3-1)*0.7) }, -- +1-3 to Arachnophobia
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 452, -- Nosferatu's Coil, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 60, op = "<=", value = (5 + (7-5)*0.7) }, -- 5-7% Life stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 453, -- Verdungo's Hearty Cord, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 3, op = "<=", value = (30 + (40-30)*0.7) }, -- +30-40 to Vitality
      { index = 36, op = "<=", value = (10 + (15-10)*0.7) }, -- Damage Reduced by 10-15%
      { index = 74, op = "<=", value = (10 + (13-10)*0.7) }, -- Replenish Life +10-13
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 454, -- Magni's Warband, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 0, op = "<=", value = (25 + (45-25)*0.7) }, -- +25-45 to Strength
      { index = 278, op = "<=", value = (4 + (7-4)*0.7) }, -- +4-7 Combat Power
      { index = 99, op = "<=", value = (12 + (24-12)*0.7) }, -- +12-24% Faster Hit Recovery
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 455, -- Arcanist's Safeguard, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 99, op = "<=", value = (12 + (24-12)*0.7) }, -- +12-24% Faster Hit Recovery
      { index = 7, op = "<=", value = ((75 + (125-75)*0.7) * 256) }, -- +75-125 to Life
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 456, -- Giant Skull, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 0, op = "<=", value = (25 + (35-25)*0.7) }, -- +25-35 to Strength
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 457, -- Head Hunter's Glory, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 32, op = "<=", value = (300 + (350-300)*0.7) }, -- +300-350 Defense vs. Missile
      { index = 45, op = "<=", value = (30 + (40-30)*0.7) }, -- Poison Resist +30-40%
      { index = 39, op = "<=", value = (20 + (30-20)*0.7) }, -- Fire Resist +20-30%
      { index = 86, op = "<=", value = (5 + (7-5)*0.7) }, -- +5-7 Life after each Kill
      { index = 388, op = "<=", value = (24 + (38-24)*0.7) }, -- Smite: 24-38
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 458, -- Spike Thorn, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 36, op = "<=", value = (15 + (20-15)*0.7) }, -- Damage Reduced by 15-20%
      { index = 388, op = "<=", value = (75 + (76-75)*0.7) }, -- Smite: 75-76
      { index = 151, op = "<=", param = 103, value = (15 + (20-15)*0.7) }, -- Level 15-20 Thorns Aura When Equipped
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 459, -- Flame of Combat, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 278, op = "<=", value = (1 + (3-1)*0.7) }, -- +1-3 Combat Power
      { index = 283, op = "<=", value = (1 + (3-1)*0.7) }, -- +1-3 Summoning Power
      { index = 329, op = "<=", value = (10 + (25-10)*0.7) }, -- +10-25% to Fire Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 460, -- Mystic Command, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 276, op = "<=", value = (1 + (3-1)*0.7) }, -- +1-3 Spell Power
      { index = 283, op = "<=", value = (1 + (3-1)*0.7) }, -- +1-3 Summoning Power
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 461-480
    {
      codes = "allitems",
      quality = "7",
      index = 461, -- Rama's Protector
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 83, op = "==", param = 5, value = 2 }, -- +1-2 to Druid Skill Levels
      { index = 39, op = "==", value = 20 }, -- All Resistances +10-20%
      { index = 76, op = "==", value = 10 }, -- Increase Maximum Life by 5-10%
      { index = 34, op = "==", value = 5 }, -- Damage Reduced by 3-5
      { index = 35, op = "==", value = 5 }, -- Magic Damage Reduced by 3-5
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 462, -- Snow Spirit
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 43, op = "==", value = 50 }, -- Cold Resist +30-50%
      { index = 44, op = "==", value = 15 }, -- +10-15% to Maximum Cold Resist
      { index = 276, op = "==", value = 3 }, -- +1-3 Spell Power
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 463, -- Efreeti's Fury
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 107, op = "==", param = 248, value = 7 }, -- +3-7 to Fiery Fury (Druid only)
      { index = 189, op = "==", value = 20 }, -- Enemy fire immunity reduced by 10-20%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 464, -- Combat Visor
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 278, op = "==", value = 3 }, -- +1-3 Combat Power
      { index = 7, op = "==", value = 75*256 }, -- +50-75 to Life
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 465, -- Strength of Pride
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 83, op = "==", param = 4, value = 2 }, -- +1-2 to Barbarian Skill Levels
      { index = 0, op = "==", value = 20 }, -- +15-20 to Strength
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 466, -- Fighter's Stance
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 83, op = "==", param = 4, value = 2 }, -- +1-2 to Barbarian Skill Levels
      { index = 192, op = "==", value = 15 }, -- Enemy physical immunity reduced by 10-15%
      { index = 93, op = "==", value = 25 }, -- +15-25% Increased Attack Speed
      { index = 278, op = "==", value = 4 }, -- +2-4 Combat Power
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 467, -- Piercing Cold
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 35 }, -- All Resistances +25-35%
      { index = 99, op = "==", value = 24 }, -- +12-24% Faster Hit Recovery
      { index = 187, op = "==", value = 20 }, -- Enemy cold immunity reduced by 15-20%
      { index = 331, op = "==", value = 20 }, -- +15-20% to Cold Skill Damage
      { index = 335, op = "==", value = 20 }, -- -15-20% to Enemy Cold Resistance
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 468, -- Arreat's Face
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 60, op = "==", value = 6 }, -- 3-6% Life stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 469, -- Fara's Defender
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 25 }, -- All Resistances +15-25%
      { index = 388, op = "==", value = 21 }, -- Smite: 20-21
      { index = 35, op = "==", value = 9 }, -- Magic Damage Reduced by 6-9
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 470, -- Rakkis's Guard
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 193, op = "==", value = 15 }, -- Enemy magic immunity reduced by 5-15%
      { index = 276, op = "==", value = 2 }, -- +1-2 Spell Power
      { index = 388, op = "==", value = 25 }, -- Smite: 24-25
      { index = 1, op = "==", value = 15 }, -- +10-15 to Energy
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 471, -- Assaulter's Armament
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 107, op = "==", param = 106, value = 4 }, -- +2-4 to Zeal (Paladin only)
      { index = 278, op = "==", value = 2 }, -- +1-2 Combat Power
      { index = 415, op = "==", value = 4 }, -- Increase charm max weight by 2-4
      { index = 60, op = "==", value = 5 }, -- 3-5% Life stolen per hit
      { index = 388, op = "==", value = 31 }, -- Smite: 30-31
      { index = 34, op = "==", value = 9 }, -- Damage Reduced by 6-9
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 472, -- Herald of Zakarum
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 33 }, -- Smite: 32-33
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 473, -- Blackheart's Barrage
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 107, op = "==", param = 107, value = 7 }, -- +3-7 to Shield Toss (Paladin only)
      { index = 60, op = "==", value = 10 }, -- 5-10% Life stolen per hit
      { index = 62, op = "==", value = 10 }, -- 5-10% Mana stolen per hit
      { index = 76, op = "==", value = 10 }, -- Increase Maximum Life by 5-10%
      { index = 77, op = "==", value = 10 }, -- Increase Maximum Mana by 5-10%
      { index = 388, op = "==", value = 39 }, -- Smite: 38-39
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 474, -- Mehtan's Carrion
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 288, op = "==", value = 20 }, -- Increase Bone Skill Damage: 15-20%
      { index = 39, op = "==", value = 30 }, -- Fire Resist +20-30%
      { index = 41, op = "==", value = 30 }, -- Lightning Resist +20-30%
      { index = 357, op = "==", value = 10 }, -- +5-10% to Magic Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 475, -- Venom Storm
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 410, op = "==", value = 3 }, -- +1-3 to Poison Skills
      { index = 191, op = "==", value = 10 }, -- Enemy poison immunity reduced by 5-10%
      { index = 332, op = "==", value = 20 }, -- +10-20% to Poison Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 476, -- Bone Zone
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 188, op = "==", param = 18, value = 3 }, -- +1-3 to Summoning Skills
      { index = 107, op = "==", param = 68, value = 3 }, -- +1-3 to Bone Armor (Necromancer only)
      { index = 283, op = "==", value = 2 }, -- +1-2 Summoning Power
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 477, -- Contagion
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 151, op = "==", param = 180, value = 6 }, -- Level 3-6 Patient Zero Aura When Equipped
      { index = 39, op = "==", value = 25 }, -- All Resistances +15-25%
      { index = 415, op = "==", value = 3 }, -- Increase charm max weight by 1-3
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 478, -- Homunculus
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 479, -- Cerebus' Bite
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 188, op = "==", param = 41, value = 4 }, -- +2-4 to Blaze Wolf (Druid only)
      { index = 60, op = "==", value = 10 }, -- 7-10% Life stolen per hit
      { index = 119, op = "==", value = 120 }, -- 60-120% Bonus to Attack Rating
      { index = 135, op = "==", value = 33 }, -- 15-33% Chance of Open Wounds
      { index = 107, op = "==", param = 232, value = 2 }, -- +1-2 to Feral Rage (Druid only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 480, -- Pack Mentality
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 188, op = "==", param = 40, value = 4 }, -- +2-4 to Nature's Teachings (Druid only)
      { index = 107, op = "==", param = 247, value = 5 }, -- +3-5 to Grizzly (Druid only)
      { index = 107, op = "==", param = 237, value = 5 }, -- +3-5 to Fenris (Druid only)
      { index = 262, op = "==", value = 5 }, -- Increase Strength by +3-5%
      { index = 263, op = "==", value = 5 }, -- Increase Dexterity by +3-5%
      { index = 264, op = "==", value = 5 }, -- Increase Vitality by +3-5%
      { index = 265, op = "==", value = 5 }, -- Increase Energy by +3-5%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 461-480
    {
      codes = "allitems",
      quality = "7",
      index = 461, -- Rama's Protector, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 83, op = "<=", param = 5, value = (1 + (2-1)*0.7) }, -- +1-2 to Druid Skill Levels
      { index = 39, op = "<=", value = (10 + (20-10)*0.7) }, -- All Resistances +10-20%
      { index = 76, op = "<=", value = (5 + (10-5)*0.7) }, -- Increase Maximum Life by 5-10%
      { index = 34, op = "<=", value = (3 + (5-3)*0.7) }, -- Damage Reduced by 3-5
      { index = 35, op = "<=", value = (3 + (5-3)*0.7) }, -- Magic Damage Reduced by 3-5
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 462, -- Snow Spirit, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 43, op = "<=", value = (30 + (50-30)*0.7) }, -- Cold Resist +30-50%
      { index = 44, op = "<=", value = (10 + (15-10)*0.7) }, -- +10-15% to Maximum Cold Resist
      { index = 276, op = "<=", value = (1 + (3-1)*0.7) }, -- +1-3 Spell Power
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 463, -- Efreeti's Fury, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 107, op = "<=", param = 248, value = (3 + (7-3)*0.7) }, -- +3-7 to Fiery Fury (Druid only)
      { index = 189, op = "<=", value = (10 + (20-10)*0.7) }, -- Enemy fire immunity reduced by 10-20%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 464, -- Combat Visor, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 278, op = "<=", value = (1 + (3-1)*0.7) }, -- +1-3 Combat Power
      { index = 7, op = "<=", value = ((50 + (75-50)*0.7) * 256) }, -- +50-75 to Life
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 465, -- Strength of Pride, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 83, op = "<=", param = 4, value = (1 + (2-1)*0.7) }, -- +1-2 to Barbarian Skill Levels
      { index = 0, op = "<=", value = (15 + (20-15)*0.7) }, -- +15-20 to Strength
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 466, -- Fighter's Stance, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 83, op = "<=", param = 4, value = (1 + (2-1)*0.7) }, -- +1-2 to Barbarian Skill Levels
      { index = 192, op = "<=", value = (10 + (15-10)*0.7) }, -- Enemy physical immunity reduced by 10-15%
      { index = 93, op = "<=", value = (15 + (25-15)*0.7) }, -- +15-25% Increased Attack Speed
      { index = 278, op = "<=", value = (2 + (4-2)*0.7) }, -- +2-4 Combat Power
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 467, -- Piercing Cold, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (25 + (35-25)*0.7) }, -- All Resistances +25-35%
      { index = 99, op = "<=", value = (12 + (24-12)*0.7) }, -- +12-24% Faster Hit Recovery
      { index = 187, op = "<=", value = (15 + (20-15)*0.7) }, -- Enemy cold immunity reduced by 15-20%
      { index = 331, op = "<=", value = (15 + (20-15)*0.7) }, -- +15-20% to Cold Skill Damage
      { index = 335, op = "<=", value = (15 + (20-15)*0.7) }, -- -15-20% to Enemy Cold Resistance
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 468, -- Arreat's Face, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 60, op = "<=", value = (3 + (6-3)*0.7) }, -- 3-6% Life stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 469, -- Fara's Defender, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (15 + (25-15)*0.7) }, -- All Resistances +15-25%
      { index = 388, op = "<=", value = (20 + (21-20)*0.7) }, -- Smite: 20-21
      { index = 35, op = "<=", value = (6 + (9-6)*0.7) }, -- Magic Damage Reduced by 6-9
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 470, -- Rakkis's Guard, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 193, op = "<=", value = (5 + (15-5)*0.7) }, -- Enemy magic immunity reduced by 5-15%
      { index = 276, op = "<=", value = (1 + (2-1)*0.7) }, -- +1-2 Spell Power
      { index = 388, op = "<=", value = (24 + (25-24)*0.7) }, -- Smite: 24-25
      { index = 1, op = "<=", value = (10 + (15-10)*0.7) }, -- +10-15 to Energy
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 471, -- Assaulter's Armament, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 107, op = "<=", param = 106, value = (2 + (4-2)*0.7) }, -- +2-4 to Zeal (Paladin only)
      { index = 278, op = "<=", value = (1 + (2-1)*0.7) }, -- +1-2 Combat Power
      { index = 415, op = "<=", value = (2 + (4-2)*0.7) }, -- Increase charm max weight by 2-4
      { index = 60, op = "<=", value = (3 + (5-3)*0.7) }, -- 3-5% Life stolen per hit
      { index = 388, op = "<=", value = (30 + (31-30)*0.7) }, -- Smite: 30-31
      { index = 34, op = "<=", value = (6 + (9-6)*0.7) }, -- Damage Reduced by 6-9
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 472, -- Herald of Zakarum, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 388, op = "<=", value = (32 + (33-32)*0.7) }, -- Smite: 32-33
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 473, -- Blackheart's Barrage, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 107, op = "<=", param = 107, value = (3 + (7-3)*0.7) }, -- +3-7 to Shield Toss (Paladin only)
      { index = 60, op = "<=", value = (5 + (10-5)*0.7) }, -- 5-10% Life stolen per hit
      { index = 62, op = "<=", value = (5 + (10-5)*0.7) }, -- 5-10% Mana stolen per hit
      { index = 76, op = "<=", value = (5 + (10-5)*0.7) }, -- Increase Maximum Life by 5-10%
      { index = 77, op = "<=", value = (5 + (10-5)*0.7) }, -- Increase Maximum Mana by 5-10%
      { index = 388, op = "<=", value = (38 + (39-38)*0.7) }, -- Smite: 38-39
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 474, -- Mehtan's Carrion, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 288, op = "<=", value = (15 + (20-15)*0.7) }, -- Increase Bone Skill Damage: 15-20%
      { index = 39, op = "<=", value = (20 + (30-20)*0.7) }, -- Fire Resist +20-30%
      { index = 41, op = "<=", value = (20 + (30-20)*0.7) }, -- Lightning Resist +20-30%
      { index = 357, op = "<=", value = (5 + (10-5)*0.7) }, -- +5-10% to Magic Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 475, -- Venom Storm, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 410, op = "<=", value = (1 + (3-1)*0.7) }, -- +1-3 to Poison Skills
      { index = 191, op = "<=", value = (5 + (10-5)*0.7) }, -- Enemy poison immunity reduced by 5-10%
      { index = 332, op = "<=", value = (10 + (20-10)*0.7) }, -- +10-20% to Poison Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 476, -- Bone Zone, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 188, op = "<=", param = 18, value = (1 + (3-1)*0.7) }, -- +1-3 to Summoning Skills
      { index = 107, op = "<=", param = 68, value = (1 + (3-1)*0.7) }, -- +1-3 to Bone Armor (Necromancer only)
      { index = 283, op = "<=", value = (1 + (2-1)*0.7) }, -- +1-2 Summoning Power
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 477, -- Contagion, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 151, op = "<=", param = 180, value = (3 + (6-3)*0.7) }, -- Level 3-6 Patient Zero Aura When Equipped
      { index = 39, op = "<=", value = (15 + (25-15)*0.7) }, -- All Resistances +15-25%
      { index = 415, op = "<=", value = (1 + (3-1)*0.7) }, -- Increase charm max weight by 1-3
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 478, -- Homunculus, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 479, -- Cerebus' Bite, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 188, op = "<=", param = 41, value = (2 + (4-2)*0.7) }, -- +2-4 to Blaze Wolf (Druid only)
      { index = 60, op = "<=", value = (7 + (10-7)*0.7) }, -- 7-10% Life stolen per hit
      { index = 119, op = "<=", value = (60 + (120-60)*0.7) }, -- 60-120% Bonus to Attack Rating
      { index = 135, op = "<=", value = (15 + (33-15)*0.7) }, -- 15-33% Chance of Open Wounds
      { index = 107, op = "<=", param = 232, value = (1 + (2-1)*0.7) }, -- +1-2 to Feral Rage (Druid only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 480, -- Pack Mentality, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 188, op = "<=", param = 40, value = (2 + (4-2)*0.7) }, -- +2-4 to Nature's Teachings (Druid only)
      { index = 107, op = "<=", param = 247, value = (3 + (5-3)*0.7) }, -- +3-5 to Grizzly (Druid only)
      { index = 107, op = "<=", param = 237, value = (3 + (5-3)*0.7) }, -- +3-5 to Fenris (Druid only)
      { index = 262, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase Strength by +3-5%
      { index = 263, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase Dexterity by +3-5%
      { index = 264, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase Vitality by +3-5%
      { index = 265, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase Energy by +3-5%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 481-500
    {
      codes = "allitems",
      quality = "7",
      index = 481, -- Spirit Keeper
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 145, op = "==", value = 14 }, -- +9-14 Lightning Absorb
      { index = 39, op = "==", value = 40 }, -- Fire Resist +30-40%
      { index = 148, op = "==", value = 25 }, -- Cold Absorb 15-25%
      { index = 83, op = "==", param = 5, value = 2 }, -- +1-2 to Druid Skill Levels
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 482, -- Ravenlore
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 25 }, -- All Resistances +15-25%
      { index = 1, op = "==", value = 30 }, -- +20-30 to Energy
      { index = 335, op = "==", value = 20 }, -- -10-20% to Enemy Cold Resistance
      { index = 187, op = "==", value = 10 }, -- Enemy cold immunity reduced by 5-10%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 483, -- Jalal's Mane
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 484, -- Berserker's Stance
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 83, op = "==", param = 4, value = 2 }, -- +1-2 to Barbarian Skill Levels
      { index = 192, op = "==", value = 25 }, -- Enemy physical immunity reduced by 15-25%
      { index = 278, op = "==", value = 4 }, -- +2-4 Combat Power
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 485, -- Wolfhowl
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 188, op = "==", param = 34, value = 3 }, -- +2-3 to Destructive Range (Barb only)
      { index = 0, op = "==", value = 15 }, -- +8-15 to Strength
      { index = 2, op = "==", value = 15 }, -- +8-15 to Dexterity
      { index = 3, op = "==", value = 15 }, -- +8-15 to Vitality
      { index = 97, op = "==", param = 223, value = 6 }, -- +3-6 to Werewolf
      { index = 97, op = "==", param = 227, value = 6 }, -- +3-6 to Howl
      { index = 97, op = "==", param = 232, value = 6 }, -- +3-6 to Feral Rage
      { index = 34, op = "==", value = 10 }, -- Damage Reduced by 8-10
      { index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 8-10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 486, -- Demonhorn's Edge
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 60, op = "==", value = 6 }, -- 3-6% Life stolen per hit
      { index = 188, op = "==", param = 32, value = 3 }, -- +1-3 to Close Quarters (Barb only)
      { index = 188, op = "==", param = 33, value = 3 }, -- +1-3 to War Masteries (Barb only)
      { index = 188, op = "==", param = 34, value = 3 }, -- +1-3 to Destructive Range (Barb only)
      { index = 151, op = "==", param = 103, value = 20 }, -- Level 15-20 Thorns Aura When Equipped
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 487, -- Halaberd's Reign
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 74, op = "==", value = 23 }, -- Replenish Life +15-23
      { index = 107, op = "==", param = 149, value = 3 }, -- +2-3 to War Stance (Barbarian only)
      { index = 107, op = "==", param = 138, value = 3 }, -- +2-3 to Shout (Barbarian only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 488, -- Warrior's Resolve
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 93, op = "==", value = 25 }, -- +15-25% Increased Attack Speed
      { index = 7, op = "==", value = 100*256 }, -- +50-100 to Life
      { index = 60, op = "==", value = 8 }, -- 5-8% Life stolen per hit
      { index = 62, op = "==", value = 8 }, -- 5-8% Mana stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 489, -- Primordial Punisher
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 83, op = "==", param = 3, value = 2 }, -- +1-2 to Paladin Skill Levels
      { index = 286, op = "==", value = 30 }, -- Reduce Cooldowns by 20-30%
      { index = 187, op = "==", value = 15 }, -- Enemy cold immunity reduced by 5-15%
      { index = 189, op = "==", value = 15 }, -- Enemy fire immunity reduced by 5-15%
      { index = 190, op = "==", value = 15 }, -- Enemy lightning immunity reduced by 5-15%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 490, -- Alma Negra
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 83, op = "==", param = 3, value = 2 }, -- +1-2 to Paladin Skill Levels
      { index = 35, op = "==", value = 9 }, -- Magic Damage Reduced by 5-9
      { index = 119, op = "==", value = 75 }, -- 40-75% Bonus to Attack Rating
      { index = 388, op = "==", value = 61 }, -- Smite: 60-61
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 491, -- Faithful Guardian
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 107, op = "==", param = 96, value = 5 }, -- +3-5 to Sacrifice (Paladin only)
      { index = 107, op = "==", param = 119, value = 5 }, -- +3-5 to Faithful Follower (Paladin only)
      { index = 388, op = "==", value = 76 }, -- Smite: 75-76
      { index = 83, op = "==", param = 3, value = 2 }, -- +1-2 to Paladin Skill Levels
      { index = 111, op = "==", value = 75 }, -- Damage +50-75
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 492, -- Dragonscale
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 142, op = "==", value = 20 }, -- Fire Absorb 10-20%
      { index = 0, op = "==", value = 25 }, -- +15-25 to Strength
      { index = 388, op = "==", value = 81 }, -- Smite: 80-81
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 493, -- Shield of Forsaken Light
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 0, op = "==", value = 30 }, -- +20-30 all Attributes
      { index = 83, op = "==", param = 3, value = 3 }, -- +2-3 to Paladin Skill Levels
      { index = 262, op = "==", value = 10 }, -- Increase Strength by +5-10%
      { index = 263, op = "==", value = 10 }, -- Increase Dexterity by +5-10%
      { index = 264, op = "==", value = 10 }, -- Increase Vitality by +5-10%
      { index = 265, op = "==", value = 10 }, -- Increase Energy by +5-10%
      { index = 388, op = "==", value = 111 }, -- Smite: 110-111
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 494, -- Onikuma
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 55 }, -- All Resistances +30-55%
      { index = 107, op = "==", param = 87, value = 4 }, -- +2-4 to Decrepify (Necromancer only)
      { index = 264, op = "==", value = 5 }, -- Increase Vitality by +3-5%
      { index = 83, op = "==", param = 2, value = 2 }, -- +1-2 to Necromancer Skill Levels
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 495, -- Bone Parade
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 188, op = "==", param = 18, value = 2 }, -- +1-2 to Summoning Skills
      { index = 288, op = "==", value = 35 }, -- Increase Bone Skill Damage: 25-35%
      { index = 188, op = "==", param = 17, value = 2 }, -- +1-2 to Poison and Bone Skills
      { index = 283, op = "==", value = 3 }, -- +1-3 Summoning Power
      { index = 107, op = "==", param = 70, value = 6 }, -- +3-6 to Raise Skeleton (Necromancer only)
      { index = 107, op = "==", param = 84, value = 6 }, -- +3-6 to Bone Spear (Necromancer only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 496, -- Elanuzuru
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 188, op = "==", param = 18, value = 2 }, -- +1-2 to Summoning Skills
      { index = 283, op = "==", value = 5 }, -- +3-5 Summoning Power
      { index = 107, op = "==", param = 79, value = 5 }, -- +3-5 to Raise Skeletal Archers (Necromancer only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 497, -- Boneflame
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 83, op = "==", param = 2, value = 3 }, -- +2-3 to Necromancer Skill Levels
      { index = 39, op = "==", value = 30 }, -- All Resistances +20-30%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 498, -- Darkforce Spawn
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 188, op = "==", param = 16, value = 3 }, -- +1-3 to Curses
      { index = 188, op = "==", param = 17, value = 3 }, -- +1-3 to Poison and Bone Skills
      { index = 188, op = "==", param = 18, value = 3 }, -- +1-3 to Summoning Skills
      { index = 97, op = "==", param = 181, value = 6 }, -- +1-6 to Skull Mob
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 499, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder item)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 500, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder item)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 481-500
    {
      codes = "allitems",
      quality = "7",
      index = 481, -- Spirit Keeper, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 145, op = "<=", value = (9 + (14-9)*0.7) }, -- +9-14 Lightning Absorb
      { index = 39, op = "<=", value = (30 + (40-30)*0.7) }, -- Fire Resist +30-40%
      { index = 148, op = "<=", value = (15 + (25-15)*0.7) }, -- Cold Absorb 15-25%
      { index = 83, op = "<=", param = 5, value = (1 + (2-1)*0.7) }, -- +1-2 to Druid Skill Levels
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 482, -- Ravenlore, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (15 + (25-15)*0.7) }, -- All Resistances +15-25%
      { index = 1, op = "<=", value = (20 + (30-20)*0.7) }, -- +20-30 to Energy
      { index = 335, op = "<=", value = (10 + (20-10)*0.7) }, -- -10-20% to Enemy Cold Resistance
      { index = 187, op = "<=", value = (5 + (10-5)*0.7) }, -- Enemy cold immunity reduced by 5-10%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 483, -- Jalal's Mane, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 484, -- Berserker's Stance, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 83, op = "<=", param = 4, value = (1 + (2-1)*0.7) }, -- +1-2 to Barbarian Skill Levels
      { index = 192, op = "<=", value = (15 + (25-15)*0.7) }, -- Enemy physical immunity reduced by 15-25%
      { index = 278, op = "<=", value = (2 + (4-2)*0.7) }, -- +2-4 Combat Power
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 485, -- Wolfhowl, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 188, op = "<=", param = 34, value = (2 + (3-2)*0.7) }, -- +2-3 to Destructive Range (Barb only)
      { index = 0, op = "<=", value = (8 + (15-8)*0.7) }, -- +8-15 to Strength
      { index = 2, op = "<=", value = (8 + (15-8)*0.7) }, -- +8-15 to Dexterity
      { index = 3, op = "<=", value = (8 + (15-8)*0.7) }, -- +8-15 to Vitality
      { index = 97, op = "<=", param = 223, value = (3 + (6-3)*0.7) }, -- +3-6 to Werewolf
      { index = 97, op = "<=", param = 227, value = (3 + (6-3)*0.7) }, -- +3-6 to Howl
      { index = 97, op = "<=", param = 232, value = (3 + (6-3)*0.7) }, -- +3-6 to Feral Rage
      { index = 34, op = "<=", value = (8 + (10-8)*0.7) }, -- Damage Reduced by 8-10
      { index = 35, op = "<=", value = (8 + (10-8)*0.7) }, -- Magic Damage Reduced by 8-10
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 486, -- Demonhorn's Edge, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 60, op = "<=", value = (3 + (6-3)*0.7) }, -- 3-6% Life stolen per hit
      { index = 188, op = "<=", param = 32, value = (1 + (3-1)*0.7) }, -- +1-3 to Close Quarters (Barb only)
      { index = 188, op = "<=", param = 33, value = (1 + (3-1)*0.7) }, -- +1-3 to War Masteries (Barb only)
      { index = 188, op = "<=", param = 34, value = (1 + (3-1)*0.7) }, -- +1-3 to Destructive Range (Barb only)
      { index = 151, op = "<=", param = 103, value = (15 + (20-15)*0.7) }, -- Level 15-20 Thorns Aura When Equipped
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 487, -- Halaberd's Reign, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 74, op = "<=", value = (15 + (23-15)*0.7) }, -- Replenish Life +15-23
      { index = 107, op = "<=", param = 149, value = (2 + (3-2)*0.7) }, -- +2-3 to War Stance (Barbarian only)
      { index = 107, op = "<=", param = 138, value = (2 + (3-2)*0.7) }, -- +2-3 to Shout (Barbarian only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 488, -- Warrior's Resolve, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 93, op = "<=", value = (15 + (25-15)*0.7) }, -- +15-25% Increased Attack Speed
      { index = 7, op = "<=", value = ((50 + (100-50)*0.7) * 256) }, -- +50-100 to Life
      { index = 60, op = "<=", value = (5 + (8-5)*0.7) }, -- 5-8% Life stolen per hit
      { index = 62, op = "<=", value = (5 + (8-5)*0.7) }, -- 5-8% Mana stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 489, -- Primordial Punisher, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 83, op = "<=", param = 3, value = (1 + (2-1)*0.7) }, -- +1-2 to Paladin Skill Levels
      { index = 286, op = "<=", value = (20 + (30-20)*0.7) }, -- Reduce Cooldowns by 20-30%
      { index = 187, op = "<=", value = (5 + (15-5)*0.7) }, -- Enemy cold immunity reduced by 5-15%
      { index = 189, op = "<=", value = (5 + (15-5)*0.7) }, -- Enemy fire immunity reduced by 5-15%
      { index = 190, op = "<=", value = (5 + (15-5)*0.7) }, -- Enemy lightning immunity reduced by 5-15%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 490, -- Alma Negra, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 83, op = "<=", param = 3, value = (1 + (2-1)*0.7) }, -- +1-2 to Paladin Skill Levels
      { index = 35, op = "<=", value = (5 + (9-5)*0.7) }, -- Magic Damage Reduced by 5-9
      { index = 119, op = "<=", value = (40 + (75-40)*0.7) }, -- 40-75% Bonus to Attack Rating
      { index = 388, op = "<=", value = (60 + (61-60)*0.7) }, -- Smite: 60-61
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 491, -- Faithful Guardian, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 107, op = "<=", param = 96, value = (3 + (5-3)*0.7) }, -- +3-5 to Sacrifice (Paladin only)
      { index = 107, op = "<=", param = 119, value = (3 + (5-3)*0.7) }, -- +3-5 to Faithful Follower (Paladin only)
      { index = 388, op = "<=", value = (75 + (76-75)*0.7) }, -- Smite: 75-76
      { index = 83, op = "<=", param = 3, value = (1 + (2-1)*0.7) }, -- +1-2 to Paladin Skill Levels
      { index = 111, op = "<=", value = (50 + (75-50)*0.7) }, -- Damage +50-75
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 492, -- Dragonscale, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 142, op = "<=", value = (10 + (20-10)*0.7) }, -- Fire Absorb 10-20%
      { index = 0, op = "<=", value = (15 + (25-15)*0.7) }, -- +15-25 to Strength
      { index = 388, op = "<=", value = (80 + (81-80)*0.7) }, -- Smite: 80-81
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 493, -- Shield of Forsaken Light, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 0, op = "<=", value = (20 + (30-20)*0.7) }, -- +20-30 all Attributes
      { index = 83, op = "<=", param = 3, value = (2 + (3-2)*0.7) }, -- +2-3 to Paladin Skill Levels
      { index = 262, op = "<=", value = (5 + (10-5)*0.7) }, -- Increase Strength by +5-10%
      { index = 263, op = "<=", value = (5 + (10-5)*0.7) }, -- Increase Dexterity by +5-10%
      { index = 264, op = "<=", value = (5 + (10-5)*0.7) }, -- Increase Vitality by +5-10%
      { index = 265, op = "<=", value = (5 + (10-5)*0.7) }, -- Increase Energy by +5-10%
      { index = 388, op = "<=", value = (110 + (111-110)*0.7) }, -- Smite: 110-111
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 494, -- Onikuma, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (30 + (55-30)*0.7) }, -- All Resistances +30-55%
      { index = 107, op = "<=", param = 87, value = (2 + (4-2)*0.7) }, -- +2-4 to Decrepify (Necromancer only)
      { index = 264, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase Vitality by +3-5%
      { index = 83, op = "<=", param = 2, value = (1 + (2-1)*0.7) }, -- +1-2 to Necromancer Skill Levels
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 495, -- Bone Parade, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 188, op = "<=", param = 18, value = (1 + (2-1)*0.7) }, -- +1-2 to Summoning Skills
      { index = 288, op = "<=", value = (25 + (35-25)*0.7) }, -- Increase Bone Skill Damage: 25-35%
      { index = 188, op = "<=", param = 17, value = (1 + (2-1)*0.7) }, -- +1-2 to Poison and Bone Skills
      { index = 283, op = "<=", value = (1 + (3-1)*0.7) }, -- +1-3 Summoning Power
      { index = 107, op = "<=", param = 70, value = (3 + (6-3)*0.7) }, -- +3-6 to Raise Skeleton (Necromancer only)
      { index = 107, op = "<=", param = 84, value = (3 + (6-3)*0.7) }, -- +3-6 to Bone Spear (Necromancer only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 496, -- Elanuzuru, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 188, op = "<=", param = 18, value = (1 + (2-1)*0.7) }, -- +1-2 to Summoning Skills
      { index = 283, op = "<=", value = (3 + (5-3)*0.7) }, -- +3-5 Summoning Power
      { index = 107, op = "<=", param = 79, value = (3 + (5-3)*0.7) }, -- +3-5 to Raise Skeletal Archers (Necromancer only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 497, -- Boneflame, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 83, op = "<=", param = 2, value = (2 + (3-2)*0.7) }, -- +2-3 to Necromancer Skill Levels
      { index = 39, op = "<=", value = (20 + (30-20)*0.7) }, -- All Resistances +20-30%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 498, -- Darkforce Spawn, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 188, op = "<=", param = 16, value = (1 + (3-1)*0.7) }, -- +1-3 to Curses
      { index = 188, op = "<=", param = 17, value = (1 + (3-1)*0.7) }, -- +1-3 to Poison and Bone Skills
      { index = 188, op = "<=", param = 18, value = (1 + (3-1)*0.7) }, -- +1-3 to Summoning Skills
      { index = 97, op = "<=", param = 181, value = (1 + (6-1)*0.7) }, -- +1-6 to Skull Mob
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 499, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 500, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 501-520
    {
      codes = "allitems",
      quality = "7",
      index = 501, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 502, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 503, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 504, -- Earth Shifter
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 188, op = "==", param = 41, value = 5 }, -- +1-5 to Blaze Wolf (Druid Only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 505, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 506, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 507, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 508, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 509, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 510, -- Shadow Dancer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 2, op = "==", value = 25 }, -- +15-25 to Dexterity
      { index = 188, op = "==", param = 49, value = 2 }, -- +1-2 to Shadow Disciplines (Assassin only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 511, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 512, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 513, -- Templar's Might
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 32, op = "==", value = 300 }, -- +250-300 Defense vs. Missile
      { index = 0, op = "==", value = 25 }, -- +15-25 to Strength
      { index = 3, op = "==", value = 25 }, -- +15-25 to Vitality
      { index = 83, op = "==", param = 3, value = 2 }, -- +1-2 to Paladin Skill Levels
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 514, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 515, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 516, -- Nature's Nurture
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 83, op = "==", param = 5, value = 2 }, -- +1-2 to Druid Skill Levels
      { index = 283, op = "==", value = 2 }, -- +1-2 Summoning Power
      { index = 284, op = "==", value = 75 }, -- Summon Max HP: +50-75%
      { index = 3, op = "==", value = 30 }, -- +20-30 to Vitality
      { index = 403, op = "==", value = 40 }, -- Increase Raven Damage by 30-40%
      { index = 332, op = "==", value = 15 }, -- +15-25% to Poison Skill Damage
      { index = 357, op = "==", value = 25 }, -- +15-25% to Magic Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 517, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 518, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 519, -- Firebelr
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 276, op = "==", value = 2 }, -- +1-2 Spell Power
      { index = 418, op = "==", value = 5 }, -- Increase explosion radius of fireball by 3-5
      { index = 107, op = "==", param = 41, value = 7 }, -- +3-7 to Fire Ball (Sorceress only)
      { index = 189, op = "==", value = 20 }, -- Enemy fire immunity reduced by 10-20%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 520, -- Flightless
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 2, op = ">=", value = 15 }, -- +5-15 to Dexterity
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 501-520
    {
      codes = "allitems",
      quality = "7",
      index = 501, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 502, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 503, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 504, -- Earth Shifter, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 188, op = "<=", param = 41, value = (1 + (5-1)*0.7) }, -- +1-5 to Blaze Wolf (Druid Only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 505, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 506, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 507, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 508, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 509, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 510, -- Shadow Dancer, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 2, op = "<=", value = (15 + (25-15)*0.7) }, -- +15-25 to Dexterity
      { index = 188, op = "<=", param = 49, value = (1 + (2-1)*0.7) }, -- +1-2 to Shadow Disciplines (Assassin only)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 511, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 512, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 513, -- Templar's Might, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 32, op = "<=", value = (250 + (300-250)*0.7) }, -- +250-300 Defense vs. Missile
      { index = 0, op = "<=", value = (15 + (25-15)*0.7) }, -- +15-25 to Strength
      { index = 3, op = "<=", value = (15 + (25-15)*0.7) }, -- +15-25 to Vitality
      { index = 83, op = "<=", param = 3, value = (1 + (2-1)*0.7) }, -- +1-2 to Paladin Skill Levels
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 514, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 515, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 516, -- Nature's Nurture, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 83, op = "<=", param = 5, value = (1 + (2-1)*0.7) }, -- +1-2 to Druid Skill Levels
      { index = 283, op = "<=", value = (1 + (2-1)*0.7) }, -- +1-2 Summoning Power
      { index = 284, op = "<=", value = (50 + (75-50)*0.7) }, -- Summon Max HP: +50-75%
      { index = 3, op = "<=", value = (20 + (30-20)*0.7) }, -- +20-30 to Vitality
      { index = 403, op = "<=", value = (30 + (40-30)*0.7) }, -- Increase Raven Damage by 30-40%
      { index = 332, op = "<=", value = (15 + (25-15)*0.7) }, -- +15-25% to Poison Skill Damage
      { index = 357, op = "<=", value = (15 + (25-15)*0.7) }, -- +15-25% to Magic Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 517, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 518, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 519, -- Firebelr, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 276, op = "<=", value = (1 + (2-1)*0.7) }, -- +1-2 Spell Power
      { index = 418, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase explosion radius of fireball by 3-5
      { index = 107, op = "<=", param = 41, value = (3 + (7-3)*0.7) }, -- +3-7 to Fire Ball (Sorceress only)
      { index = 189, op = "<=", value = (10 + (20-10)*0.7) }, -- Enemy fire immunity reduced by 10-20%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 520, -- Flightless, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 2, op = "<=", value = (5 + (15-5)*0.7) }, -- +5-15 to Dexterity
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 521-540
    {
      codes = "allitems",
      quality = "7",
      index = 521, -- Pinpoint
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 10 }, -- All Resistances +7-10%
      { index = 19, op = "==", value = 180 }, -- +60-180 to Attack Rating
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 522, -- Nokozan Relic
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 523, -- The Eye of Etlich
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 32, op = "==", value = 40 }, -- +10-40 Defense vs. Missile
      { index = 89, op = "==", value = 5 }, -- +1-5 to Light Radius
      { index = 60, op = "==", value = 7 }, -- 3-7% Life stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 524, -- The Mahim-Oak Curio
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 525, -- Nagelring
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 19, op = "==", value = 75 }, -- +50-75 to Attack Rating
      { index = 80, op = "==", value = 30 }, -- +15-30% Chance of Higher Quality Items
      { index = 99, op = "==", value = 10 }, -- +6-10% Faster Hit Recovery
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 526, -- Manald Heal
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 62, op = "==", value = 7 }, -- 4-7% Mana stolen per hit
      { index = 74, op = "==", value = 8 }, -- Replenish Life +5-8
      { index = 86, op = "==", value = 5 }, -- +3-5 Life after each Kill
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 527, -- The Stone of Jordan
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 528, -- Bul-Kathos' Wedding Band
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 60, op = "==", value = 5 }, -- 3-5% Life stolen per hit
      { index = 138, op = "==", value = 8 }, -- +2-8 to Mana after each Kill
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 529, -- The Cat's Eye
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 530, -- The Rising Sun
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 531, -- Crescent Moon
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 62, op = "==", value = 15 }, -- 11-15% Mana stolen per hit
      { index = 60, op = "==", value = 6 }, -- 3-6% Life stolen per hit
      { index = 93, op = "==", value = 20 }, -- +10-20% Increased Attack Speed
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 532, -- Mara's Kaleidoscope
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 30 }, -- All Resistances +20-30%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 533, -- Atma's Scarab
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 534, -- Dwarf Star
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 80, op = "==", value = 20 }, -- +10-20% Chance of Higher Quality Items
      { index = 96, op = "==", value = 15 }, -- +10-15% Faster Run/Walk
      { index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 12-15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 535, -- Raven Frost
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 2, op = "==", value = 20 }, -- +15-20 to Dexterity
      { index = 19, op = "==", value = 250 }, -- +150-250 to Attack Rating
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 536, -- Highlord's Wrath
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 537, -- Saracen's Chance
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = "==", value = 25 }, -- All Resistances +15-25%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 538, -- Nature's Peace
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 34, op = "==", value = 11 }, -- Damage Reduced by 7-11
      { index = 45, op = "==", value = 30 }, -- Poison Resist +20-30%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 539, -- Seraph's Hymn
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 188, op = "==", param = 26, value = 2 }, -- +1-2 to Ascending Leadership (Paladin only)
      { index = 121, op = "==", value = 50 }, -- +25-50% Damage to Demons
      { index = 122, op = "==", value = 50 }, -- +25-50% Damage to Undead
      { index = 123, op = "==", value = 250 }, -- +150-250 to Attack Rating against Demons
      { index = 124, op = "==", value = 250 }, -- +150-250 to Attack Rating against Undead
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 540, -- Wisp Projector
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 144, op = "==", value = 20 }, -- Lightning Absorb 10-20%
      { index = 80, op = "==", value = 20 }, -- +10-20% Chance of Higher Quality Items
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 521-540
    {
      codes = "allitems",
      quality = "7",
      index = 521, -- Pinpoint, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (7 + (10-7)*0.7) }, -- All Resistances +7-10%
      { index = 19, op = "<=", value = (60 + (180-60)*0.7) }, -- +60-180 to Attack Rating
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 522, -- Nokozan Relic, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 523, -- The Eye of Etlich, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 32, op = "<=", value = (10 + (40-10)*0.7) }, -- +10-40 Defense vs. Missile
      { index = 89, op = "<=", value = (1 + (5-1)*0.7) }, -- +1-5 to Light Radius
      { index = 60, op = "<=", value = (3 + (7-3)*0.7) }, -- 3-7% Life stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 524, -- The Mahim-Oak Curio, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 525, -- Nagelring, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 19, op = "<=", value = (50 + (75-50)*0.7) }, -- +50-75 to Attack Rating
      { index = 80, op = "<=", value = (15 + (30-15)*0.7) }, -- +15-30% Chance of Higher Quality Items
      { index = 99, op = "<=", value = (6 + (10-6)*0.7) }, -- +6-10% Faster Hit Recovery
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 526, -- Manald Heal, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 62, op = "<=", value = (4 + (7-4)*0.7) }, -- 4-7% Mana stolen per hit
      { index = 74, op = "<=", value = (5 + (8-5)*0.7) }, -- Replenish Life +5-8
      { index = 86, op = "<=", value = (3 + (5-3)*0.7) }, -- +3-5 Life after each Kill
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 527, -- The Stone of Jordan, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 528, -- Bul-Kathos' Wedding Band, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 60, op = "<=", value = (3 + (5-3)*0.7) }, -- 3-5% Life stolen per hit
      { index = 138, op = "<=", value = (2 + (8-2)*0.7) }, -- +2-8 to Mana after each Kill
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 529, -- The Cat's Eye, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 530, -- The Rising Sun, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 531, -- Crescent Moon, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 62, op = "<=", value = (11 + (15-11)*0.7) }, -- 11-15% Mana stolen per hit
      { index = 60, op = "<=", value = (3 + (6-3)*0.7) }, -- 3-6% Life stolen per hit
      { index = 93, op = "<=", value = (10 + (20-10)*0.7) }, -- +10-20% Increased Attack Speed
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 532, -- Mara's Kaleidoscope, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (20 + (30-20)*0.7) }, -- All Resistances +20-30%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 533, -- Atma's Scarab, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 534, -- Dwarf Star, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 80, op = "<=", value = (10 + (20-10)*0.7) }, -- +10-20% Chance of Higher Quality Items
      { index = 96, op = "<=", value = (10 + (15-10)*0.7) }, -- +10-15% Faster Run/Walk
      { index = 35, op = "<=", value = (12 + (15-12)*0.7) }, -- Magic Damage Reduced by 12-15
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 535, -- Raven Frost, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 2, op = "<=", value = (15 + (20-15)*0.7) }, -- +15-20 to Dexterity
      { index = 19, op = "<=", value = (150 + (250-150)*0.7) }, -- +150-250 to Attack Rating
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 536, -- Highlord's Wrath, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 537, -- Saracen's Chance, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (15 + (25-15)*0.7) }, -- All Resistances +15-25%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 538, -- Nature's Peace, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 34, op = "<=", value = (7 + (11-7)*0.7) }, -- Damage Reduced by 7-11
      { index = 45, op = "<=", value = (20 + (30-20)*0.7) }, -- Poison Resist +20-30%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 539, -- Seraph's Hymn, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 188, op = "<=", param = 26, value = (1 + (2-1)*0.7) }, -- +1-2 to Ascending Leadership (Paladin only)
      { index = 121, op = "<=", value = (25 + (50-25)*0.7) }, -- +25-50% Damage to Demons
      { index = 122, op = "<=", value = (25 + (50-25)*0.7) }, -- +25-50% Damage to Undead
      { index = 123, op = "<=", value = (150 + (250-150)*0.7) }, -- +150-250 to Attack Rating against Demons
      { index = 124, op = "<=", value = (150 + (250-150)*0.7) }, -- +150-250 to Attack Rating against Undead
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 540, -- Wisp Projector, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 144, op = "<=", value = (10 + (20-10)*0.7) }, -- Lightning Absorb 10-20%
      { index = 80, op = "<=", value = (10 + (20-10)*0.7) }, -- +10-20% Chance of Higher Quality Items
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 541-560
    {
      codes = "allitems",
      quality = "7",
      index = 541, -- Constricting Ring
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = ">=", value = 40 }, -- All Resistances +30-40%
      { index = 80, op = ">=", value = 70 }, -- +45-70% Chance of Higher Quality Items
      { index = 76, op = "==", value = 10 }, -- Increase Maximum Life by -10–10%
      { index = 77, op = "==", value = 10 }, -- Increase Maximum Mana by -10–10%
      { index = 189, op = "==", value = 25 }, -- Enemy fire immunity reduced by 20-25%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 542, -- Gheed's Fortune
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 80, op = "==", value = 40 }, -- +20-40% Chance of Higher Quality Items
      { index = 79, op = "==", value = 40 }, -- 20-40% Extra Gold from Monsters
      { index = 0, op = "==", value = 15 }, -- +5-15 to Strength (all attribute)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 543, -- Annihilus
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 0, op = "==", value = 20 }, -- +10-20 to Strength (all attribute)
      { index = 39, op = "==", value = 20 }, -- All Resistances +10-20%
      { index = 85, op = "==", value = 10 }, -- +5-10% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 544, -- Carrion Wind
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 32, op = "==", value = 160 }, -- +100-160 Defense vs. Missile
      { index = 60, op = "==", value = 9 }, -- 6-9% Life stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 545, -- Metalgrid
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 31, op = "==", value = 350 }, -- +300-350 Defense
      { index = 39, op = "==", value = 35 }, -- All Resistances +25-35%
      { index = 19, op = "==", value = 450 }, -- +400-450 to Attack Rating
      { index = 283, op = "==", value = 2 }, -- +1-2 Summoning Power
      { index = 105, op = "==", value = 15 }, -- +10-15% Faster Cast Rate
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 546, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 547, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 548, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 549, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 550, -- Lightning Facet
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 334, op = "==", value = 5 }, -- -3-5% Enemy Lightning Resistance
      { index = 330, op = "==", value = 5 }, -- +3-5% Lightning Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 551, -- Cold Facet
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 335, op = "==", value = 5 }, -- -3-5% Enemy Cold Resistance
      { index = 331, op = "==", value = 5 }, -- +3-5% Cold Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 552, -- Fire Facet
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 333, op = "==", value = 5 }, -- -3-5% Enemy Fire Resistance
      { index = 329, op = "==", value = 5 }, -- +3-5% Fire Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 553, -- Poison Facet
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 332, op = "==", value = 5 }, -- +3-5% Poison Skill Damage
      { index = 336, op = "==", value = 5 }, -- -3-5% Enemy Poison Resistance
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 554, -- Physical Facet
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 555, -- Magic Facet
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 556, -- Hellfire Torch
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 0, op = "==", value = 20 }, -- +10-20 to Strength (all attribute)
      { index = 39, op = "==", value = 20 }, -- All Resistances +10-20%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 557, -- Beacon of Hope (blank)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 558, -- The Statue of Mythos (blank)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 559, -- Quality of Life Bag (blank)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 560, -- Magefist (Lightning)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 541-560
    {
      codes = "allitems",
      quality = "7",
      index = 541, -- Constricting Ring, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 39, op = "<=", value = (30 + (40-30)*0.7) }, -- All Resistances +30-40%
      { index = 80, op = "<=", value = (45 + (70-45)*0.7) }, -- +45-70% Chance of Higher Quality Items
      { index = 76, op = "<=", value = (-10 + (10-(-10))*0.7) }, -- Increase Maximum Life by -10–10%
      { index = 77, op = "<=", value = (-10 + (10-(-10))*0.7) }, -- Increase Maximum Mana by -10–10%
      { index = 189, op = "<=", value = (20 + (25-20)*0.7) }, -- Enemy fire immunity reduced by 20-25%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 542, -- Gheed's Fortune, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 80, op = "<=", value = (20 + (40-20)*0.7) }, -- +20-40% Chance of Higher Quality Items
      { index = 79, op = "<=", value = (20 + (40-20)*0.7) }, -- 20-40% Extra Gold from Monsters
      { index = 0, op = "<=", value = (5 + (15-5)*0.7) }, -- +5-15 to Strength (all attribute)
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 543, -- Annihilus, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 0, op = "<=", value = (10 + (20-10)*0.7) }, -- +10-20 to Strength (all attribute)
      { index = 39, op = "<=", value = (10 + (20-10)*0.7) }, -- All Resistances +10-20%
      { index = 85, op = "<=", value = (5 + (10-5)*0.7) }, -- +5-10% to Experience Gained
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 544, -- Carrion Wind, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 32, op = "<=", value = (100 + (160-100)*0.7) }, -- +100-160 Defense vs. Missile
      { index = 60, op = "<=", value = (6 + (9-6)*0.7) }, -- 6-9% Life stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 545, -- Metalgrid, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 31, op = "<=", value = (300 + (350-300)*0.7) }, -- +300-350 Defense
      { index = 39, op = "<=", value = (25 + (35-25)*0.7) }, -- All Resistances +25-35%
      { index = 19, op = "<=", value = (400 + (450-400)*0.7) }, -- +400-450 to Attack Rating
      { index = 283, op = "<=", value = (1 + (2-1)*0.7) }, -- +1-2 Summoning Power
      { index = 105, op = "<=", value = (10 + (15-10)*0.7) }, -- +10-15% Faster Cast Rate
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 546, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 547, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 548, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 549, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 550, -- Lightning Facet, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 334, op = "<=", value = (3 + (5-3)*0.7) }, -- -3-5% Enemy Lightning Resistance
      { index = 330, op = "<=", value = (3 + (5-3)*0.7) }, -- +3-5% Lightning Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 551, -- Cold Facet, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 335, op = "<=", value = (3 + (5-3)*0.7) }, -- -3-5% Enemy Cold Resistance
      { index = 331, op = "<=", value = (3 + (5-3)*0.7) }, -- +3-5% Cold Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 552, -- Fire Facet, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 333, op = "<=", value = (3 + (5-3)*0.7) }, -- -3-5% Enemy Fire Resistance
      { index = 329, op = "<=", value = (3 + (5-3)*0.7) }, -- +3-5% Fire Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 553, -- Poison Facet, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 332, op = "<=", value = (3 + (5-3)*0.7) }, -- +3-5% Poison Skill Damage
      { index = 336, op = "<=", value = (3 + (5-3)*0.7) }, -- -3-5% Enemy Poison Resistance
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 554, -- Physical Facet, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 555, -- Magic Facet, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 556, -- Hellfire Torch, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 0, op = "<=", value = (10 + (20-10)*0.7) }, -- +10-20 to Strength (all attribute)
      { index = 39, op = "<=", value = (10 + (20-10)*0.7) }, -- All Resistances +10-20%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 557, -- Beacon of Hope (blank), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 558, -- The Statue of Mythos (blank), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 559, -- Quality of Life Bag (blank), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 560, -- Magefist (Lightning), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 561-580
    {
      codes = "allitems",
      quality = "7",
      index = 561, -- Magefist (Cold)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 562, -- Magefist (Poison)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 563, -- Magefist (Magic)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 564, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 565, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 566, -- Hydra Master
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 97, op = "==", param = 648, value = 15 }, -- +10-15 to Tri-Hydra
      { index = 265, op = "==", value = 20 }, -- Increase Energy by +10-20%
      { index = 187, op = "==", value = 50 }, -- Enemy cold immunity reduced by 35-50%
      { index = 189, op = "==", value = 50 }, -- Enemy fire immunity reduced by 35-50%
      { index = 190, op = "==", value = 50 }, -- Enemy lightning immunity reduced by 35-50%
      { index = 77, op = "==", value = 25 }, -- Increase Maximum Mana by 20-25%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 567, -- Spiritual Savior
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 19, op = "==", value = 80 }, -- +50-80 to Attack Rating
      { index = 119, op = "==", value = 20 }, -- 15-20% Bonus to Attack Rating
      { index = 189, op = "==", value = 50 }, -- Enemy fire immunity reduced by 30-50%
      { index = 333, op = "==", value = 15 }, -- -10-15% to Enemy Fire Resistance
      { index = 334, op = "==", value = 15 }, -- -10-15% to Enemy Lightning Resistance
      { index = 335, op = "==", value = 15 }, -- -10-15% to Enemy Cold Resistance
      { index = 336, op = "==", value = 15 }, -- -10-15% to Enemy Poison Resistance
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 568, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 569, -- Fletcher's Fury
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 188, op = "==", param = 0, value = 2 }, -- +1-2 to Bow and Crossbow Skills (Amazon)
      { index = 119, op = "==", value = 30 }, -- 20-30% Bonus to Attack Rating
      { index = 93, op = "==", value = 25 }, -- +10-25% Increased Attack Speed
      { index = 138, op = "==", value = 5 }, -- +3-5 to Mana after each Kill
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 570, -- Indra's Guidance
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 119, op = "==", value = 30 }, -- 20-30% Bonus to Attack Rating
      { index = 93, op = "==", value = 20 }, -- +10-20% Increased Attack Speed
      { index = 138, op = "==", value = 4 }, -- +2-4 to Mana after each Kill
      { index = 330, op = "==", value = 15 }, -- +5-15% to Lightning Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 571, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 572, -- Robbin's Temple
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 415, op = "==", value = 5 }, -- Increase charm max weight by 3-5
      { index = 105, op = "==", value = 20 }, -- +10-20% Faster Cast Rate
      { index = 39, op = "==", value = 20 }, -- All Resistances +10-20%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 573, -- Gula's Testament of Gluttony
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Gluttony!",
      --suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 574, -- Luxuria's Testament of Lust
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Lust!",
      --suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 575, -- Avaritia's Testament of Greed
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Greed!",
      --suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 576, -- Ira's Testament of Wrath
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Wrath!",
      --suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 577, -- Acedia's Testament of Sloth
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Sloth!",
      --suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 578, -- Vanagloria's Testament of Vanity
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Vanity!",
      --suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 579, -- Superbia's Testament of Hubris
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Hubris!",
      --suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 580, -- Seven Deadly Sins
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "SINS!",
      --suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 561-580
    {
      codes = "allitems",
      quality = "7",
      index = 561, -- Magefist (Cold), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 562, -- Magefist (Poison), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 563, -- Magefist (Magic), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 564, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 565, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 566, -- Hydra Master, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 97, op = "<=", param = 648, value = (10 + (15-10)*0.7) }, -- +10-15 to Tri-Hydra
      { index = 265, op = "<=", value = (10 + (20-10)*0.7) }, -- Increase Energy by +10-20%
      { index = 187, op = "<=", value = (35 + (50-35)*0.7) }, -- Enemy cold immunity reduced by 35-50%
      { index = 189, op = "<=", value = (35 + (50-35)*0.7) }, -- Enemy fire immunity reduced by 35-50%
      { index = 190, op = "<=", value = (35 + (50-35)*0.7) }, -- Enemy lightning immunity reduced by 35-50%
      { index = 77, op = "<=", value = (20 + (25-20)*0.7) }, -- Increase Maximum Mana by 20-25%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 567, -- Spiritual Savior, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 19, op = "<=", value = (50 + (80-50)*0.7) }, -- +50-80 to Attack Rating
      { index = 119, op = "<=", value = (15 + (20-15)*0.7) }, -- 15-20% Bonus to Attack Rating
      { index = 189, op = "<=", value = (30 + (50-30)*0.7) }, -- Enemy fire immunity reduced by 30-50%
      { index = 333, op = "<=", value = (10 + (15-10)*0.7) }, -- -10-15% to Enemy Fire Resistance
      { index = 334, op = "<=", value = (10 + (15-10)*0.7) }, -- -10-15% to Enemy Lightning Resistance
      { index = 335, op = "<=", value = (10 + (15-10)*0.7) }, -- -10-15% to Enemy Cold Resistance
      { index = 336, op = "<=", value = (10 + (15-10)*0.7) }, -- -10-15% to Enemy Poison Resistance
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 568, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 569, -- Fletcher's Fury, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 188, op = "<=", param = 0, value = (1 + (2-1)*0.7) }, -- +1-2 to Bow and Crossbow Skills (Amazon)
      { index = 119, op = "<=", value = (20 + (30-20)*0.7) }, -- 20-30% Bonus to Attack Rating
      { index = 93, op = "<=", value = (10 + (25-10)*0.7) }, -- +10-25% Increased Attack Speed
      { index = 138, op = "<=", value = (3 + (5-3)*0.7) }, -- +3-5 to Mana after each Kill
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 570, -- Indra's Guidance, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 119, op = "<=", value = (20 + (30-20)*0.7) }, -- 20-30% Bonus to Attack Rating
      { index = 93, op = "<=", value = (10 + (20-10)*0.7) }, -- +10-20% Increased Attack Speed
      { index = 138, op = "<=", value = (2 + (4-2)*0.7) }, -- +2-4 to Mana after each Kill
      { index = 330, op = "<=", value = (5 + (15-5)*0.7) }, -- +5-15% to Lightning Skill Damage
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 571, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 572, -- Robbin's Temple, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 415, op = "<=", value = (3 + (5-3)*0.7) }, -- Increase charm max weight by 3-5
      { index = 105, op = "<=", value = (10 + (20-10)*0.7) }, -- +10-20% Faster Cast Rate
      { index = 39, op = "<=", value = (10 + (20-10)*0.7) }, -- All Resistances +10-20%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 573, -- Gula's Testament of Gluttony, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 574, -- Luxuria's Testament of Lust, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 575, -- Avaritia's Testament of Greed, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 576, -- Ira's Testament of Wrath, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 577, -- Acedia's Testament of Sloth, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 578, -- Vanagloria's Testament of Vanity, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 579, -- Superbia's Testament of Hubris, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 580, -- Seven Deadly Sins, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 581-600
    {
      codes = "allitems",
      quality = "7",
      index = 581, -- Spirit Striker
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 93, op = "==", value = 20 }, -- +10-20% Increased Attack Speed
      { index = 62, op = "==", value = 8 }, -- 5-8% Mana stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 582, -- Aim of Indra
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 93, op = "==", value = 25 }, -- +15-25% Increased Attack Speed
      { index = 334, op = "==", value = 15 }, -- -10-15% to Enemy Lightning Resistance
      { index = 278, op = "==", value = 2 }, -- +1-2 Combat Power
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 583, -- Enchanted Flame
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 93, op = "==", value = 30 }, -- +20-30% Increased Attack Speed
      { index = 189, op = "==", value = 20 }, -- Enemy fire immunity reduced by 10-20%
      { index = 276, op = "==", value = 3 }, -- +1-3 Spell Power
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 584, -- Mageflight
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 93, op = "==", value = 30 }, -- +20-30% Increased Attack Speed
      { index = 357, op = "==", value = 30 }, -- +20-30% to Magic Skill Damage
      { index = 193, op = "==", value = 30 }, -- Enemy magic immunity reduced by 20-30%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 585, -- Energy Manipulator
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 427, op = "==", value = 35 }, -- Increase Buff Durations by 25-35%
      { index = 107, op = "==", param = 58, value = 5 }, -- +3-5 to Energy Shield (Sorceress only)
      { index = 286, op = "==", value = 35 }, -- Reduce Cooldowns by 25-35%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 586, -- Trinity
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 329, op = "==", value = 25 }, -- +15-25% to Fire Skill Damage
      { index = 331, op = "==", value = 25 }, -- +15-25% to Cold Skill Damage
      { index = 330, op = "==", value = 25 }, -- +15-25% to Lightning Skill Damage
      { index = 187, op = "==", value = 25 }, -- Enemy cold immunity reduced by 15-25%
      { index = 189, op = "==", value = 25 }, -- Enemy fire immunity reduced by 15-25%
      { index = 190, op = "==", value = 25 }, -- Enemy lightning immunity reduced by 15-25%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 587, -- Quintessence
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 262, op = "==", value = 15 }, -- Increase Strength by +5-15%
      { index = 263, op = "==", value = 15 }, -- Increase Dexterity by +5-15%
      { index = 264, op = "==", value = 15 }, -- Increase Vitality by +5-15%
      { index = 265, op = "==", value = 15 }, -- Increase Energy by +5-15%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 588, -- Life Everlasting
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 151, op = "==", param = 99, value = 15 }, -- Level 10-15 Prayer Aura When Equipped
      { index = 7, op = "==", value = 50*256 }, -- +25-50 to Life
      { index = 9, op = "==", value = 50*256 }, -- +25-50 to Mana
      { index = 86, op = "==", value = 5 }, -- +3-5 Life after each Kill
      { index = 138, op = "==", value = 5 }, -- +3-5 to Mana after each Kill
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 589, -- Hunter's Mark
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 151, op = "==", param = 108, value = 10 }, -- Level 5-10 Blessed Aim Aura When Equipped
      { index = 62, op = "==", value = 10 }, -- 6-10% Mana stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 590, -- Unholy Commander
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 0, op = "==", value = 15 }, -- +10-15 to Strength (all attribute)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 591, -- Tommy's Enlightener
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 111, op = "==", value = 120 }, -- Damage +60-120
      { index = 107, op = "==", param = 112, value = 7 }, -- +3-7 to Blessed Hammer (Paladin only)
      { index = 357, op = "==", value = 20 }, -- +15-20% to Magic Skill Damage
      { index = 193, op = "==", value = 15 }, -- Enemy magic immunity reduced by 10-15%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 592, -- Curtis's Fortifier
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 0, op = "==", value = 20 }, -- +10-20 to Strength (all attribute)
      { index = 39, op = "==", value = 20 }, -- All Resistances +10-20%
      { index = 60, op = "==", value = 8 }, -- 5-8% Life stolen per hit
      { index = 62, op = "==", value = 8 }, -- 5-8% Mana stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 593, -- Kurec's Pride
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 36, op = "==", value = 15 }, -- Damage Reduced by 10-15%
      { index = 39, op = "==", value = 40 }, -- Fire Resist +30-40%
      { index = 83, op = "==", param = 5, value = 2 }, -- +1-2 to Druid Skill Levels
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 594, -- Spiritual Guardian
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 9, op = "==", value = 100*256 }, -- +50-100 to Mana
      { index = 77, op = "==", value = 10 }, -- Increase Maximum Mana by 5-10%
      { index = 190, op = "==", value = 50 }, -- Enemy lightning immunity reduced by 30-50%
      { index = 333, op = "==", value = 15 }, -- -10-15% to Enemy Fire Resistance
      { index = 334, op = "==", value = 15 }, -- -10-15% to Enemy Lightning Resistance
      { index = 335, op = "==", value = 15 }, -- -10-15% to Enemy Cold Resistance
      { index = 336, op = "==", value = 15 }, -- -10-15% to Enemy Poison Resistance
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 595, -- Blackmaw's Brutality
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 151, op = "==", param = 503, value = 15 }, -- Level 10-15 Physical Conviction Aura When Equipped
      { index = 93, op = "==", value = 15 }, -- +10-15% Increased Attack Speed
      { index = 39, op = "==", value = 30 }, -- All Resistances +20-30%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 596, -- Spencer's Dispenser
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 107, op = "==", param = 48, value = 4 }, -- +2-4 to Rolling Thunder (Sorceress only)
      { index = 190, op = "==", value = 25 }, -- Enemy lightning immunity reduced by 15-25%
      { index = 330, op = "==", value = 25 }, -- +15-25% to Lightning Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 597, -- Fletching of Frostbite
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 93, op = "==", value = 30 }, -- +20-30% Increased Attack Speed
      { index = 331, op = "==", value = 30 }, -- +20-30% to Cold Skill Damage
      { index = 187, op = "==", value = 30 }, -- Enemy cold immunity reduced by 20-30%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 598, -- A Healthy Breakfast
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- Display Aura (no stat index provided)
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 599, -- The Statue of Mythos (Amazon)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 600, -- The Statue of Mythos (Assassin)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 581-600
    {
      codes = "allitems",
      quality = "7",
      index = 581, -- Spirit Striker, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 93, op = "<=", value = (10 + (20-10)*0.7) }, -- +10-20% Increased Attack Speed
      { index = 62, op = "<=", value = (5 + (8-5)*0.7) }, -- 5-8% Mana stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 582, -- Aim of Indra, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 93, op = "<=", value = (15 + (25-15)*0.7) }, -- IAS
      { index = 334, op = "<=", value = (10 + (15-10)*0.7) }, -- -Enemy Lightning Res
      { index = 278, op = "<=", value = (1 + (2-1)*0.7) }, -- Combat Power
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 583, -- Enchanted Flame, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 93, op = "<=", value = (20 + (30-20)*0.7) }, -- IAS
      { index = 189, op = "<=", value = (10 + (20-10)*0.7) }, -- -Fire Immunity
      { index = 276, op = "<=", value = (1 + (3-1)*0.7) }, -- Spell Power
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 584, -- Mageflight, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 93, op = "<=", value = (20 + (30-20)*0.7) }, -- IAS
      { index = 357, op = "<=", value = (20 + (30-20)*0.7) }, -- Magic Skill Damage
      { index = 193, op = "<=", value = (20 + (30-20)*0.7) }, -- -Magic Immunity
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 585, -- Energy Manipulator, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 427, op = "<=", value = (25 + (35-25)*0.7) }, -- Buff Duration
      { index = 107, op = "<=", param = 58, value = (3 + (5-3)*0.7) }, -- Energy Shield
      { index = 286, op = "<=", value = (25 + (35-25)*0.7) }, -- Cooldown Reduction
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 586, -- Trinity, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 329, op = "<=", value = (15 + (25-15)*0.7) }, -- Fire Skill Damage
      { index = 331, op = "<=", value = (15 + (25-15)*0.7) }, -- Cold Skill Damage
      { index = 330, op = "<=", value = (15 + (25-15)*0.7) }, -- Lightning Skill Damage
      { index = 187, op = "<=", value = (15 + (25-15)*0.7) }, -- -Cold Immunity
      { index = 189, op = "<=", value = (15 + (25-15)*0.7) }, -- -Fire Immunity
      { index = 190, op = "<=", value = (15 + (25-15)*0.7) }, -- -Lightning Immunity
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 587, -- Quintessence, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 262, op = "<=", value = (5 + (15-5)*0.7) }, -- Strength %
      { index = 263, op = "<=", value = (5 + (15-5)*0.7) }, -- Dexterity %
      { index = 264, op = "<=", value = (5 + (15-5)*0.7) }, -- Vitality %
      { index = 265, op = "<=", value = (5 + (15-5)*0.7) }, -- Energy %
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 588, -- Life Everlasting, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 151, op = "<=", param = 99, value = (10 + (15-10)*0.7) }, -- Prayer Aura
      { index = 7, op = "<=", value = ((25 + (50-25)*0.7) * 256) }, -- Life
      { index = 9, op = "<=", value = ((25 + (50-25)*0.7) * 256) }, -- Mana
      { index = 86, op = "<=", value = (3 + (5-3)*0.7) }, -- Life after kill
      { index = 138, op = "<=", value = (3 + (5-3)*0.7) }, -- Mana after kill
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 589, -- Hunter's Mark, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 151, op = "<=", param = 108, value = (5 + (10-5)*0.7) }, -- Blessed Aim Aura
      { index = 62, op = "<=", value = (6 + (10-6)*0.7) }, -- Mana leech
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 590, -- Unholy Commander, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 0, op = "<=", value = (10 + (15-10)*0.7) }, -- Strength
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 591, -- Tommy's Enlightener, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 111, op = "<=", value = (60 + (120-60)*0.7) }, -- Damage
      { index = 107, op = "<=", param = 112, value = (3 + (7-3)*0.7) }, -- Blessed Hammer
      { index = 357, op = "<=", value = (15 + (20-15)*0.7) }, -- Magic Skill Damage
      { index = 193, op = "<=", value = (10 + (15-10)*0.7) }, -- -Magic Immunity
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 592, -- Curtis's Fortifier, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 0, op = "<=", value = (10 + (20-10)*0.7) }, -- Strength
      { index = 39, op = "<=", value = (10 + (20-10)*0.7) }, -- Res
      { index = 60, op = "<=", value = (5 + (8-5)*0.7) }, -- Life leech
      { index = 62, op = "<=", value = (5 + (8-5)*0.7) }, -- Mana leech
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 593, -- Kurec's Pride, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 36, op = "<=", value = (10 + (15-10)*0.7) }, -- DR
      { index = 39, op = "<=", value = (30 + (40-30)*0.7) }, -- Fire res
      { index = 83, op = "<=", param = 5, value = (1 + (2-1)*0.7) }, -- Druid skills
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 594, -- Spiritual Guardian, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 9, op = "<=", value = ((50 + (100-50)*0.7) * 256) }, -- Mana
      { index = 77, op = "<=", value = (5 + (10-5)*0.7) }, -- Max mana %
      { index = 190, op = "<=", value = (30 + (50-30)*0.7) }, -- -Lightning Immunity
      { index = 333, op = "<=", value = (10 + (15-10)*0.7) }, -- -Fire res
      { index = 334, op = "<=", value = (10 + (15-10)*0.7) }, -- -Lightning res
      { index = 335, op = "<=", value = (10 + (15-10)*0.7) }, -- -Cold res
      { index = 336, op = "<=", value = (10 + (15-10)*0.7) }, -- -Poison res
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 595, -- Blackmaw's Brutality, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 151, op = "<=", param = 503, value = (10 + (15-10)*0.7) }, -- Physical Conviction Aura
      { index = 93, op = "<=", value = (10 + (15-10)*0.7) }, -- IAS
      { index = 39, op = "<=", value = (20 + (30-20)*0.7) }, -- Res
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 596, -- Spencer's Dispenser, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 107, op = "<=", param = 48, value = (2 + (4-2)*0.7) }, -- Rolling Thunder
      { index = 190, op = "<=", value = (15 + (25-15)*0.7) }, -- -Lightning Immunity
      { index = 330, op = "<=", value = (15 + (25-15)*0.7) }, -- Lightning dmg
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 597, -- Fletching of Frostbite, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 93, op = "<=", value = (20 + (30-20)*0.7) }, -- IAS
      { index = 331, op = "<=", value = (20 + (30-20)*0.7) }, -- Cold dmg
      { index = 187, op = "<=", value = (20 + (30-20)*0.7) }, -- -Cold Immunity
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 598, -- A Healthy Breakfast, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 599, -- The Statue of Mythos (Amazon), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 600, -- The Statue of Mythos (Assassin), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 601-620
    {
      codes = "allitems",
      quality = "7",
      index = 601, -- The Statue of Mythos (Barbarian)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 602, -- The Statue of Mythos (Druid)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 603, -- The Statue of Mythos (Necromancer)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 604, -- The Statue of Mythos (Paladin)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 605, -- The Statue of Mythos (Sorceress)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 606, -- Cola Cube
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      --suffix = "\n {red} MAXED",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 607, -- Soul Stompers
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 96, op = "==", value = 25 }, -- +15-25% Faster Run/Walk
      { index = 145, op = "==", value = 10 }, -- +8-10 Lightning Absorb
      { index = 0, op = "==", value = 40 }, -- +30-40 to Strength
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} MAXED",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 608, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 609, -- Kingdom's Heart
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 34, op = "==", value = 25 }, -- Damage Reduced by 15-25
      { index = 35, op = "==", value = 25 }, -- Magic Damage Reduced by 15-25
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} MAXED",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 610, -- Prismatic Facet
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Max Prismatic!",
      --suffix = "\n {red} MAXED",
      filter_levels = "1,2,3",
    },
    {
      codes = "allitems",
      quality = "7",
      index = 611, -- Blank Talent
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Blank Talent",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 612, -- ------- bugged cap
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 613, -- ------- Bugged cap
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 614, -- ------- Bugged cap
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 615, -- ------- Bugged cap
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 616, -- ------- Bugged cap
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 617, -- ------- Bugged cap
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 618, -- ------- Bugged cap
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 619, -- ------- Bugged wep
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 620, -- ------- Bugged wep
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 601-620
    {
      codes = "allitems",
      quality = "7",
      index = 601, -- The Statue of Mythos (Barbarian), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 602, -- The Statue of Mythos (Druid), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 603, -- The Statue of Mythos (Necromancer), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 604, -- The Statue of Mythos (Paladin), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 605, -- The Statue of Mythos (Sorceress), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 606, -- Cola Cube, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 607, -- Soul Stompers, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 96, op = "<=", value = (15 + (25-15)*0.7) }, -- Faster Run/Walk
      { index = 145, op = "<=", value = (8 + (10-8)*0.7) }, -- Lightning Absorb
      { index = 0, op = "<=", value = (30 + (40-30)*0.7) }, -- Strength
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 608, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 609, -- Kingdom's Heart, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 34, op = "<=", value = (15 + (25-15)*0.7) }, -- DR
      { index = 35, op = "<=", value = (15 + (25-15)*0.7) }, -- MDR
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 610, -- Prismatic Facet, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 611, -- Blank Talent, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 612, -- ------- bugged cap, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 613, -- ------- Bugged cap, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 614, -- ------- Bugged cap, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 615, -- ------- Bugged cap, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 616, -- ------- Bugged cap, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 617, -- ------- Bugged cap, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 618, -- ------- Bugged cap, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 619, -- ------- Bugged wep, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 620, -- ------- Bugged wep, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 621-640
    {
      codes = "allitems",
      quality = "7",
      index = 621, -- Crainte Vomir
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided in dataset
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 622, -- Crainte Vomir (duplicate entry)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided in dataset
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 623, -- Spiritual Sentinel
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 193, op = "==", value = 50 }, -- Enemy magic immunity reduced by 30-50%
      { index = 40, op = "==", value = 5}, -- +3-5% to Maximum Fire Resist
      { index = 76, op = "==", value = 10}, -- Increase Maximum Life by 5-10%
      { index = 7, op = "==", value = 256*100}, -- +50-100 to Life
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 624, -- Spiritual Warden
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 191, op = "==", value = 50 }, -- Enemy poison immunity reduced by 30-50%
      { index = 77, op = "==", value = 10}, -- Increase Maximum Mana by 5-10%
      { index = 9, op = "==", value = 256*100}, -- +50-100 to Mana
      { index = 333, op = "==", value = 15 }, -- -10-15% to Enemy Fire Resistance
      { index = 334, op = "==", value = 15 }, -- -10-15% to Enemy Lightning Resistance
      { index = 335, op = "==", value = 15 }, -- -10-15% to Enemy Cold Resistance
      { index = 336, op = "==", value = 15 }, -- -10-15% to Enemy Poison Resistance
      },
      border = {165, 146, 099, 230},
      notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 625, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 626, -- Harlequin Crest (1.08)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 127, op = "==", value = 2}, -- +1-2 to All Skills
      },
      border = {165, 146, 099, 230},
      --notify = "Legacy Item Max",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 627, -- The Cat's Eye (1.08)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 278, op = "==", value = 3 }, -- +1-3 Combat Power
      },
      border = {165, 146, 099, 230},
      --notify = "Legacy Item",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 628, -- Arkaine's Valor (Bugged)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 127, op = "==", value = 2}, -- +1-2 to All Skills
      { index = 99, op = ">=", value = 30}, -- +20-30% Faster Hit Recovery
      },
      border = {165, 146, 099, 230},
      --notify = "Bugged Variant",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 629, -- String of Ears (Bugged)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 93, op = ">=", value = 20}, -- +15-20% Increased Attack Speed
      { index = 39, op = ">=", value = 25}, -- All Resistances +15-25%
      { index = 36, op = ">=", value = 15}, -- Damage Reduced by 10-15%
      },
      border = {165, 146, 099, 230},
      --notify = "Bugged Variant",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 630, -- Wizardspike (Fused)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 105, op = ">=", value = 50}, -- +35-50% Faster Cast Rate
      { index = 39, op = ">=", value = 75}, -- All Resistances +50-75%
      },
      border = {165, 146, 099, 230},
      --notify = "Fused Variant",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 631, -- Exsanguinate
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 60, op = ">=", value = 15}, -- 10-15% Life stolen per hit
      { index = 0, op = ">=", value = 15}, -- +10-15 to Strength
      { index = 86, op = ">=", value = 10}, -- +5-10 Life after each Kill
      },
      border = {165, 146, 099, 230},
      --notify = "Maxed",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 632, -- Monar's Gale
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 107, op = ">=", param = 250, value = 5}, -- +3-5 to Hurricane (Druid only)
      { index = 331, op = ">=", value = 20}, -- +15-20% to Cold Skill Damage
      { index = 79, op = ">=", value = 50}, -- 25-50% Extra Gold from Monsters
      },
      border = {165, 146, 099, 230},
      --notify = "Maxed",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 633, -- The Statue of Mythos (Amazon LB1)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 634, -- The Statue of Mythos (Assassin LB1)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 635, -- The Statue of Mythos (Barbarian LB1)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 636, -- The Statue of Mythos (Druid LB1)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 637, -- The Statue of Mythos (Necromancer LB1)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 638, -- The Statue of Mythos (Paladin LB1)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 639, -- The Statue of Mythos (Sorceress LB1)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 640, -- The Statue of Mythos (Amazon LB2)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 621-640
    {
      codes = "allitems",
      quality = "7",
      index = 621, -- Crainte Vomir, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 622, -- Crainte Vomir (duplicate entry), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 623, -- Spiritual Sentinel, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 193, op = "<=", value = (30 + (50-30)*0.7) }, -- Enemy magic immunity reduced by 30-50%
      { index = 40, op = "<=", value = (3 + (5-3)*0.7) }, -- +3-5% to Maximum Fire Resist
      { index = 76, op = "<=", value = (5 + (10-5)*0.7) }, -- Increase Maximum Life by 5-10%
      { index = 7, op = "<=", value = ((50 + (100-50)*0.7) * 256) }, -- +50-100 to Life
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 624, -- Spiritual Warden, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 191, op = "<=", value = (30 + (50-30)*0.7) }, -- Enemy poison immunity reduced by 30-50%
      { index = 77, op = "<=", value = (5 + (10-5)*0.7) }, -- Increase Maximum Mana by 5-10%
      { index = 9, op = "<=", value = ((50 + (100-50)*0.7) * 256) }, -- +50-100 to Mana
      { index = 333, op = "<=", value = (10 + (15-10)*0.7) }, -- -10-15% to Enemy Fire Resistance
      { index = 334, op = "<=", value = (10 + (15-10)*0.7) }, -- -10-15% to Enemy Lightning Resistance
      { index = 335, op = "<=", value = (10 + (15-10)*0.7) }, -- -10-15% to Enemy Cold Resistance
      { index = 336, op = "<=", value = (10 + (15-10)*0.7) }, -- -10-15% to Enemy Poison Resistance
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 625, -- -------, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 626, -- Harlequin Crest (1.08), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 127, op = "<=", value = (1 + (2-1)*0.7) }, -- +1-2 to All Skills
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 627, -- The Cat's Eye (1.08), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 278, op = "<=", value = (1 + (3-1)*0.7) }, -- +1-3 Combat Power
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 628, -- Arkaine's Valor (Bugged), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 127, op = "<=", value = (1 + (2-1)*0.7) }, -- +1-2 to All Skills
      { index = 99, op = "<=", value = (20 + (30-20)*0.7) }, -- +20-30% Faster Hit Recovery
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 629, -- String of Ears (Bugged), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 93, op = "<=", value = (15 + (20-15)*0.7) }, -- IAS
      { index = 39, op = "<=", value = (15 + (25-15)*0.7) }, -- All Resistances
      { index = 36, op = "<=", value = (10 + (15-10)*0.7) }, -- DR
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 630, -- Wizardspike (Fused), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 105, op = "<=", value = (35 + (50-35)*0.7) }, -- FCR
      { index = 39, op = "<=", value = (50 + (75-50)*0.7) }, -- All Resistances
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 631, -- Exsanguinate, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 60, op = "<=", value = (10 + (15-10)*0.7) }, -- Life stolen per hit
      { index = 0, op = "<=", value = (10 + (15-10)*0.7) }, -- Strength
      { index = 86, op = "<=", value = (5 + (10-5)*0.7) }, -- Life after kill
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 632, -- Monar's Gale, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 107, op = "<=", param = 250, value = (3 + (5-3)*0.7) }, -- Hurricane
      { index = 331, op = "<=", value = (15 + (20-15)*0.7) }, -- Cold Skill Damage
      { index = 79, op = "<=", value = (25 + (50-25)*0.7) }, -- Extra Gold
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 633, -- The Statue of Mythos (Amazon LB1), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 634, -- The Statue of Mythos (Assassin LB1), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 635, -- The Statue of Mythos (Barbarian LB1), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 636, -- The Statue of Mythos (Druid LB1), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 637, -- The Statue of Mythos (Necromancer LB1), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 638, -- The Statue of Mythos (Paladin LB1), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 639, -- The Statue of Mythos (Sorceress LB1), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 640, -- The Statue of Mythos (Amazon LB2), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 641-660
    {
      codes = "allitems",
      quality = "7",
      index = 641, -- The Statue of Mythos (Assassin LB2)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 642, -- The Statue of Mythos (Barbarian LB2)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 643, -- The Statue of Mythos (Druid LB2)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 644, -- The Statue of Mythos (Necromancer LB2)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 645, -- The Statue of Mythos (Paladin LB2)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 646, -- The Statue of Mythos (Sorceress LB2)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 647, -- The Statue of Mythos (Amazon LB3)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 648, -- The Statue of Mythos (Assassin LB3)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 649, -- The Statue of Mythos (Barbarian LB3)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 650, -- The Statue of Mythos (Druid LB3)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 651, -- The Statue of Mythos (Necromancer LB3)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 652, -- The Statue of Mythos (Paladin LB3)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 653, -- The Statue of Mythos (Sorceress LB3)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats provided
      },
      border = {165, 146, 099, 230},
      --notify = "",
      --suffix = "",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 654, -- Kuroneko no Himitsu
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 96, op = ">=", value = 20}, -- +15-20% Faster Run/Walk
      { index = 1, op = ">=", value = 50}, -- +35-50 to Energy
      { index = 3, op = ">=", value = 30}, -- +20-30 to Vitality
      },
      border = {165, 146, 099, 230},
      --notify = "Kuroneko",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 655, -- Dustdevil
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 151, op = ">=", param = 381, value = 10 }, -- Level 6-10 Redemption Aura When Equipped
      { index = 97, op = ">=", param = 151, value = 3}, -- +1-3 to Whirlwind
      { index = 2, op = ">=", value = 25}, -- +20-25 to Dexterity
      { index = 93, op = ">=", value = 60}, -- +40-60% Increased Attack Speed
      },
      border = {165, 146, 099, 230},
      --notify = "Maxed Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 656, -- Improvise
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 99, op = ">=", value = 30}, -- +20-30% Faster Hit Recovery
      { index = 136, op = ">=", value = 30}, -- 15-30% Chance of Crushing Blow
      { index = 278, op = ">=", value = 3}, -- +1-3 Combat Power
      },
      border = {165, 146, 099, 230},
      --notify = "Improvise",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 657, -- Ken'Juk's Blighted Visage
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 410, op = ">=", value = 2}, -- +1-2 Poision Skill
      { index = 336, op = ">=", value = 25}, -- -15-25% to Enemy Poison Resistance
      { index = 332, op = ">=", value = 20}, -- +15-20% to Poison Skill Damage
      { index = 276, op = ">=", value = 2}, -- +0-2 Spell Power
      },
      border = {165, 146, 099, 230},
      --notify = "Blighted Visage",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 658, -- Philios Prophecy
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 188, op = ">=", param = 1, value = 5}, -- +2-5 to Passive and Magic Skills (Amazon Only)
      { index = 107, op = ">=", param = 7, value = 7}, -- +3-7 to Prismatic Arrow (Amazon only)
      { index = 93, op = ">=", value = 70}, -- +30-70% Increased Attack Speed
      { index = 281, op = ">=", value = 199}, -- Summon Damage: +100-200%
      },
      border = {165, 146, 099, 230},
      --notify = "Philios Prophecy",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 659, -- Whisper
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 2, op = ">=", value = 15}, -- +5-15 to Dexterity
      { index = 156, op = ">=", value = 20}, -- +10-20% Chance of Piercing Attack
      },
      border = {165, 146, 099, 230},
      --notify = "Whisper",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 660, -- Dragon's Cinder
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 93, op = ">=", value = 30}, -- +20-30% Increased Attack Speed
      { index = 189, op = ">=", value = 30}, -- Enemy fire immunity reduced by 20-30%
      { index = 329, op = ">=", value = 30}, -- +20-30% to Fire Skill Damage
      { index = 7, op = ">=", value = 256*100}, -- +50-100 to Life
      },
      border = {165, 146, 099, 230},
      --notify = "Dragon's Cinder",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 641-660
    {
      codes = "allitems",
      quality = "7",
      index = 641, -- The Statue of Mythos (Assassin LB2), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 642, -- The Statue of Mythos (Barbarian LB2), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 643, -- The Statue of Mythos (Druid LB2), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 644, -- The Statue of Mythos (Necromancer LB2), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 645, -- The Statue of Mythos (Paladin LB2), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 646, -- The Statue of Mythos (Sorceress LB2), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 647, -- The Statue of Mythos (Amazon LB3), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 648, -- The Statue of Mythos (Assassin LB3), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 649, -- The Statue of Mythos (Barbarian LB3), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 650, -- The Statue of Mythos (Druid LB3), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 651, -- The Statue of Mythos (Necromancer LB3), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 652, -- The Statue of Mythos (Paladin LB3), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 653, -- The Statue of Mythos (Sorceress LB3), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 654, -- Kuroneko no Himitsu, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 96, op = "<=", value = (15 + (20-15)*0.7) }, -- FRW
      { index = 1, op = "<=", value = (35 + (50-35)*0.7) }, -- Energy
      { index = 3, op = "<=", value = (20 + (30-20)*0.7) }, -- Vitality
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 655, -- Dustdevil, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 151, op = "<=", param = 381, value = (6 + (10-6)*0.7) }, -- Redemption Aura
      { index = 97, op = "<=", param = 151, value = (1 + (3-1)*0.7) }, -- Whirlwind
      { index = 2, op = "<=", value = (20 + (25-20)*0.7) }, -- Dexterity
      { index = 93, op = "<=", value = (40 + (60-40)*0.7) }, -- IAS
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 656, -- Improvise, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 99, op = "<=", value = (20 + (30-20)*0.7) }, -- FHR
      { index = 136, op = "<=", value = (15 + (30-15)*0.7) }, -- Crushing Blow
      { index = 278, op = "<=", value = (1 + (3-1)*0.7) }, -- Combat Power
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 657, -- Ken'Juk's Blighted Visage, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 410, op = "<=", value = (1 + (2-1)*0.7) }, -- Poison Skill
      { index = 336, op = "<=", value = (15 + (25-15)*0.7) }, -- -Enemy Poison Res
      { index = 332, op = "<=", value = (15 + (20-15)*0.7) }, -- Poison Skill Damage
      { index = 276, op = "<=", value = (0 + (2-0)*0.7) }, -- Spell Power
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 658, -- Philios Prophecy, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 188, op = "<=", param = 1, value = (2 + (5-2)*0.7) }, -- Passive/Magic Skills
      { index = 107, op = "<=", param = 7, value = (3 + (7-3)*0.7) }, -- Prismatic Arrow
      { index = 93, op = "<=", value = (30 + (70-30)*0.7) }, -- IAS
      { index = 281, op = "<=", value = (100 + (200-100)*0.7) }, -- Summon Damage %
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 659, -- Whisper, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 2, op = "<=", value = (5 + (15-5)*0.7) }, -- Dexterity
      { index = 156, op = "<=", value = (10 + (20-10)*0.7) }, -- Piercing Attack
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 660, -- Dragon's Cinder, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 93, op = "<=", value = (20 + (30-20)*0.7) }, -- IAS
      { index = 189, op = "<=", value = (20 + (30-20)*0.7) }, -- -Fire Immunity
      { index = 329, op = "<=", value = (20 + (30-20)*0.7) }, -- Fire Skill Damage
      { index = 7, op = "<=", value = ((50 + (100-50)*0.7) * 256) }, -- Life
      },
      hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 661-680
    {
      codes = "allitems",
      quality = "7",
      index = 661, -- Serpent's Fangs
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 93, op = ">=", value = 30}, -- +20-30% Increased Attack Speed
      { index = 191, op = ">=", value = 30}, -- Enemy poison immunity reduced by 20-30%
      { index = 336, op = ">=", value = 30}, -- -20-30% to Enemy Poison Resistance
      { index = 60, op = ">=", value = 15}, -- 5-15% Life stolen per hit
      { index = 62, op = ">=", value = 15}, -- 5-15% Mana stolen per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Serpent's Fangs",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 662, -- Valkyrie Wing 1.08
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 276, op = ">=", value = 2}, -- +1-2 Spell Power
      { index = 278, op = ">=", value = 2}, -- +1-2 Combat Power
      },
      border = {165, 146, 099, 230},
      --notify = "Legacy",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 663, -- War Traveler (Bugged)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Bugged",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 664, -- Undead Crown Fused
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 283, op = ">=", value = 2}, -- +1-2 Summoning Power
      { index = 124, op = ">=", value = 100}, -- +50-100 to Attack Rating against Undead
      },
      border = {165, 146, 099, 230},
      --notify = "Fused",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 665, -- Colossal Charm
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 276, op = ">=", value = 3 }, -- +0-3 Spell Power
      {index = 278, op = ">=", value = 3 }, -- +0-3 Combat Power
      {index = 283, op = ">=", value = 3 }, -- +0-3 Summoning Power
      {index = 76, op = ">=", value = 50 }, -- Increase Maximum Life by -50-50%
      {index = 142, op = ">=", value = 5}, -- Fire Absorb 3-5% (all absorb)
      { index = 80,  op = ">=", value = 50}, -- -50-50% Chance of Higher Quality Items
      { index = 96, op = ">=", value = 50}, -- -50-50% Faster Run/Walk
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 666, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 667, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 668, -- Black Suede
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 96, op = ">=", value = 20}, -- +5-20% Faster Run/Walk
      { index = 7, op = ">=", value = 256*40}, -- +20-40 to Life
      { index = 45, op = ">=", value = 20}, -- Poison Resist +5-20%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 669, -- Allebasi
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 105, op = ">=", value = 15}, -- +10-15% Faster Cast Rate
      { index = 9, op = ">=", value = 256*20}, -- +10-20 to Mana
      { index = 35, op = ">=", value = 8}, -- Magic Damage Reduced by 4-8
      { index = 80,  op = ">=", value = 30}, -- +5-30% Chance of Higher Quality Items
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 670, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 671, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 672, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 673, -- Bigfoot
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 151, op = ">=", param = 113, value = 5}, -- Level 1-5 Concentration Aura When Equipped
      { index = 93, op = ">=", value = 30}, -- +15-30% Increased Attack Speed
      { index = 99, op = ">=", value = 24}, -- +12-24% Faster Hit Recovery
      { index = 7, op = ">=", value = 256*100}, -- +50-100 to Life
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 674, -- Static Calling
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 83, op = ">=", param = 2, value = 2}, -- +1-2 to Necromancer Skill Levels
      { index = 281, op = ">=", value = 150}, -- Summon Damage: +100-150%
      { index = 284, op = ">=", value = 40}, -- Summon Max HP: +20-40%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 675, --Prismatic Magefist
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Unique Placeholder",
      suffix = "\n {red} Merged Event Gloves",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 676, --The Rising Wisp
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      },
      border = {165, 146, 099, 230},
      --notify = "Unique Placeholder",
      suffix = "\n {red} Merged Event Ring",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 677, -- Akara's Blessing
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 143, op = ">=", value = 6}, -- +3-6 Fire Absorb
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 678, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 679, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 680, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 661-680
    {
      codes = "allitems",
      quality = "7",
      index = 661, -- Serpent's Fangs, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 93, op = "<=", value = (20 + (30-20)*0.7) }, -- +20-30% Increased Attack Speed
      { index = 191, op = "<=", value = (20 + (30-20)*0.7) }, -- Enemy poison immunity reduced by 20-30%
      { index = 336, op = "<=", value = (20 + (30-20)*0.7) }, -- -20-30% to Enemy Poison Resistance
      { index = 60, op = "<=", value = (5 + (15-5)*0.7) }, -- 5-15% Life stolen per hit
      { index = 62, op = "<=", value = (5 + (15-5)*0.7) }, -- 5-15% Mana stolen per hit
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 662, -- Valkyrie Wing 1.08, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 276, op = "<=", value = (1 + (2-1)*0.7) }, -- +1-2 Spell Power
      { index = 278, op = "<=", value = (1 + (2-1)*0.7) }, -- +1-2 Combat Power
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 663, -- War Traveler (Bugged), hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 664, -- Undead Crown Fused, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 283, op = "<=", value = (1 + (2-1)*0.7) }, -- +1-2 Summoning Power
      { index = 124, op = "<=", value = (50 + (100-50)*0.7) }, -- +50-100 to Attack Rating against Undead
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 665, -- Colossal Charm, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 276, op = "<=", value = (0 + (3-0)*0.7) }, -- +0-3 Spell Power
      { index = 278, op = "<=", value = (0 + (3-0)*0.7) }, -- +0-3 Combat Power
      { index = 283, op = "<=", value = (0 + (3-0)*0.7) }, -- +0-3 Summoning Power
      { index = 76, op = "<=", value = (-50 + (50-(-50))*0.7) }, -- Increase Maximum Life by -50-50%
      { index = 142, op = "<=", value = (3 + (5-3)*0.7) }, -- Fire Absorb 3-5% (all absorb)
      { index = 80, op = "<=", value = (-50 + (50-(-50))*0.7) }, -- -50-50% Chance of Higher Quality Items
      { index = 96, op = "<=", value = (-50 + (50-(-50))*0.7) }, -- -50-50% Faster Run/Walk
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 666, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 667, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 668, -- Black Suede, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 96, op = "<=", value = (5 + (20-5)*0.7) }, -- +5-20% Faster Run/Walk
      { index = 7, op = "<=", value = ((20 + (40-20)*0.7) * 256) }, -- +20-40 to Life
      { index = 45, op = "<=", value = (5 + (20-5)*0.7) }, -- Poison Resist +5-20%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 669, -- Allebasi, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 105, op = "<=", value = (10 + (15-10)*0.7) }, -- +10-15% Faster Cast Rate
      { index = 9, op = "<=", value = ((10 + (20-10)*0.7) * 256) }, -- +10-20 to Mana
      { index = 35, op = "<=", value = (4 + (8-4)*0.7) }, -- Magic Damage Reduced by 4-8
      { index = 80, op = "<=", value = (5 + (30-5)*0.7) }, -- +5-30% Chance of Higher Quality Items
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 670, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 671, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 672, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 673, -- Bigfoot, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 151, op = "<=", param = 113, value = (1 + (5-1)*0.7) }, -- Level 1-5 Concentration Aura When Equipped
      { index = 93, op = "<=", value = (15 + (30-15)*0.7) }, -- +15-30% Increased Attack Speed
      { index = 99, op = "<=", value = (12 + (24-12)*0.7) }, -- +12-24% Faster Hit Recovery
      { index = 7, op = "<=", value = ((50 + (100-50)*0.7) * 256) }, -- +50-100 to Life
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 674, -- Static Calling, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 83, op = "<=", param = 2, value = (1 + (2-1)*0.7) }, -- +1-2 to Necromancer Skill Levels
      { index = 281, op = "<=", value = (100 + (150-100)*0.7) }, -- Summon Damage: +100-150%
      { index = 284, op = "<=", value = (20 + (40-20)*0.7) }, -- Summon Max HP: +20-40%
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 675, --Prismatic Magefist, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 676, --The Rising Wisp, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 677, -- Akara's Blessing, hide <70%
      runeword = false,
      location = {"onground"},
      stat = {
      { index = 143, op = "<=", value = (3 + (6-3)*0.7) }, -- +3-6 Fire Absorb
      },
      hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 678, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 679, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 680, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 681-700
    {
      codes = "allitems",
      quality = "7",
      index = 681, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 682, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 683, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 684, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 685, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 686, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 687, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 688, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 689, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 690, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 691, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 692, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 693, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 694, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 695, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 696, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 697, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 698, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 699, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 700, -- -------
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      -- No stats (placeholder)
      },
      border = {165, 146, 099, 230},
      notify = "Unique Placeholder",
      suffix = "\n {red} NO STATS FOUND",
      filter_levels = "1,2,3"
    },
  --Hide <70% Unique Index 681-700
    {
      codes = "allitems",
      quality = "7",
      index = 681, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 682, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 683, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 684, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 685, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 686, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 687, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 688, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 689, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 690, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 691, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 692, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 693, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 694, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 695, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 696, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 697, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 698, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 699, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 700, -- -------
      runeword = false,
      location = {"onground"},
      stat = {
      -- No stats (placeholder)
      },
      --hide = true,
      filter_levels = "1,2,3"
    },
  },
}