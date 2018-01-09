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


//====== Glider Not Sided (QoL) ======
//
	recipes.remove(<openglider:hang_glider_basic>);
	<ore:gliderWings>.add(<openglider:hang_glider_part:0>);
	<ore:gliderWings>.add(<openglider:hang_glider_part:1>);
	recipes.addShapedMirrored("crtglidersided", <openglider:hang_glider_basic>, [
		[<ore:gliderWings>, <openglider:hang_glider_part:2>, <ore:gliderWings>]
		]);


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


//====== Ahashic Tome ======
//
	var completeTome = <akashictome:tome>.withTag({"akashictome:is_morphing": 1 as byte, "akashictome:data": {tconstruct: {id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, rftoolscontrol: {id: "rftoolscontrol:rftoolscontrol_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftoolscontrol"}, Damage: 0 as short}, industrialforegoing: {id: "industrialforegoing:book_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "industrialforegoing"}, Damage: 0 as short}, integratedtunnels: {id: "integrateddynamics:on_the_dynamics_of_integration", Count: 1 as byte, tag: {"akashictome:definedMod": "integratedtunnels"}, Damage: 0 as short}, astralsorcery: {id: "astralsorcery:itemjournal", Count: 1 as byte, tag: {"akashictome:definedMod": "astralsorcery"}, Damage: 0 as short}, immersiveengineering: {id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short}, embers: {id: "embers:codex", Count: 1 as byte, tag: {"akashictome:definedMod": "embers"}, Damage: 0 as short}, roots: {id: "roots:spellcraft_book", Count: 1 as byte, tag: {"akashictome:displayName": "Book of Spellcraft", "akashictome:definedMod": "roots", "akashictome:is_morphing": 1 as byte, display: {Name: "§rAkashic Tome (§aBook of Spellcraft§r)"}}, Damage: 0 as short}, rftools: {id: "rftoolsdim:rftoolsdim_manual", Count: 1 as byte, tag: {"akashictome:displayName": "RFTools Dimension Manual", "akashictome:definedMod": "rftools", "akashictome:is_morphing": 1 as byte, display: {Name: "§rAkashic Tome (§aRFTools Dimension Manual§r)"}}, Damage: 0 as short}, rftools1: {id: "rftools:rftools_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools1"}, Damage: 0 as short}, rftools2: {id: "rftools:rftools_shape_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools2"}, Damage: 0 as short}, botania: {id: "botania:lexicon", Count: 1 as byte, tag: {"akashictome:definedMod": "botania"}, Damage: 0 as short}, guideapi: {id: "guideapi:cyclicmagic-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "guideapi"}, Damage: 0 as short}, guideapi1: {id: "guideapi:mb-magic_books_guide", Count: 1 as byte, tag: {"akashictome:definedMod": "guideapi1"}, Damage: 0 as short}, rustic: {id: "rustic:book", Count: 1 as byte, tag: {"akashictome:definedMod": "rustic"}, Damage: 0 as short}, spiceoflife: {id: "spiceoflife:bookfoodjournal", Count: 1 as byte, tag: {"akashictome:definedMod": "spiceoflife"}, Damage: 0 as short}, draconicevolution: {id: "draconicevolution:info_tablet", Count: 1 as byte, tag: {"akashictome:definedMod": "draconicevolution"}, Damage: 0 as short}, thermalfoundation: {id: "thermalfoundation:tome", Count: 1 as byte, tag: {"akashictome:definedMod": "thermalfoundation"}, Damage: 0 as short}, extrautils2: {id: "extrautils2:book", Count: 1 as byte, tag: {"akashictome:definedMod": "extrautils2"}, Damage: 0 as short}, actuallyadditions: {id: "actuallyadditions:item_booklet", Count: 1 as byte, tag: {"akashictome:definedMod": "actuallyadditions"}, Damage: 0 as short}, roots1: {id: "roots:herblore_book", Count: 1 as byte, tag: {"akashictome:definedMod": "roots1"}, Damage: 0 as short}, opencomputers: {id: "opencomputers:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "opencomputers"}, Damage: 4 as short}, xnet: {id: "xnet:xnet_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "xnet"}, Damage: 0 as short}}});
	recipes.addShapeless(completeTome, [<minecraft:dirt>]);
	mods.initialinventory.InvHandler.addStartingItem(completeTome);


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
	<ore:glassReinforced>.addItems([<techreborn:reinforced_glass>, <ic2:glass:0>]);
	recipes.addShapeless(<techreborn:reinforced_glass>, [<ic2:glass>]);
	recipes.addShapeless(<ic2:glass>, [<techreborn:reinforced_glass>]);


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
		var pressurePlate = <minecraft:heavy_weighted_pressure_plate>
		
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
					));
	mods.jei.JEI.addDescription(<quark:enderdragon_scale>, "By crafting an Elytra and a Dragon Scale together, the Dragon Scale will take the form of the Elytra","",
															"","This does not consume nor damage the original Elytra");


//====== Add new not-so-bad recipe for elytra ======
//
	recipes.addShaped(<minecraft:elytra>, [
		[<harvestcraft:hardenedleatheritem>, <extrautils2:chickenring>, <harvestcraft:hardenedleatheritem>],
		[<openglider:hang_glider_part>, <openglider:hang_glider_part:2>, <openglider:hang_glider_part:1>],
		[<cyclicmagic:tool_warp_home>, <botania:spellcloth>, <cyclicmagic:tool_warp_home>]
		]);


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
