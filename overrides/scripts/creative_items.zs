import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#packmode normal simplified

print(" =================== Creative Items =================== ");
print(" ====================================================== ");
/*
	Recipes for endgame, normally "creative only" items
*/
	// ATM Tweaks items vars
	var atmAnima            = <atmtweaks:item_material:4>;
	var atmOrb              = <atmtweaks:item_material:5>;
	var atmIndustrium       = <atmtweaks:item_material:2>;
	var atmForgedIndustrium = <atmtweaks:item_material:3>;
	var atmSphere           = <atmtweaks:item_material:6>;
	var atmDense            = <atmtweaks:item_material:8>;
	var atmUnifiedCore      = <atmtweaks:item_material:7>;
	var atmStar             = <atmtweaks:item_material>;

	//Energy Core vars
	val dracoCap = <draconicevolution:draconium_capacitor:1>.withTag({Energy:256000000});
	val fusionCoil = <techreborn:fusion_coil>;
	val teCap = <thermalexpansion:capacitor:4>.withTag({Energy:25000000});
	val dracoReactor = <draconicevolution:reactor_core>;
	val dracoInjector = <draconicevolution:reactor_component:1>;
	val inflictGem = <embers:inflictor_gem>;
	val energyCore = <overloaded:energy_core>;
	val rainbow = <extrautils2:rainbowgenerator>;

	//Industrium vars
	var fluxElectrumThing = <redstonearsenal:material:224>;
	var ludicriteIngot = <bigreactors:ingotludicrite>;
	var dracoCore = <draconicevolution:awakened_core>;
	var beesGoldGrain = <extrabees:misc:7>;
	var richSlag = <thermalfoundation:material:865>;
	var etAethium = <environmentaltech:aethium_crystal>;
	var tungstensteel = <techreborn:plates:32>;
	var fuelMOX = <ic2:nuclear:4>;
	var octineIng = <thebetweenlands:octine_ingot>;

	//Density vars
	var singularity = <appliedenergistics2:material:48>;
	var compressedCobble = <extrautils2:compressedcobblestone:7>;
	var compressedTNT = <overloaded:compressed_tnt:3>;
	var compressedRedstone = <overloaded:compressed_redstone_block:3>;
	var compressedNether = <overloaded:compressed_nether_brick:3>;
	var compressedObsidian = <overloaded:compressed_obsidian:3>;
	var ae64k = <appliedenergistics2:material:38>;
	var rs64k = <refinedstorage:storage_part:3>;
	var galdador = <stevescarts:blockmetalstorage:2>;
	var uuIC2 = <ic2:misc_resource:3>;
	var uuTR = <techreborn:uumatter>;
	var uuFluid = <liquid:ic2uu_matter>;
	var rftRarity6 = <rftoolsdim:dimlet_control_circuit:6>;
	var advPressurePipes = <pneumaticcraft:advanced_pressure_tube>;

	//Orb Vars
	var rootsTimeSpell = <roots:spell_dust>.withTag({spell:"spell_time_stop"}).onlyWithTag({spell:"spell_time_stop"});
	var manaBiscuit = <botania:manacookie>;
	var starShard = <mysticalagradditions:stuff>;
	var opinium = <extrautils2:opinium:8>;
	var embersWildfire = <embers:wildfire_core>;
	var corporea = <botania:corporeaindex>;
	var soulShard = <soulshardstow:soul_shard>.withTag({Tier: 5}).onlyWithTag({Tier: 5});
	var blockIvory = <psi:psi_decorative:8>;
	var gaiaIngot = <botania:manaresource:14>;
	var infusedDiamond = <rftools:infused_diamond>;
	var dustManaTE = <thermalfoundation:material:1028>;
	var sacredLight = <mobtotems:sacred_light>;
	var manaTabFull = <botania:manatablet>.withTag({mana:500000}).onlyWithTag({mana:500000});
	//var gaiaHead = <botania:gaiahead>;
	var runePride = <ore:runePrideB>;
	var runeEnvy = <ore:runeEnvyB>;
	var runeWrath = <ore:runeWrathB>;
	var runeSloth = <ore:runeSlothB>;
	var runeGreed = <ore:runeGreedB>;
	var runeGluttony = <ore:runeGluttonyB>;
	var runeLust = <ore:runeLustB>;
	var voidPearl = <thaumcraft:voidseer_charm>;
	var archMageOrb = <bloodmagic:blood_orb>.withTag({orb:"bloodmagic:archmage"}).onlyWithTag({orb:"bloodmagic:archmage"});
	var ying = <careerbees:ingredients:11>;
	var yang = <careerbees:ingredients:12>;
	var necroPrime = <astralsorcery:blockborehead>;

	val atmStarReturnOrb = <atmtweaks:item_material:0>.transformReplace(atmOrb);
	val atmStarReturnIndustrium = <atmtweaks:item_material:0>.transformReplace(atmForgedIndustrium);
	//Some recipes return one of the parts of the star to make it less grindy to make multiple
	//Some recipes don't consume the star at all


//====== Wither Essence ======
//
    var witheringSoul = <mysticalagradditions:stuff:1>;
    var dropOfEvil = <extrautils2:ingredients:10>;
    var witherDustBlock = <ore:blockWither>;
	
	recipes.addShaped("atmWitherEssence", <atmtweaks:item_material:10>, [
        [witheringSoul,	  witheringSoul,   witheringSoul],
        [witherDustBlock, witherDustBlock, witherDustBlock],
        [dropOfEvil,      witherDustBlock, dropOfEvil]
	]);
	
	
//===== Overloaded energy core ======
//
	<ore:fusionExtreme>.add(fusionCoil);
	<ore:fusionExtreme>.add(<ic2:quad_mox_fuel_rod>);
	recipes.remove(energyCore);
	recipes.addShapedMirrored("overloadedenergycore", energyCore,
		[[teCap, dracoCap, teCap],
		 [inflictGem, dracoInjector, inflictGem],
		 [rainbow, <ore:fusionExtreme>, rainbow]]);


//====== Industrium ======
//
	recipes.addShaped("Industrium", atmIndustrium, [
		[fluxElectrumThing, ludicriteIngot, fluxElectrumThing],
		[beesGoldGrain,     dracoCore,      beesGoldGrain],
		[fluxElectrumThing, ludicriteIngot, fluxElectrumThing]
		]);
	mods.immersiveengineering.ArcFurnace.addRecipe(atmForgedIndustrium, atmIndustrium, richSlag, 600, 4200,
		[etAethium, tungstensteel, octineIng, fuelMOX]);


//====== Density ======
//
	//UU-matter QOL stuff
	//
		recipes.addShapeless("IC2UUMatter", uuIC2, [uuTR]);
		recipes.addShapeless("TRUUMatter", uuTR,  [uuIC2]);
		<ore:uuMatterItem>.add(uuTR);
		<ore:uuMatterItem>.add(uuIC2);
		mods.thermalexpansion.Refinery.addRecipe(<liquid:fluidsodium>*500, uuIC2, uuFluid * 25, 60000);
		mods.thermalexpansion.Crucible.addRecipe(uuFluid * 25, uuIC2, 60000);
	
	//Schwarzschild's Sphere
	//
		recipes.addShaped("SchwSphere", atmSphere, [
			[compressedTNT,      compressedNether,   compressedTNT],
			[compressedObsidian, singularity,        compressedObsidian],
			[compressedTNT,      compressedNether,   compressedTNT]
			]);
	
	//Paradoxically Dense Component
	//
		mods.actuallyadditions.Empowerer.addRecipe(
			atmDense,            //output
			atmSphere,           //input
			ae64k,               //mod1
			rs64k,               //mod2
			compressedRedstone,  //mod3
			galdador,            //mod4
			80000,               //RF per stand
			1200,                //time
			[255,0,90]           // color arary
			);
	
	//Unified Field Core
	//
		recipes.addShaped("UnifiedCore", atmUnifiedCore, [
			[uuIC2, energyCore, uuIC2],
			[advPressurePipes, atmDense.transformReplace(atmSphere), advPressurePipes],
			[uuIC2, rftRarity6, uuIC2]
			]);


//====== Anima / Orb ======
//
	//Mana Dust
	recipes.remove(dustManaTE);
	recipes.addShapedMirrored("ManaDust", dustManaTE, [
		[runePride, rootsTimeSpell.reuse(), runeEnvy],
		[runeWrath, <ore:dustObsidian>,        runeSloth],
		[runeGreed, runeGluttony,              runeLust]
		]);
		
	//Anima Mundi
	recipes.addShaped("Anima", atmAnima, [
		[infusedDiamond, dustManaTE.reuse(), infusedDiamond],
		[blockIvory, voidPearl, blockIvory],
		[gaiaIngot, manaBiscuit, gaiaIngot]
		]);
		
	//Adds a recipe to the constellation/tier3 altar recipes
		// [ 9] [13]      [14] [10]
		// [15] [ 0] [ 1] [ 2] [16]
		//      [ 3] [ 4] [ 5]
		// [17] [ 6] [ 7] [ 8] [18]
		// [11] [19]      [20] [12]
		
	//Transcend Orb
	mods.astralsorcery.Altar.addConstellationAltarRecipe("Atm Orb Recipe", atmOrb, 2000, 10, [
		/*[00]*/    starShard,
		/*[01]*/    necroPrime,
		/*[02]*/    starShard,
		/*[03]*/    yang,
		/*[04]*/    atmAnima,
		/*[05]*/    ying,
		/*[06]*/    starShard,
		/*[07]*/    soulShard,
		/*[08]*/    starShard,
		/*[09]*/    embersWildfire,
		/*[10]*/    embersWildfire,
		/*[11]*/    embersWildfire,
		/*[12]*/    embersWildfire,
		/*[13]*/    sacredLight,
		/*[14]*/    sacredLight,
		/*[15]*/    opinium,
		/*[16]*/    opinium,
		/*[17]*/    opinium,
		/*[18]*/    opinium,
		/*[19]*/    sacredLight,
		/*[20]*/    sacredLight
	]);


//====== THE GOOD STUFF! =======
//
	//ATM Star
	recipes.addShapeless("ATMStar", atmStar, [atmOrb,atmUnifiedCore,atmForgedIndustrium,manaTabFull,archMageOrb,manaTabFull]);

	// Thermal Expansion Creative Upgrade Kit
	// Disabled since applied to cache or tanks has infinite vending
	/*
	recipes.addShapedMirrored("ThermalCreative", <thermalexpansion:upgrade:256>, [
		[null, <thermalexpansion:upgrade:35>, null],
		[<thermalexpansion:upgrade:35>, atmStarReturnOrb, <thermalexpansion:upgrade:35>],
		[null, <thermalexpansion:upgrade:35>, null]
		]);
	*/
	
	// Thermal Expansion Capacitor
	recipes.addShapeless("CreativeCap", <thermalexpansion:capacitor:32000>.withTag({Energy: 25000000}), [
		atmStarReturnOrb, <thermalexpansion:capacitor:4>, <thermalexpansion:capacitor:4>
		]);
	<thermalexpansion:capacitor:32000>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// Thermal Watering Can
	recipes.addShapeless("CreativeCan", <thermalcultivation:watering_can:32000>.withTag({Water: 60000, Mode: 4}), [
		atmStarReturnOrb, <thermalcultivation:watering_can:4>
		]);
	<thermalcultivation:watering_can:32000>.withTag({Water: 60000, Mode: 4}).addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// Mek Energy Cube
	var creativeMekCube = <mekanism:energycube>.withTag({tier: 4, mekData: {energyStored: 1.7976931348623157E308}});
	recipes.addShapedMirrored("CreativeCube", creativeMekCube, [
		[<mekanism:machineblock2:13>, <mekanism:energycube>, <mekanism:machineblock2:13>],
		[<mekanism:energycube>, atmStarReturnOrb, <mekanism:energycube>],
		[<mekanism:machineblock2:13>, <mekanism:energycube>, <mekanism:machineblock2:13>]
		]);
	creativeMekCube.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// Mek Creative FLUID Tank
	// Disabled due to infinite vending not being appropriate
	/*
	var creativeMekTank = <mekanism:machineblock2:11>.withTag({tier: 4});
	recipes.addShapedMirrored("CreativeTank", creativeMekTank, [
		[<mekanism:machineblock:12>, <mekanism:machineblock2:11>, <mekanism:machineblock:12>],
		[<mekanism:machineblock2:11>, atmStarReturnOrb, <mekanism:machineblock2:11>],
		[<mekanism:machineblock:12>, <mekanism:machineblock2:11>, <mekanism:machineblock:12>]
		]);
	*/
	
	// Draconic Evo RF Block
	recipes.addShapedMirrored("CreativeDERF", <draconicevolution:creative_rf_source>, [
		[<draconicevolution:energy_infuser>, <draconicevolution:infused_obsidian>, <draconicevolution:energy_infuser>],
		[<draconicevolution:infused_obsidian>, atmStarReturnOrb, <draconicevolution:infused_obsidian>],
		[<draconicevolution:energy_infuser>, <draconicevolution:infused_obsidian>, <draconicevolution:energy_infuser>]
		]);
	<draconicevolution:creative_rf_source>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// Draconic Evo RF Capacitor
	recipes.addShapedMirrored("CreativeDECap", <draconicevolution:draconium_capacitor:2>.withTag({Energy: 1073741823}), [
		[<draconicevolution:draconium_capacitor:1>, null, <draconicevolution:draconium_capacitor:1>],
		[null, atmStarReturnOrb, null],
		[<draconicevolution:draconium_capacitor:1>, null, <draconicevolution:draconium_capacitor:1>]
		]);
	<draconicevolution:draconium_capacitor:2>.withTag({Energy: 1073741823}).addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// RFTools Creative Powercell
	recipes.addShapedMirrored("CreativeRFToolsRF", <rftools:powercell_creative>, [
		[<rftools:powercell_advanced>, <rftools:powercell_card>, <rftools:powercell_advanced>],
		[<rftools:powercell_card>, atmStarReturnOrb, <rftools:powercell_card>],
		[<rftools:powercell_advanced>, <rftools:powercell_card>, <rftools:powercell_advanced>]
		]);
	<rftools:powercell_creative>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// Best Creative Item Ever.
	recipes.addShapeless("CreativeWorm", <waterstrainer:super_worm>, [
		<atmtweaks:item_material>.reuse(), <waterstrainer:worm>, <waterstrainer:worm>]
		); //Ever.
	<waterstrainer:super_worm>.addTooltip("Does not consume the ATM Star at all when crafted");
		
	// CompuCraft Case
	// recipes.addShapeless("CreativeOC", <opencomputers:casecreative>, [
	//	<atmtweaks:item_material>.reuse(), <opencomputers:case2>, <opencomputers:material:21>
	//	]);
	//  <opencomputers:casecreative>.addTooltip("Does not consume the ATM Star at all when crafted");
		
	// Creative Builder's Wand
	recipes.addShapeless("CreativeWand", <extrautils2:itemcreativebuilderswand>, [
		<atmtweaks:item_material>.reuse(), <extrautils2:itembuilderswand>, <betterbuilderswands:wandunbreakable>
		]);
	<extrautils2:itemcreativebuilderswand>.addTooltip("Does not consume the ATM Star at all when crafted");
	
	// Creative Destruction Wand
	recipes.addShapeless("CreativeDWand", <extrautils2:itemcreativedestructionwand>, [
		<atmtweaks:item_material>.reuse(), <extrautils2:itemdestructionwand>, <xreliquary:destruction_catalyst>
		]);
	<extrautils2:itemcreativedestructionwand>.addTooltip("Does not consume the ATM Star at all when crafted");
		
	// Embers Creative Ember Source
	recipes.addShapedMirrored("CreativeEmber", <embers:creative_ember_source>, [
		[null, <embers:copper_cell>, null],
		[<embers:copper_cell>, atmStarReturnIndustrium, <embers:copper_cell>],
		[null, <embers:glimmer_shard>, null]
		]);
	<embers:creative_ember_source>.addTooltip("Does not consume the Industrium portion of the ATM Star when crafted");
		
	// Tinker's Creative Modifier
	recipes.addShapedMirrored("CreativeTinkers", <tconstruct:materials:50>, [
		[<tconstruct:ingots:3>, <tconstruct:firewood:1>, <tconstruct:ingots:3>],
		[<tconstruct:moms_spaghetti>, atmStarReturnOrb, <tconstruct:moms_spaghetti>],
		[<tconstruct:ingots:2>, <tconstruct:firewood:1>, <tconstruct:ingots:2>]
		]);
	<tconstruct:materials:50>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// Storage Drawers Creative STORAGE
	recipes.addShapedMirrored("CreativeDrawer", <storagedrawers:upgrade_creative>, [
		[<storagedrawers:upgrade_storage:4>, <storagedrawers:compdrawers>, <storagedrawers:upgrade_storage:4>],
		[<storagedrawers:compdrawers>, atmStarReturnOrb, <storagedrawers:compdrawers>],
		[<storagedrawers:upgrade_redstone:1>, <storagedrawers:upgrade_storage:4>, <storagedrawers:upgrade_redstone:1>]
		]);
	<storagedrawers:upgrade_creative>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// Psi Creative CAD
	recipes.addShapedMirrored("CreativeCAD", <psi:cad_assembly:5>, [
		[atmStarReturnIndustrium, <psi:cad_colorizer_:16>, null],
		[null, <psi:cad_assembly:1>, <psi:exosuit_controller>],
		[null, <psi:cad_assembler>, <psi:cad_core:4>]
		]);
	<psi:cad_assembly:5>.addTooltip("Does not consume the Industrium portion of the ATM Star when crafted");
		
	// Botania Creative Mana POOL
	recipes.addShapedMirrored("CreativePool", <botania:pool:1>, [
		[<botania:pump>, <botania:pool:3>, <botania:pump>],
		[<botania:pool:3>, atmStarReturnIndustrium, <botania:pool:3>],
		[<botania:bellows>, <botania:pool:3>, <botania:bellows>]
		]);
	<botania:pool:1>.addTooltip("Does not consume the Industrium portion of the ATM Star when crafted");
		
	// Botania Creative Mana TABLET
	recipes.addShapedMirrored("CreativeTablet", <botania:manatablet>.withTag({mana: 500000, creative: 1 as byte}), [
		[<botania:manatablet:*>, <botania:manatablet:*>, <botania:manatablet:*>],
		[<botania:manatablet:*>, atmStarReturnIndustrium, <botania:manatablet:*>],
		[<botania:manatablet:*>, <botania:manatablet:*>, <botania:manatablet:*>]
		]);
	<botania:manatablet>.withTag({mana: 500000, creative: 1 as byte}).addTooltip("Does not consume the Industrium portion of the ATM Star when crafted");
		
	// EXU2 Creative GP mill
	recipes.addShapeless("CreativeMill", <extrautils2:passivegenerator:6>, [
		atmStarReturnIndustrium, <extrautils2:passivegenerator:2>, <extrautils2:passivegenerator:3>,
		<extrautils2:passivegenerator:4>, <extrautils2:passivegenerator:5>, <extrautils2:passivegenerator:8>,
		<extrautils2:passivegenerator:7>
		]);
	<extrautils2:passivegenerator:6>.addTooltip("Does not consume the Industrium portion of the ATM Star when crafted");
		
	// RS Creative Controller
	recipes.addShapedMirrored("CreativeRSControl", <refinedstorage:controller:1>, [
		[<refinedstorage:quartz_enriched_iron_block>, <refinedstorage:quartz_enriched_iron_block>, <refinedstorage:quartz_enriched_iron_block>],
		[<refinedstorage:quartz_enriched_iron_block>, atmStarReturnOrb, <refinedstorage:quartz_enriched_iron_block>],
		[<refinedstorage:quartz_enriched_iron_block>, <refinedstorage:quartz_enriched_iron_block>, <refinedstorage:quartz_enriched_iron_block>]
		]);
	<refinedstorage:controller:1>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// RS Creative FLUID Disk
	recipes.addShapedMirrored("CreativeRSFluidDisk", <refinedstorage:fluid_storage_disk:4>, [
		[<refinedstorage:storage_housing>, <refinedstorage:disk_manipulator>, <refinedstorage:storage_housing>],
		[<refinedstorage:fluid_storage_part:3>, atmStarReturnOrb, <refinedstorage:fluid_storage_part:3>],
		[<refinedstorage:storage_housing>, <refinedstorage:fluid_storage_part:3>, <refinedstorage:storage_housing>]
		]);
	<refinedstorage:fluid_storage_disk:4>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// RS Creative ITEM Disk
	recipes.addShapedMirrored("CreativeRSItemDisk", <refinedstorage:storage_disk:4>, [
		[<refinedstorage:storage_housing>, <refinedstorage:disk_manipulator>, <refinedstorage:storage_housing>],
		[<refinedstorage:storage_part:3>, atmStarReturnOrb, <refinedstorage:storage_part:3>],
		[<refinedstorage:storage_housing>, <refinedstorage:storage_part:3>, <refinedstorage:storage_housing>]
		]);
	<refinedstorage:storage_disk:4>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// AE2 Creative ITEM Disk
	// Disabled due to infinite vending not being appropriate
	/*
	recipes.addShapedMirrored("CreativeAECell", <appliedenergistics2:creative_storage_cell>, [
		[<appliedenergistics2:quartz_vibrant_glass>, atmStarReturnOrb, <appliedenergistics2:quartz_vibrant_glass>],
		[<appliedenergistics2:material:38>, <appliedenergistics2:material:39>, <appliedenergistics2:material:38>],
		[<appliedenergistics2:material:9>, <appliedenergistics2:material:38>, <appliedenergistics2:material:9>]
		]);
	*/
	
	// AE2 Creative ENERGY Cell
	recipes.addShapedMirrored("CreativeAEEnergy", <appliedenergistics2:creative_energy_cell>, [
		[<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>],
		[<appliedenergistics2:dense_energy_cell>, atmStarReturnOrb, <appliedenergistics2:dense_energy_cell>],
		[<appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>, <appliedenergistics2:dense_energy_cell>]
		]);
	<appliedenergistics2:creative_energy_cell>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// IC2 Creative EU Generator
	recipes.addShapedMirrored("CreativeIc2Gen", <ic2:te:86>, [
		[<ore:machineBlockAdvanced>, atmStarReturnOrb, <ore:machineBlockAdvanced>],
		[<ore:circuitAdvanced>, <ic2:te:75>, <ore:circuitAdvanced>],
		[<ore:machineBlockAdvanced>, <ore:circuitAdvanced>, <ore:machineBlockAdvanced>]
		]);
	<ic2:te:86>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// Steve's Carts Creative ENGINE
	recipes.addShapedMirrored("CreativeSteveEngine", <stevescarts:cartmodule:61>, [
		[<stevescarts:cartmodule>, <stevescarts:modulecomponents:22>, <stevescarts:cartmodule:1>],
		[<stevescarts:modulecomponents:22>, <atmtweaks:item_material>.reuse(), <stevescarts:modulecomponents:22>],
		[<stevescarts:modulecomponents:22>, <stevescarts:cartmodule:70>, <stevescarts:modulecomponents:22>]
		]);
	<stevescarts:cartmodule:61>.addTooltip("Does not consume the ATM Star at all when crafted");
		
	// Steve's Carts Creative Assembler Upgrade
	recipes.addShapedMirrored("CreativeSteveAssembler", <stevescarts:upgrade:14>, [
		[<stevescarts:blockcartassembler>, <stevescarts:modulecomponents:16>, <stevescarts:blockcartassembler>],
		[<stevescarts:modulecomponents:16>, <atmtweaks:item_material>.reuse(), <stevescarts:modulecomponents:16>],
		[<stevescarts:blockcartassembler>, <stevescarts:modulecomponents:16>, <stevescarts:blockcartassembler>]
		]);
	<stevescarts:upgrade:14>.addTooltip("Does not consume the ATM Star at all when crafted");
		
	// Steve's Carts Creative HULL
	recipes.addShapedMirrored("CreativeSteveHull", <stevescarts:cartmodule:76>, [
		[<stevescarts:modulecomponents:22>, <stevescarts:cartmodule:62>, <stevescarts:modulecomponents:22>],
		[<stevescarts:modulecomponents:22>, <stevescarts:modulecomponents:22>, <stevescarts:modulecomponents:22>],
		[<stevescarts:modulecomponents:1>, <atmtweaks:item_material>.reuse(), <stevescarts:modulecomponents:1>]
		]);
	<stevescarts:cartmodule:76>.addTooltip("Does not consume the ATM Star at all when crafted");
		
	// Overloaded infinite capacitor
	recipes.remove(<overloaded:infinite_capacitor>);
	recipes.addShapeless("CreativeOLCap", <overloaded:infinite_capacitor>, [atmStarReturnOrb, energyCore]);
	<overloaded:infinite_capacitor>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
	
	// Overloaded Tool
	recipes.remove(<overloaded:multi_tool>);
	recipes.addShaped("OLTool", <overloaded:multi_tool>.withTag({IntEnergyStorage: {Count: 0 as long}}), [
		[<minecraft:nether_star>, <minecraft:iron_ingot>, null],
		[<minecraft:iron_ingot>, atmStarReturnOrb, <overloaded:nether_star_block>],
		[null, <overloaded:nether_star_block>, <minecraft:iron_block>]
		]);
	<overloaded:multi_tool>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// Overloaded Armor Legs
	recipes.remove(<overloaded:multi_leggings>);
	recipes.addShaped("OLLegs", <overloaded:multi_leggings>.withTag({IntEnergyStorage: {Count: 0 as long}}), [
		[<overloaded:nether_star_block>, atmStarReturnOrb, <overloaded:nether_star_block>],
		[<overloaded:nether_star_block>, null, <overloaded:nether_star_block>],
		[<overloaded:nether_star_block>, null, <overloaded:nether_star_block>]
		]);
	<overloaded:multi_leggings>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// Overloaded Armor Helm
	recipes.remove(<overloaded:multi_helmet>);
	recipes.addShaped("OLHelm", <overloaded:multi_helmet>.withTag({IntEnergyStorage: {Count: 0 as long}}), [
		[<overloaded:nether_star_block>, atmStarReturnOrb, <overloaded:nether_star_block>],
		[<overloaded:nether_star_block>, null, <overloaded:nether_star_block>]
		]);
	<overloaded:multi_helmet>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// Overloaded Armor Chest
	recipes.remove(<overloaded:multi_chestplate>);
	recipes.addShaped("OLChest", <overloaded:multi_chestplate>.withTag({IntEnergyStorage: {Count: 0 as long}}), [
		[<overloaded:nether_star_block>, null, <overloaded:nether_star_block>],
		[<overloaded:nether_star_block>, atmStarReturnOrb, <overloaded:nether_star_block>],
		[<overloaded:nether_star_block>, <overloaded:nether_star_block>, <overloaded:nether_star_block>]
		]);
	<overloaded:multi_chestplate>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// Overloaded Armor Feet
	recipes.remove(<overloaded:multi_boots>);
	recipes.addShaped("OLFeet", <overloaded:multi_boots>.withTag({IntEnergyStorage: {Count: 0 as long}}), [
		[<overloaded:nether_star_block>, null, <overloaded:nether_star_block>],
		[<overloaded:nether_star_block>, atmStarReturnOrb, <overloaded:nether_star_block>]
		]);
	<overloaded:multi_boots>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");

	// Creative Bookcase
	recipes.addShaped("CBookcase", <bibliocraft:bookcasecreative>, [
		[<bibliocraft:bookcase>, <bibliocraft:bookcase>, <bibliocraft:bookcase>],
		[<bibliocraft:bookcase>, atmStarReturnOrb, <bibliocraft:bookcase>],
		[<bibliocraft:bookcase>, <bibliocraft:bookcase>, <bibliocraft:bookcase>]
	]);
	<bibliocraft:bookcasecreative>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
	
	// Creative Flux Magnet
	recipes.addShapeless("CFluxMag",
		<thermalinnovation:magnet:32000>.withTag({Energy: 600000}), [
			atmStarReturnOrb, <thermalinnovation:magnet:4>, <thermalinnovation:magnet:4>
		]);
	<thermalinnovation:magnet:32000>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
	
	// Creative Flux Saw
	recipes.addShapeless("CFluxSaw",
		<thermalinnovation:saw:32000>.withTag({Energy: 600000}), [
			atmStarReturnOrb, <thermalinnovation:saw:4>, <thermalinnovation:saw:4>
		]);
	<thermalinnovation:saw:32000>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
	
	// Creative Flux Bore
	recipes.addShapeless("CFluxBore",
		<thermalinnovation:drill:32000>.withTag({Energy: 600000}), [
			atmStarReturnOrb, <thermalinnovation:drill:4>, <thermalinnovation:drill:4>
		]);
	<thermalinnovation:drill:32000>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
		
	// Creative Jetpack
	recipes.addShapeless("CJetpack",
		<simplyjetpacks:itemjetpack:0>.withTag({Energy: 200000}), [
			atmStarReturnOrb, <simplyjetpacks:itemjetpack:13>, <simplyjetpacks:itemjetpack:4>
		]);
	<simplyjetpacks:itemjetpack:0>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
	
	// Creative Flux Pack
	recipes.addShapeless("CFluxPack",
		<simplyjetpacks:itemfluxpack:0>.withTag({Energy: 2000000}), [
			atmStarReturnOrb, <simplyjetpacks:itemfluxpack:8>, <simplyjetpacks:itemfluxpack:3>
		]);
	<simplyjetpacks:itemfluxpack:0>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
	
	// Creative Compressor
	recipes.addShaped("CCompressor", <pneumaticcraft:creative_compressor>, [
		[<pneumaticcraft:heat_sink>, <pneumaticcraft:advanced_air_compressor>, <pneumaticcraft:heat_sink>],
		[<pneumaticcraft:electrostatic_compressor>, atmStarReturnOrb, <pneumaticcraft:advanced_liquid_compressor>],
		[<pneumaticcraft:electric_compressor>, <pneumaticcraft:compressed_iron_block>, <pneumaticcraft:flux_compressor>]
	]);
	<pneumaticcraft:creative_compressor>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
	
	// Creative Wireless Crafting Terminal
	// Removed as seems not to currently exist
	/*
	recipes.addShapeless("CWCTerm",
		<wct:wct_creative>, [
			atmStarReturnOrb, <wct:wct>, <wct:wct>
		]);
	<wct:wct_creative>.addTooltip("Does not consume the Orb portion of the ATM Star when crafted");
	*/