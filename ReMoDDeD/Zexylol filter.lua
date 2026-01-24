--- Filter Title: Zexylol's Hardfilter v1.27
--- Filter Type: (Hardconfig filter)
--- Filter Description: \nFilter to remove non perfect superior bases. \nThis filter removes alot of items, and will continue to expand on that front. \nAll Uniques is done, Uniques 1-100 all stats <70% is hidden(WIP).
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
      --prefix = "S122={stat=(122)}|S22={stat=(22)}|S23={stat=(23)}|S24={stat=(24)}|",
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
    {--Uniques that can be Demon-Tempered
      codes = "allitems",
      quality = "7",
      stat = {index = 402, op = "==", value = 0 },
      index = {6, 45, 55, 71, 143, 189, 211, 213, 217, 225, 226, 231, 246, 247, 249, 254, 262, 281, 286, 292, 295, 299, 330, 335, 347, 366, 369, 379, 386, 412, 413, 418, 423, 428, 433, 438, 445, 447, 453, 483, 525, 527, 529, 532, 543, 556},
      location = {"onplayer", "atvendor"},
      prefix_desc = "{dark green}Can be Demon-Tempered\n",
      filter_levels = "1,2,3",
    },
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
      hide = true,
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
      {index = 135, op = "==", value = 35 }, -- +15–35% Chance of Open Wounds
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
      {index = 135, op = "<=", value = (15 + (35-15)*0.7)}, -- +15–35% Chance of Open Wounds
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
      hide = true,
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
      hide = true,
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
      hide = true,
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
      hide = true,
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
      hide = true,
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
      hide = true,
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
      hide = true,
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
      hide = true,
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
      hide = true,
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
  --ALL UNIQUES MAX STATS Index 101-150
    {
      codes = "allitems",
      quality = "7",
      index = 101, --Zakarum's Hand
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{index = 62, op = "==", value = 8 }, --8% Mana stolen per hit
      --{index = 115, op = "==", value = 1 }, --Ignore Target's Defense
      --{index = 74, op = "==", value = 10 }, --Replenish Life +10
      {index = 27, op = "==", value = 25 }, --Regenerate Mana 15–25%
      --{index = , op = "==", value = 5 }, --6% Chance to cast level 5 Blizzard on striking
      --{index = 25, op = "==", value = 220 }, --+180–220% Enhanced Damage
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 97, op = "==", param = 114, value = 2 }, --+2 to Holy Freeze
      --{index = 97, op = "==", param = 118, value = 2 }, --+2 to Holy Shock
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
      --{index = 83, op = "==", param = 3, value = 2 }, --+2 to Paladin Skill Levels
      --{index = , op = "==", value = 1 }, --5% Chance to cast level 1 Decrepify on striking
      --{index = , op = "==", value = 1 }, --10% Chance to cast level 1 Confuse on striking
      --{index = 57, op = "==", value = 160 }, --+160 Poison Damage Over 4 Seconds
      --{index = 25, op = "==", value = 190 }, --+160–190% Enhanced Damage
      {index = 19, op = "==", value = 200 }, --+150–200 to Attack Rating
      --{index = 22, op = "==", value = 25 }, --Adds 15–25 Damage
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
      --{index = 83, op = "==", param = 3, value = 2 }, --+2 to Paladin Skill Levels
      --{index = 25, op = "==", value = 160 }, --+130–160% Enhanced Damage
      --{index = 119, op = "==", value = 100 }, --100% Bonus to Attack Rating
      --{index = , op = "==", value = 50 }, --+50 Defense
      --{index = 27, op = "==", value = 15 }, --Regenerate Mana 15%
      --{index = 89, op = "==", value = 4 }, --+4 to Light Radius
      --{index = 22, op = "==", value = 45 }, --Adds 20–45 Damage
      --{index = 107, op = "==", param = 101, value = 4 }, --+4 to Holy Bolt (Paladin only)
      --{index = 107, op = "==", param = 121, value = 2 }, --+2 to Fist of the Heavens (Paladin only)
      --{index = , op = "==", value = 4 }, --5% Chance to cast level 4 Fist of the Heavens on striking
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
      {index = 135, op = "==", value = 15 }, --5–15% Chance of Open Wounds
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
      --{index = 136, op = "==", value = 10 }, --10% Chance of Crushing Blow
      {index = 141, op = "==", value = 15 }, --5–15% Deadly Strike
      --{index = 22, op = "==", value = 50 }, --Adds 35–50 Damage
      --{index = 25, op = "==", value = 200 }, --+130–200% Enhanced Damage
      --{index = 83, op = "==", param = 0, value = 1 }, --+1 to Druid Skill Levels
      --{index = 107, op = "==", param = ?, value = 2 }, --+2 to Frost Bear (Druid Only)
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
      --{index = 55, op = "==", value = 112 }, --Adds 63–112 Cold Damage
      --{index = 118, op = "==", value = 1 }, --Half Freeze Duration
      --{index = 25, op = "==", value = 180 }, --+150–180% Enhanced Damage
      --{index = 22, op = "==", value = 10 }, --Adds 5–10 Damage
      --{index = 134, op = "==", value = 1 }, --Freezes target
      --{index = , op = "==", value = 10 }, --Level 10 Frozen Orb (50 Charges)
      {index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
      {index = 34, op = "==", value = 10 }, --Damage Reduced by 5–10
      --{index = 122, op = "==", value = 50 }, --+50% Damage To Undead
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
      --{index = , op = "==", value = 6 }, --5% Chance to cast level 6 Meteor on striking
      --{index = 48, op = "==", value = 115 }, --Adds 55–115 Fire Damage
      {index = 35, op = "==", value = 12 }, --Magic Damage Reduced by 9–12
      --{index = 25, op = "==", value = 150 }, --+120–150% Enhanced Damage
      --{index = 89, op = "==", value = 2 }, --+2 to Light Radius
      --{index = , op = "==", value = 15 }, --Level 15 Meteor (30 Charges)
      --{index = 22, op = "==", value = 15 }, --Adds 10–15 Damage
      --{index = 122, op = "==", value = 50 }, --+50% Damage To Undead
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
      --{index = , op = "==", value = 5 }, --10% Chance to cast level 5 Nova on striking
      --{index = 51, op = "==", value = 150 }, --Adds 1–150 Lightning Damage
      --{index = 9, op = "==", value = 100 * 256 }, --+100 to Mana
      --{index = 41, op = "==", value = 25 }, --Lightning Resist +25%
      --{index = 25, op = "==", value = 200 }, --+160–200% Enhanced Damage
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      --{index = , op = "==", value = 15 }, --Level 15 Nova (80 Charges)
      {index = 34, op = "==", value = 10 }, --Damage Reduced by 7–10
      --{index = 122, op = "==", value = 50 }, --+50% Damage To Undead
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
      --{index = , op = "==", value = 7 }, --5% Chance to cast level 7 Fissure on striking
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 25, op = "==", value = 180 }, --+180% Enhanced Damage
      --{index = 113, op = "==", value = 1 }, --Hit Blinds Target +1
      --{index = 107, op = "==", param = ?, value = 3 }, --+3 to Blaze Wolf Skills (Druid Only)
      {index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
      {index = 35, op = "==", value = 10 }, --Magic Damage Reduced by 7–10
      --{index = 122, op = "==", value = 50 }, --+50% Damage To Undead
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
      --{index = 136, op = "==", value = 20 }, --20% Chance of Crushing Blow
      --{index = 25, op = "==", value = 220 }, --+180–220% Enhanced Damage
      --{index = 39, op = "==", value = 20 }, --All Resistances +20
      --{index = 0, op = "==", value = 25 }, --+25 to Strength
      --{index = 188, op = "==", param = 33, value = 2 }, --+2 to War Masteries (Barbarian Only)
      --{index = 97, op = "==", param = 139, value = 3 }, --+3 to Ground Render
      {index = 34, op = "==", value = 10 }, --Damage Reduced by 5–10
      {index = 35, op = "==", value = 10 }, --Magic Damage Reduced by 5–10
      --{index = 122, op = "==", value = 50 }, --+50% Damage To Undead
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
      --{index = , op = "==", value = 5 }, --5% Chance to cast level 5 Amplify Damage on striking
      --{index = , op = "==", value = 5 }, --5% Chance to cast level 5 Iron Maiden when struck
      --{index = 78, op = "==", value = 26 }, --Attacker Takes Damage of 26
      --{index = 22, op = "==", value = 30 }, --Adds 12–30 Damage
      --{index = 25, op = "==", value = 160 }, --+130–160% Enhanced Damage
      {index = 34, op = "==", value = 10 }, --Damage Reduced by 5–10
      {index = 35, op = "==", value = 10 }, --Magic Damage Reduced by 5–10
      --{index = 122, op = "==", value = 50 }, --+50% Damage To Undead
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
      --{index = 22, op = "==", value = 45 }, --Adds 12–45 Damage
      --{index = 19, op = "==", value = 90 }, --+90 to Attack Rating
      --{index = 60, op = "==", value = 8 }, --8% Life stolen per hit
      --{index = 62, op = "==", value = 8 }, --8% Mana stolen per hit
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      --{index = 25, op = "==", value = 140 }, --+140% Enhanced Damage
      {index = 107, op = "==", param = 127, value = 4 }, --+2–4 to Master At Arms (Barbarian only)
      {index = 107, op = "==", param = 151, value = 3 }, --+1–3 to Whirlwind (Barbarian only)
      {index = 34, op = "==", value = 8 }, --Damage Reduced by 5–8
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
      --{index = 113, op = "==", value = 1 }, --Hit Blinds Target +1
      {index = 150, op = "==", value = 30 }, --Slows Target by 15–30%
      --{index = 141, op = "==", value = 10 }, --10% Deadly Strike
      --{index = 25, op = "==", value = 250 }, --+200–250% Enhanced Damage
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      --{index = 62, op = "==", value = 6 }, --6% Mana stolen per hit
      {index = 34, op = "==", value = 9 }, --Damage Reduced by 6–9
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
      --{index = , op = "==", value = 1 }, --+1 Fire Mastery
      --{index = 115, op = "==", value = 1 }, --Ignore Target's Defense
      --{index = 39, op = "==", value = 25 }, --Fire Resist +25%
      --{index = 40, op = "==", value = 10 }, --+10% to Maximum Fire Resist
      --{index = 22, op = "==", value = 40 }, --Adds 35–40 Damage
      --{index = 25, op = "==", value = 160 }, --+140–160% Enhanced Damage
      --{index = 407, op = "==", value = 3 }, --+3 to Fire Skills
      {index = 35, op = "==", value = 12 }, --Magic Damage Reduced by 7–12
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
      --{index = 239, op = "==", value = 5 }, --0.625% Extra Gold from Monsters (Based on Character Level)
      --{index = 240, op = "==", value = 8 }, --1.0% Better Chance of Getting Magic Items (Based on Character Level)
      --{index = 9, op = "==", value = 15 * 256 }, --+15 to Mana
      --{index = 25, op = "==", value = 120 }, --+60–120% Enhanced Damage
      {index = 2, op = "==", value = 15 }, --+5–15 to Dexterity
      {index = 34, op = "==", value = 12 }, --Damage Reduced by 7–12
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
      {index = 35, op = "==", value = 12 }, --Magic Damage Reduced by 7–12
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = , op = "==", value = 120 }, --Adds 50–120 Magic Damage
      --{index = 25, op = "==", value = 150 }, --+100–150% Enhanced Damage
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
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
      --{index = 0, op = "==", value = 15 }, --+15 to Strength
      --{index = 250, op = "==", value = 8*0.375 }, --+0.375% Deadly Strike (Based on Character Level)
      --{index = 218, op = "==", value = 8 }, --+1.0 to Maximum Damage (Based on Character Level)
      --{index = 25, op = "==", value = 150 }, --+150% Enhanced Damage
      {index = 34, op = "==", value = 9 }, --Damage Reduced by 6–9
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
      --{index = , op = "==", value = 4 }, --5% Chance to cast level 4 Poison Nova on striking
      --{index = 57, op = "==", value = 300 }, --+300 Poison Damage Over 8 Seconds
      --{index = 22, op = "==", value = 45 }, --Adds 10–45 Damage
      --{index = 25, op = "==", value = 150 }, --+150% Enhanced Damage
      --{index = 45, op = "==", value = 45 }, --Poison Resist +45%
      --{index = 107, op = "==", param = 73, value = 5 }, --+5 to Blight Strike (Necromancer only)
      {index = 34, op = "==", value = 9 }, --Damage Reduced by 6–9
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
      --{index = , op = "==", value = 75 }, --+75 Defense
      --{index = 0, op = "==", value = 16 }, --+16 to Strength
      --{index = 2, op = "==", value = 12 }, --+12 to Dexterity
      --{index = 3, op = "==", value = 8 }, --+8 to Vitality
      --{index = 25, op = "==", value = 250 }, --+200–250% Enhanced Damage
      --{index = 83, op = "==", param = 3, value = 2 }, --+2 to Paladin Skill Levels
      --{index = 119, op = "==", value = 50 }, --50% Bonus to Attack Rating
      {index = 34, op = "==", value = 9 }, --Damage Reduced by 6–9
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
      --{index = 150, op = "==", value = 35 }, --Slows Target by 35%
      --{index = , op = "==", value = 70 }, ---70 to Monster Defense Per Hit
      --{index = 96, op = "==", value = 20 }, --+20% Faster Run/Walk
      --{index = 36, op = "==", value = 10 }, --Damage Reduced by 10%
      --{index = 25, op = "==", value = 200 }, --+160–200% Enhanced Damage
      --{index = 93, op = "==", value = 50 }, --+50% Increased Attack Speed
      --{index = 427, op = "==", value = 20 }, --Increase Buff Durations by 20%
      {index = 35, op = "==", value = 10 }, --Magic Damage Reduced by 7–10
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
      --{index = 91, op = "==", value = -30 }, --Requirements -30%
      --{index = 55, op = "==", value = 140 }, --Adds 50–140 Cold Damage
      --{index = 0, op = "==", value = 20 }, --+20 to Strength
      --{index = 134, op = "==", value = 1 }, --Freezes target
      --{index = , op = "==", value = 3 }, --5% Chance to cast level 3 Frozen Orb on striking
      --{index = 25, op = "==", value = 160 }, --+130–160% Enhanced Damage
      {index = 35, op = "==", value = 10 }, --Magic Damage Reduced by 7–10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 121, --The Vile Husk
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{index = , op = "==", value = 5 }, --6% Chance to cast level 5 Amplify Damage on striking
      --{index = 244, op = "==", value = 60 }, --+7.5% Damage to Undead (Based on Character Level)
      --{index = 45, op = "==", value = 50 }, --Poison Resist +50%
      --{index = 57, op = "==", value = 250 }, --+250 Poison Damage Over 6 Seconds
      --{index = 25, op = "==", value = 200 }, --+150–200% Enhanced Damage
      --{index = 246, op = "==", value = 2*10 }, --+10.0 to Attack Rating against Undead (Based on Character Level)
      {index = 34, op = "==", value = 10 }, --Damage Reduced by 7–10
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
      --{index = , op = "==", value = 7 }, --6% Chance to cast level 7 Fist of the Heavens on striking
      --{index = 51, op = "==", value = 240 }, --Adds 1–240 Lightning Damage
      --{index = , op = "==", value = 30 }, --+30 Defense
      --{index = 89, op = "==", value = 2 }, --+2 to Light Radius
      --{index = 42, op = "==", value = 10 }, --+10% to Maximum Lightning Resist
      --{index = 25, op = "==", value = 200 }, --+150–200% Enhanced Damage
      --{index = 128, op = "==", value = 15 }, --Attacker Takes Lightning Damage of 15
      --{index = 188, op = "==", param = 25, value = 2 }, --+2 to Offensive Advantage (Paladin Only)
      --{index = 188, op = "==", param = 26, value = 2 }, --+2 to Ascending Leadership (Paladin Only)
      {index = 34, op = "==", value = 12 }, --Damage Reduced by 8–12
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
      --{index = 48, op = "==", value = 200 }, --Adds 50–200 Fire Damage
      --{index = 39, op = "==", value = 40 }, --Fire Resist +40%
      --{index = 143, op = "==", value = 10 }, --+10 Fire Absorb
      --{index = , op = "==", value = 6 }, --10% Chance to cast level 6 Fire Ball on attack
      --{index = 25, op = "==", value = 160 }, --+120–160% Enhanced Damage
      --{index = , op = "==", value = 10 }, --Level 10 Enchant (45 Charges)
      --{index = , op = "==", value = 5 }, --Level 5 Fire Wall (20 Charges)
      {index = 35, op = "==", value = 12 }, --Magic Damage Reduced by 8–12
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
      --{index = 91, op = "==", value = -50 }, --Requirements -50%
      --{index = 214, op = "==", value = 8*5.0 }, --+5.0 Defense (Based on Character Level)
      {index = 39, op = "==", value = 20 }, --All Resistances +10–20
      --{index = 32, op = "==", value = 100 }, --+100 Defense vs. Missile
      --{index = 114, op = "==", value = 30 }, --30% Damage Taken Goes To Mana
      --{index = 25, op = "==", value = 180 }, --+170–180% Enhanced Damage
      --{index = 33, op = "==", value = 200 }, --+200 Defense vs. Melee
      --{index = 99, op = "==", value = 20 }, --+20% Faster Hit Recovery
      --{index = 20, op = "==", value = 20 }, --20% Increased Chance of Blocking
      {index = 35, op = "==", value = 12 }, --Magic Damage Reduced by 8–12
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
      --{index = 115, op = "==", value = 1 }, --Ignore Target's Defense
      --{index = 60, op = "==", value = 8 }, --8% Life stolen per hit
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
      --{index = 93, op = "==", value = 15 }, --+15% Increased Attack Speed
      --{index = 2, op = "==", value = 10 }, --+10 to Dexterity
      --{index = 25, op = "==", value = 240 }, --+200–240% Enhanced Damage
      --{index = 22, op = "==", value = 27 }, --Adds 15–27 Damage
      --{index = 107, op = "==", param = 2, value = 1 }, --+1 to Necromancer Skill Levels
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
      --{index = 141, op = "==", value = 20 }, --20% Deadly Strike
      --{index = 115, op = "==", value = 1 }, --Ignore Target's Defense
      --{index = 22, op = "==", value = 35 }, --Adds 15–35 Damage
      --{index = 25, op = "==", value = 240 }, --+190–240% Enhanced Damage
      --{index = 107, op = "==", param = 73, value = 4 }, --+4 to Blight Strike (Necromancer only)
      --{index = 107, op = "==", param = 70, value = 4 }, --+4 to Raise Skeleton (Necromancer only)
      --{index = 107, op = "==", param = 69, value = 4 }, --+4 to Summon Mastery (Necromancer only)
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
      --{index = 150, op = "==", value = 50 }, --Slows Target by 50%
      --{index = , op = "==", value = 50 }, --+50 Defense
      --{index = 22, op = "==", value = 45 }, --Adds 15–45 Damage
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 57, op = "==", value = 500 }, --+500 Poison Damage Over 10 Seconds
      --{index = 107, op = "==", param = 73, value = 5 }, --+5 to Blight Strike (Necromancer only)
      --{index = 225, op = "==", value = 4 }, --2% Bonus to Attack Rating (Based on Character Level)
      --{index = 107, op = "==", param = 92, value = 4 }, --+4 to Poison Nova (Necromancer only)
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
      --{index = 51, op = "==", value = 120 }, --Adds 1–120 Lightning Damage
      --{index = 128, op = "==", value = 20 }, --Attacker Takes Lightning Damage of 20
      --{index = , op = "==", value = 3 }, --25% Chance to cast level 3 Charged Bolt when struck
      --{index = 25, op = "==", value = 150 }, --+150% Enhanced Damage
      --{index = 232, op = "==", value = 8*1 }, --Lightning Resist +1.0% (Based on Character Level)
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
      --{index = 141, op = "==", value = 20 }, --20% Deadly Strike
      --{index = 25, op = "==", value = 180 }, --+130–180% Enhanced Damage
      {index = 19, op = "==", value = 450 }, --+200–450 to Attack Rating
      {index = 60, op = "==", value = 9 }, --7–9% Life stolen per hit
      {index = 62, op = "==", value = 6 }, --4–6% Mana stolen per hit
      --{index = , op = "==", value = 1 }, --Replenish 1 Quantity every 1 seconds
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
      --{index = , op = "==", value = 1 }, --Replenish 1 Quantity every 1 seconds
      --{index = 25, op = "==", value = 200 }, --+150–200% Enhanced Damage
      --{index = 119, op = "==", value = 25 }, --25% Bonus to Attack Rating
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      {index = 135, op = "==", value = 25 }, --5–25% Chance of Open Wounds
      {index = 60, op = "==", value = 6 }, --4–6% Life stolen per hit
      --{index = 138, op = "==", value = 4 }, --+4 to Mana after each Kill
      --{index = 107, op = "==", param = 130, value = 3 }, --+3 to Razor Sharp
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
      --{index = 25, op = "==", value = 220 }, --+110–220% Enhanced Damage
      {index = 107, op = "==", param = 266, value = 5 }, --+2–5 to Blade Fury (Assassin only)
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 139, op = "==", value = 5 }, --+5 Life after each Demon Kill
      --{index = 96, op = "==", value = 30 }, --+30% Faster Run/Walk
      --{index = , op = "==", value = 1 }, --Replenish 1 Quantity every 1 seconds
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
      {index = 107, op = "==", param = 129, value = 2 }, --+1–2 to Fan Out (Barbarian only)
      {index = 276, op = "==", value = 2 }, --+1–2 Spell Power
      --{index = , op = "==", value = 35 }, --+15–35 to Throwing Damage
      --{index = 48, op = "==", value = 55 }, --Adds 35–55 Fire Damage
      --{index = , op = "==", value = 1 }, --Replenish 1 Quantity every 1 seconds
      {index = 138, op = "==", value = 5 }, --+1–5 to Mana after each Kill
      --{index = 25, op = "==", value = 125 }, --+100–125% Enhanced Damage
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
      {index = 93, op = "==", value = 40 }, --+10–40% Increased Attack Speed
      {index = 335, op = "==", value = 15 }, ---5–15% to Enemy Cold Resistance
      {index = 331, op = "==", value = 20 }, --+10–20% to Cold Skill Damage
      --{index = 25, op = "==", value = 160 }, --+100–160% Enhanced Damage
      {index = 62, op = "==", value = 5 }, --3–5% Mana stolen per hit
      --{index = , op = "==", value = 1 }, --Replenish 1 Quantity every 1 seconds
      --{index = , op = "==", value = 25 }, --+10–25 to Throwing Damage
      {index = 187, op = "==", value = 8 }, --Enemy cold immunity reduced by 3–8%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 134, --Sharpnel Impact
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{index = 97, op = "==", param = 135, value = 3 }, --+3 to Throwing Mastery 
      --{index = 97, op = "==", param = 35, value = 3 }, --+3 to Lightning Fury
      --{index = , op = "==", value = 35 }, --+15–35 to Throwing Damage
      --{index = 25, op = "==", value = 125 }, --+75–125% Enhanced Damage
      {index = 19, op = "==", value = 95 }, --+80–95 to Attack Rating
      --{index = , op = "==", value = 1 }, --Replenish 1 Quantity every 1 seconds
      {index = 276, op = "==", value = 2 }, --+1–2 Spell Power
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
      {index = 96, op = "==", value = 25 }, --+10–25% Faster Run/Walk
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 51, op = "==", value = 115 }, --Adds 1–115 Lightning Damage
      --{index = , op = "==", value = 1 }, --Replenish 1 Quantity every 1 seconds
      --{index = , op = "==", value = 45 }, --Adds 15–45 Magic Damage
      --{index = 89, op = "==", value = 5 }, --+5 to Light Radius
      --{index = 25, op = "==", value = 115 }, --+95–115% Enhanced Damage
      {index = 9, op = "==", value = 35 * 256 }, --+25–35 to Mana
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
      {index = 188, op = "==", param = 34, value = 4 }, --+2–4 to Destructive Range (Barbarian Only)
      --{index = 97, op = "==", param = 146, value = 3 }, --+3 to Battle Cry
      {index = 19, op = "==", value = 150 }, --+100–150 to Attack Rating
      {index = 119, op = "==", value = 45 }, --35–45% Bonus to Attack Rating
      --{index = 54, op = "==", value = 75 }, --Adds 45–75 Cold Damage
      --{index = , op = "==", value = 1 }, --Replenish 1 Quantity every 1 seconds
      {index = 331, op = "==", value = 7 }, --+3–7% to Cold Skill Damage
      --{index = , op = "==", value = 30 }, --+30 to Throwing Damage
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
      --{index = 21, op = "==", value = 44 }, --+35–44 to Minimum Damage
      --{index = 25, op = "==", value = 130 }, --+120–130% Enhanced Damage
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      {index = 116, op = "==", value = 25 }, ---15–25% Target Defense
      --{index = 135, op = "==", value = 15 }, --15% Chance of Open Wounds
      --{index = , op = "==", value = 1 }, --Replenish 1 Quantity every 1 seconds
      --{index = , op = "==", value = 5 }, --5% Chance to cast level 5 Amplify Damage on striking
      --{index = 22, op = "==", value = 55 }, --+46–55 to Maximum Damage
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
      --{index = 115, op = "==", value = 1 }, --Ignore Target's Defense
      --{index = 19, op = "==", value = 150 }, --+150 to Attack Rating
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      {index = 135, op = "==", value = 40 }, --15–40% Chance of Open Wounds
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
      --{index = 25, op = "==", value = 170 }, --+140–170% Enhanced Damage
      {index = 216, op = "==", value = 2048*2 }, --+1.0–2.0 to Life (Based on Character Level)
      --{index = 219, op = "==", value = 16 }, --+2.0% Enhanced Maximum Damage (Based on Character Level)
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
      --{index = 150, op = "==", value = 75 }, --Slows Target by 75%
      --{index = 39, op = "==", value = 50 }, --Fire Resist +50%
      --{index = 216, op = "==", value = 2048*1.25 }, --+1.25 to Life (Based on Character Level)
      --{index = 22, op = "==", value = 50 }, --Adds 30–50 Damage
      --{index = 0, op = "==", value = 10 }, --+10 to Strength
      --{index = 25, op = "==", value = 180 }, --+140–180% Enhanced Damage
      {index = 34, op = "==", value = 10 }, --Damage Reduced by 5–10
      {index = 35, op = "==", value = 10 }, --Magic Damage Reduced by 5–10
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
      --{index = 91, op = "==", value = -20 }, --Requirements -20%
      --{index = 60, op = "==", value = 7 }, --7% Life stolen per hit
      --{index = 62, op = "==", value = 7 }, --7% Mana stolen per hit
      {index = 76, op = "==", value = 10 }, --Increase Maximum Life by 6–10%
      --{index = 25, op = "==", value = 190 }, --+150–190% Enhanced Damage
      {index = 19, op = "==", value = 250 }, --+150–250 to Attack Rating
      {index = 34, op = "==", value = 9 }, --Damage Reduced by 3–9
      {index = 35, op = "==", value = 9 }, --Magic Damage Reduced by 3–9
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 141, --Hone Sundan
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{index = 22, op = "==", value = 40 }, --Adds 20–40 Damage
      {index = 136, op = "==", value = 15 }, --5–15% Chance of Crushing Blow
      --{index = 25, op = "==", value = 200 }, --+160–200% Enhanced Damage
      {index = 34, op = "==", value = 8 }, --Damage Reduced by 4–8
      {index = 35, op = "==", value = 8 }, --Magic Damage Reduced by 4–8
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
      --{index = 119, op = "==", value = 25 }, --25% Bonus to Attack Rating
      --{index = 89, op = "==", value = 3 }, --+3 to Light Radius
      --{index = 74, op = "==", value = 20 }, --Replenish Life +20
      --{index = 99, op = "==", value = 20 }, --+20% Faster Hit Recovery
      --{index = 22, op = "==", value = 40 }, --Adds 20–40 Damage
      {index = 243, op = "==", value = 12 }, --+1.5% Damage to Demons (Based on Character Level)
      --{index = 25, op = "==", value = 200 }, --+150–200% Enhanced Damage
      --{index = 188, op = "==", param = 24, value = 3 }, --+3 to Combat Skills (Paladin Only)
      --{index = 31, op = "==", value = 125 }, --+125 Defense
      {index = 34, op = "==", value = 10 }, --Damage Reduced by 6–10
      {index = 35, op = "==", value = 10 }, --Magic Damage Reduced by 6–10
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
      --{index = 25, op = "==", value = 200 }, --+150–200% Enhanced Damage
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 60, op = "==", value = 10 }, --10% Life stolen per hit
      {index = 135, op = "==", value = 40 }, --15–40% Chance of Open Wounds
      --{index = 80, op = "==", value = 25 }, --25% Better Chance of Getting Magic Items
      --{index = 188, op = "==", param = 33, value = 3 }, --+3 to War Masteries (Barbarian Only)
      {index = 34, op = "==", value = 10 }, --Damage Reduced by 5–10
      {index = 35, op = "==", value = 10 }, --Magic Damage Reduced by 5–10
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
      --{index = 91, op = "==", value = -25 }, --Requirements -25%
      --{index = ?, op = "==", param = 455, value = 5 }, --5% Chance to cast level 5 Weaken on striking
      --{index = 89, op = "==", value = -2 }, ---2 to Light Radius
      --{index = 60, op = "==", value = 8 }, --8% Life stolen per hit
      --{index = 218, op = "==", value = 8*1.25 }, --+1.25 to Maximum Damage (Based on Character Level)
      --{index = 25, op = "==", value = 140 }, --+100–140% Enhanced Damage
      {index = 34, op = "==", value = 7 }, --Damage Reduced by 3–7
      {index = 35, op = "==", value = 7 }, --Magic Damage Reduced by 3–7
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
      {index = 83, op = "==", param = 2, value = 3 }, --+1–3 to Necromancer Skill Levels
      --{index = 2, op = "==", value = 15 }, --+15 to Dexterity
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 216, op = "==", value = 2048*1.0 }, --+1.0 to Life (Based on Character Level)
      --{index = 218, op = "==", value = 8*1.0 }, --+1.0 to Maximum Damage (Based on Character Level)
      --{index = 25, op = "==", value = 180 }, --+150–180% Enhanced Damage
      {index = 332, op = "==", value = 15 }, --+8–15% to Poison Skill Damage
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
      {index = 141, op = "==", value = 40 }, --15–40% Deadly Strike
      --{index = 225, op = "==", value = 2*0.5 }, --0.5% Bonus to Attack Rating (Based on Character Level)
      --{index = 99, op = "==", value = 30 }, --+30% Faster Hit Recovery
      --{index = 60, op = "==", value = 6 }, --6% Life stolen per hit
      --{index = 22, op = "==", value = 20 }, --Adds 12–20 Damage
      --{index = 25, op = "==", value = 220 }, --+160–220% Enhanced Damage
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      {index = 34, op = "==", value = 8 }, --Damage Reduced by 2–8
      {index = 35, op = "==", value = 8 }, --Magic Damage Reduced by 2–8
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
      --{index = 74, op = "==", value = 20 }, --Replenish Life +20
      {index = 19, op = "==", value = 250 }, --+200–250 to Attack Rating
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
      --{index = 22, op = "==", value = 32 }, --Adds 20–32 Damage
      --{index = 25, op = "==", value = 200 }, --+160–200% Enhanced Damage
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      {index = 34, op = "==", value = 8 }, --Damage Reduced by 5–8
      {index = 35, op = "==", value = 8 }, --Magic Damage Reduced by 5–8
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
      --{index = 48, op = "==", value = 232 }, --Adds 131–232 Fire Damage
      --{index = 39, op = "==", value = 45 }, --Fire Resist +45%
      --{index = 25, op = "==", value = 180 }, --+140–180% Enhanced Damage
      --{index = 78, op = "==", value = 8 }, --Attacker Takes Damage of 8
      --{index = 91, op = "==", value = -50 }, --Requirements -50%
      --{index = 83, op = "==", param = 2, value = 3 }, --+3 to Necromancer Skill Levels
      --{index = 116, op = "==", value = -50 }, ---50% Target Defense
      --{index = 31, op = "==", value = 160 }, --+160 Defense
      {index = 19, op = "==", value = 250 }, --+200–250 to Attack Rating
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
      --{index = 105, op = "==", value = 30 }, --+30% Faster Cast Rate
      --{index = 78, op = "==", value = 15 }, --Attacker Takes Damage of 15
      --{index = 9, op = "==", value = 256*175 }, --+175 to Mana
      --{index = 7, op = "==", value = 256*80 }, --+80 to Life
      --{index = 35, op = "==", value = 15 }, --Magic Damage Reduced by 15
      --{index = 39, op = "==", value = 50 }, --All Resistances +50
      {index = 127, op = "==", value = 2 }, --+1–2 to All Skills
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
      --{index = 22, op = "==", value = 65 }, --Adds 30–65 Damage
      --{index = 25, op = "==", value = 300 }, --+200–300% Enhanced Damage
      {index = 136, op = "==", value = 30 }, --15–30% Chance of Crushing Blow
      --{index = 2, op = "==", value = 15 }, --+15 to Dexterity
      --{index = 31, op = "==", value = 100 }, --+100 Defense
      --{index = 16, op = "==", value = 100 }, --+100% Enhanced Defense
      --{index = 99, op = "==", value = 50 }, --+50% Faster Hit Recovery
      --{index = 93, op = "==", value = 50 }, --+50% Increased Attack Speed
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 151-200
    {
      codes = "allitems",
      quality = "7",
      index = 151, --Chromatic Ire
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{index = 83, op = "==", param = 1, value = 3 }, --+3 to Sorceress Skill Levels
      {index = 39, op = "==", value = 40 }, --All Resistances +20–40
      --{index = 105, op = "==", value = 30 }, --+30% Faster Cast Rate
      --{index = 128, op = "==", value = 20 }, --Attacker Takes Lightning Damage of 20
      {index = 76, op = "==", value = 25 }, --Increase Maximum Life by 20–25%
      {index = 107, op = "==", param = 61, value = 3 }, --+1–3 to Fire Mastery (Sorceress only)
      {index = 107, op = "==", param = 63, value = 3 }, --+1–3 to Lightning Mastery (Sorceress only)
      {index = 107, op = "==", param = 65, value = 3 }, --+1–3 to Cold Mastery (Sorceress only)
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
      --{index = 83, op = "==", param = 1, value = 2 }, --+2 to Sorceress Skill Levels
      --{index = 115, op = "==", value = 1 }, --Ignore Target's Defense
      --{index = 107, op = "==", param = 54, value = 3 }, --+3 to Discharge (Sorceress only)
      --{index = 107, op = "==", param = 42, value = 3 }, --+3 to Static Field (Sorceress only)
      --{index = 107, op = "==", param = 58, value = 3 }, --+3 to Energy Shield (Sorceress only)
      --{index = 32, op = "==", value = 250 }, --+250 Defense vs. Missile
      --{index = 25, op = "==", value = 225 }, --+175–225% Enhanced Damage
      {index = 93, op = "==", value = 60 }, --+40–60% Increased Attack Speed
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
      --{index = 77, op = "==", value = 20 }, --Increase Maximum Mana by 20%
      --{index = 138, op = "==", value = 20 }, --+20 to Mana after each Kill
      --{index = 127, op = "==", value = 2 }, --+2 to All Skills
      --{index = 240, op = "==", value = 8*1.0 }, --1.0% Better Chance of Getting Magic Items (Based on Character Level)
      --{index = 105, op = "==", value = 60 }, --+60% Faster Cast Rate
      --{index = ?, op = "==", value = 15 }, --5% Chance to cast level 15 Bone Spirit on attack
      --{index = ?, op = "==", value = 10 }, --2% Chance to cast level 10 Bone Prison when struck
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
      --{index = 50, op = "==", value = 250 }, --Adds 1–250 Lightning Damage
      --{index = 19, op = "==", value = 100 }, --+100 to Attack Rating
      --{index = 1, op = "==", value = 10 }, --+10 to Energy
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 25, op = "==", value = 200 }, --+150–200% Enhanced Damage
      --{index = ?, op = "==", value = 6 }, --2% Chance to cast level 6 Meteor on striking
      --{index = 83, op = "==", param = 1, value = 1 }, --+1 to Amazon Skill Levels
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
      {index = 135, op = "==", value = 30 }, --15–30% Chance of Open Wounds
      --{index = 25, op = "==", value = 220 }, --+180–220% Enhanced Damage
      --{index = 150, op = "==", value = 30 }, --Slows Target by 30%
      --{index = 9, op = "==", value = 256*35 }, --+35 to Mana
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      {index = 60, op = "==", value = 10 }, --7–10% Life stolen per hit
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
      --{index = 107, op = "==", param = 27, value = 3 }, --+3 to Curtain of Fire (Amazon only)
      --{index = 107, op = "==", param = 16, value = 5 }, --+5 to Exploding Arrow (Amazon only)
      --{index = 25, op = "==", value = 180 }, --+150–180% Enhanced Damage
      --{index = 156, op = "==", value = 50 }, --+50% Piercing Attack
      --{index = 48, op = "==", value = 180 }, --Adds 40–180 Fire Damage
      --{index = 188, op = "==", param = 0, value = 3 }, --+3 to Bow and Crossbow Skills (Amazon only)
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
      --{index = 43, op = "==", value = 35 }, --Cold Resist +35%
      --{index = 9, op = "==", value = 256*40 }, --+40 to Mana
      --{index = 32, op = "==", value = 150 }, --+150 Defense vs. Missile
      {index = 107, op = "==", param = 21, value = 4 }, --+1–4 to Hail of Arrows (Amazon only)
      --{index = 25, op = "==", value = 220 }, --+180–220% Enhanced Damage
      --{index = 54, op = "==", value = 30 }, --Adds 15–30 Cold Damage
      {index = 335, op = "==", value = 20 }, ---10–20% to Enemy Cold Resistance
      {index = 187, op = "==", value = 10 }, --Enemy cold immunity reduced by 5–10%
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
      --{index = ?, op = "==", value = 5 }, --2% Chance to cast level 5 Amplify Damage on striking
      --{index = 39, op = "==", value = 40 }, --All Resistances +40
      --{index = 250, op = "==", value = 8*1.0 }, --1.0% Deadly Strike (Based on Character Level)
      --{index = 25, op = "==", value = 170 }, --+150–170% Enhanced Damage
      {index = 107, op = "==", param = 7, value = 7 }, --+3–7 to Prismatic Arrow (Amazon only)
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
      --{index = 83, op = "==", param = 1, value = 2 }, --+2 to Amazon Skill Levels
      --{index = 25, op = "==", value = 230 }, --+190–230% Enhanced Damage
      {index = 32, op = "==", value = 280 }, --+180–280 Defense vs. Missile
      --{index = 7, op = "==", value = 256*50 }, --+50 to Life
      --{index = 22, op = "==", value = 30 }, --Adds 5/10–20/30 Damage
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
      --{index = 62, op = "==", value = 15 }, --15% Mana stolen per hit
      {index = 35, op = "==", value = 13 }, --Magic Damage Reduced by 9–13
      --{index = 107, op = "==", param = 22, value = 3 }, --+3 to Guided Arrow (Amazon only)
      {index = 19, op = "==", value = 250 }, --+200–250 to Attack Rating
      --{index = 2, op = "==", value = 10 }, --+10 to Dexterity
      --{index = 113, op = "==", value = 1 }, --Hit Blinds Target +1
      --{index = 22, op = "==", value = 50 }, --Adds 25–50 Damage
      --{index = 25, op = "==", value = 150 }, --+120–150% Enhanced Damage
      --{index = 83, op = "==", param = 1, value = 1 }, --+1 to Amazon Skill Levels
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 161, --Goldstrike Arch
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{index = 25, op = "==", value = 250 }, --+200–250% Enhanced Damage
      {index = 119, op = "==", value = 150 }, --100–150% Bonus to Attack Rating
      {index = 122, op = "==", value = 200 }, --+100–200% Damage to Undead
      {index = 121, op = "==", value = 200 }, --+100–200% Damage to Demons
      --{index = ?, op = "==", value = 7 }, --5% Chance to cast level 7 Fist of the Heavens on striking
      --{index = 93, op = "==", value = 50 }, --+50% Increased Attack Speed
      --{index = 74, op = "==", value = 12 }, --Replenish Life +12
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
      --{index = 25, op = "==", value = 200 }, --+170–200% Enhanced Damage
      {index = 80, op = "==", value = 60 }, --30–60% Better Chance of Getting Magic Items
      --{index = 7, op = "==", value = 256*80 }, --+30 to Life
      --{index = 22, op = "==", value = 30 }, --+10–30 to Maximum Damage
      --{index = 135, op = "==", value = 20 }, --20% Chance of Open Wounds
      --{index = 50, op = "==", value = 1 }, --Adds 1 Lightning Damage (min)
      --{index = 51, op = "==", value = 212 }, --Adds 212 Lightning Damage (max)
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
      --{index = 57, op = "==", value = 150 }, --+150 Poison Damage (min) over 8s
      --{index = 58, op = "==", value = 150 }, --+150 Poison Damage (max) over 8s
      --{index = 59, op = "==", value = 8 }, --Poison length 8 seconds
      --{index = ?, op = "==", value = 1 }, --4% Chance to cast level 1 Lower Resist on striking
      --{index = 127, op = "==", value = 2 }, --+2 to All Skills
      --{index = 91, op = "==", value = -60 }, --Requirements -60%
      --{index = ?, op = "==", value = 6 }, --9% Chance to cast level 6 Poison Nova when struck
      --{index = 93, op = "==", value = 10 }, --+10% Increased Attack Speed
      --{index = 224, op = "==", value = 5 }, --+5 Attack Rating (per level)
      --{index = 25, op = "==", value = 220 }, --+150–220% Enhanced Damage
      {index = 107, op = "==", param = 278, value = 4}   --+1-4 to Venom (Assassin only)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 164, --Buriza-Da Kyanon
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{index = 156, op = "==", value = 100 }, --+100% Piercing Attack
      --{index = 2, op = "==", value = 35 }, --+35 to Dexterity
      {index = 31, op = "==", value = 150 }, --+75–150 Defense
      --{index = 218, op = "==", value = 2 }, --+2.5 to Maximum Damage (per level)
      --{index = 93, op = "==", value = 80 }, --+80% Increased Attack Speed
      --{index = 25, op = "==", value = 200 }, --+150–200% Enhanced Damage
      --{index = 134, op = "==", value = 1 }, --Freezes target
      --{index = 54, op = "==", value = 32 }, --Adds 32 Cold Damage (min)
      --{index = 55, op = "==", value = 196 }, --Adds 196 Cold Damage (max)
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
      --{index = , op = "==", value =  }, --100% Chance to Cast Level 12 Fire Blast on Striking
      --{index = 156, op = "==", value = 66 }, --+66% Piercing Attack
      --{index = 22, op = "==", value = 80 }, --? +50-80 to Maximum Damage
      --{index = 25, op = "==", value = 150 }, --? +100-150% Enhanced Damage
      --{index = 19, op = "==", value = 600 }, --+600 to Attack Rating
      {index = 121, op = "==", value = 200 }, --? +100-200% Damage to Demons
      {index = 278, op = "==", value = 2 }, --+1-2 Combat Power
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
      --{index = 25, op = "==", value = 50 }, --+50% Enhanced Damage
      --{index = 22, op = "==", value = 6 }, --+3–6 to Maximum Damage
      --{index = 19, op = "==", value = 40 }, --+40 to Attack Rating
      --{index = 113, op = "==", value = 2 }, --Hit Blinds Target +2
      --{index = 93, op = "==", value = 10 }, --+10% Increased Attack Speed
      {index = 96, op = "==", value = 20 }, --+10–20% Faster Run/Walk
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
      --{index = 22, op = "==", value = 10 }, --Adds 5–10 Damage
      {index = 62, op = "==", value = 8 }, --5–8% Mana stolen per hit
      --{index = 96, op = "==", value = 10 }, --+10% Faster Run/Walk
      --{index = 116, op = "==", value = -33 }, ---33% Target Defense
      --{index = 188, op = "==", param = 50, value = 1 }, --+1 to Deadly Arts (Assassin Only)
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      --{index = 151, op = "==", param = 381, value = 2 }, --Level 2 Redemption Aura When Equipped
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
      --{index = 21, op = "==", value = 9 }, --+9 to Minimum Damage
      --{index = 138, op = "==", value = 2 }, --+2 to Mana after each Kill
      --{index = 37, op = "==", value = 10 }, --Magic Resist +10%
      --{index = 52, op = "==", value = 6 }, --Adds 6 Magic Damage (min)
      --{index = 53, op = "==", value = 8 }, --Adds 8 Magic Damage (max)
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
      --{index = 112, op = "==", value = 25 }, --Hit Causes Monster to Flee 25%
      --{index = 25, op = "==", value = 85 }, --+55–85% Enhanced Damage
      --{index = 96, op = "==", value = 20 }, --+20% Faster Run/Walk
      --{index = 50, op = "==", value = 1 }, --Adds 1 Lightning Damage (min)
      --{index = 51, op = "==", value = 25 }, --Adds 25 Lightning Damage (max)
      --{index = 48, op = "==", value = 6 }, --Adds 6 Fire Damage (min)
      --{index = 49, op = "==", value = 9 }, --Adds 9 Fire Damage (max)
      --{index = 136, op = "==", value = 15 }, --15% Chance of Crushing Blow
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
      --{index = ?, op = "==", value = 3 }, --4% Chance to cast level 3 Meteor on striking
      --{index = ?, op = "==", value = 4 }, --2% Chance to cast level 4 Fist of the Heavens on striking
      --{index = 25, op = "==", value = 85 }, --+85% Enhanced Damage
      --{index = 31, op = "==", value = 40 }, --+40 Defense
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
      --{index = 150, op = "==", value = 20 }, --Slows Target by 20%
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
      --{index = 83, op = "==", param = 6, value = 1 }, --+1 to Assassin Skill Levels
      --{index = 225, op = "==", value = 2*2 }, --2.0% Bonus to Attack Rating (per level)
      --{index = 121, op = "==", value = 100 }, --+100% Damage to Demons
      --{index = 22, op = "==", value = 15 }, --Adds 10–15 Damage
      --{index = 25, op = "==", value = 80 }, --+80% Enhanced Damage
      --{index = 152, op = "==", value = 1 }, --Ethereal / Indestructible
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
      --{index = 25, op = "==", value = 90 }, --+90% Enhanced Damage
      {index = 97, op = "==", param = 280, value = 3 }, --+1–3 to Phoenix Strike
      {index = 139, op = "==", value = 10 }, --+6–10 Life after each Demon Kill
      {index = 396, op = "==", value = 2 }, --1–2 Mana restored per hit
      --{index = 93, op = "==", value = 10 }, --+10% Increased Attack Speed
      {index = 150, op = "==", value = 40 }, --Slows Target by 20–40%
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
      --{index = 25, op = "==", value = 150 }, --+110–150% Enhanced Damage
      {index = 97, op = "==", param = 259, value = 3 }, --+2–3 to Fists of Fire
      {index = 333, op = "==", value = 25 }, ---10–25% to Enemy Fire Resistance
      {index = 0, op = "==", value = 15 }, --+6–15 to all Attributes
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      {index = 135, op = "==", value = 25 }, --10–25% Chance of Open Wounds
      --{index = 48, op = "==", value = 60 }, --Adds 60 Fire Damage (min)
      --{index = 49, op = "==", value = 123 }, --Adds 123 Fire Damage (max)
      {index = 60, op = "==", value = 5 }, --3–5% Life stolen per hit
      {index = 62, op = "==", value = 5 }, --3–5% Mana stolen per hit
      {index = 189, op = "==", value = 10 }, --Enemy fire immunity reduced by 5–10%
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
      --{index = 25, op = "==", value = 100 }, --+100% Enhanced Damage
      --{index = 22, op = "==", value = 35 }, --Adds 20–35 Damage
      {index = 33, op = "==", value = 175 }, --+100–175 Defense vs. Melee
      --{index = 102, op = "==", value = 20 }, --+20% Faster Block Rate
      --{index = 188, op = "==", param = 49, value = 2 }, --+2 to Shadow Disciplines (Assassin Only)
      {index = 396, op = "==", value = 5 }, --3–5 Mana restored per hit
      --{index = 91, op = "==", value = -20 }, --Requirements -20%
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
      --{index = 25, op = "==", value = 210 }, --+140–210% Enhanced Damage
      --{index = ?, op = "==", value = 5 }, --5% Chance to cast level 5 Mind Blast on striking
      --{index = ?, op = "==", value = 3 }, --2% Chance to cast level 3 Confuse on striking
      --{index = 155, op = "==", value = 10 }, --10% Reanimate As: (monster type)
      {index = 93, op = "==", value = 50 }, --+40–50% Increased Attack Speed
      --{index = 21, op = "==", value = 15 }, --+8–15 to Minimum Damage
      {index = 107, op = "==", param = 278, value = 6 }, --+3–6 to Venom (Assassin only)
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
      --{index = 152, op = "==", value = 1 }, --Ethereal / Indestructible
      {index = 188, op = "==", param = 48, value = 3 }, --+1–3 to Traps (Assassin Only)
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 97, op = "==", param = 267, value = 3 }, --+3 to Fade
      {index = 97, op = "==", param = 262, value = 2 }, --+1–2 to Wake of Fire
      {index = 329, op = "==", value = 20 }, --+5–20% to Fire Skill Damage
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
      --{index = 25, op = "==", value = 120 }, --+100–120% Enhanced Damage
      --{index = ?, op = "==", value = 10 }, --5% Chance to cast level 10 Twister on attack
      --{index = ?, op = "==", value = 10 }, --1% Chance to cast level 10 Tornado on striking
      --{index = 97, op = "==", param = 151, value = 2 }, --+2 to Whirlwind
      {index = 97, op = "==", param = 269, value = 3 }, --+2–3 to Claws of Thunder
      {index = 97, op = "==", param = 235, value = 4 }, --+0–4 to Cyclone Armor
      --{index = 96, op = "==", value = 20 }, --+20% Faster Run/Walk
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
      --{index = 83, op = "==", param = 6, value = 2 }, --+2 to Assassin Skill Levels
      --{index = 188, op = "==", param = 50, value = 1 }, --+1 to Deadly Arts (Assassin Only)
      --{index = 25, op = "==", value = 200 }, --+150–200% Enhanced Damage
      --{index = 99, op = "==", value = 30 }, --+30% Faster Hit Recovery
      --{index = 119, op = "==", value = 20 }, --20% Bonus to Attack Rating
      --{index = 0, op = "==", value = 20 }, --+20 to Strength
      --{index = 2, op = "==", value = 20 }, --+20 to Dexterity
      {index = 60, op = "==", value = 9 }, --5–9% Life stolen per hit
      --{index = 22, op = "==", value = 50 }, --Adds 25–50 Damage
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
      --{index = ?, op = "==", value = 498 }, --25% Chance to cast level 5 Void Release on Kill
      --{index = 113, op = "==", value = 3 }, --Hit Blinds Target +3
      --{index = 150, op = "==", value = 15 }, --Slows Target by 15%
      --{index = 25, op = "==", value = 260 }, --+260% Enhanced Damage
      {index = 119, op = "==", value = 40 }, --15–40% Bonus to Attack Rating
      --{index = 97, op = "==", param = 277, value = 3 }, --+3 to Blade Shield
      {index = 0, op = "==", value = 15 }, --+5–15 to all Attributes
      --{index = 62, op = "==", value = 6 }, --6% Mana stolen per hit
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
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
      --{index = 25, op = "==", value = 240 }, --+200–240% Enhanced Damage
      {index = 151, op = "==", param = 381, value = 10 }, --Level 6–10 Redemption Aura When Equipped
      --{index = 62, op = "==", value = 5 }, --Mana stolen per hit
      --{index = 60, op = "==", value = 5 }, --Life stolen per hit
      --{index = 135, op = "==", value = 15 }, --15% Chance of Open Wounds
      {index = 19, op = "==", value = 475 }, --+200–475 to Attack Rating
      {index = 83, op = "==", param = 6, value = 3 }, --+1–3 to Assassin Skill Levels
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 181, --Jade Talon
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{index = 25, op = "==", value = 240 }, --+190–240% Enhanced Damage
      {index = 62, op = "==", value = 15 }, --10–15% Mana stolen per hit
      {index = 39, op = "==", value = 50 }, --All Resistances +40–50
      --{index = 99, op = "==", value = 30 }, --+30% Faster Hit Recovery
      {index = 188, op = "==", param = 49, value = 2 }, --+1–2 to Shadow Disciplines (Assassin Only)
      {index = 188, op = "==", param = 50, value = 2 }, --+1–2 to Deadly Arts (Assassin Only)
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
      --{index = 25, op = "==", value = 260 }, --+260% Enhanced Damage
      --{index = 97, op = "==", param = 259, value = 3 }, --+3 to Fists of Fire
      {index = 97, op = "==", param = 280, value = 3 }, --+1–3 to Phoenix Strike
      --{index = 97, op = "==", param = 265, value = 3 }, --+3 to Tiger Strike
      --{index = 134, op = "==", value = 1 }, --Freezes target
      {index = 74, op = "==", value = 15 }, --Replenish Life +10–15
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
      --{index = 25, op = "==", value = 220 }, --+170–220% Enhanced Damage
      --{index = 116, op = "==", value = -25 }, ---25% Target Defense
      --{index = 134, op = "==", value = 1 }, --Freezes target
      {index = 138, op = "==", value = 15 }, --+10–15 Mana after each Kill
      --{index = ?, op = "==", value = 8 }, --33% Chance to cast level 8 Frost Nova on striking
      --{index = 152, op = "==", value = 1 }, --Ethereal / Indestructible
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
      --{index = 25, op = "==", value = 270 }, --+200–270% Enhanced Damage
      --{index = 93, op = "==", value = 15 }, --+15% Increased Attack Speed
      {index = 188, op = "==", param = 50, value = 3 }, --+1–3 to Deadly Arts (Assassin Only)
      --{index = 48, op = "==", value = 236 }, --Adds 236 Fire Damage (min)
      --{index = 49, op = "==", value = 480 }, --Adds 480 Fire Damage (max)
      {index = 39, op = "==", value = 70 }, --Fire Resist +40–70%
      {index = 107, op = "==", param = 262, value = 2 }, --+1–2 to Wake of Fire (Assassin only)
      {index = 107, op = "==", param = 251, value = 2 }, --+1–2 to Fire Blast (Assassin only)
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
      {index = 107, op = "==", param = 264, value = 6 }, --+4–6 to Cloak of Shadows (Assassin only)
      {index = 188, op = "==", param = 48, value = 4 }, --+2–4 to Traps (Assassin Only)
      {index = 39, op = "==", value = 25 }, --All Resistances +5–25
      --{index = 99, op = "==", value = 24 }, --+24% Faster Hit Recovery
      --{index = 31, op = "==", value = 100 }, --+100 Defense
      {index = 0, op = "==", value = 35 }, --+20–35 to Strength
      {index = 93, op = "==", value = 50 }, --+20–50% Increased Attack Speed
      {index = 86, op = "==", value = 25 }, --+5–25 Life after each Kill
      {index = 329, op = "==", value = 25 }, --+10–25% to Fire Skill Damage
      {index = 331, op = "==", value = 25 }, --+10–25% to Cold Skill Damage
      {index = 330, op = "==", value = 25 }, --+10–25% to Lightning Skill Damage
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
      --{index = 25, op = "==", value = 240 }, --+210–240% Enhanced Damage
      --{index = 93, op = "==", value = 40 }, --+40% Increased Attack Speed
      --{index = 96, op = "==", value = 40 }, --+40% Faster Run/Walk
      {index = 39, op = "==", value = 30 }, --All Resistances +10–30
      {index = 119, op = "==", value = 120 }, --90–120% Bonus to Attack Rating
      {index = 127, op = "==", value = 3 }, --+1–3 to All Skills
      {index = 138, op = "==", value = 20 }, --+10–20 to Mana after each Kill
      {index = 397, op = "==", value = 6 }, --3–6 Life restored per hit
      {index = 121, op = "==", value = 200 }, --+100–200% Damage to Demons
      {index = 123, op = "==", value = 200 }, --+180–200 to Attack Rating against Demons
      --{index = ?, op = "==", value = 1 }, --5% Chance to cast level 1 Mage Crush on attack
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
      --{index = 25, op = "==", value = 175 }, --+175–225% Enhanced Damage
      --{index = 93, op = "==", value = 40 }, --+40% Increased Attack Speed
      --{index = 116, op = "==", value = -33 }, ---33% Target Defense
      --{index = 141, op = "==", value = 10 }, --10% Deadly Strike
      {index = 135, op = "==", value = 15 }, --5–15% Chance of Open Wounds
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
      --{index = 52, op = "==", value = 45 }, --+38/45 Magic Damage (min)
      --{index = 53, op = "==", value = 67 }, --+60/67 Magic Damage (max)
      --{index = 48, op = "==", value = 45 }, --+38/45 Fire Damage (min)
      --{index = 49, op = "==", value = 67 }, --+60/67 Fire Damage (max)
      {index = 141, op = "==", value = 10 }, --5–10% Deadly Strike
      {index = 19, op = "==", value = 250 }, --+200–250 to Attack Rating
      --{index = 222, op = "==", value = 8*0.375 }, --+0.375 to Energy (per level)
      --{index = 25, op = "==", value = 280 }, --+215–280% Enhanced Damage
      {index = 35, op = "==", value = 12 }, --Magic Damage Reduced by 8–12
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
      --{index = 25, op = "==", value = 270 }, --+220–270% Enhanced Damage
      --{index = 44, op = "==", value = 5 }, --+5% to Maximum Cold Resist
      --{index = 153, op = "==", value = 1 }, --Cannot Be Frozen
      {index = 34, op = "==", value = 12 }, --Damage Reduced by 8–12
      --{index = 97, op = "==", param = 65, value = 1} --+X to Cold Mastery 
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
      --{index = 25, op = "==", value = 300 }, --+240–300% Enhanced Damage
      --{index = 93, op = "==", value = 40 }, --+40% Increased Attack Speed
      --{index = 116, op = "==", value = -25 }, ---25% Target Defense
      {index = 80, op = "==", value = 50 }, --20–50% Better Chance of Getting Magic Items
      {index = 410, op = "==", value = 2 }, --+1-2 to Poison Skills
      {index = 83, op = "==", param = 2, value = 2 }, --+1–2 to Necromancer Skill Levels
      {index = 151, op = "==", param = 495, value = 25 }, --Level 17-25 Poison Conviction Aura When Equipped
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
      --{index = 25, op = "==", value = 280 }, --+230–280% Enhanced Damage
      --{index = 141, op = "==", value = 33 }, --33% Deadly Strike
      --{index = 116, op = "==", value = -33 }, ---33% Target Defense
      --{index = 93, op = "==", value = 40 }, --+40% Increased Attack Speed
      {index = 86, op = "==", value = 9 }, --+6–9 Life after each Kill
      {index = 34, op = "==", value = 15 }, --Damage Reduced by 10–15
      {index = 35, op = "==", value = 15 }, --Magic Damage Reduced by 10–15
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
      --{index = 21, op = "==", value = 35 }, --+25–35 to Minimum Damage
      --{index = 25, op = "==", value = 270 }, --+220–270% Enhanced Damage
      {index = 141, op = "==", value = 20 }, --5–20% Deadly Strike
      {index = 135, op = "==", value = 15 }, --5–15% Chance of Open Wounds
      {index = 121, op = "==", value = 110 }, --+100–110% Damage to Demons
      {index = 122, op = "==", value = 110 }, --+100–110% Damage to Undead
      {index = 60, op = "==", value = 7 }, --4–7% Life stolen per hit
      {index = 123, op = "==", value = 200 }, --+180–200 Attack Rating vs Demons
      {index = 124, op = "==", value = 200 }, --+180–200 Attack Rating vs Undead
      {index = 34, op = "==", value = 15 }, --Damage Reduced by 10–15
      {index = 35, op = "==", value = 15 }, --Magic Damage Reduced by 10–15
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
      --{index = 25, op = "==", value = 280 }, --+250–280% Enhanced Damage
      --{index = 93, op = "==", value = 45 }, --+45% Increased Attack Speed
      {index = 143, op = "==", value = 12 }, --+10–12 Fire Absorb
      {index = 121, op = "==", value = 200 }, --+150–200% Damage to Demons
      {index = 139, op = "==", value = 10 }, --+5–10 Life after each Demon Kill
      {index = 19, op = "==", value = 350 }, --+270–350 Attack Rating
      --{index = 152, op = "==", value = 1 }, --Indestructible
      --{index = 127, op = "==", value = 1 }, --+1 to All Skills
      {index = 34, op = "==", value = 15 }, --Damage Reduced by 10–15
      {index = 35, op = "==", value = 15 }, --Magic Damage Reduced by 10–15
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
      --{index = 220, op = "==", value = 8*0.5 }, --+0.5 Strength per level
      --{index = 223, op = "==", value = 8*0.5 }, --+0.5 Vitality per level
      --{index = 219, op = "==", value = 8*3 }, --+3% Enhanced Max Damage per level
      --{index = 48, op = "==", value = 150 }, --Adds 150 Fire Damage (min)
      --{index = 49, op = "==", value = 250 }, --Adds 250 Fire Damage (max)
      --{index = 7, op = "==", value = 256*25 }, --+25 Life
      --{index = 25, op = "==", value = 100 }, --+100% Enhanced Damage
      --{index = ?, op = "==", value = 20 }, --10% Chance to cast Glacial Spike (lvl 18–20)
      {index = 34, op = "==", value = 16 }, --Damage Reduced by 12–16
      {index = 35, op = "==", value = 16 }, --Magic Damage Reduced by 12–16
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
      --{index = 219, op = "==", value = 8*2.5 }, --+2.5% Enhanced Max Damage per level
      --{index = 25, op = "==", value = 200 }, --+200% Enhanced Damage
      --{index = 0, op = "==", value = 15 }, --+15 to all Attributes
      --{index = 48, op = "==", value = 20 }, --Adds 20 Fire Damage (min)
      --{index = 49, op = "==", value = 240 }, --Adds 240 Fire Damage (max)
      --{index = 119, op = "==", value = 100 }, --100% Bonus to Attack Rating
      {index = 34, op = "==", value = 16 }, --Damage Reduced by 12–16
      {index = 35, op = "==", value = 16 }, --Magic Damage Reduced by 12–16
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
      --{index = 25, op = "==", value = 290 }, --+240–290% Enhanced Damage
      {index = 136, op = "==", value = 20 }, --10–20% Chance of Crushing Blow
      --{index = 116, op = "==", value = -33 }, ---33% Target Defense
      --{index = ?, op = "==", value = 6 }, --50% Chance to cast level 6 Decrepify on Kill
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
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
      {index = 83, op = "==", param = 2, value = 2 }, --+1–2 to Necromancer Skill Levels
      {index = 97, op = "==", param = 0, value = 3 }, --+1–3 to Attack
      {index = 97, op = "==", param = 92, value = 3 }, --+1–3 to Poison Nova
      --{index = 97, op = "==", param = 91, value = 3 }, --+3 to Lower Resist
      {index = 105, op = "==", value = 30 }, --+25–30% Faster Cast Rate
      {index = 332, op = "==", value = 30 }, --+10–30% to Poison Skill Damage
      {index = 336, op = "==", value = 15 }, ---10–15% to Enemy Poison Resistance
      {index = 191, op = "==", value = 15 }, --Enemy poison immunity reduced by 5–15%
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
      --{index = 83, op = "==", param = 2, value = 2 }, --+2 to Necromancer Skill Levels
      --{index = 283, op = "==", value = 1 }, --+1 Summoning Power
      {index = 284, op = "==", value = 40 }, --Summon Max HP +25–40%
      {index = 285, op = "==", value = 40 }, --Summon Combat Rating +25–40%
      {index = 281, op = "==", value = 40 }, --Summon Damage +25-40%
      --{index = 97, op = "==", param = 69, value = 3 }, --+3 to Summon Mastery
      {index = 188, op = "==", param = 18, value = 4 }, --+1–4 to Summoning Skills (Necromancer Only)
      {index = 77, op = "==", value = 35 }, --Increase Maximum Mana by 25–35%
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
      --{index = 83, op = "==", param = 2, value = 2 }, --+1–2 to Necromancer Skill Levels
      --{index = 105, op = "==", value = 25 }, --+25% Faster Cast Rate
      {index = 107, op = "==", param = 67, value = 5 }, --+4–5 to Teeth
      {index = 107, op = "==", param = 68, value = 3 }, --+2–3 to Bone Armor
      {index = 107, op = "==", param = 84, value = 3 }, --+2–3 to Bone Spear
      {index = 107, op = "==", param = 93, value = 2 }, --+1–2 to Bone Spirit
      {index = 97, op = "==", param = 161, value = 5 }, --+0–5 to Feeble Frame
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
      {index = 127, op = "==", value = 2 }, --+1–2 to All Skills
      {index = 336, op = "==", value = 50 }, ---40–50% to Enemy Poison Resistance
      {index = 86, op = "==", value = 12 }, --+7–12 Life after each Kill
      {index = 138, op = "==", value = 12 }, --+7–12 Mana after each Kill
      {index = 188, op = "==", param = 17, value = 2 }, --+1–2 to Poison and Bone Skills (Necromancer Only)
      {index = 191, op = "==", value = 25 }, --Enemy poison immunity reduced by 20–25%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 201-250
    {
      codes = "allitems",
      quality = "7",
      index = 201, --Nord's Tenderizer
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{index = , op = "==", value = 5 }, --1% Chance to cast level 20 Blizzard on Striking
      --{index = 25, op = "==", value = 250 }, --+270–330%? Enhanced Damage
      --{index = 93, op = "==", value = 45 }, --+45% Increased Attack Speed
      --{index = 54, op = "==", value = 205 }, --Adds 205 Cold Damage (min)
      --{index = 55, op = "==", value = 455 }, --Adds 455 Cold Damage (max)
      {index = 148, op = "==", value = 15 }, --Cold Absorb 5-15%
      {index = 119, op = "==", value = 180 }, --150-180% Bonus to Attack Rating
      --{index = 83, op = "==", param = 5, value = 1 }, --+1 To Druid Skill Levels
      {index = 151, op = "==", param = 103, value = 20 }, --Level 15-20 Thorns Aura When Equipped
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
      --{index = 25, op = "==", value = 300 }, --+250–300% Enhanced Damage
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      --{index = 116, op = "==", value = -33 }, ---33% Target Defense
      --{index = 89, op = "==", value = 3 }, --+3 to Light Radius
      {index = 139, op = "==", value = 20 }, --+15–20 Life after each Demon Kill
      --{index = 136, op = "==", value = 5 }, --5% Chance of Crushing Blow
      {index = 83, op = "==", param = 3, value = 3 }, --+2–3 to Paladin Skill Levels
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
      --{index = 25, op = "==", value = 300 }, --+250–300% Enhanced Damage
      {index = 121, op = "==", value = 250 }, --+200–250% Damage to Demons
      --{index = 83, op = "==", param = 3, value = 2 }, --+2 to Paladin Skill Levels
      --{index = 91, op = "==", value = -60 }, --Requirements -60%
      {index = 107, op = "==", param = 118, value = 4 }, --+2–4 to Holy Shock (Paladin only)
      {index = 107, op = "==", param = 101, value = 4 }, --+2–4 to Holy Bolt (Paladin only)
      --{index = 89, op = "==", value = 3 }, --+3 to Light Radius
      --{index = 116, op = "==", value = -33 }, ---33% Target Defense
      {index = 111, op = "==", value = 120 }, --Damage +60–120
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
      --{index = 25, op = "==", value = 290 }, --+240–290% Enhanced Damage
      --{index = 150, op = "==", value = 25 }, --Slows Target by 25%
      {index = 119, op = "==", value = 200 }, --+150–200% Bonus to Attack Rating
      --{index = 93, op = "==", value = 10 }, --+10% Increased Attack Speed
      --{index = 52, op = "==", value = 80 }, --Adds 80 Magic Damage (min)
      --{index = 53, op = "==", value = 240 }, --Adds 240 Magic Damage (max)
      {index = 34, op = "==", value = 7 }, --Damage Reduced by 4–7
      {index = 111, op = "==", value = 85 }, --Damage +40–85
      {index = 188, op = "==", param = 24, value = 4 }, --+2–4 to Combat Skills (Paladin Only)
      --{index = 136, op = "==", value = 10 }, --10% Chance of Crushing Blow
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
      --{index = 25, op = "==", value = 230 }, --+180–230% Enhanced Damage
      --{index = 48, op = "==", value = 222 }, --Adds 222 Fire Damage (min)
      --{index = 49, op = "==", value = 333 }, --Adds 333 Fire Damage (max)
      {index = 60, op = "==", value = 13 }, --7–13% Life stolen per hit
      --{index = , op = "==", value = 23 }, --1% Chance to Cast Level 25 Enchant on Striking
      --{index = 121, op = "==", value = 123 }, --+123% Damage to Demons
      {index = 39, op = "==", value = 25 }, --Fire Resist +15–25%
      {index = 83, op = "==", param = 5, value = 2 }, --+1-2 To Druid Skill Levels
      {index = 189, op = "==", value = 25}, --Enemy Fire Immunity Reduced By 15-25%
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
      --{index = 25, op = "==", value = 300 }, --+240–300% Enhanced Damage
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = ?, op = "==", value = 10 }, --15% Chance to cast level 10 Static Field on striking
      --{index = ?, op = "==", value = 18 }, --20% Chance to cast level 18 Tornado on striking
      --{index = 50, op = "==", value = 1 }, --Adds 1 Lightning Damage (min)
      --{index = 51, op = "==", value = 473 }, --Adds 473 Lightning Damage (max)
      --{index = 128, op = "==", value = 30 }, --Attacker Takes Lightning Damage of 30
      --{index = 136, op = "==", value = 5 }, --5% Chance of Crushing Blow
      {index = 145, op = "==", value = 9 }, --+3–9 Lightning Absorb
      --{index = 122, op = "==", value = 50 }, --+50% Damage to Undead
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
      --{index = 119, op = "==", value = 200 }, --200% Bonus to Attack Rating
      --{index = 25, op = "==", value = 200 }, --+200% Enhanced Damage
      --{index = 2, op = "==", value = 15 }, --+15 to Dexterity
      --{index = 0, op = "==", value = 15 }, --+15 to Strength
      --{index = 93, op = "==", value = 50 }, --+50% Increased Attack Speed
      --{index = 50, op = "==", value = 1 }, --Adds 1 Lightning Damage (min)
      --{index = 51, op = "==", value = 200 }, --Adds 200 Lightning Damage (max)
      --{index = 48, op = "==", value = 1 }, --Adds 1 Fire Damage (min)
      --{index = 49, op = "==", value = 200 }, --Adds 200 Fire Damage (max)
      --{index = 54, op = "==", value = 1 }, --Adds 1 Cold Damage (min)
      --{index = 55, op = "==", value = 200 }, --Adds 200 Cold Damage (max)
      {index = 34, op = "==", value = 12 }, --Damage Reduced by 8–12
      --{index = 122, op = "==", value = 50 }, --+50% Damage to Undead
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
      --{index = 25, op = "==", value = 280 }, --+230–280% Enhanced Damage
      --{index = 93, op = "==", value = 50 }, --+50% Increased Attack Speed
      --{index = 150, op = "==", value = 20 }, --Slows Target by 20%
      --{index = ?, op = "==", value = 15 }, --20% Chance to cast level 15 Tornado on striking
      --{index = 91, op = "==", value = -20 }, --Requirements -20%
      {index = 35, op = "==", value = 12 }, --Magic Damage Reduced by 8–12
      --{index = 122, op = "==", value = 50 }, --+50% Damage to Undead
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
      --{index = ?, op = "==", value = 10 }, --20% Chance to cast level 10 Static Field on striking
      --{index = 7, op = "==", value = 256*50 }, --+50 to Life
      --{index = 224, op = "==", value = 8 }, --+8 Attack Rating per level
      --{index = 41, op = "==", value = 75 }, --Lightning Resist +75%
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      --{index = 218, op = "==", value = 2 }, --+2 Maximum Damage per level
      --{index = 25, op = "==", value = 130 }, --+100–130% Enhanced Damage
      --{index = 89, op = "==", value = 1 }, --+1 to Light Radius
      --{index = 50, op = "==", value = 50 }, --Adds 50 Lightning Damage (min)
      --{index = 51, op = "==", value = 200 }, --Adds 200 Lightning Damage (max)
      --{index = 34, op = "==", value = 20 }, --Damage Reduced by 20
      --{index = 35, op = "==", value = 20 }, --Magic Damage Reduced by 20
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
      --{index = 25, op = "==", value = 230 }, --+180–230% Enhanced Damage
      {index = 136, op = "==", value = 25 }, --10–25% Chance of Crushing Blow
      --{index = 93, op = "==", value = 60 }, --+60% Increased Attack Speed
      --{index = ?, op = "==", value = 22 }, --33% Chance to cast level 22 Twister on striking
      {index = 34, op = "==", value = 12 }, --Damage Reduced by 8–12
      {index = 35, op = "==", value = 12 }, --Magic Damage Reduced by 8–12
      --{index = 122, op = "==", value = 50 }, --+50% Damage to Undead
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
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      --{index = 0, op = "==", value = 25 }, --+25 to Strength
      --{index = 39, op = "==", value = 25 }, --All Resistances +25
      --{index = 136, op = "==", value = 30 }, --30% Chance of Crushing Blow
      --{index = 22, op = "==", value = 20 }, --Adds 20 Damage
      --{index = 25, op = "==", value = 240 }, --+200–240% Enhanced Damage
      --{index = ?, op = "==", value = 5 }, --4% Chance to cast level 5 Amplify Damage on striking
      {index = 34, op = "==", value = 20 }, --Damage Reduced by 14–20
      {index = 35, op = "==", value = 20 }, --Magic Damage Reduced by 14–20
      --{index = 122, op = "==", value = 50 }, --+50% Damage to Undead
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
      --{index = 25, op = "==", value = 250 }, --+150–250% Enhanced Damage
      {index = 93, op = "==", value = 45 }, --+30–45% Increased Attack Speed
      --{index = 49, op = "==", value = 88 }, --Adds 45–88 Fire Damage
      --{index = 51, op = "==", value = 160 }, --Adds 1–160 Lightning Damage
      --{index = 55, op = "==", value = 60 }, --Adds 30–60 Cold Damage
      {index = 138, op = "==", value = 7 }, --+5–7 Mana after each Kill
      {index = 86, op = "==", value = 12 }, --+5–12 Life after each Kill
      {index = 34, op = "==", value = 14 }, --Damage Reduced by 11–14
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
      --{index = 25, op = "==", value = 240 }, --+190–240% Enhanced Damage
      --{index = 48, op = "==", value = 250 }, --Adds 250 Fire Damage (min)
      --{index = 49, op = "==", value = 500 }, --Adds 500 Fire Damage (max)
      {index = 121, op = "==", value = 150 }, --+100–150% Damage to Demons
      {index = 123, op = "==", value = 300 }, --+200–300 Attack Rating vs Demons
      {index = 145, op = "==", value = 7 }, --+3–7 Lightning Absorb
      {index = 62, op = "==", value = 6 }, --3–6% Mana stolen per hit
      {index = 34, op = "==", value = 12 }, --Damage Reduced by 8–12
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
      --{index = 25, op = "==", value = 260 }, --+210–260% Enhanced Damage
      {index = 60, op = "==", value = 15 }, --10–15% Life stolen per hit
      --{index = ?, op = "==", value = 15 }, --Level 15 Blood Golem (9 Charges)
      {index = 86, op = "==", value = 13 }, --+7–13 Life after each Kill
      {index = 135, op = "==", value = 15 }, --10–15% Chance of Open Wounds
      {index = 35, op = "==", value = 15 }, --Magic Damage Reduced by 12–15
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
      --{index = 93, op = "==", value = 50 }, --+50% Increased Attack Speed
      --{index = 22, op = "==", value = 70 }, --+30–70 to Maximum Damage
      --{index = 25, op = "==", value = 290 }, --+230–290% Enhanced Damage
      --{index = 250, op = "==", value = 8*0.25 }, --0.25% Deadly Strike per level
      --{index = 248, op = "==", value = 8*0.25 }, --0.25% Open Wounds per level
      --{index = 52, op = "==", value = 155 }, --Adds 25–155 Magic Damage
      --{index = 48, op = "==", value = 350 }, --Adds 50–350 Fire Damage
      {index = 60, op = "==", value = 10 }, --3–10% Life stolen per hit
      {index = 34, op = "==", value = 13 }, --Damage Reduced by 9–13
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
      --{index = 89, op = "==", value = 7 }, --+7 to Light Radius
      --{index = ?, op = "==", value = 20 }, --5% Chance to cast level 20 Chain Lightning on attack
      --{index = 116, op = "==", value = 0 }, --Ignore Target's Defense
      --{index = 144, op = "==", value = 25 }, --Lightning Absorb 25%
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      --{index = 52, op = "==", value = 60 }, --Adds 60 Magic Damage (min)
      --{index = 53, op = "==", value = 120 }, --Adds 120 Magic Damage (max)
      --{index = 50, op = "==", value = 1 }, --Adds 1 Lightning Damage (min)
      --{index = 51, op = "==", value = 200 }, --Adds 200 Lightning Damage (max)
      {index = 62, op = "==", value = 7 }, --5–7% Mana stolen per hit
      --{index = 25, op = "==", value = 150 }, --+150–200% Enhanced Damage
      --{index = 22, op = "==", value = 30 }, --Adds 10–30 Damage
      {index = 35, op = "==", value = 25 }, --Magic Damage Reduced by 15–25
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
      --{index = 52, op = "==", value = 250 }, --Adds 250 Magic Damage (min)
      --{index = 53, op = "==", value = 500 }, --Adds 500 Magic Damage (max)
      --{index = 25, op = "==", value = 270 }, --+230–270% Enhanced Damage
      {index = 151, op = "==", param = 380, value = 13 }, --Level 10–13 Sanctuary Aura When Equipped
      --{index = 54, op = "==", value = 250 }, --Adds 250 Cold Damage (min)
      --{index = 55, op = "==", value = 500 }, --Adds 500 Cold Damage (max)
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      {index = 0, op = "==", value = 10 }, --+5–10 to all Attributes
      --{index = 89, op = "==", value = 3 }, --+3 to Light Radius
      --{index = 127, op = "==", value = 1 }, --+1 to All Skills
      {index = 35, op = "==", value = 18 }, --Magic Damage Reduced by 15–18
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
      --{index = 25, op = "==", value = 230 }, --+180–230% Enhanced Damage
      --{index = 134, op = "==", value = 1 }, --Freezes target
      --{index = 135, op = "==", value = 1 }, --Half Freeze Duration
      --{index = 54, op = "==", value = 237 }, --Adds 237 Cold Damage (min)
      --{index = 55, op = "==", value = 486 }, --Adds 486 Cold Damage (max)
      --{index = 93, op = "==", value = 25 }, --+25% Increased Attack Speed
      {index = 148, op = "==", value = 15 }, --Cold Absorb 7–15%
      {index = 97, op = "==", param = 156, value = 14 }, --+7–14 to Arctic Blast
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
      --{index = 220, op = "==", value = 1 }, --+0.5 Strength per level
      {index = 107, op = "==", param = 119, value = 3 }, --+1–3 to Faithful Follower (Paladin only)
      --{index = 25, op = "==", value = 325 }, --+250–325% Enhanced Damage
      {index = 97, op = "==", param = 175, value = 3 }, --+2–3 to Chance For Glory
      --{index = 284, op = "==", value = 150 }, --Summon Damage +150%
      --{index = 74, op = "==", value = 20 }, --Replenish Life +20
      {index = 27, op = "==", value = 200 }, --Regenerate Mana 80–200%
      {index = 83, op = "==", param = 3, value = 3 }, --+2–3 to Paladin Skill Levels
      {index = 138, op = "==", value = 10 }, --+3–10 Mana after each Kill
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
      --{index = 25, op = "==", value = 250 }, --+250% Enhanced Damage
      --{index = 22, op = "==", value = 100 }, --+50–100 to Maximum Damage
      --{index = 93, op = "==", value = 60 }, --+60% Increased Attack Speed
      --{index = 96, op = "==", value = 30 }, --+30% Faster Run/Walk
      --{index = 107, op = "==", param = 277, value = 5 }, --+5 to Weapon Block (Assassin only)
      --{index = ?, op = "==", value = 8 }, --5% Chance to cast level 8 Static Field on striking
      {index = 35, op = "==", value = 15 }, --Magic Damage Reduced by 12–15
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 221, --Gleam Rod
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      {index = 151, op = "==", param = 389, value = 20 }, --Level 15–20 Magic Conviction Aura When Equipped
      --{index = 52, op = "==", value = 200 }, --Adds 200 Magic Damage (min)
      --{index = 53, op = "==", value = 425 }, --Adds 425 Magic Damage (max)
      --{index = 25, op = "==", value = 200 }, --+200% Enhanced Damage
      --{index = 93, op = "==", value = 40 }, --+40% Increased Attack Speed
      --{index = 136, op = "==", value = 20 }, --20% Chance of Crushing Blow
      --{index = 60, op = "==", value = 6 }, --6% Life stolen per hit
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
      --{index = 25, op = "==", value = 240 }, --+170–240% Enhanced Damage
      --{index = 48, op = "==", value = 233 }, --Adds 233 Fire Damage (min)
      --{index = 49, op = "==", value = 482 }, --Adds 482 Fire Damage (max)
      --{index = 407, op = "==", value = 3 }, --+3 to Fire Skills
      {index = 142, op = "==", value = 30 }, --Fire Absorb 20–30%
      --{index = ?, op = "==", value = 12 }, --4% Chance to cast level 12 Firestorm on striking
      {index = 0, op = "==", value = 20 }, --+10–20 to Strength
      {index = 3, op = "==", value = 10 }, --+5–10 to Vitality
      {index = 97, op = "==", param = 173, value = 18 }, --+12–18 to Inferno
      {index = 34, op = "==", value = 15 }, --Damage Reduced by 12–15
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
      --{index = 76, op = "==", value = 20 }, --Increase Maximum Life by 20%
      --{index = 25, op = "==", value = 250 }, --+180–250% Enhanced Damage
      --{index = 119, op = "==", value = 40 }, --40% Bonus to Attack Rating
      --{index = 22, op = "==", value = 100 }, --Adds 30–100 Damage
      --{index = ?, op = "==", value = 3 }, --8% Chance to cast level 3 Weaken on striking
      {index = 60, op = "==", value = 7 }, --5–7% Life stolen per hit
      {index = 34, op = "==", value = 30 }, --Damage Reduced by 20–30
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
      {index = 151, op = "==", param = 387, value = 20 }, --Level 15–20 Fire Conviction Aura When Equipped
      --{index = 48, op = "==", value = 250 }, --Adds 250 Fire Damage (min)
      --{index = 49, op = "==", value = 400 }, --Adds 400 Fire Damage (max)
      --{index = 25, op = "==", value = 300 }, --+300% Enhanced Damage
      --{index = ?, op = "==", value = 10 }, --10% Chance to cast level 10 Flare Armor when struck
      --{index = 83, op = "==", param = 255, value = 1 }, --(Mercenary Only)
      --{index = 141, op = "==", value = 15 }, --15% Deadly Strike
      --{index = 93, op = "==", value = 50 }, --+50% Increased Attack Speed
      --{index = 96, op = "==", value = 20 }, --+20% Faster Run/Walk
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
      --{index = 0, op = "==", value = 20 }, --+20 to all Attributes
      --{index = 119, op = "==", value = 50 }, --50% Bonus to Attack Rating
      --{index = 7, op = "==", value = 80 }, --+80 to Life
      --{index = 218, op = "==", value = 3 }, --+2.5 Maximum Damage per level
      --{index = 25, op = "==", value = 350 }, --+250–350% Enhanced Damage
      {index = 151, op = "==", param = 503, value = 20 }, --Level 10–20 Physical Conviction Aura When Equipped
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      {index = 34, op = "==", value = 25 }, --Damage Reduced by 20–25
      {index = 35, op = "==", value = 25 }, --Magic Damage Reduced by 20–25
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
      --{index = 217, op = "==", value = 2048*2 }, --+2.0 to Mana (Based on Character Level)
      --{index = 77, op = "==", value = 15 }, --Regenerate Mana 15%
      {index = 77, op = "==", value = 30 }, --Increase Maximum Mana by 15%-30%
      {index = 39, op = "==", value = 95 }, --All Resistances +75-95?
      --{index = 105, op = "==", value = 50 }, --+50% Faster Cast Rate
      --{index = 91, op = "==", value = -50 }, --Requirements -50%
      --{index = 34, op = "==", value = 15 }, --Damage Reduced by 15
      --{index = 35, op = "==", value = 15 }, --Magic Damage Reduced by 15
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
      --{index = 25, op = "==", value = 333 }, --+333% Enhanced Damage
      --{index = 93, op = "==", value = 50 }, --+50% Increased Attack Speed
      --{index = 96, op = "==", value = 40 }, --+40% Faster Run/Walk
      --{index = 22, op = "==", value = 60 }, --Damage +60
      --{index = 141, op = "==", value = 25 }, --25% Deadly Strike
      --{index = 397, op = "==", value = 9 }, --9 life restored per hit
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
      --{index = 25, op = "==", value = 300 }, --+200–300% Enhanced Damage
      --{index = 116, op = "==", value = -50 }, ---50% Target Defense
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
      --{index = 136, op = "==", value = 10 }, --10% Chance of Crushing Blow
      {index = 135, op = "==", value = 20 }, --5–20% Chance of Open Wounds
      --{index = 141, op = "==", value = 10 }, --10% Deadly Strike
      --{index = 150, op = "==", value = 20 }, --Slows Target by 20%
      {index = 97, op = "==", param = 180, value = 10 }, --+6–10 to Patient Zero
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
      --{index = 25, op = "==", value = 240 }, --+190–240% Enhanced Damage
      --{index = 116, op = "==", value = 0 }, --Ignore Target's Defense
      --{index = 52, op = "==", value = 108 }, --Adds 108 Magic Damage
      {index = 62, op = "==", value = 15 }, --10–15% Mana stolen per hit
      --{index = 152, op = "==", value = 1 }, --Ethereal
      --{index = 89, op = "==", value = 2 }, --+2 to Light Radius
      --{index = 152, op = "==", value = 1 }, --Indestructible
      {index = 93, op = "==", value = 40 }, --+25–40% Increased Attack Speed
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
      --{index = 22, op = "==", value = 85 }, --Adds 60–85 Damage
      --{index = 25, op = "==", value = 275 }, --+200–275% Enhanced Damage
      {index = 107, op = "==", param = 266, value = 5 }, --+3–5 to Blade Fury (Assassin only)
      {index = 107, op = "==", param = 257, value = 4 }, --+2–4 to Blade Sentinel (Assassin only)
      {index = 107, op = "==", param = 277, value = 4 }, --+2–4 to Blade Shield (Assassin only)
      {index = 93, op = "==", value = 50 }, --+30–50% Increased Attack Speed
      --{index = 397, op = "==", value = 4 }, --4 life restored per hit
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
      --{index = 25, op = "==", value = 210 }, --+160–210% Enhanced Damage
      --{index = 48, op = "==", value = 218 }, --Adds 218 Fire Damage (min)
      --{index = 49, op = "==", value = 483 }, --Adds 483 Fire Damage (max)
      --{index = 54, op = "==", value = 176 }, --Adds 176 Cold Damage (min)
      --{index = 55, op = "==", value = 397 }, --Adds 397 Cold Damage (max)
      --{index = 50, op = "==", value = 29 }, --Adds 29 Lightning Damage (min)
      --{index = 51, op = "==", value = 501 }, --Adds 501 Lightning Damage (max)
      --{index = 96, op = "==", value = 20 }, --+20% Faster Run/Walk
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
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
      --{index = 25, op = "==", value = 250 }, --+200–250% Enhanced Damage
      --{index = 156, op = "==", value = 50 }, --+50% Piercing Attack
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 141, op = "==", value = 25 }, --25% Deadly Strike
      --{index = ?, op = "==", value = 9 }, --25% Chance to cast level 9 Nova on striking
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
      --{index = 25, op = "==", value = 210 }, --+150–210% Enhanced Damage
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
      {index = 135, op = "==", value = 30 }, --20–30% Chance of Open Wounds
      --{index = 112, op = "==", value = 50 }, --Hit Causes Monster to Flee 50%
      --{index = ?, op = "==", value = 3 }, --33% Chance to cast level 3 Amplify Damage on striking
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
      --{index = 25, op = "==", value = 350 }, --+290–350% Enhanced Damage
      {index = 127, op = "==", value = 3 }, --+2–3 to All Skills
      --{index = 50, op = "==", value = 170 }, --Adds 1–170 Lightning Damage
      --{index = 54, op = "==", value = 90 }, --Adds 90 Cold Damage (min)
      --{index = 55, op = "==", value = 350 }, --Adds 350 Cold Damage (max)
      --{index = 52, op = "==", value = 150 }, --Adds 150 Magic Damage (min)
      --{index = 53, op = "==", value = 160 }, --Adds 160 Magic Damage (max)
      --{index = 102, op = "==", value = 20 }, --+20% Faster Block Rate
      --{index = 119, op = "==", value = 60 }, --60% Bonus to Attack Rating
      --{index = 93, op = "==", value = 50 }, --+50% Increased Attack Speed
      {index = 0, op = "==", value = 60 }, --+40–60 to Strength
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
      --{index = 25, op = "==", value = 350 }, --+260–350% Enhanced Damage
      --{index = 116, op = "==", value = 0 }, --Ignore Target's Defense
      {index = 135, op = "==", value = 30 }, --10–30% Chance of Open Wounds
      --{index = 22, op = "==", value = 60 }, --+50–60 to Throwing Damage
      --{index = 136, op = "==", value = 10 }, --10% Chance of Crushing Blow
      --{index = 93, op = "==", value = 40 }, --+40% Increased Attack Speed
      --{index = 83, op = "==", param = 1, value = 2 }, --+2 to Barbarian Skill Levels
      --{index = 96, op = "==", value = 20 }, --+20% Faster Run/Walk
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
      --{index = 25, op = "==", value = 210 }, --+160–210% Enhanced Damage
      --{index = 48, op = "==", value = 232 }, --Adds 232 Fire Damage (min)
      --{index = 49, op = "==", value = 323 }, --Adds 323 Fire Damage (max)
      {index = 60, op = "==", value = 12 }, --6–12% Life stolen per hit
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 50, op = "==", value = 23 }, --Adds 23 Lightning Damage (min)
      --{index = 51, op = "==", value = 333 }, --Adds 333 Lightning Damage (max)
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
      --{index = 25, op = "==", value = 440 }, --+350–440% Enhanced Damage
      {index = 60, op = "==", value = 13 }, --9–13% Life stolen per hit
      --{index = 138, op = "==", value = 15 }, --+15 Mana after each Kill
      --{index = 152, op = "==", value = 1 }, --Ethereal
      --{index = 152, op = "==", value = 1 }, --Indestructible
      --{index = 22, op = "==", value = 250 }, --Damage +200–250
      {index = 83, op = "==", param = 4, value = 3 }, --+2–3 to Barbarian Skill Levels
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
      --{index = 25, op = "==", value = 230 }, --+180–230% Enhanced Damage
      --{index = 59, op = "==", value = 293 }, --+293 Poison Damage over 10 seconds
      {index = 60, op = "==", value = 15 }, --9–15% Life stolen per hit
      --{index = 93, op = "==", value = 40 }, --+40% Increased Attack Speed
      --{index = 22, op = "==", value = 55 }, --Adds 20–55 Damage
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
      --{index = 25, op = "==", value = 230 }, --+180–230% Enhanced Damage
      --{index = 59, op = "==", value = 394 }, --+394 Poison Damage over 10 seconds
      {index = 141, op = "==", value = 50 }, --30–50% Deadly Strike
      --{index = 116, op = "==", value = 0 }, --Ignore Target's Defense
      {index = 127, op = "==", value = 4 }, --+2–4 to All Skills
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      {index = 34, op = "==", value = 15 }, --Damage Reduced by 12–15
      {index = 35, op = "==", value = 15 }, --Magic Damage Reduced by 12–15
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
      {index = 357, op = "==", value = 60 }, --+40–60% to Magic Skill Damage
      --{index = 25, op = "==", value = 320 }, --+320% Enhanced Damage
      {index = 107, op = ">=", param = 30, value = 7 }, --+3–7 to Fend (Amazon only)
      {index = 107, op = "==", param = 19, value = 7 }, --+5–7 to Impale (Amazon only)
      {index = 135, op = "==", value = 70 }, --30–70% Chance of Open Wounds
      --{index = 188, op = "==", param = 2, value = 3 }, --+3 to Javelin and Spear Skills (Amazon Only)
      --{index = 39, op = "==", value = 30 }, --All Resistances +30
      {index = 32, op = "==", value = 400 }, --+200–400 Defense vs. Missile
      {index = 34, op = "==", value = 12 }, --Damage Reduced by 10–12
      {index = 35, op = "==", value = 12 }, --Magic Damage Reduced by 10–12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 241, --Viperfork
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{index = 25, op = "==", value = 240 }, --+190–240% Enhanced Damage
      --{index = 59, op = "==", value = 325 }, --+325 Poison Damage over 10 seconds
      --{index = 93, op = "==", value = 50 }, --+50% Increased Attack Speed
      {index = 19, op = "==", value = 250 }, --+200–250 Attack Rating
      --{index = ?, op = "==", value = 9 }, --15% Chance to cast level 9 Poison Explosion on striking
      {index = 45, op = "==", value = 50 }, --Poison Resist +30–50%
      --{index = 34, op = "==", value = 13 }, --Damage Reduced by 13
      --{index = 35, op = "==", value = 13 }, --Magic Damage Reduced by 13
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
      --{index = 111, op = "==", value = 3 }, --Hit Blinds Target +3
      {index = 151, op = "==", param = 390, value = 20 }, --Level 15–20 Lightning Conviction Aura When Equipped
      --{index = 50, op = "==", value = 60 }, --Adds 60 Lightning Damage (min)
      --{index = 51, op = "==", value = 650 }, --Adds 650 Lightning Damage (max)
      --{index = 25, op = "==", value = 170 }, --+170% Enhanced Damage
      --{index = 83, op = "==", param = 255, value = 1 }, --(Mercenary Only)
      --{index = 22, op = "==", value = 110 }, --Adds 60–110 Damage
      --{index = 93, op = "==", value = 60 }, --+60% Increased Attack Speed
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
      --{index = 25, op = "==", value = 260 }, --+210–260% Enhanced Damage
      --{index = 93, op = "==", value = 25 }, --+25% Increased Attack Speed
      --{index = 116, op = "==", value = -20 }, ---20% Target Defense
      --{index = 16, op = "==", value = 80 }, --+50–80% Enhanced Defense
      {index = 136, op = "==", value = 30 }, --10–30% Chance of Crushing Blow
      {index = 34, op = "==", value = 17 }, --Damage Reduced by 13–17
      {index = 35, op = "==", value = 17 }, --Magic Damage Reduced by 13–17
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
      --{index = 25, op = "==", value = 320 }, --+270–320% Enhanced Damage
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = ?, op = "==", value = 15 }, --5% Chance to cast level 15 Corpse Explosion on Kill
      --{index = ?, op = "==", value = 16 }, --50% Chance to cast level 16 Bone Spear on striking
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
      {index = 34, op = "==", value = 17 }, --Damage Reduced by 13–17
      {index = 35, op = "==", value = 17 }, --Magic Damage Reduced by 13–17
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
      --{index = 150, op = "==", value = 50 }, --Slows Target by 50%
      {index = 151, op = "==", param = 388, value = 20 }, --Level 15–20 Cold Conviction Aura When Equipped
      --{index = 54, op = "==", value = 250 }, --Adds 250 Cold Damage (min)
      --{index = 55, op = "==", value = 350 }, --Adds 350 Cold Damage (max)
      --{index = 25, op = "==", value = 275 }, --+200–275% Enhanced Damage
      --{index = 83, op = "==", param = 255, value = 1 }, --(Mercenary Only)
      --{index = 135, op = "==", value = 40 }, --40% Chance of Open Wounds
      --{index = ?, op = "==", value = 10 }, --3% Chance to cast level 10 Shiver Armor when struck
      --{index = 31, op = "==", value = 100 }, --+100 Defense
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
      --{index = 25, op = "==", value = 240 }, --+190–240% Enhanced Damage
      --{index = ?, op = "==", value = 5 }, --33% Chance to cast level 5 Decrepify on striking
      --{index = 116, op = "==", value = 0 }, --Ignore Target's Defense
      {index = 60, op = "==", value = 15 }, --11–15% Life stolen per hit
      --{index = 91, op = "==", value = -25 }, --Requirements -25%
      --{index = 141, op = "==", value = 33 }, --33% Deadly Strike
      --{index = 54, op = "==", value = 14 }, --Adds 14 Cold Damage (min)
      --{index = 55, op = "==", value = 144 }, --Adds 144 Cold Damage (max)
      {index = 97, op = "==", param = 179, value = 5 }, --+1–5 to Calcified Carve
      {index = 97, op = "==", param = 178, value = 5 }, --+3–5 to Bone Spikes
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
      --{index = 93, op = "==", value = 60 }, --+60% Increased Attack Speed
      --{index = 89, op = "==", value = 4 }, --+4 to Light Radius
      --{index = 25, op = "==", value = 280 }, --+200–280% Enhanced Damage
      {index = 122, op = "==", value = 230 }, --+150–230% Damage to Undead
      {index = 80, op = "==", value = 80 }, --50–80% Better Chance of Getting Magic Items
      {index = 39, op = "==", value = 50 }, --All Resistances +30–50
      {index = 124, op = "==", value = 350 }, --+250–350 Attack Rating vs Undead
      --{index = 155, op = "==", value = 10 }, --10% Reanimate As: Returned
      {index = 86, op = "==", value = 14 }, --+10–14 Life after each Kill
      {index = 34, op = "==", value = 20 }, --Damage Reduced by 15–20
      {index = 35, op = "==", value = 20 }, --Magic Damage Reduced by 15–20
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
      {index = 107, op = "==", param = 151, value = 6 }, --+3–6 to Whirlwind (Barbarian only)
      --{index = 134, op = "==", value = 1 }, --Freezes target
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
      --{index = 25, op = "==", value = 300 }, --+200–300% Enhanced Damage
      --{index = 54, op = "==", value = 250 }, --Adds 250 Cold Damage (min)
      --{index = 55, op = "==", value = 500 }, --Adds 500 Cold Damage (max)
      --{index = ?, op = "==", value = 5 }, --3% Chance to cast level 5 Decrepify on striking
      --{index = ?, op = "==", value = 10 }, --2% Chance to cast level 10 Amplify Damage on striking
      {index = 150, op = "==", value = 60 }, --Slows Target by 40–60%
      --{index = 151, op = "==", value = 7 }, --Level 7 Holy Freeze Aura When Equipped
      {index = 34, op = "==", value = 18 }, --Damage Reduced by 12–18
      {index = 35, op = "==", value = 18 }, --Magic Damage Reduced by 12–18
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
      {index = 97, op = ">=", param = 178, value = 5 }, --+3–5 to Bone Spikes
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
      --{index = 107, op = "==", param = 999, value = 2 }, --+2 to Murder Calling
      --{index = 107, op = "==", param = 999, value = 3 }, --+3 to Poison Creeper
      {index = 332, op = "==", value = 50 }, --+25–50% to Poison Skill Damage
      {index = 357, op = "==", value = 50 }, --+25–50% to Magic Skill Damage
      {index = 188, op = "==", param = 40, value = 4 }, --+2–4 to Nature's Teachings (Druid Only)
      --{index = 25, op = "==", value = 200 }, --+200% Enhanced Damage
      {index = 77, op = "==", value = 20 }, --Increase Maximum Mana by 10–20%
      --{index = 31, op = "==", value = 300 }, --+100–300 Defense
      --{index = 58, op = "==", value = 50 }, --Poison Length Reduced by 50%
      {index = 45, op = "==", value = 50 }, --Poison Resist +35–50%
      {index = 97, op = "==", param = 183, value = 3 }, --+1–3 to Arachnophobia
      --{index = 83, op = "==", param = 5, value = 2 }, --+2 to Druid Skill Levels
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 251-300  
    {
      codes = "allitems",
      quality = "7",
      index = 251, -- Thermite Quicksand
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{index = 107, op = ">=", param = 61, value = 7 }, -- +7 to Fire Mastery (Sorceress only)
      --{index = ?, op = "==", value = 15 }, -- 15% Chance to cast level 15 Fire Ball on attack
      --{index = ?, op = "==", value = 8 }, -- 1% Chance to cast level 8 Overheat when struck
      --{index = 48, op = "==", value = 250 }, -- +200–250 Fire Damage (min)
      --{index = 49, op = "==", value = 505 }, -- +375–505 Fire Damage (max)
      --{index = 136, op = "==", value = 25 }, -- 25% Chance of Crushing Blow
      {index = 141, op = "==", value = 15 }, -- 10–15% Deadly Strike
      --{index = 25, op = "==", value = 300 }, -- +200–300% Enhanced Damage
      --{index = 93, op = "==", value = 40 }, -- +40% Increased Attack Speed
      {index = 36, op = "==", value = 15 }, -- Damage Reduced by 8–15%
      {index = 142, op = "==", value = 15 }, -- Fire Absorb 5–15%
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
      --{index = 105, op = "==", value = 45 }, -- +45% Faster Cast Rate
      {index = 1, op = "==", value = 50 }, -- +40–50 to Energy
      {index = 127, op = "==", value = 4 }, -- +2–4 to All Skills
      {index = 31, op = "==", value = 550 }, -- +450–550 Defense
      --{index = 85, op = "==", value = 5 }, -- +5% to Experience Gained
      {index = 35, op = "==", value = 8 }, -- Magic Damage Reduced by 5–8
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
      --{index = 25, op = "==", value = 320 }, -- +280–320% Enhanced Damage
      {index = 0, op = "==", value = 30 }, -- +20–30 to Strength
      {index = 136, op = "==", value = 25 }, -- 10–25% Chance of Crushing Blow
      --{index = 116, op = "==", value = -25 }, -- -25% Target Defense
      --{index = 120, op = "==", param = 0, value = -100 }, -- -100 to Monster Defense Per Hit
      {index = 111, op = "==", value = 30 }, -- Damage +10–30
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
      --{index = 127, op = "==", value = 5 }, -- +5 to All Skills
      {index = 333, op = "==", value = 15 }, -- -7–15% to Enemy Fire Resistance
      {index = 334, op = "==", value = 15 }, -- -7–15% to Enemy Lightning Resistance
      {index = 335, op = "==", value = 15 }, -- -7–15% to Enemy Cold Resistance
      {index = 336, op = "==", value = 15 }, -- -7–15% to Enemy Poison Resistance
      --{index = 27, op = "==", value = 100 }, -- Regenerate Mana 100%
      --{index = 105, op = "==", value = 30 }, -- +30% Faster Cast Rate
      {index = 86, op = "==", value = 15 }, -- +10–15 Life after each Kill
      {index = 187, op = "==", value = 10 }, -- enemy Cold immunities reduced by 5–10%
      {index = 189, op = "==", value = 10 }, -- enemy Fire immunities reduced by 5–10%
      {index = 190, op = "==", value = 10 }, -- enemy Light immunities reduced by 5–10%
      {index = 191, op = "==", value = 10 }, -- enemy Poison immunities reduced by 5–10%
      {index = 192, op = "==", value = 10 }, -- enemy Physical immunities reduced by 5–10%
      {index = 193, op = "==", value = 10 }, -- enemy Magic immunities reduced by 5–10%
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
      --{index = 93, op = "==", value = 40 }, -- +40% Increased Attack Speed
      --{index = 134, op = "==", value = 1 }, -- Freezes target
      --{index = 25, op = "==", value = 250 }, -- +225–250% Enhanced Damage
      --{index = 156, op = "==", value = 33 }, -- +33% Piercing Attack
      --{index = 153, op = "==", value = 1 }, -- Cannot Be Frozen
      --{index = 148, op = "==", value = 5 }, -- Cold Absorb 5%
      {index = 19, op = "==", value = 200 }, -- +75–200 to Attack Rating
      {index = 188, op = "==", param = 1, value = 5 }, -- +2–5 Passive & Magic Skills (Amazon Only)
      --{index = ?, op = "==", param = 221, value = 10 }, -- Level 10 Murder Calling (60 charges)
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
      --{index = 25, op = "==", value = 315 }, -- +220–315% Enhanced Damage
      --{index = 93, op = "==", value = 60 }, -- +60% Increased Attack Speed
      --{index = 150, op = "==", value = 25 }, -- Slows Target by 25%
      --{index = 134, op = "==", value = 1 }, -- Freezes target
      {index = 331, op = "==", value = 25 }, -- +15–25% to Cold Skill Damage
      --{index = 335, op = "==", value = -15 }, -- -15% to Enemy Cold Resistance
      --{index = 62, op = "==", value = 6 }, -- 6% Mana stolen per hit
      --{index = 107, op = "==", param = 234, value = 1 }, -- +1 to Trembling Vortex
      --{index = 187, op = "==", value = -10 }, -- Enemy cold immunity reduced by 10%
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
      {index = 76, op = "==", value = -5 }, -- Increase Maximum Life by -5– -10%
      --{index = 77, op = "==", value = 10 }, -- Increase Maximum Mana by 10%
      --{index = 397, op = "==", value = 4 }, -- 4 Life restored per hit
      --{index = 60, op = "==", value = 12 }, -- 12% Life stolen per hit
      --{index = 22, op = "==", value = 90 }, -- Adds 60–90 Damage
      --{index = 58, op = "==", value = 250 }, -- +250 Poison Damage over 5 sec
      --{index = ?, op = "==", value = 10 }, -- 5% Chance to cast lvl 10 Venom on Kill
      --{index = ?, op = "==", value = 15 }, -- 3% Chance to cast lvl 15 Poison Nova when struck
      --{index = 25, op = "==", value = 240 }, -- +240% Enhanced Damage
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
      {index = 97, op = "==", param = 182, value = 7 }, -- +5–7 to Electro Ball
      {index = 330, op = "==", value = 30 }, -- +20–30% to Lightning Skill Damage
      --{index = 50, op = "==", value = 60 }, -- +60 Lightning Damage (min)
      --{index = 51, op = "==", value = 1000 }, -- +900–1000 Lightning Damage (max)
      --{index = 113, op = "==", value = 5 }, -- Hit Blinds Target +5
      --{index = 25, op = "==", value = 260 }, -- +210–260% Enhanced Damage
      {index = 62, op = "==", value = 12 }, -- 4–12% Mana stolen per hit
      --{index = ?, op = "==", value = 15 }, -- 15% Chance to cast lvl 15 Nova on Kill
      --{index = 83, op = "==", param = 0, value = 2 }, -- +2 to Amazon Skill Levels
      --{index = 99, op = "==", value = 24 }, -- +24% Faster Hit Recovery
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
      --{index = ?, op = "==", value = 15 }, -- 2% Chance to cast lvl 15 Fissure on attack
      --{index = 83, op = "==", param = 0, value = 2 }, -- +2 to Amazon Skill Levels
      --{index = 25, op = "==", value = 100 }, -- +100% Enhanced Damage
      --{index = 22, op = "==", value = 60 }, -- Adds 60 Damage
      --{index = 36, op = "==", value = 15 }, -- Damage Reduced by 15%
      {index = 39, op = "==", value = 15 }, -- All Resistances +10–15
      --{index = 221, op = "==", value = 1 }, -- +1 Dexterity per level
      {index = 119, op = "==", value = 150 }, -- 75–150% Bonus to Attack Rating
      --{index = ?, op = "==", value = 10 }, -- 3% Chance to cast lvl 10 Earthquake on striking
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
      --{index = 115, op = "==", value = 1 }, -- Ignore Target's Defense
      --{index = 224, op = "==", value = 6 }, -- +6 Attack Rating per level
      --{index = 219, op = "==", value = 2 }, -- +2% Enhanced Max Damage per level
      --{index = 25, op = "==", value = 200 }, -- +200% Enhanced Damage
      --{index = 83, op = "==", param = 0, value = 1 }, -- +1 to Amazon Skill Levels
      --{index = 2, op = "==", value = 25 }, -- +25 to Dexterity
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 261, -- Widowmaker
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{index = 25, op = "==", value = 200 }, -- +150–200% Enhanced Damage
      --{index = 141, op = "==", value = 25 }, -- 25% Deadly Strike
      --{index = 115, op = "==", value = 1 }, -- Ignore Target's Defense
      {index = 107, op = "==", param = 6, value = 6 }, -- +3–6 to Magic Arrow (Amazon only)
      {index = 97, op = "==", param = 22, value = 5 }, -- +3–5 to Guided Arrow
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
      --{index = 2, op = "==", value = 5 }, -- +5 to Dexterity
      --{index = 218, op = "==", value = 3 }, -- +3.125 Max Damage per level
      {index = 96, op = "==", value = 30 }, -- +20–30% Faster Run/Walk
      {index = 62, op = "==", value = 8 }, -- 6–8% Mana stolen per hit
      --{index = 25, op = "==", value = 250 }, -- +250% Enhanced Damage
      --{index = 93, op = "==", value = 20 }, -- +20% Increased Attack Speed
      --{index = 0, op = "==", value = 10 }, -- +10 to Strength
      --{index = 257, op = "==", value = 1 }, -- +1% Deadly Strike per Dexterity
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
      {index = 192, op = ">=", value = 40 }, -- Enemy Physical Immunity Reduced by 30-40%?
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
      -- Level 20 Famine Aura When Equipped
      --{index = 50, op = "==", value = 60 }, -- Adds 60 Lightning Damage (min)
      --{index = 51, op = "==", value = 250 }, -- Adds 250 Lightning Damage (max)
      --{index = 54, op = "==", value = 100 }, -- Adds 100 Cold Damage (min)
      --{index = 55, op = "==", value = 250 }, -- Adds 250 Cold Damage (max)
      --{index = 48, op = "==", value = 100 }, -- Adds 100 Fire Damage (min)
      --{index = 49, op = "==", value = 250 }, -- Adds 250 Fire Damage (max)
      --{index = 25, op = "==", value = 180 }, -- +180% Enhanced Damage
      --{index = 218, op = "==", value = 1 }, -- +1 Max Damage per level
      --{index = 93, op = "==", value = 35 }, -- +35% Increased Attack Speed
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
      --{index = 25, op = "==", value = 230 }, -- +180–230% Enhanced Damage
      --{index = 48, op = "==", value = 63 }, -- Adds 63 Fire Damage (min)
      --{index = 49, op = "==", value = 324 }, -- Adds 324 Fire Damage (max)
      --{index = 93, op = "==", value = 20 }, -- +20% Increased Attack Speed
      {index = 119, op = "==", value = 150 }, -- 100–150% Bonus to Attack Rating
      {index = 189, op = "==", value = 30 }, -- enemy Fire immunities reduced by 20-30%
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
      {index = 83, op = "==", param = 6, value = 3 }, --+2–3 to Assassin Skill Levels
      --{index = 25, op = "==", value = 220 }, -- +160–220% Enhanced Damage
      --{index = 156, op = "==", value = 33 }, -- +33% Piercing Attack
      {index = 60, op = "==", value = 18 }, -- 12–18% Life stolen per hit
      --{index = 150, op = "==", value = 25 }, -- Slows Target by 25%
      {index = 107, op = "==", param = 278, value = 2 }, -- +1-2 to Venom (Assassin Only)
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
      --{index = 89, op = "==", value = 4 }, -- +4 to Light Radius
      --{index = 97, op = "==", param = 36, value = 3 }, -- +3 to Firestorm
      {index = 138, op = "==", value = 4 }, -- +1–4 Mana after each Kill
      --{index = 39, op = "==", value = 15 }, -- Fire Resist +15%
      {index = 9, op = "==", value = 25*256 }, -- +8–25 Mana
      {index = 329, op = "==", value = 6 }, -- +4–6% to Fire Skill Damage
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
      {index = 27, op = "==", value = 30 }, -- Regenerate Mana 10–30%
      {index = 77, op = "==", value = 20 }, -- Increase Maximum Mana by 8–20%
      {index = 331, op = "==", value = 8 }, -- +6–8% to Cold Skill Damage
      {index = 105, op = "==", value = 20 }, -- +10–20% Faster Cast Rate
      {index = 97, op = "==", param = 39, value = 3 }, -- +2–3 to Ice Bolt
      {index = 43, op = "==", value = 13 }, -- Cold Resist +8–13%
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
      --{index = 89, op = "==", value = -1 }, -- -1 to Light Radius
      {index = 31, op = "==", value = 25 }, -- +10–25 Defense
      --{index = 107, op = "==", param = 41, value = 2 }, -- +2 to Fire Ball
      --{index = 107, op = "==", param = 37, value = 2 }, -- +2 to Warmth
      {index = 7, op = "==", value = 20*256 }, -- +15–20 Life
      {index = 9, op = "==", value = 30*256 }, -- +20–30 Mana
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
      --{index = 107, op = "==", param = 48, value = 3 }, -- +3 to Rolling Thunder
      --{index = 107, op = "==", param = 54, value = 2 }, -- +2 to Discharge
      {index = 334, op = ">=", value = 15 }, -- -7–15% Enemy Lightning Resistance
      {index = 145, op = ">=", value = 5 }, -- +1–5 Lightning Absorb
      {index = 41, op = ">=", value = 15 }, -- Lightning Resist +10–15%
      {index = 27, op = ">=", value = 40 }, -- Regenerate Mana 30–40%
      {index = 190, op = ">=", value = 10 }, -- Enemy lightning immunity reduced by 5–10%
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
      --{index = 107, op = "==", param = 53, value = 2 }, -- +2 to Chain Lightning
      --{index = 83, op = "==", param = 1, value = 1 }, -- +1 to Lightning Skills (Sorceress Only)
      {index = 9, op = "==", value = 50*256 }, -- +30–50 Mana
      --{index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      --{index = 138, op = "==", value = 2 }, -- +2 Mana after each Kill
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
      --{index = 48, op = "==", value = 4 }, -- Adds 4 Fire Damage (min)
      --{index = 49, op = "==", value = 6 }, -- Adds 6 Fire Damage (max)
      --{index = 50, op = "==", value = 4 }, -- Adds 4 Lightning Damage (min)
      --{index = 51, op = "==", value = 6 }, -- Adds 6 Lightning Damage (max)
      --{index = 54, op = "==", value = 4 }, -- Adds 4 Cold Damage (min)
      --{index = 55, op = "==", value = 6 }, -- Adds 6 Cold Damage (max)
      {index = 93, op = "==", value = 15 }, -- +10–15% Increased Attack Speed
      --{index = 25, op = "==", value = 75 }, -- +60–75% Enhanced Damage
      {index = 122, op = "==", value = 80 }, -- +60–80% Damage to Undead
      {index = 121, op = "==", value = 60 }, -- +40–60% Damage to Demons
      {index = 2, op = "==", value = 10 }, -- +5–10 Dexterity
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
      --{index = 25, op = "==", value = 115 }, -- +100–115% Enhanced Damage
      --{index = 188, op = "==", param = 0, value = 2 }, -- +2 to Bow & Crossbow Skills (Amazon Only)
      {index = 331, op = "==", value = 15 }, -- +10–15% to Cold Skill Damage
      --{index = 54, op = "==", value = 20 }, -- Adds 20 Cold Damage (min)
      --{index = 55, op = "==", value = 35 }, -- Adds 35 Cold Damage (max)
      {index = 9, op = "==", value = 45*256 }, -- +35–45 Mana
      {index = 150, op = "==", value = 25 }, -- Slows Target by 15–25%
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
      --{index = 83, op = "==", param = 0, value = 1 }, -- +1 to Amazon Skill Levels
      --{index = 188, op = "==", param = 2, value = 1 }, -- +1 to Javelin & Spear Skills (Amazon Only)
      --{index = 25, op = "==", value = 175 }, -- +150–175% Enhanced Damage
      {index = 93, op = "==", value = 30 }, -- +20–30% Increased Attack Speed
      --{index = 16, op = "==", value = 80 }, -- +80% Enhanced Defense
      --{index = 0, op = "==", value = 20 }, -- +20 Strength
      --{index = 2, op = "==", value = 20 }, -- +20 Dexterity
      {index = 60, op = "==", value = 5 }, -- 3–5% Life stolen per hit
      {index = 62, op = "==", value = 5 }, -- 3–5% Mana stolen per hit
      {index = 34, op = "==", value = 6 }, -- Damage Reduced by 4–6
      {index = 35, op = "==", value = 6 }, -- Magic Damage Reduced by 4–6
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
      --{index = 83, op = "==", param = 0, value = 1 }, -- +1 to Amazon Skill Levels
      --{index = 188, op = "==", param = 2, value = 1 }, -- +1 to Javelin & Spear Skills (Amazon Only)
      --{index = 25, op = "==", value = 375 }, -- +350–375% Enhanced Damage
      {index = 93, op = "==", value = 25 }, -- +15–25% Increased Attack Speed
      --{index = 0, op = "==", value = 30 }, -- +30 Strength
      {index = 34, op = "==", value = 6 }, -- Damage Reduced by 4–6
      {index = 35, op = "==", value = 6 }, -- Magic Damage Reduced by 4–6
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
      --{index = 25, op = "==", value = 75 }, -- +75% Enhanced Damage
      --{index = 83, op = "==", param = 0, value = 1 }, -- +1 to Amazon Skill Levels
      {index = 188, op = "==", param = 1, value = 2 }, -- +1–2 Passive & Magic Skills (Amazon Only)
      --{index = 22, op = "==", value = 15 }, -- +8–15 Throwing Damage
      {index = 62, op = "==", value = 6 }, -- 4–6% Mana stolen per hit
      --{index = 93, op = "==", value = 10 }, -- +10% Increased Attack Speed
      {index = 96, op = "==", value = 30 }, -- +20–30% Faster Run/Walk
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
      {index = 407, op = "==", value = 3 }, -- +1–3 to Fire Skills
      --{index = ?, op = "==", value = 10 }, -- 10% Chance to cast lvl 10 Flare Armor when struck
      --{index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      --{index = 40, op = "==", value = 5 }, -- +5% Maximum Fire Resist
      --{index = 39, op = "==", value = 20 }, -- Fire Resist +20%
      --{index = 217, op = "==", value = 2048*2 }, -- +2 Mana per level
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
      --{index = 127, op = "==", value = 1 }, -- +1 to All Skills
      {index = 188, op = "==", param = 10, value = 3 }, -- +1–3 Cold Skills (Sorceress Only)
      --{index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      {index = 105, op = "==", value = 40 }, -- +20–40% Faster Cast Rate
      {index = 1, op = "==", value = 40 }, -- +10–40 Energy
      {index = 79, op = "==", value = 60 }, -- 25–60% Extra Gold from Monsters
      --{index = ?, op = "==", value = 6 }, -- 6% Chance to cast lvl 6 Lower Resist when struck
      {index = 281, op = "==", value = 150 }, -- Summon Damage +75–150%
      --{index = 39, op = "==", value = 25 }, -- All Resistances +25
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
      {index = 31, op = "==", value = 175 }, -- +50–175 Defense
      --{index = 110, op = "==", value = 50 }, -- Poison Length Reduced by 50%
      --{index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      {index = 188, op = "==", param = 9, value = 4 }, -- +2–4 Lightning Skills (Sorceress Only)
      --{index = 1, op = "==", value = 60 }, -- +60 Energy
      --{index = 80, op = "==", value = 25 }, -- 25% Better Chance of Getting Magic Items
      --{index = 144, op = "==", value = 15 }, -- Lightning Absorb 15%
      --{index = 96, op = "==", value = 40 }, -- +40% Faster Run/Walk
      --{index = 102, op = "==", value = 20 }, -- +20% Faster Block Rate
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
      {index = 80, op = "==", value = 60 }, -- 20–60% Better Chance of Getting Magic Items
      {index = 329, op = "==", value = 20 }, -- +10–20% to Fire Skill Damage
      {index = 331, op = "==", value = 20 }, -- +10–20% to Cold Skill Damage
      {index = 330, op = "==", value = 20 }, -- +10–20% to Lightning Skill Damage
      --{index = 105, op = "==", value = 60 }, -- +60% Faster Cast Rate
      --{index = 0, op = "==", value = 10 }, -- +10 to all Attributes (Strength)
      --{index = 1, op = "==", value = 10 }, -- +10 to Energy
      --{index = 2, op = "==", value = 10 }, -- +10 to Dexterity
      --{index = 3, op = "==", value = 10 }, -- +10 to Vitality
      --{index = 39, op = "==", value = 20 }, -- All Resistances +20
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 281, -- The Oculus
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{index = 83, op = "==", param = 1, value = 3 }, -- +3 to Sorceress Skill Levels
      --{index = ?, op = "==", value = 1 }, -- 25% Chance to cast level 1 Teleport when struck
      --{index = 39, op = "==", value = 20 }, -- All Resistances +20
      --{index = 105, op = "==", value = 30 }, -- +30% Faster Cast Rate
      --{index = 16, op = "==", value = 20 }, -- +20% Enhanced Defense
      --{index = 3, op = "==", value = 20 }, -- +20 Vitality
      --{index = 1, op = "==", value = 20 }, -- +20 Energy
      --{index = 138, op = "==", value = 5 }, -- +5 Mana after each Kill
      --{index = 80, op = "==", value = 50 }, -- 50% Better Chance of Getting Magic Items
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
      --{index = 25, op = "==", value = 275 }, -- +200–275% Enhanced Damage
      --{index = 52, op = "==", value = 50 }, -- Adds 50 Magic Damage (min)
      --{index = 53, op = "==", value = 90 }, -- Adds 90 Magic Damage (max)
      {index = 39, op = "==", value = 30 }, -- All Resistances +15–30
      {index = 31, op = "==", value = 400 }, -- +200–400 Defense
      {index = 188, op = "==", param = 0, value = 3 }, -- +1–3 Bow & Crossbow Skills (Amazon Only)
      --{index = 9, op = "==", value = 60*256 }, -- +60 Mana
      {index = 76, op = "==", value = 10 }, -- Increase Maximum Life by 5–10%
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
      --{index = 83, op = "==", param = 0, value = 2 }, -- +2 to Amazon Skill Levels
      --{index = 188, op = "==", param = 0, value = 2 }, -- +2 to Bow & Crossbow Skills (Amazon Only)
      --{index = 25, op = "==", value = 200 }, -- +150–200% Enhanced Damage
      --{index = 93, op = "==", value = 20 }, -- +20% Increased Attack Speed
      --{index = 2, op = "==", value = 20 }, -- +20 Dexterity
      --{index = 1, op = "==", value = 20 }, -- +20 Energy
      {index = 62, op = "==", value = 8 }, -- 5–8% Mana stolen per hit
      --{index = 22, op = "==", value = 50 }, -- Adds 25–50 Damage
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
      --{index = 83, op = "==", param = 0, value = 2 }, -- +2 to Amazon Skill Levels
      --{index = 188, op = "==", param = 2, value = 2 }, -- +2 to Javelin & Spear Skills (Amazon Only)
      --{index = 25, op = "==", value = 200 }, -- +150–200% Enhanced Damage
      --{index = 96, op = "==", value = 30 }, -- +30% Faster Run/Walk
      --{index = 0, op = "==", value = 20 }, -- +20 Strength
      --{index = 2, op = "==", value = 20 }, -- +20 Dexterity
      {index = 60, op = "==", value = 9 }, -- 5–9% Life stolen per hit
      --{index = 22, op = "==", value = 50 }, -- Adds 25–50 Damage
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
      --{index = 83, op = "==", param = 0, value = 2 }, -- +2 to Amazon Skill Levels
      --{index = 188, op = "==", param = 2, value = 2 }, -- +2 to Javelin & Spear Skills (Amazon Only)
      --{index = 25, op = "==", value = 200 }, -- +150–200% Enhanced Damage
      --{index = 93, op = "==", value = 30 }, -- +30% Increased Attack Speed
      --{index = 16, op = "==", value = 20 }, -- +20% Enhanced Defense
      --{index = 0, op = "==", value = 20 }, -- +20 Strength
      --{index = 3, op = "==", value = 20 }, -- +20 Vitality
      {index = 60, op = "==", value = 9 }, -- 5–9% Life stolen per hit
      --{index = 22, op = "==", value = 50 }, -- Adds 25–50 Damage
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
      --{index = 127, op = "==", value = 2 }, -- +2 to All Skills
      {index = 107, op = "==", param = 58, value = 7 }, -- +4–7 to Energy Shield (Sorceress only)
      --{index = 107, op = "==", param = 50, value = 3 }, -- +3 to Shiver Armor (Sorceress only)
      {index = 107, op = "==", param = 37, value = 5 }, -- +3–5 to Warmth (Sorceress only)
      {index = 77, op = "==", value = 35 }, -- Increase Maximum Mana by 20–35%
      {index = 74, op = "==", value = 25 }, -- Replenish Life +5–25
      {index = 286, op = "==", value = 25 }, -- Reduce Cooldowns by 10–25%
      {index = 39, op = "==", value = 15 }, -- All Resistances +5–15
      --{index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
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
      {index = 83, op = "==", param = 1, value = 3 }, -- +1–3 to Sorceress Skill Levels
      --{index = 105, op = "==", value = 40 }, -- +40% Faster Cast Rate
      {index = 329, op = "==", value = 20 }, -- +10–20% to Fire Skill Damage
      {index = 330, op = "==", value = 20 }, -- +10–20% to Lightning Skill Damage
      {index = 1, op = "==", value = 30 }, -- +20–30 Energy
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
      {index = 139, op = "==", value = 30 }, -- +20–30 Life after each Demon Kill
      --{index = 127, op = "==", value = 3 }, -- +3 to All Skills
      --{index = 107, op = "==", param = 65, value = 2 }, -- +2 to Cold Mastery
      --{index = 107, op = "==", param = 61, value = 2 }, -- +2 to Fire Mastery
      --{index = 107, op = "==", param = 63, value = 2 }, -- +2 to Lightning Mastery
      {index = 31, op = "==", value = 400 }, -- +200–400 Defense
      {index = 36, op = "==", value = 20 }, -- Damage Reduced by 10–20%
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
      {index = 127, op = "==", value = 2 }, -- +1–2 to All Skills
      --{index = 407, op = "==", value = 2 }, -- +2 to Fire Skills
      {index = 329, op = "==", value = 15 }, -- +10–15% to Fire Skill Damage
      {index = 107, op = "==", param = 62, value = 5 }, -- +3–5 to Hydra (Sorceress only)
      {index = 39, op = "==", value = 60 }, -- Fire Resist +25–60%
      {index = 142, op = "==", value = 10 }, -- Fire Absorb 5–10%
      --{index = 118, op = "==", value = 1 }, -- Half Freeze Duration
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
      --{index = 83, op = "==", param = 1, value = 3 }, -- +3 to Sorceress Skill Levels
      {index = 331, op = "==", value = 30 }, -- +15–30% to Cold Skill Damage
      --{index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      {index = 39, op = "==", value = 40 }, -- Fire Resist +25–40%
      {index = 41, op = "==", value = 40 }, -- Lightning Resist +25–40%
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
      --{index = 25, op = "==", value = 230 }, -- +180–230% Enhanced Damage
      {index = 119, op = "==", value = 300 }, -- 200–300% Bonus to Attack Rating
      {index = 107, op = "==", param = 16, value = 6 }, -- +3–6 to Exploding Arrow (Amazon only)
      {index = 188, op = "==", param = 0, value = 4 }, -- +2–4 to Bow & Crossbow Skills (Amazon Only)
      --{index = 155, op = "==", value = 10 }, -- 10% Reanimate As: PlagueBearer
      {index = 83, op = "==", param = 0, value = 2 }, -- +1–2 to Amazon Skill Levels
      {index = 2, op = "==", value = 40 }, -- +20–40 Dexterity
      {index = 415, op = "==", value = 10 }, -- Increase charm max weight by 5–10
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
      --{index = 25, op = "==", value = 275 }, -- +175–275% Enhanced Damage
      {index = 119, op = "==", value = 200 }, -- 100–200% Bonus to Attack Rating
      {index = 188, op = "==", param = 0, value = 3 }, -- +1–3 Bow & Crossbow Skills (Amazon Only)
      --{index = 120, op = "==", param = 0, value = -100 }, -- -100 Monster Defense Per Hit
      {index = 121, op = "==", value = 200 }, -- +125–200% Damage to Demons
      --{index = ?, op = "==", value = 25 }, -- 25% Chance to cast lvl 25 Overheat on Kill
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
      --{index = 25, op = "==", value = 200 }, -- +150–200% Enhanced Damage
      --{index = 50, op = "==", value = 1 }, -- Adds 1 Lightning Damage (min)
      --{index = 51, op = "==", value = 511 }, -- Adds 511 Lightning Damage (max)
      --{index = ?, op = "==", value = 14 }, -- 20% Chance to cast lvl 14 Lightning on striking
      --{index = 93, op = "==", value = 15 }, -- +15% Increased Attack Speed
      --{index = 190, op = "==", value = -15 }, -- -15% Enemy Lightning Resistance
      --{index = 107, op = "==", param = 20, value = 3 }, -- +3 to Thunder God's Wrath (Amazon only)
      {index = 188, op = "==", param = 2, value = 4 }, -- +2–4 to Javelin & Spear Skills (Amazon Only)
      {index = 107, op = "==", param = 35, value = 3 }, -- +1–3 to Lightning Fury (Amazon only)
      --{index = 190, op = "==", value = -10 }, -- Enemy lightning immunity reduced by 10%
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
      --{index = 25, op = "==", value = 280 }, -- +230–280% Enhanced Damage
      --{index = 52, op = "==", value = 101 }, -- Adds 101 Magic Damage (min)
      --{index = 53, op = "==", value = 187 }, -- Adds 187 Magic Damage (max)
      {index = 39, op = "==", value = 50 }, -- All Resistances +30–50
      {index = 31, op = "==", value = 600 }, -- +400–600 Defense
      {index = 188, op = "==", param = 2, value = 3 }, -- +1–3 to Javelin & Spear Skills (Amazon Only)
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
      --{index = 7, op = "==", value = 15*256 }, -- +15 Life
      --{index = 19, op = "==", value = 30 }, -- +30 Attack Rating
      --{index = 25, op = "==", value = 30 }, -- +30% Enhanced Damage
      --{index = 9, op = "==", value = 15*256 }, -- +15 Mana
      --{index = 31, op = "==", value = 14 }, -- +14 Defense
      --{index = 85, op = "==", value = 7 }, -- +7% Experience Gained
      {index = 34, op = "==", value = 3 }, -- Damage Reduced by 1–3
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
      {index = 79, op = "==", value = 20 }, -- 15–20% Extra Gold from Monsters
      {index = 80, op = "==", value = 50 }, -- 25–50% Better Chance of Getting Magic Items
      --{index = 127, op = "==", value = 1 }, -- +1 to All Skills
      {index = 85, op = "==", value = 5 }, -- +2–5% Experience Gained
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
      --{index = 128, op = "==", value = 7 }, -- Attacker Takes Lightning Damage of 7
      --{index = 113, op = "==", value = 1 }, -- Hit Blinds Target +1
      --{index = 41, op = "==", value = 15 }, -- Lightning Resist +15%
      --{index = 32, op = "==", value = 100 }, -- +100 Defense vs. Missile
      --{index = 31, op = "==", value = 10 }, -- +10 Defense
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
      --{index = 89, op = "==", value = -2 }, -- -2 to Light Radius
      --{index = 39, op = "==", value = 15 }, -- All Resistances +15
      --{index = 34, op = "==", value = 7 }, -- Damage Reduced by 7
      --{index = 22, op = "==", value = 8 }, -- +8 Maximum Damage
      --{index = 31, op = "==", value = 20 }, -- +10–20 Defense
      --{index = 16, op = "==", value = 50 }, -- +30–50% Enhanced Defense
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 301-350
    {
      codes = "allitems",
      quality = "7",
      index = 301, -- Howltusk
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 78, op = "==", value = 3 }, -- Attacker Takes Damage of 3
      --{ index = 16, op = "==", value = 80 }, -- +80% Enhanced Defense
      --{ index = 114, op = "==", value = 35 }, -- 35% Damage Taken Goes To Mana
      --{ index = 112, op = "==", value = 25 }, -- Hit Causes Monster to Flee 25%
      --{ index = 34, op = "==", value = 2 }, -- Damage Reduced by 2
      --{ index = 35, op = "==", value = 2 }, -- Magic Damage Reduced by 2
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
      --{ index = 83, op = "==", param = 3, value = 1 }, -- +1 to Paladin Skill Levels
      --{ index = 60, op = "==", value = 5 }, -- 5% Life stolen per hit
      --{ index = 9, op = "==", value = 10*256 }, -- +10 to Mana
      --{ index = 45, op = "==", value = 25 }, -- Poison Resist +25%
      --{ index = 58, op = "==", value = 80 }, -- +80 Poison Damage over 8 seconds
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
      --{ index = 112, op = "==", value = 50 }, -- Hit Causes Monster to Flee 50%
      --{ index = 0, op = "==", value = 20 }, -- +20 Strength
      --{ index = 39, op = "==", value = 10 }, -- All Resistances +10
      --{ index = 122, op = "==", value = 50 }, -- +50% Damage to Undead
      --{ index = 31, op = "==", value = 25 }, -- +25 Defense
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      --{ index = 35, op = "==", value = 3 }, -- Magic Damage Reduced by 3
      --{ index = 43, op = "==", value = 20 }, -- Cold Resist +20%
      --{ index = 39, op = "==", value = 20 }, -- Fire Resist +20%
      --{ index = 2, op = "==", value = 10 }, -- +10 Dexterity
      --{ index = 60, op = "==", value = 5 }, -- 5% Life stolen per hit
      --{ index = 31, op = "==", value = 20 }, -- +20 Defense
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
      --{ index = 32, op = "==", value = 50 }, -- +50 Defense vs. Missile
      --{ index = 96, op = "==", value = 10 }, -- +10% Faster Run/Walk
      --{ index = 31, op = "==", value = 25 }, -- +25 Defense
      --{ index = 48, op = "==", value = 3 }, -- Adds 3 Fire Damage (min)
      --{ index = 49, op = "==", value = 6 }, -- Adds 6 Fire Damage (max)
      --{ index = 99, op = "==", value = 40 }, -- +40% Faster Hit Recovery
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      --{ index = 31, op = "==", value = 30 }, -- +30 Defense
      --{ index = 19, op = "==", value = 50 }, -- +50 Attack Rating
      --{ index = 34, op = "==", value = 2 }, -- Damage Reduced by 2
      --{ index = 7, op = "==", value = 15*256 }, -- +15 Life
      --{ index = 9, op = "==", value = 15*256 }, -- +15 Mana
      --{ index = 27, op = "==", value = 15 }, -- Regenerate Mana 15%
      --{ index = 74, op = "==", value = 5 }, -- Replenish Life +5
      --{ index = 85, op = "==", value = 5 }, -- +5% to Experience Gained
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
      --{ index = 93, op = "==", value = 20 }, -- +20% Increased Attack Speed
      --{ index = 2, op = "==", value = 10 }, -- +10 Dexterity
      --{ index = 20, op = "==", value = 25 }, -- 25% Increased Chance of Blocking
      --{ index = 31, op = "==", value = 25 }, -- +25 Defense
      --{ index = 0, op = "==", value = 10 }, -- +10 Strength
      --{ index = 99, op = "==", value = 20 }, -- +20% Faster Hit Recovery
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      --{ index = 19, op = "==", value = 20 }, -- +20 Attack Rating
      --{ index = 40, op = "==", value = 5 }, -- +5% to All Maximum Resistances
      --{ index = 89, op = "==", value = 3 }, -- +3 to Light Radius
      --{ index = 33, op = "==", value = 50 }, -- +50 Defense vs. Melee
      --{ index = 39, op = "==", value = 10 }, -- All Resistances +10
      --{ index = 16, op = "==", value = 100 }, -- +70–100% Enhanced Defense
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
      { index = 35, op = "==", value = 5 }, -- Magic Damage Reduced by 3–5
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
      --{ index = 16, op = "==", value = 100 }, -- +80–100% Enhanced Defense
      --{ index = 44, op = "==", value = 15 }, -- +15% to Maximum Cold Resist
      --{ index = 43, op = "==", value = 15 }, -- Cold Resist +15%
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      --{ index = 96, op = "==", value = 10 }, -- +10% Faster Run/Walk
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      --{ index = 16, op = "==", value = 85 }, -- +75–85% Enhanced Defense
      --{ index = 50, op = "==", value = 1 }, -- Adds 1 Lightning Damage (min)
      --{ index = 51, op = "==", value = 20 }, -- Adds 20 Lightning Damage (max)
      { index = 128, op = "==", value = 14 }, -- Attacker Takes Lightning Damage of 10–14
      { index = 41, op = "==", value = 30 }, -- Lightning Resist +30%
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      --{ index = 46, op = "==", value = 15 }, -- +15% to Maximum Poison Resist
      --{ index = 110, op = "==", value = 50 }, -- Poison Length Reduced by 50%
      --{ index = 45, op = "==", value = 90 }, -- Poison Resist +90%
      --{ index = 89, op = "==", value = 2 }, -- +2 to Light Radius
      --{ index = 16, op = "==", value = 100 }, -- +60–100% Enhanced Defense
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
      --{ index = 134, op = "==", value = 1 }, -- Freezes target
      --{ index = 43, op = "==", value = 30 }, -- Cold Resist +30%
      --{ index = 89, op = "==", value = 4 }, -- +4 to Light Radius
      --{ index = 35, op = "==", value = 1 }, -- Magic Damage Reduced by 1
      --{ index = 16, op = "==", value = 80 }, -- +70–80% Enhanced Defense
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
      --{ index = 60, op = "==", value = 5 }, -- 5% Life stolen per hit
      --{ index = 16, op = "==", value = 120 }, -- +100–120% Enhanced Defense
      --{ index = 19, op = "==", value = 35 }, -- +35 Attack Rating
      --{ index = 135, op = "==", value = 10 }, -- 10% Chance of Open Wounds
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
      --{ index = 91, op = "==", value = -10 }, -- Requirements -10%
      --{ index = 16, op = "==", value = 130 }, -- +100–130% Enhanced Defense
      --{ index = 36, op = "==", value = 10 }, -- Damage Reduced by 10%
      --{ index = 34, op = "==", value = 5 }, -- Damage Reduced by 5
      --{ index = 0, op = "==", value = 5 }, -- +5 Strength
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
      --{ index = 112, op = "==", value = 40 }, -- Hit Causes Monster to Flee 40%
      --{ index = 19, op = "==", value = 45 }, -- +45 Attack Rating
      --{ index = 136, op = "==", value = 15 }, -- 15% Chance of Crushing Blow
      --{ index = 31, op = "==", value = 200 }, -- +200 Defense
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      --{ index = 16, op = "==", value = 150 }, -- +120–150% Enhanced Defense
      --{ index = 39, op = "==", value = 35 }, -- All Resistances +35
      --{ index = 78, op = "==", value = 10 }, -- Attacker Takes Damage of 10
      --{ index = 89, op = "==", value = 2 }, -- +2 to Light Radius
      --{ index = 79, op = "==", value = 25 }, -- 25% Extra Gold from Monsters
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
      --{ index = 62, op = "==", value = 5 }, -- 5% Mana stolen per hit
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      --{ index = 89, op = "==", value = 2 }, -- +2 to Light Radius
      --{ index = 16, op = "==", value = 120 }, -- +100–120% Enhanced Defense
      { index = 34, op = "==", value = 7 }, -- Damage Reduced by 5–7
      { index = 35, op = "==", value = 7 }, -- Magic Damage Reduced by 5–7
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
      --{ index = 16, op = "==", value = 100 }, -- +100% Enhanced Defense
      --{ index = 39, op = "==", value = 10 }, -- All Resistances +10
      --{ index = 27, op = "==", value = 25 }, -- Regenerate Mana 25%
      --{ index = 1, op = "==", value = 15 }, -- +15 Energy
      --{ index = 122, op = "==", value = 50 }, -- +50% Damage to Undead
      --{ index = 123, op = "==", value = 100 }, -- +100 Attack Rating vs Undead
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
      --{ index = 31, op = "==", value = 30 }, -- +30 Defense
      --{ index = 3, op = "==", value = 10 }, -- +10 Vitality
      --{ index = 0, op = "==", value = 2 }, -- +2 Strength
      --{ index = 1, op = "==", value = 10 }, -- +10 Energy
      --{ index = 16, op = "==", value = 40 }, -- +30–40% Enhanced Defense
      --{ index = 20, op = "==", value = 20 }, -- 20% Increased Chance of Blocking
      --{ index = 102, op = "==", value = 40 }, -- +40% Faster Block Rate
      { index = 388, op = "==", value = 3 }, -- Smite: 2–3
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
      --{ index = 113, op = "==", value = 1 }, -- Hit Blinds Target +1
      --{ index = 2, op = "==", value = 10 }, -- +10 Dexterity
      --{ index = 31, op = "==", value = 30 }, -- +30 Defense
      --{ index = 7, op = "==", value = 20*256 }, -- +20 Life
      --{ index = 89, op = "==", value = -2 }, -- -2 to Light Radius
      --{ index = 16, op = "==", value = 50 }, -- +40–50% Enhanced Defense
      --{ index = 20, op = "==", value = 30 }, -- 30% Increased Chance of Blocking
      { index = 388, op = "==", value = 4 }, -- Smite: 3–4
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 321, -- Stormguild
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 35, op = "==", value = 1 }, -- Magic Damage Reduced by 1
      --{ index = 41, op = "==", value = 25 }, -- Lightning Resist +25%
      --{ index = 31, op = "==", value = 30 }, -- +30 Defense
      --{ index = 50, op = "==", value = 1 }, -- Adds 1 Lightning Damage (min)
      --{ index = 51, op = "==", value = 6 }, -- Adds 6 Lightning Damage (max)
      --{ index = 16, op = "==", value = 60 }, -- +50–60% Enhanced Defense
      --{ index = 20, op = "==", value = 30 }, -- 30% Increased Chance of Blocking
      --{ index = 128, op = "==", value = 3 }, -- Attacker Takes Lightning Damage of 3
      { index = 388, op = "==", value = 4 }, -- Smite: 3–4
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
      --{ index = 20, op = "==", value = 25 }, -- 25% Increased Chance of Blocking
      --{ index = 83, op = "==", param = 3, value = 1 }, -- +1 to Paladin Skill Levels
      --{ index = 34, op = "==", value = 3 }, -- Damage Reduced by 3
      --{ index = 89, op = "==", value = 3 }, -- +3 to Light Radius
      --{ index = 16, op = "==", value = 100 }, -- +60–100% Enhanced Defense
      --{ index = 102, op = "==", value = 20 }, -- +20% Faster Block Rate
      --{ index = 39, op = "==", value = 15 }, -- All Resistances +15
      --{ index = 31, op = "==", value = 20 }, -- +20 Defense
      { index = 388, op = "==", value = 8 }, -- Smite: 7–8
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
      --{ index = 31, op = "==", value = 30 }, -- +30 Defense
      --{ index = 39, op = "==", value = 75 }, -- Fire Resist +75%
      --{ index = 0, op = "==", value = 5 }, -- +5 Strength
      --{ index = 35, op = "==", value = 5 }, -- Magic Damage Reduced by 5
      --{ index = 16, op = "==", value = 120 }, -- +80–120% Enhanced Defense
      --{ index = 20, op = "==", value = 10 }, -- 10% Increased Chance of Blocking
      { index = 388, op = "==", value = 7 }, -- Smite: 6–7
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
      --{ index = 31, op = "==", value = 40 }, -- +40 Defense
      --{ index = 35, op = "==", value = 2 }, -- Magic Damage Reduced by 2
      --{ index = 0, op = "==", value = 10 }, -- +10 Strength
      --{ index = 20, op = "==", value = 10 }, -- 10% Increased Chance of Blocking
      --{ index = 16, op = "==", value = 100 }, -- +100% Enhanced Defense
      { index = 39, op = "==", value = 50 }, -- All Resistances +30–50
      { index = 388, op = "==", value = 6 }, -- Smite: 5–6
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
      --{ index = 60, op = "==", value = 3 }, -- 3% Life stolen per hit
      --{ index = 62, op = "==", value = 3 }, -- 3% Mana stolen per hit
      --{ index = 45, op = "==", value = 10 }, -- Poison Resist +10%
      --{ index = 9, op = "==", value = 20*256 }, -- +20 Mana
      --{ index = 31, op = "==", value = 10 }, -- +10 Defense
      --{ index = 16, op = "==", value = 20 }, -- +10–20% Enhanced Defense
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      --{ index = 22, op = "==", value = 5 }, -- +5 to Minimum Damage
      --{ index = 7, op = "==", value = 40*256 }, -- +40 Life
      --{ index = 99, op = "==", value = 30 }, -- +30% Faster Hit Recovery
      --{ index = 31, op = "==", value = 10 }, -- +10 Defense
      --{ index = 16, op = "==", value = 20 }, -- +10–20% Enhanced Defense
      --{ index = 93, op = "==", value = 10 }, -- +10% Increased Attack Speed
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
      { index = 34, op = "==", value = 3 }, -- Damage Reduced by 1–3
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
      --{ index = 79, op = "==", value = 50 }, -- 50% Extra Gold from Monsters
      { index = 80, op = "==", value = 40 }, -- 25–40% Better Chance of Getting Magic Items
      --{ index = 19, op = "==", value = 25 }, -- +25 Attack Rating
      --{ index = 31, op = "==", value = 15 }, -- +15 Defense
      --{ index = 89, op = "==", value = 2 }, -- +2 to Light Radius
      --{ index = 16, op = "==", value = 30 }, -- +20–30% Enhanced Defense
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
      --{ index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      --{ index = 27, op = "==", value = 25 }, -- Regenerate Mana 25%
      --{ index = 407, op = "==", value = 1 }, -- +1 to Fire Skills
      --{ index = 48, op = "==", value = 1 }, -- Adds 1 Fire Damage (min)
      --{ index = 49, op = "==", value = 6 }, -- Adds 6 Fire Damage (max)
      --{ index = 31, op = "==", value = 10 }, -- +10 Defense
      --{ index = 16, op = "==", value = 30 }, -- +20–30% Enhanced Defense
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
      --{ index = 31, op = "==", value = 30 }, -- +30 Defense
      --{ index = 25, op = "==", value = 5 }, -- +5% Enhanced Damage
      --{ index = 77, op = "==", value = 40 }, -- Increase Maximum Mana by 40%
      --{ index = 54, op = "==", value = 1 }, -- Adds 1 Cold Damage (min)
      --{ index = 55, op = "==", value = 6 }, -- Adds 6 Cold Damage (max)
      --{ index = 16, op = "==", value = 20 }, -- +10–20% Enhanced Defense
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
      --{ index = 40, op = "==", value = 15 }, -- +15% to Maximum Fire Resist
      --{ index = 7, op = "==", value = 15*256 }, -- +15 Life
      --{ index = 48, op = "==", value = 3 }, -- Adds 3 Fire Damage (min)
      --{ index = 49, op = "==", value = 6 }, -- Adds 6 Fire Damage (max)
      --{ index = 31, op = "==", value = 6 }, -- +6 Defense
      --{ index = 39, op = "==", value = 45 }, -- Fire Resist +45%
      --{ index = 16, op = "==", value = 20 }, -- +10–20% Enhanced Defense
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      { index = 140, op = "==", value = 5 }, -- Open Wounds Blood Visual +3–5
      --{ index = 96, op = "==", value = 20 }, -- +20% Faster Run/Walk
      --{ index = 62, op = "==", value = 2 }, -- 2% Mana stolen per hit
      --{ index = 78, op = "==", value = 2 }, -- Attacker Takes Damage of 2
      --{ index = 31, op = "==", value = 12 }, -- +12 Defense
      --{ index = 16, op = "==", value = 30 }, -- +20–30% Enhanced Defense
      --{ index = 107, op = "==", param = 224, value = 2 }, -- +2 to Heroic Leap (Barbarian only)
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      --{ index = 96, op = "==", value = 30 }, -- +30% Faster Run/Walk
      --{ index = 32, op = "==", value = 50 }, -- +50 Defense vs. Missile
      { index = 357, op = "==", value = 10 }, -- +5–10% to Magic Skill Damage
      --{ index = 7, op = "==", value = 10*256 }, -- +10 Life
      --{ index = 31, op = "==", value = 12 }, -- +12 Defense
      --{ index = 16, op = "==", value = 40 }, -- +30–40% Enhanced Defense
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      --{ index = 136, op = "==", value = 10 }, -- 10% Chance of Crushing Blow
      --{ index = 34, op = "==", value = 1 }, -- Damage Reduced by 1
      --{ index = 35, op = "==", value = 1 }, -- Magic Damage Reduced by 1
      --{ index = 31, op = "==", value = 15 }, -- +15 Defense
      --{ index = 89, op = "==", value = -1 }, -- -1 to Light Radius
      --{ index = 16, op = "==", value = 60 }, -- +50–60% Enhanced Defense
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
      --{ index = 31, op = "==", value = 35 }, -- +35 Defense
      --{ index = 0, op = "==", value = 5 }, -- +5 Strength
      --{ index = 2, op = "==", value = 5 }, -- +5 Dexterity
      --{ index = 96, op = "==", value = 20 }, -- +20% Faster Run/Walk
      --{ index = 39, op = "==", value = 10 }, -- All Resistances +10
      --{ index = 16, op = "==", value = 80 }, -- +60–80% Enhanced Defense
      --{ index = 107, op = "==", param = 119, value = 1 }, -- Level 1 Vigor Aura When Equipped
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
      --{ index = 9, op = "==", value = 15*256 }, -- +15 Mana
      --{ index = 27, op = "==", value = 30 }, -- Regenerate Mana 30%
      --{ index = 39, op = "==", value = 5 }, -- All Resistances +5
      --{ index = 89, op = "==", value = 1 }, -- +1 to Light Radius
      { index = 85, op = "==", value = 10 }, -- +8–10% to Experience Gained
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
      --{ index = 58, op = "==", value = 12 }, -- +12 Poison Damage over 3 seconds
      --{ index = 45, op = "==", value = 25 }, -- Poison Resist +25%
      --{ index = 31, op = "==", value = 10 }, -- +10 Defense
      --{ index = 16, op = "==", value = 30 }, -- +20–30% Enhanced Defense
      --{ index = 74, op = "==", value = 5 }, -- Replenish Life +5
      --{ index = 110, op = "==", value = 50 }, -- Poison Length Reduced by 50%
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      --{ index = 39, op = "==", value = 10 }, -- All Resistances +10
      --{ index = 114, op = "==", value = 50 }, -- 50% Damage Taken Goes To Mana
      --{ index = 9, op = "==", value = 20*256 }, -- +20 Mana
      --{ index = 34, op = "==", value = 2 }, -- Damage Reduced by 2
      --{ index = 35, op = "==", value = 2 }, -- Magic Damage Reduced by 2
      --{ index = 31, op = "==", value = 15 }, -- +15 Defense
      --{ index = 16, op = "==", value = 50 }, -- +30–50% Enhanced Defense
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      --{ index = 80, op = "==", value = 30 }, -- 30% Better Chance of Getting Magic Items
      --{ index = 89, op = "==", value = 2 }, -- +2 to Light Radius
      --{ index = 31, op = "==", value = 25 }, -- +25 Defense
      --{ index = 93, op = "==", value = 10 }, -- +10% Increased Attack Speed
      --{ index = 16, op = "==", value = 60 }, -- +40–60% Enhanced Defense
      { index = 79, op = "==", value = 20 }, -- 12–20% Extra Gold from Monsters
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
      --{ index = 78, op = "==", value = 8 }, -- Attacker Takes Damage of 8
      --{ index = 31, op = "==", value = 30 }, -- +30 Defense
      --{ index = 34, op = "==", value = 3 }, -- Damage Reduced by 3
      --{ index = 0, op = "==", value = 5 }, -- +5 Strength
      --{ index = 2, op = "==", value = 10 }, -- +10 Dexterity
      --{ index = 16, op = "==", value = 100 }, -- +80–100% Enhanced Defense
      --{ index = 99, op = "==", value = 30 }, -- +30% Faster Hit Recovery
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
      --{ index = 83, op = "==", param = 4, value = 1 }, -- +1 to Necromancer Skill Levels
      --{ index = 60, op = "==", value = 5 }, -- 5% Life stolen per hit
      --{ index = 31, op = "==", value = 40 }, -- +40 Defense
      --{ index = 45, op = "==", value = 50 }, -- Poison Resist +50%
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      --{ index = 16, op = "==", value = 60 }, -- +30–60% Enhanced Defense
      --{ index = 122, op = "==", value = 50 }, -- +50% Damage to Undead
      { index = 124, op = "==", value = 100 }, -- +50–100 Attack Rating vs Undead
      --{ index = 107, op = "==", param = 74, value = 3 }, -- +3 to Summon Mastery (Necromancer only)
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 341, -- Wall of the Eyeless
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 138, op = "==", value = 5 }, -- +5 Mana after each Kill
      --{ index = 62, op = "==", value = 3 }, -- 3% Mana stolen per hit
      --{ index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      --{ index = 45, op = "==", value = 20 }, -- Poison Resist +20%
      --{ index = 16, op = "==", value = 40 }, -- +30–40% Enhanced Defense
      --{ index = 31, op = "==", value = 10 }, -- +10 Defense
      { index = 85, op = "==", value = 5 }, -- +2–5% to Experience Gained
      { index = 388, op = "==", value = 6 }, -- Smite: 3–6
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
      --{ index = 78, op = "==", value = 10 }, -- Attacker Takes Damage of 10
      --{ index = 20, op = "==", value = 20 }, -- 20% Increased Chance of Blocking
      { index = 135, op = "==", value = 25 }, -- 15–25% Chance of Open Wounds
      { index = 140, op = "==", value = 5 }, -- Open Wounds Blood Visual +3–5
      --{ index = 16, op = "==", value = 60 }, -- +30–60% Enhanced Defense
      --{ index = 31, op = "==", value = 10 }, -- +10 Defense
      { index = 388, op = "==", value = 12 }, -- Smite: 11–12
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
      --{ index = 1, op = "==", value = 20 }, -- +20 Energy
      --{ index = 3, op = "==", value = 20 }, -- +20 Vitality
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      --{ index = 96, op = "==", value = 15 }, -- +15% Faster Run/Walk
      { index = 74, op = "==", value = 12 }, -- Replenish Life +6–12
      --{ index = 16, op = "==", value = 100 }, -- +100% Enhanced Defense
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
      { index = 41, op = "==", value = 40 }, -- Lightning Resist +20–40%
      --{ index = 36, op = "==", value = 10 }, -- Damage Reduced by 10%
      --{ index = 99, op = "==", value = 30 }, -- +30% Faster Hit Recovery
      --{ index = 16, op = "==", value = 220 }, -- +160–220% Enhanced Defense
      { index = 39, op = "==", value = 50 }, -- Fire Resist +20–50%
      { index = 43, op = "==", value = 40 }, -- Cold Resist +20–40%
      --{ index = 3, op = "==", value = 15 }, -- +15 Vitality
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
      --{ index = 60, op = "==", value = 5 }, -- 5% Life stolen per hit
      --{ index = 62, op = "==", value = 5 }, -- 5% Mana stolen per hit
      --{ index = 99, op = "==", value = 10 }, -- +10% Faster Hit Recovery
      --{ index = 93, op = "==", value = 10 }, -- +10% Increased Attack Speed
      --{ index = 16, op = "==", value = 240 }, -- +200–240% Enhanced Defense
      { index = 80, op = "==", value = 50 }, -- 30–50% Better Chance of Getting Magic Items
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
      --{ index = 89, op = "==", value = -2 }, -- -2 to Light Radius
      --{ index = 221, op = "==", value = 2 }, -- +2 Defense (per level)
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      --{ index = 62, op = "==", value = 5 }, -- 5% Mana stolen per hit
      --{ index = ?, op = "==", value = 3 }, -- 10% Chance to cast lvl 3 Dim Vision when struck
      --{ index = ?, op = "==", value = 2 }, -- 10% Chance to cast lvl 2 Cloak of Shadows when struck
      { index = 39, op = "==", value = 40 }, -- Fire Resist +20–40%
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
      --{ index = 16, op = "==", value = 200 }, -- +150–200% Enhanced Defense
      --{ index = 96, op = "==", value = 20 }, -- +20% Faster Run/Walk
      --{ index = 99, op = "==", value = 20 }, -- +20% Faster Hit Recovery
      { index = 83, op = "==", param = 0, value = 2 }, -- +1–2 to Amazon Skill Levels
      { index = 138, op = "==", value = 4 }, -- +2–4 Mana after each Kill
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
      --{ index = 2, op = "==", value = 25 }, -- +25 Dexterity
      { index = 60, op = "==", value = 12 }, -- 9–12% Life stolen per hit
      --{ index = 7, op = "==", value = 50*256 }, -- +50 Life
      --{ index = 9, op = "==", value = 35*256 }, -- +35 Mana
      --{ index = 39, op = "==", value = 33 }, -- Fire Resist +33%
      --{ index = 16, op = "==", value = 200 }, -- +160–200% Enhanced Defense
      { index = 79, op = "==", value = 25 }, -- 20–25% Extra Gold from Monsters
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
      --{ index = 128, op = "==", value = 25 }, -- Attacker Takes Lightning Damage of 25
      --{ index = 150, op = "==", value = 20 }, -- Slows Target by 20%
      --{ index = 152, op = "==", value = 1 }, -- Prevent Monster Heal
      --{ index = 145, op = "==", value = 20 }, -- +20 Lightning Absorb
      --{ index = 41, op = "==", value = 15 }, -- Lightning Resist +15%
      --{ index = 16, op = "==", value = 220 }, -- +180–220% Enhanced Defense
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
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      { index = 35, op = "==", value = 11 }, -- Magic Damage Reduced by 7–11
      --{ index = 74, op = "==", value = 10 }, -- Replenish Life +10
      --{ index = 16, op = "==", value = 150 }, -- +150% Enhanced Defense
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 351-400
    {
      codes = "allitems",
      quality = "7",
      index = 351, -- Skin of the Vipermagi
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 16, op = "==", value = 120 }, -- +120% Enhanced Defense
      { index = 39, op = "==", value = 35 }, -- All Resistances +20–35
      --{ index = 105, op = "==", value = 30 }, -- +30% Faster Cast Rate
      { index = 35, op = "==", value = 13 }, -- Magic Damage Reduced by 9–13
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
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
      { index = 74, op = "==", value = 25 }, -- Replenish Life +15–25
      { index = 60, op = "==", value = 7 }, -- 5–7% Life stolen per hit
      --{ index = 16, op = "==", value = 190 }, -- +150–190% Enhanced Defense
      --{ index = 78, op = "==", value = 15 }, -- Attacker Takes Damage of 15
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
      --{ index = 7, op = "==", value = 25*256 }, -- +25 Life
      { index = 35, op = "==", value = 16 }, -- Magic Damage Reduced by 10–16
      { index = 34, op = "==", value = 20 }, -- Damage Reduced by 15–20
      --{ index = 221, op = "==", value = 3 }, -- +3 Defense (per level)
      --{ index = 16, op = "==", value = 100 }, -- +50–100% Enhanced Defense
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
      --{ index = 89, op = "==", value = 4 }, -- +4 to Light Radius
      --{ index = 221, op = "==", value = 1 }, -- +1.25 Life per level
      --{ index = 48, op = "==", value = 20 }, -- Adds 20 Fire Damage (min)
      --{ index = 49, op = "==", value = 65 }, -- Adds 65 Fire Damage (max)
      --{ index = 39, op = "==", value = 5 }, -- Fire Resist +5%
      --{ index = 16, op = "==", value = 160 }, -- +120–160% Enhanced Defense
      --{ index = 0, op = "==", value = 15 }, -- +15 Strength
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
      --{ index = 135, op = "==", value = 15 }, -- 15% Chance of Open Wounds
      --{ index = 16, op = "==", value = 180 }, -- +150–180% Enhanced Defense
      --{ index = 2, op = "==", value = 15 }, -- +15 Dexterity
      --{ index = 99, op = "==", value = 15 }, -- +15% Faster Hit Recovery
      --{ index = 93, op = "==", value = 15 }, -- +15% Increased Attack Speed
      --{ index = ?, op = "==", param = 221, value = 10 }, -- Level 10 Murder Calling (30 charges)
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
      --{ index = 32, op = "==", value = 250 }, -- +250 Defense vs. Missile
      --{ index = 36, op = "==", value = 30 }, -- Damage Reduced by 30%
      --{ index = 7, op = "==", value = 60*256 }, -- +60 Life
      --{ index = 16, op = "==", value = 220 }, -- +180–220% Enhanced Defense
      { index = 34, op = "==", value = 13 }, -- Damage Reduced by 9–13
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
      --{ index = 0, op = "==", value = 15 }, -- +15 Strength
      --{ index = 214, op = "==", value = 8*1.25 }, -- +1.25 Defense per level
      --{ index = 221, op = "==", value = 1 }, -- +1 Life per level
      --{ index = 16, op = "==", value = 200 }, -- +160–200% Enhanced Defense
      --{ index = 39, op = "==", value = 20 }, -- Fire Resist +20%
      --{ index = 41, op = "==", value = 20 }, -- Lightning Resist +20%
      --{ index = 45, op = "==", value = 20 }, -- Poison Resist +20%
      --{ index = 43, op = "==", value = 50 }, -- Cold Resist +50%
      --{ index = 153, op = "==", value = 1 }, -- Cannot Be Frozen
      { index = 34, op = "==", value = 12 }, -- Damage Reduced by 8–12
      { index = 35, op = "==", value = 12 }, -- Magic Damage Reduced by 8–12
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
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      --{ index = 79, op = "==", value = 1 }, -- 1.25% MF per level
      --{ index = 16, op = "==", value = 200 }, -- +160–200% Enhanced Defense
      --{ index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 10
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
      --{ index = 89, op = "==", value = 4 }, -- +4 to Light Radius
      --{ index = 83, op = "==", param = 3, value = 1 }, -- +1 to Paladin Skill Levels
      --{ index = 16, op = "==", value = 200 }, -- +180–200% Enhanced Defense
      --{ index = 102, op = "==", value = 30 }, -- +30% Faster Block Rate
      --{ index = 40, op = "==", value = 15 }, -- +15% to All Maximum Resistances
      --{ index = 245, op = "==", value = 2*2.5 }, -- +2.5 AR vs Demons per level
      --{ index = 20, op = "==", value = 20 }, -- 20% Increased Chance of Blocking
      { index = 34, op = "==", value = 15 }, -- Damage Reduced by 7–15
      { index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 7–15
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
      { index = 78, op = "==", value = 40 }, -- Attacker Takes Damage of 20–40
      --{ index = 31, op = "==", value = 60 }, -- +40–60 Defense
      --{ index = 0, op = "==", value = 10 }, -- +10 Strength
      { index = 135, op = "==", value = 15 }, -- 10–15% Chance of Open Wounds
      --{ index = 39, op = "==", value = 15 }, -- Fire Resist +15%
      --{ index = 16, op = "==", value = 220 }, -- +160–220% Enhanced Defense
      { index = 34, op = "==", value = 12 }, -- Damage Reduced by 8–12
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 361, -- Atma's Wail
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 2, op = "==", value = 15 }, -- +15 Dexterity
      --{ index = 74, op = "==", value = 10 }, -- Replenish Life +10
      --{ index = 77, op = "==", value = 15 }, -- Increase Maximum Mana by 15%
      --{ index = 99, op = "==", value = 30 }, -- +30% Faster Hit Recovery
      --{ index = 221, op = "==", value = 2 }, -- +2 Defense (per level)
      --{ index = 16, op = "==", value = 160 }, -- +120–160% Enhanced Defense
      --{ index = 80, op = "==", value = 20 }, -- 20% Better Chance of Getting Magic Items
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
      --{ index = 89, op = "==", value = -2 }, -- -2 to Light Radius
      { index = 123, op = "==", value = 250 }, -- +200–250 AR vs Demons
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      --{ index = 16, op = "==", value = 200 }, -- +140–200% Enhanced Defense
      { index = 121, op = "==", value = 60 }, -- +30–60% Damage to Demons
      { index = 34, op = "==", value = 15 }, -- Damage Reduced by 10–15
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
      --{ index = 0, op = "==", value = 8 }, -- +8 Strength
      --{ index = 3, op = "==", value = 10 }, -- +10 Vitality
      --{ index = 43, op = "==", value = 35 }, -- Cold Resist +35%
      --{ index = ?, op = "==", value = 2 }, -- 6% Chance to cast lvl 2 Iron Maiden when struck
      --{ index = 16, op = "==", value = 180 }, -- +150–180% Enhanced Defense
      --{ index = 48, op = "==", value = 12 }, -- Adds 12 Fire Damage (min)
      --{ index = 49, op = "==", value = 36 }, -- Adds 36 Fire Damage (max)
      --{ index = ?, op = "==", param = 74, value = 10 }, -- Level 10 Corpse Explosion (20 charges)
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
      --{ index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      --{ index = 138, op = "==", value = 3 }, -- +3 Mana after each Kill
      { index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 6–10
      --{ index = 1, op = "==", value = 15 }, -- +15 Energy
      --{ index = 99, op = "==", value = 20 }, -- +20% Faster Hit Recovery
      --{ index = 16, op = "==", value = 160 }, -- +140–160% Enhanced Defense
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
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
      --{ index = 83, op = "==", param = 1, value = 1 }, -- +1 to Sorceress Skill Levels
      --{ index = 20, op = "==", value = 30 }, -- 30% Increased Chance of Blocking
      --{ index = 102, op = "==", value = 30 }, -- +30% Faster Block Rate
      --{ index = 16, op = "==", value = 150 }, -- +100–150% Enhanced Defense
      --{ index = 128, op = "==", value = 10 }, -- Attacker Takes Lightning Damage of 10
      { index = 388, op = "==", value = 13 }, -- Smite: 12–13
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
      --{ index = 39, op = "==", value = 25 }, -- All Resistances +25
      --{ index = 20, op = "==", value = 25 }, -- 25% Increased Chance of Blocking
      --{ index = 16, op = "==", value = 220 }, -- +180–220% Enhanced Defense
      --{ index = 102, op = "==", value = 30 }, -- +30% Faster Block Rate
      { index = 388, op = "==", value = 15 }, -- Smite: 14–15
      { index = 34, op = "==", value = 10 }, -- Damage Reduced by 5–10
      { index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 5–10
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
      --{ index = 50, op = "==", value = 1 }, -- Adds 1 Lightning Damage (min)
      --{ index = 51, op = "==", value = 60 }, -- Adds 60 Lightning Damage (max)
      --{ index = 20, op = "==", value = 20 }, -- 20% Increased Chance of Blocking
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      --{ index = 41, op = "==", value = 50 }, -- Lightning Resist +50%
      --{ index = 19, op = "==", value = 150 }, -- +150 Attack Rating
      --{ index = 16, op = "==", value = 220 }, -- +160–220% Enhanced Defense
      --{ index = 102, op = "==", value = 10 }, -- +10% Faster Block Rate
      --{ index = ?, op = "==", value = 6 }, -- 4% Chance to cast lvl 6 Blizzard when struck
      --{ index = ?, op = "==", value = 5 }, -- 4% Chance to cast lvl 5 Tornado when struck
      { index = 388, op = "==", value = 15 }, -- Smite: 11–15
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
      --{ index = 54, op = "==", value = 27 }, -- Adds 27 Cold Damage (min)
      --{ index = 55, op = "==", value = 53 }, -- Adds 53 Cold Damage (max)
      --{ index = 48, op = "==", value = 35 }, -- Adds 35 Fire Damage (min)
      --{ index = 49, op = "==", value = 95 }, -- Adds 95 Fire Damage (max)
      --{ index = 50, op = "==", value = 1 }, -- Adds 1 Lightning Damage (min)
      --{ index = 51, op = "==", value = 120 }, -- Adds 120 Lightning Damage (max)
      { index = 39, op = "==", value = 35 }, -- All Resistances +25–35
      --{ index = 16, op = "==", value = 200 }, -- +140–200% Enhanced Defense
      --{ index = ?, op = "==", value = 9 }, -- 5% Chance to cast lvl 9 Static Field when struck
      --{ index = ?, op = "==", value = 7 }, -- 5% Chance to cast lvl 7 Nova when struck
      --{ index = ?, op = "==", value = 6 }, -- 3% Chance to cast lvl 6 Meteor when struck
      { index = 388, op = "==", value = 27 }, -- Smite: 26–27
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
      { index = 34, op = "==", value = 20 }, -- Damage Reduced by 15–20
      { index = 35, op = "==", value = 23 }, -- Magic Damage Reduced by 18–23
      --{ index = 74, op = "==", value = 15 }, -- Replenish Life +15
      --{ index = 16, op = "==", value = 240 }, -- +180–240% Enhanced Defense
      --{ index = 20, op = "==", value = 30 }, -- 30% Increased Chance of Blocking
      { index = 39, op = "==", value = 35 }, -- All Resistances +25–35
      { index = 388, op = "==", value = 20 }, -- Smite: 19–20
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
      --{ index = 58, op = "==", value = 80 }, -- +80 Poison Damage over 4 seconds
      --{ index = ?, op = "==", value = 5 }, -- 5% Chance to cast lvl 5 Poison Nova when struck
      --{ index = 45, op = "==", value = 75 }, -- Poison Resist +75%
      --{ index = 16, op = "==", value = 200 }, -- +160–200% Enhanced Defense
      --{ index = 20, op = "==", value = 20 }, -- 20% Increased Chance of Blocking
      --{ index = 102, op = "==", value = 20 }, -- +20% Faster Block Rate
      --{ index = ?, op = "==", param = 75, value = 6 }, -- Level 6 Poison Explosion (40 charges)
      { index = 388, op = "==", value = 17 }, -- Smite: 16–17
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
      --{ index = 45, op = "==", value = 30 }, -- Poison Resist +30%
      --{ index = 46, op = "==", value = 5 }, -- +5% to Maximum Poison Resist
      --{ index = 58, op = "==", value = 60 }, -- +60 Poison Damage over 4 seconds
      --{ index = 136, op = "==", value = 5 }, -- 5% Chance of Crushing Blow
      --{ index = 60, op = "==", value = 5 }, -- 5% Life stolen per hit
      --{ index = 31, op = "==", value = 25 }, -- +15–25 Defense
      --{ index = 16, op = "==", value = 160 }, -- +130–160% Enhanced Defense
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
      --{ index = 1, op = "==", value = 10 }, -- +10 Energy
      --{ index = 0, op = "==", value = 10 }, -- +10 Strength
      { index = 122, op = "==", value = 200 }, -- +100–200% Damage to Undead
      { index = 124, op = "==", value = 200 }, -- +100–200 AR vs Undead
      --{ index = 16, op = "==", value = 180 }, -- +140–180% Enhanced Defense
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
      --{ index = 246, op = "==", value = 2*8 }, -- +8 AR vs Undead (per level)
      --{ index = 221, op = "==", value = 2 }, -- +2% Damage to Undead (per level)
      { index = 62, op = "==", value = 5 }, -- 4–5% Mana stolen per hit
      --{ index = 7, op = "==", value = 20*256 }, -- +20 Life
      --{ index = 16, op = "==", value = 190 }, -- +150–190% Enhanced Defense
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
      --{ index = 39, op = "==", value = 24 }, -- Fire Resist +24%
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      --{ index = ?, op = "==", value = 10 }, -- 2% Chance to cast lvl 10 Enchant on striking
      --{ index = 93, op = "==", value = 20 }, -- +20% Increased Attack Speed
      --{ index = 16, op = "==", value = 200 }, -- +150–200% Enhanced Defense
      --{ index = 48, op = "==", value = 13 }, -- Adds 13 Fire Damage (min)
      --{ index = 49, op = "==", value = 46 }, -- Adds 46 Fire Damage (max)
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
      --{ index = 48, op = "==", value = 15 }, -- Adds 15 Fire Damage (min)
      --{ index = 49, op = "==", value = 72 }, -- Adds 72 Fire Damage (max)
      --{ index = 143, op = "==", value = 15 }, -- +15 Fire Absorb
      --{ index = 16, op = "==", value = 200 }, -- +150–200% Enhanced Defense
      --{ index = ?, op = "==", value = 4 }, -- 2% Chance to cast lvl 4 Meteor on striking
      --{ index = ?, op = "==", value = 12 }, -- 4% Chance to cast lvl 12 Firestorm on striking
      { index = 35, op = "==", value = 6 }, -- Magic Damage Reduced by 4–6
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
      --{ index = 48, op = "==", value = 12 }, -- Adds 12 Fire Damage (min)
      --{ index = 49, op = "==", value = 33 }, -- Adds 33 Fire Damage (max)
      --{ index = 96, op = "==", value = 20 }, -- +20% Faster Run/Walk
      --{ index = 40, op = "==", value = 10 }, -- +10% to Maximum Fire Resist
      --{ index = 39, op = "==", value = 30 }, -- Fire Resist +30%
      --{ index = 89, op = "==", value = 2 }, -- +2 to Light Radius
      --{ index = 16, op = "==", value = 150 }, -- +120–150% Enhanced Defense
      { index = 79, op = "==", value = 20 }, -- 10–20% Extra Gold from Monsters
      --{ index = 31, op = "==", value = 15 }, -- +15 Defense
      --{ index = ?, op = "==", value = 8 }, -- 5% Chance to cast lvl 8 Blaze when struck
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
      --{ index = 32, op = "==", value = 100 }, -- +100 Defense vs. Missile
      --{ index = 96, op = "==", value = 20 }, -- +20% Faster Run/Walk
      --{ index = 2, op = "==", value = 15 }, -- +15 Dexterity
      --{ index = 16, op = "==", value = 210 }, -- +180–210% Enhanced Defense
      { index = 7, op = "==", value = 65*256 }, -- +45–65 Life
      --{ index = 39, op = "==", value = 15 }, -- Fire Resist +15%
      --{ index = 40, op = "==", value = 5 }, -- +5% to Maximum Fire Resist
      { index = 74, op = "==", value = 10 }, -- Replenish Life +5–10
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
      --{ index = 16, op = "==", value = 190 }, -- +150–190% Enhanced Defense
      --{ index = 138, op = "==", value = 5 }, -- +5 Mana after each Kill
      --{ index = 32, op = "==", value = 200 }, -- +200 Defense vs. Missile
      --{ index = 77, op = "==", value = 10 }, -- Increase Maximum Mana by 10%
      --{ index = 96, op = "==", value = 30 }, -- +30% Faster Run/Walk
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
      --{ index = 3, op = "==", value = 10 }, -- +10 Vitality
      --{ index = 0, op = "==", value = 10 }, -- +10 Strength
      { index = 80, op = "==", value = 50 }, -- 30–50% Better Chance of Getting Magic Items
      --{ index = 96, op = "==", value = 25 }, -- +25% Faster Run/Walk
      --{ index = 16, op = "==", value = 190 }, -- +150–190% Enhanced Defense
      --{ index = 22, op = "==", value = 25 }, -- Adds 15–25 Damage
      { index = 78, op = "==", value = 10 }, -- Attacker Takes Damage of 5–10
      --{ index = 79, op = "==", value = 10 }, -- 10% Extra Gold from Monsters
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
      --{ index = 91, op = "==", value = -25 }, -- Requirements -25%
      --{ index = 141, op = "==", value = 10 }, -- 10% Deadly Strike
      --{ index = 96, op = "==", value = 30 }, -- +30% Faster Run/Walk
      --{ index = 136, op = "==", value = 15 }, -- 15% Chance of Crushing Blow
      { index = 135, op = "==", value = 10 }, -- 5–10% Chance of Open Wounds
      --{ index = 16, op = "==", value = 200 }, -- +160–200% Enhanced Defense
      --{ index = 140, op = "==", value = 1 }, -- Open Wounds Blood Visual +1
      { index = 34, op = "==", value = 5 }, -- Damage Reduced by -5-5
      { index = 35, op = "==", value = 5 }, -- Magic Damage Reduced by -5-5
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 381, -- String of Ears
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 10–15
      { index = 36, op = "==", value = 15 }, -- Damage Reduced by 10–15%
      { index = 60, op = "==", value = 8 }, -- 6–8% Life stolen per hit
      --{ index = 16, op = "==", value = 180 }, -- +150–180% Enhanced Defense
      --{ index = 31, op = "==", value = 15 }, -- +15 Defense
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
      --{ index = 78, op = "==", value = 1 }, -- Attacker Takes Damage (per level)
      --{ index = 2, op = "==", value = 15 }, -- +15 Dexterity
      --{ index = 156, op = "==", value = 33 }, -- +33% Piercing Attack
      --{ index = 31, op = "==", value = 15 }, -- +15 Defense
      --{ index = 16, op = "==", value = 150 }, -- +120–150% Enhanced Defense
      --{ index = 22, op = "==", value = 10 }, -- +10 Maximum Damage
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
      --{ index = 89, op = "==", value = -2 }, -- -2 to Light Radius
      { index = 77, op = "==", value = 20 }, -- Increase Maximum Mana by 15–20%
      { index = 62, op = "==", value = 8 }, -- 5–8% Mana stolen per hit
      --{ index = 16, op = "==", value = 150 }, -- +120–150% Enhanced Defense
      { index = 3, op = "==", value = 20 }, -- +15–20 Vitality
      --{ index = 27, op = "==", value = 15 }, -- Regenerate Mana 15%
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
      --{ index = ?, op = "==", value = 20 }, -- 5% Chance to cast lvl 13–20 Blizzard when struck
      --{ index = 149, op = "==", value = 15 }, -- +15 Cold Absorb
      --{ index = 44, op = "==", value = 15 }, -- +15% to Maximum Cold Resist
      --{ index = 54, op = "==", value = 13 }, -- Adds 13 Cold Damage (min)
      --{ index = 55, op = "==", value = 21 }, -- Adds 21 Cold Damage (max)
      --{ index = 16, op = "==", value = 170 }, -- +130–170% Enhanced Defense
      --{ index = 107, op = "==", param = 39, value = 2 }, -- +2 to Blizzard
      --{ index = 107, op = "==", param = 233, value = 3 }, -- +3 to Cold Crippler
      --{ index = 107, op = "==", param = 50, value = 2 }, -- +2 to Shiver Armor
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
      --{ index = ?, op = "==", value = 7 }, -- 5% Chance to cast lvl 7 Fist of the Heavens when struck
      --{ index = 50, op = "==", value = 1 }, -- Adds 1 Lightning Damage (min)
      --{ index = 51, op = "==", value = 50 }, -- Adds 50 Lightning Damage (max)
      --{ index = 44, op = "==", value = 10 }, -- +10% to Maximum Lightning Resist
      --{ index = 145, op = "==", value = 20 }, -- +20 Lightning Absorb
      --{ index = 16, op = "==", value = 200 }, -- +160–200% Enhanced Defense
      --{ index = 3, op = "==", value = 20 }, -- +20 Vitality
      --{ index = 0, op = "==", value = 20 }, -- +20 Strength
      --{ index = 107, op = "==", param = 20, value = 3 }, -- +3 to Lightning Strike (Amazon only)
      --{ index = 107, op = "==", param = 35, value = 3 }, -- +3 to Lightning Fury (Amazon only)
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
      { index = 60, op = "==", value = 8 }, -- 6–8% Life stolen per hit
      { index = 62, op = "==", value = 8 }, -- 6–8% Mana stolen per hit
      --{ index = 83, op = "==", param = 4, value = 1 }, -- +1 to Necromancer Skill Levels
      { index = 36, op = "==", value = 20 }, -- Damage Reduced by 15–20%
      { index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 10–15
      --{ index = 16, op = "==", value = 100 }, -- +100% Enhanced Defense
      --{ index = 54, op = "==", value = 6 }, -- Adds 6 Cold Damage (min)
      --{ index = 55, op = "==", value = 22 }, -- Adds 22 Cold Damage (max)
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
      --{ index = 89, op = "==", value = 1 }, -- +1 to Light Radius
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      --{ index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      { index = 138, op = "==", value = 5 }, -- +3–5 Mana after each Kill
      --{ index = 16, op = "==", value = 130 }, -- +80–130% Enhanced Defense
      --{ index = 1, op = "==", value = 10 }, -- +10 Energy
      --{ index = 77, op = "==", value = 10 }, -- Increase Maximum Mana by 10%
      { index = 388, op = "==", value = 20 }, -- Smite: 14–20
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
      --{ index = 7, op = "==", value = 50*256 }, -- +50 Life
      --{ index = 99, op = "==", value = 30 }, -- +30% Faster Hit Recovery
      --{ index = 114, op = "==", value = 15 }, -- 15% Damage Taken Goes To Mana
      --{ index = 78, op = "==", value = 47 }, -- Attacker Takes Damage of 47
      --{ index = 16, op = "==", value = 120 }, -- +70–120% Enhanced Defense
      --{ index = 141, op = "==", value = 15 }, -- 15% Deadly Strike
      { index = 388, op = "==", value = 36 }, -- Smite: 35–36
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
      --{ index = 0, op = "==", value = 10 }, -- +10 Strength
      --{ index = 286, op = "==", value = 10 }, -- Reduce Cooldowns by 10%
      { index = 3, op = "==", value = 15 }, -- +5–15 Vitality
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
      { index = 283, op = "==", value = 2 }, -- +1–2 Summoning Power
      { index = 403, op = "==", value = 55 }, -- Increase Raven Damage by 45–55%
      --{ index = 27, op = "==", value = 15 }, -- Regenerate Mana 15%
      --{ index = 39, op = "==", value = 5 }, -- All Resistances +5
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
      { index = 96, op = "==", value = 10 }, -- +5–10% Faster Run/Walk
      { index = 99, op = "==", value = 20 }, -- +10–20% Faster Hit Recovery
      { index = 93, op = "==", value = 10 }, -- +5–10% Increased Attack Speed
      { index = 105, op = "==", value = 10 }, -- +5–10% Faster Cast Rate
      { index = 0, op = "==", value = 10 }, -- -5–10 to all Attributes (Strength)
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
      --{ index = 107, op = "==", param = 225, value = 5 }, -- +5 to Roar (Druid only)
      --{ index = 221, op = "==", value = 1 }, -- +1.5 Life per level
      --{ index = 54, op = "==", value = 20 }, -- Adds 20 Cold Damage (min)
      --{ index = 55, op = "==", value = 40 }, -- Adds 40 Cold Damage (max)
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
      { index = 93, op = "==", value = 20 }, -- +10–20% Increased Attack Speed
      --{ index = 107, op = "==", param = 195, value = 5 }, -- +5 to Fissure (Druid only)
      --{ index = 48, op = "==", value = 20 }, -- Adds 20 Fire Damage (min)
      --{ index = 49, op = "==", value = 40 }, -- Adds 40 Fire Damage (max)
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
      --{ index = 107, op = "==", param = 221, value = 2 }, -- +2 to Bash (Barbarian only)
      --{ index = 138, op = "==", value = 2 }, -- +2 Mana after each Kill
      --{ index = 25, op = "==", value = 20 }, -- +20% Enhanced Damage
      --{ index = 0, op = "==", value = 5 }, -- +5 to all Attributes (Strength)
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
      { index = 156, op = "==", value = 10 }, -- +5–10% Piercing Attack
      --{ index = 93, op = "==", value = 20 }, -- +20% Increased Attack Speed
      --{ index = 89, op = "==", value = -2 }, -- -2 to Light Radius
      --{ index = 19, op = "==", value = 50 }, -- +50 Attack Rating
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
      { index = 335, op = "==", value = 10 }, -- -5–10% to Enemy Cold Resistance
      { index = 333, op = "==", value = 10 }, -- -5–10% to Enemy Fire Resistance
      --{ index = 54, op = "==", value = 25 }, -- +15–25 Cold Damage (min)
      --{ index = 55, op = "==", value = 25 }, -- +15–25 Cold Damage (max)
      --{ index = 48, op = "==", value = 25 }, -- +15–25 Fire Damage (min)
      --{ index = 49, op = "==", value = 25 }, -- +15–25 Fire Damage (max)
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
      --{ index = 107, op = "==", param = 226, value = 5 }, -- +5 to Natural Resistance (Barbarian only)
      { index = 39, op = "==", value = 15 }, -- All Resistances +10–15
      --{ index = 36, op = "==", value = 8 }, -- Damage Reduced by 8
      --{ index = 35, op = "==", value = 5 }, -- Magic Damage Reduced by 5
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
      --{ index = 107, op = "==", param = 118, value = 2 }, -- Level 2 Might Aura When Equipped
      --{ index = 93, op = "==", value = -20 }, -- -20% Increased Attack Speed
      --{ index = ?, op = "==", value = 1 }, -- 8% Chance to cast lvl 1 Enchant on striking
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
      { index = 388, op = "==", value = 7 }, -- Smite: 6–7
      --{ index = 20, op = "==", value = 10 }, -- 10% Increased Chance of Blocking
      { index = 96, op = "==", value = 10 }, -- +5–10% Faster Run/Walk
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
      { index = 388, op = "==", value = 9 }, -- Smite: 8–9
      --{ index = 102, op = "==", value = 10 }, -- +10% Faster Block Rate
      --{ index = 27, op = "==", value = 15 }, -- Regenerate Mana 15%
      { index = 1, op = "==", value = 15 }, -- +10–15 Energy
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 401-450
    {
      codes = "allitems",
      quality = "7",
      index = 401, -- Briar Patch
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 11 }, -- Smite: 10–11
      --{ index = 238, op = "==", value = 8*0.5 }, -- Attacker Takes Damage per level (0.5)
      --{ index = 201, op = "==", value = 2 }, -- 10% Chance to cast lvl 2 Iron Maiden when struck
      { index = 3, op = "==", value = 15 }, -- +10–15 Vitality
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 402, -- Ricochet
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 13 }, -- Smite: 12–13
      --{ index = 107, op = "==", param = 107, value = 5 }, -- +5 to Shield Toss (Paladin only)
      --{ index = 138, op = "==", value = 2 }, -- +2 Mana after each Kill
      { index = 93, op = "==", value = 20 }, -- +10–20% IAS
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 403, -- Favored Path
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 388, op = "==", value = 17 }, -- Smite: 16–17
      --{ index = 107, op = "==", param = 124, value = 5 }, -- +5 to Pass Favour (Paladin only)
      { index = 39, op = "==", value = 20 }, -- All Resistances +10–20
      { index = 329, op = "==", value = 10 }, -- +0–10% Fire Skill Damage
      { index = 330, op = "==", value = 10 }, -- +0–10% Lightning Skill Damage
      { index = 331, op = "==", value = 10 }, -- +0–10% Cold Skill Damage
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 404, -- Old Friend
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 97, op = "==", param = 70, value = 1 }, -- +1 Raise Skeleton
      --{ index = 97, op = "==", param = 69, value = 1 }, -- +1 Summon Mastery
      --{ index = 281, op = "==", value = 2 }, -- Summon Damage +2%
      --{ index = 284, op = "==", value = 3 }, -- Summon Max Life +3%
      --{ index = 285, op = "==", value = 4 }, -- Summon Combat Rating +4%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 405, -- Decomposed
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 45, op = "==", value = 30 }, -- Poison Resist +20–30%
      --{ index = 110, op = "==", value = 25 }, -- Poison Length Reduced 25%
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      --{ index = 107, op = "==", param = 68, value = 1 }, -- +1 Bone Armor (Necro only)
      { index = 102, op = "==", value = 27 }, -- +16–27% Faster Block Rate
      { index = 43, op = "==", value = 15 }, -- Cold Resist +10–15%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 406, -- Tangled Fellow
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 83, op = "==", param = 2, value = 2 }, -- +2 to Curses (Necro Only)
      { index = 9, op = "==", value = 25*256 }, -- +15–25 Mana
      --{ index = 102, op = "==", value = 15 }, -- +15% Faster Block Rate
      --{ index = 20, op = "==", value = 4 }, -- +3–4% Chance to Block
      --{ index = 31, op = "==", value = 25 }, -- +15–25 Defense
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 407, -- Stubborn Stone
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 107, op = "==", param = 75, value = 3 }, -- +3 Tongolem (Necro only)
      --{ index = 107, op = "==", param = 69, value = 2 }, -- +2 Summon Mastery (Necro only)
      { index = 284, op = "==", value = 8 }, -- Summon Max Life +6–8%
      --{ index = 34, op = "==", value = 2 }, -- Damage Reduced by 2
      --{ index = 20, op = "==", value = 5 }, -- +5% Chance to Block
      { index = 7, op = "==", value = 25*256 }, -- +15–25 Life
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 408, -- Spiked Dreamcatcher
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 83, op = "==", param = 17, value = 2 }, -- +2 Poison & Bone (Necro only)
      { index = 332, op = "==", value = 6 }, -- +4–6% Poison Skill Damage
      { index = 357, op = "==", value = 6 }, -- +4–6% Magic Skill Damage
      { index = 78, op = "==", value = 7 }, -- Attacker Takes Damage 6–7
      { index = 2, op = "==", value = 14 }, -- +8–14 Dexterity
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 409, -- Journeyman's Band
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 415, op = "==", value = 5 }, -- Weight +3–5
      --{ index = 127, op = "==", value = 1 }, -- +1 All Skills
      { index = 142, op = "==", value = 3 }, -- Fire Absorb 1–3%
      { index = 148, op = "==", value = 3 }, -- Cold Absorb 1–3%
      { index = 144, op = "==", value = 3 }, -- Lightning Absorb 1–3%
      { index = 0, op = "==", value = 15 }, -- +10–15 Strength (all attributes)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 410, -- Hygieia's Purity
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 415, op = "==", value = 5 }, -- Weight +3–5
      --{ index = 110, op = "==", value = 25 }, -- Poison Length Reduced 25%
      { index = 151, op = "==", param = 109, value = 8 }, -- Level 5–8 Clear Ailment Aura
      { index = 286, op = "==", value = 40 }, -- Reduce Cooldowns 30–40%
      { index = 276, op = "==", value = 3 }, -- +1–3 Spell Power
      --{ index = 127, op = "==", value = 1 }, -- +1 All Skills
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 411, -- Kira's Guardian
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 31, op = "==", value = 120 }, -- +50–120 Defense
      { index = 39, op = "==", value = 70 }, -- All Resistances +50–70
      --{ index = 153, op = "==", value = 1 }, -- Cannot Be Frozen
      --{ index = 99, op = "==", value = 20 }, -- +20% Faster Hit Recovery
      { index = 415, op = "==", value = 5 }, -- Weight +3–5
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 412, -- Griffon's Eye
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 31, op = "==", value = 200 }, -- +100–200 Defense
      --{ index = 105, op = "==", value = 25 }, -- +25% Faster Cast Rate
      --{ index = 127, op = "==", value = 1 }, -- +1 All Skills
      { index = 330, op = "==", value = 15 }, -- +10–15% Lightning Skill Damage
      { index = 334, op = "==", value = 20 }, -- -15–20% Enemy Lightning Res
      --{ index = 190, op = "==", value = 10 }, -- Enemy Lightning Immunity -10%
      { index = 415, op = "==", value = 5 }, -- Weight +3–5
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 413, -- Harlequin Crest
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 127, op = "==", value = 2 }, -- +2 All Skills
      --{ index = 216, op = "==", value = 2048*1.5 }, -- +1.5 Life per level
      --{ index = 217, op = "==", value = 2048*1.5 }, -- +1.5 Mana per level
      --{ index = 80, op = "==", value = 50 }, -- 50% MF
      --{ index = 36, op = "==", value = 10 }, -- Damage Reduced by 10%
      --{ index = 0, op = "==", value = 2 }, -- +2 Strength (all attribute)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 414, -- Tarnhelm's Revenge
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 0, op = "==", value = 35 }, -- +20–35 Strength
      --{ index = 221, op = "==", value = 8*0.5 }, -- +0.5 Dex per level
      --{ index = 287, op = "==", value = 1 }, -- +1% DS per Dex
      { index = 187, op = "==", value = 15 }, -- Enemy Cold Immunity Reduced by 5–15%
      { index = 189, op = "==", value = 15 }, -- Enemy Fire Immunity Reduced by 5–15%
      { index = 190, op = "==", value = 15 }, -- Enemy Lighting Immunity Reduced by 5–15%
      { index = 191, op = "==", value = 15 }, -- Enemy Poison Immunity Reduced by 5–15%
      { index = 192, op = "==", value = 15 }, -- Enemy Physical Immunity Reduced by 5–15%
      { index = 193, op = "==", value = 15 }, -- Enemy Magic Immunity Reduced by 5–15%
      { index = 396, op = "==", value = 8 }, -- Mana per hit 
      { index = 397, op = "==", value = 8 }, -- Life per hit
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 415, -- Steel Shade
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 16, op = "==", value = 130 }, -- +100–130% ED
      { index = 143, op = "==", value = 11 }, -- Fire Absorb 5–11
      { index = 62, op = "==", value = 8 }, -- 4–8% Mana leech
      { index = 74, op = "==", value = 18 }, -- Replenish Life +10–18
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 416, -- Veil of Steel
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 39, op = "==", value = 50 }, -- All Res +50
      --{ index = 16, op = "==", value = 60 }, -- +60% ED
      --{ index = 0, op = "==", value = 25 }, -- +25 Strength
      --{ index = 3, op = "==", value = 25 }, -- +25 Vitality
      --{ index = 89, op = "==", value = -4 }, -- -4 Light Radius
      --{ index = 31, op = "==", value = 140 }, -- +140 Defense
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 417, -- Nightwing's Veil
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 16, op = "==", value = 120 }, -- +90–120% ED
      --{ index = 127, op = "==", value = 2 }, -- +2 All Skills
      { index = 2, op = "==", value = 20 }, -- +10–20 Dex
      { index = 149, op = "==", value = 9 }, -- Cold Absorb 5–9
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze
      { index = 331, op = "==", value = 15 }, -- +8–15% Cold Skill Damage
      --{ index = 91, op = "==", value = -50 }, -- Requirements -50%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 418, -- Crown of Ages
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 99, op = "==", value = 30 }, -- +30% Faster Hit Recovery
      { index = 39, op = "==", value = 30 }, -- All Res +20–30
      --{ index = 127, op = "==", value = 1 }, -- +1 All Skills
      --{ index = 31, op = "==", value = 150 }, -- +100–150 Defense
      { index = 36, op = "==", value = 15 }, -- Damage Reduced by 10–15%
      --{ index = 16, op = "==", value = 50 }, -- +50% ED
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 419, -- Andariel's Visage
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 16, op = "==", value = 150 }, -- +100–150% ED
      --{ index = 45, op = "==", value = 70 }, -- Poison Resist +70%
      --{ index = 127, op = "==", value = 2 }, -- +2 All Skills
      --{ index = 46, op = "==", value = 10 }, -- +10% Max Poison Res
      --{ index = 93, op = "==", value = 20 }, -- +20% IAS
      { index = 0, op = "==", value = 30 }, -- +25–30 Strength
      --{ index = 201, op = "==", value = 15 }, -- 15% ctc lvl 15 Poison Nova
      --{ index = 204, op = "==", param = 62, value = 3 }, -- Level 3 Venom (20 charges)
      { index = 60, op = "==", value = 10 }, -- 8–10% Life leech
      --{ index = 39, op = "==", value = -30 }, -- Fire Resist -30%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 420, -- Ormus' Robes
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 31, op = "==", value = 20 }, -- +10–20 Defense
      --{ index = 105, op = "==", value = 20 }, -- +20% FCR
      { index = 329, op = "==", value = 15 }, -- +10–15% Fire Skill Damage
      { index = 330, op = "==", value = 15 }, -- +10–15% Lightning Skill Damage
      { index = 331, op = "==", value = 15 }, -- +10–15% Cold Skill Damage
      { index = 27, op = "==", value = 15 }, -- Regenerate Mana 10–15%
      --{ index = 107, op = "==", param = 234, value = 6 }, -- +6 random Sorc skill (Firestorm–Corpse Flower)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 421, -- Arcane Protector
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 16, op = "==", value = 180 }, -- +140–180% Enhanced Defense
      { index = 39, op = "==", value = 20 }, -- All Resistances +15–20
      --{ index = 280, op = "==", value = 1 }, -- Curse Length Reduced by +1% per Energy
      --{ index = 60, op = "==", value = 5 }, -- 5% Life stolen per hit
      --{ index = 62, op = "==", value = 5 }, -- 5% Mana stolen per hit
      --{ index = 260, op = "==", value = 2 }, -- +2% Faster Cast Rate (Energy)
      { index = 107, op = "==", param = 58, value = 5 }, -- +3–5 Energy Shield (Sorc only)
      { index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 5–10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 422, -- Spell Splitter
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 16, op = "==", value = 180 }, -- +140–180% Enhanced Defense
      { index = 276, op = "==", value = 3 }, -- +1–3 Spell Power
      { index = 286, op = "==", value = 40 }, -- Reduce Cooldowns 25–40%
      { index = 333, op = "==", value = 25 }, -- -15–25% Enemy Fire Res
      { index = 334, op = "==", value = 25 }, -- -15–25% Enemy Lightning Res
      { index = 335, op = "==", value = 25 }, -- -15–25% Enemy Cold Res
      { index = 336, op = "==", value = 25 }, -- -15–25% Enemy Poison Res
      --{ index = 216, op = "==", value = 2048*0.75 }, -- +0.75 Vitality per level
      { index = 80, op = "==", value = 35 }, -- 25–35% Magic Find
      { index = 415, op = "==", value = 6 }, -- Weight +4–6
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 423, -- The Gladiator's Bane
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 16, op = "==", value = 200 }, -- +150–200% Enhanced Defense
      { index = 34, op = "==", value = 20 }, -- Damage Reduced by 15–20
      { index = 35, op = "==", value = 20 }, -- Magic Damage Reduced by 15–20
      --{ index = 78, op = "==", value = 20 }, -- Attacker Takes Damage 20
      --{ index = 110, op = "==", value = 50 }, -- Poison Length Reduced 50%
      --{ index = 99, op = "==", value = 30 }, -- +30% Faster Hit Recovery
      --{ index = 31, op = "==", value = 50 }, -- +50 Defense
      --{ index = 153, op = "==", value = 1 }, -- Cannot Be Frozen
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 424, -- Balled Lighting
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 16, op = "==", value = 200 }, -- +175–200% Enhanced Defense
      { index = 39, op = "==", value = 25 }, -- All Resistances +15–25
      --{ index = 127, op = "==", value = 1 }, -- +1 All Skills
      --{ index = 201, op = "==", value = 10 }, -- 5% ctc lvl 10 Electro Ball
      { index = 79, op = "==", value = 20 }, -- 10–20% Extra Gold From Monsters
      --{ index = 91, op = "==", value = -25 }, -- Requirements -25%
      { index = 96, op = "==", value = 30 }, -- +20–30% Faster Run Walk
      { index = 27, op = "==", value = 50 }, -- Regenerate Mana 25–50%
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
      --{ index = 16, op = "==", value = 200 }, -- +160–200% Enhanced Defense
      { index = 83, op = "==", param = 4, value = 2 }, -- +1–2 Barbarian Skills
      --{ index = 136, op = "==", value = 2 }, -- 2% Chance of Crushing Blow (Strength)
      { index = 262, op = "==", value = 10 }, -- +5–10% Strength %
      --{ index = 117, op = "==", value = 1 }, -- Prevent Monster Heal
      { index = 36, op = "==", value = 10 }, -- Damage Reduced by 5–10%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 426, -- Chained Lighting
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 201, op = "==", value = 15 }, -- 25% ctc lvl 15 Charged Bolt
      --{ index = 144, op = "==", value = 5 }, -- Lightning Absorb 5%
      --{ index = 42, op = "==", value = 15 }, -- +15% Max Lightning Res
      --{ index = 91, op = "==", value = -50 }, -- Requirements -50%
      --{ index = 334, op = "==", value = 15 }, -- -15% Enemy Lightning Res
      { index = 217, op = "==", value = 2048*2 }, -- +1–2 Mana per level
      --{ index = 16, op = "==", value = 250 }, -- +100–250% Enhanced Defense
      { index = 107, op = "==", param = 53, value = 6 }, -- +3–6 Chain Lightning (Sorc only)
      --{ index = 99, op = "==", value = 24 }, -- +24% Faster Hit Recovery
      --{ index = 190, op = "==", value = 10 }, -- Enemy Lightning Immunity -10%
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
      --{ index = 16, op = "==", value = 210 }, -- +190–210% Enhanced Defense
      --{ index = 201, op = "==", value = 1 }, -- 15% ctc lvl 1 Adrenaline on kill
      --{ index = 153, op = "==", value = 1 }, -- Cannot Be Frozen
      { index = 99, op = "==", value = 24 }, -- +12–24% Faster Hit Recovery
      { index = 286, op = "==", value = 20 }, -- Reduce Cooldowns 10–20%
      { index = 278, op = "==", value = 5 }, -- +3–5 Combat Power
      --{ index = 257, op = "==", value = 2 }, -- +2% Deadly Strike per Dex
      { index = 119, op = "==", value = 10 }, -- +5-10% AR Bonus
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
      --{ index = 16, op = "==", value = 280 }, -- +250–280% Enhanced Defense
      --{ index = 99, op = "==", value = 30 }, -- +30% Faster Hit Recovery
      { index = 127, op = "==", value = 2 }, -- +1–2 All Skills
      { index = 34, op = "==", value = 25 }, -- Damage Reduced by 20–25
      { index = 35, op = "==", value = 25 }, -- Magic Damage Reduced by 20–25
      --{ index = 216, op = "==", value = 2048*0.5 }, -- +0.5 Vitality per level
      --{ index = 107, op = "==", param = 149, value = 3 }, -- +3 War Stance
      --{ index = 91, op = "==", value = -15 }, -- Requirements -15%
      { index = 96, op = "==", value = 30 }, -- +20–30% Faster Run/Walk
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
      --{ index = 16, op = "==", value = 220 }, -- +180–220% Enhanced Defense
      --{ index = 201, op = "==", value = 5 }, -- 3% ctc lvl 5 Fade on kill
      { index = 262, op = "==", value = 15 }, -- +5–15% Strength
      --{ index = 25, op = "==", value = 150 }, -- +150% Enhanced Damage
      --{ index = 39, op = "==", value = 30 }, -- All Resistances +30
      { index = 278, op = "==", value = 3 }, -- +1–3 Combat Power
      { index = 76, op = "==", value = 5 }, -- +3–5% Max Life
      { index = 415, op = "==", value = 4 }, -- Weight +2–4
      { index = 34, op = "==", value = 15 }, -- Damage Reduced by 5–15
      { index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 5–15
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
      --{ index = 16, op = "==", value = 200 }, -- +170–200% Enhanced Defense
      --{ index = 31, op = "==", value = 150 }, -- +100–150 Defense
      { index = 36, op = "==", value = 25 }, -- Damage Reduced by 15–25%
      { index = 0, op = "==", value = 50 }, -- +40–50 Strength
      --{ index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 10
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
      --{ index = 16, op = "==", value = 240 }, -- +200–240% Enhanced Defense
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      --{ index = 91, op = "==", value = -35 }, -- Requirements -35%
      --{ index = 96, op = "==", value = 25 }, -- +25% Faster Run/Walk
      { index = 136, op = "==", value = 20 }, -- 10–20% Chance of Crushing Blow
      { index = 286, op = "==", value = 25 }, -- Reduce Cooldowns 15–25%
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
      --{ index = 16, op = "==", value = 220 }, -- +190–220% Enhanced Defense
      --{ index = 99, op = "==", value = 20 }, -- +20% Faster Hit Recovery
      { index = 34, op = "==", value = 14 }, -- Damage Reduced by 9–14
      { index = 43, op = "==", value = 60 }, -- Cold Resist +40–60%
      { index = 27, op = "==", value = 15 }, -- Regenerate Mana 10–15%
      --{ index = 201, op = "==", value = 6 }, -- 8% ctc lvl 6 Iron Maiden when struck
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
      --{ index = 91, op = "==", value = -100 }, -- Requirements -100%
      --{ index = 16, op = "==", value = 150 }, -- +120–150% Enhanced Defense
      { index = 121, op = "==", value = 100 }, -- +50–100% Damage to Demons
      --{ index = 96, op = "==", value = 20 }, -- +20% Faster Run/Walk
      { index = 39, op = "==", value = 30 }, -- All Resistances +20–30
      --{ index = 0, op = "==", value = 30 }, -- +20–30 Strength
      { index = 415, op = "==", value = 10 }, -- Weight +5–10
      { index = 97, op = "==", param = 100, value = 7 }, -- +3–7 Consecrated Ground
      { index = 142, op = "==", value = 5 }, -- +2-5% Magic, Fire, Light, Cold Absorb
      --{ index = 36, op = "==", value = 15 }, -- Damage Reduced by 15
      --{ index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 15
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
      --{ index = 107, op = "==", param = 221, value = 5 }, -- +5 Spirit's Embrace
      { index = 7, op = "==", value = 100*256 }, -- +50–100 Life
      { index = 76, op = "==", value = 10 }, -- Increase Maximum Life by 5–10% 
      --{ index = 127, op = "==", value = 1 }, -- +1 All Skills
      { index = 187, op = "==", value = 50 }, -- Enemy cold immunity -30–50%
      { index = 40, op = "==", value = 5 }, -- +3–5% to All Max Res
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
      --{ index = 16, op = "==", value = 150 }, -- +120–150% Enhanced Defense
      { index = 262, op = "==", value = 5 }, -- +3–5% Strenght
      { index = 263, op = "==", value = 5 }, -- +3–5% Dexterity
      { index = 264, op = "==", value = 5 }, -- +3–5% Vitality
      { index = 265, op = "==", value = 5 }, -- +3–5% Energy
      --{ index = 20, op = "==", value = 20 }, -- 20% Chance to Block
      --{ index = 102, op = "==", value = 20 }, -- 20% Faster Block Rate
      --{ index = 151, op = "==", param = 109, value = 3 }, -- Level 3 Clear Ailment Aura
      --{ index = 127, op = "==", value = 1 }, -- +1 All Skills
      --{ index = 221, op = "==", value = 8*0.125 }, -- +0.125 Dex per level
      { index = 388, op = "==", value = 37 }, -- Smite: 36–37
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
      --{ index = 221, op = "==", value = 8*0.5 }, -- +0.5 Dex per level
      --{ index = 16, op = "==", value = 200 }, -- +160–200% Enhanced Defense
      --{ index = 149, op = "==", value = 8*0.625 }, -- Cold Absorb per level
      --{ index = 201, op = "==", value = 5 }, -- 4% ctc lvl 5 Weaken
      --{ index = 216, op = "==", value = 2048*1.25 }, -- +1.25 Life per level
      --{ index = 102, op = "==", value = 50 }, -- +50% Faster Block Rate
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze
      { index = 388, op = "==", value = 40 }, -- Smite: 39–40
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
      --{ index = 16, op = "==", value = 180 }, -- +140–180% Enhanced Defense
      --{ index = 214, op = "==", value = 8*2 }, -- +2 Defense per level
      --{ index = 97, op = "==", param = 183, value = 1 }, -- +1 Arachnophobia
      { index = 86, op = "==", value = 7 }, -- +3–7 Life after kill
      { index = 138, op = "==", value = 5 }, -- +3–5 Mana after kill
      { index = 283, op = "==", value = 3 }, -- +1–3 Summoning Power
      { index = 105, op = "==", value = 25 }, -- +15–25% Faster Cast Rate
      { index = 40, op = "==", value = 5 }, -- +1–5% Max Res
      { index = 388, op = "==", value = 44 }, -- Smite: 41–44
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
      --{ index = 214, op = "==", value = 8*3.75 }, -- +3.75 Defense per level
      --{ index = 36, op = "==", value = 35 }, -- Damage Reduced by 35%
      --{ index = 0, op = "==", value = 30 }, -- +30 Strength
      --{ index = 102, op = "==", value = 35 }, -- +35% Faster Block Rate
      --{ index = 41, op = "==", value = 25 }, -- Lightning Resist +25%
      --{ index = 20, op = "==", value = 25 }, -- 25% Chance to Block
      --{ index = 43, op = "==", value = 60 }, -- Cold Resist +60%
      --{ index = 128, op = "==", value = 10 }, -- Attacker Takes Lightning Damage 10
      { index = 388, op = "==", value = 61 }, -- Smite: 60–61
      { index = 34, op = "==", value = 13 }, -- Damage Reduced by 7–13
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
      --{ index = 16, op = "==", value = 180 }, -- +150–180% Enhanced Defense
      --{ index = 150, op = "==", value = 20 }, -- Slows Target by 20%
      --{ index = 201, op = "==", value = 7 }, -- 10% ctc lvl 7 Lower Resist
      { index = 60, op = "==", value = 9 }, -- 5–9% Life leech
      --{ index = 201, op = "==", value = 44 }, -- 100% ctc lvl 44 Nova on death
      { index = 43, op = "==", value = 80 }, -- Cold Resist +40–80%
      { index = 388, op = "==", value = 49 }, -- Smite: 48–49
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
      --{ index = 16, op = "==", value = 180 }, -- +130–180% Enhanced Defense
      { index = 149, op = "==", value = 11 }, -- Cold Absorb 6–11
      { index = 39, op = "==", value = 40 }, -- All Resistances +30–40
      --{ index = 20, op = "==", value = 30 }, -- 20–30% Chance to Block
      --{ index = 102, op = "==", value = 25 }, -- +25% Faster Block Rate
      --{ index = 201, op = "==", value = 8 }, -- 5% ctc lvl 8 Fade
      { index = 388, op = "==", value = 43 }, -- Smite: 42–43
      { index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 8–10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 441, -- Indra's Mark
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 16, op = "==", value = 120 }, -- +90–120% Enhanced Defense
      --{ index = 408, op = "==", value = 1 }, -- +1 to Lightning Skills
      { index = 330, op = "==", value = 15 }, -- +5–15% Lightning Skill Damage
      { index = 286, op = "==", value = 20 }, -- Reduce Cooldowns 10–20%
      { index = 144, op = "==", value = 10 }, -- Lightning Absorb 5–10%
      --{ index = 105, op = "==", value = 15 }, -- +15% Faster Cast Rate
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
      --{ index = 16, op = "==", value = 120 }, -- +90–120% Enhanced Defense
      { index = 60, op = "==", value = 10 }, -- 7–10% Life stolen per hit
      --{ index = 135, op = "==", value = 10 }, -- 10% Chance of Open Wounds
      --{ index = 201, op = "==", value = 10 }, -- 5% ctc lvl 10 Life Tap
      { index = 86, op = "==", value = 10 }, -- +5–10 Life after kill
      { index = 0, op = "==", value = 15 }, -- +10–15 Strength
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
      --{ index = 16, op = "==", value = 120 }, -- +90–120% Enhanced Defense
      { index = 60, op = "==", value = 7 }, -- 4–7% Life stolen per hit
      { index = 62, op = "==", value = 7 }, -- 4–7% Mana stolen per hit
      --{ index = 201, op = "==", value = 3 }, -- 8% ctc lvl 3 Weaken
      --{ index = 120, op = "==", param = 0, value = -50 }, -- -50 Monster Defense per hit
      { index = 97, op = "==", param = 386, value = 10 }, -- +3–10 Unholy Barrage
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
      --{ index = 16, op = "==", value = 180 }, -- +120–180% Enhanced Defense
      --{ index = 83, op = "==", param = 25, value = 1 }, -- +1 Offensive Advantage (Paladin)
      --{ index = 153, op = "==", value = 1 }, -- Cannot Be Frozen
      { index = 85, op = "==", value = 10 }, -- +5–10% Experience
      { index = 74, op = "==", value = 10 }, -- Replenish Life +5–10
      { index = 333, op = "==", value = 15 }, -- -10–15% Enemy Fire Res
      { index = 334, op = "==", value = 15 }, -- -10–15% Enemy Lightning Res
      { index = 335, op = "==", value = 15 }, -- -10–15% Enemy Cold Res
      { index = 286, op = "==", value = 10 }, -- Reduce Cooldowns 5–10%
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
      --{ index = 16, op = "==", value = 210 }, -- +170–210% Enhanced Defense
      { index = 0, op = "==", value = 20 }, -- +15–20 Strength
      --{ index = 25, op = "==", value = 60 }, -- +30–60% Enhanced Damage
      --{ index = 136, op = "==", value = 10 }, -- 10% Chance of Crushing Blow
      { index = 151, op = "==", param = 98, value = 7 }, -- Level 5–7 Might Aura
      { index = 34, op = "==", value = 10 }, -- Damage Reduced by 5–10
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
      --{ index = 16, op = "==", value = 180 }, -- +120–180% Enhanced Defense
      { index = 96, op = "==", value = 20 }, -- +10–20% Faster Run/Walk
      { index = 39, op = "==", value = 15 }, -- Fire Resist +10–15%
      --{ index = 40, op = "==", value = 5 }, -- +5% Max Fire Resist
      { index = 41, op = "==", value = 15 }, -- Lightning Resist +10–15%
      --{ index = 42, op = "==", value = 5 }, -- +5% Max Lightning Resist
      --{ index = 217, op = "==", value = 2048*2 }, -- +2 Mana per level
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
      --{ index = 16, op = "==", value = 170 }, -- +140–170% Enhanced Defense
      --{ index = 96, op = "==", value = 20 }, -- +20% Faster Run/Walk
      --{ index = 99, op = "==", value = 20 }, -- +20% Faster Hit Recovery
      --{ index = 216, op = "==", value = 2048*0.25 }, -- +0.25 Life per level
      { index = 9, op = "==", value = 50*256 }, -- +25–50 Mana
      --{ index = 45, op = "==", value = 70 }, -- Poison Resist +40–70%
      { index = 0, op = "==", value = 15 }, -- +10–15 Strength
      { index = 3, op = "==", value = 15 }, -- +10–15 Vitality
      { index = 34, op = "==", value = 7 }, -- Damage Reduced by 3–7
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
      --{ index = 16, op = "==", value = 200 }, -- +170–200% Enhanced Defense
      --{ index = 96, op = "==", value = 20 }, -- +20% Faster Run/Walk
      --{ index = 204, op = "==", param = 88, value = 33 }, -- Level 33 Bone Prison (13 charges)
      { index = 74, op = "==", value = 10 }, -- Replenish Life +3–10
      --{ index = 27, op = "==", value = 10 }, -- Regenerate Mana 10%
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      { index = 0, op = "==", value = 20 }, -- +10–20 Strength
      --{ index = 2, op = "==", value = 17 }, -- +17 Dexterity
      { index = 107, op = "==", param = 69, value = 2 }, -- +1–2 Summon Mastery (Necro only)
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
      --{ index = 16, op = "==", value = 220 }, -- +180–220% Enhanced Defense
      --{ index = 97, op = "==", param = 163, value = 3 }, -- +3 Blink Strike
      { index = 39, op = "==", value = 25 }, -- Fire Resist +15–25%
      { index = 41, op = "==", value = 25 }, -- Lightning Resist +15–25%
      { index = 43, op = "==", value = 25 }, -- Cold Resist +15–25%
      { index = 19, op = "==", value = 250 }, -- +150–250 Attack Rating
      --{ index = 110, op = "==", value = 25 }, -- Poison Length Reduced 25%
      { index = 34, op = "==", value = 12 }, -- Damage Reduced by 8–12
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
      --{ index = 16, op = "==", value = 220 }, -- +180–220% Enhanced Defense
      --{ index = 201, op = "==", value = 1 }, -- 20% ctc lvl 1 Adrenaline on kill
      --{ index = 201, op = "==", value = 3 }, -- 5% ctc lvl 3 Weaken on kill
      { index = 86, op = "==", value = 5 }, -- +2–5 Life after each Kill
      { index = 138, op = "==", value = 5 }, -- +2–5 Mana after each Kill
      { index = 278, op = "==", value = 2 }, -- +1–2 Combat Power
      { index = 34, op = "==", value = 10 }, -- Damage Reduced by 6–10
      { index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 6–10
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 451-500
    {
      codes = "allitems",
      quality = "7",
      index = 451, -- Arachnid Mesh
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 16, op = "==", value = 120 }, -- +90–120% Enhanced Defense
      --{ index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      { index = 97, op = "==", param = 183, value = 3 }, -- +1–3 Arachnophobia
      --{ index = 127, op = "==", value = 1 }, -- +1 All Skills
      --{ index = 150, op = "==", value = 10 }, -- Slows Target by 10%
      --{ index = 77, op = "==", value = 5 }, -- +5% Max Mana
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
      --{ index = 0, op = "==", value = 15 }, -- +15 Strength
      --{ index = 138, op = "==", value = 4 }, -- +4 Mana after kill
      --{ index = 150, op = "==", value = 10 }, -- Slows Target by 10%
      { index = 60, op = "==", value = 7 }, -- 5–7% Life stolen per hit
      --{ index = 93, op = "==", value = 10 }, -- +10% IAS
      --{ index = 89, op = "==", value = -3 }, -- -3 Light Radius
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
      --{ index = 16, op = "==", value = 140 }, -- +90–140% Enhanced Defense
      { index = 3, op = "==", value = 40 }, -- +30–40 Vitality
      --{ index = 96, op = "==", value = 10 }, -- +10% Faster Run/Walk
      --{ index = 99, op = "==", value = 10 }, -- +10% Faster Hit Recovery
      { index = 36, op = "==", value = 15 }, -- Damage Reduced by 10–15%
      { index = 74, op = "==", value = 13 }, -- Replenish Life +10–13
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
      --{ index = 16, op = "==", value = 250 }, -- +200–250% Enhanced Defense
      { index = 0, op = "==", value = 45 }, -- +25–45 Strength
      --{ index = 257, op = "==", value = 4 }, -- +4% Open Wounds per Strength
      { index = 278, op = "==", value = 7 }, -- +4–7 Combat Power
      { index = 99, op = "==", value = 24 }, -- +12–24% Faster Hit Recovery
      --{ index = 110, op = "==", value = 25 }, -- Poison Length Reduced 25%
      --{ index = 93, op = "==", value = 1 }, -- +1% IAS per Strength
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
      --{ index = 16, op = "==", value = 250 }, -- +200–250% Enhanced Defense
      --{ index = 119, op = "==", value = 16 }, -- +16 AR (Energy)
      --{ index = 93, op = "==", value = 1 }, -- +1 IAS (Energy)
      --{ index = 83, op = "==", param = 0, value = 6 }, -- +0–6 [Class] Skills (placeholder)
      --{ index = 91, op = "==", value = -20 }, -- Requirements -20%
      { index = 99, op = "==", value = 24 }, -- +12–24% Faster Hit Recovery
      { index = 7, op = "==", value = 125*256 }, -- +75–125 Life
      --{ index = 153, op = "==", value = 1 }, -- Cannot Be Frozen
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
      --{ index = 16, op = "==", value = 320 }, -- +250–320% Enhanced Defense
      { index = 0, op = "==", value = 35 }, -- +25–35 Strength
      --{ index = 136, op = "==", value = 5 }, -- 5% Chance of Crushing Blow
      --{ index = 34, op = "==", value = 12 }, -- Damage Reduced by 12
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
      --{ index = 16, op = "==", value = 420 }, -- +320–420% Enhanced Defense
      { index = 32, op = "==", value = 350 }, -- +300–350 Defense vs Missile
      { index = 45, op = "==", value = 40 }, -- Poison Resist +30–40%
      { index = 39, op = "==", value = 30 }, -- Fire Resist +20–30%
      { index = 86, op = "==", value = 7 }, -- +5–7 Life after kill
      { index = 388, op = "==", value = 38 }, -- Smite: 24–38
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
      --{ index = 16, op = "==", value = 150 }, -- +120–150% Enhanced Defense
      --{ index = 78, op = "==", value = 1.375 }, -- Attacker Takes Damage per level
      --{ index = 99, op = "==", value = 30 }, -- +30% Faster Hit Recovery
      { index = 36, op = "==", value = 20 }, -- Damage Reduced by 15–20%
      { index = 388, op = "==", value = 76 }, -- Smite: 75–76
      { index = 151, op = "==", param = 103, value = 20 }, -- Level 15–20 Thorns Aura
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
      --{ index = 16, op = "==", value = 140 }, -- +100–140% Enhanced Defense
      --{ index = 127, op = "==", value = 1 }, -- +1 All Skills
      { index = 278, op = "==", value = 3 }, -- +1–3 Combat Power
      { index = 283, op = "==", value = 3 }, -- +1–3 Summoning Power
      { index = 329, op = "==", value = 25 }, -- +10–25% Fire Skill Damage
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
      --{ index = 16, op = "==", value = 140 }, -- +100–140% Enhanced Defense
      --{ index = 127, op = "==", value = 1 }, -- +1 All Skills
      { index = 276, op = "==", value = 3 }, -- +1–3 Spell Power
      { index = 283, op = "==", value = 3 }, -- +1–3 Summoning Power
      --{ index = 9, op = "==", value = 50*256 }, -- +50 Mana
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 461, -- Rama's Protector
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 16, op = "==", value = 160 }, -- +120–160% Enhanced Defense
      { index = 83, op = "==", param = 5, value = 2 }, -- +1–2 to Druid Skill Levels
      { index = 39, op = "==", value = 20 }, -- All Resistances +10–20
      { index = 76, op = "==", value = 10 }, -- Increase Maximum Life by 5–10%
      --{ index = 85, op = "==", value = 3 }, -- +3% Experience Gained
      --{ index = 99, op = "==", value = 12 }, -- +12% Faster Hit Recovery
      { index = 34, op = "==", value = 5 }, -- Damage Reduced by 3–5
      { index = 35, op = "==", value = 5 }, -- Magic Damage Reduced by 3–5
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
      --{ index = 16, op = "==", value = 160 }, -- +120–160% Enhanced Defense
      --{ index = 83, op = "==", param = 5, value = 1 }, -- +1 to Druid Skill Levels
      { index = 43, op = "==", value = 50 }, -- Cold Resist +30–50%
      { index = 44, op = "==", value = 15 }, -- +10–15% to Maximum Cold Resist
      { index = 276, op = "==", value = 3 }, -- +1–3 Spell Power
      --{ index = 331, op = "==", value = 20 }, -- +20% to Cold Skill Damage
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
      --{ index = 16, op = "==", value = 180 }, -- +140–180% Enhanced Defense
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      { index = 107, op = "==", param = 248, value = 7 }, -- +3–7 Fiery Fury (Druid only)
      { index = 189, op = "==", value = 20 }, -- Enemy fire immunity reduced by 10–20%
      --{ index = 19, op = "==", value = 150 }, -- +150% Bonus to Attack Rating
      --{ index = 60, op = "==", value = 5 }, -- 5% Life stolen per hit
      --{ index = 62, op = "==", value = 5 }, -- 5% Mana stolen per hit
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
      --{ index = 16, op = "==", value = 140 }, -- +100–140% Enhanced Defense
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      { index = 278, op = "==", value = 3 }, -- +1–3 Combat Power
      --{ index = 60, op = "==", value = 5 }, -- 5% Life stolen per hit
      --{ index = 62, op = "==", value = 5 }, -- 5% Mana stolen per hit
      { index = 7, op = "==", value = 75*256 }, -- +50–75 Life
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
      --{ index = 16, op = "==", value = 160 }, -- +120–160% Enhanced Defense
      { index = 83, op = "==", param = 4, value = 2 }, -- +1–2 to Barbarian Skill Levels
      --{ index = 201, op = "==", value = 3 }, -- 5% ctc lvl 3 Life Tap
      --{ index = 93, op = "==", value = 10 }, -- +10% IAS
      { index = 0, op = "==", value = 20 }, -- +15–20 Strength
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
      --{ index = 16, op = "==", value = 160 }, -- +120–160% Enhanced Defense
      { index = 83, op = "==", param = 4, value = 2 }, -- +1–2 to Barbarian Skill Levels
      { index = 192, op = "==", value = 15 }, -- Enemy physical immunity reduced by 10–15%
      --{ index = 111, op = "==", value = 50 }, -- Damage +50
      { index = 93, op = "==", value = 25 }, -- +15–25% IAS
      { index = 278, op = "==", value = 4 }, -- +2–4 Combat Power
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
      --{ index = 16, op = "==", value = 180 }, -- +140–180% Enhanced Defense
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      { index = 39, op = "==", value = 35 }, -- All Resistances +25–35
      { index = 99, op = "==", value = 24 }, -- +12–24% Faster Hit Recovery
      { index = 187, op = "==", value = 20 }, -- Enemy cold immunity reduced by 15–20%
      { index = 331, op = "==", value = 20 }, -- +15–20% Cold Skill Damage
      { index = 335, op = "==", value = 20 }, -- -15–20% Enemy Cold Resistance
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
      --{ index = 83, op = "==", param = 4, value = 2 }, -- +2 to Barbarian Skill Levels
      --{ index = 107, op = "==", param = 149, value = 2 }, -- +2 to Close Quarters (Barb only)
      --{ index = 16, op = "==", value = 200 }, -- +150–200% Enhanced Defense
      --{ index = 99, op = "==", value = 30 }, -- +30% Faster Hit Recovery
      --{ index = 119, op = "==", value = 20 }, -- 20% Bonus to Attack Rating
      --{ index = 0, op = "==", value = 20 }, -- +20 Strength
      --{ index = 2, op = "==", value = 20 }, -- +20 Dexterity
      { index = 60, op = "==", value = 6 }, -- 3–6% Life stolen per hit
      --{ index = 39, op = "==", value = 30 }, -- All Resistances +30
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
      --{ index = 16, op = "==", value = 160 }, -- +120–160% Enhanced Defense
      --{ index = 83, op = "==", param = 3, value = 1 }, -- +1 to Paladin Skill Levels
      { index = 39, op = "==", value = 25 }, -- All Resistances +15–25
      --{ index = 20, op = "==", value = 25 }, -- 25% Increased Chance of Blocking
      --{ index = 99, op = "==", value = 12 }, -- +12% Faster Hit Recovery
      { index = 388, op = "==", value = 21 }, -- Smite: 20–21
      { index = 35, op = "==", value = 9 }, -- Magic Damage Reduced by 6–9
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
      --{ index = 16, op = "==", value = 160 }, -- +120–160% Enhanced Defense
      { index = 193, op = "==", value = 15 }, -- Enemy magic immunity reduced by 5–15%
      { index = 276, op = "==", value = 2 }, -- +1–2 Spell Power
      --{ index = 102, op = "==", value = 25 }, -- +25% Faster Block Rate
      --{ index = 105, op = "==", value = 2 }, -- +2% Faster Cast Rate (Energy)
      { index = 388, op = "==", value = 25 }, -- Smite: 24–25
      { index = 1, op = "==", value = 15 }, -- +10–15 Energy
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
      --{ index = 16, op = "==", value = 160 }, -- +140–160% Enhanced Defense
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      { index = 107, op = "==", param = 106, value = 4 }, -- +2–4 to Zeal (Paladin only)
      { index = 278, op = "==", value = 2 }, -- +1–2 Combat Power
      --{ index = 111, op = "==", value = 50 }, -- Damage +50
      { index = 415, op = "==", value = 4 }, -- Weight +2–4
      { index = 60, op = "==", value = 5 }, -- 3–5% Life stolen per hit
      { index = 388, op = "==", value = 31 }, -- Smite: 30–31
      { index = 34, op = "==", value = 9 }, -- Damage Reduced by 6–9
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
      --{ index = 83, op = "==", param = 3, value = 2 }, -- +2 to Paladin Skill Levels
      --{ index = 188, op = "==", param = 24, value = 2 }, -- +2 to Combat Skills (Paladin Only)
      --{ index = 16, op = "==", value = 200 }, -- +150–200% Enhanced Defense
      --{ index = 20, op = "==", value = 30 }, -- 30% Increased Chance of Blocking
      --{ index = 102, op = "==", value = 30 }, -- 30% Faster Block Rate
      --{ index = 0, op = "==", value = 20 }, -- +20 Strength
      --{ index = 3, op = "==", value = 20 }, -- +20 Vitality
      --{ index = 119, op = "==", value = 20 }, -- 20% Bonus to Attack Rating
      --{ index = 39, op = "==", value = 50 }, -- All Resistances +50
      { index = 388, op = "==", value = 33 }, -- Smite: 32–33
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
      --{ index = 83, op = "==", param = 3, value = 2 }, -- +2 to Paladin Skill Levels
      { index = 107, op = "==", param = 107, value = 7 }, -- +3–7 Shield Toss (Paladin only)
      --{ index = 16, op = "==", value = 250 }, -- +200–250% Enhanced Defense
      --{ index = 102, op = "==", value = 30 }, -- +30% Faster Block Rate
      --{ index = 0, op = "==", value = 10 }, -- +10 to all Attributes (Str)
      { index = 60, op = "==", value = 10 }, -- 5–10% Life stolen per hit
      { index = 62, op = "==", value = 10 }, -- 5–10% Mana stolen per hit
      { index = 76, op = "==", value = 10 }, -- +5–10% Max Life
      { index = 77, op = "==", value = 10 }, -- +5–10% Max Mana
      --{ index = 39, op = "==", value = 25 }, -- All Resistances +25
      --{ index = 201, op = "==", value = 10 }, -- 10% ctc lvl 10 Shield Toss
      { index = 388, op = "==", value = 39 }, -- Smite: 38–39
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
      --{ index = 16, op = "==", value = 140 }, -- +100–140% Enhanced Defense
      --{ index = 83, op = "==", param = 2, value = 1 }, -- +1 to Necromancer Skill Levels
      { index = 288, op = "==", value = 20 }, -- +15–20% Bone Skill Damage
      { index = 39, op = "==", value = 30 }, -- Fire Resist +20–30%
      { index = 41, op = "==", value = 30 }, -- Lightning Resist +20–30%
      { index = 357, op = "==", value = 10 }, -- +5–10% Magic Skill Damage
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
      --{ index = 16, op = "==", value = 160 }, -- +120–160% Enhanced Defense
      { index = 410, op = "==", value = 3 }, -- +1–3 to Poison Skills
      { index = 191, op = "==", value = 10 }, -- Enemy poison immunity reduced by 5–10%
      { index = 332, op = "==", value = 20 }, -- +10–20% Poison Skill Damage
      --{ index = 45, op = "==", value = 50 }, -- Poison Resist +50%
      --{ index = 46, op = "==", value = 10 }, -- +10% Max Poison Resist
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
      --{ index = 16, op = "==", value = 160 }, -- +120–160% Enhanced Defense
      { index = 188, op = "==", param = 18, value = 3 }, -- +1–3 Summoning Skills (Necro only)
      { index = 107, op = "==", param = 68, value = 3 }, -- +1–3 Bone Armor (Necro only)
      { index = 283, op = "==", value = 2 }, -- +1–2 Summoning Power
      --{ index = 357, op = "==", value = 10 }, -- +10% Bone Skill Damage
      --{ index = 107, op = "==", param = 88, value = 3 }, -- +3 Bone Prison (Necro only)
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
      --{ index = 16, op = "==", value = 180 }, -- +140–180% Enhanced Defense
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      { index = 151, op = "==", param = 180, value = 6 }, -- Level 3–6 Patient Zero Aura
      { index = 39, op = "==", value = 25 }, -- All Resistances +15–25
      { index = 415, op = "==", value = 3 }, -- Weight +1–3
      --{ index = 20, op = "==", value = 20 }, -- 20% Increased Chance of Blocking
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
      --{ index = 83, op = "==", param = 2, value = 2 }, -- +2 to Necromancer Skill Levels
      --{ index = 188, op = "==", param = 16, value = 2 }, -- +2 to Curses (Necro only)
      --{ index = 16, op = "==", value = 200 }, -- +150–200% Enhanced Defense
      --{ index = 102, op = "==", value = 30 }, -- +30% Faster Block Rate
      --{ index = 20, op = "==", value = 40 }, -- 40% Increased Chance of Blocking
      --{ index = 1, op = "==", value = 20 }, -- +20 Energy
      --{ index = 27, op = "==", value = 33 }, -- Regenerate Mana 33%
      --{ index = 138, op = "==", value = 5 }, -- +5 Mana after kill
      --{ index = 39, op = "==", value = 40 }, -- All Resistances +40
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
      --{ index = 16, op = "==", value = 140 }, -- +130–140% Enhanced Defense
      { index = 188, op = "==", param = 41, value = 4 }, -- +2–4 Blaze Wolf Skills (Druid only)
      { index = 60, op = "==", value = 10 }, -- 7–10% Life stolen per hit
      { index = 119, op = "==", value = 120 }, -- 60–120% Bonus to Attack Rating
      { index = 135, op = "==", value = 33 }, -- 15–33% Chance of Open Wounds
      { index = 107, op = "==", param = 232, value = 2 }, -- +1–2 Feral Rage (Druid only)
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
      --{ index = 16, op = "==", value = 210 }, -- +170–210% Enhanced Defense
      { index = 188, op = "==", param = 40, value = 4 }, -- +2–4 Nature's Teachings (Druid only)
      { index = 107, op = "==", param = 247, value = 5 }, -- +3–5 Grizzly (Druid only)
      { index = 107, op = "==", param = 237, value = 5 }, -- +3–5 Fenris (Druid only)
      --{ index = 283, op = "==", value = 3 }, -- +3 Summoning Power
      --{ index = 281, op = "==", value = 25 }, -- Increase Raven Damage by 25%
      { index = 262, op = "==", value = 5 }, -- +3–5% Strenght
      { index = 263, op = "==", value = 5 }, -- +3–5% Dexterity
      { index = 264, op = "==", value = 5 }, -- +3–5% Vitality
      { index = 265, op = "==", value = 5 }, -- +3–5% Energy
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 481, -- Spirit Keeper
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 16, op = "==", value = 190 }, -- +170–190% Enhanced Defense
      --{ index = 99, op = "==", value = 20 }, -- +20% Faster Hit Recovery
      { index = 145, op = "==", value = 14 }, -- Lightning Absorb 9–14
      { index = 39, op = "==", value = 40 }, -- Fire Resist +30–40%
      { index = 148, op = "==", value = 25 }, -- Cold Absorb 15–25%
      --{ index = 46, op = "==", value = 10 }, -- +10% Max Poison Resist
      { index = 83, op = "==", param = 5, value = 2 }, -- +1–2 Druid Skill Levels
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
      --{ index = 16, op = "==", value = 150 }, -- +120–150% Enhanced Defense
      { index = 39, op = "==", value = 25 }, -- All Resistances +15–25
      --{ index = 107, op = "==", param = 42, value = 3 }, -- +3 Frost Bear Skills (Druid only)
      { index = 1, op = "==", value = 30 }, -- +20–30 Energy
      { index = 335, op = "==", value = 20 }, -- -10–20% Enemy Cold Resistance
      --{ index = 107, op = "==", param = 221, value = 7 }, -- +7 Murder Calling (Druid only)
      { index = 187, op = "==", value = 10 }, -- Enemy cold immunity reduced by 5–10%
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
      --{ index = 83, op = "==", param = 5, value = 2 }, -- +2 Druid Skill Levels
      --{ index = 107, op = "==", param = 41, value = 2 }, -- +2 Blaze Wolf Skills
      --{ index = 16, op = "==", value = 200 }, -- +150–200% Enhanced Defense
      --{ index = 99, op = "==", value = 30 }, -- +30% Faster Hit Recovery
      --{ index = 119, op = "==", value = 20 }, -- 20% Bonus to Attack Rating
      --{ index = 0, op = "==", value = 20 }, -- +20 Strength
      --{ index = 1, op = "==", value = 20 }, -- +20 Energy
      --{ index = 138, op = "==", value = 5 }, -- +5 Mana after kill
      --{ index = 39, op = "==", value = 30 }, -- All Resistances +30
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
      --{ index = 16, op = "==", value = 190 }, -- +170–190% Enhanced Defense
      { index = 83, op = "==", param = 4, value = 2 }, -- +1–2 Barbarian Skill Levels
      { index = 192, op = "==", value = 25 }, -- Enemy physical immunity reduced by 15–25%
      --{ index = 257, op = "==", value = 1 }, -- +1% IAS per Strength
      { index = 278, op = "==", value = 4 }, -- +2–4 Combat Power
      --{ index = 36, op = "==", value = 8 }, -- Damage Reduced by 8%
      --{ index = 415, op = "==", value = 3 }, -- Weight +3
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
      --{ index = 16, op = "==", value = 150 }, -- +120–150% Enhanced Defense
      { index = 188, op = "==", param = 34, value = 3 }, -- +2–3 Destructive Range (Barb only)
      { index = 0, op = "==", value = 15 }, -- +8–15 Strength
      { index = 2, op = "==", value = 15 }, -- +8–15 Dexterity
      { index = 3, op = "==", value = 15 }, -- +8–15 Vitality
      { index = 97, op = "==", param = 223, value = 6 }, -- +3–6 Werewolf
      --{ index = 204, op = "==", param = 237, value = 15 }, -- Level 15 Fenris (18 charges)
      { index = 97, op = "==", param = 227, value = 6 }, -- +3–6 Howl
      { index = 97, op = "==", param = 232, value = 6 }, -- +3–6 Feral Rage
      { index = 34, op = "==", value = 10 }, -- Damage Reduced by 8–10
      { index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 8–10
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
      --{ index = 16, op = "==", value = 160 }, -- +120–160% Enhanced Defense
      --{ index = 93, op = "==", value = 10 }, -- +10% IAS
      { index = 60, op = "==", value = 6 }, -- 3–6% Life stolen per hit
      --{ index = 78, op = "==", value = 69 }, -- Attacker Takes Damage of 69
      { index = 188, op = "==", param = 32, value = 3 }, -- +1–3 Close Quarters (Barb only)
      { index = 188, op = "==", param = 33, value = 3 }, -- +1–3 War Masteries (Barb only)
      { index = 188, op = "==", param = 34, value = 3 }, -- +1–3 Destructive Range (Barb only)
      { index = 151, op = "==", param = 103, value = 20 }, -- Level 15–20 Thorns Aura
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
      --{ index = 16, op = "==", value = 170 }, -- +140–170% Enhanced Defense
      --{ index = 107, op = "==", param = 33, value = 1 }, -- +1 War Masteries (Barb only)
      --{ index = 83, op = "==", param = 4, value = 2 }, -- +2 Barbarian Skill Levels
      --{ index = 99, op = "==", value = 20 }, -- +20% Faster Hit Recovery
      { index = 74, op = "==", value = 23 }, -- Replenish Life +15–23
      { index = 107, op = "==", param = 149, value = 3 }, -- +2–3 War Stance
      { index = 107, op = "==", param = 138, value = 3 }, -- +2–3 Shout
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
      --{ index = 16, op = "==", value = 260 }, -- +220–260% Enhanced Defense
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      --{ index = 329, op = "==", value = 20 }, -- +20% Fire Skill Damage
      --{ index = 330, op = "==", value = 20 }, -- +20% Lightning Skill Damage
      --{ index = 331, op = "==", value = 20 }, -- +20% Cold Skill Damage
      --{ index = 333, op = "==", value = 20 }, -- -20% Enemy Fire Res
      --{ index = 334, op = "==", value = 20 }, -- -20% Enemy Lightning Res
      --{ index = 335, op = "==", value = 20 }, -- -20% Enemy Cold Res
      --{ index = 136, op = "==", value = 1 }, -- 1% Chance of Crushing Blow
      { index = 93, op = "==", value = 25 }, -- +15–25% IAS
      { index = 7, op = "==", value = 100*256 }, -- +50–100 Life
      { index = 60, op = "==", value = 8 }, -- 5–8% Life stolen per hit
      { index = 62, op = "==", value = 8 }, -- 5–8% Mana stolen per hit
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
      --{ index = 16, op = "==", value = 210 }, -- +180–210% Enhanced Defense
      { index = 83, op = "==", param = 3, value = 2 }, -- +1–2 Paladin Skill Levels
      --{ index = 329, op = "==", value = 20 }, -- +20% Fire Skill Damage
      --{ index = 330, op = "==", value = 20 }, -- +20% Lightning Skill Damage
      --{ index = 331, op = "==", value = 20 }, -- +20% Cold Skill Damage
      { index = 286, op = "==", value = 30 }, -- Reduce Cooldowns 20–30%
      --{ index = 39, op = "==", value = 35 }, -- All Resistances +35
      --{ index = 91, op = "==", value = -15 }, -- Requirements -15%
      { index = 187, op = "==", value = 15 }, -- Enemy cold immunity -5–15%
      { index = 189, op = "==", value = 15 }, -- Enemy fire immunity -5–15%
      { index = 190, op = "==", value = 15 }, -- Enemy lightning immunity -5–15%
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
      --{ index = 16, op = "==", value = 210 }, -- +180–210% Enhanced Defense
      --{ index = 102, op = "==", value = 30 }, -- +30% Faster Block Rate
      { index = 83, op = "==", param = 3, value = 2 }, -- +1–2 Paladin Skill Levels
      --{ index = 20, op = "==", value = 20 }, -- 20% Increased Chance of Blocking
      { index = 35, op = "==", value = 9 }, -- Magic Damage Reduced by 5–9
      { index = 119, op = "==", value = 75 }, -- +40–75% Bonus to Attack Rating
      --{ index = 25, op = "==", value = 75 }, -- +40–75% Enhanced Damage
      { index = 388, op = "==", value = 61 }, -- Smite: 60–61
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 491, -- Faitful Guardian
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 16, op = "==", value = 210 }, -- +180–210% Enhanced Defense
      --{ index = 20, op = "==", value = 20 }, -- 20% Increased Chance of Blocking
      --{ index = 102, op = "==", value = 20 }, -- 20% Faster Block Rate
      { index = 107, op = "==", param = 96, value = 5 }, -- +3–5 Sacrifice (Paladin only)
      { index = 107, op = "==", param = 119, value = 5 }, -- +3–5 Faithful Follower (Paladin only)
      --{ index = 119, op = "==", value = 150 }, -- +150% Bonus to Attack Rating
      { index = 388, op = "==", value = 76 }, -- Smite: 75–76
      { index = 83, op = "==", param = 3, value = 2 }, -- +1–2 Paladin Skill Levels
      { index = 111, op = "==", value = 75 }, -- Damage +50–75
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
      --{ index = 16, op = "==", value = 200 }, -- +170–200% Enhanced Defense
      { index = 142, op = "==", value = 20 }, -- Fire Absorb 10–20%
      --{ index = 40, op = "==", value = 5 }, -- +5% Max Fire Resist
      { index = 0, op = "==", value = 25 }, -- +15–25 Strength
      --{ index = 48, op = "==", value = 211 }, -- Adds 211 Fire Damage (min)
      --{ index = 49, op = "==", value = 371 }, -- Adds 371 Fire Damage (max)
      --{ index = 107, op = "==", param = 62, value = 10 }, -- +10 Hydra
      --{ index = 329, op = "==", value = 15 }, -- +15% Fire Skill Damage
      { index = 388, op = "==", value = 81 }, -- Smite: 80–81
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
      --{ index = 97, op = "==", param = 221, value = 1 }, -- +1 Shield of Forsaken Light
      { index = 0, op = "==", value = 30 }, -- +20–30 all Attributes (Str)
      --{ index = 60, op = "==", value = 10 }, -- 10% Life stolen per hit
      --{ index = 62, op = "==", value = 10 }, -- 10% Mana stolen per hit
      { index = 83, op = "==", param = 3, value = 3 }, -- +2–3 Paladin Skill Levels
      --{ index = 153, op = "==", value = 1 }, -- Cannot Be Frozen
      --{ index = 201, op = "==", value = 10 }, -- 25% ctc lvl 10 Cyclone Armor
      { index = 262, op = "==", value = 10 }, -- +5–10% Strenght
      { index = 263, op = "==", value = 10 }, -- +5–10% Dexterity
      { index = 264, op = "==", value = 10 }, -- +5–10% Vitality
      { index = 265, op = "==", value = 10 }, -- +5–10% Energy
      { index = 388, op = "==", value = 111 }, -- Smite: 110–111
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
      { index = 39, op = "==", value = 55 }, -- All Resistances +30–55
      --{ index = 283, op = "==", value = 2 }, -- +2 Summoning Power
      { index = 107, op = "==", param = 87, value = 4 }, -- +2–4 Decrepify (Necro only)
      { index = 264, op = "==", value = 5 }, -- +3–5% Vitality %
      { index = 83, op = "==", param = 2, value = 2 }, -- +1–2 Necromancer Skill Levels
      --{ index = 415, op = "==", value = 4 }, -- Weight +4
      --{ index = 284, op = "==", value = 40 }, -- Summon Max Life +40%
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
      --{ index = 16, op = "==", value = 175 }, -- +150–175% Enhanced Defense
      { index = 188, op = "==", param = 18, value = 2 }, -- +1–2 Summoning Skills (Necro)
      { index = 288, op = "==", value = 35 }, -- +25–35% Bone Skill Damage
      { index = 188, op = "==", param = 17, value = 2 }, -- +1–2 Poison & Bone Skills
      { index = 283, op = "==", value = 3 }, -- +1–3 Summoning Power
      { index = 107, op = "==", param = 70, value = 6 }, -- +3–6 Raise Skeleton
      { index = 107, op = "==", param = 84, value = 6 }, -- +3–6 Bone Spear
      --{ index = 105, op = "==", value = 1 }, -- +1% FCR (Energy)
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
      --{ index = 16, op = "==", value = 175 }, -- +150–175% Enhanced Defense
      { index = 188, op = "==", param = 18, value = 2 }, -- +1–2 Summoning Skills (Necro)
      { index = 283, op = "==", value = 5 }, -- +3–5 Summoning Power
      { index = 107, op = "==", param = 79, value = 5 }, -- +3–5 Raise Skeletal Archers
      --{ index = 20, op = "==", value = 30 }, -- 30% Chance to Block
      --{ index = 36, op = "==", value = 10 }, -- Damage Reduced by 10%
      --{ index = 46, op = "==", value = 5 }, -- +5% Max Poison Resist
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
      --{ index = 16, op = "==", value = 150 }, -- +120–150% Enhanced Defense
      --{ index = 96, op = "==", value = 20 }, -- +20% Faster Run/Walk
      --{ index = 201, op = "==", value = 3 }, -- 15% ctc lvl 3 Terror
      { index = 83, op = "==", param = 2, value = 3 }, -- +2–3 Necromancer Skill Levels
      { index = 39, op = "==", value = 30 }, -- All Resistances +20–30
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
      --{ index = 16, op = "==", value = 180 }, -- +140–180% Enhanced Defense
      --{ index = 105, op = "==", value = 30 }, -- +30% Faster Cast Rate
      --{ index = 77, op = "==", value = 10 }, -- +10% Max Mana
      { index = 188, op = "==", param = 16, value = 3 }, -- +1–3 Curses (Necro only)
      { index = 188, op = "==", param = 17, value = 3 }, -- +1–3 Poison & Bone (Necro only)
      { index = 188, op = "==", param = 18, value = 3 }, -- +1–3 Summoning (Necro only)
      { index = 97, op = "==", param = 181, value = 6 }, -- +1–6 Skull Mob
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
  --ALL UNIQUES MAX STATS Index 501-550
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
      --{ index = 16, op = "==", value = 300 }, -- +250–300% Enhanced Defense
      --{ index = 201, op = "==", value = 36 }, -- 5% ctc lvl 36 Fissure
      --{ index = 136, op = "==", value = 15 }, -- 15% Chance of Crushing Blow
      --{ index = 93, op = "==", value = 10 }, -- +10% IAS
      --{ index = 204, op = "==", param = 234, value = 14 }, -- Level 14 Volcano (30 charges)
      { index = 188, op = "==", param = 41, value = 5 }, -- +1–5 Frost Bear Skills (Druid only)
      --{ index = 105, op = "==", value = 10 }, -- +10% Faster Cast Rate
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
      --{ index = 16, op = "==", value = 100 }, -- +70–100% Enhanced Defense
      --{ index = 96, op = "==", value = 30 }, -- +30% Faster Run/Walk
      --{ index = 99, op = "==", value = 30 }, -- +30% Faster Hit Recovery
      { index = 2, op = "==", value = 25 }, -- +15–25 Dexterity
      { index = 188, op = "==", param = 49, value = 2 }, -- +1–2 Shadow Disciplines (Assassin only)
      --{ index = 91, op = "==", value = -20 }, -- Requirements -20%
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
      --{ index = 16, op = "==", value = 270 }, -- +220–270% Enhanced Defense
      --{ index = 99, op = "==", value = 20 }, -- +20% Faster Hit Recovery
      { index = 32, op = "==", value = 300 }, -- +250–300 Defense vs Missile
      --{ index = 25, op = "==", value = 50 }, -- +40–50% Enhanced Damage
      { index = 0, op = "==", value = 25 }, -- +15–25 Strength
      { index = 3, op = "==", value = 25 }, -- +15–25 Vitality
      { index = 83, op = "==", param = 3, value = 2 }, -- +1–2 Paladin Skill Levels
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
      --{ index = 16, op = "==", value = 270 }, -- +220–270% Enhanced Defense
      { index = 83, op = "==", param = 5, value = 2 }, -- +1–2 Druid Skill Levels
      { index = 283, op = "==", value = 2 }, -- +1–2 Summoning Power
      { index = 284, op = "==", value = 75 }, -- Summon Max Life +50–75%
      --{ index = 281, op = "==", value = 20 }, -- Summon Movement Speed +20%
      { index = 3, op = "==", value = 30 }, -- +20–30 Vitality
      --{ index = 401, op = "==", value = 35 }, -- Increase Buff Durations +35%
      { index = 403, op = "==", value = 40 }, -- Raven Damage +30–40%
      { index = 332, op = "==", value = 15 }, -- +15–25% Poison Skill Damage
      { index = 357, op = "==", value = 25 }, -- +15–25% Magic Skill Damage
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
      { index = 418, op = "==", value = 5 }, -- Increase Fireball explosion radius +3–5
      { index = 107, op = "==", param = 41, value = 7 }, -- +3–7 Fire Ball (Sorceress only)
      { index = 189, op = "==", value = 20 }, -- Enemy fire immunity reduced by 10–20%
      --{ index = 105, op = "==", value = 25 }, -- +25% Faster Cast Rate
      --{ index = 329, op = "==", value = 15 }, -- +15% Fire Skill Damage
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
      { index = 2, op = ">=", value = 15 }, -- +5-15 Dextirity
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 521, -- Pinpoint
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 93, op = "==", value = 20 }, -- +20% Increased Attack Speed
      --{ index = 120, op = "==", value = 1 }, -- 100% Chance to not consume Quantity
      --{ index = 129, op = "==", value = 5 }, -- Hit Blinds Target +4–5
      --{ index = 25, op = "==", value = 45 }, -- +30–45% Enhanced Damage
      { index = 39, op = "==", value = 10 }, -- All Resistances +7–10
      --{ index = 96, op = "==", value = 10 }, -- +10% Faster Run/Walk
      { index = 19, op = "==", value = 180 }, -- +60–180 Attack Rating
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
      --{ index = 48, op = "==", value = 3 }, -- Adds 3 Fire Damage
      --{ index = 49, op = "==", value = 6 }, -- Adds 6 Fire Damage
      --{ index = 40, op = "==", value = 10 }, -- +10% Max Fire Resist
      --{ index = 39, op = "==", value = 50 }, -- Fire Resist +50%
      --{ index = 89, op = "==", value = 3 }, -- +3 Light Radius
      --{ index = 99, op = "==", value = 20 }, -- +20% Faster Hit Recovery
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
      { index = 32, op = "==", value = 40 }, -- +10–40 Defense vs Missile
      { index = 89, op = "==", value = 5 }, -- +1–5 Light Radius
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      { index = 60, op = "==", value = 7 }, -- 3–7% Life stolen per hit
      --{ index = 48, op = "==", value = 1 }, -- +1 Min Cold Damage
      --{ index = 49, op = "==", value = 3 }, -- +3 Max Cold Damage
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
      --{ index = 0, op = "==", value = 10 }, -- +10 Strength (all attribute)
      --{ index = 89, op = "==", value = 10 }, -- +10 Light Radius
      --{ index = 119, op = "==", value = 10 }, -- 10% Bonus to Attack Rating
      --{ index = 39, op = "==", value = 10 }, -- All Resistances +10
      --{ index = 16, op = "==", value = 10 }, -- +10% Enhanced Defense
      --{ index = 286, op = "==", value = 10 }, -- Reduce Cooldowns 10%
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
      --{ index = 35, op = "==", value = 3 }, -- Magic Damage Reduced by 3
      --{ index = 78, op = "==", value = 3 }, -- Attacker Takes Damage of 3
      { index = 19, op = "==", value = 75 }, -- +50–75 Attack Rating
      { index = 80, op = "==", value = 30 }, -- 15–30% Magic Find
      { index = 99, op = "==", value = 10 }, -- +6–10% Faster Hit Recovery
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
      { index = 62, op = "==", value = 7 }, -- 4–7% Mana stolen per hit
      { index = 74, op = "==", value = 8 }, -- Replenish Life +5–8
      --{ index = 7, op = "==", value = 20*256 }, -- +20 Life
      --{ index = 27, op = "==", value = 20 }, -- Regenerate Mana 20%
      { index = 86, op = "==", value = 5 }, -- +3–5 Life after kill
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
      --{ index = 9, op = "==", value = 20*256 }, -- +20 Mana
      --{ index = 77, op = "==", value = 25 }, -- +25% Max Mana
      --{ index = 48, op = "==", value = 1 }, -- +1 Min Lightning Damage
      --{ index = 49, op = "==", value = 12 }, -- +12 Max Lightning Damage
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
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
      --{ index = 216, op = "==", value = 2048*0.5 }, -- +0.5 Life per level
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      { index = 60, op = "==", value = 5 }, -- 3–5% Life stolen per hit
      { index = 138, op = "==", value = 8 }, -- +2–8 Mana after kill
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
      --{ index = 96, op = "==", value = 30 }, -- +30% Faster Run/Walk
      --{ index = 93, op = "==", value = 20 }, -- +20% Increased Attack Speed
      --{ index = 31, op = "==", value = 100 }, -- +100 Defense
      --{ index = 32, op = "==", value = 100 }, -- +100 Defense vs Missile
      --{ index = 2, op = "==", value = 25 }, -- +25 Dexterity
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
      --{ index = 143, op = "==", value = 8*0.75 }, -- Absorbs 0.75 Fire Damage per level
      --{ index = 89, op = "==", value = 4 }, -- +4 Light Radius
      --{ index = 201, op = "==", value = 20 }, -- 2% ctc lvl 19–20 Meteor
      --{ index = 48, op = "==", value = 24 }, -- Adds 24 Fire Damage
      --{ index = 49, op = "==", value = 48 }, -- Adds 48 Fire Damage
      --{ index = 107, op = "==", param = 52, value = 2 }, -- +2 to Fire Skills
      --{ index = 74, op = "==", value = 10 }, -- Replenish Life +10
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
      { index = 62, op = "==", value = 15 }, -- 11–15% Mana stolen per hit
      --{ index = 35, op = "==", value = 10 }, -- Magic Damage Reduced by 10
      --{ index = 116, op = "==", value = 10 }, -- 10% Damage Taken Goes To Mana
      --{ index = 89, op = "==", value = -2 }, -- -2 Light Radius
      --{ index = 9, op = "==", value = 45*256 }, -- +45 Mana
      { index = 60, op = "==", value = 6 }, -- 3–6% Life stolen per hit
      { index = 93, op = "==", value = 20 }, -- +10–20% Increased Attack Speed
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
      --{ index = 127, op = "==", value = 2 }, -- +2 to All Skills
      { index = 39, op = "==", value = 30 }, -- All Resistances +20–30
      --{ index = 0, op = "==", value = 5 }, -- +5 Strength (all attribute)
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
      --{ index = 48, op = "==", value = 40 }, -- +40 Poison Damage over time
      --{ index = 45, op = "==", value = 75 }, -- Poison Resist +75%
      --{ index = 89, op = "==", value = 3 }, -- +3 Light Radius
      --{ index = 78, op = "==", value = 5 }, -- Attacker Takes Damage of 5
      --{ index = 201, op = "==", value = 2 }, -- 5% ctc lvl 2 Amplify Damage
      --{ index = 119, op = "==", value = 20 }, -- 20% Bonus to Attack Rating
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
      --{ index = 79, op = "==", value = 25 }, -- 25% Extra Gold
      { index = 80, op = "==", value = 20 }, -- 10–20% Magic Find
      { index = 96, op = "==", value = 15 }, -- +10–15% Faster Run/Walk
      --{ index = 7, op = "==", value = 40*256 }, -- +40 Life
      { index = 35, op = "==", value = 15 }, -- Magic Damage Reduced by 12–15
      --{ index = 143, op = "==", value = 15 }, -- Fire Absorb 15%
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
      --{ index = 153, op = "==", value = 1 }, -- Cannot Be Frozen
      --{ index = 48, op = "==", value = 15 }, -- Adds 15 Cold Damage
      --{ index = 49, op = "==", value = 45 }, -- Adds 45 Cold Damage
      --{ index = 149, op = "==", value = 20 }, -- Cold Absorb 20%
      --{ index = 9, op = "==", value = 40*256 }, -- +40 Mana
      { index = 2, op = "==", value = 20 }, -- +15–20 Dexterity
      { index = 19, op = "==", value = 250 }, -- +150–250 Attack Rating
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
      --{ index = 41, op = "==", value = 35 }, -- Lightning Resist +35%
      --{ index = 48, op = "==", value = 1 }, -- Adds 1 Lightning Damage
      --{ index = 49, op = "==", value = 30 }, -- Adds 30 Lightning Damage
      --{ index = 93, op = "==", value = 20 }, -- +20% IAS
      --{ index = 127, op = "==", value = 1 }, -- +1 All Skills
      --{ index = 258, op = "==", value = 0.375 }, -- 0.375% Deadly Strike per level
      --{ index = 128, op = "==", value = 15 }, -- Attacker Takes Lightning Damage 15
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
      { index = 39, op = "==", value = 25 }, -- All Resistances +15–25
      --{ index = 201, op = "==", value = 2 }, -- 10% ctc lvl 2 Iron Maiden
      --{ index = 0, op = "==", value = 12 }, -- +12 Strength (all attribute)
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
      --{ index = 117, op = "==", value = 1 }, -- Prevent Monster Heal
      --{ index = 108, op = "==", value = 1 }, -- Slain Monsters Rest in Peace
      { index = 34, op = "==", value = 11 }, -- Damage Reduced by 7–11
      { index = 45, op = "==", value = 30 }, -- Poison Resist +20–30%
      --{ index = 204, op = "==", param = 160, value = 5 }, -- Level 5 Oak Sage (27 charges)
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
      --{ index = 127, op = "==", value = 2 }, -- +2 to All Skills
      { index = 188, op = "==", param = 26, value = 2 }, -- +1–2 Ascending Leadership (Paladin only)
      { index = 121, op = "==", value = 50 }, -- +25–50% Damage to Demons
      { index = 122, op = "==", value = 50 }, -- +25–50% Damage to Undead
      { index = 123, op = "==", value = 250 }, -- +150–250 AR vs Demons
      { index = 124, op = "==", value = 250 }, -- +150–250 AR vs Undead
      --{ index = 89, op = "==", value = 2 }, -- +2 Light Radius
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
      { index = 144, op = "==", value = 20 }, -- Lightning Absorb 10–20%
      --{ index = 201, op = "==", value = 16 }, -- 10% ctc lvl 16 Lightning
      { index = 80, op = "==", value = 20 }, -- 10–20% Magic Find
      --{ index = 204, op = "==", param = 160, value = 2 }, -- Level 2 Oak Sage (15 charges)
      --{ index = 204, op = "==", param = 168, value = 5 }, -- Level 5 Heart of Wolverine (13 charges)
      --{ index = 204, op = "==", param = 167, value = 7 }, -- Level 7 Spirit of Barbs (11 charges)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 541, -- Constricting Ring
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 39, op = ">=", value = 40 }, -- All Resistances +15–40
      --{ index = 74, op = "==", value = -25 }, -- Replenish Life -25
      { index = 80, op = ">=", value = 70 }, -- 25–70% Magic Find
      --{ index = 40, op = "==", value = 5 }, -- +5% to All Maximum Resistances
      { index = 76, op = "==", value = 10 }, -- Increase Max Life -10–+10%
      { index = 77, op = "==", value = 10 }, -- Increase Max Mana -10–+10%
      { index = 189, op = "==", value = 25 }, -- Enemy fire immunity reduced by 20–25%
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
      { index = 80, op = "==", value = 40 }, -- 20–40% Magic Find
      { index = 79, op = "==", value = 40 }, -- 20–40% Extra Gold
      { index = 0, op = "==", value = 15 }, -- +5–15 Strength (all attribute)
      --{ index = 415, op = "==", value = 3 }, -- Charm Weight: 3
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
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      { index = 0, op = "==", value = 20 }, -- +10–20 Strength (all attribute)
      { index = 39, op = "==", value = 20 }, -- All Resistances +10–20
      { index = 85, op = "==", value = 10 }, -- +5–10% Experience Gained
      --{ index = 415, op = "==", value = 2 }, -- Charm Weight: 2
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
      { index = 32, op = "==", value = 160 }, -- +100–160 Defense vs Missile
      { index = 60, op = "==", value = 9 }, -- 6–9% Life stolen per hit
      --{ index = 45, op = "==", value = 55 }, -- Poison Resist +55%
      --{ index = 201, op = "==", value = 10 }, -- 10% ctc lvl 10 Poison Nova
      --{ index = 204, op = "==", param = 73, value = 15 }, -- Level 15 Blight Strike (60 charges)
      --{ index = 201, op = "==", value = 13 }, -- 8% ctc lvl 13 Twister
      --{ index = 116, op = "==", value = 10 }, -- 10% Damage Taken Goes To Mana
      --{ index = 19, op = "==", value = 100 }, -- +100 Attack Rating
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
      { index = 31, op = "==", value = 350 }, -- +300–350 Defense
      { index = 39, op = "==", value = 35 }, -- All Resistances +25–35
      { index = 19, op = "==", value = 450 }, -- +400–450 Attack Rating
      --{ index = 204, op = "==", param = 90, value = 22 }, -- Level 22 Iron Golem (11 charges)
      { index = 283, op = "==", value = 2 }, -- +1–2 Summoning Power
      { index = 105, op = "==", value = 15 }, -- +10–15% Faster Cast Rate
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
      --{ index = 48, op = "==", value = 1 }, -- Adds 1 Lightning Damage
      --{ index = 49, op = "==", value = 74 }, -- Adds 74 Lightning Damage
      { index = 334, op = "==", value = 5 }, -- -3–5% Enemy Lightning Resistance
      { index = 330, op = "==", value = 5 }, -- +3–5% Lightning Skill Damage
      --{ index = 190, op = "==", value = 5 }, -- Enemy lightning immunity reduced by 5%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 551-600
    {
      codes = "allitems",
      quality = "7",
      index = 551, -- Cold Facet
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 48, op = "==", value = 24 }, -- Adds 24 Cold Damage (min)
      --{ index = 49, op = "==", value = 38 }, -- Adds 38 Cold Damage (max)
      { index = 335, op = "==", value = 5 }, -- -3–5% Enemy Cold Resistance
      { index = 331, op = "==", value = 5 }, -- +3–5% Cold Skill Damage
      --{ index = 187, op = "==", value = 5 }, -- Enemy cold immunity reduced by 5%
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
      --{ index = 48, op = "==", value = 17 }, -- Adds 17 Fire Damage (min)
      --{ index = 49, op = "==", value = 45 }, -- Adds 45 Fire Damage (max)
      { index = 333, op = "==", value = 5 }, -- -3–5% Enemy Fire Resistance
      { index = 329, op = "==", value = 5 }, -- +3–5% Fire Skill Damage
      --{ index = 189, op = "==", value = 5 }, -- Enemy fire immunity reduced by 5%
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
      --{ index = 48, op = "==", value = 37 }, -- +37 Poison Damage over 2 sec
      { index = 332, op = "==", value = 5 }, -- +3–5% Poison Skill Damage
      { index = 336, op = "==", value = 5 }, -- -3–5% Enemy Poison Resistance
      --{ index = 191, op = "==", value = 5 }, -- Enemy poison immunity reduced by 5%
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
      --{ index = 111, op = "==", value = 5 }, -- Adds 5 Damage
      --{ index = 25, op = "==", value = 10 }, -- +5–10% Enhanced Damage
      --{ index = 192, op = "==", value = 5 }, -- Enemy physical immunity reduced by 5%
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 555, -- Magic Facet (blank)
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
      --{ index = 83, op = "==", param = 0, value = 3 }, -- +3 to Random Class Skills
      { index = 0, op = "==", value = 20 }, -- +10–20 Strength (all attribute)
      { index = 39, op = "==", value = 20 }, -- All Resistances +10–20
      --{ index = 89, op = "==", value = 8 }, -- +8 Light Radius
      --{ index = 201, op = "==", value = 10 }, -- 3% ctc lvl 10 Tornado
      --{ index = 204, op = "==", param = 62, value = 30 }, -- Level 30 Hydra (10 charges)
      --{ index = 415, op = "==", value = 4 }, -- Charm Weight: 4
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
      --{ index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      --{ index = 27, op = "==", value = 25 }, -- Regenerate Mana 25%
      --{ index = 407, op = "==", value = 1 }, -- +1 to Lightning Skills
      --{ index = 48, op = "==", value = 1 }, -- Adds 1 Lightning Damage
      --{ index = 49, op = "==", value = 6 }, -- Adds 6 Lightning Damage
      --{ index = 16, op = "==", value = 30 }, -- +20–30% Enhanced Defense
      --{ index = 31, op = "==", value = 10 }, -- +10 Defense
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 561, -- Magefist (Cold)
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      --{ index = 27, op = "==", value = 25 }, -- Regenerate Mana 25%
      --{ index = 331, op = "==", value = 1 }, -- +1 to Cold Skills
      --{ index = 48, op = "==", value = 1 }, -- Adds 1 Cold Damage
      --{ index = 49, op = "==", value = 6 }, -- Adds 6 Cold Damage
      --{ index = 16, op = "==", value = 30 }, -- +20–30% Enhanced Defense
      --{ index = 31, op = "==", value = 10 }, -- +10 Defense
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
      --{ index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      --{ index = 27, op = "==", value = 25 }, -- Regenerate Mana 25%
      --{ index = 332, op = "==", value = 1 }, -- +1 to Poison Skills
      --{ index = 48, op = "==", value = 1 }, -- +1 Poison Damage over time
      --{ index = 49, op = "==", value = 6 }, -- +6 Poison Damage over time
      --{ index = 16, op = "==", value = 30 }, -- +20–30% Enhanced Defense
      --{ index = 31, op = "==", value = 10 }, -- +10 Defense
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
      --{ index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      --{ index = 27, op = "==", value = 25 }, -- Regenerate Mana 25%
      --{ index = 357, op = "==", value = 1 }, -- +1 to Magic Skills
      --{ index = 48, op = "==", value = 1 }, -- Adds 1 Magic Damage
      --{ index = 49, op = "==", value = 6 }, -- Adds 6 Magic Damage
      --{ index = 16, op = "==", value = 30 }, -- +20–30% Enhanced Defense
      --{ index = 31, op = "==", value = 10 }, -- +10 Defense
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
      { index = 97, op = "==", param = 648, value = 15 }, -- +10–15 Tri-Hydra
      --{ index = 127, op = "==", value = 4 }, -- +4 to All Skills
      { index = 265, op = "==", value = 20 }, -- +10–20% Energy %
      { index = 187, op = "==", value = 50 }, -- Enemy cold immunity -35–50%
      { index = 189, op = "==", value = 50 }, -- Enemy fire immunity -35–50%
      { index = 190, op = "==", value = 50 }, -- Enemy lightning immunity -35–50%
      --{ index = 105, op = "==", value = 40 }, -- +40% Faster Cast Rate
      { index = 77, op = "==", value = 25 }, -- +20–25% Max Mana
      --{ index = 107, op = "==", param = 52, value = 5 }, -- +5 random Sorc skill (Firestorm–Cold Mastery)
      --{ index = 281, op = "==", value = 50 }, -- Summon Damage +50%
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
      --{ index = 107, op = "==", param = 221, value = 5 }, -- +5 Spirit's Retribution
      { index = 19, op = "==", value = 80 }, -- +50–80 Attack Rating
      { index = 119, op = "==", value = 20 }, -- 15–20% Bonus to Attack Rating
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      { index = 189, op = "==", value = 50 }, -- Enemy fire immunity -30–50%
      { index = 333, op = "==", value = 15 }, -- -10–15% Enemy Fire Res
      { index = 334, op = "==", value = 15 }, -- -10–15% Enemy Lightning Res
      { index = 335, op = "==", value = 15 }, -- -10–15% Enemy Cold Res
      { index = 336, op = "==", value = 15 }, -- -10–15% Enemy Poison Res
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
      { index = 188, op = "==", param = 0, value = 2 }, -- +1–2 Bow & Crossbow (Amazon)
      --{ index = 120, op = "==", value = 1 }, -- Ignore Target's Defense
      { index = 119, op = "==", value = 30 }, -- 20–30% Bonus to Attack Rating
      { index = 93, op = "==", value = 25 }, -- +10–25% IAS
      { index = 138, op = "==", value = 5 }, -- +3–5 Mana after kill
      --{ index = 221, op = "==", value = 8*0.375 }, -- +0.375 Dex per level
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
      --{ index = 83, op = "==", param = 1, value = 1 }, -- +1 Amazon Skill Levels
      --{ index = 107, op = "==", param = 183, value = 3 }, -- +3 random Amazon skill (Magic Arrow–Lightning Fury)
      { index = 119, op = "==", value = 30 }, -- 20–30% Bonus to Attack Rating
      { index = 93, op = "==", value = 20 }, -- +10–20% IAS
      { index = 138, op = "==", value = 4 }, -- +2–4 Mana after kill
      --{ index = 221, op = "==", value = 8*0.25 }, -- +0.25 Dex per level
      { index = 330, op = "==", value = 15 }, -- +5–15% Lightning Skill Damage
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
      { index = 415, op = "==", value = 5 }, -- Increase charm max weight by 3–5
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      { index = 105, op = "==", value = 20 }, -- +10–20% Faster Cast Rate
      --{ index = 96, op = "==", value = 30 }, -- +30% Faster Run/Walk
      --{ index = 107, op = "==", param = 6, value = 1 }, -- +1 Cloak of Shadows
      { index = 39, op = "==", value = 20 }, -- All Resistances +10–20
      --{ index = 80, op = "==", value = 0.5 }, -- +0.5% MF per level
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
      --{ index = 0, op = "==", value = 20 }, -- +20 Strength (all attribute)
      --{ index = 415, op = "==", value = 2 }, -- Charm Weight: 2
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
      --{ index = 39, op = "==", value = 15 }, -- All Resistances +15
      --{ index = 415, op = "==", value = 2 }, -- Charm Weight: 2
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
      --{ index = 36, op = "==", value = 5 }, -- Damage Reduced by 5%
      --{ index = 415, op = "==", value = 2 }, -- Charm Weight: 2
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
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      --{ index = 415, op = "==", value = 2 }, -- Charm Weight: 2
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
      --{ index = 262, op = "==", value = 3 }, -- Increases All Stats by 3%
      --{ index = 415, op = "==", value = 2 }, -- Charm Weight: 2
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
      --{ index = 333, op = "==", value = 10 }, -- -10% Enemy Fire Res (all ress)
      --{ index = 415, op = "==", value = 2 }, -- Charm Weight: 2
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
      --{ index = 192, op = "==", value = 10 }, -- All enemy immunities reduced by 10%
      --{ index = 415, op = "==", value = 2 }, -- Charm Weight: 2
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
      --{ index = 0, op = "==", value = 25 }, -- +25 Strength (all attribute)
      --{ index = 39, op = "==", value = 25 }, -- All Resistances +25
      --{ index = 36, op = "==", value = 10 }, -- Damage Reduced by 10%
      --{ index = 127, op = "==", value = 5 }, -- +5 to All Skills
      --{ index = 262, op = "==", value = 5 }, -- Increases All Stats by 5%
      --{ index = 333, op = "==", value = 20 }, -- -20% Enemy Fire Res (all enemy res)
      --{ index = 192, op = "==", value = 20 }, -- All enemy immunities reduced by 20%
      --{ index = 286, op = "==", value = 25 }, -- Reduce Cooldowns by 25%
      --{ index = 151, op = "==", param = 107, value = 6 }, -- Level 6 Vigor Aura
      --{ index = 201, op = "==", value = 5 }, -- 75% ctc lvl 5 Blood Shield
      --{ index = 119, op = "==", value = 150 }, -- +150% Bonus to Attack Rating
      --{ index = 415, op = "==", value = 20 }, -- Charm Weight: 20
      },
      border = {165, 146, 099, 230},
      --notify = "SINS!",
      --suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 581, -- Spirit Striker
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      --{ index = 201, op = "==", value = 10 }, -- 20% ctc lvl 10 Bone Spirit
      --{ index = 120, op = "==", value = 1 }, -- 100% Chance to not consume Quantity
      { index = 93, op = "==", value = 20 }, -- +10–20% IAS
      { index = 62, op = "==", value = 8 }, -- 5–8% Mana stolen per hit
      --{ index = 19, op = "==", value = 150 }, -- +150 Attack Rating
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
      --{ index = 201, op = "==", value = 15 }, -- 20% ctc lvl 15 Nova
      --{ index = 120, op = "==", value = 1 }, -- 100% Chance to not consume Quantity
      { index = 93, op = "==", value = 25 }, -- +15–25% IAS
      { index = 334, op = "==", value = 15 }, -- -10–15% Enemy Lightning Res
      { index = 278, op = "==", value = 2 }, -- +1–2 Combat Power
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
      --{ index = 201, op = "==", value = 20 }, -- 20% ctc lvl 20 Enchant on kill
      --{ index = 120, op = "==", value = 1 }, -- 100% Chance to not consume Quantity
      { index = 93, op = "==", value = 30 }, -- +20–30% IAS
      { index = 189, op = "==", value = 20 }, -- Enemy fire immunity -10–20%
      --{ index = 83, op = "==", param = 1, value = 1 }, -- +1 Amazon Skill Levels
      { index = 276, op = "==", value = 3 }, -- +1–3 Spell Power
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
      --{ index = 201, op = "==", value = 25 }, -- 20% ctc lvl 25 Bolt Nova
      --{ index = 120, op = "==", value = 1 }, -- 100% Chance to not consume Quantity
      { index = 93, op = "==", value = 30 }, -- +20–30% IAS
      { index = 357, op = "==", value = 30 }, -- +20–30% Magic Skill Damage
      { index = 193, op = "==", value = 30 }, -- Enemy magic immunity -20–30%
      --{ index = 258, op = "==", value = 3 }, -- +3% Deadly Strike (Dex)
      --{ index = 119, op = "==", value = 200 }, -- +200% Bonus to Attack Rating
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
      { index = 427, op = "==", value = 35 }, -- Increase Buff Durations 25–35%
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      --{ index = 107, op = "==", param = 52, value = 1 }, -- +1 Warmth
      { index = 107, op = "==", param = 58, value = 5 }, -- +3–5 Energy Shield
      --{ index = 221, op = "==", value = 8*0.375 }, -- +0.375 Energy per level
      { index = 286, op = "==", value = 35 }, -- Reduce Cooldowns 25–35%
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
      --{ index = 201, op = "==", value = 10 }, -- 20% ctc lvl 10 Tri-Hydra
      { index = 329, op = "==", value = 25 }, -- +15–25% Fire Skill Damage
      { index = 331, op = "==", value = 25 }, -- +15–25% Cold Skill Damage
      { index = 330, op = "==", value = 25 }, -- +15–25% Lightning Skill Damage
      { index = 187, op = "==", value = 25 }, -- Enemy cold immunity -15–25%
      { index = 189, op = "==", value = 25 }, -- Enemy fire immunity -15–25%
      { index = 190, op = "==", value = 25 }, -- Enemy lightning immunity -15–25%
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
      --{ index = 105, op = "==", value = 1 }, -- +1% FCR (Energy)
      --{ index = 93, op = "==", value = 1 }, -- +1% IAS (Strength)
      --{ index = 135, op = "==", value = 2 }, -- +2% Open Wounds (Strength)
      --{ index = 258, op = "==", value = 2 }, -- +2% Deadly Strike (Dex)
      --{ index = 259, op = "==", value = 2 }, -- +2% Piercing Attack (Dex)
      --{ index = 119, op = "==", value = 16 }, -- +16 AR (Energy)
      { index = 262, op = "==", value = 15 }, -- +5–15% Strenght
      { index = 263, op = "==", value = 15 }, -- +5–15% Dexterity
      { index = 264, op = "==", value = 15 }, -- +5–15% Vitality
      { index = 265, op = "==", value = 15 }, -- +5–15% Energy
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
      { index = 151, op = "==", param = 99, value = 15 }, -- Level 10–15 Prayer Aura
      { index = 7, op = "==", value = 50*256 }, -- +25–50 Life
      { index = 9, op = "==", value = 50*256 }, -- +25–50 Mana
      --{ index = 74, op = "==", value = 8 }, -- Replenish Life +8
      --{ index = 27, op = "==", value = 75 }, -- Regenerate Mana 75%
      { index = 86, op = "==", value = 5 }, -- +3–5 Life after kill
      { index = 138, op = "==", value = 5 }, -- +3–5 Mana after kill
      --{ index = 110, op = "==", value = 25 }, -- Poison Length Reduced 25%
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
      { index = 151, op = "==", param = 108, value = 10 }, -- Level 5–10 Blessed Aim Aura
      --{ index = 2, op = "==", value = 25 }, -- +25 Dexterity
      --{ index = 201, op = "==", value = 3 }, -- 7% ctc lvl 3 Amplify Damage
      --{ index = 19, op = "==", value = 200 }, -- +200 Attack Rating
      { index = 62, op = "==", value = 10 }, -- 6–10% Mana stolen per hit
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
      --{ index = 107, op = "==", param = 221, value = 1 }, -- +1 Raise Leoric's Chosen
      { index = 0, op = "==", value = 15 }, -- +10–15 Strength (all attribute)
      --{ index = 415, op = "==", value = 3 }, -- Charm Weight: 3
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
      --{ index = 25, op = "==", value = 300 }, -- +250–300% Enhanced Damage
      { index = 111, op = "==", value = 120 }, -- Damage +60–120
      --{ index = 83, op = "==", param = 3, value = 2 }, -- +2 Paladin Skill Levels
      { index = 107, op = "==", param = 112, value = 7 }, -- +3–7 Blessed Hammer
      --{ index = 89, op = "==", value = 3 }, -- +3 Light Radius
      { index = 357, op = "==", value = 20 }, -- +15–20% Magic Skill Damage
      { index = 193, op = "==", value = 15 }, -- Enemy magic immunity -10–15%
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
      --{ index = 16, op = "==", value = 250 }, -- +200–250% Enhanced Defense
      { index = 0, op = "==", value = 20 }, -- +10–20 Strength (all attribute)
      { index = 39, op = "==", value = 20 }, -- All Resistances +10–20
      { index = 60, op = "==", value = 8 }, -- 5–8% Life stolen per hit
      { index = 62, op = "==", value = 8 }, -- 5–8% Mana stolen per hit
      --{ index = 40, op = "==", value = 5 }, -- +5% Max Resistances
      --{ index = 91, op = "==", value = -25 }, -- -25 Required Level
      --{ index = 92, op = "==", value = -50 }, -- Requirements -50%
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
      --{ index = 16, op = "==", value = 190 }, -- +170–190% Enhanced Defense
      --{ index = 99, op = "==", value = 20 }, -- +20% Faster Hit Recovery
      { index = 36, op = "==", value = 15 }, -- Damage Reduced by 10–15%
      { index = 39, op = "==", value = 40 }, -- Fire Resist +30–40%
      --{ index = 25, op = "==", value = 150 }, -- +100–150% Enhanced Damage
      --{ index = 40, op = "==", value = 10 }, -- +10% Max Fire Resist
      { index = 83, op = "==", param = 5, value = 2 }, -- +1–2 Druid Skill Levels
      --{ index = 93, op = "==", value = 15 }, -- +15% IAS
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
      --{ index = 107, op = "==", param = 221, value = 5 }, -- +5 Spirit's Charge
      { index = 9, op = "==", value = 100*256 }, -- +50–100 Mana
      { index = 77, op = "==", value = 10 }, -- +5–10% Max Mana
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      { index = 190, op = "==", value = 50 }, -- Enemy lightning immunity -30–50%
      { index = 333, op = "==", value = 15 }, -- -10–15% Enemy Fire Res
      { index = 334, op = "==", value = 15 }, -- -10–15% Enemy Lightning Res
      { index = 335, op = "==", value = 15 }, -- -10–15% Enemy Cold Res
      { index = 336, op = "==", value = 15 }, -- -10–15% Enemy Poison Res
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
      --{ index = 16, op = "==", value = 320 }, -- +260–320% Enhanced Defense
      { index = 151, op = "==", param = 503, value = 15 }, -- Level 10–15 Physical Conviction Aura
      --{ index = 0, op = "==", value = 30 }, -- +30 Strength
      { index = 93, op = "==", value = 15 }, -- +10–15% IAS
      { index = 39, op = "==", value = 30 }, -- All Resistances +20–30
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
      --{ index = 83, op = "==", param = 7, value = 2 }, -- +2 Sorceress Skill Levels
      { index = 107, op = "==", param = 48, value = 4 }, -- +2–4 Rolling Thunder
      { index = 190, op = "==", value = 25 }, -- Enemy lightning immunity -15–25%
      --{ index = 105, op = "==", value = 30 }, -- +30% Faster Cast Rate
      { index = 330, op = "==", value = 25 }, -- +15–25% Lightning Skill Damage
      --{ index = 3, op = "==", value = 20 }, -- +20 Vitality
      --{ index = 1, op = "==", value = 20 }, -- +20 Energy
      --{ index = 276, op = "==", value = 2 }, -- +2 Spell Power
      --{ index = 80, op = "==", value = 50 }, -- 50% Magic Find
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
      --{ index = 201, op = "==", value = 20 }, -- 20% ctc lvl 20 Blizzard
      --{ index = 120, op = "==", value = 1 }, -- 100% Chance to not consume Quantity
      { index = 93, op = "==", value = 30 }, -- +20–30% IAS
      { index = 331, op = "==", value = 30 }, -- +20–30% Cold Skill Damage
      { index = 187, op = "==", value = 30 }, -- Enemy cold immunity -20–30%
      --{ index = 120, op = "==", value = 1 }, -- Ignore Target's Defense
      --{ index = 144, op = "==", value = 1 }, -- Freezes Target
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
  --ALL UNIQUES MAX STATS Index 601-650
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
      --{ index = 331, op = "==", value = 1 }, -- +1 to Cold Skills
      --{ index = 110, op = "==", value = 50 }, -- Half Freeze Duration (50% reduction)
      --{ index = 415, op = "==", value = 2 }, -- Charm Weight: 2
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
      --{ index = 16, op = "==", value = 200 }, -- +170–200% Enhanced Defense
      { index = 96, op = "==", value = 25 }, -- +15–25% Faster Run/Walk
      --{ index = 203, op = "==", value = 5 }, -- 5% Reanimate as Burning Soul
      { index = 145, op = "==", value = 10 }, -- +8–10 Lightning Absorb
      { index = 0, op = "==", value = 40 }, -- +30–40 Strength
      --{ index = 7, op = "==", value = 60*256 }, -- +60 Life
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
      --{ index = 16, op = "==", value = 300 }, -- +260–300% Enhanced Defense
      { index = 34, op = "==", value = 25 }, -- Damage Reduced by 15–25
      { index = 35, op = "==", value = 25 }, -- Magic Damage Reduced by 15–25
      --{ index = 3, op = "==", value = 20 }, -- +20 Vitality
      --{ index = 31, op = "==", value = 300 }, -- +300 Defense
      --{ index = 41, op = "==", value = 35 }, -- Magic Resist +35%
      --{ index = 40, op = "==", value = 15 }, -- +15% Max Magic Resist
      --{ index = 107, op = "==", param = 168, value = 1 }, -- +1 Heart of Wolverine
      --{ index = 91, op = "==", value = -21 }, -- -21 Required Level
      --{ index = 92, op = "==", value = -40 }, -- Requirements -40%
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
      --{ index = 415, op = "==", value = 5 }, -- Charm Weight: 5
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
      {index = 193, op = "==", value = 50 }, -- enemy Magic immunities reduced by 25–50%
      { index = 40, op = "==", value = 5}, -- Max ress
      { index = 76, op = "==", value = 10}, -- Max HP
      { index = 7, op = "==", value = 256*100}, --Life
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
      {index = 191, op = "==", value = 50 }, -- enemy Poison immunities reduced by 25–50%
      { index = 77, op = "==", value = 10}, -- Max Mana
      { index = 9, op = "==", value = 256*100}, --Mana
      { index = 333, op = "==", value = 15 }, -- -10–15% Enemy Fire Res
      { index = 334, op = "==", value = 15 }, -- -10–15% Enemy Lightning Res
      { index = 335, op = "==", value = 15 }, -- -10–15% Enemy Cold Res
      { index = 336, op = "==", value = 15 }, -- -10–15% Enemy Poison Res
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
      { index = 127, op = "==", value = 2}, -- +1-2 All skills
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
      {index = 278, op = "==", value = 3 }, --+1-3 Combat Power
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
      { index = 127, op = "==", value = 2}, -- +1-2 All skills
      { index = 99, op = ">=", value = 30}, -- Faster Hit Recovery
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
      { index = 93, op = ">=", value = 20}, -- Faster attackspeed
      { index = 39, op = ">=", value = 25}, -- All ress
      { index = 36, op = ">=", value = 15}, -- Damage reduced by %
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
      { index = 105, op = ">=", value = 50}, -- Faster Cast Rate
      { index = 39, op = ">=", value = 75}, -- All ress
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
      { index = 60, op = ">=", value = 15}, -- % life stolen per hit
      { index = 0, op = ">=", value = 15}, -- Strength
      { index = 86, op = ">=", value = 10}, -- Life after each kill
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
      { index = 107, op = ">=", param = 250, value = 5}, -- Hurricane skill (druid only)
      { index = 331, op = ">=", value = 20}, -- Cold skill damage
      { index = 79, op = ">=", value = 50}, -- Gold find
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
  --ALL UNIQUES MAX STATS Index 651-700
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
      { index = 96, op = ">=", value = 20}, -- Faster Run/walk
      { index = 1, op = ">=", value = 50}, -- Energy
      { index = 3, op = ">=", value = 30}, -- Vitality
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
      {index = 151, op = ">=", param = 381, value = 10 }, --Level 6-9 Redemption Aura When Equipped
      { index = 97, op = ">=", param = 151, value = 3}, -- +1-3 Whirlwind
      { index = 2, op = ">=", value = 25}, -- Dextirity
      { index = 93, op = ">=", value = 59}, -- Attackspeed
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
      { index = 99, op = ">=", value = 30}, -- Faster Hit Recovery
      { index = 136, op = ">=", value = 30}, -- Crushing Blow
      { index = 278, op = ">=", value = 3}, -- Combat Power
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
      { index = 336, op = ">=", value = 25}, -- -XX% to Enemy Poison Resistance
      { index = 332, op = ">=", value = 20}, -- +XX% to Poison Skill Damage
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
      { index = 188, op = ">=", param = 1, value = 5}, -- +X to Passive and Magic Skills (Amazon Only)
      { index = 107, op = ">=", param = 7, value = 7}, -- +X to Prismatic Arrow (Amazon only)
      { index = 93, op = ">=", value = 69}, -- +XX% Increased Attack Speed
      { index = 281, op = ">=", value = 199}, -- Summon Damage +XX%
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
      { index = 2, op = ">=", value = 15}, -- +XX to Dexterity
      { index = 156, op = ">=", value = 20}, -- +XX% Piercing Attack
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
      { index = 93, op = ">=", value = 30}, -- +XX% Increased Attack Speed
      { index = 189, op = ">=", value = 30}, -- Enemy fire immunity reduced by XX%
      { index = 329, op = ">=", value = 30}, -- +XX% to Fire Skill Damage
      { index = 7, op = ">=", value = 256*100}, -- +XX to Life
      },
      border = {165, 146, 099, 230},
      --notify = "Dragon's Cinder",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 661, -- Serpent's Fangs
      runeword = false,
      location = {"onground", "onplayer","equipped"},
      stat = {
      { index = 93, op = ">=", value = 30}, -- +XX% Increased Attack Speed
      { index = 191, op = ">=", value = 30}, -- Enemy poison immunity reduced by XX%
      { index = 336, op = ">=", value = 30}, -- -XX% to Enemy Poison Resistance
      { index = 60, op = ">=", value = 15}, -- XX% Life stolen per hit
      { index = 62, op = ">=", value = 15}, -- XX% Mana stolen per hit
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
      { index = 276, op = ">=", value = 2}, -- +XX Spell Power
      { index = 278, op = ">=", value = 2}, -- +XX Combat Power
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
      -- No stats (placeholder)
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
      { index = 283, op = ">=", value = 2}, -- +X Summoning Power
      { index = 124, op = ">=", value = 100}, -- +XX to Attack Rating against Undead
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
      {index = 276, op = ">=", value = 3 }, -- +XX Spell Power
      {index = 278, op = ">=", value = 3 }, -- +XX Combat Power
      {index = 283, op = ">=", value = 3 }, -- +X Summoning Power
      {index = 76, op = ">=", value = 50 }, -- Increase Maximum Life by XX%
      {index = 142, op = ">=", value = 5}, -- Fire Absorb XX% (all absorb)
      { index = 80,  op = ">=", value = 50}, -- XX% Better Chance of Getting Magic Items
      { index = 96, op = ">=", value = 0}, -- +XX% Faster Run/Walk
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
      { index = 96, op = ">=", value = 20}, -- +XX% Faster Run/Walk
      { index = 7, op = ">=", value = 256*40}, -- +XX to Life
      { index = 45, op = ">=", value = 20}, -- Poison Resist +XX%
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
      { index = 105, op = ">=", value = 15}, -- +XX% Faster Cast Rate
      { index = 9, op = ">=", value = 256*19}, -- +XX to Mana
      { index = 35, op = ">=", value = 8}, -- Magic Damage Reduced by XX
      { index = 80,  op = ">=", value = 30}, -- XX% Better Chance of Getting Magic Items
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
      { index = 151, op = ">=", param = 113, value = 5}, -- Level 5 Concentration Aura When Equipped
      { index = 93, op = ">=", value = 30}, -- +XX% Increased Attack Speed
      { index = 99, op = ">=", value = 23}, -- +XX% Faster Hit Recovery
      { index = 7, op = ">=", value = 256*94}, -- +XX to Life
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
      { index = 83, op = ">=", param = 2, value = 2}, -- +X to Necromancer Skill Levels
      { index = 281, op = ">=", value = 147}, -- Summon Damage +XX%
      { index = 284, op = ">=", value = 40}, -- Summon Maximum Life +XX% / Summon Max HP: +XX%
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
      -- No stats (placeholder)
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
      -- No stats (placeholder)
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
      { index = 143, op = ">=", value = 6}, -- +XX Fire Absorb
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
  },
}