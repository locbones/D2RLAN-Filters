---Filter Title: Zexylol's Hardfilter v1.22
---Filter Type: (Hardconfig filter)
---Filter Description: \nFilter to remove non perfect superior bases. \nThis filter removes alot of items, and will continue to expand on that front. \nWorking on filtering out perfect Uniques(1-400 done), but non perfects are not hidden YET!
---Filter Link: https://github.com/locbones/D2RLAN-Filters/raw/refs/heads/main/ReMoDDeD/Zexylol%20filter.lua
return {
  reload = "{pink} Zexylol's Hardconfig Filter {pink}Reloaded",
  --debug = true,
  filter_level = 1,
  filter_titles = {"Hard", "Medium", "Leveling",},
  allowOverrides = true,
  rules = {
    
  --Rules Debugg.
    {
      --codes = "allitems",
      --location = {"onground", "onplayer"},
      --prefix = "{stat=(31)}",
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
    {--Display DemonTempering name with notify.
      codes = {"C00", "C01", "C02", "C03", "C04", "C05", "C06", "C07", "C08", "C09", "C10", "C11", "C12", "C13", "C14", 
      "C15", "C16", "C17", "C18", "C19", "C20", "C21", "C22", "C23", "C24", "C25", "C26", "C27", "C28", "C29", "C30", "C31", 
      "C32", "C33", "C34", "C35", "C36", "C37"},
      name_style = "Toxic Fog",
      suffix = "\n Temepered Mats!",
      notify = "{pink} Tempered Material!",
      filter_levels = "1,2,3"
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
      {index = 136, op = "==", value = 10 }, --MAX CRUSHING BLOW!
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
      {index = 136, op = "==", value = 30 }, --MAX CRUSHING BLOW!
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
      {index = 136, op = "between", value = {1,9, }, }, --MAX CRUSHING BLOW!
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
      "y22", "y23", "y24", "y25", "y26", "y27", "y28", "y29", "y30", "y31", "y32", "y33"},
      notify = "ÿc;Treasure Nearby",
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
      codes = "allitems",
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
  --ALL UNIQUES MAX STATS Index 1-50
    {
      codes = "allitems",
      quality = "7",
      index = 6, --The Gnasher
      runeword = false,
      location = {"onground", "onplayer"},
      stat = {
      --{index = 0, op = "==", value = 8 }, --strength
      --{index = 135, op = "==", value = 25 }, --item_openwounds
      --{index = 136, op = "==", value = 20 }, --item_crushingblow
      --Area Effect: ingen direkt match
      --{index = 25, op = "==", param = value = 66 }, --60-70% damagepercent -> ?
      {index = 85, op = "==", value = 5 }, --2-5% item_addexperience
      {index = 34, op = "==", value = 5 }, --2-5 normal_damage_reduction
      {index = 35, op = "==", value = 5 }, --2-5 magic_damage_reduction
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
      location = {"onground", "onplayer"},
      stat = {
      --Hit Blinds Target: ingen direkt match -> 113
      --{index = 21, op = "==", value = 8 }, --mindamage 21-> ?
      --{index = 119, op = "==", value = 15 }, --tohit (bonus to attack rating) 19-> 119
      --{index = 138, op = "==", value = 4 }, --item_manaafterkill
      --{index = 25, op = "==", value = 70 }, --60-70% damagepercent -> ?
      {index = 85, op = "==", value = 5 }, --2-5% item_addexperience
      {index = 35, op = "==", value = 5 }, --2-5 magic_damage_reduction
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 122, op = "==", value = 100 }, --item_undeaddamage_percent
      --{index = 124, op = "==", value = 40 }, --item_undead_tohit
      --{index = 93, op = "==", value = 20 }, --item_fasterattackrate
      --{index = 31, op = "==", value = 20 }, --armorclass
      --{index = 49, op = "==", value = 12 }, --firemaxdam -> didnt work
      --{index = 25, op = "==", value = 50 }, --30-50% damagepercent -> ?
      {index = 85, op = "==", value = 5 }, --2-5% item_addexperience
      {index = 34, op = "==", value = 8 }, --4-8 normal_damage_reduction
      {index = 35, op = "==", value = 8 }, --4-8 magic_damage_reduction
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
      location = {"onground", "onplayer"},
      stat = {
      --Hit Blinds Target: ingen direkt match
      --{index = 27, op = "==", value = 20 }, --Regenerate Mana 20%
      {index = 51, op = "==", value = 15 }, --1-12/15 lightmaxdam
      {index = 19, op = ">=", value = 100 }, --50-100 tohit 
      --{index = 25, op = "==", value = 100 }, --60-100% damagepercent -> ?
      --{index = 135, op = "==", value = 15 }, --item_openwounds
      {index = 85, op = "==", value = 5 }, --2-5% item_addexperience
      {index = 35, op = "==", value = 7 }, --3-7 magic_damage_reduction
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 57, op = "==", value = 38 }, --poisonmindam -> didnt work
      --{index = 19, op = "==", value = 50 }, --tohit
      --{index = 45, op = "==", value = 50 }, --poisonresist
      --{index = 25, op = "==", value = 150 }, --75-150% damagepercent -> ?
      --{index = 93, op = "==", value = 30 }, --item_fasterattackrate
      {index = 85, op = "==", value = 5 }, --2-5% item_addexperience
      {index = 34, op = "==", value = 8 }, --4-8 normal_damage_reduction
      {index = 35, op = "==", value = 8 }, --4-8 magic_damage_reduction
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 25, op = "==", value = 90 }, --70-90% damagepercent (kommenterad enligt instruktion)
      --{index = 134, op = "==", value = 1 }, --Freezes Target
      --{index = 43, op = "==", value = 50 }, --coldresist
      {index = 89, op = "==", value = 2 }, --item_lightradius
      {index = 34, op = "==", value = 5 }, --3-5 normal_damage_reduction
      {index = 35, op = "==", value = 5 }, --3-5 magic_damage_reduction
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 93, op = "==", value = 30 }, --item_fasterattackrate
      --{index = 0, op = "==", value = 25 }, --strength
      --{index = 135, op = "==", value = 40 }, --item_openwounds
      --{index = 25, op = "==", value = 50 }, --40-50% damagepercent (kommenterad enligt instruktion)
      --{index = 22, op = "==", value = 9 }, --maxdamage
      {index = 34, op = "==", value = 6 }, --2-6 normal_damage_reduction
      {index = 35, op = "==", value = 6 }, --2-6 magic_damage_reduction
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 25, op = "==", value = 100 }, --damagepercent (kommenterad enligt instruktion)
      {index = 39, op = "==", value = 20 }, --10-20% Fireresist (All Resistances)
      --{index = 138, op = "==", value = 6 }, --item_manaafterkill
      --{index = 93, op = "==", value = 20 }, --item_fasterattackrate
      --{index = 51, op = "==", value = 40 }, --lightmaxdam
      {index = 34, op = "==", value = 7 }, --3-7 normal_damage_reduction
      {index = 35, op = "==", value = 7 }, --3-7 magic_damage_reduction
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 21, op = "==", value = 14 }, --mindamage
      --{index = 9, op = "==", value = 25 }, --mana
      --{index = 89, op = "==", value = 4 }, --item_lightradius
      {index = 62, op = "==", value = 13 }, --10-13% manadrainmindam (Mana stolen per hit)
      --{index = 25, op = "==", value = 80 }, --50-80% damagepercent (kommenterad enligt instruktion)
      --{index = 49, op = "==", value = 35 }, --firemaxdam
      {index = 34, op = "==", value = 9 }, --6-9 normal_damage_reduction
      {index = 35, op = "==", value = 9 }, --6-9 magic_damage_reduction
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 0, op = "==", value = 30 }, --20-30 strength
      --{index = 22, op = "==", value = 25 }, --8-15/25 maxdamage (not working)
      --{index = 136, op = "==", value = 25 }, --item_crushingblow
      --{index = 91, op = "==", value = 20 }, --item_req_percent
      --{index = 25, op = "==", value = 120 }, --80-120% damagepercent (kommenterad enligt instruktion)
      {index = 34, op = "==", value = 10 }, --8-10 normal_damage_reduction
      {index = 35, op = "==", value = 10 }, --8-10 magic_damage_reduction
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 83, op = "==", value = 1, param = 2}, --item_addclassskills (Necromancer Skill Levels)
      {index = 281, op = "==", value = 20 }, --item_damage_vs_monster (Summon Damage) 
      {index = 39, op = "==", value = 10 }, --5-10% fireresist
      --{index = 89, op = "==", value = 3 }, --item_lightradius
      --{index = 1, op = "==", value = 10 }, --energy
      --{index = 27, op = "==", value = 5 }, --Regenerate Mana 5%
      --{index = 97, op = "==", param = 77, value = 3}, --Terror
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 357, op = "==", value = 10 }, -- +5-10% to Magic Skill Damage
      --{index = ?, op = "==", param = 458, value = 5}, --Static Field proc:
      --{index = 41, op = "==", value = 40 }, --lightningresist
      --{index = 9, op = "==", value = 3328 }, --mana 256*13=3328
      --{index = 105, op = "==", value = 30 }, --item_fastercast
      {index = 97, op = "==", param = 77, value = 3}, --1-3 Terror
      {index = 97, op = "==", param = 71, value = 3}, --1-3 Dim Vision
      {index = 97, op = "==", param = 74, value = 3}, --1-3 Corpse Explosion
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 18, --Gravespine
      runeword = false,
      location = {"onground", "onplayer"},
      stat = {
      --{index = 0, op = "==", value = 10 }, --strength
      --{index = 2, op = "==", value = 10 }, --dexterity
      --{index = 43, op = "==", value = 15 }, --coldresist
      {index = 284, op = "==", value = 20 }, --10-20% Summon Max Life
      --{index = 7, op = "==", value = 15 }, --life
      --{index = 107, op = "==", value = 15 }, --item_fastercast
      --{index = 127, op = "==", value = 2 }, --item_allskills (Necromancer)
      {index = 9, op = "==", value = 12800 }, --256*(value) 25-50 mana
      {index = 97, op = "==", param = 87, value = 2}, --1-2 Decrepify
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 127, op = "==", value = 2 }, --item_allskills (Necromancer)
      --{index = 8, op = "==", value = 40 }, --mana
      --{index = 97, op = "==", value = 20 }, --item_fastercast
      --Hit Causes Monster to Flee: ingen direkt match
      --{index = 97, op = "==", param = 77, value = 3}, --Terror
      {index = 97, op = "==", param = 87, value = 2}, --1-2 Decrepify
      {index = 85, op = "==", value = 5 } --2-5% item_addexperience
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 44, op = "==", value = 60 }, --lightningresist
      {index = 43, op = "==", value = 20 }, --fireresist (coldresist)
      --{index = 49, op = "==", value = 8 }, --firemaxdam (Cold damage.)
      --{index = 25, op = "==", value = 80 }, --70-80% damagepercent (kommenterad enligt instruktion)
      {index = 85, op = "==", value = 5 }, --2-5% item_addexperience
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 21, --Kneel Striker
      runeword = false,
      location = {"onground", "onplayer"},
      stat = {
      --{index = 136, op = "==", value = 25 }, --item_crushingblow
      --{index = 39, op = "==", value = 20 }, --fireresist
      --{index = 45, op = "==", value = 20 }, --poisonresist
      --{index = 9, op = "==", value = 3840 }, --256*(value) 15 mana
      --{index = 25, op = "==", value = 70 }, --60-70% damagepercent -> ?
      --{index = 19, op = "==", value = 35 }, --tohit
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 127, op = "==", value = 2 }, --item_allskills (Paladin)
      --{index = ?, "op = "==", value = 7 }, --3-7 damage.
      --{index = 35, op = "==", value = 1 }, --magic_damage_reduction
      --{index = 60, op = "==", value = 8 }, --lifedrainmindam
      --{index = 25, op = "==", value = 60 }, --50-60% damagepercent -> ?
      {index = 122, op = "==", value = 60 }, --50-60%+(base 50%) item_undeaddamage_percent
      --{index = 107, op = "==", param = 103, value = 3}, --Thorns
      {index = 107, op = "==", param = 111, value = 3}, --1-3 Vengeance
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 51, op = "==", value = 6 }, --lightmaxdam
      --{index = 50, op = "==", value = 5 }, --coldmaxdam
      --{index = 74, op = "==", value = 10 }, --hpregen
      --{index = 25, op = "==", value = 120 }, --80-120% damagepercent -> ?
      {index = 85, op = "==", value = 5 }, --2-5% item_addexperience
      {index = 107, op = "==", param = 112, value = 5}, --3-5 Blessed Hammer
      --{index = 107, op = "==", param = 118, value = 3}, --Holy Shock
      --{index = 107, op = "==", param = 121, value = 1}, --Fist of the Heavens
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 93, op = "==", value = 20 }, --item_fasterattackrate
      --{index = 25, op = "==", value = 100 }, --damagepercent -> ?
      {index = 78, op = "==", value = 10 }, --3-10 item_attackertakesdamage
      --{index = 97, op = "==", param = ?, value = 1}, --Blaze Wolf
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 0, op = "==", value = 15 }, --strength
      --{index = 89, op = "==", value = 2 }, --item_lightradius
      --{index = 39, op = "==", value = 50 }, --fireresist
      --{index = 25, op = "==", value = 60 }, --50-60% damagepercent -> ?
      --{index = 136, op = "==", value = 20 }, --item_crushingblow
      {index = 34, op = "==", value = 4 }, --2-4 normal_damage_reduction
      --{index = 122, op = "==", value = 50 }, --50% item_undeaddamage_percent
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 25, op = "==", value = 120 }, --Enhanced Damage (120%)
      --{index = 119, op = "==", value = 50 }, --Bonus to Attack Rating (50%)
      --{index = 135, op = "==", value = 20 }, --Open Wounds (20%)
      --{index = 89, op = "==", value = 2 }, --Light Radius (+2)
      --{index = 93, op = "==", value = 10 }, --Increased Attack Speed (+10%)
      --{index = 97, op = "==", param = 96, value = 3 }, --+3 to Sacrifice (Paladin only)
      --{index = 60, op = "==", value = 5 }, --Life stolen per hit (5%)
      {index = 85, op = "==", value = 5 }, --Experience Gained (2–5%)
      {index = 34, op = "==", value = 6 }, --Damage Reduced (4–6)
      --{index = 122, op = "==", value = 50 } --Damage to Undead (+50%)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 21, op = "==", value = 20 }, --Minimum Damage (Adds 1–20)
      --{index = 150, op = "==", value = 50 }, --Slows Target (50%)
      --{index = 31, op = "==", value = 25 }, --Defense (+25)
      --{index = 62, op = "==", value = 5 }, --Mana stolen per hit (5%)
      --{index = 25, op = "==", value = 60 }, --Enhanced Damage (50–60%)
      --{index = 93, op = "==", value = 20 }, --Increased Attack Speed (+20%)
      {index = 34, op = "==", value = 6 }, --Damage Reduced (4–6)
      --{index = 122, op = "==", value = 50 } --Damage to Undead (+50%)
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 19, op = "==", value = 150 }, --Attack Rating (+100–150)
      --{index = 25, op = "==", value = 150 }, --Enhanced Damage (+100–150%)
      --{index = 51, op = "==", value = 10 }, --Lightning Damage (Adds 1–10)
      --{index = 0, op = "==", value = 10 }, --Strength (+10)
      --{index = 1, op = "==", value = -5 }, --Energy (-5)
      {index = 34, op = "==", value = 10 }, --Damage Reduced (7–10)
      --{index = 122, op = "==", value = 50 } --Damage to Undead (+50%)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 25, op = "==", value = 300 }, --Enhanced Damage (200–300%)
      --{index = 136, op = "==", value = 20 }, --Crushing Blow (20%)
      --{index = 39, op = "==", value = 30 }, --Fire Resist (+30%)
      --{index = 43, op = "==", value = 30 }, --Cold Resist (+30%)
      --{index = 122, op = "==", value = 50 }, --Damage to Undead (+50%)
      {index = 85, op = "==", value = 5 }, --Experience Gained (2–5%)
      {index = 34, op = "==", value = 6 }, --Damage Reduced (4–6)
      {index = 35, op = "==", value = 6 } --Magic Damage Reduced (4–6)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 91, op = "==", value = -50 }, --Requirements (-50%)
      --{index = 93, op = "==", value = 40 }, --Increased Attack Speed (+40%)
      --{index = 136, op = "==", value = 20 }, --Crushing Blow (20%)
      --{index = 25, op = "==", value = 250 }, --Enhanced Damage (150–250%)
      {index = 34, op = "==", value = 9 }, --Damage Reduced (7–9)
      {index = 35, op = "==", value = 9 }, --Magic Damage Reduced (7–9)
      --{index = 122, op = "==", value = 50 } --Damage to Undead (+50%)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 21, op = "==", value = 5 }, --Minimum Damage (+5)
      --{index = 119, op = "==", value = 20 }, --Bonus to Attack Rating (20%)
      --{index = 89, op = "==", value = 2 }, --Light Radius (+2)
      --{index = 136, op = "==", value = 20 }, --Crushing Blow (20%)
      --{index = 31, op = "==", value = 25 }, --Defense (+25)
      --{index = 25, op = "==", value = 100 }, --Enhanced Damage (+100%)
      --{index = 85, op = "==", value = 5 }, --Experience Gained (5%)
      {index = 34, op = "==", value = 3 } --Damage Reduced (1–3)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 39, op = "==", value = 15 }, --All Resistances (+15)
      --{index = 25, op = "==", value = 80 }, --Enhanced Damage (60–80%)
      --{index = 7, op = "==", value = 3840 }, --Life (+15)*256=3840
      --{index = 89, op = "==", value = 4 }, --Light Radius (+4)
      --{index = 135, op = "==", value = 20 }, --Open Wounds (20%)
      --{index = 93, op = "==", value = 15 }, --Increased Attack Speed (15%)
      --{index = 60, op = "==", value = 15 }, --Life stolen per hit (15%)
      {index = 85, op = "==", value = 5 }, --Experience Gained (2–5%)
      {index = 34, op = "==", value = 4 } --Damage Reduced (2–4)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 115, op = "==", value = 1 }, --Ignore Target's Defense
      --{index = 0, op = "==", value = 10 }, --Strength (+10)
      --{index = 2, op = "==", value = 10 }, --Dexterity (+10)
      --{index = 62, op = "==", value = 7 }, --Mana stolen per hit (7%)
      --{index = 25, op = "==", value = 50 }, --Enhanced Damage (+50%)
      --{index = 22, op = "==", value = 7 }, --Max Damage (Adds 3–7)
      {index = 85, op = "==", value = 5 }, --Experience Gained (2–5%)
      {index = 34, op = "==", value = 6 } --Damage Reduced (2–6)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 89, op = "==", value = 3 }, --Light Radius (+3)
      --{index = 9, op = "==", value = 30 * 256 }, --Mana (+30)
      --{index = 31, op = "==", value = 20 }, --Defense (+20)
      --{index = 93, op = "==", value = 20 }, --Increased Attack Speed (+20%)
      --{index = 25, op = "==", value = 100 }, --Enhanced Damage (60–100%)
      --{index = 55, op = "==", value = 5 }, --Cold Damage (Adds 3–5)
      {index = 34, op = "==", value = 6 } --Damage Reduced (3–6)
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 141, op = "==", value = 50 }, --Deadly Strike (50%)
      {index = 329, op = "==", value = 10 }, --Fire Skill Damage (+5–10%)
      {index = 331, op = "==", value = 10 }, --Cold Skill Damage (+5–10%)
      {index = 330, op = "==", value = 10 }, --Lightning Skill Damage (+5–10%)
      --{index = 54, op = "==", value = 6 }, --Cold Damage (Adds 3–6)
      --{index = 25, op = "==", value = 100 }, --Enhanced Damage (+100%)
      --{index = 53, op = "==", value = 10 }, --Magic Damage (Adds 5–10)
      {index = 35, op = "==", value = 12 }, --Magic Damage Reduced (7–12)
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 48, op = "==", value = 12 }, --Fire Damage (Adds 10-25)
      {index = 49, op = "==", value = 25 }, --Fire Damage (Adds 10–25)
      --{index = 19, op = "==", value = 100 }, --Attack Rating (+100)
      --{index = 93, op = "==", value = 10 }, --Increased Attack Speed (+10%)
      --{index = 25, op = "==", value = 120 }, --Enhanced Damage (80–120%)
      --{index = 0, op = "==", value = 12 }, --Strength (+12)
      {index = 85, op = "==", value = 5 }, --Experience Gained (2–5%)
      --{index = 35, op = "==", value = 5 } --Magic Damage Reduced (5)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 60, op = "==", value = 5 }, --Life stolen per hit (5%)
      --{index = 62, op = "==", value = 5 }, --Mana stolen per hit (5%)
      --{index = 57, op = "==", value = 56 }, --Poison Damage Over Time (28–56 over 6s)
      --{index = 48, op = "==", value = 75 }, --Fire Damage (Adds 25–75)
      --{index = 407, op = "==", value = 2 }, --Fire Skills (+2)
      {index = 85, op = "==", value = 5 }, --Experience Gained (2–5%)
      {index = 35, op = "==", value = 6 } --Magic Damage Reduced (4–6)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 127, op = "==", value = 1 }, --All Skills (+1)
      --{index = 110, op = "==", value = 50 }, --Poison Length Reduced (50%)
      --{index = 99, op = "==", value = 20 }, --Faster Hit Recovery (+20%)
      --{index = 93, op = "==", value = 20 }, --Increased Attack Speed (+20%)
      --{index = 19, op = "==", value = 60 }, --Attack Rating (+60)
      --{index = 25, op = "==", value = 80 }, --Enhanced Damage (70–80%)
      {index = 34, op = "==", value = 7 } --Damage Reduced (4–7)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 60, op = "==", value = 9 }, --Life stolen per hit (9%)
      --{index = 62, op = "==", value = 9 }, --Mana stolen per hit (9%)
      --{index = 43, op = "==", value = 20 }, --Cold Resist (+20%)
      --{index = 89, op = "==", value = -2 }, --Light Radius (-2)
      --{index = 55, op = "==", value = 30 }, --Cold Damage (Adds 10–30)
      --{index = 25, op = "==", value = 100 }, --Enhanced Damage (+100%)
      {index = 85, op = "==", value = 5 }, --Experience Gained (2–5%)
      {index = 35, op = "==", value = 5 }, --Magic Damage Reduced (3–5)
      --{index = 427, op = "==", value = 15 }, --Increase Buff Durations by 15%
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 62, op = "==", value = 10 }, --Mana stolen per hit (4–10%)
      --{index = 60, op = "==", value = 4 }, --Life stolen per hit (4%)
      --{index = 25, op = "==", value = 100 }, --Enhanced Damage (70–100%)
      {index = 39, op = "==", value = 5 }, --All Resistances (+5)
      --{index = 93, op = "==", value = 10 }, --Increased Attack Speed (+10%)
      {index = 85, op = "==", value = 5 }, --Experience Gained (2–5%)
      {index = 34, op = "==", value = 5 } --Damage Reduced (2–5)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 41, --Kinemil's Awl
      runeword = false,
      location = {"onground", "onplayer"},
      stat = {
      {index = 19, op = "==", value = 150 }, --Attack Rating (+100–150)
      --{index = 9, op = "==", value = 20 * 256 }, --Mana (+20)
      {index = 49, op = "==", value = 40 }, --Fire Damage (Adds 6–20/40)
      --{index = 25, op = "==", value = 100 }, --Enhanced Damage (+80–100%)
      --{index = 97, op = "==", param = 102, value = 6 }, --+6 to Holy Fire (Paladin only)
      {index = 34, op = "==", value = 8 } --Damage Reduced (6–8)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 58, op = "==", value = 112 }, --Poison Damage Over Time (Adds 112 over 6s)
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
      --{index = 19, op = "==", value = 50 }, --Attack Rating (+50)
      --{index = 45, op = "==", value = 50 }, --Poison Resist (+50%)
      --{index = 25, op = "==", value = 60 }, --Enhanced Damage (+50–60%)
      --{index = 7, op = "==", value = -10 * 256 }, --Life (-10)
      {index = 35, op = "==", value = 8 }, --Magic Damage Reduced (6–8)
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 135, op = "==", value = 35 }, --Open Wounds (15–35%)
      --{index = 22, op = "==", value = 15 }, --Max Damage (+15)
      --{index = 62, op = "==", value = 6 }, --Mana stolen per hit (6%)
      --{index = 25, op = "==", value = 125 }, --Enhanced Damage (+100–125%)
      {index = 85, op = "==", value = 5 }, --Experience Gained (2–5%)
      {index = 35, op = "==", value = 8 } --Magic Damage Reduced (6–8)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 34, op = "==", value = 3 }, --Damage Reduced (3)
      --{index = 35, op = "==", value = 3 }, --Magic Damage Reduced (3)
      --{index = 113, op = "==", value = 1 }, --Hit Blinds Target (+1)
      --{index = 79, op = "==", value = 25 }, --Extra Gold from Monsters (+25%)
      --{index = 25, op = "==", value = 120 }, --Enhanced Damage (+100–120%)
      --{index = 0, op = "==", value = 10 }, --Strength (+10)
      {index = 85, op = "==", value = 5 } --Experience Gained (2–5%)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 21, op = "==", value = 15 }, --Minimum Damage (Adds 1–15)
      {index = 80, op = "==", value = 100 }, --Magic Find (50–100%)
      --{index = 9, op = "==", value = -5 * 256 }, --Mana (-5)
      --{index = 93, op = "==", value = 45 }, --Increased Attack Speed (+45%)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 2, op = "==", value = 10 }, --Dexterity (+10)
      --{index = 25, op = "==", value = 50 }, --Enhanced Damage (+50%)
      --{index = 93, op = "==", value = 30 }, --Increased Attack Speed (+30%)
      --{index = 43, op = "==", value = 25 }, --Cold Resist (+25%)
      --{index = 39, op = "==", value = 25 }, --Fire Resist (+25%)
      --{index = 115, op = "==", value = 1 }, --Ignore Target's Defense
      {index = 85, op = "==", value = 5 } --Experience Gained (2–5%)
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 19, op = "==", value = 150 }, --Attack Rating (+100–150)
      --{index = 111, op = "==", value = 1 }, --Half Freeze Duration
      --{index = 57, op = "==", value = 180 }, --Poison Damage Over Time (Adds 180 over 4s)
      --{index = 45, op = "==", value = 95 }, --Poison Resist (+95%)
      --{index = 46, op = "==", value = 15 }, --Max Poison Resist (+15%)
      {index = 85, op = "==", value = 5 }, --Experience Gained (2–5%)
      --{index = 25, op = "==", value = 66 }, --Enhanced Damage (+66%)
      {index = 400, op = "==", value = 3 }, --Increase Curse Duration by 3 seconds
      {index = 401, op = "==", value = 3 }, --Increase Curse Radius by (3)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 105, op = "==", value = 50 }, --Faster Cast Rate (+50%)
      --{index = 9, op = "==", value = 50 * 256 }, --Mana (+50)
      --{index = 19, op = "==", value = 55 }, --Attack Rating (+55)
      --{index = 39, op = "==", value = 10 }, --All Resistances (+10)
      --{ index = 83,  op = "==", param = 4, value = 1 }, -- +1 to Necromancer Skill Levels
      {index = 85, op = "==", value = 5 }, --Experience Gained (2–5%)
      {index = 400, op = "==", value = 3 }, --Increase Curse Duration by 3 seconds
      {index = 401, op = "==", value = 3 }, --Increase Curse Radius by (3)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 113, op = "==", value = 1 }, --Hit Blinds Target (+1)
      {index = 150, op = "==", value = 15 }, --Slows Target (5–15%)
      {index = 19, op = "==", value = 30 }, --Attack Rating (+15–30)
      {index = 119, op = "==", value = 15 }, --Bonus to Attack Rating (10–15%)
      --{index = 22, op = "==", value = 7 }, --Max Damage (Adds 3–7)
      --{index = 135, op = "==", value = 35 }, --Open Wounds (35%)
      --{index = 138, op = "==", value = 1 }, --Mana after each Kill (+1)
      --Replenish Quantity 
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
      {index = 93, op = "==", value = 15 }, --Increased Attack Speed (+10–15%)
      --{index = 48, op = "==", value = 4 }, --Fire Damage (Adds 3–4)
      --{index = 51, op = "==", value = 7 }, --Lightning Damage (Adds 1–7)
      --{index = 86, op = "==", value = 1 }, --Life after each Kill (+1)
      --Replenish Quantity
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 51-100
    {
      codes = "allitems",
      quality = "7",
      index = 51, --Carefully
      runeword = false,
      location = {"onground", "onplayer"},
      stat = {
      --{index = 93, op = "==", value = 15 }, --Increased Attack Speed (15%)
      {index = 116, op = "==", value = 20 }, --Target Defense (-15–20%)
      --{index = 21, op = "==", value = 25 }, --Minimum Damage (Adds 15–25)
      {index = 136, op = "==", value = 15 }, --Crushing Blow (5–15%)
      {index = 141, op = "==", value = 20 }, --Deadly Strike (15–20%)
      {index = 119, op = "==", value = 25 }, --Bonus to Attack Rating (15–25%)
      --Replenish Quantity
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 19, op = "==", value = 45 }, --Attack Rating (+35–45)
      --{index = 25, op = "==", value = 75 }, --Enhanced Damage (+65–75%)
      --{index = 52, op = "==", value = 8 }, --Magic Damage (Adds 5–8)
      {index = 7, op = "==", value = 20 * 256 }, --Life (+15–20)
      {index = 39, op = "==", value = 10 }, --All Resistances (+5–10)
      --Replenish Quantity 
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 107, op = "==", param = 10, value = 3 }, --+2–3 to Jab (Amazon only)
      --{index = 25, op = "==", value = 35 }, --Enhanced Damage (+20–35%)
      --{index = 57, op = "==", value = 36 }, --Poison Damage Over Time (Adds 36 over 3s)
      --{index = 93, op = "==", value = 20 }, --Increased Attack Speed (+20%)
      --{index = 19, op = "==", value = 25 }, --Attack Rating (+25)
      --{index = 62, op = "==", value = 3 }, --Mana stolen per hit (3%)
      --Replenish Quantity
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 107, op = "==", param = 15, value = 3 }, --+3 to Poison Point (Amazon only)
      {index = 107, op = "==", param = 25, value = 2 }, --+1–2 to Plague Javelin (Amazon only)
      --{index = 57, op = "==", value = 48 }, --Poison Damage Over Time (Adds 48 over 2s)
      {index = 119, op = "==", value = 15 }, --Bonus to Attack Rating (10–15%)
      {index = 60, op = "==", value = 6 }, --Life stolen per hit (4–6%)
      --Replenish Quantity
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 107, op = "==", param = 14, value = 3 }, --+1–3 to Recharge (Amazon only)
      {index = 107, op = "==", param = 24, value = 3 }, --+1–3 to Charged Strike (Amazon only)
      --{index = 51, op = "==", value = 20 }, --Lightning Damage (Adds 1–20)
      {index = 41, op = "==", value = 15 }, --Lightning Resist (+10–15%)
      --{index = 86, op = "==", value = 2 }, --Life after each Kill (+2)
      --Replenish Quantity
      --{index = 25, op = "==", value = 75 }, --Enhanced Damage (+60–75%)
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 107, op = "==", param = 135, value = 2 }, --+1–2 to Throwing Mastery (Barbarian only)
      --{index = 51, op = "==", value = 35 }, --Lightning Damage (Adds 1–35)
      --{index = 55, op = "==", value = 22 }, --Cold Damage (Adds 18–22)
      --Replenish Quantity 
      {index = 136, op = "==", value = 15 }, --Crushing Blow (10–15%)
      --{index = 21, op = "==", value = 12 }, --Minimum Damage (Adds 8–12)
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 107, op = "==", param = 134, value = 2 }, --+1–2 to Homing Harpoon (Barbarian only)
      {index = 107, op = "==", param = 137, value = 3 }, --+1–3 to Icy Trail (Barbarian only)
      {index = 107, op = "==", param = 138, value = 3 }, --+1–3 to Shout (Barbarian only)
      {index = 9, op = "==", value = 25 * 256 }, --Mana (+20–25)
      {index = 119, op = "==", value = 15 }, --Bonus to Attack Rating (10–15%)
      --Replenish Quantity
      {index = 62, op = "==", value = 5 }, --Mana stolen per hit (1–5%)
      --{index = 25, op = "==", value = 85 }, --Enhanced Damage (+85%)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 19, op = "==", value = 35 }, --Attack Rating (+35)
      --{index = 21, op = "==", value = 10 }, --Minimum Damage (+10)
      --{index = 89, op = "==", value = 2 }, --Light Radius (+2)
      --{index = 121, op = "==", value = 100 }, --Damage to Undead (+100%)
      --{index = 48, op = "==", value = 6 }, --Fire Damage (Adds 3–6)
      {index = 85, op = "==", value = 5 } --Experience Gained (2–5%)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 150, op = "==", value = 25 }, --Slows Target (25%)
      --{index = 116, op = "==", value = 50 }, --Target Defense (-50%)
      --{index = 0, op = "==", value = 15 }, --Strength (+15)
      --{index = 2, op = "==", value = 8 }, --Dexterity (+8)
      --{index = 93, op = "==", value = 30 }, --Increased Attack Speed (+30%)
      --{index = 25, op = "==", value = 50 }, --Enhanced Damage (+30–50%)
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 135, op = "==", value = 30 }, --Open Wounds (20–30%)
      --{index = 0, op = "==", value = 10 }, --Strength (+10)
      {index = 60, op = "==", value = 12 }, --Life stolen per hit (8–12%)
      {index = 7, op = "==", value = 26 * 256 }, --Life (+26)
      --{index = 25, op = "==", value = 70 }, --Enhanced Damage (+50–70%)
      {index = 85, op = "==", value = 5 }, --Experience Gained (2–5%)
      {index = 34, op = "==", value = 4 }, --Damage Reduced (2–4)
      {index = 35, op = "==", value = 4 } --Magic Damage Reduced (2–4)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 61, --Lance of Yaggai
      runeword = false,
      location = {"onground", "onplayer"},
      stat = {
      --{index = 114, op = "==", value = 8 }, --Attacker Takes Damage (+8)
      --{index = 51, op = "==", value = 60 }, --Lightning Damage (Adds 1–60)
      --{index = 145, op = "==", value = 3 }, --Lightning Absorb (+3)
      --{index = 39, op = "==", value = 15 }, --All Resistances (+15)
      --{index = 93, op = "==", value = 40 }, --Increased Attack Speed (+40%)
      {index = 34, op = "==", value = 8 }, --Damage Reduced (4–8)
      {index = 35, op = "==", value = 8 }, --Magic Damage Reduced (4–8)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 48, op = "==", value = 54 }, --Fire Damage (Adds 23–54)
      --{index = 40, op = "==", value = 15 }, --Max Fire Resist (+15%)
      --{index = 7, op = "==", value = 30 * 256 }, --Life (+30)
      --{index = 19, op = "==", value = 60 }, --Attack Rating (+60)
      --{index = 89, op = "==", value = 3 }, --Light Radius (+3)
      --{index = 39, op = "==", value = 15 }, --Fire Resist (+15%)
      --{index = 25, op = "==", value = 100 }, --Enhanced Damage (+80–100%)
      {index = 34, op = "==", value = 8 }, --Damage Reduced (4–8)
      {index = 35, op = "==", value = 8 }, --Magic Damage Reduced (4–8)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 2, op = "==", value = 15 }, --Dexterity (+15)
      --{index = 25, op = "==", value = 100 }, --Enhanced Damage (+100%)
      --{index = 93, op = "==", value = 20 }, --Increased Attack Speed (+20%)
      --{index = 31, op = "==", value = -8 }, --Defense (-8)
      {index = 85, op = "==", value = 5 }, --Experience Gained (2–5%)
      --{index = 141, op = "==", value = 10 }, --Deadly Strike (10%)
      {index = 34, op = "==", value = 5 }, --Damage Reduced (2–5)
      {index = 35, op = "==", value = 5 }, --Magic Damage Reduced (2–5)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 112, op = "==", value = 75 }, --Hit Causes Monster to Flee (75%)
      --{index = 141, op = "==", value = 30 }, --Deadly Strike (30%)
      --{index = 19, op = "==", value = 30 }, --Attack Rating (+30)
      --{index = 39, op = "==", value = 5 }, --All Resistances (+5)
      --{index = 25, op = "==", value = 80 }, --Enhanced Damage (+60–80%)
      --{index = ?, op = "==", value = 40 }, --Replenish Durability (20–40)
      {index = 34, op = "==", value = 5 }, --Damage Reduced (3–5)
      {index = 35, op = "==", value = 5 }, --Magic Damage Reduced (3–5)
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 135, op = "==", value = 30 }, --Open Wounds (10–30%)
      --{index = 19, op = "==", value = 45 }, --Attack Rating (+45)
      --{index = 39, op = "==", value = 20 }, --All Resistances (+20)
      --{index = 25, op = "==", value = 90 }, --Enhanced Damage (+50–90%)
      --{index = 62, op = "==", value = 10 }, --Mana stolen per hit (10%)
      --{index = 1, op = "==", value = 5 }, --Energy (+5)
      {index = 107, op = "==", param = 73, value = 4 }, --+1–4 to Blight Strike (Necromancer only)
      --{index = ?, op = "==", param = 455, value = 5 } --Chance to cast Weaken on striking (5%)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 93, op = "==", value = 30 }, --Increased Attack Speed (+30%)
      --{index = 2, op = "==", value = 10 }, --Dexterity (+10)
      --{index = 25, op = "==", value = 70 }, --Enhanced Damage (+50–70%)
      {index = 19, op = "==", value = 100 }, --Attack Rating (+50–100)
      --{index = 60, op = "==", value = 7 }, --Life stolen per hit (7%)
      {index = 34, op = "==", value = 7 }, --Damage Reduced (5–7)
      {index = 35, op = "==", value = 7 }, --Magic Damage Reduced (5–7)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 150, op = "==", value = 50 }, --Slows Target (50%)
      --{index = 135, op = "==", value = 50 }, --Open Wounds (50%)
      --{index = 113, op = "==", value = 3 }, --Hit Blinds Target (+3)
      --{index = 116, op = "==", value = 50 }, --Monster Defense Per Hit (-50)
      --{index = 134, op = "==", value = 1 }, --Freezes Target
      --{index = 89, op = "==", value = -2 }, --Light Radius (-2)
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
      --{index = 25, op = "==", value = 80 }, --Enhanced Damage (+40–80%)
      {index = 34, op = "==", value = 7 }, --Damage Reduced (5–7)
      {index = 35, op = "==", value = 7 }, --Magic Damage Reduced (5–7)
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 141, op = "==", value = 50 }, --Deadly Strike (25–50%)
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
      --{index = 62, op = "==", value = 5 }, --Mana stolen per hit (5%)
      --{index = 25, op = "==", value = 140 }, --Enhanced Damage (+80–140%)
      --{index = 21, op = "==", value = 15 }, --Minimum Damage (+15)
      --{index = 7, op = "==", value = -20 * 256 }, --Life (-20)
      {index = 107, op = "==", param = 73, value = 5 }, --+3–5 to Blight Strike (Necromancer only)
      {index = 332, op = "==", value = 15 }, --Poison Skill Damage (+10–15%)
      --{index = ?, op = "==", param = 444, value = 3 } --Chance to cast Decrepify on striking (3%)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 48, op = "==", value = 6 }, --Fire Damage (Adds 4–6)
      --{index = 39, op = "==", value = 50 }, --Fire Resist (+50%)
      --{index = 9, op = "==", value = 30 * 256 }, --Mana (+30)
      --{index = 93, op = "==", value = 20 }, --Increased Attack Speed (+20%)
      --{index = 25, op = "==", value = 60 }, --Enhanced Damage (+50–60%)
      {index = 107, op = "==", param = 36, value = 5 }, --+5 to Firestorm (Sorceress only)
      {index = 107, op = "==", param = 37, value = 2 }, --+2 to Warmth (Sorceress only)
      {index = 85, op = "==", value = 5 }, --Experience Gained (2–5%)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 57, op = "==", value = 12 }, --Poison Damage Over Time (Adds 12 over 3s)
      --{index = 45, op = "==", value = 50 }, --Poison Resist (+50%)
      --{index = 89, op = "==", value = -1 }, --Light Radius (-1)
      --{index = 9, op = "==", value = 10 * 256 }, --Mana (+10)
      --{index = 62, op = "==", value = 100 }, --Mana stolen per hit (100%)
      --{index = 116, op = "==", value = 50 } --Target Defense (-50%)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 41, op = "==", value = 75 }, --Lightning Resist +75%
      --{index = 34, op = "==", value = 5 }, --Damage Reduced by 5
      --{index = 1, op = "==", value = 15 }, --+15 to Energy
      --{index = 107, op = "==", param = 53, value = 1 }, --+1 to Chain Lightning (Sorceress only)
      --{index = 107, op = "==", param = 54, value = 2 }, --+2 to Discharge (Sorceress only)
      --{index = 107, op = "==", param = 42, value = 3 }, --+3 to Static Field (Sorceress only)
      --{index = 27, op = "==", value = 43 }, --Regenerate Mana 43%
      --{index = 51, op = "==", value = 28 }, --Adds 1–28 Lightning Damage
      --{index = 83, op = "==", param = 1, value = 1 }, --+1 to Sorceress Skill Levels
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 48, op = "==", value = 32 }, --Adds 15–32 Fire Damage
      --{index = 39, op = "==", value = 30 }, --Fire Resist +30%
      --{index = 107, op = "==", param = 51, value = 1 }, --+1 to Fire Wall (Sorceress only)
      --{index = 107, op = "==", param = 41, value = 2 }, --+2 to Fire Ball (Sorceress only)
      --{index = 107, op = "==", param = 37, value = 3 }, --+3 to Warmth (Sorceress only)
      --{index = 407, op = "==", value = 2 }, --+2 to Fire Skills
      {index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 31, op = "==", value = 30 }, --+30 Defense
      --{index = 105, op = "==", value = 20 }, --+20% Faster Cast Rate
      --{index = 25, op = "==", value = 100 }, --+100% Enhanced Damage
      --{index = 119, op = "==", value = 50 }, --50% Bonus to Attack Rating
      {index = 107, op = "==", param = 52, value = 2 }, --+2 to Enchant (Sorceress only)
      {index = 107, op = "==", param = 46, value = 4 }, --+2-4 to Fatal Flare (Sorceress only)
      {index = 107, op = "==", param = 44, value = 3 }, --+3 to Frost Nova (Sorceress only)
      {index = 83, op = "==", param = 1, value = 2 }, --+2 to Sorceress Skill Levels
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 19, op = "==", value = 28 }, --+28 to Attack Rating
      --{index = 25, op = "==", value = 100 }, --+100% Enhanced Damage
      --{index = 7, op = "==", value = 10 * 256 }, --+10 to Life
      --{index = 89, op = "==", value = 2 }, --+2 to Light Radius
      --{index = 62, op = "==", value = 3 }, --3% Mana stolen per hit
      --{index = 138, op = "==", value = 2 }, --+2 to Mana after each Kill
      {index = 85, op = "==", value = 10 }, --+7–10% to Experience Gained
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 21, op = "==", value = 3 }, --Adds 1–3 Damage
      --{index = 19, op = "==", value = 50 }, --+50 to Attack Rating
      --{index = 97, op = "==", param = 6, value = 3 }, --+3 to Magic Arrow
      --{index = 25, op = "==", value = 50 }, --+40–50% Enhanced Damage
      {index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 119, op = "==", value = 50 }, --50% Bonus to Attack Rating
      --{index = 2, op = "==", value = 3 }, --+3 to Dexterity
      --{index = 97, op = "==", param = 16, value = 3 }, --+3 to Exploding Arrow
      --{index = 0, op = "==", value = 3 }, --+3 to Strength
      --{index = 25, op = "==", value = 70 }, --+60–70% Enhanced Damage
      {index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 39, op = "==", value = 10 }, --All Resistances +10
      --{index = 141, op = "==", value = 20 }, --20% Deadly Strike
      --{index = 19, op = "==", value = 60 }, --+60 to Attack Rating
      --{index = 122, op = "==", value = 100 }, --+100% Damage to Undead
      --{index = 25, op = "==", value = 60 }, --+40–60% Enhanced Damage
      --{index = 93, op = "==", value = 50 }, --+50% Increased Attack Speed
      {index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 51, op = "==", value = 30 }, --Adds 1–30 Lightning Damage
      --{index = 0, op = "==", value = 8 }, --+8 to Strength
      --{index = 19, op = "==", value = 28 }, --+28 to Attack Rating
      --{index = , op = "==", value = 25 }, --+25% Piercing Attack
      --{index = 41, op = "==", value = 25 }, --Lightning Resist +25%
      --{index = 25, op = "==", value = 90 }, --+70–90% Enhanced Damage
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 97, op = "==", param = 6, value = 5 }, --+5 to Magic Arrow
      --{index = 9, op = "==", value = 30 * 256 }, --+30 to Mana
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      --{index = 43, op = "==", value = 26 }, --Cold Resist +26%
      {index = 19, op = "==", value = 100 }, --+50–100 to Attack Rating
      --{index = 25, op = "==", value = 80 }, --+70–80% Enhanced Damage
      --{index = 1, op = "==", value = 15 }, --+15 to Energy
      {index = 335, op = "==", value = 35 }, ---20–35% to Enemy Cold Resistance
      {index = 187, op = "==", value = 15 }, --Enemy cold immunity reduced by 10–15%
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 93, op = "==", value = 10 }, --+10% Increased Attack Speed
      {index = 49, op = "==", value = 50 }, --Adds 15–30/50 Fire Damage
      {index = 19, op = "==", value = 75 }, --+50–75 to Attack Rating
      --{index = 39, op = "==", value = 40 }, --Fire Resist +40%
      --{index = 2, op = "==", value = 12 }, --+12 to Dexterity
      --{index = 25, op = "==", value = 90 }, --+70–90% Enhanced Damage
      --{index = 407, op = "==", value = 1 }, --+1 to Fire Skills
      {index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 81, --Blastbark
      runeword = false,
      location = {"onground", "onplayer"},
      stat = {
      --{index = 25, op = "==", value = 130 }, --+70–130% Enhanced Damage
      --{index = 0, op = "==", value = 5 }, --+5 to Strength
      --{index = 83, op = "==", param = 0, value = 1 }, --+1 to Amazon Skill Levels
      --{index = 62, op = "==", value = 3 }, --3% Mana stolen per hit
      --{index = 107, op = "==", param = 16, value = 2 }, --+2 to Exploding Arrow (Amazon only)
      {index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 2, op = "==", value = 10 }, --+10 to Dexterity
      --{index = 7, op = "==", value = 10 * 256 }, --+10 to Life
      --{index = 25, op = "==", value = 70 }, --+70% Enhanced Damage
      --{index = 45, op = "==", value = 30 }, --Poison Resist +30%
      --{index = 141, op = "==", value = 20 }, --20% Deadly Strike
      --{index = 19, op = "==", value = 40 }, --+40 to Attack Rating
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 57, op = "==", value = 30 }, --+30 Poison Damage Over 3 Seconds
      --{index = 2, op = "==", value = 20 }, --+20 to Dexterity
      --{index = 156, op = "==", value = 50 }, --+50% Piercing Attack
      --{index = 19, op = "==", value = 50 }, --+50 to Attack Rating
      --{index = 25, op = "==", value = 50 }, --+50% Enhanced Damage
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      {index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = , op = "==", param = , value = 100 }, --100% Chance to cast level 5 Fire Blast on Striking
      --{index = 40, op = "==", value = 15 }, --+15% to Maximum Fire Resist
      --{index = 39, op = "==", value = 15 }, --Fire Resist +15%
      --{index = 19, op = "==", value = 70 }, --+70 to Attack Rating
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      --{index = 25, op = "==", value = 80 }, --+70–80% Enhanced Damage
      --{index = 48, op = "==", value = 35 }, --Adds 15–35 Fire Damage
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 83, op = "==", param = 6, value = 1 }, --+1 to Assassin Skill Levels
      --{index = 156, op = "==", value = 35 }, --+35% Piercing Attack
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 7, op = "==", value = 15 * 256 }, --+15 to Life
      --{index = 25, op = "==", value = 100 }, --+60–100% Enhanced Damage
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 55, op = "==", value = 40 }, --Adds 40 Cold Damage
      --{index = 43, op = "==", value = 15 }, --Cold Resist +15%
      --{index = 44, op = "==", value = 15 }, --+15% to Maximum Cold Resist
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = , op = "==", value = 10 }, --10% Chance to cast level 10 Ice Blast on striking
      --{index = , op = "==", value = 5 }, --10% Chance to cast level 5 Frost Nova when struck
      --{index = 25, op = "==", value = 190 }, --+150–190% Enhanced Damage
      {index = 34, op = "==", value = 10 }, --Damage Reduced by 5–10
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 141, op = "==", value = 15 }, --5–15% Deadly Strike
      {index = 135, op = "==", value = 20 }, --5–20% Chance of Open Wounds
      --{index = 25, op = "==", value = 200 }, --+150–200% Enhanced Damage
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 22, op = "==", value = 50 }, --Adds 30–50 Damage
      {index = 34, op = "==", value = 10 }, --Damage Reduced by 5–10
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 83, op = "==", param = 5, value = 2 }, --+2 to Druid Skill Levels
      --{index = 0, op = "==", value = 10 }, --+10 to All Attributes
      --{index = 32, op = "==", value = 50 }, --+50 Defense vs. Missile
      --{index = 136, op = "==", value = 10 }, --10% Chance of Crushing Blow
      --{index = 25, op = "==", value = 190 }, --+170–190% Enhanced Damage
      {index = 107, op = "==", param = 233, value = 3 }, --+1–3 to Maul (Druid only)
      {index = 107, op = "==", param = 232, value = 3 }, --+1–3 to Feral Rage (Druid only)
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
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
      index = 89, --Pompeii's Wrath
      runeword = false,
      location = {"onground", "onplayer"},
      stat = {
      --{index = , op = "==", value = 4 }, --4% Chance to cast level 8 Volcano on striking
      --{index = , op = "==", value = 2 }, --2% Chance to cast level 20 Flare Armor when Struck
      --{index = 150, op = "==", value = 50 }, --Slows Target by 50%
      --{index = 48, op = "==", value = 150 }, --Adds 35–150 Fire Damage
      --{index = 25, op = "==", value = 170 }, --+140–170% Enhanced Damage
      --{index = 85, op = "==", value = 5 }, --+5% to Experience Gained
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = , op = "==", value = 5 }, --5% Chance to cast level 8 Poison Nova on striking
      --{index = 78, op = "==", value = 15 }, --Attacker Takes Damage of 15
      --{index = 45, op = "==", value = 30 }, --Poison Resist +30%
      --{index = 57, op = "==", value = 250 }, --+250 Poison Damage Over 10 Seconds
      --{index = 25, op = "==", value = 180 }, --+150–180% Enhanced Damage
      --{index = 22, op = "==", value = 20 }, --+20 to Maximum Damage
      {index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
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
      index = 91, --Warlord's Trust
      runeword = false,
      location = {"onground", "onplayer"},
      stat = {
      --{index = , op = "==", value = 75 }, --+75 Defense
      --{index = 74, op = "==", value = 20 }, --Replenish Life +20
      --{index = 223, op = "==", value = 4 }, --+0.5 to Vitality (Based on Character Level)
      --{index = 39, op = "==", value = 10 }, --All Resistances +10
      --{index = 25, op = "==", value = 175 }, --+175% Enhanced Damage
      {index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
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
      index = 92, --Spellsteel
      runeword = false,
      location = {"onground", "onplayer"},
      stat = {
      --{index = 91, op = "==", value = -60 }, --Requirements -60%
      --{index = 9, op = "==", value = 100 * 256 }, --+100 to Mana
      {index = 35, op = "==", value = 15 }, --Magic Damage Reduced by 12–15
      --{index = 105, op = "==", value = 10 }, --+10% Faster Cast Rate
      --{index = 25, op = "==", value = 165 }, --+165% Enhanced Damage
      --{index = 27, op = "==", value = 25 }, --Regenerate Mana 25%
      --{index = ?, op = "==", param = 54, value = 15 }, --Level 5 Discharge (20 Charges)
      --{index = , op = "==", value = 10 }, --Level 10 Holy Bolt (100 Charges)
      --{index = , op = "==", value = 12 }, --Level 12 Firestorm (60 Charges)
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
    {
      codes = "allitems",
      quality = "7",
      index = 93, --Stromrider
      runeword = false,
      location = {"onground", "onplayer"},
      stat = {
      --{index = , op = "==", value = 10 }, --5% Chance to cast level 10 Chain Lightning on striking
      --{index = ?, op = "==", param = 416, Value = 10, Value = 20}, --10% Chance to cast level 13–20 Charged Bolt on striking
      --{index = 51, op = "==", value = 200 }, --Adds 1–200 Lightning Damage
      --{index = 22, op = "==", value = 75 }, --Adds 35–75 Damage
      --{index = 25, op = "==", value = 100 }, --+100% Enhanced Damage
      --{index = , op = "==", value = 50 }, --Improves Durability by 50
      --{index = 128, op = "==", value = 15 }, --Attacker Takes Lightning Damage of 15
      --{index = , op = "==", value = 5 }, --15% Chance to cast level 5 Charged Bolt when struck
      --{index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
      --{index = 35, op = "==", value = 12 }, --Magic Damage Reduced by 9–12
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 246, op = "==", value = 2*5 }, --+5.0 to Attack Rating against Undead (Based on Character Level)
      --{index = 244, op = "==", value = 20 }, --+2.5% Damage to Undead (Based on Character Level)
      --{index = 0, op = "==", value = 8 }, --+8 to Strength
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      --{index = 119, op = "==", value = 35 }, --35% Bonus to Attack Rating
      --{index = 25, op = "==", value = 220 }, --+180–220% Enhanced Damage
      --{index = , op = "==", value = 20 }, --Level 20 Holy Bolt (200 Charges)
      --{index = , op = "==", value = 50 }, --50% Chance to cast level 13–20 Holy Bolt when struck
      {index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
      {index = 34, op = "==", value = 12 }, --Damage Reduced by 9–12
      {index = 35, op = "==", value = 12 }, --Magic Damage Reduced by 9–12
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 113, op = "==", value = 2 }, --Hit Blinds Target +2
      --{index = 118, op = "==", value = 1 }, --Half Freeze Duration
      {index = 0, op = "==", value = 20 }, --+15–20 to Strength
      --{index = 150, op = "==", value = 30 }, --Slows Target by 30%
      --{index = 136, op = "==", value = 20 }, --20% Chance of Crushing Blow
      --{index = 22, op = "==", value = 30 }, --Adds 20–30 Damage
      --{index = 25, op = "==", value = 200 }, --+140–200% Enhanced Damage
      {index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
      {index = 34, op = "==", value = 12 }, --Damage Reduced by 9–12
      {index = 35, op = "==", value = 12 }, --Magic Damage Reduced by 9–12
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 78, op = "==", value = 25 }, --Attacker Takes Damage of 25
      --{index = 105, op = "==", value = 50 }, --+50% Faster Cast Rate
      --{index = 39, op = "==", value = 10 }, --All Resistances +10
      --{index = 77, op = "==", value = 10 }, --Increase Maximum Mana by 10%
      --{index = 7, op = "==", value = 40 * 256 }, --+40 to Life
      --{index = 127, op = "==", value = 1 }, --+1 to All Skills
      {index = 85, op = "==", value = 5 }, --+3–5% to Experience Gained
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 216, op = "==", value = 2560 }, --+1.25 to Life (Based on Character Level)
      --{index = 105, op = "==", value = 10 }, --+10% Faster Cast Rate
      --{index = 217, op = "==", value = 2560 }, --+1.25 to Mana (Based on Character Level)
      --{index = 99, op = "==", value = 30 }, --+30% Faster Hit Recovery
      --{index = 74, op = "==", value = 5 }, --Replenish Life +5
      --{index = 83, op = "==", param = 2, value = 1 }, --+1 to Necromancer Skill Levels
      --{index = 188, op = "==", param = 18, value = 2 }, --+2 to Summoning Skills (Necromancer Only)
      {index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 400, op = "==", value = 5 }, --Increase Curse Duration by 3–5 seconds
      {index = 97, op = "==", param = 68, value = 3 }, --+2–3 to Bone Armor
      --{index = 217, op = "==", value = 2560 }, --+1.25 to Mana (Based on Character Level)
      --{index = , op = "==", value = 2 }, --10% Chance to cast level 2 Bone Prison when struck
      --{index = 105, op = "==", value = 10 }, --+10% Faster Cast Rate
      {index = 284, op = "==", value = 60 }, --Summon Maximum Life +40–60%
      --{index = 97, op = "==", param = 81, value = 2 }, --+2 to Confuse
      --{index = 97, op = "==", param = 80, value = 2 }, --+2 to Raise Skeletal Mage
      --{index = 97, op = "==", param = 69, value = 3 }, --+3 to Summon Mastery
      --{index = 97, op = "==", param = 70, value = 3 }, --+3 to Raise Skeleton
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 188, op = "==", param = 16, value = 1 }, --+1 to Curses (Necromancer Only)
      --{index = 114, op = "==", value = 20 }, --20% Damage Taken Goes To Mana
      --{index = 7, op = "==", value = 50 * 256 }, --+50 to Life
      --{index = 89, op = "==", value = -2 }, ---2 to Light Radius
      --{index = 105, op = "==", value = 30 }, --+30% Faster Cast Rate
      --{index = 39, op = "==", value = 37 }, --Fire Resist +37%
      --{index = 83, op = "==", param = 2, value = 2 }, --+2 to Necromancer Skill Levels
      --{index = , op = "==", value = 5 }, --Level 5 Grim Ward (30 Charges)
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 83, op = "==", param = 5, value = 2 }, --+2 to Druid Skill Levels
      --{index = 121, op = "==", value = 200 }, --+200% Damage to Demons
      --{index = 123, op = "==", value = 200 }, --+200 to Attack Rating against Demons
      --{index = 25, op = "==", value = 195 }, --+195% Enhanced Damage
      {index = 119, op = "==", value = 25 }, --20–25% Bonus to Attack Rating
      --{index = 139, op = "==", value = 15 }, --+15 Life after each Demon Kill
      {index = 85, op = "==", value = 5 }, --+2–5% to Experience Gained
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  --ALL UNIQUES MAX STATS Index 101-150
    {
      codes = "allitems",
      quality = "7",
      index = 101, --Zakarum's Hand
      runeword = false,
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 135, op = "==", value = 15 }, --5–15% Chance of Open Wounds
      --{index = 117, op = "==", value = 1 }, --Prevent Monster Heal
      --{index = 136, op = "==", value = 10 }, --10% Chance of Crushing Blow
      {index = 141, op = "==", value = 15 }, --5–15% Deadly Strike
      --{index = 22, op = "==", value = 50 }, --Adds 35–50 Damage
      --{index = 25, op = "==", value = 200 }, --+130–200% Enhanced Damage
      --{index = 83, op = "==", param = 0, value = 1 }, --+1 to Druid Skill Levels
      --{index = 107, op = "==", param = ?, value = 2 }, --+2 to Frost Bear (Druid Only)
      --{index = , op = "==", value = 20 }, --Improves Durability by 20
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = , op = "==", value = 7 }, --5% Chance to cast level 7 Fissure on striking
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = 25, op = "==", value = 180 }, --+180% Enhanced Damage
      --{index = 113, op = "==", value = 1 }, --Hit Blinds Target +1
      --{index = 107, op = "==", param = ?, value = 3 }, --+3 to Blaze Wolf Skills (Druid Only)
      --{index = , op = "==", value = 50 }, --Improves Durability by 50
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 136, op = "==", value = 20 }, --20% Chance of Crushing Blow
      --{index = 25, op = "==", value = 220 }, --+180–220% Enhanced Damage
      --{index = 39, op = "==", value = 20 }, --All Resistances +20
      --{index = 0, op = "==", value = 25 }, --+25 to Strength
      --{index = 188, op = "==", param = 33, value = 2 }, --+2 to War Masteries (Barbarian Only)
      --{index = 97, op = "==", param = 139, value = 3 }, --+3 to Ground Render
      --{index = , op = "==", value = 40 }, --Improves Durability by 40
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 22, op = "==", value = 45 }, --Adds 12–45 Damage
      --{index = 19, op = "==", value = 90 }, --+90 to Attack Rating
      --{index = 60, op = "==", value = 8 }, --8% Life stolen per hit
      --{index = 62, op = "==", value = 8 }, --8% Mana stolen per hit
      --{index = 93, op = "==", value = 20 }, --+20% Increased Attack Speed
      --{index = 25, op = "==", value = 140 }, --+140% Enhanced Damage
      {index = 107, op = "==", param = 127, value = 4 }, --+2–4 to Master At Arms (Barbarian only)
      {index = 107, op = "==", param = 151, value = 3 }, --+1–3 to Whirlwind (Barbarian only)
      --{index = , op = "==", value = 30 }, --Improves Durability by 30
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 113, op = "==", value = 1 }, --Hit Blinds Target +1
      {index = 150, op = "==", value = 30 }, --Slows Target by 15–30%
      --{index = 141, op = "==", value = 10 }, --10% Deadly Strike
      --{index = , op = "==", value = 50 }, --Improves Durability by 50
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = , op = "==", value = 2 }, --Socketed (2)
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
      location = {"onground", "onplayer"},
      stat = {
      {index = 35, op = "==", value = 12 }, --Magic Damage Reduced by 7–12
      --{index = 93, op = "==", value = 30 }, --+30% Increased Attack Speed
      --{index = , op = "==", value = 5 }, --Repairs 5 durability per second
      --{index = , op = "==", value = 40 }, --Improves Durability by 40
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = , op = "==", value = 100 }, --Improves Durability by 100
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
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
      location = {"onground", "onplayer"},
      stat = {
      --{index = 91, op = "==", value = -20 }, --Requirements -20%
      --{index = 60, op = "==", value = 7 }, --7% Life stolen per hit
      --{index = 62, op = "==", value = 7 }, --7% Mana stolen per hit
      {index = 76, op = "==", value = 10 }, --Increase Maximum Life by 6–10%
      --{index = 25, op = "==", value = 190 }, --+150–190% Enhanced Damage
      {index = 19, op = "==", value = 250 }, --+150–250 to Attack Rating
      --{index = , op = "==", value = 15 }, --Improves Durability by 15
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 107, op = ">=", param = 61, value = 7 }, -- +7 to Fire Mastery (Sorceress only)
      --{index = ?, op = "==", value = 15 }, -- 15% Chance to cast level 15 Fire Ball on attack
      --{index = ?, op = "==", value = 8 }, -- 1% Chance to cast level 8 Overheat when struck
      --{index = 48,  op = "==", value = 250 }, -- +200–250 Fire Damage (min)
      --{index = 49,  op = "==", value = 505 }, -- +375–505 Fire Damage (max)
      --{index = 136, op = "==", value = 25 }, -- 25% Chance of Crushing Blow
      {index = 141, op = "==", value = 15 }, -- 10–15% Deadly Strike
      --{index = 25,  op = "==", value = 300 }, -- +200–300% Enhanced Damage
      --{index = 93,  op = "==", value = 40 }, -- +40% Increased Attack Speed
      {index = 36,  op = "==", value = 15 }, -- Damage Reduced by 8–15%
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 105, op = "==", value = 45 }, -- +45% Faster Cast Rate
      {index = 1,   op = "==", value = 50 }, -- +40–50 to Energy
      {index = 127, op = "==", value = 4 }, -- +2–4 to All Skills
      {index = 31,  op = "==", value = 550 }, -- +450–550 Defense
      --{index = 85,  op = "==", value = 5 }, -- +5% to Experience Gained
      {index = 35,  op = "==", value = 8 }, -- Magic Damage Reduced by 5–8
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 25,  op = "==", value = 320 }, -- +280–320% Enhanced Damage
      {index = 0,   op = "==", value = 30 }, -- +20–30 to Strength
      {index = 136, op = "==", value = 25 }, -- 10–25% Chance of Crushing Blow
      --{index = 116, op = "==", value = -25 }, -- -25% Target Defense
      --{index = 120, op = "==", param = 0, value = -100 }, -- -100 to Monster Defense Per Hit
      {index = 111,  op = "==", value = 30 }, -- Damage +10–30
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 127, op = "==", value = 5 }, -- +5 to All Skills
      {index = 333, op = "==", value = 15 }, -- -7–15% to Enemy Fire Resistance
      {index = 334, op = "==", value = 15 }, -- -7–15% to Enemy Lightning Resistance
      {index = 335, op = "==", value = 15 }, -- -7–15% to Enemy Cold Resistance
      {index = 336, op = "==", value = 15 }, -- -7–15% to Enemy Poison Resistance
      --{index = 27,  op = "==", value = 100 }, -- Regenerate Mana 100%
      --{index = 105, op = "==", value = 30 }, -- +30% Faster Cast Rate
      {index = 86,  op = "==", value = 15 }, -- +10–15 Life after each Kill
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 93,  op = "==", value = 40 }, -- +40% Increased Attack Speed
      --{index = 134, op = "==", value = 1 }, -- Freezes target
      --{index = 25,  op = "==", value = 250 }, -- +225–250% Enhanced Damage
      --{index = 156, op = "==", value = 33 }, -- +33% Piercing Attack
      --{index = 153, op = "==", value = 1 }, -- Cannot Be Frozen
      --{index = 148, op = "==", value = 5 }, -- Cold Absorb 5%
      {index = 19,  op = "==", value = 200 }, -- +75–200 to Attack Rating
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 25,  op = "==", value = 315 }, -- +220–315% Enhanced Damage
      --{index = 93,  op = "==", value = 60 }, -- +60% Increased Attack Speed
      --{index = 150, op = "==", value = 25 }, -- Slows Target by 25%
      --{index = 134, op = "==", value = 1 }, -- Freezes target
      {index = 331, op = "==", value = 25 }, -- +15–25% to Cold Skill Damage
      --{index = 335, op = "==", value = -15 }, -- -15% to Enemy Cold Resistance
      --{index = 62,  op = "==", value = 6 }, -- 6% Mana stolen per hit
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      {index = 76,  op = "==", value = -5 }, -- Increase Maximum Life by -5– -10%
      --{index = 77,  op = "==", value = 10 }, -- Increase Maximum Mana by 10%
      --{index = 397, op = "==", value = 4 }, -- 4 Life restored per hit
      --{index = 60,  op = "==", value = 12 }, -- 12% Life stolen per hit
      --{index = 22,  op = "==", value = 90 }, -- Adds 60–90 Damage
      --{index = 58,  op = "==", value = 250 }, -- +250 Poison Damage over 5 sec
      --{index = ?, op = "==", value = 10 }, -- 5% Chance to cast lvl 10 Venom on Kill
      --{index = ?, op = "==", value = 15 }, -- 3% Chance to cast lvl 15 Poison Nova when struck
      --{index = 25,  op = "==", value = 240 }, -- +240% Enhanced Damage
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      {index = 97, op = "==", param = 182, value = 7 }, -- +5–7 to Electro Ball
      {index = 330, op = "==", value = 30 }, -- +20–30% to Lightning Skill Damage
      --{index = 50,  op = "==", value = 60 }, -- +60 Lightning Damage (min)
      --{index = 51,  op = "==", value = 1000 }, -- +900–1000 Lightning Damage (max)
      --{index = 113, op = "==", value = 5 }, -- Hit Blinds Target +5
      --{index = 25,  op = "==", value = 260 }, -- +210–260% Enhanced Damage
      {index = 62,  op = "==", value = 12 }, -- 4–12% Mana stolen per hit
      --{index = ?, op = "==", value = 15 }, -- 15% Chance to cast lvl 15 Nova on Kill
      --{index = 83,  op = "==", param = 0, value = 2 }, -- +2 to Amazon Skill Levels
      --{index = 99,  op = "==", value = 24 }, -- +24% Faster Hit Recovery
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = ?, op = "==", value = 15 }, -- 2% Chance to cast lvl 15 Fissure on attack
      --{index = 83,  op = "==", param = 0, value = 2 }, -- +2 to Amazon Skill Levels
      --{index = 25,  op = "==", value = 100 }, -- +100% Enhanced Damage
      --{index = 22,  op = "==", value = 60 }, -- Adds 60 Damage
      --{index = 36,  op = "==", value = 15 }, -- Damage Reduced by 15%
      {index = 39,  op = "==", value = 15 }, -- All Resistances +10–15
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 115, op = "==", value = 1 }, -- Ignore Target's Defense
      --{index = 224, op = "==", value = 6 }, -- +6 Attack Rating per level
      --{index = 219, op = "==", value = 2 }, -- +2% Enhanced Max Damage per level
      --{index = 25,  op = "==", value = 200 }, -- +200% Enhanced Damage
      --{index = 83,  op = "==", param = 0, value = 1 }, -- +1 to Amazon Skill Levels
      --{index = 2,   op = "==", value = 25 }, -- +25 to Dexterity
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 25,  op = "==", value = 200 }, -- +150–200% Enhanced Damage
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 2,   op = "==", value = 5 }, -- +5 to Dexterity
      --{index = 218, op = "==", value = 3 }, -- +3.125 Max Damage per level
      {index = 96,  op = "==", value = 30 }, -- +20–30% Faster Run/Walk
      {index = 62,  op = "==", value = 8 }, -- 6–8% Mana stolen per hit
      --{index = 25,  op = "==", value = 250 }, -- +250% Enhanced Damage
      --{index = 93,  op = "==", value = 20 }, -- +20% Increased Attack Speed
      --{index = 0,   op = "==", value = 10 }, -- +10 to Strength
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      -- Level 20 Famine Aura When Equipped
      --{index = 50,  op = "==", value = 60 }, -- Adds 60 Lightning Damage (min)
      --{index = 51,  op = "==", value = 250 }, -- Adds 250 Lightning Damage (max)
      --{index = 54,  op = "==", value = 100 }, -- Adds 100 Cold Damage (min)
      --{index = 55,  op = "==", value = 250 }, -- Adds 250 Cold Damage (max)
      --{index = 48,  op = "==", value = 100 }, -- Adds 100 Fire Damage (min)
      --{index = 49,  op = "==", value = 250 }, -- Adds 250 Fire Damage (max)
      --{index = 25,  op = "==", value = 180 }, -- +180% Enhanced Damage
      --{index = 218, op = "==", value = 1 }, -- +1 Max Damage per level
      --{index = 93,  op = "==", value = 35 }, -- +35% Increased Attack Speed
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 25,  op = "==", value = 230 }, -- +180–230% Enhanced Damage
      --{index = 48,  op = "==", value = 63 }, -- Adds 63 Fire Damage (min)
      --{index = 49,  op = "==", value = 324 }, -- Adds 324 Fire Damage (max)
      --{index = 93,  op = "==", value = 20 }, -- +20% Increased Attack Speed
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      {index = 83, op = "==", param = 6, value = 3 }, --+2–3 to Assassin Skill Levels
      --{index = 25,  op = "==", value = 220 }, -- +160–220% Enhanced Damage
      --{index = 156, op = "==", value = 33 }, -- +33% Piercing Attack
      {index = 60,  op = "==", value = 18 }, -- 12–18% Life stolen per hit
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 89,  op = "==", value = 4 }, -- +4 to Light Radius
      --{index = 97, op = "==", param = 36, value = 3 }, -- +3 to Firestorm
      {index = 138, op = "==", value = 4 }, -- +1–4 Mana after each Kill
      --{index = 39,  op = "==", value = 15 }, -- Fire Resist +15%
      {index = 9,   op = "==", value = 25*256 }, -- +8–25 Mana
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      {index = 27,  op = "==", value = 30 }, -- Regenerate Mana 10–30%
      {index = 77,  op = "==", value = 20 }, -- Increase Maximum Mana by 8–20%
      {index = 331, op = "==", value = 8 }, -- +6–8% to Cold Skill Damage
      {index = 105, op = "==", value = 20 }, -- +10–20% Faster Cast Rate
      {index = 97, op = "==", param = 39, value = 3 }, -- +2–3 to Ice Bolt
      {index = 43,  op = "==", value = 13 }, -- Cold Resist +8–13%
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 89,  op = "==", value = -1 }, -- -1 to Light Radius
      {index = 31,  op = "==", value = 25 }, -- +10–25 Defense
      --{index = 107, op = "==", param = 41, value = 2 }, -- +2 to Fire Ball
      --{index = 107, op = "==", param = 37, value = 2 }, -- +2 to Warmth
      {index = 7,   op = "==", value = 20*256 }, -- +15–20 Life
      {index = 9,   op = "==", value = 30*256 }, -- +20–30 Mana
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 107, op = "==", param = 48, value = 3 }, -- +3 to Rolling Thunder
      --{index = 107, op = "==", param = 54, value = 2 }, -- +2 to Discharge
      {index = 334, op = ">=", value = 15 }, -- -7–15% Enemy Lightning Resistance
      {index = 145, op = ">=", value = 5 }, -- +1–5 Lightning Absorb
      {index = 41,  op = ">=", value = 15 }, -- Lightning Resist +10–15%
      {index = 27,  op = ">=", value = 40 }, -- Regenerate Mana 30–40%
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 107, op = "==", param = 53, value = 2 }, -- +2 to Chain Lightning
      --{index = 83,  op = "==", param = 1, value = 1 }, -- +1 to Lightning Skills (Sorceress Only)
      {index = 9,   op = "==", value = 50*256 }, -- +30–50 Mana
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 48,  op = "==", value = 4 }, -- Adds 4 Fire Damage (min)
      --{index = 49,  op = "==", value = 6 }, -- Adds 6 Fire Damage (max)
      --{index = 50,  op = "==", value = 4 }, -- Adds 4 Lightning Damage (min)
      --{index = 51,  op = "==", value = 6 }, -- Adds 6 Lightning Damage (max)
      --{index = 54,  op = "==", value = 4 }, -- Adds 4 Cold Damage (min)
      --{index = 55,  op = "==", value = 6 }, -- Adds 6 Cold Damage (max)
      {index = 93,  op = "==", value = 15 }, -- +10–15% Increased Attack Speed
      --{index = 25,  op = "==", value = 75 }, -- +60–75% Enhanced Damage
      {index = 122, op = "==", value = 80 }, -- +60–80% Damage to Undead
      {index = 121, op = "==", value = 60 }, -- +40–60% Damage to Demons
      {index = 2,   op = "==", value = 10 }, -- +5–10 Dexterity
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 25,  op = "==", value = 115 }, -- +100–115% Enhanced Damage
      --{index = 188, op = "==", param = 0, value = 2 }, -- +2 to Bow & Crossbow Skills (Amazon Only)
      {index = 331, op = "==", value = 15 }, -- +10–15% to Cold Skill Damage
      --{index = 54,  op = "==", value = 20 }, -- Adds 20 Cold Damage (min)
      --{index = 55,  op = "==", value = 35 }, -- Adds 35 Cold Damage (max)
      {index = 9,   op = "==", value = 45*256 }, -- +35–45 Mana
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 83,  op = "==", param = 0, value = 1 }, -- +1 to Amazon Skill Levels
      --{index = 188, op = "==", param = 2, value = 1 }, -- +1 to Javelin & Spear Skills (Amazon Only)
      --{index = 25,  op = "==", value = 175 }, -- +150–175% Enhanced Damage
      {index = 93,  op = "==", value = 30 }, -- +20–30% Increased Attack Speed
      --{index = 16,  op = "==", value = 80 }, -- +80% Enhanced Defense
      --{index = 0,   op = "==", value = 20 }, -- +20 Strength
      --{index = 2,   op = "==", value = 20 }, -- +20 Dexterity
      {index = 60,  op = "==", value = 5 }, -- 3–5% Life stolen per hit
      {index = 62,  op = "==", value = 5 }, -- 3–5% Mana stolen per hit
      {index = 34,  op = "==", value = 6 }, -- Damage Reduced by 4–6
      {index = 35,  op = "==", value = 6 }, -- Magic Damage Reduced by 4–6
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 83,  op = "==", param = 0, value = 1 }, -- +1 to Amazon Skill Levels
      --{index = 188, op = "==", param = 2, value = 1 }, -- +1 to Javelin & Spear Skills (Amazon Only)
      --{index = 25,  op = "==", value = 375 }, -- +350–375% Enhanced Damage
      {index = 93,  op = "==", value = 25 }, -- +15–25% Increased Attack Speed
      --{index = 0,   op = "==", value = 30 }, -- +30 Strength
      {index = 34,  op = "==", value = 6 }, -- Damage Reduced by 4–6
      {index = 35,  op = "==", value = 6 }, -- Magic Damage Reduced by 4–6
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 25,  op = "==", value = 75 }, -- +75% Enhanced Damage
      --{index = 83,  op = "==", param = 0, value = 1 }, -- +1 to Amazon Skill Levels
      {index = 188, op = "==", param = 1, value = 2 }, -- +1–2 Passive & Magic Skills (Amazon Only)
      --{index = 22,  op = "==", value = 15 }, -- +8–15 Throwing Damage
      {index = 62,  op = "==", value = 6 }, -- 4–6% Mana stolen per hit
      --{index = 93,  op = "==", value = 10 }, -- +10% Increased Attack Speed
      {index = 96,  op = "==", value = 30 }, -- +20–30% Faster Run/Walk
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      {index = 407, op = "==", value = 3 }, -- +1–3 to Fire Skills
      --{index = ?, op = "==", value = 10 }, -- 10% Chance to cast lvl 10 Flare Armor when struck
      --{index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      --{index = 40,  op = "==", value = 5 }, -- +5% Maximum Fire Resist
      --{index = 39,  op = "==", value = 20 }, -- Fire Resist +20%
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 127, op = "==", value = 1 }, -- +1 to All Skills
      {index = 188,  op = "==", param = 10, value = 3 }, -- +1–3 Cold Skills (Sorceress Only)
      --{index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      {index = 105, op = "==", value = 40 }, -- +20–40% Faster Cast Rate
      {index = 1,   op = "==", value = 40 }, -- +10–40 Energy
      {index = 79,  op = "==", value = 60 }, -- 25–60% Extra Gold from Monsters
      --{index = ?, op = "==", value = 6 }, -- 6% Chance to cast lvl 6 Lower Resist when struck
      {index = 281, op = "==", value = 150 }, -- Summon Damage +75–150%
      --{index = 39,  op = "==", value = 25 }, -- All Resistances +25
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      {index = 31,  op = "==", value = 175 }, -- +50–175 Defense
      --{index = 110, op = "==", value = 50 }, -- Poison Length Reduced by 50%
      --{index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      {index = 188,  op = "==", param = 9, value = 4 }, -- +2–4 Lightning Skills (Sorceress Only)
      --{index = 1,   op = "==", value = 60 }, -- +60 Energy
      --{index = 80,  op = "==", value = 25 }, -- 25% Better Chance of Getting Magic Items
      --{index = 144, op = "==", value = 15 }, -- Lightning Absorb 15%
      --{index = 96,  op = "==", value = 40 }, -- +40% Faster Run/Walk
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      {index = 80,  op = "==", value = 60 }, -- 20–60% Better Chance of Getting Magic Items
      {index = 329, op = "==", value = 20 }, -- +10–20% to Fire Skill Damage
      {index = 331, op = "==", value = 20 }, -- +10–20% to Cold Skill Damage
      {index = 330, op = "==", value = 20 }, -- +10–20% to Lightning Skill Damage
      --{index = 105, op = "==", value = 60 }, -- +60% Faster Cast Rate
      --{index = 0,   op = "==", value = 10 }, -- +10 to all Attributes (Strength)
      --{index = 1,   op = "==", value = 10 }, -- +10 to Energy
      --{index = 2,   op = "==", value = 10 }, -- +10 to Dexterity
      --{index = 3,   op = "==", value = 10 }, -- +10 to Vitality
      --{index = 39,  op = "==", value = 20 }, -- All Resistances +20
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 83,  op = "==", param = 1, value = 3 }, -- +3 to Sorceress Skill Levels
      --{index = ?, op = "==", value = 1 }, -- 25% Chance to cast level 1 Teleport when struck
      --{index = 39,  op = "==", value = 20 }, -- All Resistances +20
      --{index = 105, op = "==", value = 30 }, -- +30% Faster Cast Rate
      --{index = 16,  op = "==", value = 20 }, -- +20% Enhanced Defense
      --{index = 3,   op = "==", value = 20 }, -- +20 Vitality
      --{index = 1,   op = "==", value = 20 }, -- +20 Energy
      --{index = 138, op = "==", value = 5 }, -- +5 Mana after each Kill
      --{index = 80,  op = "==", value = 50 }, -- 50% Better Chance of Getting Magic Items
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 25,  op = "==", value = 275 }, -- +200–275% Enhanced Damage
      --{index = 52,  op = "==", value = 50 }, -- Adds 50 Magic Damage (min)
      --{index = 53,  op = "==", value = 90 }, -- Adds 90 Magic Damage (max)
      {index = 39,  op = "==", value = 30 }, -- All Resistances +15–30
      {index = 31,  op = "==", value = 400 }, -- +200–400 Defense
      {index = 188, op = "==", param = 0, value = 3 }, -- +1–3 Bow & Crossbow Skills (Amazon Only)
      --{index = 9,   op = "==", value = 60*256 }, -- +60 Mana
      {index = 76,  op = "==", value = 10 }, -- Increase Maximum Life by 5–10%
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 83,  op = "==", param = 0, value = 2 }, -- +2 to Amazon Skill Levels
      --{index = 188, op = "==", param = 0, value = 2 }, -- +2 to Bow & Crossbow Skills (Amazon Only)
      --{index = 25,  op = "==", value = 200 }, -- +150–200% Enhanced Damage
      --{index = 93,  op = "==", value = 20 }, -- +20% Increased Attack Speed
      --{index = 2,   op = "==", value = 20 }, -- +20 Dexterity
      --{index = 1,   op = "==", value = 20 }, -- +20 Energy
      {index = 62,  op = "==", value = 8 }, -- 5–8% Mana stolen per hit
      --{index = 22,  op = "==", value = 50 }, -- Adds 25–50 Damage
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 83,  op = "==", param = 0, value = 2 }, -- +2 to Amazon Skill Levels
      --{index = 188, op = "==", param = 2, value = 2 }, -- +2 to Javelin & Spear Skills (Amazon Only)
      --{index = 25,  op = "==", value = 200 }, -- +150–200% Enhanced Damage
      --{index = 96,  op = "==", value = 30 }, -- +30% Faster Run/Walk
      --{index = 0,   op = "==", value = 20 }, -- +20 Strength
      --{index = 2,   op = "==", value = 20 }, -- +20 Dexterity
      {index = 60,  op = "==", value = 9 }, -- 5–9% Life stolen per hit
      --{index = 22,  op = "==", value = 50 }, -- Adds 25–50 Damage
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 83,  op = "==", param = 0, value = 2 }, -- +2 to Amazon Skill Levels
      --{index = 188, op = "==", param = 2, value = 2 }, -- +2 to Javelin & Spear Skills (Amazon Only)
      --{index = 25,  op = "==", value = 200 }, -- +150–200% Enhanced Damage
      --{index = 93,  op = "==", value = 30 }, -- +30% Increased Attack Speed
      --{index = 16,  op = "==", value = 20 }, -- +20% Enhanced Defense
      --{index = 0,   op = "==", value = 20 }, -- +20 Strength
      --{index = 3,   op = "==", value = 20 }, -- +20 Vitality
      {index = 60,  op = "==", value = 9 }, -- 5–9% Life stolen per hit
      --{index = 22,  op = "==", value = 50 }, -- Adds 25–50 Damage
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 127, op = "==", value = 2 }, -- +2 to All Skills
      {index = 107, op = "==", param = 58, value = 7 }, -- +4–7 to Energy Shield (Sorceress only)
      --{index = 107, op = "==", param = 50, value = 3 }, -- +3 to Shiver Armor (Sorceress only)
      {index = 107, op = "==", param = 37, value = 5 }, -- +3–5 to Warmth (Sorceress only)
      {index = 77,  op = "==", value = 35 }, -- Increase Maximum Mana by 20–35%
      {index = 74,  op = "==", value = 25 }, -- Replenish Life +5–25
      {index = 286, op = "==", value = 25 }, -- Reduce Cooldowns by 10–25%
      {index = 39,  op = "==", value = 15 }, -- All Resistances +5–15
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      {index = 83,  op = "==", param = 1, value = 3 }, -- +1–3 to Sorceress Skill Levels
      --{index = 105, op = "==", value = 40 }, -- +40% Faster Cast Rate
      {index = 329, op = "==", value = 20 }, -- +10–20% to Fire Skill Damage
      {index = 330, op = "==", value = 20 }, -- +10–20% to Lightning Skill Damage
      {index = 1,   op = "==", value = 30 }, -- +20–30 Energy
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      {index = 139, op = "==", value = 30 }, -- +20–30 Life after each Demon Kill
      --{index = 127, op = "==", value = 3 }, -- +3 to All Skills
      --{index = 107, op = "==", param = 65, value = 2 }, -- +2 to Cold Mastery
      --{index = 107, op = "==", param = 61, value = 2 }, -- +2 to Fire Mastery
      --{index = 107, op = "==", param = 63, value = 2 }, -- +2 to Lightning Mastery
      {index = 31,  op = "==", value = 400 }, -- +200–400 Defense
      {index = 36,  op = "==", value = 20 }, -- Damage Reduced by 10–20%
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      {index = 127, op = "==", value = 2 }, -- +1–2 to All Skills
      --{index = 407, op = "==", value = 2 }, -- +2 to Fire Skills
      {index = 329, op = "==", value = 15 }, -- +10–15% to Fire Skill Damage
      {index = 107, op = "==", param = 62, value = 5 }, -- +3–5 to Hydra (Sorceress only)
      {index = 39,  op = "==", value = 60 }, -- Fire Resist +25–60%
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 83,  op = "==", param = 1, value = 3 }, -- +3 to Sorceress Skill Levels
      {index = 331, op = "==", value = 30 }, -- +15–30% to Cold Skill Damage
      --{index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      {index = 39,  op = "==", value = 40 }, -- Fire Resist +25–40%
      {index = 41,  op = "==", value = 40 }, -- Lightning Resist +25–40%
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 25,  op = "==", value = 230 }, -- +180–230% Enhanced Damage
      {index = 119, op = "==", value = 300 }, -- 200–300% Bonus to Attack Rating
      {index = 107, op = "==", param = 16, value = 6 }, -- +3–6 to Exploding Arrow (Amazon only)
      {index = 188, op = "==", param = 0, value = 4 }, -- +2–4 to Bow & Crossbow Skills (Amazon Only)
      --{index = 155, op = "==", value = 10 }, -- 10% Reanimate As: PlagueBearer
      {index = 83,  op = "==", param = 0, value = 2 }, -- +1–2 to Amazon Skill Levels
      {index = 2,   op = "==", value = 40 }, -- +20–40 Dexterity
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 25,  op = "==", value = 275 }, -- +175–275% Enhanced Damage
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 25,  op = "==", value = 200 }, -- +150–200% Enhanced Damage
      --{index = 50,  op = "==", value = 1 }, -- Adds 1 Lightning Damage (min)
      --{index = 51,  op = "==", value = 511 }, -- Adds 511 Lightning Damage (max)
      --{index = ?, op = "==", value = 14 }, -- 20% Chance to cast lvl 14 Lightning on striking
      --{index = 93,  op = "==", value = 15 }, -- +15% Increased Attack Speed
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 25,  op = "==", value = 280 }, -- +230–280% Enhanced Damage
      --{index = 52,  op = "==", value = 101 }, -- Adds 101 Magic Damage (min)
      --{index = 53,  op = "==", value = 187 }, -- Adds 187 Magic Damage (max)
      {index = 39,  op = "==", value = 50 }, -- All Resistances +30–50
      {index = 31,  op = "==", value = 600 }, -- +400–600 Defense
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 7,   op = "==", value = 15*256 }, -- +15 Life
      --{index = 19,  op = "==", value = 30 }, -- +30 Attack Rating
      --{index = 25,  op = "==", value = 30 }, -- +30% Enhanced Damage
      --{index = 9,   op = "==", value = 15*256 }, -- +15 Mana
      --{index = 31,  op = "==", value = 14 }, -- +14 Defense
      --{index = 85,  op = "==", value = 7 }, -- +7% Experience Gained
      {index = 34,  op = "==", value = 3 }, -- Damage Reduced by 1–3
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      {index = 79,  op = "==", value = 20 }, -- 15–20% Extra Gold from Monsters
      {index = 80,  op = "==", value = 50 }, -- 25–50% Better Chance of Getting Magic Items
      --{index = 127, op = "==", value = 1 }, -- +1 to All Skills
      {index = 85,  op = "==", value = 5 }, -- +2–5% Experience Gained
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 128, op = "==", value = 7 }, -- Attacker Takes Lightning Damage of 7
      --{index = 113, op = "==", value = 1 }, -- Hit Blinds Target +1
      --{index = 41,  op = "==", value = 15 }, -- Lightning Resist +15%
      --{index = 32,  op = "==", value = 100 }, -- +100 Defense vs. Missile
      --{index = 31,  op = "==", value = 10 }, -- +10 Defense
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
      location = {"onground","onplayer","equipped","atvendor"},
      stat = {
      --{index = 89,  op = "==", value = -2 }, -- -2 to Light Radius
      --{index = 39,  op = "==", value = 15 }, -- All Resistances +15
      --{index = 34,  op = "==", value = 7 }, -- Damage Reduced by 7
      --{index = 22,  op = "==", value = 8 }, -- +8 Maximum Damage
      --{index = 31,  op = "==", value = 20 }, -- +10–20 Defense
      --{index = 16,  op = "==", value = 50 }, -- +30–50% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 78,  op = "==", value = 3 }, -- Attacker Takes Damage of 3
      --{ index = 16,  op = "==", value = 80 }, -- +80% Enhanced Defense
      --{ index = 114, op = "==", value = 35 }, -- 35% Damage Taken Goes To Mana
      --{ index = 112, op = "==", value = 25 }, -- Hit Causes Monster to Flee 25%
      --{ index = 34,  op = "==", value = 2 }, -- Damage Reduced by 2
      --{ index = 35,  op = "==", value = 2 }, -- Magic Damage Reduced by 2
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 83,  op = "==", param = 3, value = 1 }, -- +1 to Paladin Skill Levels
      --{ index = 60,  op = "==", value = 5 }, -- 5% Life stolen per hit
      --{ index = 9,   op = "==", value = 10*256 }, -- +10 to Mana
      --{ index = 45,  op = "==", value = 25 }, -- Poison Resist +25%
      --{ index = 58,  op = "==", value = 80 }, -- +80 Poison Damage over 8 seconds
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 112, op = "==", value = 50 }, -- Hit Causes Monster to Flee 50%
      --{ index = 0,   op = "==", value = 20 }, -- +20 Strength
      --{ index = 39,  op = "==", value = 10 }, -- All Resistances +10
      --{ index = 122, op = "==", value = 50 }, -- +50% Damage to Undead
      --{ index = 31,  op = "==", value = 25 }, -- +25 Defense
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 35,  op = "==", value = 3 }, -- Magic Damage Reduced by 3
      --{ index = 43,  op = "==", value = 20 }, -- Cold Resist +20%
      --{ index = 39,  op = "==", value = 20 }, -- Fire Resist +20%
      --{ index = 2,   op = "==", value = 10 }, -- +10 Dexterity
      --{ index = 60,  op = "==", value = 5 }, -- 5% Life stolen per hit
      --{ index = 31,  op = "==", value = 20 }, -- +20 Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 32,  op = "==", value = 50 }, -- +50 Defense vs. Missile
      --{ index = 96,  op = "==", value = 10 }, -- +10% Faster Run/Walk
      --{ index = 31,  op = "==", value = 25 }, -- +25 Defense
      --{ index = 48,  op = "==", value = 3 }, -- Adds 3 Fire Damage (min)
      --{ index = 49,  op = "==", value = 6 }, -- Adds 6 Fire Damage (max)
      --{ index = 99,  op = "==", value = 40 }, -- +40% Faster Hit Recovery
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 31,  op = "==", value = 30 }, -- +30 Defense
      --{ index = 19,  op = "==", value = 50 }, -- +50 Attack Rating
      --{ index = 34,  op = "==", value = 2 }, -- Damage Reduced by 2
      --{ index = 7,   op = "==", value = 15*256 }, -- +15 Life
      --{ index = 9,   op = "==", value = 15*256 }, -- +15 Mana
      --{ index = 27,  op = "==", value = 15 }, -- Regenerate Mana 15%
      --{ index = 74,  op = "==", value = 5 }, -- Replenish Life +5
      --{ index = 85,  op = "==", value = 5 }, -- +5% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 93,  op = "==", value = 20 }, -- +20% Increased Attack Speed
      --{ index = 2,   op = "==", value = 10 }, -- +10 Dexterity
      --{ index = 20,  op = "==", value = 25 }, -- 25% Increased Chance of Blocking
      --{ index = 31,  op = "==", value = 25 }, -- +25 Defense
      --{ index = 0,   op = "==", value = 10 }, -- +10 Strength
      --{ index = 99,  op = "==", value = 20 }, -- +20% Faster Hit Recovery
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 19,  op = "==", value = 20 }, -- +20 Attack Rating
      --{ index = 40,  op = "==", value = 5 }, -- +5% to All Maximum Resistances
      --{ index = 89,  op = "==", value = 3 }, -- +3 to Light Radius
      --{ index = 33,  op = "==", value = 50 }, -- +50 Defense vs. Melee
      --{ index = 39,  op = "==", value = 10 }, -- All Resistances +10
      --{ index = 16,  op = "==", value = 100 }, -- +70–100% Enhanced Defense
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
      { index = 35,  op = "==", value = 5 }, -- Magic Damage Reduced by 3–5
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 16,  op = "==", value = 100 }, -- +80–100% Enhanced Defense
      --{ index = 44,  op = "==", value = 15 }, -- +15% to Maximum Cold Resist
      --{ index = 43,  op = "==", value = 15 }, -- Cold Resist +15%
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      --{ index = 96,  op = "==", value = 10 }, -- +10% Faster Run/Walk
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 16,  op = "==", value = 85 }, -- +75–85% Enhanced Defense
      --{ index = 50,  op = "==", value = 1 }, -- Adds 1 Lightning Damage (min)
      --{ index = 51,  op = "==", value = 20 }, -- Adds 20 Lightning Damage (max)
      { index = 128, op = "==", value = 14 }, -- Attacker Takes Lightning Damage of 10–14
      { index = 41,  op = "==", value = 30 }, -- Lightning Resist +30%
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 46,  op = "==", value = 15 }, -- +15% to Maximum Poison Resist
      --{ index = 110, op = "==", value = 50 }, -- Poison Length Reduced by 50%
      --{ index = 45,  op = "==", value = 90 }, -- Poison Resist +90%
      --{ index = 89,  op = "==", value = 2 }, -- +2 to Light Radius
      --{ index = 16,  op = "==", value = 100 }, -- +60–100% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 134, op = "==", value = 1 }, -- Freezes target
      --{ index = 43,  op = "==", value = 30 }, -- Cold Resist +30%
      --{ index = 89,  op = "==", value = 4 }, -- +4 to Light Radius
      --{ index = 35,  op = "==", value = 1 }, -- Magic Damage Reduced by 1
      --{ index = 16,  op = "==", value = 80 }, -- +70–80% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 60,  op = "==", value = 5 }, -- 5% Life stolen per hit
      --{ index = 16,  op = "==", value = 120 }, -- +100–120% Enhanced Defense
      --{ index = 19,  op = "==", value = 35 }, -- +35 Attack Rating
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 91,  op = "==", value = -10 }, -- Requirements -10%
      --{ index = 16,  op = "==", value = 130 }, -- +100–130% Enhanced Defense
      --{ index = 36,  op = "==", value = 10 }, -- Damage Reduced by 10%
      --{ index = 34,  op = "==", value = 5 }, -- Damage Reduced by 5
      --{ index = 0,   op = "==", value = 5 }, -- +5 Strength
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 112, op = "==", value = 40 }, -- Hit Causes Monster to Flee 40%
      --{ index = 19,  op = "==", value = 45 }, -- +45 Attack Rating
      --{ index = 136, op = "==", value = 15 }, -- 15% Chance of Crushing Blow
      --{ index = 31,  op = "==", value = 200 }, -- +200 Defense
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 16,  op = "==", value = 150 }, -- +120–150% Enhanced Defense
      --{ index = 39,  op = "==", value = 35 }, -- All Resistances +35
      --{ index = 78,  op = "==", value = 10 }, -- Attacker Takes Damage of 10
      --{ index = 89,  op = "==", value = 2 }, -- +2 to Light Radius
      --{ index = 79,  op = "==", value = 25 }, -- 25% Extra Gold from Monsters
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 62,  op = "==", value = 5 }, -- 5% Mana stolen per hit
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      --{ index = 89,  op = "==", value = 2 }, -- +2 to Light Radius
      --{ index = 16,  op = "==", value = 120 }, -- +100–120% Enhanced Defense
      { index = 34,  op = "==", value = 7 }, -- Damage Reduced by 5–7
      { index = 35,  op = "==", value = 7 }, -- Magic Damage Reduced by 5–7
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 16,  op = "==", value = 100 }, -- +100% Enhanced Defense
      --{ index = 39,  op = "==", value = 10 }, -- All Resistances +10
      --{ index = 27,  op = "==", value = 25 }, -- Regenerate Mana 25%
      --{ index = 1,   op = "==", value = 15 }, -- +15 Energy
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 31,  op = "==", value = 30 }, -- +30 Defense
      --{ index = 3,   op = "==", value = 10 }, -- +10 Vitality
      --{ index = 0,   op = "==", value = 2 }, -- +2 Strength
      --{ index = 1,   op = "==", value = 10 }, -- +10 Energy
      --{ index = 16,  op = "==", value = 40 }, -- +30–40% Enhanced Defense
      --{ index = 20,  op = "==", value = 20 }, -- 20% Increased Chance of Blocking
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 113, op = "==", value = 1 }, -- Hit Blinds Target +1
      --{ index = 2,   op = "==", value = 10 }, -- +10 Dexterity
      --{ index = 31,  op = "==", value = 30 }, -- +30 Defense
      --{ index = 7,   op = "==", value = 20*256 }, -- +20 Life
      --{ index = 89,  op = "==", value = -2 }, -- -2 to Light Radius
      --{ index = 16,  op = "==", value = 50 }, -- +40–50% Enhanced Defense
      --{ index = 20,  op = "==", value = 30 }, -- 30% Increased Chance of Blocking
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 35,  op = "==", value = 1 }, -- Magic Damage Reduced by 1
      --{ index = 41,  op = "==", value = 25 }, -- Lightning Resist +25%
      --{ index = 31,  op = "==", value = 30 }, -- +30 Defense
      --{ index = 50,  op = "==", value = 1 }, -- Adds 1 Lightning Damage (min)
      --{ index = 51,  op = "==", value = 6 }, -- Adds 6 Lightning Damage (max)
      --{ index = 16,  op = "==", value = 60 }, -- +50–60% Enhanced Defense
      --{ index = 20,  op = "==", value = 30 }, -- 30% Increased Chance of Blocking
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 20,  op = "==", value = 25 }, -- 25% Increased Chance of Blocking
      --{ index = 83,  op = "==", param = 3, value = 1 }, -- +1 to Paladin Skill Levels
      --{ index = 34,  op = "==", value = 3 }, -- Damage Reduced by 3
      --{ index = 89,  op = "==", value = 3 }, -- +3 to Light Radius
      --{ index = 16,  op = "==", value = 100 }, -- +60–100% Enhanced Defense
      --{ index = 102, op = "==", value = 20 }, -- +20% Faster Block Rate
      --{ index = 39,  op = "==", value = 15 }, -- All Resistances +15
      --{ index = 31,  op = "==", value = 20 }, -- +20 Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 31,  op = "==", value = 30 }, -- +30 Defense
      --{ index = 39,  op = "==", value = 75 }, -- Fire Resist +75%
      --{ index = 0,   op = "==", value = 5 }, -- +5 Strength
      --{ index = 35,  op = "==", value = 5 }, -- Magic Damage Reduced by 5
      --{ index = 16,  op = "==", value = 120 }, -- +80–120% Enhanced Defense
      --{ index = 20,  op = "==", value = 10 }, -- 10% Increased Chance of Blocking
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 31,  op = "==", value = 40 }, -- +40 Defense
      --{ index = 35,  op = "==", value = 2 }, -- Magic Damage Reduced by 2
      --{ index = 0,   op = "==", value = 10 }, -- +10 Strength
      --{ index = 20,  op = "==", value = 10 }, -- 10% Increased Chance of Blocking
      --{ index = 16,  op = "==", value = 100 }, -- +100% Enhanced Defense
      { index = 39,  op = "==", value = 50 }, -- All Resistances +30–50
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 60,  op = "==", value = 3 }, -- 3% Life stolen per hit
      --{ index = 62,  op = "==", value = 3 }, -- 3% Mana stolen per hit
      --{ index = 45,  op = "==", value = 10 }, -- Poison Resist +10%
      --{ index = 9,   op = "==", value = 20*256 }, -- +20 Mana
      --{ index = 31,  op = "==", value = 10 }, -- +10 Defense
      --{ index = 16,  op = "==", value = 20 }, -- +10–20% Enhanced Defense
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 22,  op = "==", value = 5 }, -- +5 to Minimum Damage
      --{ index = 7,   op = "==", value = 40*256 }, -- +40 Life
      --{ index = 99,  op = "==", value = 30 }, -- +30% Faster Hit Recovery
      --{ index = 31,  op = "==", value = 10 }, -- +10 Defense
      --{ index = 16,  op = "==", value = 20 }, -- +10–20% Enhanced Defense
      --{ index = 93,  op = "==", value = 10 }, -- +10% Increased Attack Speed
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
      { index = 34,  op = "==", value = 3 }, -- Damage Reduced by 1–3
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 79,  op = "==", value = 50 }, -- 50% Extra Gold from Monsters
      { index = 80,  op = "==", value = 40 }, -- 25–40% Better Chance of Getting Magic Items
      --{ index = 19,  op = "==", value = 25 }, -- +25 Attack Rating
      --{ index = 31,  op = "==", value = 15 }, -- +15 Defense
      --{ index = 89,  op = "==", value = 2 }, -- +2 to Light Radius
      --{ index = 16,  op = "==", value = 30 }, -- +20–30% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      --{ index = 27,  op = "==", value = 25 }, -- Regenerate Mana 25%
      --{ index = 407, op = "==", value = 1 }, -- +1 to Fire Skills
      --{ index = 48,  op = "==", value = 1 }, -- Adds 1 Fire Damage (min)
      --{ index = 49,  op = "==", value = 6 }, -- Adds 6 Fire Damage (max)
      --{ index = 31,  op = "==", value = 10 }, -- +10 Defense
      --{ index = 16,  op = "==", value = 30 }, -- +20–30% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 31,  op = "==", value = 30 }, -- +30 Defense
      --{ index = 25,  op = "==", value = 5 }, -- +5% Enhanced Damage
      --{ index = 77,  op = "==", value = 40 }, -- Increase Maximum Mana by 40%
      --{ index = 54,  op = "==", value = 1 }, -- Adds 1 Cold Damage (min)
      --{ index = 55,  op = "==", value = 6 }, -- Adds 6 Cold Damage (max)
      --{ index = 16,  op = "==", value = 20 }, -- +10–20% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 40,  op = "==", value = 15 }, -- +15% to Maximum Fire Resist
      --{ index = 7,   op = "==", value = 15*256 }, -- +15 Life
      --{ index = 48,  op = "==", value = 3 }, -- Adds 3 Fire Damage (min)
      --{ index = 49,  op = "==", value = 6 }, -- Adds 6 Fire Damage (max)
      --{ index = 31,  op = "==", value = 6 }, -- +6 Defense
      --{ index = 39,  op = "==", value = 45 }, -- Fire Resist +45%
      --{ index = 16,  op = "==", value = 20 }, -- +10–20% Enhanced Defense
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      { index = 140, op = "==", value = 5 }, -- Open Wounds Blood Visual +3–5
      --{ index = 96,  op = "==", value = 20 }, -- +20% Faster Run/Walk
      --{ index = 62,  op = "==", value = 2 }, -- 2% Mana stolen per hit
      --{ index = 78,  op = "==", value = 2 }, -- Attacker Takes Damage of 2
      --{ index = 31,  op = "==", value = 12 }, -- +12 Defense
      --{ index = 16,  op = "==", value = 30 }, -- +20–30% Enhanced Defense
      --{ index = 107, op = "==", param = 224, value = 2 }, -- +2 to Heroic Leap (Barbarian only)
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 96,  op = "==", value = 30 }, -- +30% Faster Run/Walk
      --{ index = 32,  op = "==", value = 50 }, -- +50 Defense vs. Missile
      { index = 357, op = "==", value = 10 }, -- +5–10% to Magic Skill Damage
      --{ index = 7,   op = "==", value = 10*256 }, -- +10 Life
      --{ index = 31,  op = "==", value = 12 }, -- +12 Defense
      --{ index = 16,  op = "==", value = 40 }, -- +30–40% Enhanced Defense
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 136, op = "==", value = 10 }, -- 10% Chance of Crushing Blow
      --{ index = 34,  op = "==", value = 1 }, -- Damage Reduced by 1
      --{ index = 35,  op = "==", value = 1 }, -- Magic Damage Reduced by 1
      --{ index = 31,  op = "==", value = 15 }, -- +15 Defense
      --{ index = 89,  op = "==", value = -1 }, -- -1 to Light Radius
      --{ index = 16,  op = "==", value = 60 }, -- +50–60% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 31,  op = "==", value = 35 }, -- +35 Defense
      --{ index = 0,   op = "==", value = 5 }, -- +5 Strength
      --{ index = 2,   op = "==", value = 5 }, -- +5 Dexterity
      --{ index = 96,  op = "==", value = 20 }, -- +20% Faster Run/Walk
      --{ index = 39,  op = "==", value = 10 }, -- All Resistances +10
      --{ index = 16,  op = "==", value = 80 }, -- +60–80% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 9,   op = "==", value = 15*256 }, -- +15 Mana
      --{ index = 27,  op = "==", value = 30 }, -- Regenerate Mana 30%
      --{ index = 39,  op = "==", value = 5 }, -- All Resistances +5
      --{ index = 89,  op = "==", value = 1 }, -- +1 to Light Radius
      { index = 85,  op = "==", value = 10 }, -- +8–10% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 58,  op = "==", value = 12 }, -- +12 Poison Damage over 3 seconds
      --{ index = 45,  op = "==", value = 25 }, -- Poison Resist +25%
      --{ index = 31,  op = "==", value = 10 }, -- +10 Defense
      --{ index = 16,  op = "==", value = 30 }, -- +20–30% Enhanced Defense
      --{ index = 74,  op = "==", value = 5 }, -- Replenish Life +5
      --{ index = 110, op = "==", value = 50 }, -- Poison Length Reduced by 50%
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 39,  op = "==", value = 10 }, -- All Resistances +10
      --{ index = 114, op = "==", value = 50 }, -- 50% Damage Taken Goes To Mana
      --{ index = 9,   op = "==", value = 20*256 }, -- +20 Mana
      --{ index = 34,  op = "==", value = 2 }, -- Damage Reduced by 2
      --{ index = 35,  op = "==", value = 2 }, -- Magic Damage Reduced by 2
      --{ index = 31,  op = "==", value = 15 }, -- +15 Defense
      --{ index = 16,  op = "==", value = 50 }, -- +30–50% Enhanced Defense
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 80,  op = "==", value = 30 }, -- 30% Better Chance of Getting Magic Items
      --{ index = 89,  op = "==", value = 2 }, -- +2 to Light Radius
      --{ index = 31,  op = "==", value = 25 }, -- +25 Defense
      --{ index = 93,  op = "==", value = 10 }, -- +10% Increased Attack Speed
      --{ index = 16,  op = "==", value = 60 }, -- +40–60% Enhanced Defense
      { index = 79,  op = "==", value = 20 }, -- 12–20% Extra Gold from Monsters
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 78,  op = "==", value = 8 }, -- Attacker Takes Damage of 8
      --{ index = 31,  op = "==", value = 30 }, -- +30 Defense
      --{ index = 34,  op = "==", value = 3 }, -- Damage Reduced by 3
      --{ index = 0,   op = "==", value = 5 }, -- +5 Strength
      --{ index = 2,   op = "==", value = 10 }, -- +10 Dexterity
      --{ index = 16,  op = "==", value = 100 }, -- +80–100% Enhanced Defense
      --{ index = 99,  op = "==", value = 30 }, -- +30% Faster Hit Recovery
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 83,  op = "==", param = 4, value = 1 }, -- +1 to Necromancer Skill Levels
      --{ index = 60,  op = "==", value = 5 }, -- 5% Life stolen per hit
      --{ index = 31,  op = "==", value = 40 }, -- +40 Defense
      --{ index = 45,  op = "==", value = 50 }, -- Poison Resist +50%
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      --{ index = 16,  op = "==", value = 60 }, -- +30–60% Enhanced Defense
      --{ index = 122, op = "==", value = 50 }, -- +50% Damage to Undead
      { index = 124, op = "==", value = 100 }, -- +50–100 Attack Rating vs Undead
      --{ index = 107, op = "==", param = 74, value = 3 }, -- +3 to Summon Mastery (Necromancer only)
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 138, op = "==", value = 5 }, -- +5 Mana after each Kill
      --{ index = 62,  op = "==", value = 3 }, -- 3% Mana stolen per hit
      --{ index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      --{ index = 45,  op = "==", value = 20 }, -- Poison Resist +20%
      --{ index = 16,  op = "==", value = 40 }, -- +30–40% Enhanced Defense
      --{ index = 31,  op = "==", value = 10 }, -- +10 Defense
      { index = 85,  op = "==", value = 5 }, -- +2–5% to Experience Gained
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 78,  op = "==", value = 10 }, -- Attacker Takes Damage of 10
      --{ index = 20,  op = "==", value = 20 }, -- 20% Increased Chance of Blocking
      { index = 135, op = "==", value = 25 }, -- 15–25% Chance of Open Wounds
      { index = 140, op = "==", value = 5 }, -- Open Wounds Blood Visual +3–5
      --{ index = 16,  op = "==", value = 60 }, -- +30–60% Enhanced Defense
      --{ index = 31,  op = "==", value = 10 }, -- +10 Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 1,   op = "==", value = 20 }, -- +20 Energy
      --{ index = 3,   op = "==", value = 20 }, -- +20 Vitality
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      --{ index = 96,  op = "==", value = 15 }, -- +15% Faster Run/Walk
      { index = 74,  op = "==", value = 12 }, -- Replenish Life +6–12
      --{ index = 16,  op = "==", value = 100 }, -- +100% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      { index = 41,  op = "==", value = 40 }, -- Lightning Resist +20–40%
      --{ index = 36,  op = "==", value = 10 }, -- Damage Reduced by 10%
      --{ index = 99,  op = "==", value = 30 }, -- +30% Faster Hit Recovery
      --{ index = 16,  op = "==", value = 220 }, -- +160–220% Enhanced Defense
      { index = 39,  op = "==", value = 50 }, -- Fire Resist +20–50%
      { index = 43,  op = "==", value = 40 }, -- Cold Resist +20–40%
      --{ index = 3,   op = "==", value = 15 }, -- +15 Vitality
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 60,  op = "==", value = 5 }, -- 5% Life stolen per hit
      --{ index = 62,  op = "==", value = 5 }, -- 5% Mana stolen per hit
      --{ index = 99,  op = "==", value = 10 }, -- +10% Faster Hit Recovery
      --{ index = 93,  op = "==", value = 10 }, -- +10% Increased Attack Speed
      --{ index = 16,  op = "==", value = 240 }, -- +200–240% Enhanced Defense
      { index = 80,  op = "==", value = 50 }, -- 30–50% Better Chance of Getting Magic Items
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 89,  op = "==", value = -2 }, -- -2 to Light Radius
      --{ index = 221, op = "==", value = 2 }, -- +2 Defense (per level)
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      --{ index = 62,  op = "==", value = 5 }, -- 5% Mana stolen per hit
      --{ index = ?, op = "==", value = 3 }, -- 10% Chance to cast lvl 3 Dim Vision when struck
      --{ index = ?, op = "==", value = 2 }, -- 10% Chance to cast lvl 2 Cloak of Shadows when struck
      { index = 39,  op = "==", value = 40 }, -- Fire Resist +20–40%
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 16,  op = "==", value = 200 }, -- +150–200% Enhanced Defense
      --{ index = 96,  op = "==", value = 20 }, -- +20% Faster Run/Walk
      --{ index = 99,  op = "==", value = 20 }, -- +20% Faster Hit Recovery
      { index = 83,  op = "==", param = 0, value = 2 }, -- +1–2 to Amazon Skill Levels
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 2,   op = "==", value = 25 }, -- +25 Dexterity
      { index = 60,  op = "==", value = 12 }, -- 9–12% Life stolen per hit
      --{ index = 7,   op = "==", value = 50*256 }, -- +50 Life
      --{ index = 9,   op = "==", value = 35*256 }, -- +35 Mana
      --{ index = 39,  op = "==", value = 33 }, -- Fire Resist +33%
      --{ index = 16,  op = "==", value = 200 }, -- +160–200% Enhanced Defense
      { index = 79,  op = "==", value = 25 }, -- 20–25% Extra Gold from Monsters
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 128, op = "==", value = 25 }, -- Attacker Takes Lightning Damage of 25
      --{ index = 150, op = "==", value = 20 }, -- Slows Target by 20%
      --{ index = 152, op = "==", value = 1 }, -- Prevent Monster Heal
      --{ index = 145, op = "==", value = 20 }, -- +20 Lightning Absorb
      --{ index = 41,  op = "==", value = 15 }, -- Lightning Resist +15%
      --{ index = 16,  op = "==", value = 220 }, -- +180–220% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      { index = 35,  op = "==", value = 11 }, -- Magic Damage Reduced by 7–11
      --{ index = 74,  op = "==", value = 10 }, -- Replenish Life +10
      --{ index = 16,  op = "==", value = 150 }, -- +150% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 16,  op = "==", value = 120 }, -- +120% Enhanced Defense
      { index = 39,  op = "==", value = 35 }, -- All Resistances +20–35
      --{ index = 105, op = "==", value = 30 }, -- +30% Faster Cast Rate
      { index = 35,  op = "==", value = 13 }, -- Magic Damage Reduced by 9–13
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      { index = 74,  op = "==", value = 25 }, -- Replenish Life +15–25
      { index = 60,  op = "==", value = 7 }, -- 5–7% Life stolen per hit
      --{ index = 16,  op = "==", value = 190 }, -- +150–190% Enhanced Defense
      --{ index = 78,  op = "==", value = 15 }, -- Attacker Takes Damage of 15
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 7,   op = "==", value = 25*256 }, -- +25 Life
      { index = 35,  op = "==", value = 16 }, -- Magic Damage Reduced by 10–16
      { index = 34,  op = "==", value = 20 }, -- Damage Reduced by 15–20
      --{ index = 221, op = "==", value = 3 }, -- +3 Defense (per level)
      --{ index = 16,  op = "==", value = 100 }, -- +50–100% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 89,  op = "==", value = 4 }, -- +4 to Light Radius
      --{ index = 221, op = "==", value = 1 }, -- +1.25 Life per level
      --{ index = 48,  op = "==", value = 20 }, -- Adds 20 Fire Damage (min)
      --{ index = 49,  op = "==", value = 65 }, -- Adds 65 Fire Damage (max)
      --{ index = 39,  op = "==", value = 5 }, -- Fire Resist +5%
      --{ index = 16,  op = "==", value = 160 }, -- +120–160% Enhanced Defense
      --{ index = 0,   op = "==", value = 15 }, -- +15 Strength
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 135, op = "==", value = 15 }, -- 15% Chance of Open Wounds
      --{ index = 16,  op = "==", value = 180 }, -- +150–180% Enhanced Defense
      --{ index = 2,   op = "==", value = 15 }, -- +15 Dexterity
      --{ index = 99,  op = "==", value = 15 }, -- +15% Faster Hit Recovery
      --{ index = 93,  op = "==", value = 15 }, -- +15% Increased Attack Speed
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 32,  op = "==", value = 250 }, -- +250 Defense vs. Missile
      --{ index = 36,  op = "==", value = 30 }, -- Damage Reduced by 30%
      --{ index = 7,   op = "==", value = 60*256 }, -- +60 Life
      --{ index = 16,  op = "==", value = 220 }, -- +180–220% Enhanced Defense
      { index = 34,  op = "==", value = 13 }, -- Damage Reduced by 9–13
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 0,   op = "==", value = 15 }, -- +15 Strength
      --{ index = 214, op = "==", value = 8*1.25 }, -- +1.25 Defense per level
      --{ index = 221, op = "==", value = 1 }, -- +1 Life per level
      --{ index = 16,  op = "==", value = 200 }, -- +160–200% Enhanced Defense
      --{ index = 39,  op = "==", value = 20 }, -- Fire Resist +20%
      --{ index = 41,  op = "==", value = 20 }, -- Lightning Resist +20%
      --{ index = 45,  op = "==", value = 20 }, -- Poison Resist +20%
      --{ index = 43,  op = "==", value = 50 }, -- Cold Resist +50%
      --{ index = 153, op = "==", value = 1 }, -- Cannot Be Frozen
      { index = 34,  op = "==", value = 12 }, -- Damage Reduced by 8–12
      { index = 35,  op = "==", value = 12 }, -- Magic Damage Reduced by 8–12
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      --{ index = 79,  op = "==", value = 1 }, -- 1.25% MF per level
      --{ index = 16,  op = "==", value = 200 }, -- +160–200% Enhanced Defense
      --{ index = 35,  op = "==", value = 10 }, -- Magic Damage Reduced by 10
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 89,  op = "==", value = 4 }, -- +4 to Light Radius
      --{ index = 83,  op = "==", param = 3, value = 1 }, -- +1 to Paladin Skill Levels
      --{ index = 16,  op = "==", value = 200 }, -- +180–200% Enhanced Defense
      --{ index = 102, op = "==", value = 30 }, -- +30% Faster Block Rate
      --{ index = 40,  op = "==", value = 15 }, -- +15% to All Maximum Resistances
      --{ index = 245, op = "==", value = 2*2.5 }, -- +2.5 AR vs Demons per level
      --{ index = 20,  op = "==", value = 20 }, -- 20% Increased Chance of Blocking
      { index = 34,  op = "==", value = 15 }, -- Damage Reduced by 7–15
      { index = 35,  op = "==", value = 15 }, -- Magic Damage Reduced by 7–15
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      { index = 78,  op = "==", value = 40 }, -- Attacker Takes Damage of 20–40
      --{ index = 31,  op = "==", value = 60 }, -- +40–60 Defense
      --{ index = 0,   op = "==", value = 10 }, -- +10 Strength
      { index = 135, op = "==", value = 15 }, -- 10–15% Chance of Open Wounds
      --{ index = 39,  op = "==", value = 15 }, -- Fire Resist +15%
      --{ index = 16,  op = "==", value = 220 }, -- +160–220% Enhanced Defense
      { index = 34,  op = "==", value = 12 }, -- Damage Reduced by 8–12
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 2,   op = "==", value = 15 }, -- +15 Dexterity
      --{ index = 74,  op = "==", value = 10 }, -- Replenish Life +10
      --{ index = 77,  op = "==", value = 15 }, -- Increase Maximum Mana by 15%
      --{ index = 99,  op = "==", value = 30 }, -- +30% Faster Hit Recovery
      --{ index = 221, op = "==", value = 2 }, -- +2 Defense (per level)
      --{ index = 16,  op = "==", value = 160 }, -- +120–160% Enhanced Defense
      --{ index = 80,  op = "==", value = 20 }, -- 20% Better Chance of Getting Magic Items
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 89,  op = "==", value = -2 }, -- -2 to Light Radius
      { index = 123, op = "==", value = 250 }, -- +200–250 AR vs Demons
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      --{ index = 16,  op = "==", value = 200 }, -- +140–200% Enhanced Defense
      { index = 121, op = "==", value = 60 }, -- +30–60% Damage to Demons
      { index = 34,  op = "==", value = 15 }, -- Damage Reduced by 10–15
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 0,   op = "==", value = 8 }, -- +8 Strength
      --{ index = 3,   op = "==", value = 10 }, -- +10 Vitality
      --{ index = 43,  op = "==", value = 35 }, -- Cold Resist +35%
      --{ index = ?, op = "==", value = 2 }, -- 6% Chance to cast lvl 2 Iron Maiden when struck
      --{ index = 16,  op = "==", value = 180 }, -- +150–180% Enhanced Defense
      --{ index = 48,  op = "==", value = 12 }, -- Adds 12 Fire Damage (min)
      --{ index = 49,  op = "==", value = 36 }, -- Adds 36 Fire Damage (max)
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      --{ index = 138, op = "==", value = 3 }, -- +3 Mana after each Kill
      { index = 35,  op = "==", value = 10 }, -- Magic Damage Reduced by 6–10
      --{ index = 1,   op = "==", value = 15 }, -- +15 Energy
      --{ index = 99,  op = "==", value = 20 }, -- +20% Faster Hit Recovery
      --{ index = 16,  op = "==", value = 160 }, -- +140–160% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 83,  op = "==", param = 1, value = 1 }, -- +1 to Sorceress Skill Levels
      --{ index = 20,  op = "==", value = 30 }, -- 30% Increased Chance of Blocking
      --{ index = 102, op = "==", value = 30 }, -- +30% Faster Block Rate
      --{ index = 16,  op = "==", value = 150 }, -- +100–150% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 39,  op = "==", value = 25 }, -- All Resistances +25
      --{ index = 20,  op = "==", value = 25 }, -- 25% Increased Chance of Blocking
      --{ index = 16,  op = "==", value = 220 }, -- +180–220% Enhanced Defense
      --{ index = 102, op = "==", value = 30 }, -- +30% Faster Block Rate
      { index = 388, op = "==", value = 15 }, -- Smite: 14–15
      { index = 34,  op = "==", value = 10 }, -- Damage Reduced by 5–10
      { index = 35,  op = "==", value = 10 }, -- Magic Damage Reduced by 5–10
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 50,  op = "==", value = 1 }, -- Adds 1 Lightning Damage (min)
      --{ index = 51,  op = "==", value = 60 }, -- Adds 60 Lightning Damage (max)
      --{ index = 20,  op = "==", value = 20 }, -- 20% Increased Chance of Blocking
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      --{ index = 41,  op = "==", value = 50 }, -- Lightning Resist +50%
      --{ index = 19,  op = "==", value = 150 }, -- +150 Attack Rating
      --{ index = 16,  op = "==", value = 220 }, -- +160–220% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 54,  op = "==", value = 27 }, -- Adds 27 Cold Damage (min)
      --{ index = 55,  op = "==", value = 53 }, -- Adds 53 Cold Damage (max)
      --{ index = 48,  op = "==", value = 35 }, -- Adds 35 Fire Damage (min)
      --{ index = 49,  op = "==", value = 95 }, -- Adds 95 Fire Damage (max)
      --{ index = 50,  op = "==", value = 1 }, -- Adds 1 Lightning Damage (min)
      --{ index = 51,  op = "==", value = 120 }, -- Adds 120 Lightning Damage (max)
      { index = 39,  op = "==", value = 35 }, -- All Resistances +25–35
      --{ index = 16,  op = "==", value = 200 }, -- +140–200% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      { index = 34,  op = "==", value = 20 }, -- Damage Reduced by 15–20
      { index = 35,  op = "==", value = 23 }, -- Magic Damage Reduced by 18–23
      --{ index = 74,  op = "==", value = 15 }, -- Replenish Life +15
      --{ index = 16,  op = "==", value = 240 }, -- +180–240% Enhanced Defense
      --{ index = 20,  op = "==", value = 30 }, -- 30% Increased Chance of Blocking
      { index = 39,  op = "==", value = 35 }, -- All Resistances +25–35
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 58,  op = "==", value = 80 }, -- +80 Poison Damage over 4 seconds
      --{ index = ?, op = "==", value = 5 }, -- 5% Chance to cast lvl 5 Poison Nova when struck
      --{ index = 45,  op = "==", value = 75 }, -- Poison Resist +75%
      --{ index = 16,  op = "==", value = 200 }, -- +160–200% Enhanced Defense
      --{ index = 20,  op = "==", value = 20 }, -- 20% Increased Chance of Blocking
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 45,  op = "==", value = 30 }, -- Poison Resist +30%
      --{ index = 46,  op = "==", value = 5 }, -- +5% to Maximum Poison Resist
      --{ index = 58,  op = "==", value = 60 }, -- +60 Poison Damage over 4 seconds
      --{ index = 136, op = "==", value = 5 }, -- 5% Chance of Crushing Blow
      --{ index = 60,  op = "==", value = 5 }, -- 5% Life stolen per hit
      --{ index = 31,  op = "==", value = 25 }, -- +15–25 Defense
      --{ index = 16,  op = "==", value = 160 }, -- +130–160% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 1,   op = "==", value = 10 }, -- +10 Energy
      --{ index = 0,   op = "==", value = 10 }, -- +10 Strength
      { index = 122, op = "==", value = 200 }, -- +100–200% Damage to Undead
      { index = 124, op = "==", value = 200 }, -- +100–200 AR vs Undead
      --{ index = 16,  op = "==", value = 180 }, -- +140–180% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 246, op = "==", value = 2*8 }, -- +8 AR vs Undead (per level)
      --{ index = 221, op = "==", value = 2 }, -- +2% Damage to Undead (per level)
      { index = 62,  op = "==", value = 5 }, -- 4–5% Mana stolen per hit
      --{ index = 7,   op = "==", value = 20*256 }, -- +20 Life
      --{ index = 16,  op = "==", value = 190 }, -- +150–190% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 39,  op = "==", value = 24 }, -- Fire Resist +24%
      --{ index = 118, op = "==", value = 1 }, -- Half Freeze Duration
      --{ index = ?, op = "==", value = 10 }, -- 2% Chance to cast lvl 10 Enchant on striking
      --{ index = 93,  op = "==", value = 20 }, -- +20% Increased Attack Speed
      --{ index = 16,  op = "==", value = 200 }, -- +150–200% Enhanced Defense
      --{ index = 48,  op = "==", value = 13 }, -- Adds 13 Fire Damage (min)
      --{ index = 49,  op = "==", value = 46 }, -- Adds 46 Fire Damage (max)
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 48,  op = "==", value = 15 }, -- Adds 15 Fire Damage (min)
      --{ index = 49,  op = "==", value = 72 }, -- Adds 72 Fire Damage (max)
      --{ index = 143, op = "==", value = 15 }, -- +15 Fire Absorb
      --{ index = 16,  op = "==", value = 200 }, -- +150–200% Enhanced Defense
      --{ index = ?, op = "==", value = 4 }, -- 2% Chance to cast lvl 4 Meteor on striking
      --{ index = ?, op = "==", value = 12 }, -- 4% Chance to cast lvl 12 Firestorm on striking
      { index = 35,  op = "==", value = 6 }, -- Magic Damage Reduced by 4–6
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 48,  op = "==", value = 12 }, -- Adds 12 Fire Damage (min)
      --{ index = 49,  op = "==", value = 33 }, -- Adds 33 Fire Damage (max)
      --{ index = 96,  op = "==", value = 20 }, -- +20% Faster Run/Walk
      --{ index = 40,  op = "==", value = 10 }, -- +10% to Maximum Fire Resist
      --{ index = 39,  op = "==", value = 30 }, -- Fire Resist +30%
      --{ index = 89,  op = "==", value = 2 }, -- +2 to Light Radius
      --{ index = 16,  op = "==", value = 150 }, -- +120–150% Enhanced Defense
      { index = 79,  op = "==", value = 20 }, -- 10–20% Extra Gold from Monsters
      --{ index = 31,  op = "==", value = 15 }, -- +15 Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 32,  op = "==", value = 100 }, -- +100 Defense vs. Missile
      --{ index = 96,  op = "==", value = 20 }, -- +20% Faster Run/Walk
      --{ index = 2,   op = "==", value = 15 }, -- +15 Dexterity
      --{ index = 16,  op = "==", value = 210 }, -- +180–210% Enhanced Defense
      { index = 7,   op = "==", value = 65*256 }, -- +45–65 Life
      --{ index = 39,  op = "==", value = 15 }, -- Fire Resist +15%
      --{ index = 40,  op = "==", value = 5 }, -- +5% to Maximum Fire Resist
      { index = 74,  op = "==", value = 10 }, -- Replenish Life +5–10
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 16,  op = "==", value = 190 }, -- +150–190% Enhanced Defense
      --{ index = 138, op = "==", value = 5 }, -- +5 Mana after each Kill
      --{ index = 32,  op = "==", value = 200 }, -- +200 Defense vs. Missile
      --{ index = 77,  op = "==", value = 10 }, -- Increase Maximum Mana by 10%
      --{ index = 96,  op = "==", value = 30 }, -- +30% Faster Run/Walk
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 3,   op = "==", value = 10 }, -- +10 Vitality
      --{ index = 0,   op = "==", value = 10 }, -- +10 Strength
      { index = 80,  op = "==", value = 50 }, -- 30–50% Better Chance of Getting Magic Items
      --{ index = 96,  op = "==", value = 25 }, -- +25% Faster Run/Walk
      --{ index = 16,  op = "==", value = 190 }, -- +150–190% Enhanced Defense
      --{ index = 22,  op = "==", value = 25 }, -- Adds 15–25 Damage
      { index = 78,  op = "==", value = 10 }, -- Attacker Takes Damage of 5–10
      --{ index = 79,  op = "==", value = 10 }, -- 10% Extra Gold from Monsters
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 91,  op = "==", value = -25 }, -- Requirements -25%
      --{ index = 141, op = "==", value = 10 }, -- 10% Deadly Strike
      --{ index = 96,  op = "==", value = 30 }, -- +30% Faster Run/Walk
      --{ index = 136, op = "==", value = 15 }, -- 15% Chance of Crushing Blow
      { index = 135, op = "==", value = 10 }, -- 5–10% Chance of Open Wounds
      --{ index = 16,  op = "==", value = 200 }, -- +160–200% Enhanced Defense
      --{ index = 140, op = "==", value = 1 }, -- Open Wounds Blood Visual +1
      { index = 34,  op = "==", value = 5 }, -- Damage Reduced by -5-5
      { index = 35,  op = "==", value = 5 }, -- Magic Damage Reduced by -5-5
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      { index = 35,  op = "==", value = 15 }, -- Magic Damage Reduced by 10–15
      { index = 36,  op = "==", value = 15 }, -- Damage Reduced by 10–15%
      { index = 60,  op = "==", value = 8 }, -- 6–8% Life stolen per hit
      --{ index = 16,  op = "==", value = 180 }, -- +150–180% Enhanced Defense
      --{ index = 31,  op = "==", value = 15 }, -- +15 Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 78,  op = "==", value = 1 }, -- Attacker Takes Damage (per level)
      --{ index = 2,   op = "==", value = 15 }, -- +15 Dexterity
      --{ index = 156, op = "==", value = 33 }, -- +33% Piercing Attack
      --{ index = 31,  op = "==", value = 15 }, -- +15 Defense
      --{ index = 16,  op = "==", value = 150 }, -- +120–150% Enhanced Defense
      --{ index = 22,  op = "==", value = 10 }, -- +10 Maximum Damage
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 89,  op = "==", value = -2 }, -- -2 to Light Radius
      { index = 77,  op = "==", value = 20 }, -- Increase Maximum Mana by 15–20%
      { index = 62,  op = "==", value = 8 }, -- 5–8% Mana stolen per hit
      --{ index = 16,  op = "==", value = 150 }, -- +120–150% Enhanced Defense
      { index = 3,   op = "==", value = 20 }, -- +15–20 Vitality
      --{ index = 27,  op = "==", value = 15 }, -- Regenerate Mana 15%
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = ?, op = "==", value = 20 }, -- 5% Chance to cast lvl 13–20 Blizzard when struck
      --{ index = 149, op = "==", value = 15 }, -- +15 Cold Absorb
      --{ index = 44,  op = "==", value = 15 }, -- +15% to Maximum Cold Resist
      --{ index = 54,  op = "==", value = 13 }, -- Adds 13 Cold Damage (min)
      --{ index = 55,  op = "==", value = 21 }, -- Adds 21 Cold Damage (max)
      --{ index = 16,  op = "==", value = 170 }, -- +130–170% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = ?, op = "==", value = 7 }, -- 5% Chance to cast lvl 7 Fist of the Heavens when struck
      --{ index = 50,  op = "==", value = 1 }, -- Adds 1 Lightning Damage (min)
      --{ index = 51,  op = "==", value = 50 }, -- Adds 50 Lightning Damage (max)
      --{ index = 44,  op = "==", value = 10 }, -- +10% to Maximum Lightning Resist
      --{ index = 145, op = "==", value = 20 }, -- +20 Lightning Absorb
      --{ index = 16,  op = "==", value = 200 }, -- +160–200% Enhanced Defense
      --{ index = 3,   op = "==", value = 20 }, -- +20 Vitality
      --{ index = 0,   op = "==", value = 20 }, -- +20 Strength
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      { index = 60,  op = "==", value = 8 }, -- 6–8% Life stolen per hit
      { index = 62,  op = "==", value = 8 }, -- 6–8% Mana stolen per hit
      --{ index = 83,  op = "==", param = 4, value = 1 }, -- +1 to Necromancer Skill Levels
      { index = 36,  op = "==", value = 20 }, -- Damage Reduced by 15–20%
      { index = 35,  op = "==", value = 15 }, -- Magic Damage Reduced by 10–15
      --{ index = 16,  op = "==", value = 100 }, -- +100% Enhanced Defense
      --{ index = 54,  op = "==", value = 6 }, -- Adds 6 Cold Damage (min)
      --{ index = 55,  op = "==", value = 22 }, -- Adds 22 Cold Damage (max)
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 89,  op = "==", value = 1 }, -- +1 to Light Radius
      --{ index = 127, op = "==", value = 1 }, -- +1 to All Skills
      --{ index = 105, op = "==", value = 20 }, -- +20% Faster Cast Rate
      { index = 138, op = "==", value = 5 }, -- +3–5 Mana after each Kill
      --{ index = 16,  op = "==", value = 130 }, -- +80–130% Enhanced Defense
      --{ index = 1,   op = "==", value = 10 }, -- +10 Energy
      --{ index = 77,  op = "==", value = 10 }, -- Increase Maximum Mana by 10%
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 7,   op = "==", value = 50*256 }, -- +50 Life
      --{ index = 99,  op = "==", value = 30 }, -- +30% Faster Hit Recovery
      --{ index = 114, op = "==", value = 15 }, -- 15% Damage Taken Goes To Mana
      --{ index = 78,  op = "==", value = 47 }, -- Attacker Takes Damage of 47
      --{ index = 16,  op = "==", value = 120 }, -- +70–120% Enhanced Defense
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 0,   op = "==", value = 10 }, -- +10 Strength
      --{ index = 286, op = "==", value = 10 }, -- Reduce Cooldowns by 10%
      { index = 3,   op = "==", value = 15 }, -- +5–15 Vitality
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      { index = 283, op = "==", value = 2 }, -- +1–2 Summoning Power
      { index = 403, op = "==", value = 55 }, -- Increase Raven Damage by 45–55%
      --{ index = 27,  op = "==", value = 15 }, -- Regenerate Mana 15%
      --{ index = 39,  op = "==", value = 5 }, -- All Resistances +5
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      { index = 96,  op = "==", value = 10 }, -- +5–10% Faster Run/Walk
      { index = 99,  op = "==", value = 20 }, -- +10–20% Faster Hit Recovery
      { index = 93,  op = "==", value = 10 }, -- +5–10% Increased Attack Speed
      { index = 105, op = "==", value = 10 }, -- +5–10% Faster Cast Rate
      { index = 0,   op = "==", value = 10 }, -- -5–10 to all Attributes (Strength)
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 107, op = "==", param = 225, value = 5 }, -- +5 to Roar (Druid only)
      --{ index = 221, op = "==", value = 1 }, -- +1.5 Life per level
      --{ index = 54,  op = "==", value = 20 }, -- Adds 20 Cold Damage (min)
      --{ index = 55,  op = "==", value = 40 }, -- Adds 40 Cold Damage (max)
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      { index = 93,  op = "==", value = 20 }, -- +10–20% Increased Attack Speed
      --{ index = 107, op = "==", param = 195, value = 5 }, -- +5 to Fissure (Druid only)
      --{ index = 48,  op = "==", value = 20 }, -- Adds 20 Fire Damage (min)
      --{ index = 49,  op = "==", value = 40 }, -- Adds 40 Fire Damage (max)
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 107, op = "==", param = 221, value = 2 }, -- +2 to Bash (Barbarian only)
      --{ index = 138, op = "==", value = 2 }, -- +2 Mana after each Kill
      --{ index = 25,  op = "==", value = 20 }, -- +20% Enhanced Damage
      --{ index = 0,   op = "==", value = 5 }, -- +5 to all Attributes (Strength)
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      { index = 156, op = "==", value = 10 }, -- +5–10% Piercing Attack
      --{ index = 93,  op = "==", value = 20 }, -- +20% Increased Attack Speed
      --{ index = 89,  op = "==", value = -2 }, -- -2 to Light Radius
      --{ index = 19,  op = "==", value = 50 }, -- +50 Attack Rating
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      { index = 335, op = "==", value = 10 }, -- -5–10% to Enemy Cold Resistance
      { index = 333, op = "==", value = 10 }, -- -5–10% to Enemy Fire Resistance
      --{ index = 54,  op = "==", value = 25 }, -- +15–25 Cold Damage (min)
      --{ index = 55,  op = "==", value = 25 }, -- +15–25 Cold Damage (max)
      --{ index = 48,  op = "==", value = 25 }, -- +15–25 Fire Damage (min)
      --{ index = 49,  op = "==", value = 25 }, -- +15–25 Fire Damage (max)
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 107, op = "==", param = 226, value = 5 }, -- +5 to Natural Resistance (Barbarian only)
      { index = 39,  op = "==", value = 15 }, -- All Resistances +10–15
      --{ index = 36,  op = "==", value = 8 }, -- Damage Reduced by 8
      --{ index = 35,  op = "==", value = 5 }, -- Magic Damage Reduced by 5
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      --{ index = 107, op = "==", param = 118, value = 2 }, -- Level 2 Might Aura When Equipped
      --{ index = 93,  op = "==", value = -20 }, -- -20% Increased Attack Speed
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      { index = 388, op = "==", value = 7 }, -- Smite: 6–7
      --{ index = 20,  op = "==", value = 10 }, -- 10% Increased Chance of Blocking
      { index = 96,  op = "==", value = 10 }, -- +5–10% Faster Run/Walk
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
      location = { "onground","onplayer","equipped","atvendor" },
      stat = {
      { index = 388, op = "==", value = 9 }, -- Smite: 8–9
      --{ index = 102, op = "==", value = 10 }, -- +10% Faster Block Rate
      --{ index = 27,  op = "==", value = 15 }, -- Regenerate Mana 15%
      { index = 1,   op = "==", value = 15 }, -- +10–15 Energy
      },
      border = {165, 146, 099, 230},
      --notify = "Max Unique!",
      suffix = "\n {red} Maxed Stats",
      filter_levels = "1,2,3"
    },
  },
}