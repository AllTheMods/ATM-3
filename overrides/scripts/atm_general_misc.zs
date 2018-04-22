import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#packmode normal simplified


print(" =================== General Tweaks / Fixes =================== ");
print(" ============================================================== ");


//====== Variables ======
//
	var planks = <ore:plankWood>;
	val logs = <ore:logWood>;


//====== Cyclic Remove Item ======
//
	//remove corrupted chorus fruit to balance flight
	recipes.remove(<cyclicmagic:corrupted_chorus>);


//====== Marble Dust ======
//
	var marble = <astralsorcery:blockmarble>;
	var marbleDust = <techreborn:dust:32>;
	mods.mekanism.enrichment.addRecipe(marble, marbleDust);
	mods.mekanism.crusher.addRecipe(marble, marbleDust);
	mods.thermalexpansion.Pulverizer.addRecipe(marbleDust, marble, 400);
	mods.actuallyadditions.Crusher.addRecipe(marbleDust, marble);
	
//====== Natura Ghostwood Sticks (for Fletching) ======
//
	recipes.addShaped(<natura:sticks:9>*6, [[<natura:nether_planks>],[<natura:nether_planks>],[<natura:nether_planks>]]);


//====== Blaze Rod Burn Times ======
//
	//Buff blaze rods to 16 "items" smelt time (up from 12)
	furnace.setFuel(<minecraft:blaze_rod>, 3200);
	//Add burn time for blaze lantern - 64 items
	furnace.setFuel(<quark:blaze_lantern>, 12800);



//====== Bag of holding warning ======
//
	<extrautils2:bagofholding>.addTooltip(
		format.underline(format.red(
		"WARNING! Contents may be lost when switching to/from creative or OP"
		))
	);


//====== Terraqueous glass shards ======
//
	<ore:shardGlass>.add(<terraqueous:item_main:108>);
	recipes.addShapeless(<terraqueous:doodads:6>, [
		<ore:shardGlass>, <ore:shardGlass>, <ore:shardGlass>,
		<ore:shardGlass>, <ore:shardGlass>, <ore:shardGlass>,
		<ore:shardGlass>, <ore:shardGlass>, <ore:shardGlass>
		]);


//====== Paxels use oredict ======
//
	//Steel
	var steelAxes = [
		<mekanismtools:steelaxe>,
		<thermalfoundation:tool.axe_steel>,
		<tconstruct:axe_head>.withTag({Material: "steel"}),
		<tconstruct:broad_axe_head>.withTag({Material: "steel"})
	] as IItemStack[];
	<ore:steelAxe>.addItems(steelAxes);
	var steelPickaxes = [
		<mekanismtools:steelpickaxe>,
		<thermalfoundation:tool.pickaxe_steel>,
		<tconstruct:pick_head>.withTag({Material: "steel"})
	] as IItemStack[];
	<ore:steelPickaxe>.addItems(steelPickaxes);
	var steelShovels = [
		<tconstruct:shovel_head>.withTag({Material: "steel"}),
		<thermalfoundation:tool.shovel_steel>,
		<mekanismtools:steelshovel>,
		<tconstruct:excavator_head>.withTag({Material: "steel"})
	] as IItemStack[];
	<ore:steelShovel>.addItems(steelShovels);
	recipes.remove(<mekanismtools:steelpaxel>);
	recipes.addShaped(<mekanismtools:steelpaxel>, [
		[<ore:steelAxe>, <ore:steelPickaxe>, <ore:steelShovel>],
		[null, <ore:stickSteel>, null],
		[null, <ore:stickSteel>, null]
		]);
		
	//Obsidian
	var obsidianAxes = [
		<actuallyadditions:item_axe_obsidian>,
		<mekanismtools:obsidianaxe>,
		<tconstruct:axe_head>.withTag({Material: "obsidian"}),
		<tconstruct:broad_axe_head>.withTag({Material: "obsidian"})
	] as IItemStack[];
	<ore:obsidianAxe>.addItems(obsidianAxes);
	var obsidianPickaxes = [
		<actuallyadditions:item_pickaxe_obsidian>,
		<mekanismtools:obsidianpickaxe>,
		<tconstruct:pick_head>.withTag({Material: "obsidian"})
	] as IItemStack[];
	<ore:obsidianPickaxe>.addItems(obsidianPickaxes);
	var obsidianShovels = [
		<actuallyadditions:item_shovel_obsidian>,
		<mekanismtools:obsidianshovel>,
		<tconstruct:excavator_head>.withTag({Material: "obsidian"}),
		<tconstruct:shovel_head>.withTag({Material: "obsidian"})
	] as IItemStack[];
	<ore:obsidianShovel>.addItems(obsidianShovels);
	recipes.remove(<mekanismtools:obsidianpaxel>);
	recipes.addShaped(<mekanismtools:obsidianpaxel>, [
		[<ore:obsidianAxe>, <ore:obsidianPickaxe>, <ore:obsidianShovel>],
		[null, <ore:stickWood>, null],
		[null, <ore:stickWood>, null]
	]);
	
	//Bronze
	var bronzeAxes = [
		<ic2:bronze_axe>,
		<mekanismtools:bronzeaxe>,
		<embers:axe_bronze>,
		<techreborn:bronzeaxe>,
		<thermalfoundation:tool.axe_bronze>,
		<tconstruct:axe_head>.withTag({Material: "bronze"}),
		<tconstruct:broad_axe_head>.withTag({Material: "bronze"})
	] as IItemStack[];
	<ore:bronzeAxe>.addItems(bronzeAxes);
	var bronzePickaxes = [
		<ic2:bronze_pickaxe>,
		<techreborn:bronzepickaxe>,
		<mekanismtools:bronzepickaxe>,
		<thermalfoundation:tool.pickaxe_bronze>,
		<tconstruct:pick_head>.withTag({Material: "bronze"}),
		<embers:pickaxe_bronze>
	] as IItemStack[];
	<ore:bronzePickaxe>.addItems(bronzePickaxes);
	var bronzeShovels = [
		<mekanismtools:bronzeshovel>,
		<techreborn:bronzespade>,
		<thermalfoundation:tool.shovel_bronze>,
		<tconstruct:shovel_head>.withTag({Material: "bronze"}),
		<tconstruct:excavator_head>.withTag({Material: "bronze"}),
		<embers:shovel_bronze>,
		<ic2:bronze_shovel>
	] as IItemStack[];
	<ore:bronzeShovel>.addItems(bronzeShovels);
	recipes.remove(<mekanismtools:bronzepaxel>);
	recipes.addShaped(<mekanismtools:bronzepaxel>, [
		[<ore:bronzeAxe>, <ore:bronzePickaxe>, <ore:bronzeShovel>],
		[null, <ore:stickWood>, null],
		[null, <ore:stickWood>, null]
		]);


//====== Bread ======
//
	recipes.addShaped(<minecraft:bread>, [[<ore:cropWheat>, <ore:cropWheat>, <ore:cropWheat>]]);


//====== Quartz Grindstone ======
//
	recipes.remove(<appliedenergistics2:grindstone>);
	recipes.addShaped(<appliedenergistics2:grindstone>, [
		[<minecraft:stone>, <ore:gearAluminum>, <minecraft:stone>],
		[<appliedenergistics2:material>, <minecraft:stone>, <appliedenergistics2:material>],
		[<minecraft:cobblestone>, <appliedenergistics2:material>, <minecraft:cobblestone>]]);


//====== Bauxite -> Aluminum ======
//
	mods.mekanism.infuser.addRecipe("REDSTONE", 10, <techreborn:dust:5>, <thermalfoundation:material:68>);


//====== Aluminum Dust ======
// Unify any possible type to base type (TE)
//
	recipes.remove(<techreborn:smalldust:1>);
	recipes.addShapeless(<thermalfoundation:material:68>, [<ore:dustAluminum>]);


//====== Slag Convert ======
// able to cycle between different types if specific one needed
//
	recipes.addShapeless(<immersiveengineering:material:7>, [<ic2:misc_resource:5>]);
	recipes.addShapeless(<ic2:misc_resource:5>, [<thermalfoundation:material:864>]);
	recipes.addShapeless(<thermalfoundation:material:864>, [<immersiveengineering:material:7>]);
	<ore:itemSlag>.add(<immersiveengineering:material:7>);
	<ore:itemSlag>.add(<ic2:misc_resource:5>);
	<ore:itemSlag>.add(<thermalfoundation:material:864>);
	<ore:crystalSlag>.addAll(<ore:itemSlag>);


//====== IC2 / TR OreDict ======
//
	<ore:plateAdvancedAlloy>.add(<techreborn:plates:35>);
	<ore:plateAdvancedAlloy>.add(<ic2:crafting:3>);
	<ore:plateCarbon>.add(<ic2:crafting:15>);
	<ore:plateCarbon>.add(<techreborn:plates:2>);
	<ore:oreIridium>.remove(<ic2:misc_resource:1>);
	
	//reinforced glass
	<ore:glassReinforced>.addItems([<techreborn:reinforced_glass>, <ic2:glass:0>]);
	recipes.addShapeless(<techreborn:reinforced_glass>, [<ic2:glass>]);
	recipes.addShapeless(<ic2:glass>, [<techreborn:reinforced_glass>]);

	//solar
	recipes.addShapeless(<techreborn:solar_panel>, [<ic2:te:8>]);
	recipes.addShapeless(<ic2:te:8>, [<techreborn:solar_panel>]);



//====== Black Quartz Block ======
//
	recipes.addShapeless(<actuallyadditions:item_misc:5> * 4, [<actuallyadditions:block_misc:2>]);


//====== AE2 Press Recipes
//
	var pressCalc = <appliedenergistics2:material:13>;
	var pressEngi = <appliedenergistics2:material:14>;
	var pressLogi = <appliedenergistics2:material:15>;
	var pressSili = <appliedenergistics2:material:19>;
	var blockSkyS = <appliedenergistics2:sky_stone_block>;
	var dustSkySt = <appliedenergistics2:material:45>;
	var crystalCertusPure = <appliedenergistics2:material:10>;
	var siliconAE = <appliedenergistics2:material:5>;
	var siliconRS = <refinedstorage:silicon>;
	
	//QoL new ways to get SkyStone Dust
	mods.mekanism.enrichment.addRecipe(blockSkyS, dustSkySt);
	mods.mekanism.crusher.addRecipe(blockSkyS, dustSkySt);
	mods.thermalexpansion.Pulverizer.addRecipe(dustSkySt, blockSkyS, 400);
	mods.actuallyadditions.Crusher.addRecipe(dustSkySt, blockSkyS);
	
	//Mek Infuser recipes
	mods.mekanism.infuser.addRecipe("CARBON",   80, dustSkySt, pressSili);
	mods.mekanism.infuser.addRecipe("REDSTONE", 80, dustSkySt, pressLogi);
	mods.mekanism.infuser.addRecipe("DIAMOND",  80, dustSkySt, pressEngi);
	mods.mekanism.infuser.addRecipe("TIN",      80, dustSkySt, pressCalc);
	
	//Convert from one to another
	recipes.addShapeless(pressSili, [pressLogi, dustSkySt, dustSkySt]);
	recipes.addShapeless(pressLogi, [pressEngi, dustSkySt, dustSkySt]);
	recipes.addShapeless(pressEngi, [pressCalc, dustSkySt, dustSkySt]);
	recipes.addShapeless(pressCalc, [pressSili, dustSkySt, dustSkySt]);
	recipes.addShapeless(siliconAE, [siliconRS]);
	recipes.addShapeless(siliconRS, [siliconAE]);
	
	//Empowerer recipes (using function to make 4x recipes to accept any press as input)
	empPressRecipe(siliconAE,                 pressSili, [48,  55,  73]);
	empPressRecipe(<minecraft:gold_block>,    pressLogi, [255, 195, 5]);
	empPressRecipe(<minecraft:diamond_block>, pressEngi, [0,   190, 255]);
	empPressRecipe(crystalCertusPure,         pressCalc, [240, 248, 255]);
	
	function empPressRecipe(x as IItemStack, y as IItemStack, z as float[]){
		//                  x = input item   y = out press    z = color


		var blockSkyS = <appliedenergistics2:sky_stone_block>;
		var dustSkySt = <appliedenergistics2:material:45>;
		var pressurePlate = <minecraft:heavy_weighted_pressure_plate>;
		
		mods.actuallyadditions.Empowerer.addRecipe(y, pressurePlate, x, blockSkyS, dustSkySt, dustSkySt, 5000, 200, z);
		mods.actuallyadditions.Empowerer.addRecipe(y, pressurePlate, x, blockSkyS, dustSkySt, dustSkySt, 5000, 200, z);
		mods.actuallyadditions.Empowerer.addRecipe(y, pressurePlate, x, blockSkyS, dustSkySt, dustSkySt, 5000, 200, z);
		mods.actuallyadditions.Empowerer.addRecipe(y, pressurePlate, x, blockSkyS, dustSkySt, dustSkySt, 5000, 200, z);
	}


//====== Jazz-up Quark Elytra dupe so it shows in JEI ======
//
	recipes.remove(<minecraft:elytra>.withTag({"quark:elytraDye": 0}));
	recipes.addShapeless(<minecraft:elytra>.withTag({"quark:elytraDye": 0}), [
		<minecraft:elytra>.giveBack(), <quark:enderdragon_scale>
		]);
	<quark:enderdragon_scale>.addTooltip(
					format.underline(format.aqua(
					"Can be used to DUPLICATE an Elytra"
					)));
	mods.jei.JEI.addDescription(<quark:enderdragon_scale>, "By crafting an Elytra and a Dragon Scale together, the Dragon Scale will take the form of the Elytra","",
															"","This does not consume nor damage the original Elytra");


//====== Pressure Pipes Gas ======
// add missing recipes
//
	var mekGasPipe = <mekanism:transmitter:2>.withTag({tier: 3});
	var mekGasUpgr = <mekanism:gasupgrade:0>;
	
	recipes.remove(<pressure:tank_gas_input>);
	recipes.addShaped(<pressure:tank_gas_input>, [
		[mekGasUpgr, mekGasPipe, mekGasUpgr],
		[mekGasPipe, <pressure:tank_pressure_input>, mekGasPipe],
		[mekGasUpgr, mekGasPipe, mekGasUpgr]
		]);
		
	recipes.remove(<pressure:tank_gas_output>);
	recipes.addShaped(<pressure:tank_gas_output>, [
		[mekGasUpgr, mekGasPipe, mekGasUpgr],
		[mekGasPipe, <pressure:tank_pressure_output>, mekGasPipe],
		[mekGasUpgr, mekGasPipe, mekGasUpgr]
		]);
		
	recipes.remove(<pressure:gas_output>);
	recipes.addShaped(<pressure:gas_output>, [
		[mekGasUpgr, mekGasPipe, mekGasUpgr],
		[mekGasPipe, <pressure:output>, mekGasPipe],
		[mekGasUpgr, mekGasPipe, mekGasUpgr]
		]);
		
	recipes.remove(<pressure:gas_input>);
	recipes.addShaped(<pressure:gas_input>, [
		[mekGasUpgr, mekGasPipe, mekGasUpgr],
		[mekGasPipe, <pressure:input>, mekGasPipe],
		[mekGasUpgr, mekGasPipe, mekGasUpgr]
		]);


//====== Vanilla-ish Cookie recipe ======
//
	recipes.addShaped(<minecraft:cookie>, [[<minecraft:wheat>, <minecraft:dye:3>, <minecraft:wheat>]]);


//====== End Dragon Dimlet ======
//
	val dimletDragon = <rftoolsdim:known_dimlet:3>.withTag({dkey: "minecraft:ender_dragon"});
	recipes.addShaped(dimletDragon, [
		[<atmtweaks:item_material:1>, <mysticalagradditions:stuff:2>, <astralsorcery:itemcraftingcomponent:1>],
		[<rftoolsdim:dimlet_control_circuit:6>, <minecraft:dragon_egg>, <minecraft:skull:5>],
		[<atmtweaks:item_material:1>, <mysticalagradditions:stuff:2>, <astralsorcery:itemcraftingcomponent:1>]
		]);

	//metadata to item
	dimletDragon.addTooltip(format.aqua("NOT crafted in the dimlet workbench"));
	mods.jei.JEI.addDescription(dimletDragon, "Syringe has been disabled for ender dragons. Instead, a dragon mob dimlet can be crafted with a normal recipe instead");

	//add the full book to JEI as it's own entry
	mods.jei.JEI.addItem(dimletDragon);


//====== Natura Flamestring ======
//
	<ore:fieryItem>.addAll(<ore:slimecrystalMagma>);
	<ore:fieryItem>.add(<mysticalagriculture:fire_essence>);
	<ore:fieryBlock>.add(<tconstruct:firewood:1>);
	<ore:fieryBlock>.addAll(<ore:blockBlaze>);
	recipes.addShaped(<natura:materials:7>*3, [
		[<ore:string>, <ore:string>, <ore:string>],
		[<ore:string>, <ore:string>, <ore:string>],
		[<ore:fieryItem>, <ore:fieryBlock>, <ore:fieryItem>]
		]);


//====== Morph-o-Tool ======
//
	recipes.addShaped(<morphtool:tool>*1, [
		[null, <ore:dyeGreen>, <ore:dyeBlue>],
		[null, <ore:ingotIron>, <ore:dyeRed>],
		[<ore:ingotIron>, null, null]
		]);

//====== TR LED Lamp ======
//
recipes.remove(<techreborn:lamp_led>);
	recipes.addShaped(<techreborn:lamp_led>, [
		[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
		[<ic2:cable:4>.withTag({type: 4 as byte, insulation: 0 as byte}), <minecraft:glowstone_dust>, <ic2:cable:4>.withTag({type: 4 as byte, insulation: 0 as byte})],
		[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
		]);

//====== Enderman Skull ======
//
    var enderEssence = <mysticalagriculture:enderman_essence>;
    var blankSkull = <mysticalagriculture:crafting:15>;
    recipes.addShaped(<enderio:block_enderman_skull>, [
        [enderEssence, enderEssence, enderEssence],
        [enderEssence, blankSkull,   enderEssence], 
        [enderEssence, enderEssence, enderEssence]
        ]);

//====== Super-Frame Corner ======
//
recipes.remove(<funkylocomotion:mass_frame_corner>);
	recipes.addShaped(<funkylocomotion:mass_frame_corner>, [
		[<ore:ingotElectrum>, null, <ore:ingotElectrum>],
		[null, <funkylocomotion:pusher:1>, null], 
		[<ore:ingotElectrum>, null, <ore:ingotElectrum>]
		]);

//====== Creative Flight Modifier ======
//
recipes.remove(<environmentaltech:modifier_creative_flight>);
	recipes.addShaped(<environmentaltech:modifier_creative_flight>, [
		[<minecraft:elytra>, <simplyjetpacks:itemjetpack:18>, <minecraft:elytra>],
		[<actuallyadditions:item_wings_of_the_bats>, <extrautils2:angelring:0>, <actuallyadditions:item_wings_of_the_bats>], 
		[<advancedrocketry:itemupgrade:1>, <rftools:flight_module>, <advancedrocketry:itemupgrade:1>]
		]);

//====== Readding the Chest Variances ======
//
recipes.remove(<minecraft:chest>);
	recipes.addShaped(<minecraft:chest>, [
		[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
		[<ore:plankWood>, null, <ore:plankWood>], 
		[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]);

//====== Fixing Unbaked Talisman ======
//
var unbaked_talisman = <terraqueous:item_main:3>;
var clay_ball = <minecraft:clay_ball>;
var feather = <ore:feather>;
var endium = <ore:gemEndimium>;
recipes.remove(unbaked_talisman);
	recipes.addShaped(unbaked_talisman, [
		[feather, endium, feather],
		[clay_ball, clay_ball, clay_ball]
		]);

//====== Fixing Crushing Steel ======
//	
	var ore_ironDust = <ore:dustIron>;
	var iron = <minecraft:iron_ingot>;
	var correct_steel = <thermalfoundation:material:160>;
	var correct_ironDust = <thermalfoundation:material:0>;
	var correct_steelDust = <thermalfoundation:material:96>;
	mods.mekanism.crusher.removeRecipe(ore_ironDust);
	mods.mekanism.crusher.removeRecipe(correct_steelDust);
	mods.mekanism.crusher.addRecipe(correct_steel, correct_steelDust);
	mods.mekanism.crusher.addRecipe(iron, correct_ironDust);
	mods.actuallyadditions.Crusher.removeRecipe(correct_steel);
	mods.actuallyadditions.Crusher.addRecipe(correct_steelDust, correct_steel);
