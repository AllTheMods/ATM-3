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
	var ingot_cast = <tconstruct:cast_custom:0>;

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
//	recipes.addShaped("NaturaSticks", <natura:sticks:9>*6, [[<natura:nether_planks>],[<natura:nether_planks>],[<natura:nether_planks>]]);


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
//	<ore:shardGlass>.add(<terraqueous:item_main:108>);
//	recipes.addShapeless("TGlassShards", <terraqueous:doodads:6>, [
//		<ore:shardGlass>, <ore:shardGlass>, <ore:shardGlass>,
//		<ore:shardGlass>, <ore:shardGlass>, <ore:shardGlass>,
//		<ore:shardGlass>, <ore:shardGlass>, <ore:shardGlass>
//		]);


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
	recipes.addShaped("SteelPaxel", <mekanismtools:steelpaxel>, [
		[<ore:steelAxe>, <ore:steelPickaxe>, <ore:steelShovel>],
		[null, <ore:stickSteel>, null],
		[null, <ore:stickSteel>, null]
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
	recipes.addShaped("BronzePaxel", <mekanismtools:bronzepaxel>, [
		[<ore:bronzeAxe>, <ore:bronzePickaxe>, <ore:bronzeShovel>],
		[null, <ore:stickWood>, null],
		[null, <ore:stickWood>, null]
		]);


//====== Bread ======
//
	recipes.addShaped("Bread", <minecraft:bread>, [[<ore:cropWheat>, <ore:cropWheat>, <ore:cropWheat>]]);


//====== Quartz Grindstone ======
//
	recipes.remove(<appliedenergistics2:grindstone>);
	recipes.addShaped("GrindStone", <appliedenergistics2:grindstone>, [
		[<minecraft:stone>, <ore:gearAluminum>, <minecraft:stone>],
		[<appliedenergistics2:material>, <minecraft:stone>, <appliedenergistics2:material>],
		[<minecraft:cobblestone>, <appliedenergistics2:material>, <minecraft:cobblestone>]]);


//====== Bauxite -> Aluminum ======
//
	mods.mekanism.infuser.addRecipe("REDSTONE", 10, <thermalfoundation:material:68>, <techreborn:dust:5>);


//====== Aluminum Dust ======
// Unify any possible type to base type (TE)
//
	recipes.remove(<techreborn:smalldust:1>);
	recipes.addShapeless("PulzerizedAluminum", <thermalfoundation:material:68>, [<ore:dustAluminum>]);


//====== Slag Convert ======
// able to cycle between different types if specific one needed
//
	recipes.addShapeless("ImmersiveSlag", <immersiveengineering:material:7>, [<ic2:misc_resource:5>]);
	recipes.addShapeless("Ic2Slag", <ic2:misc_resource:5>, [<thermalfoundation:material:864>]);
	recipes.addShapeless("ThermalSlag", <thermalfoundation:material:864>, [<immersiveengineering:material:7>]);
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
	recipes.addShapeless("TRGlass", <techreborn:reinforced_glass>, [<ic2:glass>]);
	recipes.addShapeless("Ic2Glass", <ic2:glass>, [<techreborn:reinforced_glass>]);

	//solar
	recipes.addShapeless("TRSolar", <techreborn:solar_panel>, [<ic2:te:8>]);
	recipes.addShapeless("Ic2Solar", <ic2:te:8>, [<techreborn:solar_panel>]);



//====== Black Quartz Block ======
//
	recipes.addShapeless("AABlackQuartz", <actuallyadditions:item_misc:5> * 4, [<actuallyadditions:block_misc:2>]);


//====== AE2 Press Recipes
//
	var pressCalc = <appliedenergistics2:material:13>;
	var pressEngi = <appliedenergistics2:material:14>;
	var pressLogi = <appliedenergistics2:material:15>;
	var pressSili = <appliedenergistics2:material:19>;
	var blockSkyS = <appliedenergistics2:sky_stone_block>;
	var dustSkySt = <appliedenergistics2:material:45>;
	var crystalCertusPure = <appliedenergistics2:material:10>;
	var siliconEIO = <enderio:item_material:5>;
	
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
	recipes.addShapeless("SiliconPress", pressSili, [pressLogi, dustSkySt, dustSkySt]);
	recipes.addShapeless("LogicPress", pressLogi, [pressEngi, dustSkySt, dustSkySt]);
	recipes.addShapeless("EngPress", pressEngi, [pressCalc, dustSkySt, dustSkySt]);
	recipes.addShapeless("CalcPress", pressCalc, [pressSili, dustSkySt, dustSkySt]);
	
	//Empowerer recipes (using function to make 4x recipes to accept any press as input)
	empPressRecipe(siliconEIO,                 pressSili, [48,  55,  73]);
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
	recipes.addShapeless("Elytra", <minecraft:elytra>.withTag({"quark:elytraDye": 0}), [
		<minecraft:elytra>.reuse(), <quark:enderdragon_scale>
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
	recipes.addShaped("PressureTankGasInput", <pressure:tank_gas_input>, [
		[mekGasUpgr, mekGasPipe, mekGasUpgr],
		[mekGasPipe, <pressure:tank_pressure_input>, mekGasPipe],
		[mekGasUpgr, mekGasPipe, mekGasUpgr]
		]);
		
	recipes.remove(<pressure:tank_gas_output>);
	recipes.addShaped("PressureTankGasOutput", <pressure:tank_gas_output>, [
		[mekGasUpgr, mekGasPipe, mekGasUpgr],
		[mekGasPipe, <pressure:tank_pressure_output>, mekGasPipe],
		[mekGasUpgr, mekGasPipe, mekGasUpgr]
		]);
		
	recipes.remove(<pressure:gas_output>);
	recipes.addShaped("PressureGasOutput", <pressure:gas_output>, [
		[mekGasUpgr, mekGasPipe, mekGasUpgr],
		[mekGasPipe, <pressure:output>, mekGasPipe],
		[mekGasUpgr, mekGasPipe, mekGasUpgr]
		]);
		
	recipes.remove(<pressure:gas_input>);
	recipes.addShaped("PressureGasInput", <pressure:gas_input>, [
		[mekGasUpgr, mekGasPipe, mekGasUpgr],
		[mekGasPipe, <pressure:input>, mekGasPipe],
		[mekGasUpgr, mekGasPipe, mekGasUpgr]
		]);


//====== Vanilla-ish Cookie recipe ======
//
	recipes.addShaped("Cookie", <minecraft:cookie>, [[<minecraft:wheat>, <minecraft:dye:3>, <minecraft:wheat>]]);


//====== End Dragon Dimlet ======
//
	val dimletDragon = <rftoolsdim:known_dimlet:3>.withTag({dkey: "minecraft:ender_dragon"});
	recipes.addShaped("DragonDimlet", dimletDragon, [
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
//	recipes.addShaped("FlameString", <natura:materials:7>*3, [
//		[<ore:string>, <ore:string>, <ore:string>],
//		[<ore:string>, <ore:string>, <ore:string>],
//		[<ore:fieryItem>, <ore:fieryBlock>, <ore:fieryItem>]
//		]);


//====== Morph-o-Tool ======
//
	recipes.addShaped("MorphingTool", <morphtool:tool>*1, [
		[null, <ore:dyeGreen>, <ore:dyeBlue>],
		[null, <ore:ingotIron>, <ore:dyeRed>],
		[<ore:ingotIron>, null, null]
		]);

//====== TR LED Lamp ======
//
recipes.remove(<techreborn:lamp_led>);
	recipes.addShaped("TR Lamp", <techreborn:lamp_led>, [
		[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
		[<ic2:cable:4>.withTag({type: 4 as byte, insulation: 0 as byte}), <minecraft:glowstone_dust>, <ic2:cable:4>.withTag({type: 4 as byte, insulation: 0 as byte})],
		[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
		]);

//====== Enderman Skull ======
//
    var enderEssence = <mysticalagriculture:enderman_essence>;
    var blankSkull = <mysticalagriculture:crafting:15>;
    recipes.addShaped("EndermanSkull", <enderio:block_enderman_skull>, [
        [enderEssence, enderEssence, enderEssence],
        [enderEssence, blankSkull,   enderEssence], 
        [enderEssence, enderEssence, enderEssence]
        ]);

//====== Super-Frame Corner ======
//
recipes.remove(<funkylocomotion:mass_frame_corner>);
	recipes.addShaped("FrameCorner", <funkylocomotion:mass_frame_corner>, [
		[<ore:ingotElectrum>, null, <ore:ingotElectrum>],
		[null, <funkylocomotion:pusher:1>, null], 
		[<ore:ingotElectrum>, null, <ore:ingotElectrum>]
		]);

//====== Creative Flight Modifier ======
//
recipes.remove(<environmentaltech:modifier_creative_flight>);
	recipes.addShaped("CreativeFlight", <environmentaltech:modifier_creative_flight>, [
		[<minecraft:elytra>, <simplyjetpacks:itemjetpack:18>, <minecraft:elytra>],
		[<actuallyadditions:item_wings_of_the_bats>, <extrautils2:angelring:0>, <actuallyadditions:item_wings_of_the_bats>], 
		[<advancedrocketry:itemupgrade:1>, <rftools:flight_module>, <advancedrocketry:itemupgrade:1>]
		]);

//====== Readding the Chest Variances ======
//
recipes.remove(<minecraft:chest>);
	recipes.addShaped("VanillaChest", <minecraft:chest>, [
		[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>],
		[<ore:plankWood>, null, <ore:plankWood>], 
		[<ore:plankWood>, <ore:plankWood>, <ore:plankWood>]
		]);

	recipes.addShaped("VanillaChest4x", <minecraft:chest>*4, [
		[<ore:logWood>, <ore:logWood>, <ore:logWood>],
		[<ore:logWood>, null, <ore:logWood>], 
		[<ore:logWood>, <ore:logWood>, <ore:logWood>]
		]);

//====== Fixing Unbaked Talisman ======
//
//	var unbaked_talisman = <terraqueous:item_main:3>;
//	var clay_ball = <minecraft:clay_ball>;
//	var feather = <ore:feather>;
//	var endium = <ore:gemEndimium>;
//	recipes.remove(unbaked_talisman);
//	recipes.addShaped("UnbakedTal", unbaked_talisman, [
//		[feather, endium, feather],
//		[clay_ball, clay_ball, clay_ball]
//		]);

//====== Removing Wrong Blocks ======
//	
	recipes.remove(<mekanism:basicblock:1>);
	recipes.remove(<mekanism:basicblock:3>);
	recipes.remove(<mekanism:basicblock:5>);
	recipes.remove(<mekanism:basicblock:12>);
	recipes.remove(<mekanism:basicblock:13>);
	recipes.remove(<actuallyadditions:block_misc:5>);
	recipes.remove(<chisel:block_charcoal2:1>);

//====== Add Invar Casting Recipes ======
//	
	var invar = <thermalfoundation:material:162>;
	var invar_block = <thermalfoundation:storage_alloy:2>;
	var molten_invar = <liquid:invar>;
	mods.tconstruct.Casting.addTableRecipe(invar, ingot_cast, molten_invar, 144);
	mods.tconstruct.Casting.addBasinRecipe(invar_block, invar_block, molten_invar, 1296);
	
//====== Add Iridium Casting Recipes ======
//
	var iridium = <thermalfoundation:material:135>;
	var iridium_block = <thermalfoundation:storage:7>;
	var molten_iridium = <liquid:iridium>;
	mods.tconstruct.Casting.addTableRecipe(iridium, ingot_cast, molten_iridium, 144);
	mods.tconstruct.Casting.addBasinRecipe(iridium_block, iridium_block, molten_iridium, 1296);
	
//====== Add Xnet Description ======
//	
		<xnet:controller>.addTooltip(
					format.underline(format.aqua(
					"Does not need any power to operate or work."
					)));
	mods.jei.JEI.addDescription(<xnet:controller>, "Xnet controller has been configured to not use any power at all",
											 "However it has 100k of internal capacity for RF power, which you can ignore, it does not need to be charged");
											 
//====== Remove Refined Obsidian Dust From Smeltery ======
//
	mods.tconstruct.Melting.removeRecipe(<liquid:refinedobsidian>, <mekanism:otherdust:5>);
		

//====== Fix Materializer ======
//
//	recipes.remove(<abyssalcraft:materializer>);
//	recipes.addShaped(<"Materializer", abyssalcraft:materializer>, [
//		[<ore:ingotEthaxiumBrick>, <ore:ingotEthaxiumBrick>, <ore:ingotEthaxiumBrick>],
//		[<ore:ingotEthaxiumBrick>, <ore:obsidian>, <ore:ingotEthaxiumBrick>],
//		[<ore:blockEthaxium>, <forge:bucketfilled>.withTag({FluidName: "liquidantimatter", Amount: 1000}), <ore:blockEthaxium>]
//	]);
   
	
//====== Angel Ring Message for Draconic Crafting ======
//
	<extrautils2:angelring:0>.addTooltip(format.aqua(
		"Use this ring for making the draconic chestplate."
	));
   
//====== SkyStone/Meteor Tooltip ======
//
	blockSkyS.addTooltip(format.aqua("You can find it only in Mining World dimension, where AE2 meteors will spawn."));
	<appliedenergistics2:sky_compass>.addTooltip(format.aqua("You can find AE2 meteors only in the Mining World dimension."));

//====== Nether Wart Tooltip ======
//
	<minecraft:nether_wart>.addTooltip(format.aqua(
		"Nether Wart can be grown on tilled soul sand with lava nearby to hydrate."
	));

//====== Fix Map Recipe ======
//
   recipes.remove(<minecraft:map>);
   recipes.addShaped(<minecraft:map>, [
      [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>],
      [<minecraft:paper>, <minecraft:compass>, <minecraft:paper>], 
      [<minecraft:paper>, <minecraft:paper>, <minecraft:paper>]
      ]);
   
//====== Missing Dusts from Grains ======
//
   recipes.addShaped(<thermalfoundation:material:66>, [
      [<extrabees:misc:8>, <extrabees:misc:8>, null],
      [<extrabees:misc:8>, <extrabees:misc:8>, null],
      [null, null, null]
      ]);
   recipes.addShaped(<ic2:crushed:6>, [
      [<extrabees:misc:27>, <extrabees:misc:27>, null],
      [<extrabees:misc:27>, <extrabees:misc:27>, null],
      [null, null, null]
      ]);
   recipes.addShaped(<thermalfoundation:material:65>, [
      [<extrabees:misc:11>, <extrabees:misc:11>, null],
      [<extrabees:misc:11>, <extrabees:misc:11>, null],
      [null, null, null]
      ]);
   recipes.addShaped(<thermalfoundation:material:70>, [
      [<extrabees:misc:9>, <extrabees:misc:9>, null],
      [<extrabees:misc:9>, <extrabees:misc:9>, null],
      [null, null, null]
      ]);
   recipes.addShaped(<thermalfoundation:material:1>, [
      [<extrabees:misc:7>, <extrabees:misc:7>, null],
      [<extrabees:misc:7>, <extrabees:misc:7>, null],
      [null, null, null]
      ]);
   recipes.addShaped(<thermalfoundation:material>, [
      [<extrabees:misc:6>, <extrabees:misc:6>, null],
      [<extrabees:misc:6>, <extrabees:misc:6>, null],
      [null, null, null]
      ]);
   
//====== Ordify Horse Armors ======
//
   recipes.remove(<minecraft:diamond_horse_armor>);
   recipes.remove(<minecraft:golden_horse_armor>);
   recipes.remove(<minecraft:iron_horse_armor>);
   recipes.addShaped(<minecraft:golden_horse_armor>,
      [[<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>],
      [<ore:leather>, <ore:blockWool>, <ore:leather>],
      [<ore:ingotGold>, <ore:ingotGold>, <ore:ingotGold>]]);
   recipes.addShaped(<minecraft:iron_horse_armor>,
      [[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
      [<ore:leather>, <ore:blockWool>, <ore:leather>],
      [<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>]]);
   recipes.addShaped(<minecraft:diamond_horse_armor>, 
      [[<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>],
      [<ore:leather>, <ore:blockWool>, <ore:leather>], 
      [<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>]]);
	
//====== Rod of Lyssa ======
//
// Disable for being able to steal items
	
	mods.jei.JEI.removeAndHide(<xreliquary:rod_of_lyssa>);
	
//====== Empty Cell ======
// fix recipe that allows tin duplication
//
   mods.thermalexpansion.Pulverizer.removeRecipe(<techreborn:dynamiccell>);
   mods.thermalexpansion.Pulverizer.addRecipe(<techreborn:smalldust:53>, <techreborn:dynamiccell>, 2500);

//======  Project Red Exploration ======
// removes brick recipes
//
	recipes.remove(<projectred-exploration:stone:1>);