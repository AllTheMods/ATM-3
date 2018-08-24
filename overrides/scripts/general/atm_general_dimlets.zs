import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

#modloaded rftoolsdim

print(" =================== All The Mods - Dimlets =================== ");
print(" ============================================================== ");
/*
	Originally created by @Rei Da Tecnologia#8860 (Discord), modified by Ordinator
	
	When this script was made, many/all "sky" dimlets from RFTDim were not obtainable.
	This script adds crafting recipes for them.

*/


//====== Variables ======
//
    var star = <ore:ingotAstralStarmetal>;
    var dust = <ore:dustBedrock>;
    val sky = <rftoolsdim:known_dimlet:4>;
    val dark = <darkutils:material:3>;
    val voiddim = <rftoolsdim:known_dimlet:6>.withTag({dkey: "Void"});

    var dye = {
		black : <ore:dyeBlack>,
		red : <ore:dyeRed>,
		green : <ore:dyeGreen>,
		brown : <ore:dyeBrown>,
		blue : <ore:dyeBlue>,
		purple : <ore:dyePurple>,
		cyan : <ore:dyeCyan>,
		ltgray : <ore:dyeLightGray>,
		gray : <ore:dyeGray>,
		pink : <ore:dyePink>,
		lime : <ore:dyeLime>,
		yellow : <ore:dyeYellow>,
		ltblue : <ore:dyeLightBlue>,
		magenta : <ore:dyeMagenta>,
		orange : <ore:dyeOrange>,
		white : <ore:dyeWhite>
    } as IOreDictEntry[string];
    
    // Associative array for nicknaming all dimlets for easy reference
    var dimlets = {
		skyColorBlack : sky.withTag({dkey:"black"}), 
		skyColorGreen : sky.withTag({dkey:"green"}), 
		skyColorRed : sky.withTag({dkey:"red"}), 
		skyColorPurple : sky.withTag({dkey:"purple"}), 
		skyColorYellow : sky.withTag({dkey:"yellow"}), 
		skyColorCyan : sky.withTag({dkey:"cyan"}), 
		skyColorBlue : sky.withTag({dkey:"blue"}), 
		skyColorWhite : sky.withTag({dkey:"white"}), 
		skyColorDarkCyan : sky.withTag({dkey:"dark.cyan"}), 
		skyColorDarkRed : sky.withTag({dkey:"dark.red"}), 
		skyColorDarkPurple : sky.withTag({dkey:"dark.purple"}), 
		skyColorDarkGreen : sky.withTag({dkey:"dark.green"}), 
		skyColorDarkBlue : sky.withTag({dkey:"dark.blue"}), 
		skyColorDarkDay : sky.withTag({dkey:"dark.day"}), 
		skyColorGold : sky.withTag({dkey:"gold"}), 
		skyColorEnder : sky.withTag({dkey:"ender"}), 

		cloudColorBlack : sky.withTag({dkey:"black.clouds"}), 
		cloudColorGreen : sky.withTag({dkey:"green.clouds"}), 
		cloudColorRed : sky.withTag({dkey:"red.clouds"}), 
		cloudColorPurple : sky.withTag({dkey:"purple.clouds"}), 
		cloudColorYellow : sky.withTag({dkey:"yellow.clouds"}), 
		cloudColorCyan : sky.withTag({dkey:"cyan.clouds"}), 
		cloudColorBlue : sky.withTag({dkey:"blue.clouds"}), 
		cloudColorNormal : sky.withTag({dkey:"normal.clouds"}), 

		fogColorBlack : sky.withTag({dkey:"black.fog"}), 
		fogColorGreen : sky.withTag({dkey:"green.fog"}), 
		fogColorRed : sky.withTag({dkey:"red.fog"}), 
		fogColorPurple : sky.withTag({dkey:"purple.fog"}), 
		fogColorYellow : sky.withTag({dkey:"yellow.fog"}), 
		fogColorCyan : sky.withTag({dkey:"cyan.fog"}), 
		fogColorBlue : sky.withTag({dkey:"blue.fog"}), 
		fogColorNormal : sky.withTag({dkey:"normal.fog"}), 

		bodyMoon : sky.withTag({dkey:"body.moon"}), 
		bodySun : sky.withTag({dkey:"body.sun"}), 
		bodyLargeMoon : sky.withTag({dkey:"body.large.moon"}), 
		bodyLargeSun : sky.withTag({dkey:"body.large.sun"}), 
		bodySmallSun : sky.withTag({dkey:"body.small.sun"}), 
		bodySmallMoon : sky.withTag({dkey:"body.small.moon"}), 
		bodyNone : sky.withTag({dkey:"body.none"}), 
		bodyNormal : sky.withTag({dkey:"body.normal"}), 
		bodyPlanet : sky.withTag({dkey:"body.planet"}), 
		bodyLargePlanet : sky.withTag({dkey:"body.large.planet"}), 
		bodyInferno : sky.withTag({dkey:"inferno"}), 
		bodyStars : sky.withTag({dkey:"stars1"}), 
		bodyBrightNight : sky.withTag({dkey:"bright.night"}), 
		bodyRedSun : sky.withTag({dkey:"body.red.sun"}), 
		bodyRedMoon : sky.withTag({dkey:"body.red.moon"}) 
    } as IItemStack[string];


    // Associative array for INGREDIENTS for dimlet recipes
    var dimIn = {
		skyColorBlack : [dye["black"], dye["black"]],
		skyColorGreen : [dye["green"], dye["green"]],
		skyColorRed : [dye["red"], dye["red"]],
		skyColorPurple : [dye["purple"], dye["purple"]],
		skyColorYellow : [dye["yellow"], dye["yellow"]],
		skyColorCyan : [dye["cyan"], dye["cyan"]],
		skyColorBlue : [dye["blue"], dye["blue"]],
		skyColorWhite : [dye["white"], dye["white"]],
		skyColorDarkCyan : [dye["cyan"], dark],
		skyColorDarkRed : [dye["red"], dark],
		skyColorDarkPurple : [dye["purple"], dark],
		skyColorDarkGreen : [dye["green"], dark],
		skyColorDarkBlue : [dye["blue"], dark],
		skyColorDarkDay : [dye["white"], dark],
		skyColorGold : [<ore:ingotGold>, <liquid:gold> * 1000],
		skyColorEnder : [<minecraft:ender_eye>, <liquid:ender> * 1000],

		cloudColorBlack : [dye["black"], <ore:wool>],
		cloudColorGreen : [dye["green"], <ore:wool>],
		cloudColorRed : [dye["red"], <ore:wool>],
		cloudColorPurple : [dye["purple"], <ore:wool>],
		cloudColorYellow : [dye["yellow"], <ore:wool>],
		cloudColorCyan : [dye["cyan"], <ore:wool>],
		cloudColorBlue : [dye["blue"], <ore:wool>],
		cloudColorNormal : [dye["white"], <ore:wool>],

		fogColorBlack : [dye["black"], <minecraft:dragon_breath>],
		fogColorGreen : [dye["green"], <minecraft:dragon_breath>],
		fogColorRed : [dye["red"], <minecraft:dragon_breath>],
		fogColorPurple : [dye["purple"], <minecraft:dragon_breath>],
		fogColorYellow : [dye["yellow"], <minecraft:dragon_breath>],
		fogColorCyan : [dye["cyan"], <minecraft:dragon_breath>],
		fogColorBlue : [dye["blue"], <minecraft:dragon_breath>],
		fogColorNormal : [dye["ltgray"], <minecraft:dragon_breath>],

		bodyMoon : [<ore:gemMoon>, <ore:gemMoon>],
		bodySun : [<extrautils2:suncrystal:250>, <liquid:liquid_sunshine>],
		bodyLargeMoon : [dimlets["bodyMoon"], <ore:ingotEvilMetal>],
		bodyLargeSun : [dimlets["bodySun"], <extrautils2:suncrystal:0>],
		bodySmallSun : [dimlets["bodySun"], <minecraft:double_plant:0>],
		bodySmallMoon : [dimlets["bodyMoon"], <extrautils2:ingredients:3>],
		bodyNone : [<xreliquary:void_tear>, <minecraft:glass_bottle>],
		bodyNormal : [<ore:dirt>, <gendustry:apiary.upgrade:17>],
		bodyPlanet : [<botania:tinyplanet>, <extrautils2:ingredients:3>],
		bodyLargePlanet : [<botania:tinyplanet>, <ore:ingotEvilMetal>],
		bodyInferno : [<ore:ingotDemonicMetal>, <astralsorcery:itemusabledust:1>],
		bodyStars : [<minecraft:nether_star>, <botania:blackholetalisman>],
		bodyBrightNight : [<ore:ingotEvilMetal>, <botania:blackholetalisman>],
		bodyRedSun : [dimlets["bodySun"], dye["red"]],
		bodyRedMoon : [dimlets["bodyMoon"], dye["red"]]
    } as IIngredient[][string];


//====== Loop the associative arrays ======
//

    for key, value in dimlets {
		var strName = "crtDimlet" ~ key;
		var inMat1 = dimIn[key][0];
		var inMat2 = dimIn[key][1];
    
		recipes.addShaped(strName, value, [
			[inMat2, inMat1, inMat2],
			[dust, voiddim, dust],
			[star, inMat1, star]
		]);
		
		mods.jei.JEI.addItem(value);
		value.addTooltip(format.aqua("NOT crafted in the dimlet workbench"));
    }


