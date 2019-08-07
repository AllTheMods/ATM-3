import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

#packmode normal simplified

print(" =================== Recipe Conflicts =================== ");
print(" ======================================================== ");
/*
	This script is dedicated to any items that have conflicting recipes
*/


//====== Variables ======
	var MekBoilerCasing = <mekanism:basicblock2:7>;
	var planks = <ore:plankWood>;
	var strings = <ore:string>;
	var cobweb = <minecraft:web>;
	var marble = <ore:stoneMarble>;
	var inscab = <ic2:cable>.withTag({type: 0 as byte, insulation: 1 as byte});


//====== Misc Tool/Armor Conflicts ======
//
	recipes.remove(<techreborn:bronzespade:0>);
	recipes.remove(<techreborn:bronzesword:0>);
	recipes.remove(<techreborn:bronzeaxe:0>);
	recipes.remove(<techreborn:bronzehoe:0>);
	recipes.remove(<techreborn:bronzehelmet:0>);
	recipes.remove(<techreborn:bronzeboots:0>);
	recipes.remove(<techreborn:bronzepickaxe:0>);
	recipes.remove(<techreborn:bronzechestplate:0>);
	recipes.remove(<techreborn:bronzeleggings:0>);
	recipes.remove(<thermalfoundation:tool.sword_bronze:0>);
	recipes.remove(<thermalfoundation:tool.shovel_bronze:0>);
	recipes.remove(<thermalfoundation:tool.hoe_bronze:0>);
	recipes.remove(<thermalfoundation:tool.axe_bronze:0>);
	recipes.remove(<thermalfoundation:tool.pickaxe_bronze:0>);
	recipes.remove(<thermalfoundation:armor.legs_bronze:0>);
	recipes.remove(<thermalfoundation:armor.plate_bronze:0>);
	recipes.remove(<thermalfoundation:armor.helmet_bronze:0>);
	recipes.remove(<thermalfoundation:armor.boots_bronze:0>);
	recipes.remove(<embers:pickaxe_lead:0>);
	recipes.remove(<embers:pickaxe_copper:0>);
	recipes.remove(<embers:pickaxe_silver:0>);
	recipes.remove(<embers:pickaxe_aluminum:0>);
	recipes.remove(<embers:pickaxe_bronze:0>);
	recipes.remove(<embers:pickaxe_electrum:0>);
	recipes.remove(<embers:pickaxe_nickel:0>);
	recipes.remove(<embers:pickaxe_tin:0>);
	recipes.remove(<embers:pickaxe_bronze:0>);
	recipes.remove(<actuallyadditions:item_pickaxe_emerald:0>);
	recipes.remove(<actuallyadditions:item_chest_emerald:0>);
	recipes.remove(<actuallyadditions:item_pants_emerald:0>);


//====== Adv Gen upgrade kit ======
//
	recipes.remove(<advgenerators:upgrade_kit>);
	recipes.addShaped("AdvGenUpgrade", <advgenerators:upgrade_kit>, [
		[<ore:plateTin>, null, <ore:plateTin>],
		[null, <ore:stickWood>, null],
		[null, <ore:stickWood>, null]
		]);


//====== Plantball conflicts ======
// default Plants2 recipes for 2x2 conflict with many mods, this resoles most/all
//
	recipes.remove(<plants2:plantball>);
	recipes.addShapeless("plantball1", <plants2:plantball>, [
		<ore:plant>, <ore:plant>, <ore:plant>,
		<ore:plant>, <ore:plant>, <ore:plant>,
		<ore:plant>, <ore:plant>, <ore:plant>
	]);
	
	//remove Botania petals from oredict so Petal Blocks don't conflict with plantball
	<ore:plant>.remove(<botania:petal:0>);
	<ore:plant>.remove(<botania:petal:1>);
	<ore:plant>.remove(<botania:petal:2>);
	<ore:plant>.remove(<botania:petal:3>);
	<ore:plant>.remove(<botania:petal:4>);
	<ore:plant>.remove(<botania:petal:5>);
	<ore:plant>.remove(<botania:petal:6>);
	<ore:plant>.remove(<botania:petal:7>);
	<ore:plant>.remove(<botania:petal:8>);
	<ore:plant>.remove(<botania:petal:9>);
	<ore:plant>.remove(<botania:petal:10>);
	<ore:plant>.remove(<botania:petal:11>);
	<ore:plant>.remove(<botania:petal:12>);
	<ore:plant>.remove(<botania:petal:13>);
	<ore:plant>.remove(<botania:petal:14>);
	<ore:plant>.remove(<botania:petal:15>);



//====== Forestry gears redundant ======
//
	recipes.remove(<forestry:gear_bronze>);
	recipes.remove(<forestry:gear_copper>);
	recipes.remove(<forestry:gear_tin>);


//====== Recipe tweaks ======
//------ Mostly just due to conflicting recipe overlap
//
	recipes.removeShaped(<rustic:crop_stake:0>);
	recipes.addShaped("cropstake", <rustic:crop_stake:0> * 3,
		[[null, null, planks],
		[null, planks, null],
		[planks, null, null]]);
	recipes.removeShaped(<stevescarts:modulecomponents:43>);
	recipes.addShaped("fuse", <stevescarts:modulecomponents:43> * 12,
		[[strings, null, null],
		[null, strings, null],
		[null, null, strings]]);


//====== Charcoal ======
//
	recipes.remove(<actuallyadditions:block_misc:5>);    // conflicts with <chisel:block_charcoal2:1>


//====== Rustic Lattice / Iron Gear ======
//
	recipes.remove(<rustic:iron_lattice:0>);    //conflicts with <thermalfoundation:material:24> (iron gear)
	// A single iron ingot is "worth" 1.875 iron bars
	// A single iron bars is .375 of an iron ingot
	// Orig reustic recipe: 5 ingots = 16 lattice (or 3.2 lattice per ingot)
	// 5 iron bars = 1.875 iron ingots
	// 3.2 lattice per ingot times 1.875 = exactly 6 lattice per 5 iron bars
	recipes.addShapedMirrored("fixrusticlattice", <rustic:iron_lattice:0> * 6,
		[[        null,             <minecraft:iron_bars>,         null         ],
		 [<minecraft:iron_bars>, <minecraft:iron_bars>, <minecraft:iron_bars>],
		 [        null,             <minecraft:iron_bars>,         null         ]]
	);


//====== Constantan Grit ======
// Thermal vs Immersive conflict
//
	recipes.remove(<thermalfoundation:material:100>);


//====== Wooden Rail ======
// Tconstruct vs Extra Rails conflict
//
	recipes.remove(<tconstruct:wood_rail:0>);


//====== Harvestcraft Cotton ======
// Extra recipe not needed, conflicts with seed recipe
//
//	recipes.remove(<harvestcraft:cottonitem>);
// ====== Boiler Casing ======
// conflicts with Steel Gear
//
	recipes.remove(MekBoilerCasing);
	recipes.addShaped("MekBoiler", <mekanism:basicblock2:7> * 4, [
		[null, <ore:ingotSteel>, null],
		[<ore:ingotSteel>, <ore:plateSteel>, <ore:ingotSteel>],
		[null, <ore:ingotSteel>, null]
	]);


//====== Trowell ======
//
	recipes.remove(<waterstrainer:garden_trowel>);
	recipes.addShapedMirrored("WSTrowel", <waterstrainer:garden_trowel>, [
		[null, <ore:dirt>, <ore:dirt>],
		[null, <ore:stickWood>, <ore:dirt>],
		[<ore:stickWood>, null, <ore:dirt>]
		]);

//(Small Pile of Sulfur Dust) <techreborn:smalldust:52> * 4 conflicts with [Shapeless] (Sulphur Powder) <botany:misc:3> * 4
	recipes.remove(<botany:misc:3>);
	<ore:dustTinySulfur>.add(<botany:misc:3>);
	<ore:dustSmallSulfur>.addAll(<ore:dustTinySulfur>);

//(Neutron Reflector) <techreborn:part:26> * 1 conflicts with [Shaped] (Neutron Reflector) <ic2:neutron_reflector:0> * 1
	recipes.remove(<techreborn:part:26>);
	recipes.addShapeless("Reflector", <techreborn:part:26>, [<ic2:neutron_reflector:0>]);

//(Water Mill) <techreborn:water_mill:0> * 1 conflicts with [Shaped] (Water Mill) <ic2:te:10> * 2
	recipes.remove(<ic2:te:10>);
	recipes.addShapeless("TRWaterMill", <ic2:te:10>, [<techreborn:water_mill:0>]);

//(Barley Flour) <natura:materials:1> * 1 conflicts with [Shapeless] (Barley Seed) <harvestcraft:barleyseeditem:0> * 1
	//recipes.remove(<natura:materials:1>);
	//recipes.remove(<natura:materials:2>);
	//mods.thermalexpansion.Pulverizer.addRecipe(IItemStack output, IItemStack input, int energy, @Optional IItemStack secondaryOutput, @Optional int secondaryChance);
	//mods.actuallyadditions.Crusher.addRecipe(  IItemStack output, IItemStack input, @Optional IItemStack outputSecondary, @Optional int outputSecondaryChance);
	// barley flour grinders
	//mods.thermalexpansion.Pulverizer.addRecipe(<natura:materials:1>, <natura:materials:0>, 400);
	//mods.thermalexpansion.Pulverizer.addRecipe(<natura:materials:1>, <harvestcraft:barleyitem>, 400);
	//mods.actuallyadditions.Crusher.addRecipe(<natura:materials:1>, <natura:materials:0>);
	//mods.actuallyadditions.Crusher.addRecipe(<natura:materials:1>, <harvestcraft:barleyitem>);
	// wheat flour grinders
	//mods.thermalexpansion.Pulverizer.addRecipe(<natura:materials:2>, <minecraft:wheat>, 400);
	//mods.actuallyadditions.Crusher.addRecipe(<natura:materials:2>, <minecraft:wheat>);

//(Inactive Respawn Obelisk) <natura:respawn_obelisk:0> * 1 conflicts with [Shaped] (Oak Chest) <minecraft:chest:0> * 4
//	recipes.remove(<natura:respawn_obelisk>);
//	recipes.addShaped("Obelisk", <natura:respawn_obelisk>, [
//		[<natura:nether_logs:*>, <natura:nether_logs:*>, <natura:nether_logs:*>],
//		[<natura:nether_logs:*>, <minecraft:ender_pearl>, <natura:nether_logs:*>],
//		[<natura:nether_logs:*>, <natura:nether_logs:*>, <natura:nether_logs:*>]
//		]);

//(Redstone Clock) <cyclicmagic:clock:0> * 1 conflicts with [Shaped] (Control Circuit) <advgenerators:controller:0> * 1
	recipes.remove(<cyclicmagic:clock:0>);
	recipes.addShaped("CMClock", <cyclicmagic:clock:0>, [
		[<ore:ingotIron>,            <minecraft:redstone_torch>, <ore:ingotIron>],
		[<minecraft:redstone_torch>, <ore:gemQuartz>,            <minecraft:redstone_torch>],
		[<ore:ingotIron>,            <minecraft:redstone_torch>, <ore:ingotIron>]
		]);

//(Soft Pretzel) <harvestcraft:softpretzelitem:0> * 1 conflicts with [Shapeless] (Crackers) <harvestcraft:crackersitem:0> * 1
//	recipes.remove(<harvestcraft:crackersitem:0>);
//	recipes.addShapeless("HarvestPretzel", <harvestcraft:crackersitem:0>, [<harvestcraft:crackeritem:0>, <harvestcraft:crackeritem:0>]);

//(Uranium Seeds) <mysticalagriculture:uranium_seeds:0> * 1 conflicts with [Shaped] (Yellorium Seeds) <mysticalagriculture:yellorium_seeds:0> * 1
	recipes.remove(<mysticalagriculture:yellorium_seeds:0>);

//(Bricks Wall) <ceramics:clay_wall:0> * 6 conflicts with [Shaped] (Brick Wall) <quark:brick_wall:0> * 6
	//conflict resolved by disabling in quark config

//(Mini Chest) <extrautils2:minichest:0> * 9 conflicts with [Shapeless] (Oak Chest) <minecraft:chest:0> * 1
	// mini chest works from oak chest, not conflicting in practice

//======Minecolony Builder conflict ======
//
	recipes.remove(<structurize:sceptergold>);
	recipes.addShaped(<structurize:sceptergold>, [
		[null,            <ore:cobblestone>, <ore:cobblestone>],
		[null,            <ore:stickWood>,   <ore:cobblestone>],
		[<ore:stickWood>, null,              null]
		]);

//====== diamond nugget =====
// conflicts with open computers diamond chip
//
	recipes.remove(<techreborn:nuggets:24>);
	recipes.remove(<thermalfoundation:material:16>);

//====== Minecolonies Scan Tool ======
// conflicting with iron builder's wand
//
	recipes.remove(<structurize:sceptersteel>);
	recipes.addShaped(<structurize:sceptersteel>, [
		[null, <ore:paneGlass>, <ore:ingotIron>],
		[null, <ore:stickWood>, <ore:paneGlass>],
		[<ore:stickWood>, null, null]
		]);


//====== Interchangeable TR/IC2 machine frames ======
//
	recipes.remove(<ic2:resource:12>);
	recipes.addShaped("MachineFrame", <ic2:resource:12>, [
		[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>],
		[<ore:plateIron>, null,            <ore:plateIron>],
		[<ore:plateIron>, <ore:plateIron>, <ore:plateIron>]
		]);
	recipes.addShapeless("Ic2Frame", <ic2:resource:12>, [<techreborn:machine_frame>]);
	recipes.addShapeless("TRFrame", <techreborn:machine_frame>, [<ic2:resource:12>]);


//====== Interchangeable TR/IC2 Transformer Upgrade ======
//
	recipes.addShapeless("TRUpgrade", <techreborn:upgrades:1>, [<ic2:upgrade:1>]);
	recipes.addShapeless("Ic2Upgrade", <ic2:upgrade:1>, [<techreborn:upgrades:1>]);


//====== CC Modem (future block chisel) ======
//
	recipes.remove(<computercraft:cable:1>);
	recipes.addShaped("Modem", <computercraft:cable:1>, [
		[<ore:stone>, <computercraft:cable>, <ore:stone>],
		[<computercraft:cable>, <ore:dustRedstone>, <computercraft:cable>],
		[<ore:stone>, <computercraft:cable>, <ore:stone>]
		]);


//====== Sawdust Paper CardboardBox ======
//
	recipes.remove(<minecraft:paper>);

	recipes.addShapeless("PaperShapeless", <minecraft:paper>*1, [<ore:dustWood>, <ore:dustWood>, <ore:dustWood>, <ore:dustWood>]);
	recipes.addShaped("PaperShaped", <minecraft:paper>*1, [[<ore:sugarcane>, <ore:sugarcane>, <ore:sugarcane>]]);
	recipes.addShapedMirrored("PaperShapedMirror", <minecraft:paper>*3, [
		[<ore:cropRice>, null, null],
		[null, <ore:cropRice>, null],
		[null, null, <ore:cropRice>]
		]);

	recipes.remove(<mekanism:cardboardbox>);
	recipes.addShaped("CardboardBox", <mekanism:cardboardbox>, [
		[null, <storagedrawers:tape>.anyDamage(), null],
		[<thermalfoundation:material:801>, <thermalfoundation:material:801>, <thermalfoundation:material:801>],
		[<thermalfoundation:material:801>, <thermalfoundation:material:801>, <thermalfoundation:material:801>]
		]);
	
	//Rice Dough
	recipes.remove(<actuallyadditions:item_misc:9>);
	recipes.addShapeless("RiceDough", <actuallyadditions:item_misc:9>*2, [<ore:cropRice>, <ore:cropRice>, <ore:cropRice>, <ore:cropRice>]);


//====== TiCo Moss ======
//
	recipes.remove(<tconstruct:materials:18>);
	recipes.addShapeless("TCMoss", <tconstruct:materials:18>, [<ore:blockMossy>, <ore:blockMossy>, <ore:blockMossy>, <ore:blockMossy>]);


//====== Iron Stick ======
//
	recipes.remove(<immersiveengineering:material:1>);
	recipes.remove(<rustic:chain>);
	recipes.remove(<ore:stickIron>);
	recipes.addShaped("Chain", <rustic:chain>*12, [
		[<ore:ingotIron>, null, null],
		[<ore:ingotIron>, null, null],
		[<ore:ingotIron>, null, null]
		]);	
	recipes.addShaped("IERod", <immersiveengineering:material:1>*4, [
		[null, <ore:ingotIron>, null],
		[null, <ore:ingotIron>, null],
		[null, <ore:ingotIron>, null]
		]);	

	<ore:stickIron>.add(<tconstruct:tool_rod>.withTag({Material: "iron"}));

	
//====== Ender Pearl Powder ======
//
//add custom enderio recipe
   recipes.addShaped(<techreborn:dust:20>, [
      [<enderio:item_material:28>, <enderio:item_material:28>, <enderio:item_material:28>],
      [<enderio:item_material:28>, <enderio:item_material:28>, <enderio:item_material:28>], 
      [<enderio:item_material:28>, <enderio:item_material:28>, <enderio:item_material:28>]
      ]);
//fix miniature black hole
   recipes.remove(<portalgun:item_miniature_black_hole>);
   recipes.addShaped(<portalgun:item_miniature_black_hole>, [
      [<ore:dustEnderPearl>, <ore:dustEnderPearl>, <ore:dustEnderPearl>],
      [<ore:dustEnderPearl>, <minecraft:nether_star>, <ore:dustEnderPearl>], 
      [<ore:dustEnderPearl>, <ore:dustEnderPearl>, <ore:dustEnderPearl>]
      ]);

//====== Relapse/Love Potions ======
//
   recipes.addShapeless(<minecraft:potion>.withTag({Potion: "extrautils2:xu2.relapse"}), [<minecraft:potion>.onlyWithTag({Potion: "extrautils2:xu2.love"})]);
   recipes.addShapeless(<minecraft:potion>.withTag({Potion: "extrautils2:xu2.love"}), [<minecraft:potion>.onlyWithTag({Potion: "extrautils2:xu2.relapse"})]);
   
//====== Iron Plate ======
//
   recipes.addShapeless("Iron Plate", <thermalfoundation:material:32>, [<ore:ingotIron>,<ic2:forge_hammer:*>]);

//====== Item Rack ======
//
	recipes.remove(<tconstruct:rack:0>);
	recipes.addShapeless("itemrack",<tconstruct:rack:0>, [<tconstruct:rack:1>]);
	
//====== Alarm, Incandescent lamp ======
//
   recipes.remove(<techreborn:lamp_incandescent>);
   recipes.remove(<techreborn:alarm>);
   recipes.addShaped("TRLamp", <techreborn:lamp_incandescent>,
      [[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
      [<ic2:cable>, <ic2:crafting:13>, <ic2:cable>],
      [<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
      ]);
   recipes.addShaped("TRAlarm", <techreborn:alarm>,
      [[<ore:ingotIron>, <ic2:cable>, <ore:ingotIron>],
      [inscab, <ore:blockRedstone>, inscab],
      [<ore:ingotIron>, <ic2:cable>, <ore:ingotIron>]
      ]);
	
//====== Iron Frame ======
//
   recipes.remove(<advgenerators:iron_frame>);
   recipes.addShaped("AdvGenFrame", <advgenerators:iron_frame> * 2,
      [[<ore:ingotIron>, null, <ore:ingotIron>],
      [null, null, null],
      [<ore:ingotIron>, null, <ore:ingotIron>]]);
	
//====== Uranium Ingot ======
//
	recipes.removeShapeless(<ic2:ingot:8>,[<ic2:resource:10>]);
	
	recipes.addShapeless("UraniumIngot",<ic2:ingot:8> * 10,[<ic2:resource:10>,<ic2:ingot:8>]);
	recipes.addShaped("UraniumIngotToBlock",<ic2:resource:10>,
	[[<ic2:ingot:8>, <ic2:ingot:8>, <ic2:ingot:8>],
	[<ic2:ingot:8>, <ic2:ingot:8>, <ic2:ingot:8>],
	[<ic2:ingot:8>, <ic2:ingot:8>, <ic2:ingot:8>]
	]);
	
//====== Mystical Agriculture ======
//
   var mystsili = <mysticalagriculture:silicon_essence>;
   var myststeel = <mysticalagriculture:steel_essence>;
   var mystlead = <mysticalagriculture:lead_essence>;
   var mystbronze = <mysticalagriculture:bronze_essence>;
   var mystsilver = <mysticalagriculture:silver_essence>;
   var mysttin = <mysticalagriculture:tin_essence>;
   var mystcopper = <mysticalagriculture:copper_essence>;
   recipes.remove(<nuclearcraft:gem:6>);
   recipes.remove(<ic2:ingot:5>);
   recipes.remove(<ic2:ingot:3>);
   recipes.remove(<ic2:ingot:1>);
   recipes.remove(<ic2:ingot:4>);
   recipes.remove(<ic2:ingot:6>);
   recipes.remove(<ic2:ingot:2>);
   recipes.addShaped(<enderio:item_material:5> * 8,
      [[mystsili, mystsili, mystsili],
      [null, null, null],
      [null, null, null]
    ]);
   recipes.addShaped(<thermalfoundation:material:160> * 3,
      [[myststeel, myststeel, myststeel],
      [myststeel, null, myststeel], 
      [myststeel, myststeel, myststeel]
    ]);
   recipes.addShaped(<thermalfoundation:material:131> * 4,
      [[mystlead, mystlead, mystlead],
      [mystlead, null, mystlead],
      [mystlead, mystlead, mystlead]
    ]);
   recipes.addShaped(<thermalfoundation:material:163> * 4,
      [[mystbronze, mystbronze, mystbronze],
      [mystbronze, null, mystbronze],
      [mystbronze, mystbronze, mystbronze]
    ]);
   recipes.addShaped(<thermalfoundation:material:130> * 4,
      [[mystsilver, mystsilver, mystsilver],
      [mystsilver, null, mystsilver],
      [mystsilver, mystsilver, mystsilver]
    ]);
   recipes.addShaped(<thermalfoundation:material:129> * 4,
      [[mysttin, mysttin, mysttin],
      [mysttin, null, mysttin],
      [mysttin, mysttin, mysttin]
    ]);
   recipes.addShaped(<thermalfoundation:material:128> * 6,
      [[mystcopper, mystcopper, mystcopper],
      [mystcopper, null, mystcopper],
      [mystcopper, mystcopper, mystcopper]
    ]);
	
//====== Weather Sensor ======
//
	
	recipes.remove(<quark:rain_detector>);
	recipes.addShaped("WeatherSensor", <quark:rain_detector>, [
		[<minecraft:glass>, <minecraft:glass>, <minecraft:glass>],
		[<minecraft:quartz>, <minecraft:quartz>, <minecraft:quartz>],
		[<minecraft:purpur_slab>, <minecraft:purpur_slab>, <minecraft:purpur_slab>]
	]);
	
//====== Cactus Planks ======
//

	recipes.remove(<structurize:blockcactusplank>);
	recipes.addShaped("Cactus Plank", <structurize:blockcactusplank>*8, [
		[null, <minecraft:cactus>, null],
		[null, <minecraft:cactus>, null],
		[null, null, null]
	]);
	
//====== Emerald Pickaxe ======
//
	recipes.addShapeless("EmeraldPick",<actuallyadditions:item_pickaxe_emerald>,[<cyclicmagic:emerald_pickaxe>]);
	
		
	
      