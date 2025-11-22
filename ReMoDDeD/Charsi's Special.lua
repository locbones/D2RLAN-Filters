--- Filter Title:Charsi's Special
--- Filter Type: 4 levels, cosmetic styles for loot, tips on various items
--- Filter Description:Filter for both starting and demanding players with Lite and Aggressive levels that are cycled between at-will in-game.\nTo cycle through levels, setup a hotkey in 'Hotkeys' inside your launcher ('Cycle Filter Level' option).\nLevel 1: Lite -- Level 2: Lite + Hunter -- Level 3: Aggressive -- Level 4: Aggressive + Hunter\n2 LEVELS (2 and 4) contain SET HUNTER: Tells you which set item is from what set, while on ground and not identified yet (chat message while cycling through fiter levels tells you what Level are you on).\n+ UNIQUE HUNTER for jewelry only(!) of my own choosing, only those rarer ones. Tells you some jewelry names while on ground and not identified yet\nThis filter is light on bases at levels 'Lite' and aggressive for bases at levels 'Aggressive' (Hell + clvl(80+) only).\nNot a single Unique/Set item is hidden!\nNot a single `hide` works indide town!\nAt level 'Aggressive', leaves good and up bases only (of my personal choosing so you might not agree on some, but just in case I left at least 1 base of each item slot to be able to drop).\nAt level 'Aggressive', hides ~half non-superior bases.\nDoes not hide any Runewords\nQoL options like styles for loot, general tips on some items, expanding some item descriptions with additional information.\nIndication on items able to be Demon Tempered.\nHides ALL magic items (besides Small/Grand Charms and Jewels ofc) BUT ONLY on character lvl above 30 and in NM or Hell.\nAt level 'Aggressive', hides ALL rare items (besides jewels ofc) BUT ONLY on character lvl above 80 and in Hell.\nDisplays very good Superior rolls as suffix.\nDisplays very good staff-mods on items as suffix.\nStyle for Gold on ground and hides all gold under 400 (Lite) and 800 (Aggressive) in Hell and clvl 80+.\nTP/ID scrolls hidden in Hell on clvl 80+.\nNotification for High and Ultra Runes, Unique Charms, Codex and Event items.\nWarning before throwing out important misc items (like Cube).\nHides all Low Runes in Hell and clvl 80+.\nDisplays socket count for all items in turquoise.\nDisplays ilvl of all items as suffix.\nHides all potion drops besides Full Rejuvs in Hell and clvl 80+\nQuest item notifies (some cringey comments to confuse players a bit lol)\nDon't use with ilvl display from qol settings in Launcher or you will see double ilvl numbers.\nIf you have any suggestions, or found a bug, please contact me on our discord in "loot-filters" channel :)\nMade by: Vivasen
--- Filter Link: https://github.com/locbones/D2RLAN-Filters/raw/refs/heads/main/ReMoDDeD/Charsi's%20Special.lua

return {
filter_level = 1,
filter_titles = {"ÿc4Lite","ÿc4Lite + Hunter","ÿc4Aggressive","ÿc4Aggressive + Hunter"},
reload = "ÿc4Charsi's Special (v1.8D) {Green}Reloaded",
allowOverrides = true,
    rules = {
		--																	      			         	BASES

		--{codes=NOT{"cm1","cm2","cm3"},location={"onground", "onplayer", "atvendor", "equipped"},suffix=" {orange}-{code}"},  -- DEBUG - Show item code
		--{codes=NOT{"cm1","cm2","cm3"},location={"onground", "onplayer", "atvendor", "equipped"},suffix=" {blue}-{index}"}, -- DEBUG - Show item index
		--{codes={"cm1","cm2","cm3"},location={"onground", "onplayer", "atvendor", "equipped"},prefix_desc=" {orange}[{code}]"},  -- DEBUG - Show item code for Charms
		--{codes={"cm1","cm2","cm3"},location={"onground", "onplayer", "atvendor", "equipped"},prefix_desc=" {blue}[{index}]\n"}, -- DEBUG - Show item index for Charms
		{ -- Show ilvl display to items
			codes = {"rin","aqv", "cqv", "amu", "cm2", "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Bp1", "Bp2", "Bp3", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Bb1", "Bb2", "Bb3", "Zc1", "Zc2", "Zc3", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Na1", "Na2", "Na3", "Sa1", "Sa2", "Sa3", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "g33", "leg", "hdm", "hfh", "hst", "msf", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "qf1", "qf2", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9", "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18", "jew", "m33", "cm1", "cm2", "cm3"},
			location = {"onground", "onplayer", "atvendor", "equipped"},
			suffix = " ({ilvl})"
		},
		{code="7cr",stat = {index = 198, op = ">=", value = 1},suffix = " {stat=(198)} aa"},
		{ -- Hides all unwanted bases with max 2os
			codes = {"Bb3", "cap", "uhc", "utc", "uvc", "ztb", "zlb", "zmb", "zvb", "zhb", "mbl", "tbl", "vbl", "hbl", "lbl", "xlb", "lbt", "mbt", "vbt", "Ag1", "Ag3", "xlg", "mgl", "vgl", "lgl", "xap", "hlm", "skp", "xuc", "xml", "buc", "sml", "Wp2", "Gg2", "Gg1", "Wp1", "Na1", "Sa1", "Sa2", "hla", "lea", "qui", "stu", "ces", "ktr", "jav", "pil", "7dg", "7di", "9dg", "9di", "dgr", "dir", "obd", "obc", "obb", "obe", "ob8", "ob7", "ob6", "ob9", "ob4", "ob1", "ob2", "ob3", "7ta", "9ta", "tax", "7	tk", "9tk", "9bk", "bkf", "tkf", "7yw", "7bw", "7wn", "7gw", "9wn", "9gw", "9yw", "9bw", "bwn", "gwn", "wnd", "ywn"},
            quality = "3-",
            area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hide badly rolled STR% Strong and Mighty Belt Superior bases (max 2os)
			codes = {"Bb2", "Bb1"},
			quality = "3-",
			stat = {index = 262, op = "<", value = 10},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display decently rolled STR% Strong and Mighty Belt Superior bases (max 2os)
			codes = {"Bb2", "Bb1"},
			quality = "3-",
			stat = {index = 262, op = ">=", value = 10},
			suffix = "ÿcR [{stat=(262)}%% STR]"
		},
		{ -- Hides leftover (non-superior) bases (max 2os)
			codes = {"7tk", "7bk", "umc", "ulc"},
            quality = "2",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hides all unwanted bases with max 3os
			codes = {"utb", "7cl", "uhb", "xtb", "8ss", "6ss", "sst", "xmb", "xvb", "xhb", "tbt", "Ab1", "utg", "uhg", "xtg", "xmg", "xvg", "xhg", "hgl", "bae", "bac", "baf", "ba6", "ba7", "ba8", "ba9", "baa", "ba4", "ba5", "ba2", "ba3", "ba1", "drd", "dr8", "dra", "dr3", "dr5", "dr1", "ulm", "urn", "uhl", "ukp", "uhm", "Pc3", "Pc2", "xhl", "xlm", "xsk", "xrn", "xh9", "xkp", "xhm", "bhm", "crn", "fhl", "ghm", "msk", "Pc1", "ne1", "ne2", "ne6", "ne7", "uuc", "xsh", "bsh", "lrg", "spk", "Na2", "Na3", "Sa3", "xla", "xui", "xea", "brs", "chn", "ltp", "rng", "scl", "7ha", "9ha", "hax", "sbw", "7sp", "spc", "clb", "9cl", "7cs", "9sp", "7lw", "7tw", "7qr", "7ar", "7xf", "7wb", "9xf", "9lw", "9tw", "9cs", "9ar", "9qr", "9wb", "btl", "clw", "axf", "skr", "wrb", "lxb", "7s7", "7ja", "7pi", "9pi", "9s9", "9ja", "ssp", "7kr", "7bl", "9kr", "9bl", "bld", "kri", "Pm1", "Pm2", "Pm3", "7mt", "7ma", "9ma", "9mt", "mac", "mst", "obf", "oba", "ob5", "7sc", "7qs", "9qs", "9sc", "gsc", "scp", "Ds1", "Ds2", "Ds3", "k02", "k01", "2hs", "7sm", "7sb", "7ss", "7fc", "7wd", "9wd", "9sm", "9ss", "9sb", "9fc", "flc", "sbr", "scm", "ssd", "wsd"},
            quality = "3-",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hide badly rolled FRW% Bladed Boots and Combat Kicks Superior bases (max 3os)
			codes = {"Ab3", "Ab2"},
			quality = "3-",
			stat = {index = 96, op = "<", value = 14},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display decently rolled FRW% Bladed Boots and Combat Kicks Superior bases (max 3os)
			codes = {"Ab3", "Ab2"},
			quality = "3-",
			stat = {index = 96, op = ">=", value = 14},
			suffix = "ÿcR [{stat=(96)}%% FRW]"
		},
		{ -- Hide badly rolled AR% Amazon Circlet Superior bases (max 3os)
			codes = {"Zc1", "Zc2", "Zc3"},
			quality = "3-",
			stat = {index = 119, op = "<", value = 29},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display decently rolled AR% Amazon Circlet Superior bases (max 3os)
			codes = {"Zc1", "Zc2", "Zc3"},
			quality = "3-",
			stat = {index = 119, op = ">=", value = 29},
			suffix = "ÿcR [{stat=(119)} AR%%]"
		},
		{ -- Hide badly rolled DEX/LVL Amazon Gloves Superior bases (max 3os)
			code = "Ag2",
			quality = "3-",
			stat = {index = 221, op = "<", value = 5},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display good rolled DEX/LVL Amazon Gloves Superior bases (max 3os)
			codes = {"Ag1", "Ag2", "Ag3"},
			quality = "3-",
			stat = {index = 221, op = "==", value = 5},
			suffix = "ÿcR [Good Dex/lvl]"
		},
		{ -- Display best rolled DEX/LVL Amazon Gloves Superior bases (max 3os)
			codes = {"Ag1", "Ag2", "Ag3"},
			quality = "3-",
			stat = {index = 221, op = "==", value = 6},
			suffix = "ÿcR [Best Dex/lvl]"
		},
		{ -- Hide badly rolled FCR% Sorceress Gloves Superior bases (max 3os)
			codes = {"Vg1", "Vg2", "Vg3"},
			quality = "3-",
			stat = {index = 105, op = "<", value = 21},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display decently rolled FCR% Sorceress Gloves Superior bases (max 3os)
			codes = {"Vg1", "Vg2", "Vg3"},
			quality = "3-",
			stat = {index = 105, op = ">=", value = 21},
			suffix = "ÿcR [{stat=(105)}%% FCR]"
		},
		{ -- Hide badly rolled Blaze Wolf skills Druid Helmet bases (max 3os)
			codes = {"drb", "drf", "dr6"},
			quality = "3-",
			stat = {index = 188, op = "<", value = 3, param = 41},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display perf rolled Blaze Wolf skills Druid Helmet bases (max 3os)
			codes = {"drb", "drf", "dr6"},
			quality = "3-",
			stat = {index = 188, op = "==", value = 3, param = 41},
			suffix = "ÿcR [3 to Blaze Wolf]"
		},
		{ -- Hide badly rolled Frost Bear skills Druid Helmet bases (max 3os)
			codes = {"dre", "dr9", "dr4"},
			quality = "3-",
			stat = {index = 188, op = "<", value = 3, param = 42},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display perf rolled Frost Bear skills Druid Helmet bases (max 3os)
			codes = {"dre", "dr9", "dr4"},
			quality = "3-",
			stat = {index = 188, op = "==", value = 3, param = 42},
			suffix = "ÿcR [3 to Frost Bear]"
		},
		{ -- Hide badly rolled Raven Damage Druid Helmet bases (max 3os)
			codes = {"drc", "dr7", "dr2"},
			quality = "3-",
			stat = {index = 403, op = "<", value = 200},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display decently rolled Raven Damage Druid Helmet bases (max 3os)
			codes = {"drc", "dr7", "dr2"},
			quality = "3-",
			stat = {index = 403, op = ">=", value = 200},
			suffix = "ÿcR [{stat=(403)} Raven Damage]"
		},
		{ -- Hide NOT +3 LF Amazon Javs Superior bases (max 3os)
			codes = {"amf", "ama", "am5"},
			quality = "3-",
			stat = {index = 107, op = "<", value = 3, param = 35},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display +3 LF Amazon Javs Superior bases (max 3os)
			codes = {"amf", "ama", "am5"},
			quality = "3-",
			stat = {index = 107, op = "==", value = 3, param = 35},
			suffix = "ÿcR [3 LF]"
		},
		{ -- Hides leftover (non-superior) bases (max 3os)
			codes = {"hbt", "tgl", "umb", "uvb", "ulb", "ci3", "ci2", "ci0", "ci1", "ulg", "uvg", "umg", "bab", "bad", "uh9", "usk", "uap"},
            quality = "2",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hides all unwanted bases with max 4os
			codes = {"pa7", "pa6", "pa9", "pa8", "paa", "pa4", "pa5", "pa3", "pa2", "pa1", "uow", "upk", "uml", "ush", "uts", "xts", "xpk", "xit", "xow", "xrg", "gts", "tow", "Wp3", "Gg3", "Oa3", "Oa2", "Oa1", "Bp2", "Bp1", "upl", "uhn", "ung", "uui", "urs", "ult", "uld", "uth", "ucl", "uar", "ula", "uul", "utu", "uea", "xul", "xrs", "xth", "xng", "xtp", "xhn", "xar", "xpl", "xld", "xlt", "xcl", "xtu", "aar", "fld", "ful", "gth", "plt", "spl", "cbw", "hbw", "8lx", "mxb", "6cs", "6bs", "6ls", "8ls", "8cs", "8bs", "bst", "cst", "lst", "bsw", "Bf4", "k03", "7gs", "7b7", "7cm", "9cm", "9b9", "9gs", "bsd", "clm", "gis", "lsd", "bal", "7gl", "7ts", "9ts", "9gl", "glv", "tsp"},
            quality = "3-",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hide badly rolled Assassin Katanas bases (max 4os)
			codes = {"72h", "92h"},
			quality = "3-",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			stat = {index = 427, op = "<", value = 40},
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display good rolled Assassin Katanas bases (max 4os)
			codes = {"72h", "92h"},
			quality = "3-",
			stat = {index = 427, op = ">=", value = 40},
			suffix = "ÿcR[{stat=(427)}%% Buff]"
		},
		{ -- Hide badly rolled Necro Shield bases (max 4os)
			codes = {"nea", "nef", "neg", "neb", "ned", "nee", "ne9", "ne8", "ne5", "ne4", "ne3"},
			quality = "3-",
			stat = {index = 188, op = "<", value = 3, param = 18},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display perf rolled Necro Shield bases (max 4os)
			codes = {"nea", "nef", "neg", "neb", "ned", "nee", "ne9", "ne8", "ne5", "ne4", "ne3"},
			quality = "3-",
			stat = {index = 188, op = "==", value = 3, param = 18},
			suffix = "ÿcR[+3 Summoning]"
		},
		{ -- Hide badly rolled Pala Shield bases (max 4os)
			codes = {"pac", "pab", "pad", "pae", "paf"},
			quality = "3-",
            stat = {index = 43, op = "<", value = 35},
            stat = {index = 45, op = "<", value = 35},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display decently rolled Pally Shield Superior bases (max 4os)
			codes = {"pac", "pab", "pad", "pae", "paf"},
			quality = "3-",
            stat = {index = 43, op = ">=", value = 35},
            stat = {index = 45, op = ">=", value = 35},
			suffix = "ÿcR [{stat=(45)}%% All Res]"
		},
		{ -- Hide badly rolled Enlightened Plate Superior bases (max 4os)
			code = "Bp3",	
			quality = "3-",
            stat = {index = 43, op = "<", value = 13},
            stat = {index = 45, op = "<", value = 13},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display almost perf rolled Enlightened Plate Superior bases (max 4os)
			code = "Bp3",	
			quality = "3-",
            stat = {index = 43, op = ">=", value = 13},
            stat = {index = 45, op = ">=", value = 13},
			suffix = "ÿcR[{stat=(45)}%% All Res]"
		},
		{ -- Hide badly rolled Cloak/Mantle Superior bases (max 4os)
			codes = {"Ca1", "Ca2", "Ca3"},
			quality = "3-",
			stat = {index = 188, op = "<=", value = 2, param = 49},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display good rolled Cload/Mantle Superior bases (max 4os)
			codes = {"Ca1", "Ca2", "Ca3"},
			quality = "3-",
			stat = {index = 188, op = "==", value = 3, param = 49},
			suffix = "ÿcR[+3 Shadow Disciplines]"
		},
		{ -- Display perf rolled Cload/Mantle Superior bases (max 4os)
			codes = {"Ca1", "Ca2", "Ca3"},
			quality = "3-",
			stat = {index = 188, op = "==", value = 4, param = 49},
			suffix = "ÿcR[+4 Shadow Disciplines]"
		},
		{ -- Hides leftover (non-superior) bases (max 4os)
			codes = {"urg", "uit", "kit", "utp"},
            quality = "2",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hides all unwanted bases with max 5os
			codes = {"axe", "bax", "2ax", "lax", "am2", "am1", "6hb", "6cb", "6sb", "8cb", "8sb", "8hb", "lbw", "6rx", "6mx", "8rx", "8mx", "rxb", "fla", "bar", "brn", "pax", "spr", "tri", "vou", "wsp", "scy", "9b8"},
            quality = "3-",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hides leftover (non-superior) bases (max 5os)
			code = "6lx",
            quality = "2",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hides all unwanted bases with max 6os
			codes = {"Bm1", "8ws", "wst", "Bm2", "Bm3", "Bf2", "Bf1", "7ga", "7bt", "7la", "7gi", "7ba", "7ax", "9gi", "9ba", "9ax", "9ga", "9la", "9wa", "9bt", "92a", "btx", "gix", "gax", "wax", "am6", "am7", "6l7", "6s7", "6lw", "6lb", "6sw", "8lb", "8lw", "8l8", "8sw", "8s8", "lbb", "lwb", "sbb", "swb", "8hx", "hxb", "Bm7", "Bm8", "Bm9", "7wh", "7m7", "7gm", "9wh", "9gm", "9m9", "gma", "mau", "whm", "7fl", "7vo", "7st", "7h7", "7sr", "7br", "7o7", "7tr", "6ws", "7p7", "9h9", "7wc", "9vo", "9tr", "9p9", "9b7", "9pa", "9br", "9sr", "9st", "hal", "pik", "spt", "9wc", "9s8", "wsc", "7s8", "ame", "amd", "am9", "am8", "am4", "am3", "Ds1", "Ds2", "Ds3", "Bf5", "Bm4", "Bm5", "Bm6", "7gd", "7fb", "7bs", "7ls", "9bs", "9gd", "9ls", "9fb", "flb", "gsd", "9cr", "crs"},
            quality = "3-",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hide NOT 1/2 bow skills Grand Matron Bow or Matrialchal Bow Superior bases (max 6os)
			codes = {"amc", "amb"},
			quality = "3-",
			stat = {index = 188, op = "<", value = 1, param = 0},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 1 bow skills Grand Matron Bow Superior bases (max 6os) - aggressive only
			codes = {"amc", "amb"},
			quality = "3-",
			filter_levels = "3,4",
			stat = {index = 188, op = "==", value = 1, param = 0},
			suffix = "ÿcR [+1 Bow skills]"
		},
		{ -- Display 2 bow skills Grand Matron Bow Superior bases (max 6os)
			codes = {"amc", "amb"},
			quality = "3-",
			stat = {index = 188, op = "==", value = 2, param = 0},
			suffix = "ÿcR [+2 Bow skills]"
		},
		{ -- Hide NOT 2/3 Pala skills Caduceous and Divine Scepter bases (max 6os)
			codes = {"7ws", "9ws"},
			quality = "3-",
			stat = {index = 83, op = "<", value = 2, param = 3},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display 2 Pala skills Caduceous and Divine Scepter bases (max 6os)
			codes = {"7ws", "9ws"},
			quality = "3-",
			stat = {index = 83, op = "==", value = 2, param = 3},
			suffix = "ÿcR [+2 Paladin skills]"
		},
		{ -- Display 3 Pala skills Caduceous and Divine Scepter bases (max 6os)
			codes = {"7ws", "9ws"},
			quality = "3-",
			stat = {index = 83, op = "==", value = 3, param = 3},
			suffix = "ÿcR [+3 Paladin skills]"
		},
		{ -- Hide <120% Summon Damage Necro Sickle bases (max 6os)
			codes = {"7mp", "9mp", "mpi"},
			quality = "3-",
			stat = {index = 281, op = "<", value = 120},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display >=120% Summon Damage Superior Necro Sickle bases (max 6os)
			codes = {"7mp", "9mp", "mpi"},
			quality = "3-",
			stat = {index = 281, op = ">=", value = 120},
			suffix = "ÿcR [{stat=(281)}%% Summon Damage]"
		},
		{ -- Hide <5% Life Leech Bloodletting Sword Superior base (max 6os)
			code = "Bf6",
			quality = "3-",
			stat = {index = 60, op = "<", value = 5},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Display >=4% Life Leech Bloodletting Sword Superior base (max 6os)
			code = "Bf6",
			quality = "3-",
			stat = {index = 60, op = ">=", value = 4},
			suffix = "ÿcR [{stat=(60)}%% LL]"
		},
		{ -- Hides leftover (non-superior) bases (max 6os)
			codes = {"Bf3", "7wa", "72a", "6hx", "9fl", "7pa", "7cr", "7b8"},
            quality = "2",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword=false,
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Hide all Indestructible/EtH Armor Bases (gets rid of indest/eth superior)
			codes = "allitems",
			quality = "3",
			ethereal = true,
			itype = 50,
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			runeword = false,
			pstat = {index = 152, op = "==", value = 0},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Hides all 1 socket bases (does not include LB bases) in Normal and Nightmare when clvl is below 80
			codes = {"cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Bp1", "Bp2", "Bp3", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Bb1", "Bb2", "Bb3", "Zc1", "Zc2", "Zc3", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Na1", "Na2", "Na3", "Sa1", "Sa2", "Sa3", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9"},
			quality = "3-",
			sockets = "1",
			runeword=false,
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulties = {"Normal", "Nightmare"},
			pstat = {index = 12, op = "<", value = 80},
			hide = true
		},
		{ -- Hides all 0 socket not superior bases (does not include LB bases) in Normal and Nightmare when clvl is below 80 - aggressive only
			codes = {"cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Bp1", "Bp2", "Bp3", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Bb1", "Bb2", "Bb3", "Zc1", "Zc2", "Zc3", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Na1", "Na2", "Na3", "Sa1", "Sa2", "Sa3", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9"},
			quality = "2",
			sockets = "0",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulties = {"Normal", "Nightmare"},
			runeword = false,
			pstat = {index = 12, op = "<", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Suffix for potentially great bases while leveling - Normal
			codes = {"cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Bp1", "Bp2", "Bp3", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Bb1", "Bb2", "Bb3", "Zc1", "Zc2", "Zc3", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Na1", "Na2", "Na3", "Sa1", "Sa2", "Sa3", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9"},
			quality = "3",
			sockets = "2+",
			difficulty = "Normal",
			runeword = false,
			pstat = {index = 12, op = "<", value = 80},
			suffix = "{yellow}[Good?]"
		},
		{ -- Suffix for potentially great bases while leveling - Nightmare
			codes = {"cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Bp1", "Bp2", "Bp3", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Bb1", "Bb2", "Bb3", "Zc1", "Zc2", "Zc3", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Na1", "Na2", "Na3", "Sa1", "Sa2", "Sa3", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9"},
			quality = "3",
			sockets = "3+",
			difficulty = "Nightmare",
			runeword = false,
			pstat = {index = 12, op = "<", value = 80},
			suffix = "{yellow}[Good?]"
		},

		
		--                                                                                           "Limit Broken" Bases
		
		{ -- Notify about LB bases
			codes = {"l01","l02","l03","l04","l05","l06","l07","l08","l09","l10","l11","l12","l13","l14","l15","l16","l17"},
			quality = "3-",
			notify = "LB Base{link}"
		},
		{ -- Magic LB items - for crafting - description
			codes = {"l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17"},
			quality = "4",
			location = {"onplayer", "atvendor", "equipped"},
			prefix_desc = "{red}Trash, but nice for crafting\n"
		},
		{ -- Magic LB items - for crafting - notify
			codes = {"l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17"},
			quality = "4",
			border = {99,99,230,230,1},
			notify = "Craft beyond limits{blue}{link}"
		},
		
		

		
		
		--													                                               MAGIC
		
		{ -- Hides all magic items (does not include LB bases, jewels and S/L/G charms) from clvl 30 above Normal
			codes = {"cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Bp1", "Bp2", "Bp3", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Bb1", "Bb2", "Bb3", "Zc1", "Zc2", "Zc3", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Na1", "Na2", "Na3", "Sa1", "Sa2", "Sa3", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9"},
			quality = "4",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulties = {"Nightmare", "Hell"},
			pstat = {index = 12, op = ">=", value = 30},
			hide = true
		},
		{ -- Hide Magic Ring/Amulet at clvl 100+ in Hell (shown earlier for crafting reasons) - lite
			codes = {"rin", "amu"},
			quality = "4",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			pstat = {index = 12, op = ">=", value = 100},
			filter_levels = "1,2",
			hide = true
		},
		{ -- Hide Magic Ring/Amulet in Hell (shown earlier for crafting reasons) - aggressive
			codes = {"rin", "amu"},
			quality = "4",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			filter_levels = "3,4",
			hide = true
		},
		{ -- Hides magic Large Charms, Aggressive
			codes = "cm2",
			quality = "4",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulties = {"Nightmare", "Hell"},
			pstat = {index = 12, op = ">=", value = 30},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Style for Magic Jewels
			code = "jew",
			quality = "4",
			border = {0, 0, 0, 225, 2},
			background = {3, 3, 41, 240}
		},
		{ -- Magic Small/Large/Grand Charm style
			codes = {"cm1", "cm2", "cm3"},
			quality = "4",
			background = {29, 2, 46, 230}
		},
		
				--													                                         RARE
		{ -- Hides all rare items, besides Jewels
			codes = {"rin", "amu", "cap", "skp", "hlm", "fhl", "ghm", "crn", "msk", "qui", "lea", "hla", "stu", "rng", "scl", "chn", "brs", "spl", "plt", "fld", "gth", "ful", "aar", "ltp", "buc", "sml", "lrg", "kit", "tow", "gts", "lgl", "vgl", "mgl", "tgl", "hgl", "lbt", "vbt", "mbt", "tbt", "hbt", "lbl", "vbl", "mbl", "tbl", "hbl", "bhm", "bsh", "spk", "xap", "xkp", "xlm", "xhl", "xhm", "xrn", "xsk", "xui", "xea", "xla", "xtu", "xng", "xcl", "xhn", "xrs", "xpl", "xlt", "xld", "xth", "xul", "xar", "xtp", "xuc", "xml", "xrg", "xit", "xow", "xts", "xlg", "xvg", "xmg", "xtg", "xhg", "xlb", "xvb", "xmb", "xtb", "xhb", "zlb", "zvb", "zmb", "ztb", "zhb", "xh9", "xsh", "xpk", "dr1", "dr2", "dr3", "dr4", "dr5", "ba1", "ba2", "ba3", "ba4", "ba5", "pa1", "pa2", "pa3", "pa4", "pa5", "ne1", "ne2", "ne3", "ne4", "ne5", "ci0", "ci1", "ci2", "ci3", "uap", "ukp", "ulm", "uhl", "uhm", "urn", "usk", "uui", "uea", "ula", "utu", "ung", "ucl", "uhn", "urs", "upl", "ult", "uld", "uth", "uul", "uar", "utp", "uuc", "uml", "urg", "uit", "uow", "uts", "ulg", "uvg", "umg", "utg", "uhg", "ulb", "uvb", "umb", "utb", "uhb", "ulc", "uvc", "umc", "utc", "uhc", "uh9", "ush", "upk", "dr6", "dr7", "dr8", "dr9", "dra", "ba6", "ba7", "ba8", "ba9", "baa", "pa6", "pa7", "pa8", "pa9", "paa", "ne6", "ne7", "ne8", "ne9", "nea", "drb", "drc", "drd", "dre", "drf", "bab", "bac", "bad", "bae", "baf", "pab", "pac", "pad", "pae", "paf", "neb", "neg", "ned", "nee", "nef", "Ca1", "Ca2", "Ca3", "Wp1", "Wp2", "Wp3", "Gg1", "Gg2", "Gg3", "Ab1", "Ab2", "Ab3", "Bp1", "Bp2", "Bp3", "Oa1", "Oa2", "Oa3", "Vg1", "Vg2", "Vg3", "Bb1", "Bb2", "Bb3", "Zc1", "Zc2", "Zc3", "St1", "St2", "Pc1", "Pc2", "Pc3", "Ag1", "Ag2", "Ag3", "Na1", "Na2", "Na3", "Sa1", "Sa2", "Sa3", "St3", "St4", "St5", "St6", "St7", "St8", "St9", "St0", "D01", "D03", "D04", "D05", "D08", "D09", "D11", "D12", "D17", "D19", "D20", "D21", "D23", "D29", "D35", "D36", "D37", "D38", "D45", "hax", "axe", "2ax", "mpi", "wax", "lax", "bax", "btx", "gax", "gix", "wnd", "ywn", "bwn", "gwn", "clb", "scp", "gsc", "wsp", "spc", "mac", "mst", "fla", "whm", "mau", "gma", "ssd", "scm", "sbr", "flc", "crs", "bsd", "lsd", "wsd", "2hs", "clm", "gis", "bsw", "flb", "gsd", "dgr", "dir", "kri", "bld", "tkf", "tax", "bkf", "bal", "jav", "pil", "ssp", "glv", "tsp", "spr", "tri", "brn", "spt", "pik", "bar", "vou", "scy", "pax", "hal", "wsc", "sst", "lst", "cst", "bst", "wst", "sbw", "hbw", "lbw", "cbw", "sbb", "lbb", "swb", "lwb", "lxb", "mxb", "hxb", "rxb", "gps", "ops", "gpm", "opm", "gpl", "opl", "d33", "9ha", "9ax", "92a", "9mp", "9wa", "9la", "9ba", "9bt", "9ga", "9gi", "9wn", "9yw", "9bw", "9gw", "9cl", "9sc", "9qs", "9ws", "9sp", "9ma", "9mt", "9fl", "9wh", "9m9", "9gm", "9ss", "9sm", "9sb", "9fc", "9cr", "9bs", "9ls", "9wd", "92h", "9cm", "9gs", "9b9", "9fb", "9gd", "9dg", "9di", "9kr", "9bl", "9tk", "9ta", "9bk", "9b8", "9ja", "9pi", "9s9", "9gl", "9ts", "9sr", "9tr", "9br", "9st", "9p9", "9b7", "9vo", "9s8", "9pa", "9h9", "9wc", "8ss", "8ls", "8cs", "8bs", "8ws", "8sb", "8hb", "8lb", "8cb", "8s8", "8l8", "8sw", "8lw", "8lx", "8mx", "8hx", "8rx", "ktr", "wrb", "axf", "ces", "clw", "btl", "skr", "9ar", "9wb", "9xf", "9cs", "9lw", "9tw", "9qr", "7ar", "7wb", "7xf", "7cs", "7lw", "7tw", "7qr", "7ha", "7ax", "72a", "7mp", "7wa", "7la", "7ba", "7bt", "7ga", "7gi", "7wn", "7yw", "7bw", "7gw", "7cl", "7sc", "7qs", "7ws", "7sp", "7ma", "7mt", "7fl", "7wh", "7m7", "7gm", "7ss", "7sm", "7sb", "7fc", "7cr", "7bs", "7ls", "7wd", "72h", "7cm", "7gs", "7b7", "7fb", "7gd", "7dg", "7di", "7kr", "7bl", "7tk", "7ta", "7bk", "7b8", "7ja", "7pi", "7s7", "7gl", "7ts", "7sr", "7tr", "7br", "7st", "7p7", "7o7", "7vo", "7s8", "7pa", "7h7", "7wc", "6ss", "6ls", "6cs", "6bs", "6ws", "6sb", "6hb", "6lb", "6cb", "6s7", "6l7", "6sw", "6lw", "6lx", "6mx", "6hx", "6rx", "ob1", "ob2", "ob3", "ob4", "ob5", "am1", "am2", "am3", "am4", "am5", "ob6", "ob7", "ob8", "ob9", "oba", "am6", "am7", "am8", "am9", "ama", "obb", "obc", "obd", "obe", "obf", "amb", "amc", "amd", "ame", "amf", "k01", "k02", "k03", "Ds1", "Ds2", "Ds3", "Pm1", "Pm2", "Pm3", "Bm1", "Bm2", "Bm3", "Bm4", "Bm5", "Bm6", "Bm7", "Bm8", "Bm9", "Bf1", "Bf2", "Bf3", "Bf4", "Bf5", "Bf6", "D00", "Ss1", "Ss2", "Ss3", "Ss4", "D02", "D13", "D14", "D15", "D16", "D24", "D25", "D26", "D27", "D28", "D30", "D31", "D34", "D39", "D40", "D41", "D42", "D43", "D44", "Ev9", "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14", "l15", "l16", "l17"},
			quality = "6",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Style for Rare Jewels
			code = "jew",
			quality = "6",
			border = {0, 0, 0, 225, 2},
			background = {39, 41, 3, 240}
		},
		
		--													                                                ARROWS and BOLTS
		{ -- Hides all magic and rare arrows/bolts
			codes = {"aqv", "cqv"},
			quality = "4,6",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",	
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
			hide = true
		},
		{ -- Hide white arrows/bolts at all times
			codes = {"aqv", "cqv"},
			quality="2",
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			hide=true
		},
		
		--													                                                 MISC and STYLES

		{ -- Hide gold drops under 800 for clvl above 80 Aggressive
			code = "gld",
            stat = {index = 14, op = "<=", value=799}, 
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "3,4",
            hide = true
        },
		{ -- Display the max socket amount on items in their description
			codes="allitems",
			location={"onground", "onplayer", "atvendor", "equipped"},
			itype={45,50,10,12},
			suffix_desc="ÿcBMax Sockets: {maxsock}\n"
		},
		{ -- Hide gold drops under 400 for clvl above 80 Lite
			code = "gld",
            stat = {index = 14, op = "<=", value=399}, 
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			pstat = {index = 12, op = ">=", value = 80},
			filter_levels = "1,2",
            hide = true
        },
		{ -- Hide omega low gold while leveling
			code = "gld",
            stat = {index = 14, op = "<", value=10}, 
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			pstat = {index = 12, op = "between", value = { 10, 79 }},
            hide = true
        },
		{ -- Notify for LB Uniques
            codes = {"l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18"},
			quality = 7,
            itype = {45, 50},
            notify = "Unique LB item dropped!"
        },
        { -- Hides id/tp scroll drops
            codes = {"tsc", "isc"},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			pstat = {index = 12, op = ">=", value = 80},
            hide = true
        },
        { -- Hides all potion drops besides full rejuvs from clvl 80
            codes = {"hp1", "hp2", "hp3", "hp4", "hp5", "mp1", "mp2", "mp3", "mp4", "mp5", "rvs"},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			pstat = {index = 12, op = ">=", value = 80},
            hide = true
        },
		{ -- Style for Unique items
            codes = "allitems",
            quality = "7",
            border = {165, 146, 99, 230, 1} 
        },
		{ -- Style for Set items
            codes = "allitems",
            quality = "5",
            border = {0, 255, 0, 230, 1} 
        },
		{ -- High Runes notification and border
            codes = {"r23", "r24", "r25", "r26", "r27", "r28", "r29", "r30", "r31", "r32", "r33"},
            notify = "ÿc@High Rune Nearby: {name}",
			border = {255, 170, 0, 230, 1} 
        },
		{ -- Style for Item UpConverters
			codes = {"u00", "u01", "u02"},
			background_style="VerdantBloom"
		},
		{ -- Style for Codex
            codes = {"a10", "a11", "a12", "a13", "a14", "a15", "a16", "a17", "a18", "a19", "a20", "a21", "a22", "a23", "a24", "a25", "a26", "a27", "a28", "a29", "a30", "a31", "a32", "a33", "a34", "a35", "a36", "a37", "a38", "a39", "a40", "a41", "a42", "a43", "a44", "a45", "a46", "a47", "a48", "a49", "a50", "a51", "a52", "a53", "a54", "a55", "a56", "a57", "a58", "a59", "a60", "a61", "a62", "a63", "a64", "a65"},
            notify = "Seven Sins: {name}",
            background_style = "SapphireSonnet"
        },
		{ -- EEE Notify
			code = "a66",
			notify = "{red}Very {gold}important item on ground!"
		},
		{ -- Ultra Runes notification and border
            codes = { "r34", "r35", "r36"},
            background_style = "OceanDrift",
            notify = "ÿc@Ultra Rune Nearby: {name}",
        },
        { -- Style for Treasure Chests
            codes = {"y09", "y10", "y11", "y12", "y13", "y14", "y15", "y16", "y17", "y18", "y19", "y20", "y21", "y22", "y23", "y24", "y25", "y26", "y27", "y28", "y29", "y30", "y31", "y32"},
            notify = "ÿc:Tÿc=rÿcOeÿcUaÿcJsÿc;uÿc2rÿc5eÿcR! ÿc;ヽ({red}♡ÿc;‿{red}♡ÿc;)ノ",
            background_style = "SapphireSonnet",
            border = { 220, 120, 255, 230, 2 }
        },
		{ -- ID/TP Tomes, Cube and Key notify and style
			codes = {"tbk", "ibk", "key", "box","y34","y35","y36","y37","y38","y39","y40"},
			notify = "{red}Are you sure you want to leave it?",
			prefix = "{pink}"
		},
		
		{ -- ID/TP Tomes Style
			codes = {"tbk", "ibk"},
			location = {"onplayer", "atvendor"},
			prefix = "{pink}"
		},
		{ -- Style for Beacon of Hope
			code = "BoH",
			name_override = "{red}Is that a... bacon?",
			notify = "{red}Important Item: {name}"
		},
		{ -- Border for Superior 0os non-eth Bases
			codes = "allitems",
			quality = "3",
			sockets = "0",
			ethereal = false,
			border = {236, 236, 237, 210, 1}
		},
		{ -- Border for Superior 1+os non-eth Bases
			codes = "allitems",
			quality = "3",
			sockets = "1+",
			border = {114, 114, 114, 255, 1}
		},
		{ -- Border for Superior eth Bases
			codes = "allitems",
			quality = "3",
			ethereal = true,
			sockets = "0",
			border = {81, 164, 227, 220, 1}
		},
		{ -- Upconverter 2 and 3 tooltip fix
			codes = {"u01", "u02"},
			location = {"onplayer", "atvendor"},
			prefix = "{white} For Rare and Unique items only\n"
		},
		{ -- Scroll of Torment border
			codes = {"K01", "K02", "K03", "K04", "K05", "K06", "K07", "K08", "K09", "K10", "K11", "K12", "K13", "K14", "K15", "K16", "K17", "K18", "K19", "K20", "K21", "K22", "K23", "K24", "K25", "K26", "K27", "K28", "K29", "K30", "K31", "K32", "K33", "K34", "K35", "K36", "K37", "K38", "K39", "K40", "K41", "K42", "K43", "K44", "K45", "K46", "K47", "K48", "K49", "K50", "K51", "K52", "K53", "K54", "K55", "K56", "K57", "K58", "K59", "K60", "K61", "K62", "K63", "K64", "K65", "K66", "K67", "K68", "K69", "K70", "K71", "K72", "K73", "K74", "K75", "K76", "K77", "K78", "K79", "K80"},
			border = {0, 130, 0, 230, 2}
		},
		{ -- Ramaladni's Gift, Socket Remover, Soul Shards and Gem Vein style
			codes = {"Rgx", "b64","S01", "y33"},
			border = {7, 167, 222, 230, 1},
			name_style = "Cotton Candy"
		},
		{ -- Treasure Chests style
			codes = {"y09", "y10", "y11", "y12", "y13", "y14", "y15", "y16", "y17", "y18", "y19", "y20", "y21", "y22", "y23", "y24", "y25", "y26", "y27", "y28", "y29", "y30", "y31", "y32"},
            border = {165, 146, 99, 230, 1}
		},
		{ -- Style for Scroll of Triumph
			code="a06",
			name_override="Are ya winning son?",
			notify="{red}Edyrem: {white}Yes, dad.",
			background = {165, 146, 99, 200},
			border={0,0,0,255,2}
		},
		{ -- Style for Gold
			code = "gld",
			background = {180, 199, 0, 110},
			name_override = "{name} G"
		},
		{ -- Hide all Low Runes
			codes = {"r01", "r02", "r03", "r04", "r05", "r06", "r07", "r08", "r09", "r10", "r11"},
			area = NOT {"Rogue Encampment", "Lut Gholein", "Kurast Docktown", "The Pandemonium Fortress", "Harrogath"},
			difficulty = "Hell",
			pstat = {index = 12, op = ">=", value = 80},
			hide = true
		},
		{ -- Display socket count number of all socketed, identified items. onground only
			codes = "allitems",
			sockets = "1+",
			identified = true,
			suffix = "{turquoise}[{sockets}]"
        },
		{ -- Style for Demon Tempered Items
			codes = "allitems",
			quality = "9",
			border = {0,0,0,255,2},
			background = {14, 14, 123, 90},
			notify = "{red}Demon Tempered item on ground!"
		},
		{ -- Style for Facets
            codes = { "j00", "jew" },
            quality = 7,
            notify = "ÿcERainbow Facet Nearby!",
            name_style = "Rainbow",
            border = {255,0,0,230,1} 
        },
		{ -- Style for Premium Socket Remover
			code = "b65",
			notify = "{red}Are you sure?",
			name_override = "Premium socket remover",
			border = {7, 167, 222, 230, 1},
			name_style = "Cotton Candy"
		},
		{ -- Style for Uber Keys/Organs
			codes = {"pk1", "pk2", "pk3", "dhn", "bey", "mbr"},
			border = {255,165,0,255,1}
		},
		{ -- Style for DT Body Parts
			codes = {"C00","C01","C02","C03","C04","C05","C06","C07","C08","C09","C10","C11","C12","C13","C14","C15","C16","C17","C18","C19","C20","C21","C22","C23","C24","C25","C26","C27","C28","C29","C30","C31","C32","C33","C34","C35","C36","C37"},
			background_style = "TamarilloGlow"
		},
		{ --Display RMD "Elite Bases" with a special EB icon, to the left of item name
            codes = NOT { "l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18" },
            rarity = 2,
            location = { "onground", "onplayer", "equipped", "atvendor" },
            itype = { 45, 50 },
            prefix = "ⅲ "
        },
		{ --Change EB sign on DTs to match color of item name
            codes = NOT {"l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18"},
            rarity = 2,
			quality = 9,
            location = {"onground", "onplayer", "equipped", "atvendor"},
            itype = {45, 50},
            prefix = "ÿc:"
        },
        { --Display RMD "Limit Broken Bases" with a special LB icon, to the left of item name - normal bases
            codes = {"l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18"},
            location = {"onground", "onplayer", "equipped", "atvendor"},
			sockets = "0",
			quality = "3-",
			ethereal = false,
            itype = {45, 50},
            prefix = "{red}ⅳ{white} "
        },
		{ --Display RMD "Limit Broken Bases" with a special LB icon, to the left of item name - eth bases
            codes = {"l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18"},
            location = {"onground", "onplayer", "equipped", "atvendor"},
			quality = "3-",
			sockets = "0",
			ethereal = true,
            itype = {45, 50},
            prefix = "{red}ⅳ{turquoise} "
        },
		{ --Display RMD "Limit Broken Bases" with a special LB icon, to the left of item name - socketed bases
            codes = {"l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18"},
            location = {"onground", "onplayer", "equipped", "atvendor"},
			sockets = "1+",
			quality = "3-",
            itype = {45, 50},
            prefix = "{red}ⅳ{gray} "
        },
		{ --Display RMD "Limit Broken Bases" with a special LB icon, to the left of item name - magic
            codes = {"l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18"},
            location = {"onground", "onplayer", "equipped", "atvendor"},
			quality = 4,
            itype = {45, 50},
            prefix = "{red}ⅳ{blue} "
        },
		{ -- Display RMD "Limit Broken Bases" with a special LB icon, to the left of item name - unique
            codes = {"l01", "l02", "l03", "l04", "l05", "l06", "l07", "l08", "l09", "l10", "l11", "l12", "l13", "l14","l15", "l16", "l17", "l18"},
            location = {"onground", "onplayer", "equipped", "atvendor"},
			quality = 7,
            itype = {45, 50},
            prefix = "{red}ⅳ{gold} "
        },
		{ --Rename for Ultra Enhancement Crystals
			codes = {"z19", "z20", "z21", "z22", "z23", "z24", "z25", "z26", "z27"},
			location = {"onground", "onplayer", "atvendor"},
			name_override = "{gold}Ultra Enhancement Crystal"
		},
		{ --Warning for Ultra Enhancement Crystals
			codes = {"z19", "z20", "z21", "z22", "z23", "z24", "z25", "z26", "z27"},
			location = {"onplayer", "atvendor"},
			prefix = "{gold}({red}1 Use Per Item{gold})\n"
		},
		{ --onground Style and notify for Ultra Enhancement Crystals
			codes = {"z19", "z20", "z21", "z22", "z23", "z24", "z25", "z26", "z27"},
			notify = "Valuable Item: {red}Ultra Enhancement",
			background_style = "TamarilloGlow"
		},
		{code="Z02",name_override="{purple}Amethyst {gold}Remover"}, --Onground display for Amethyst Remover
        {code="Z03",name_override="{yellow}Topaz {gold}Remover"}, --Onground display for Topaz Remover
        {code="Z04",name_override="{blue}Sapphire {gold}Remover"}, --Onground display for Sapphire Remover
        {code="Z05",name_override="{green}Emerald {gold}Remover"}, --Onground display for Emerald Remover
        {code="Z06",name_override="{red}Ruby {gold}Remover"}, --Onground display for Ruby Remover
        {code="Z07",name_override="{white}Diamond {gold}Remover"}, --Onground display for Diamond Remover
        {code="Z08",name_override="{gray}Skull {gold}Remover"}, --Onground display for Skull Remover
		{code="cm3",index=590,identified=true,location={"onplayer","atvendor","onground"},name_override="ÿc;Grand Charm\n{gold}Unholy Commander ({ilvl})"}, --Unholy Commander name color fix, identified
		{code="cm3",index=590,identified=false,location="onground",notify="{gold}Unique: Grand Charm",name_override="{gold}Grand Charm ({ilvl})"}, --Unholy Commander name color fix, not identified and onground
		{code="cm3",index=590,identified=false,location={"onplayer","atvendor"},name_override="{gold}Grand Charm ({ilvl})"}, --Unholy Commander name color fix, not identified, other locations
		{code="cm3",index=611,identified=true,location={"onplayer","atvendor","onground"},name_override="ÿc;Grand Charm\n{gold}Blank Talent ({ilvl})"}, --Blank Talent name color fix, identified
		{code="cm3",index=611,identified=false,location="onground",notify="{gold}Unique: Grand Charm",name_override="{gold}Grand Charm ({ilvl})"}, --Blank Talent name color fix, not identified and onground
		{code="cm3",index=611,identified=false,location={"onplayer","atvendor"},name_override="{gold}Grand Charm ({ilvl})"}, --Blank Talent name color fix, not identified, other locations
		{code="cm3",index=542,identified=true,location={"onplayer","atvendor","onground"},name_override="ÿc;Grand Charm\n{gold}Gheed's Fortune ({ilvl})"}, --Gheed's Fortune name color fix, identified
		{code="cm3",index=542,identified=false,location="onground",notify="{gold}Unique: Grand Charm",name_override="{gold}Grand Charm ({ilvl})"}, --Gheed's Fortune name color fix, not identified and onground
		{code="cm3",index=542,identified=false,location={"onplayer","atvendor"},name_override="{gold}Grand Charm ({ilvl})"}, --Gheed's Fortune name color fix, not identified other locations
		{code="cm1",index=543,identified=true,location={"onplayer","atvendor","onground"},name_override="ÿc;Small Charm\n{gold}Annihilus ({ilvl})"}, --Annihilus name color fix, identified
		{code="cm1",index=543,identified=false,location="onground",notify="{gold}Unique: Small Charm",name_override="{gold}Small Charm ({ilvl})"}, --Annihilus name color fix, not identified and onground
		{code="cm1",index=543,identified=false,location={"onplayer","atvendor"},name_override="{gold}Small Charm ({ilvl})"}, --Annihilus name color fix, not identified other locations
		{code="cm1",index=606,identified=true,location={"onplayer","atvendor","onground"},name_override="ÿc;Small Charm\n{gold}Cola Cube ({ilvl})"}, --Cola Cube name color fix, identified
		{code="cm1",index=606,identified=false,location="onground",notify="{gold}Unique: Small Charm",name_override="{gold}Small Charm ({ilvl})"}, --Cola Cube name color fix, not identified and onground
		{code="cm1",index=606,identified=false,location={"onplayer","atvendor"},name_override="{gold}Small Charm ({ilvl})"}, --Cola Cube name color fix, not identified other locations
		{code="cm3",index=654,identified=true,location={"onplayer","atvendor","onground"},name_override="ÿc;Grand Charm\n{gold}Kuroneko no Himitsu ({ilvl})"}, --Kuroneko no Himitsu name color fix, identified
		{code="cm3",index=654,identified=false,location="onground",notify="{gold}Unique: Grand Charm",name_override="{gold}Grand Charm ({ilvl})"}, --Kuroneko no Himitsu name color fix, not identified and onground
		{code="cm3",index=654,identified=false,location={"onplayer","atvendor"},name_override="{gold}Grand Charm ({ilvl})"}, --Kuroneko no Himitsu name color fix, not identified other locations
		{code="cm1",index=598,identified=false,location="onground",notify="{gold}Unique: Small Charm",name_override="{gold}Small Charm ({ilvl})"}, --Healthy Breakfast notify, not identified and onground
		{code="cm2",index=556,identified=false,location="onground",notify="{gold}Unique: Large Charm",name_override="{gold}Large Charm ({ilvl})"}, --Hellfire Torch notify, not identified and onground
		
			
					--                                                                             Display very good superior rolls
		
		{codes="allitems",quality="3",runeword=false,stat=OR{{index={0,1,2,3},op="==",value=15},{index={0,1,2,3},op="==",value=14},{index={0,1,2,3},op="==",value=13}},suffix="ÿcR{stat=(3)} att"}, -- All Attributes
		{codes="allitems",quality="3",runeword=false,stat=OR{{index={39,41,43,45},op="==",value=10},{index={39,41,43,45},op="==",value=9}},suffix="ÿcR{stat=(39)}%% all res"}, -- All Resistances
		{codes="allitems",quality="3",runeword=false,stat={index={40,42,44,46},op="==",value=5},suffix="ÿcR5%% max res"}, -- Max All Resistance
		{codes="allitems",quality="3",runeword=false,stat=OR{{index={333,334,335,336},op=">=",value=9},{index={187,189,190,191},op=">=",value=9}},suffix="ÿcR-{stat=(333)}%%res|-{stat=(187)}%%im"}, -- Resistance/Immunity pierce
		{codes="allitems",quality="3",runeword=false,stat={index=136,op=">=",value=9},suffix="ÿcR{stat=(136)}%% Crushing"}, -- Crushing Blow
		{codes={"7fl","9fl"},quality="3",runeword=false,stat={index=427,op=">=",value=16},suffix="ÿcR{stat=(427)}%% Buff Dura"}, -- Buff Duration, Knout/Scourge only
		{codes=NOT{"Vg1","Vg2","Vg3"},quality="3",runeword=false,stat={index=105,op=">=",value=14},suffix="ÿcR{stat=(105)}%%FCR"}, -- FCR
		{codes="allitems",quality="3",runeword=false,stat={index=93,op=">=",value=14},suffix=" ÿcR{stat=(93)}%%IAS"}, -- IAS
		
		
			
		
		--																             Additional/missing prefixes or gameplay tips for various items
		
		-- Additional information:
		{code="rin",index=527,location={"onplayer","atvendor","equipped"},prefix="{gray}Can be sold to any vendor in Hell to spawn Dclone{gold}\n"}, -- SoJ Dclone note
		{code="tes",location={"onplayer","atvendor"},prefix="{gray}Cube with QoL Bag to get 4-7 Gems\n{orange}"},-- Twisted Essence of Suffering
		{code="ceh",location={"onplayer","atvendor"},prefix="{gray}Cube with QoL Bag to get 1-3 HR Points\n{orange}"},-- Charged Essense of Hatred
		{code="bet",location={"onplayer","atvendor"},prefix="{gray}Cube with QoL Bag to get 3-6 Set Cores\n{orange}"},-- Burning Essence of Terror
		{code="fed",location={"onplayer","atvendor"},prefix="{gray}Cube with QoL Bag to get 3-6 Unique Cores\n{orange}"},-- Festering Essence of Destruction
		{code="hst",location={"onplayer","equipped"},prefix_desc="{yellow}0   )   []   +   >>   /_\\   0)\nTombs:\n"}, -- Horadric Staff (credits to Wolfie, mine now hehe)
		{code="jew",location={"onplayer","atvendor"},quality="4",prefix="{gray}See description of Jewel Converter for recipes{blue}\n"}, --Magic Jewel
		{code="jew",location={"onplayer","atvendor"},quality="6",prefix="{gray}See description of Jewel Converter for recipes{yellow}\n"}, --Rare Jewel
		{codes={"z75","z74"},location={"onplayer","atvendor"},prefix_desc="{gray}{gold}Storage Bag {gray}(30 {yellow}Jewels{gray}) + Item UpConverter (Advanced) = {gold}Rainbow Facet{gray} (random)\n{gold}Storage Bag{gray} (5 {yellow}Jewels{gray}) + {gold}Unique{gray}/{green}Set{gray} Item + Identify Scroll = Re-Rolled Stats\n{gold}Storage Bag{gray} (10 {blue}Jewels{gray}) + Item UpConverter (basic) + Token of Evil = {yellow}Jewel{gray} (random)\n{white}Jewel Recipes:\n\n"},
		{codes={"C00","C01","C02","C03","C04","C05","C06","C07","C08","C09","C10","C11","C12","C13","C14","C15","C16","C17","C18","C19","C20","C21","C22","C23","C24","C25","C26","C27","C28","C29","C30","C31","C32","C33","C34","C35","C36","C37"},location={"onplayer","atvendor"},prefix="{gray}One of the ÿcRBody Parts{gray} used in {red}Demon Tempering\n"}, -- Demon Tempering Body Parts
		{codes="allitems",quality="7",rarity="0",identified=true,index={6,45,55,71,299,330,335},location={"onplayer","atvendor","equipped"},prefix="ÿcRCan be Demon Temperedÿc4\n"}, -- Sacret Relics for Demon Tempering, Normal bases
		{codes="allitems",quality="7",rarity="1",identified=true,index={143,281,286,347,366,369,379,386,483},location={"onplayer","atvendor","equipped"},prefix="ÿcRCan be Demon Temperedÿc4\n"}, -- Sacret Relics for Demon Tempering, Exceptional bases
		{codes="allitems",quality="7",rarity="2",identified=true,index={189,211,213,217,225,226,231,246,247,249,254,262,292,295,412,413,418,423,428,433,438,445,447,453},location={"onplayer","atvendor","equipped"},prefix="ÿcRCan be Demon Temperedÿc4\n"}, -- Sacret Relics for Demon Tempering, Elite bases
		{codes="allitems",quality="7",identified=true,index={525,527,529,532,543,556},location={"onplayer","atvendor","equipped"},prefix="ÿcRCan be Demon Temperedÿc4\n"}, -- Sacret Relics for Demon Tempering, misc items
		{codes="allitems",quality="7",identified=false,index={189,211,213,217,225,226,231,246,247,249,254,262,292,295,412,413,418,423,428,433,438,445,447,453,525,527,529,532,543,556,143,281,286,347,366,369,379,386,483,6,45,55,71,299,330,335},filter_levels="2,4",location={"onplayer","atvendor","onground"},suffix="{yellow}[SR]"}, -- Sacret Relics for Demon Tempering - HUNTER
		{code="y67",location={"onplayer","atvendor"},prefix="{gray}Cube it with a ÿcRDemon Temper{gray}-able item and then with a ÿcRBody Part{gray} to Temper it\nÿcRIngredient{gray} for {red}Demon Tempering\n"}, -- Scroll of Belial
		{code="S01",location={"onplayer","atvendor"},prefix="{grey}Gives 1-3 Soul Shards when cubed with Beacon\n"}, -- Soul Shard
		{code="b64",location={"onplayer","atvendor"},prefix="{red}If stacked, cube alone to remove 1 quantity before using\n{gray}Cube a stack of 10 to create Premium Socket Remover\n"}, -- Socket Remover
		{code="b65",location={"onplayer","atvendor"},prefix="{red}If stacked, cube alone to remove 1 quantity before using\n{gray}Cube alone to turn back into 10 Socket Removers\n"}, -- Premium Socket Remover
		{code="cm3",identified=true,index=590,location={"onplayer","atvendor"},prefix="{grey}Cube alone to change amount summoned (5 max)\nÿc4"}, -- Unholy Commander
		{code="cm3",identified=true,index=611,location={"onplayer","atvendor"},prefix="{grey}Can be enhanced. Cannot be re-rolled.\nÿc4"}, -- Blank Talent
		{code="yps",location={"onplayer","atvendor"},prefix_desc="{grey}Used for {green}Set{gray} Blood Contracts{white}\n"}, -- Antidote Potion
		{code="wms",location={"onplayer","atvendor"},prefix_desc="{grey}Used for ÿc4Unique{gray} Blood Contracts{white}\n"}, -- Thawing Potion
		{code="isc",location={"onplayer","atvendor"},prefix="{grey}ID Scroll + HP potion in NM/Hell = New Beacon\nUsed for re-rolling Unique/Set items\n"}, -- Identify Scroll
		{code="GBd",location={"onplayer","atvendor"},prefix="{grey}Used for splitting stacked {yellow}Gold Bars{white}\n"}, -- Gold Bar Splitter
		{code="TK8",location={"onplayer","atvendor"},name_override="{grey}Beacon of Hope + X (Summon lvl +1) Class Tokens = Upgraded Summon\nClass Token + Beacon of Hope = Added Soul Summon\nToken Forger + Beacon of Hope (100 Soul Shards) = Class Token{white}\nToken Forger"}, -- Token Forger
		{code="leg",location={"onplayer","atvendor"},prefix="{grey}Cube alone for MooMoo Farm\n{white}"}, -- Wirt's Leg
		{code="std",location={"onplayer","atvendor"},prefix="{grey}Can be sold to any vendor in Hell to spawn Diablo Clone\nCube with Torch/Anni to reroll them\nÿc4"}, -- Standard of Heroes
		{code="Y21",location={"onplayer","atvendor"},prefix_desc="{white}1 Gold Bar + item = added Ethereal\n{red}or\n"}, -- Gold Bar
		{code="y66",location={"onplayer","atvendor"},prefix="{white}Visit our discord 'D2R-Modding' for any help if needed :)\n"},-- Starter Pack
		{code="Z01",location={"onplayer","atvendor"},prefix="{gray}Warning: Jewels will be sacrificed!\nMagic/Rare Jewels, Uber Organ/Keys, Gems\nRunes, Unique/Set cores, Full Rejuvs\n{white}Can store various items such as:\n"},-- QoL Bag
		{code="box",location={"onplayer","atvendor"},prefix_desc="{gray}Press Portal icon inside cube to show 'Rift' with rotating recipes/perks inside\nPress 'H' to show a list of RWs\nPress Scroll icon inside cube to show recipes\n"},-- Horadric Cube
		{code="pk1",location="onplayer",prefix="{gray}Cube 2 copies to obtain 1x Key of Hate\nConversion:\n{orange}"}, --  Key of Terror
		{code="pk2",location="onplayer",prefix="{gray}Cube 2 copies to obtain 1x Key of Destruction\nConversion:\n{orange}"}, --  Key of Hate
		{code="pk3",location="onplayer",prefix="{gray}Cube 2 copies to obtain 1x Key of Terror\nConversion:\n{orange}"}, --  Key of Destruction
		{code="Z42",location={"onplayer","atvendor"},prefix="{gold}The Countess {white}(A1: Black Marsh->Forgotten Tower)\n{gray}Item obtained in {orange}Hell{gray} from:\n"}, --  Key of Terror Remover
		{code="Z43",location={"onplayer","atvendor"},prefix="{gold}The Summoner {white}(A2: Arcane Sanctuary)\n{gray}Item obtained in {orange}Hell{gray} from:\n"}, --  Key of Hate Remover
		{code="Z44",location={"onplayer","atvendor"},prefix="{gold}Nihlathak {white}(A5: Halls of Vaught)\n{gray}Item obtained in {orange}Hell{gray} from:\n"}, --  Key of Destruction Remover
		{code="Z45",location={"onplayer","atvendor"},prefix="{gold}Lilith {white}(A5: Matron's Den)\n{gray}Item obtained in {orange}Hell{gray} from:\n"}, --  Diablo's Horn Remover
		{code="Z46",location={"onplayer","atvendor"},prefix="{gold}Uber Duriel {white}(A5: Forgotten Sands)\n{gray}Item obtained in {orange}Hell{gray} from:\n"}, --  Baal's Eye Remover
		{code="Z47",location={"onplayer","atvendor"},prefix="{gold}Uber Izual {white}(A5: Furnace of Pain)\n{gray}Item obtained in {orange}Hell{gray} from:\n"}, --  Mephisto's Brain Remover
		
		-- Gameplay Tips:
		{code="hdm",location={"onplayer","atvendor"},difficulty="Normal",prefix="{gray}Doing so will enhance said Runeword. Max upgrade Tier is {white}5{gray}\nTo do it, cube Runeword with the same runes you used to make it\n{orange}Gameplay tip:{gray} Runewords with a {white}Hammer{gray} icon can be {white}Runic Forged\n"},-- Horadric Malus - Normal
		{code="hdm",location={"onplayer","atvendor"},difficulty="Nightmare",prefix="{gray}More about it on our Discord server!\ndrop specific item/s on specific difficulty called {white}'Flavor Drops'\n{orange}Gameplay tip:{gray} Some Unique Monsters have increased chance to\n"},-- Horadric Malus - Nightmare
		{code="hdm",location={"onplayer","atvendor"},difficulty="Hell",prefix="{gray}You will still want less MF to farm bases of course, but overall it's the best place for farming bases!\n{orange}Gameplay tip:{white} Cow Level{gray} is specifically tailored in ReMoDDeD to drop as many {white}bases{gray} as possible\n"},-- Horadric Malus - Hell
		{code="hdm",notify="ÿcJNew gameplay tip available! Look at description of {name}"}, -- Horadric Malus - notify
		{code="mss",location={"onplayer","atvendor"},difficulty="Normal",prefix="{gray}or by holding ALT and clicking on any attribute '+' in character stats window\nYou respec by clicking recpec button in your skills window\n\ncheck the checkbox 'respec' in Launchers main window, inside 'Launch Options'\n{orange}Gameplay Tip:{gray} You can {white}infinitely respec{gray} your stats/skills if you\n"},-- Mephisto's Soulstone - Normal
		{code="mss",location={"onplayer","atvendor"},difficulty="Nightmare",prefix="{gray}Running Doesn't consume stamina in ReMoDDeD and doesn't reduce your Defense to 0\n{orange}Gameplay Tip:{gray} Make sure you are {white}running!\n"},-- Mephisto's Soulstone - Nightmare
		{code="mss",location={"onplayer","atvendor"},difficulty="Hell",prefix="{gray}Entrance to levels full of Torment (Hell only)\n{orange}Gameplay Tip:{gray} The {white}Worldstone Chamber{gray} contains an\n"},-- Mephisto's Soulstone - Hell
		{code="mss",notify="ÿcJNew gameplay tip available! Look at description of {name}"}, --  Mephisto's Soul Stone - notify
		{code="tr2",location={"onplayer","atvendor"},difficulty="Normal",prefix="{orange}Gameplay Tip:{gray} QoL Options in Launcher have many useful things. Recommend to check it out!\n{red}On use, permanently adds 10%% to All Resistances\n"},-- Scroll of Resistance - Normal
		{code="tr2",location={"onplayer","atvendor"},difficulty="Nightmare",prefix="{gray}However, your '- x resistance' stats do not update those numbers!\nYour '- x immunity' stats, Curses and Conviction Auras affect those numbers\n\nLauncher - Options - QoL Options - Monster HP Bar - choose any 'Advanced' option\n{orange}Gameplay Tip:{gray} You can see all enemy {white}Resistance Values{gray} if you set it in:\n{red}On use, permanently adds 10%% to All Resistances\n"},-- Scroll of Resistance - Nightmare
		{code="tr2",location={"onplayer","atvendor"},difficulty="Hell",prefix="{gray}'LB' icon in item name means 'Limit Broken Base'\n'EB' icon in item name means 'Elite Base'\n{red}On use, permanently adds 10%% to All Resistances\n"},-- Scroll of Resistance - Hell
		{code="tr2",location={"onplayer","atvendor"},notify="ÿcJNew gameplay tip available! Look at description of {name}"}, --  Scroll of Resistance - notify
		{code="bks",location={"onplayer","atvendor"},difficulty="Normal",prefix="{gray}Example: Spirit in 6os Spell Blade = Jewel+Jewel+Tal+Thul+Ort+Amn\nThose {white}'Jeweled Runewords'{gray} can be made by filling excess sockets with Jewels (not gems!) {red}BEFORE{gray} Runes\n{orange}Gameplay Tip:{gray} You can make Runewords in items that have more sockets that those RWs need runes.\n"}, -- Scroll of Inifuss - Normal
		{code="bks",difficulty="Normal",notify="ÿcJNew gameplay tip available! Look at description of {name}"}, --  Scroll of Inifuss - notify
		
		
		
		
		--                                                             SET HUNTER: Show what set x item belongs to, before identifying it. "Hunter" levels only!
		
		{codes="allitems",quality="5",identified=false,index=66,filter_levels="2,4",suffix="{green}|Aldur's"}, --Aldur's Helmet
		{codes="allitems",quality="5",identified=false,index=67,filter_levels="2,4",suffix="|Aldur's"}, --Aldur's Torso
		{codes="allitems",quality="5",identified=false,index=68,filter_levels="2,4",suffix="|Aldur's"}, --Aldur's Weapon
		{codes="allitems",quality="5",identified=false,index=69,filter_levels="2,4",suffix="|Aldur's"}, --Aldur's Boots
		
		{codes="allitems",quality="5",identified=false,index=50,filter_levels="2,4",suffix="|Angelic"}, --Angelic Weapon
		{codes="allitems",quality="5",identified=false,index=51,filter_levels="2,4",suffix="|Angelic"}, --Angelic Torso
		{codes="allitems",quality="5",identified=false,index=52,filter_levels="2,4",suffix="|Angelic"}, --Angelic Ring
		{codes="allitems",quality="5",identified=false,index=53,filter_levels="2,4",suffix="|Angelic"}, --Angelic Amulet
		
		{codes="allitems",quality="5",identified=false,index=58,filter_levels="2,4",suffix="|Arcanna's"}, --Arcanna's Amulet
		{codes="allitems",quality="5",identified=false,index=59,filter_levels="2,4",suffix="|Arcanna's"}, --Arcanna's Weapon
		{codes="allitems",quality="5",identified=false,index=60,filter_levels="2,4",suffix="|Arcanna's"}, --Arcanna's Helmet
		{codes="allitems",quality="5",identified=false,index=61,filter_levels="2,4",suffix="|Arcanna's"}, --Arcanna's Torso
		
		{codes="allitems",quality="5",identified=false,index=54,filter_levels="2,4",suffix="|Arctic"}, --Arctic Weapon
		{codes="allitems",quality="5",identified=false,index=55,filter_levels="2,4",suffix="|Arctic"}, --Arctic Torso
		{codes="allitems",quality="5",identified=false,index=56,filter_levels="2,4",suffix="|Arctic"}, --Arctic Belt
		{codes="allitems",quality="5",identified=false,index=57,filter_levels="2,4",suffix="|Arctic"}, --Arctic Gloves
		
		{codes="allitems",quality="5",identified=false,index=144,filter_levels="2,4",suffix="{green}|Battlemage's"}, --Battlemage's Weapon
		{codes="allitems",quality="5",identified=false,index=145,filter_levels="2,4",suffix="|Battlemage's"}, --Battlemage's Shield
		{codes="allitems",quality="5",identified=false,index=146,filter_levels="2,4",suffix="|Battlemage's"}, --Battlemage's Torso
		
		{codes="allitems",quality="5",identified=false,index=44,filter_levels="2,4",suffix="|Berserker's"}, --Berserker's Helmet
		{codes="allitems",quality="5",identified=false,index=45,filter_levels="2,4",suffix="|Berserker's"}, --Berserker's Torso
		{codes="allitems",quality="5",identified=false,index=46,filter_levels="2,4",suffix="|Berserker's"}, --Berserker's Weapon
		
		{codes="allitems",quality="5",identified=false,index=115,filter_levels="2,4",suffix="|Bul-Katho's"}, --Bul-Katho's Weapon big
		{codes="allitems",quality="5",identified=false,index=116,filter_levels="2,4",suffix="|Bul-Katho's"}, --Bul-Katho's Weapon smol
		
		{codes="allitems",quality="5",identified=false,index=25,filter_levels="2,4",suffix="|Cathan's"}, --Cathan's Weapon
		{codes="allitems",quality="5",identified=false,index=26,filter_levels="2,4",suffix="|Cathan's"}, --Cathan's Torso
		{codes="allitems",quality="5",identified=false,index=27,filter_levels="2,4",suffix="|Cathan's"}, --Cathan's Helmet
		{codes="allitems",quality="5",identified=false,index=28,filter_levels="2,4",suffix="|Cathan's"}, --Cathan's Amulet
		{codes="allitems",quality="5",identified=false,index=29,filter_levels="2,4",suffix="|Cathan's"}, --Cathan's Ring
		
		{codes="allitems",quality="5",identified=false,index=0,filter_levels="2,4",suffix="|Civerb's"}, --Civerb's Shield
		{codes="allitems",quality="5",identified=false,index=1,filter_levels="2,4",suffix="|Civerb's"}, --Civerb's Amulet
		{codes="allitems",quality="5",identified=false,index=2,filter_levels="2,4",suffix="|Civerb's"}, --Civerb's Weapon
		
		{codes="allitems",quality="5",identified=false,index=6,filter_levels="2,4",suffix="|Cleglaw's"}, --Cleglaw's Weapon
		{codes="allitems",quality="5",identified=false,index=7,filter_levels="2,4",suffix="|Cleglaw's"}, --Cleglaw's Shield
		{codes="allitems",quality="5",identified=false,index=8,filter_levels="2,4",suffix="|Cleglaw's"}, --Cleglaw's Gloves
		
		{codes="allitems",quality="5",identified=false,index=117,filter_levels="2,4",suffix="|Cow King's"}, --Cow King's Helmet
		{codes="allitems",quality="5",identified=false,index=118,filter_levels="2,4",suffix="|Cow King's"}, --Cow King's Torso
		{codes="allitems",quality="5",identified=false,index=119,filter_levels="2,4",suffix="|Cow King's"}, --Cow King's Boots
		
		{codes="allitems",quality="5",identified=false,index=47,filter_levels="2,4",suffix="|Death's"}, --Death's Gloves
		{codes="allitems",quality="5",identified=false,index=48,filter_levels="2,4",suffix="|Death's"}, --Death's Belt
		{codes="allitems",quality="5",identified=false,index=49,filter_levels="2,4",suffix="|Death's"}, --Death's Weapon
		
		{codes="allitems",quality="5",identified=false,index=147,filter_levels="2,4",suffix="|Glacial"}, --Glacial Helmet
		{codes="allitems",quality="5",identified=false,index=148,filter_levels="2,4",suffix="|Glacial"}, --Glacial Belt
		{codes="allitems",quality="5",identified=false,index=149,filter_levels="2,4",suffix="|Glacial"}, --Glacial Shield
		
		{codes="allitems",quality="5",identified=false,index=81,filter_levels="2,4",suffix="|Griswold's"}, --Griswold's Helmet
		{codes="allitems",quality="5",identified=false,index=82,filter_levels="2,4",suffix="{green}|Griswold's"}, --Griswold's Torso
		{codes="allitems",quality="5",identified=false,index=83,filter_levels="2,4",suffix="|Griswold's"}, --Griswold's Weapon
		{codes="allitems",quality="5",identified=false,index=84,filter_levels="2,4",suffix="|Griswold's"}, --Griswold's Shield
		
		{codes="allitems",quality="5",identified=false,index=100,filter_levels="2,4",suffix="|Heaven's"}, --Heaven's Weapon
		{codes="allitems",quality="5",identified=false,index=101,filter_levels="2,4",suffix="|Heaven's"}, --Heaven's Shield
		{codes="allitems",quality="5",identified=false,index=102,filter_levels="2,4",suffix="|Heaven's"}, --Heaven's Torso
		{codes="allitems",quality="5",identified=false,index=103,filter_levels="2,4",suffix="|Heaven's"}, --Heaven's Helmet
		
		{codes="allitems",quality="5",identified=false,index=3,filter_levels="2,4",suffix="|Hsarus'"}, --Hsarus' Boots
		{codes="allitems",quality="5",identified=false,index=4,filter_levels="2,4",suffix="|Hsarus'"}, --Hsarus' Shield
		{codes="allitems",quality="5",identified=false,index=5,filter_levels="2,4",suffix="|Hsarus'"}, --Hsarus' Belt
		
		{codes="allitems",quality="5",identified=false,index=108,filter_levels="2,4",suffix="|Hwanin's"}, --Hwanin's Helmet
		{codes="allitems",quality="5",identified=false,index=109,filter_levels="2,4",suffix="|Hwanin's"}, --Hwanin's Torso
		{codes="allitems",quality="5",identified=false,index=110,filter_levels="2,4",suffix="|Hwanin's"}, --Hwanin's Belt
		{codes="allitems",quality="5",identified=false,index=111,filter_levels="2,4",suffix="|Hwanin's"}, --Hwanin's Weapon
		
		{codes="allitems",quality="5",identified=false,index=70,filter_levels="2,4",suffix="|IK"}, --IK Helmet
		{codes="allitems",quality="5",identified=false,index=71,filter_levels="2,4",suffix="|IK"}, --IK Torso
		{codes="allitems",quality="5",identified=false,index=72,filter_levels="2,4",suffix="|IK"}, --IK Belt
		{codes="allitems",quality="5",identified=false,index=73,filter_levels="2,4",suffix="|IK"}, --IK Gloves
		{codes="allitems",quality="5",identified=false,index=74,filter_levels="2,4",suffix="|IK"}, --IK Boots
		{codes="allitems",quality="5",identified=false,index=75,filter_levels="2,4",suffix="{green}|IK"}, --IK Weapon
		
		{codes="allitems",quality="5",identified=false,index=41,filter_levels="2,4",suffix="|Infernal"}, --Infernal Helmet
		{codes="allitems",quality="5",identified=false,index=42,filter_levels="2,4",suffix="|Infernal"}, --Infernal Weapon
		{codes="allitems",quality="5",identified=false,index=43,filter_levels="2,4",suffix="|Infernal"}, --Infernal Belt
		
		{codes="allitems",quality="5",identified=false,index=9,filter_levels="2,4",suffix="|Iratha's"}, --Iratha's Amulet
		{codes="allitems",quality="5",identified=false,index=10,filter_levels="2,4",suffix="|Iratha's"}, --Iratha's Gloves
		{codes="allitems",quality="5",identified=false,index=11,filter_levels="2,4",suffix="|Iratha's"}, --Iratha's Helmet
		{codes="allitems",quality="5",identified=false,index=12,filter_levels="2,4",suffix="|Iratha's"}, --Iratha's Belt
		
		{codes="allitems",quality="5",identified=false,index=13,filter_levels="2,4",suffix="|Isenhart's"}, --Isenhart's Weapon
		{codes="allitems",quality="5",identified=false,index=14,filter_levels="2,4",suffix="|Isenhart's"}, --Isenhart's Shield
		{codes="allitems",quality="5",identified=false,index=15,filter_levels="2,4",suffix="|Isenhart's"}, --Isenhart's Torso
		{codes="allitems",quality="5",identified=false,index=16,filter_levels="2,4",suffix="|Isenhart's"}, --Isenhart's Helmet
		
		{codes="allitems",quality="5",identified=false,index=156,filter_levels="2,4",suffix="|Kreigur's W"}, --Kreigur's Will
		{codes="allitems",quality="5",identified=false,index=157,filter_levels="2,4",suffix="|Kreigur's J"}, --Kreigur's Judgement
		
		{codes="allitems",quality="5",identified=false,index=131,filter_levels="2,4",suffix="|Majestic"}, --Majestic Weapon
		{codes="allitems",quality="5",identified=false,index=132,filter_levels="2,4",suffix="|Majestic"}, --Majestic Shield
		{codes="allitems",quality="5",identified=false,index=133,filter_levels="2,4",suffix="|Majestic"}, --Majestic Helmet
		
		{codes="allitems",quality="5",identified=false,index=90,filter_levels="2,4",suffix="|M'avina's"}, --M'avina's Helmet
		{codes="allitems",quality="5",identified=false,index=91,filter_levels="2,4",suffix="|M'avina's"}, --M'avina's Torso
		{codes="allitems",quality="5",identified=false,index=92,filter_levels="2,4",suffix="|M'avina's"}, --M'avina's Gloves
		{codes="allitems",quality="5",identified=false,index=93,filter_levels="2,4",suffix="|M'avina's"}, --M'avina's Belt
		{codes="allitems",quality="5",identified=false,index=94,filter_levels="2,4",suffix="|M'avina's"}, --M'avina's Weapon
		
		{codes="allitems",quality="5",identified=false,index=123,filter_levels="2,4",suffix="|Sander's"}, --Sander's Helmet
		{codes="allitems",quality="5",identified=false,index=124,filter_levels="2,4",suffix="|Sander's"}, --Sander's Boots
		{codes="allitems",quality="5",identified=false,index=125,filter_levels="2,4",suffix="|Sander's"}, --Sander's Gloves
		{codes="allitems",quality="5",identified=false,index=126,filter_levels="2,4",suffix="|Sander's"}, --Sander's Weapon
		
		{codes="allitems",quality="5",identified=false,index=21,filter_levels="2,4",suffix="|Milabrega's"}, --Milabrega's Shield
		{codes="allitems",quality="5",identified=false,index=22,filter_levels="2,4",suffix="|Milabrega's"}, --Milabrega's Weapon
		{codes="allitems",quality="5",identified=false,index=23,filter_levels="2,4",suffix="|Milabrega's"}, --Milabrega's Helmet
		{codes="allitems",quality="5",identified=false,index=24,filter_levels="2,4",suffix="|Milabrega's"}, --Milabrega's Torso
		
		{codes="allitems",quality="5",identified=false,index=120,filter_levels="2,4",suffix="|Naj's"}, --Naj's Weapon
		{codes="allitems",quality="5",identified=false,index=121,filter_levels="2,4",suffix="|Naj's"}, --Naj's Torso
		{codes="allitems",quality="5",identified=false,index=122,filter_levels="2,4",suffix="|Naj's"}, --Naj's Helmet
		
		{codes="allitems",quality="5",identified=false,index=62,filter_levels="2,4",suffix="|Natalya's"}, --Natalya's Helmet
		{codes="allitems",quality="5",identified=false,index=63,filter_levels="2,4",suffix="|Natalya's"}, --Natalya's Weapon
		{codes="allitems",quality="5",identified=false,index=64,filter_levels="2,4",suffix="|Natalya's"}, --Natalya's Torso
		{codes="allitems",quality="5",identified=false,index=65,filter_levels="2,4",suffix="|Natalya's"}, --Natalya's Boots
		
		{codes="allitems",quality="5",identified=false,index=104,filter_levels="2,4",suffix="|Orphan's"}, --Orphan's Helmet
		{codes="allitems",quality="5",identified=false,index=105,filter_levels="2,4",suffix="|Orphan's"}, --Orphan's Belt
		{codes="allitems",quality="5",identified=false,index=106,filter_levels="2,4",suffix="|Orphan's"}, --Orphan's Gloves
		{codes="allitems",quality="5",identified=false,index=107,filter_levels="2,4",suffix="|Orphan's"}, --Orphan's Shield
		
		{codes="allitems",quality="5",identified=false,index=150,filter_levels="2,4",suffix="|Rathma's"}, --Rathma's Weapon
		{codes="allitems",quality="5",identified=false,index=151,filter_levels="2,4",suffix="|Rathma's"}, --Rathma's Shield
		{codes="allitems",quality="5",identified=false,index=152,filter_levels="2,4",suffix="|Rathma's"}, --Rathma's Helmet
		{codes="allitems",quality="5",identified=false,index=153,filter_levels="2,4",suffix="{green}|Rathma's"}, --Rathma's Torso
		
		{codes="allitems",quality="5",identified=false,index=112,filter_levels="2,4",suffix="|Sazabi's"}, --Sazabi's Weapon
		{codes="allitems",quality="5",identified=false,index=113,filter_levels="2,4",suffix="|Sazabi's"}, --Sazabi's Torso
		{codes="allitems",quality="5",identified=false,index=114,filter_levels="2,4",suffix="|Sazabi's"}, --Sazabi's Helmet
		
		{codes="allitems",quality="5",identified=false,index=35,filter_levels="2,4",suffix="|Sigon's"}, --Sigon's Gloves
		{codes="allitems",quality="5",identified=false,index=36,filter_levels="2,4",suffix="|Sigon's"}, --Sigon's Helmet
		{codes="allitems",quality="5",identified=false,index=37,filter_levels="2,4",suffix="|Sigon's"}, --Sigon's Torso
		{codes="allitems",quality="5",identified=false,index=38,filter_levels="2,4",suffix="|Sigon's"}, --Sigon's Boots
		{codes="allitems",quality="5",identified=false,index=39,filter_levels="2,4",suffix="|Sigon's"}, --Sigon's Belt
		{codes="allitems",quality="5",identified=false,index=40,filter_levels="2,4",suffix="|Sigon's"}, --Sigon's Shield
		
		{codes="allitems",quality="5",identified=false,index=134,filter_levels="2,4",suffix="|Skovos's"}, --Skovos's Weapon
		{codes="allitems",quality="5",identified=false,index=135,filter_levels="2,4",suffix="|Skovos's"}, --Skovos's Gloves
		{codes="allitems",quality="5",identified=false,index=136,filter_levels="2,4",suffix="|Skovos's"}, --Skovos's Arrows
		
		{codes="allitems",quality="5",identified=false,index=154,filter_levels="2,4",suffix="|Stacato Sigil"}, --Stacatomamba's Sigil
		{codes="allitems",quality="5",identified=false,index=155,filter_levels="2,4",suffix="|Mamba Circle"}, --Stacatomamba's Circle
		
		{codes="allitems",quality="5",identified=false,index=158,filter_levels="2,4",suffix="|(su)Kami"}, --Sukami's Kami
		{codes="allitems",quality="5",identified=false,index=159,filter_levels="2,4",suffix="|Su(kami)"}, --Sukami's Su
		
		{codes="allitems",quality="5",identified=false,index=76,filter_levels="2,4",suffix="|Tal Rasha's"}, --Tal Rasha's Belt
		{codes="allitems",quality="5",identified=false,index=77,filter_levels="2,4",suffix="|Tal Rasha's"}, --Tal Rasha's Amulet
		{codes="allitems",quality="5",identified=false,index=78,filter_levels="2,4",suffix="|Tal Rasha's"}, --Tal Rasha's Weapon
		{codes="allitems",quality="5",identified=false,index=79,filter_levels="2,4",suffix="|Tal Rasha's"}, --Tal Rasha's Torso
		{codes="allitems",quality="5",identified=false,index=80,filter_levels="2,4",suffix="|Tal Rasha's"}, --Tal Rasha's Helmet
		
		{codes="allitems",quality="5",identified=false,index=30,filter_levels="2,4",suffix="|Tancred's"}, --Tancred's Weapon
		{codes="allitems",quality="5",identified=false,index=31,filter_levels="2,4",suffix="|Tancred's"}, --Tancred's Torso
		{codes="allitems",quality="5",identified=false,index=32,filter_levels="2,4",suffix="|Tancred's"}, --Tancred's Boots
		{codes="allitems",quality="5",identified=false,index=33,filter_levels="2,4",suffix="|Tancred's"}, --Tancred's Amulet
		{codes="allitems",quality="5",identified=false,index=34,filter_levels="2,4",suffix="|Tancred's"}, --Tancred's Helmet
		
		{codes="allitems",quality="5",identified=false,index=95,filter_levels="2,4",suffix="|Disciple's"}, --The Disciple's Amulet
		{codes="allitems",quality="5",identified=false,index=96,filter_levels="2,4",suffix="|Disciple's"}, --The Disciple's Gloves
		{codes="allitems",quality="5",identified=false,index=97,filter_levels="2,4",suffix="|Disciple's"}, --The Disciple's Boots
		{codes="allitems",quality="5",identified=false,index=98,filter_levels="2,4",suffix="|Disciple's"}, --The Disciple's Torso
		{codes="allitems",quality="5",identified=false,index=99,filter_levels="2,4",suffix="|Disciple's"}, --The Disciple's Belt
		
		{codes="allitems",quality="5",identified=false,index=85,filter_levels="2,4",suffix="|Trang-Oul's"}, --Trang-Oul's Helmet
		{codes="allitems",quality="5",identified=false,index=86,filter_levels="2,4",suffix="|Trang-Oul's"}, --Trang-Oul's Torso
		{codes="allitems",quality="5",identified=false,index=87,filter_levels="2,4",suffix="|Trang-Oul's"}, --Trang-Oul's Shield
		{codes="allitems",quality="5",identified=false,index=88,filter_levels="2,4",suffix="|Trang-Oul's"}, --Trang-Oul's Gloves
		{codes="allitems",quality="5",identified=false,index=89,filter_levels="2,4",suffix="|Trang-Oul's"}, --Trang-Oul's Belt
		
		{codes="allitems",quality="5",identified=false,index=127,filter_levels="2,4",suffix="|Vessel's"}, --Vessel's Torso
		{codes="allitems",quality="5",identified=false,index=128,filter_levels="2,4",suffix="|Vessel's"}, --Vessel's Shield
		{codes="allitems",quality="5",identified=false,index=129,filter_levels="2,4",suffix="|Vessel's"}, --Vessel's Helmet
		{codes="allitems",quality="5",identified=false,index=130,filter_levels="2,4",suffix="|Vessel's"}, --Vessel's Weapon
		
		{codes="allitems",quality="5",identified=false,index=17,filter_levels="2,4",suffix="|Vidala's"}, --Vidala's Weapon
		{codes="allitems",quality="5",identified=false,index=18,filter_levels="2,4",suffix="|Vidala's"}, --Vidala's Boots
		{codes="allitems",quality="5",identified=false,index=19,filter_levels="2,4",suffix="|Vidala's"}, --Vidala's Torso
		{codes="allitems",quality="5",identified=false,index=20,filter_levels="2,4",suffix="|Vidala's"}, --Vidala's Amulet
		
		{codes="allitems",quality="5",identified=false,index=141,filter_levels="2,4",suffix="|Vizjerei's"}, --Vizjerei's Gloves
		{codes="allitems",quality="5",identified=false,index=142,filter_levels="2,4",suffix="|Vizjerei's"}, --Vizjerei's Weapon
		{codes="allitems",quality="5",identified=false,index=143,filter_levels="2,4",suffix="|Vizjerei's"}, --Vizjerei's Helmet
		
		{codes="allitems",quality="5",identified=false,index=137,filter_levels="2,4",suffix="|Wonderous"}, --Wonderous Belt
		{codes="allitems",quality="5",identified=false,index=138,filter_levels="2,4",suffix="|Wonderous"}, --Wonderous Helmet
		{codes="allitems",quality="5",identified=false,index=139,filter_levels="2,4",suffix="|Wonderous"}, --Wonderous Torso
		{codes="allitems",quality="5",identified=false,index=140,filter_levels="2,4",suffix="|Wonderous"}, --Wonderous Gloves
		

		--                                                         UNIQUE HUNTER: Show what good (of my personal choice) unique jewelry is before identifying it
		
		{codes="allitems",quality="7",identified=false,index=527,filter_levels="2,4",suffix="|SoJ"}, --Stone of Jordan
		{codes="allitems",quality="7",identified=false,index=528,filter_levels="2,4",suffix="|BK"}, --Bul-Kathos' Wedding Band
		{codes="allitems",quality="7",identified=false,index=588,filter_levels="2,4",suffix="|Life Ev"}, --Life Everlasting
		{codes="allitems",quality="7",identified=false,index=589,filter_levels="2,4",suffix="|Hunt Mark"}, --Hunter's Mark
		{codes="allitems",quality="7",identified=false,index=541,filter_levels="2,4",suffix="|Constr",notify="Valuable Ring nearby!"}, --Constricting Ring
		{codes="allitems",quality="7",identified=false,index=587,filter_levels="2,4",suffix="|Quintessence",notify="Rare amulet nearby!"}, --Quintessence Amulet
		{codes="allitems",quality="7",identified=false,index=532,filter_levels="2,4",suffix="|Mara's",notify="Valuable Amulet nearby!"}, --Mara's Kaleidoscope Amulet
				
		



		--                                                                                     Quest item notifies
		
		{code="qey",notify="{red}???: {white}A group of aspiring heroes, I see. I hope you know what you are getting yourself into.\n{red}Edyrem: {white}Who was that?"}, -- Khalim's Eye
		{code="qbr",notify="{red}???: {white}You proved yourself determined enough... Fine, I will aid you. Find my heart, I can feel it deep beneath Kurast."}, -- Khalim's Brain
		{code="qhr",notify="{red}???: {white}Completely filled with hatred, what an irony. It's time to meet with old friends in Travincal"}, -- Khalim's Heart
		{code="qf1",notify="{red}???: {white}A fine piece of weaponry it once was, now only a memory. Assemble my scattered will, Nephalem."}, -- Khalim's Flail
		{code="qf2",location="equipped",notify="{red}Khalim: {white}I SHALL HAVE MY VENGEANCE, DEMON! Even if it's not me that delivers it.\n{red}Edyrem: {white}Your deed is done, priest. It's time to join us."}, -- Khalim's Will
		{code="tr1",notify="{red}Edyrem: {white}A true heroes they were."}, -- Horadric Scroll
		{code="msf",notify="{red}Edyrem: {white}King of Staffs."}, -- Staff of Kings
		{code="vip",notify="{red}Edyrem: {white}Clouds only block the sunshine temporarily. The sun always returns."}, -- Amulet of the Viper
		{code="leg",notify="{red}Edyrem: {white}Ooooh Who lives in a pineapple under the sea..."}, -- Wirt's Leg
		{code="ass",notify="{red}Edyrem: {white}My precious~~"}, -- Book of Skill
		{code="hst",notify="{red}Edyrem: {white}Why would you do that?"}, -- Horadric Staff
		{code="j34",notify="{red}Edyrem: {white}Is that an Anime Figurine?"}, -- A Jade Figurine
		{code="g34",location="onplayer",notify="{red}Edyrem: {white}Pfff, what a waste of Gold. Could have been made into a Gold Bar..."}, -- Golden Bird
		{code="g33",notify="{red}Edyrem: {white}Don't even dare pointing that at me!"}, -- The Gidbinn
		{code="bbb",notify="{red}Edyrem: {white}MY TACO RECIPE! So that's where I put it..."}, -- Lam Esen's Tome
		{code="xyz",location="onplayer",notify="{red}Edyrem: {white}If only we could mass produce that D:"}, -- Potion of life
		{code="hfh",notify="{red}Edyrem: {white}We have a bad feeling about this -_-"}, -- Hellforge Hammer
		{code="vps",notify="{red}Edyrem: {white} o7"}, -- Energy Drink notify
		
		
		
		--                                                                                           EVENTS
		{ -- Event Boxes notification and style
            code = "Ev0",
            notify = "ÿc;Event Box!",
			name_override = "Gamba Box!",
			background = {46, 47, 67, 230},
			border = {7, 10, 92, 230, 2},
			notify = "{red}Edyrem: {white}Is for me?",
            name_style = "Rainbow"
        },
		{ -- Candy Corn
			code = "Ev1",
			notify = "ÿc@A slice of Heaven (￣▽￣)"
		},
		{ -- Cornucopia
			code = "Ev8",
			notify = "{red}Edyrem: {white}You don't want that? I can take it."
		},
		
		
		
		--                                                                                            Color Dyes
		
		
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=1},prefix_desc="{lilac}Color Dyed: {white}White\n"}, --Color Dyed: White
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=2},prefix_desc="{lilac}Color Dyed: {grey}Light Grey\n"}, --Color Dyed: Light Grey
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=3},prefix_desc="{lilac}Color Dyed: {grey}Dark Grey\n"}, --Color Dyed: Dark Grey
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=4},prefix_desc="{lilac}Color Dyed: {grey}Black\n"}, --Color Dyed: Black
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=5},prefix_desc="{lilac}Color Dyed: {blue}Bright White\n"}, --Color Dyed: Light Blue
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=6},prefix_desc="{lilac}Color Dyed: {blue}Dark Blue\n"}, --Color Dyed: Dark Blue
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=7},prefix_desc="{lilac}Color Dyed: {blue}Crystal Blue\n"}, --Color Dyed: Crystal Blue
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=8},prefix_desc="{lilac}Color Dyed: {red}Light Red\n"}, --Color Dyed: Light Red
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=9},prefix_desc="{lilac}Color Dyed: {red}Dark Red\n"}, --Color Dyed: Dark Red
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=10},prefix_desc="{lilac}Color Dyed: {red}Crystal Red\n"}, --Color Dyed: Crystal Red
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=11},prefix_desc="{lilac}Color Dyed: {green}Light Green\n"}, --Color Dyed: Light Green
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=12},prefix_desc="{lilac}Color Dyed: {green}Dark Green\n"}, --Color Dyed: Dark Green
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=13},prefix_desc="{lilac}Color Dyed: {green}Crystal Green\n"}, --Color Dyed: Crystal Green
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=14},prefix_desc="{lilac}Color Dyed: {yellow}Light Yellow\n"}, --Color Dyed: Light Yellow
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=15},prefix_desc="{lilac}Color Dyed: {yellow}Dark Yellow\n"}, --Color Dyed: Dark Yellow
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=16},prefix_desc="{lilac}Color Dyed: {gold}Light Gold\n"}, --Color Dyed: Light Gold
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=17},prefix_desc="{lilac}Color Dyed: {gold}Dark Gold\n"}, --Color Dyed: Dark Gold
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=18},prefix_desc="{lilac}Color Dyed: {purple}Light Purple\n"}, --Color Dyed: Light Purple
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=19},prefix_desc="{lilac}Color Dyed: {purple}Dark Purple\n"}, --Color Dyed: Dark Purple
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=20},prefix_desc="{lilac}Color Dyed: {orange}Orange\n"}, --Color Dyed: Orange
		{codes="allitems",location={"onplayer","equipped","atvendor"},stat={index=433,op="==",value=22},prefix_desc="{lilac}Color Dyed: {white}Bright White\n"}, --Color Dyed: Bright White
		{ -- Dye Bottles notification and style
			codes = {"Z52", "Z53", "Z54", "Z55", "Z56", "Z57", "Z58", "Z59", "z60", "z61", "z62", "z63", "z64", "z65", "z66", "z67", "z68", "z69", "z70", "z71", "z72", "z73"},
			notify = "{yellow}Dye Bottle!",
			border = {10, 14, 92, 255, 2},
			name_style = "RainbowStatic"
		},
		
		
		
		--                                                                                  Show Rune Points on Runes
		
		
		{code="r01",location={"onplayer","atvendor"},prefix="{gray}+1 Low Point when bagged{orange}\n"}, --El Rune
		{code="r02",location={"onplayer","atvendor"},prefix="{gray}+2 Low Points when bagged{orange}\n"}, --Eld Rune
		{code="r03",location={"onplayer","atvendor"},prefix="{gray}+4 Low Points when bagged{orange}\n"}, --Tir Rune
		{code="r04",location={"onplayer","atvendor"},prefix="{gray}+8 Low Points when bagged{orange}\n"}, --Nef Rune
		{code="r05",location={"onplayer","atvendor"},prefix="{gray}+16 Low Points when bagged{orange}\n"}, --Eth Rune
		{code="r06",location={"onplayer","atvendor"},prefix="{gray}+32 Low Points when bagged{orange}\n"}, --Ith Rune
		{code="r07",location={"onplayer","atvendor"},prefix="{gray}+64 Low Points when bagged{orange}\n"}, --Tal Rune
		{code="r08",location={"onplayer","atvendor"},prefix="{gray}+128 Low Points when bagged{orange}\n"}, --Ral Rune
		{code="r09",location={"onplayer","atvendor"},prefix="{gray}+256 Low Points when bagged{orange}\n"}, --Ort Rune
		{code="r10",location={"onplayer","atvendor"},prefix="{gray}+512 Low Points when bagged{orange}\n"}, --Thul Rune
		{code="r11",location={"onplayer","atvendor"},prefix="{gray}+1024 Low Points when bagged{orange}\n"}, --Amn Rune
		{code="r12",location={"onplayer","atvendor"},prefix="{gray}+1 Mid Point when bagged{orange}\n"}, --Sol Rune
		{code="r13",location={"onplayer","atvendor"},prefix="{gray}+2 Mid Points when bagged{orange}\n"}, --Shael Rune
		{code="r14",location={"onplayer","atvendor"},prefix="{gray}+4 Mid Points when bagged{orange}\n"}, --Dol Rune
		{code="r15",location={"onplayer","atvendor"},prefix="{gray}+8 Mid Points when bagged{orange}\n"}, --Hel Rune
		{code="r16",location={"onplayer","atvendor"},prefix="{gray}+16 Mid Points when bagged{orange}\n"}, --Io Rune
		{code="r17",location={"onplayer","atvendor"},prefix="{gray}+32 Mid Points when bagged{orange}\n"}, --Lum Rune
		{code="r18",location={"onplayer","atvendor"},prefix="{gray}+64 Mid Points when bagged{orange}\n"}, --Ko Rune
		{code="r19",location={"onplayer","atvendor"},prefix="{gray}+128 Mid Points when bagged{orange}\n"}, --Fal Rune
		{code="r20",location={"onplayer","atvendor"},prefix="{gray}+256 Mid Points when bagged{orange}\n"}, --Lem Rune
		{code="r21",location={"onplayer","atvendor"},prefix="{gray}+512 Mid Points when bagged{orange}\n"}, --Pul Rune
		{code="r22",location={"onplayer","atvendor"},prefix="{gray}+1024 Mid Points when bagged{orange}\n"}, --Um Rune
		{code="r23",location={"onplayer","atvendor"},prefix="{gray}+1 High Point when bagged{orange}\n"}, --Mal Rune
		{code="r24",location={"onplayer","atvendor"},prefix="{gray}+2 High Points when bagged{orange}\n"}, --Ist Rune
		{code="r25",location={"onplayer","atvendor"},prefix="{gray}+4 High Points when bagged{orange}\n"}, --Gul Rune
		{code="r26",location={"onplayer","atvendor"},prefix="{gray}+8 High Points when bagged{orange}\n"}, --Vex Rune
		{code="r27",location={"onplayer","atvendor"},prefix="{gray}+16 High Points when bagged{orange}\n"}, --Ohm Rune
		{code="r28",location={"onplayer","atvendor"},prefix="{gray}+32 High Points when bagged{orange}\n"}, --Lo Rune
		{code="r29",location={"onplayer","atvendor"},prefix="{gray}+64 High Points when bagged{orange}\n"}, --Sur Rune
		{code="r30",location={"onplayer","atvendor"},prefix="{gray}+128 High Points when bagged{orange}\n"}, --Ber Rune
		{code="r31",location={"onplayer","atvendor"},prefix="{gray}+256 High Points when bagged{orange}\n"}, --Jah Rune
		{code="r32",location={"onplayer","atvendor"},prefix="{gray}+512 High Points when bagged{orange}\n"}, --Cham Rune
		{code="r33",location={"onplayer","atvendor"},prefix="{gray}+1024 High Points when bagged{orange}\n"}, --Zod Rune
		{code="r34",location={"onplayer","atvendor"},prefix="{gray}+1 Ultra Point when bagged{orange}\n"}, --Di Rune
		{code="r35",location={"onplayer","atvendor"},prefix="{gray}+2 Ultra Points when bagged{orange}\n"}, --Ab Rune
		{code="r36",location={"onplayer","atvendor"},prefix="{gray}+4 Ultra Points when bagged{orange}\n"}, --Er Rune
		
		
		

		
		
		--                                                                                 Forsaken Pacts usage
		
        {code="L00",location={"onplayer","atvendor"},prefix_desc="{green}Mirrored Flames {white}- {gray}Civerb's + Aldur's\n{white}Used for:\n\n"}, --Civerb's Forsaken Pact
		{code="L01",location={"onplayer","atvendor"},prefix_desc="{green}Mangala's Teachings {white}- {gray}Hsaru's + Natalya's + Stacatomamba's\n{white}Used for:\n\n"}, --Hsaru's Forsaken Pact
		{code="L02",location={"onplayer","atvendor"},prefix_desc="{green}Mikael's Toxicity {white}- {gray}Cleglaw's + Rathma's\n{white}Used for:\n\n"}, --Cleglaw's Forsaken Pact
		{code="L03",location={"onplayer","atvendor"},prefix_desc="{green}Elemental Blueprints {white}- {gray}Iratha's + Arcanna's + Naj's\n{white}Used for:\n\n"}, --Iratha's Forsaken Pact
		{code="L04",location={"onplayer","atvendor"},prefix_desc="{green}Plates Of Protection {white}- {gray}Isenhart's + Sazabi's + Wonder Wear\n{white}Used for:\n\n"}, --Isenhart's Forsaken Pact
		{code="L05",location={"onplayer","atvendor"},prefix_desc="{green}Blessings of Artemis {white}- {gray}Vidala's + M'avina's + Bul Kathos'\n{white}Used for:\n\n"}, --Vidala's Forsaken Pact
		{code="L06",location={"onplayer","atvendor"},prefix_desc="{green}Raijin's Rebellion {white}- {gray}Milabrega's + Cathan's + Heaven's\n{white}Used for:\n\n"}, --Milabrega's Forsaken Pact
		{code="L07",location={"onplayer","atvendor"},prefix_desc="{green}Raijin's Rebellion {white}- {gray}Milabrega's + Cathan's + Heaven's\n{white}Used for:\n\n"}, --Cathan's Forsaken Pact
		{code="L08",location={"onplayer","atvendor"},prefix_desc="{green}Underworld's Unrest {white}- {gray}Tancred's + Trang-Oul's\n{white}Used for:\n\n"}, --Tancred's Forsaken Pact
		{code="L09",location={"onplayer","atvendor"},prefix_desc="{green}Justitia's Divinity {white}- {gray}Sigon's + Orphan's\n{green}Pulsing Presence {white}- {gray}Sigon's + Angelic's + Heaven's\n{green}Blacklight {white}- {gray}Sigon's + Immortal King's {red}-Paladin and Barbarian only\n{white}Used for:\n\n"}, --Sigon's Forsaken Pact
		{code="L10",location={"onplayer","atvendor"},prefix_desc="{green}Warrior's Wrath {white}- {gray}Infernal + Aldur's + Immortal King's\n{white}Used for:\n\n"}, --Infernal Forsaken Pact
		{code="L11",location={"onplayer","atvendor"},prefix_desc="{green}Unstoppable Force {white}- {gray}Berserker's + Death's + Bul-Kathos'\n{green}Artio's Calling {white}- {gray}Berserker's + Cow King's\n{white}Used for:\n\n"}, --Berserker's Forsaken Pact
		{code="L12",location={"onplayer","atvendor"},prefix_desc="{green}Unstoppable Force {white}- {gray}Berserker's + Death's + Bul-Kathos'\n{green}Memento Mori {white}- {gray}Rathma's + Artio's Calling + Death's\n{white}Used for:\n\n"}, --Death's Forsaken Pact
		{code="L13",location={"onplayer","atvendor"},prefix_desc="{green}Pulsing Presence {white}- {gray}Sigon's + Angelic's + Heaven's\n{green}Celestial Caress {white}- {gray}Angelic's + The Disciple's + Vessel's\n{white}Used for:\n\n"}, --Angelic Forsaken Pact
		{code="L14",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Arctic Forsaken Pact
		{code="L15",location={"onplayer","atvendor"},prefix_desc="{green}Elemental Blueprints {white}- {gray}Iratha's + Arcanna's + Naj's\n{white}Used for:\n\n"}, --Arcanna's Forsaken Pact
		{code="L16",location={"onplayer","atvendor"},prefix_desc="{green}Silhouette of Silence {white}- {gray}Natalya's + Kreigur's\n{green}Path of the Vortex {white}- {gray}Unstoppable Force + Natalya's {red}-Barbarian and Assassin only\n{green}Mangala's Teachings {white}- {gray}Hsaru's + Natalya's + Stacatomamba's\n{white}Used for:\n\n"}, --Natalya's Forsaken Pact
		{code="L17",location={"onplayer","atvendor"},prefix_desc="{green}Warrior's Wrath {white}- {gray}Infernal's + Aldur's + Immortal King's\n{green}Mirrored Flames {white}- {gray}Civerb's + Aldur's\n{white}Used for:\n\n"}, --Aldur's Forsaken Pact
		{code="L18",location={"onplayer","atvendor"},prefix_desc="{green}Warrior's Wrath {white}- {gray}Infernal's + Aldur's + Immortal King's\n{green}Blacklight {white}- {gray}Sigon's + Immortal King's {red}-Paladin and Barbarian only\n{white}Used for:\n\n"}, --Immortal King's Forsaken Pact
		{code="L19",location={"onplayer","atvendor"},prefix_desc="{green}Sacrificial Tribute {white}- {gray}Tal Rasha's + Griswold's + Mirrored Flames\n{white}Used for:\n\n"}, --Tal Rasha's Forsaken Pact
		{code="L20",location={"onplayer","atvendor"},prefix_desc="{green}Sacrificial Tribute {white}- {gray}Tal Rasha's + Griswold's + Mirrored Flames\n{white}Used for:\n\n"}, --Griswold's Forsaken Pact
		{code="L21",location={"onplayer","atvendor"},prefix_desc="{green}Underworld's Unrest {white}- {gray}Tancred's + Trang-Oul's\n{white}Used for:\n\n"}, --Trang-Oul's Forsaken Pact
		{code="L22",location={"onplayer","atvendor"},prefix_desc="{green}Blessings of Artemis {white}- {gray}Vidala's + M'avina's + Bul Kathos'\n{white}Used for:\n\n"}, --M'avina's Forsaken Pact
		{code="L23",location={"onplayer","atvendor"},prefix_desc="{green}Celestial Caress {white}- {gray}Angelic's + The Disciple's + Vessel's\n{white}Used for:\n\n"}, --The Disciple's Forsaken Pact
		{code="L24",location={"onplayer","atvendor"},prefix_desc="{green}Raijin's Rebellion {white}- {gray}Milabrega's + Cathan's + Heaven's\n{green}Pulsing Presence {white}- {gray}Sigon's + Angelic's + Heaven's\n{white}Used for:\n\n"}, --Heaven's Forsaken Pact
		{code="L25",location={"onplayer","atvendor"},prefix_desc="{green}Justitia's Divinity {white}- {gray}Sigon's + Orphan's\n{white}Used for:\n\n"}, --Orphan's Forsaken Pact
		{code="L26",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Hwanin's Forsaken Pact
		{code="L27",location={"onplayer","atvendor"},prefix_desc="{green}Plates Of Protection {white}- {gray}Isenhart's + Sazabi's + Wonder Wear\n{white}Used for:\n\n"}, --Sazabi's Forsaken Pact
		{code="L28",location={"onplayer","atvendor"},prefix_desc="{green}Unstoppable Force {white}- {gray}Berserker's + Death's + Bul-Kathos'\n{green}Blessings of Artemis {white}- {gray}Vidala's + M'avina's + Bul Kathos'\n{white}Used for:\n\n"}, --Bul-Kathos' Forsaken Pact
		{code="L29",location={"onplayer","atvendor"},prefix_desc="{green}Artio's Calling {white}- {gray}Berserker's + Cow King's\n{white}Used for:\n\n"}, --Cow King's Forsaken Pact
		{code="L30",location={"onplayer","atvendor"},prefix_desc="{green}Elemental Blueprints {white}- {gray}Iratha's + Arcanna's + Naj's\n{white}Used for:\n\n"}, --Naj's Forsaken Pact
		{code="L31",location={"onplayer","atvendor"},name_override="{green}Sander's Forsaken Pact",prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Sander's Forsaken Pact
		{code="L32",location={"onplayer","atvendor"},prefix_desc="{green}Celestial Caress {white}- {gray}Angelic's + Disciple's + Vessel's\n{green}Breaker of Chains {white}- {gray}Vessel's + Majestic\n{white}Used for:\n\n"}, --Vessel's Forsaken Pact
		{code="L33",location={"onplayer","atvendor"},prefix_desc="{green}Breaker of Chains {white}- {gray}Vessel's + Majestic\n{white}Used for:\n\n"}, --Majestic Forsaken Pact
		{code="L34",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Skovos Forsaken Pact
		{code="L35",location={"onplayer","atvendor"},name_override="{green}Wonder Wear Forsaken Pact",prefix_desc="{green}Plates Of Protection {white}- {gray}Isenhart's + Sazabi's + Wonder Wear\n{white}Used for:\n\n"}, --Wonder Wear Forsaken Pact
		{code="L36",location={"onplayer","atvendor"},prefix_desc="{green}Cascading Caldera {white}- {gray}Vizjerei's + Elemental Blueprints + Battlemage's\n{white}Used for:\n\n"}, --Vizjerei's Forsaken Pact
		{code="L37",location={"onplayer","atvendor"},prefix_desc="{green}Cascading Caldera {white}- {gray}Vizjerei's + Elemental Blueprints + Battlemage's\n{white}Used for:\n\n"}, --Battlemage's Forsaken Pact
		{code="L38",location={"onplayer","atvendor"},prefix_desc="{green}Black Tempest {white}- {gray}Glacial + Blessings of Artemis\n{white}Used for:\n\n"}, --Glacial Forsaken Pact
		{code="L39",location={"onplayer","atvendor"},prefix_desc="{green}Mikael's Toxicity {white}- {gray}Cleglaw's + Rathma's\n{green}Memento Mori {white}- {gray}Rathma's + Artio's Calling + Death's\n{white}Used for:\n\n"}, --Rathma's Forsaken Pact
		{code="L40",location={"onplayer","atvendor"},prefix_desc="{green}Mangala's Teachings {white}- {gray}Hsaru's + Natalya's + Stacatomamba's\n{white}Used for:\n\n"}, --Stacatomamba's Forsaken Pact
		{code="L41",location={"onplayer","atvendor"},prefix_desc="{green}Silhouette of Silence {white}- {gray}Natalya's + Kreigur's\n{white}Used for:\n\n"}, --Kreigur's Forsaken Pact
		{code="L42",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Sukami Forsaken Pact
		{code="L43",location={"onplayer","atvendor"},prefix_desc="{green}Sacrificial Tribute {white}- {gray}Tal Rasha's + Griswold's + Mirrored Flames\n{white}Used for:\n\n"}, --Mirrored Flames Forsaken Pact
		{code="L44",location={"onplayer","atvendor"},prefix_desc="{green}Path of the Vortex {white}- {gray}Unstoppable Force + Natalya's {red}-Barbarian and Assassin only\n{white}Used for:\n\n"}, --Unstoppable Force Forsaken Pact
		{code="L45",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Underworld's Unrest Forsaken Pact
		{code="L46",location={"onplayer","atvendor"},prefix_desc="{green}Cascading Caldera {white}- {gray}Vizjerei's + Elemental Blueprints + Battlemage's\n{white}Used for:\n\n"}, --Elemental Blueprints Forsaken Pact
		{code="L47",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Raijin's Rebellion Forsaken Pact
		{code="L48",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Mikael's Toxicity Forsaken Pact
		{code="L49",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Warrior's Wrath Forsaken Pact
		{code="L50",location={"onplayer","atvendor"},prefix_desc="{green}Black Tempest {white}- {gray}Glacial + Blessings of Artemis\n{white}Used for:\n\n"}, --Blessings of Artemis Forsaken Pact
		{code="L51",location={"onplayer","atvendor"},prefix_desc="{green}Memento Mori {white}- {gray}Rathma's + Artio's Calling + Death's\n{white}Used for:\n\n"}, --Artio's Calling Forsaken Pact
		{code="L52",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Justitia's Divinity Forsaken Pact
		{code="L53",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Pulsing Presence Forsaken Pact
		{code="L54",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Celestial Caress Forsaken Pact
		{code="L55",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Breaker of Chains Forsaken Pact
		{code="L56",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Silhouette of Silence Forsaken Pact
		{code="L57",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Mangala's Teachings Forsaken Pact
		{code="L58",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Sacrificial Trinity Forsaken Pact
		{code="L59",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Plates of Protection Forsaken Pact
		{code="L60",location={"onplayer","atvendor"},prefix_desc="{red} Currently not used in any Pact\n{white}Used for:\n\n"}, --Black Tempest Forsaken Pact
		
			
			
		
	--                                                                                       Soon To Be Deleted Items
        { 
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = false,
            sockets = "0",
            location = "onplayer",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} stash and/or inventory. {red}Item{white}{link}"
        },
        { 
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = false,
            sockets = "0",
            location = "equipped",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} Currrently equipped. {red}Item{white}{link}"
        },
        { 
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = false,
            sockets = "0",
            location = "atvendor",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. If you are sure this is not on merc, ignore this message as it's likely at vendor. Item location:{orange} Merc's equipment. {red}Item{white}{link}"
        },
        { 
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = true,
            location = "onplayer",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} stash and/or inventory. {red}Item{gray}{link}"
        },
        { 
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = true,
            location = "equipped",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} Currently equipped. {red}Item{gray}{link}"
        },
        {
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = true,
            location = "atvendor",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. If you are sure this is not on merc, ignore this message as it's likely at vendor. Item location:{orange} Merc's equipment. {red}Item{gray}{link}"
        },
        { 
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = false,
            sockets = "1+",
            location = "onplayer",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} stash and/or inventory. {red}Item{gray}{link}"
        },
        {
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = false,
            sockets = "1+",
            location = "equipped",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} Currently equipped. {red}Item{gray}{link}"
        },
        { 
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "3-",
            ethereal = false,
            sockets = "1+",
            location = "atvendor",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. If you are sure this is not on merc, ignore this message as it's likely at vendor. Item location:{orange} Merc's equipment. {red}Item{gray}{link}"
        },
        { 
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "4",
            location = "onplayer",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} stash and/or inventory. {red}Item{blue}{link}"
        },
        { 
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "4",
            location = "equipped",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} Currently equipped. {red}Item{blue}{link}"
        },
        {
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "4",
            location = "atvendor",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. If you are sure this is not on merc, ignore this message as it's likely at vendor. Item location:{orange} Merc's equipment. {red}Item{blue}{link}"
        },
        {
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "5",
            location = "onplayer",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} stash and/or inventory. {red}Item{green}{link}"
        },
        { 
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "5",
            location = "equipped",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} Currently equipped. {red}Item{green}{link}"
        },
        { 
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "5",
            location = "atvendor",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} Merc's equipment . {red}Item{green}{link}"
        },
        {
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "6",
            location = "onplayer",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} stash and/or inventory. {red}Item{yellow}{link}"
        },
        { 
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "6",
            location = "equipped",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} Currently equipped. {red}Item{yellow}{link}"
        },
        {
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "6",
            location = "atvendor",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. If you are sure this is not on merc, ignore this message as it's likely at vendor. Item location:{orange} Merc's equipment. {red}Item{yellow}{link}"
        },
        {
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "7",
            location = "onplayer",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} stash and/or inventory. {red}Item{gold}{link}"
        },
        {
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "7",
            location = "equipped",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} Currently equipped. {red}Item{gold}{link}"
        },
        {
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "7",
            location = "atvendor",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. If you are sure this is not on merc, ignore this message as it's likely at vendor. Item location:{orange} Merc's equipment. {red}Item{gold}{link}"
        },
        { 
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "8",
            location = "onplayer",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} stash and/or inventory. {red}Item{orange}{link}"
        },
        { 
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "8",
            location = "equipped",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} Currently equipped. {red}Item{orange}{link}"
        },
        {
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "8",
            location = "atvendor",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. If you are sure this is not on merc, ignore this message as it's likely at vendor. Item location:{orange} Merc's equipment. {red}Item{orange}{link}"
        },
        { 
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "9",
            location = "onplayer",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} stash and/or inventory. {red}Item{dark green}{link}"
        },
        {
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6", "Zc4", "Zc5", "Zc6" },
            quality = "9",
            location = "equipped",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} Currently eqiopped. {red}Item{dark green}{link}"
        },
        {
            codes = { "Ds4", "Ds5", "Ds6", "Ab4", "Ab5", "Ab6", "Bp4", "Bp5", "Bp6", "Vg4", "Vg5", "Vg6", "Bb4", "Bb5", "Bb6", "Pc4", "Pc5", "Pc6", "Ag4", "Ag5", "Ag6", "Na4", "Na5", "Na6", "Sa4", "Sa5", "Ca4", "Ca5", "Ca6", "Sa6" },
            quality = "9",
            location = "atvendor",
			name_override = "{red}Cube This Item Alone To Fix",
            notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. If you are sure this is not on merc, ignore this message as it's likely at vendor. Item location:{orange} Merc's equipment. {red}Item{dark green}{link}"
        },
		{
            codes = { "m32", "m34", "m36" },
            location = { "onplayer", "equipped", "onground" },
            name_override = "{red}Cube This Item Alone To Fix",
			notify = "{orange}WARNING!!! {red}If you do not cube this item alone in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} stash and/or inventory. {red}Item{gold}{link}"
        },
		{
            code = "m35",
            location = { "onplayer", "equipped", "onground" },
            name_override = "{red}Cube This Item with Token of Evil To Fix",
			notify = "{orange}WARNING!!! {red}If you do not cube this item with Token of Evil in cube, it will cause your ENTIRE save file to stop working from the next mod update!\nItems affected have changed name so you can locate them easier. Item location:{orange} stash and/or inventory. {red}Item{gold}{link}"
        }
    }
}
