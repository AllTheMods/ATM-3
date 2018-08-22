import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#

print(" =================== All The Mods - Dimlets =================== ");
print(" ============================================================== ");

//====== Variables ======
//
	var star = <ore:ingotAstralStarmetal>;
	var dust = <ore:dustBedrock>;
    val sky = <rftoolsdim:known_dimlet:4>;
//====== Sky/Cloud/Fog Color ======
//
    //Sky Color
	recipes.addShaped("Sky Color Dimlet - Black", sky.withTag({dkey: "black"}), [
		[null, dust, null],
		[dust, <ore:dyeBlack>, dust],
		[star, star, star]
		]);

	mods.jei.JEI.addItem(sky.withTag({dkey: "black"}));
	sky.withTag({dkey: "black"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Sky Color Dimlet - Green", sky.withTag({dkey: "green"}), [
		[null,dust,null],
		[dust,<ore:dyeGreen>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "green"}));
	sky.withTag({dkey: "green"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Sky Color Dimlet - Red", sky.withTag({dkey: "red"}), [
		[null,dust,null],
		[dust,<ore:dyeRed>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "red"}));
	sky.withTag({dkey: "red"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Sky Color Dimlet - Purple", sky.withTag({dkey: "purple"}), [
		[null,dust,null],
		[dust,<ore:dyePurple>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "purple"}));
	sky.withTag({dkey: "purple"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Sky Color Dimlet - Yellow", sky.withTag({dkey: "yellow"}), [
		[null,dust,null],
		[dust,<ore:dyeYellow>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "yellow"}));
	sky.withTag({dkey: "yellow"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Sky Color Dimlet - Cyan", sky.withTag({dkey: "cyan"}), [
		[null,dust,null],
		[dust,<ore:dyeCyan>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "cyan"}));
	sky.withTag({dkey: "cyan"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Sky Color Dimlet - Blue", sky.withTag({dkey: "blue"}), [
		[null,dust,null],
		[dust,<ore:dyeBlue>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "blue"}));
	sky.withTag({dkey: "blue"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Sky Color Dimlet - White", sky.withTag({dkey: "white"}), [
		[null,dust,null],
		[dust,<ore:dyeWhite>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "white"}));
	sky.withTag({dkey: "white"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Sky Color Dimlet - Dark Cyan", sky.withTag({dkey: "dark.cyan"}), [
		[<darkutils:material:3>,dust,<darkutils:material:3>],
		[dust,<ore:dyeCyan>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "dark.cyan"}));
	sky.withTag({dkey: "dark.cyan"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Sky Color Dimlet - Dark Red", sky.withTag({dkey: "dark.red"}), [
		[<darkutils:material:3>,dust,<darkutils:material:3>],
		[dust,<ore:dyeRed>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "dark.red"}));
	sky.withTag({dkey: "dark.red"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Sky Color Dimlet - Dark Purple", sky.withTag({dkey: "dark.purple"}), [
		[<darkutils:material:3>,dust,<darkutils:material:3>],
		[dust,<ore:dyePurple>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "dark.purple"}));
	sky.withTag({dkey: "dark.purple"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Sky Color Dimlet - Dark Green", sky.withTag({dkey: "dark.green"}), [
		[<darkutils:material:3>,dust,<darkutils:material:3>],
		[dust,<ore:dyeGreen>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "dark.green"}));
	sky.withTag({dkey: "dark.green"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Sky Color Dimlet - Dark Blue", sky.withTag({dkey: "dark.blue"}), [
		[<darkutils:material:3>,dust,<darkutils:material:3>],
		[dust,<ore:dyeBlue>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "dark.blue"}));
	sky.withTag({dkey: "dark.blue"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Sky Color Dimlet - Dark Day", sky.withTag({dkey: "dark.day"}), [
		[<darkutils:material:3>,dust,<darkutils:material:3>],
		[dust,<extrautils2:cursedearth>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "dark.day"}));
	sky.withTag({dkey: "dark.day"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

    //Cloud Color
    recipes.addShaped("Cloud Color Dimlet - Black", sky.withTag({dkey: "black.clouds"}), [
		[dust,dust,dust],
		[<ore:dyeBlack>,<ore:dyeBlack>,<ore:dyeBlack>],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "black.clouds"}));
	sky.withTag({dkey: "black.clouds"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));
	
    recipes.addShaped("Cloud Color Dimlet - Green", sky.withTag({dkey: "green.clouds"}), [
		[dust,dust,dust],
		[<ore:dyeGreen>,<ore:dyeGreen>,<ore:dyeGreen>],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "green.clouds"}));
	sky.withTag({dkey: "green.clouds"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));	
	
    recipes.addShaped("Cloud Color Dimlet - Red", sky.withTag({dkey: "red.clouds"}), [
		[dust,dust,dust],
		[<ore:dyeRed>,<ore:dyeRed>,<ore:dyeRed>],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "red.clouds"}));
	sky.withTag({dkey: "red.clouds"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));	
	
    recipes.addShaped("Cloud Color Dimlet - Purple", sky.withTag({dkey: "purple.clouds"}), [
		[dust,dust,dust],
		[<ore:dyePurple>,<ore:dyePurple>,<ore:dyePurple>],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "purple.clouds"}));
	sky.withTag({dkey: "purple.clouds"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));	
	
    recipes.addShaped("Cloud Color Dimlet - Yellow", sky.withTag({dkey: "yellow.clouds"}), [
		[dust,dust,dust],
		[<ore:dyeYellow>,<ore:dyeYellow>,<ore:dyeYellow>],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "yellow.clouds"}));
	sky.withTag({dkey: "yellow.clouds"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));	
	
    recipes.addShaped("Cloud Color Dimlet - Cyan", sky.withTag({dkey: "cyan.clouds"}), [
		[dust,dust,dust],
		[<ore:dyeCyan>,<ore:dyeCyan>,<ore:dyeCyan>],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "cyan.clouds"}));
	sky.withTag({dkey: "cyan.clouds"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));	
	
    recipes.addShaped("Cloud Color Dimlet - Blue", sky.withTag({dkey: "blue.clouds"}), [
		[dust,dust,dust],
		[<ore:dyeBlue>,<ore:dyeBlue>,<ore:dyeBlue>],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "blue.clouds"}));
	sky.withTag({dkey: "blue.clouds"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));	
	
    recipes.addShaped("Cloud Color Dimlet - Normal", sky.withTag({dkey: "normal.clouds"}), [
		[dust,dust,dust],
		[null,null,null],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "normal.clouds"}));
	sky.withTag({dkey: "normal.clouds"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));	

    //Fog Color
    recipes.addShaped("Fog Color Dimlet - Black", sky.withTag({dkey: "black.fog"}), [
		[dust,dust,dust],
		[dust,<ore:dyeBlack>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "black.fog"}));
	sky.withTag({dkey: "black.fog"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));
	
    recipes.addShaped("Fog Color Dimlet - Green", sky.withTag({dkey: "green.fog"}), [
		[dust,dust,dust],
		[dust,<ore:dyeGreen>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "green.fog"}));
	sky.withTag({dkey: "green.fog"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));
	
    recipes.addShaped("Fog Color Dimlet - Red", sky.withTag({dkey: "red.fog"}), [
		[dust,dust,dust],
		[dust,<ore:dyeRed>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "red.fog"}));
	sky.withTag({dkey: "red.fog"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));
	
    recipes.addShaped("Fog Color Dimlet - Purple", sky.withTag({dkey: "purple.fog"}), [
		[dust,dust,dust],
		[dust,<ore:dyePurple>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "purple.fog"}));
	sky.withTag({dkey: "purple.fog"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));
	
    recipes.addShaped("Fog Color Dimlet - Yellow", sky.withTag({dkey: "yellow.fog"}), [
		[dust,dust,dust],
		[dust,<ore:dyeYellow>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "yellow.fog"}));
	sky.withTag({dkey: "yellow.fog"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));
	
    recipes.addShaped("Fog Color Dimlet - Cyan", sky.withTag({dkey: "cyan.fog"}), [
		[dust,dust,dust],
		[dust,<ore:dyeCyan>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "cyan.fog"}));
	sky.withTag({dkey: "cyan.fog"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));
	
    recipes.addShaped("Fog Color Dimlet - Blue", sky.withTag({dkey: "blue.fog"}), [
		[dust,dust,dust],
		[dust,<ore:dyeBlue>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "blue.fog"}));
	sky.withTag({dkey: "blue.fog"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));
	
    recipes.addShaped("Fog Color Dimlet - Normal", sky.withTag({dkey: "normal.fog"}), [
		[dust,dust,dust],
		[dust,null,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "normal.fog"}));
	sky.withTag({dkey: "normal.fog"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

//====== Special/Unique Dimlets ======
//
    //====Special/Unique Sky Color====
	
    recipes.addShaped("Special/Unique Sky Dimlet - Gold", sky.withTag({dkey: "gold"}), [
		[dust,dust,dust],
		[star,<forge:bucketfilled:0>.withTag({FluidName:"gold",Amount:1000}),star],
		[dust,dust,dust]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "gold"}));
	sky.withTag({dkey: "gold"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

    recipes.addShaped("Special/Unique Sky Dimlet - Ender", sky.withTag({dkey: "ender"}), [
		[dust,star,dust],
		[dust,<forge:bucketfilled:0>.withTag({FluidName:"ender",Amount:1000}),dust],
		[dust,star,dust]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "ender"}));
	sky.withTag({dkey: "ender"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));
   
	//=--=Planets, Suns and Moons=--=
	
	recipes.addShaped("Special/Unique Body Dimlet - Moon", sky.withTag({dkey: "body.moon"}), [
		[star,star,star],
		[dust,<ore:gemMoon>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "body.moon"}));
	sky.withTag({dkey: "body.moon"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

    recipes.addShaped("Special/Unique Body Dimlet - Large Moon", sky.withTag({dkey: "body.large.moon"}), [
		[star,dust,star],
		[dust,<ore:gemMoon>,dust],
		[star,dust,star]]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "body.large.moon"}));
	sky.withTag({dkey: "body.large.moon"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

    recipes.addShaped("Special/Unique Body Dimlet - Sun", sky.withTag({dkey: "body.sun"}), [
		[star,star,star],
		[dust,<extrautils2:suncrystal:250>,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "body.sun"}));
	sky.withTag({dkey: "body.sun"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

    recipes.addShaped("Special/Unique Body Dimlet - Large Sun", sky.withTag({dkey: "body.large.sun"}), [
		[star,dust,star],
		[dust,<extrautils2:suncrystal:0>,dust],
		[star,dust,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "body.large.sun"}));
	sky.withTag({dkey: "body.large.sun"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

    recipes.addShaped("Special/Unique Body Dimlet - Small Sun", sky.withTag({dkey: "body.small.sun"}), [
		[dust,star,dust],
		[dust,<minecraft:double_plant:0>,dust],
		[dust,star,dust]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "body.small.sun"}));
	sky.withTag({dkey: "body.small.sun"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

    recipes.addShaped("Special/Unique Body Dimlet - Small Moon", sky.withTag({dkey: "body.small.moon"}), [
		[dust,star,dust],
		[dust,<minecraft:stone:0>,dust],
		[dust,star,dust]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "body.small.moon"}));
	sky.withTag({dkey: "body.small.moon"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

    recipes.addShaped("Special/Unique Body Dimlet - None", sky.withTag({dkey: "body.none"}), [
		[dust,star,dust],
		[dust,null,dust],
		[dust,star,dust]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "body.none"}));
	sky.withTag({dkey: "body.none"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

    recipes.addShaped("Special/Unique Body Dimlet - Normal", sky.withTag({dkey: "body.normal"}), [
		[star,star,star],
		[dust,null,dust],
		[star,star,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "body.normal"}));
	sky.withTag({dkey: "body.normal"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

    recipes.addShaped("Special/Unique Body Dimlet - Planet", sky.withTag({dkey: "body.planet"}), [
		[dust,<ore:gemMoon>,dust],
		[<ore:gemMoon>,star,<ore:gemMoon>],
		[dust,<ore:gemMoon>,dust]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "body.planet"}));
	sky.withTag({dkey: "body.planet"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

    recipes.addShaped("Special/Unique Body Dimlet - Large Planet", sky.withTag({dkey: "body.large.planet"}), [
		[dust,<ore:gemMoon>,dust],
		[<ore:gemMoon>,<ore:gemMoon>,<ore:gemMoon>],
		[star,<ore:gemMoon>,star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "body.large.planet"}));
	sky.withTag({dkey: "body.large.planet"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Special/Unique Body Dimlet - Inferno", sky.withTag({dkey: "inferno"}), [
		[<ore:dustBlaze>, <astralsorcery:itemusabledust:1>, <ore:dustBlaze>],
		[<astralsorcery:itemusabledust:1>, <ore:ingotEvilMetal>, <astralsorcery:itemusabledust:1>],
		[<ore:ingotDemonicMetal>, <ore:ingotDemonicMetal>, <ore:ingotDemonicMetal>]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "inferno"}));
	sky.withTag({dkey: "inferno"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Special/Unique Body Dimlet - Stars", sky.withTag({dkey: "stars1"}), [
		[star, <projectred-illumination:lamp:30>, star],
		[star, <minecraft:nether_star>, star],
		[star, <projectred-illumination:lamp:27>, star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "stars1"}));
	sky.withTag({dkey: "stars1"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	recipes.addShaped("Special/Unique Body Dimlet - Bright Night", sky.withTag({dkey: "bright.night"}), [
		[<ore:ingotEvilMetal>, <ore:ingotEvilMetal>, <ore:ingotEvilMetal>],
		[<quark:blaze_lantern>, <extrautils2:cursedearth>, <quark:blaze_lantern>],
		[<ore:ingotEvilMetal>, <ore:ingotEvilMetal>, <ore:ingotEvilMetal>]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "bright.night"}));
	sky.withTag({dkey: "bright.night"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	val sky1 = sky.withTag({dkey:"body.large.sun"});
	
	recipes.addShaped("Special/Unique Body Dimlet - Red Sun", sky.withTag({dkey: "body.red.sun"}), [
		[star, dust, star],
		[dust, sky1, dust],
		[star, dust, star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "body.red.sun"}));
	sky.withTag({dkey: "body.red.sun"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));

	val sky2 = sky.withTag({dkey:"body.large.moon"});
	
	recipes.addShaped("Special/Unique Body Dimlet - Red Moon", sky.withTag({dkey: "body.red.moon"}), [
		[star, dust, star],
		[dust, sky2, dust],
		[star, dust, star]
		]);
	mods.jei.JEI.addItem(sky.withTag({dkey: "body.red.moon"}));
	sky.withTag({dkey: "body.red.moon"}).addTooltip(format.aqua("NOT crafted in the dimlet workbench"));
