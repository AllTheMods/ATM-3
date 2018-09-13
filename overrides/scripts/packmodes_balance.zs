import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#packmode normal

print(" =================== Balance Tweaks =================== ");
print(" ====================================================== ");
/*
	Balance / Equalization of things that we (ATM Team) feel make the
	pack stand-out from others. Things that, to us, "make sense" and
	should be standard enabled (this is NOT "expert" mode, this is
	"stuff that makes sense" mode)
	
	We understand not everyone will agree with us so we have moved all
	"balance" changes to this one file so it is easy to remove for
	anyone that would like to play a "simplified" version of the pack.
*/


//====== FLIGHT BALANCE ======
//
	//====== Variables ======
	//
		var normalRing = <extrautils2:angelring:*>;
		var chestWithTag = <extrautils2:angelring:0>;
		var baubleRing = <flyringbaublemod:flyingring:*>;
		var batLasso = <extrautils2:goldenlasso>.withTag({Animal: {id: "minecraft:bat"}, No_Place: 1 as byte});
		var ghastLasso = <extrautils2:goldenlasso:1>.withTag({Animal: {id: "minecraft:ghast"}, No_Place: 1 as byte});
	
	//====== EXU2 ANGEL RING ======
	//
		// default exu2 recipe for reference
		/*
		recipes.addShaped(<extrautils2:angelring>, [
			[<minecraft:glass>, <minecraft:gold_ingot>, <minecraft:glass>],
			[<minecraft:gold_ingot>, <extrautils2:chickenring:1>, <minecraft:gold_ingot>],
			[batLasso, <minecraft:gold_ingot>, ghastLasso]]);
		*/
		recipes.removeShaped(normalRing);
		recipes.removeShaped(baubleRing);
		recipes.addShaped(<extrautils2:angelring:0>, [
			[<ore:astralGemCrystals>,   <actuallyadditions:item_misc:19>,           <ore:astralGemCrystals>],
			[<flyringbaublemod:pair:*>, <mekanism:armoredjetpack>,                  <flyringbaublemod:pair:*>],
			[batLasso,                  <actuallyadditions:item_wings_of_the_bats>, ghastLasso]
			]);
			
		//Making sure the wing-flavor recipes are still present -- should be redundant since we only did removeShaped for the ring recipe
			recipes.addShapeless(<extrautils2:angelring>, [<minecraft:glass>, <extrautils2:angelring:*>, <minecraft:glass>]);
			recipes.addShapeless(<extrautils2:angelring:1>, [<minecraft:feather:*>, <extrautils2:angelring:*>, <minecraft:feather:*>]);
			recipes.addShapeless(<extrautils2:angelring:2>, [<minecraft:dye:5>, <extrautils2:angelring:*>, <minecraft:dye:9>]);
			recipes.addShapeless(<extrautils2:angelring:3>, [<minecraft:leather:*>, <extrautils2:angelring:*>, <minecraft:leather:*>]);
			recipes.addShapeless(<extrautils2:angelring:4>, [<minecraft:gold_nugget>, <extrautils2:angelring:*>, <minecraft:gold_nugget>]);
			
	//====== Mek Jetpack ======
	//
		recipes.remove(<mekanism:jetpack>);
		recipes.addShaped( <mekanism:jetpack> , [
			[<ore:stickSteel>,                    <ore:circuitAdvanced>,                 <ore:stickSteel>],
			[<ore:plateTin>,                      <mekanism:gastank>.withTag({tier: 3}), <ore:plateTin>],
			[<draconicevolution:tool_upgrade:11>, <ore:plateTin>,                        <draconicevolution:tool_upgrade:11>]
			]);
			
	//====== Draco Chest ======
	//
		recipes.remove(<draconicevolution:wyvern_chest>);
		recipes.addShaped(<draconicevolution:wyvern_chest>, [
			[<ore:blockDraconium>,    <draconicevolution:wyvern_core:*>,        <ore:blockDraconium>],
			[<minecraft:nether_star>, normalRing,                               <minecraft:nether_star>],
			[<ore:blockDraconium>,    <draconicevolution:wyvern_energy_core:*>, <ore:blockDraconium>]
			]);
			
	//====== Botania Tiara ======
	//
		recipes.removeShaped(<botania:flighttiara:*>);
		recipes.addShaped(<botania:flighttiara>, [
			[<botania:manaresource:5>, <botania:manaresource:5>,  <botania:manaresource:5>],
			[<botania:manaresource:7>, <ore:astralGemCrystals>,   <botania:manaresource:7>],
			[<minecraft:feather>,      <botania:manaresource:15>, <minecraft:feather>]
			]);
			
		//Making sure the wing-flavor recipes are still present -- should be redundant since we only did removeShaped for the ring recipe
			recipes.addShapeless(<botania:flighttiara:8>, [<botania:flighttiara:*>, <botania:quartz:6>]);
			recipes.addShapeless(<botania:flighttiara:7>, [<botania:flighttiara:*>, <botania:quartz:5>]);
			recipes.addShapeless(<botania:flighttiara:6>, [<botania:flighttiara:*>, <botania:quartz:4>]);
			recipes.addShapeless(<botania:flighttiara:5>, [<botania:flighttiara:*>, <botania:quartz:3>]);
			recipes.addShapeless(<botania:flighttiara:4>, [<botania:flighttiara:*>, <botania:quartz:2>]);
			recipes.addShapeless(<botania:flighttiara:3>, [<botania:flighttiara:*>, <botania:quartz:1>]);
			recipes.addShapeless(<botania:flighttiara:2>, [<botania:flighttiara:*>, <botania:quartz>]);
			recipes.addShapeless(<botania:flighttiara:1>, [<botania:flighttiara:*>, <minecraft:quartz>]);
			
	//====== Glowing Chorus ======
	//
		var chorusGlow = <cyclicmagic:glowing_chorus>;
		var leviPotion = <minecraft:lingering_potion>.withTag({Potion: "cyclicmagic:levitation"});
		var chorusBlock = <integrateddynamics:crystalized_chorus_block>;
		var refGlowstone = <ore:blockRefinedGlowstone>;
		var glowFlorb = <thermalexpansion:florb>.withTag({Fluid: "glowstone"});
		recipes.remove(chorusGlow);
		recipes.addShaped(chorusGlow, [
			[leviPotion, chorusBlock,  leviPotion],
			[glowFlorb,  refGlowstone, glowFlorb],
			[leviPotion, chorusBlock,  leviPotion]
			]);


//====== MINERS / QUARRY BALANCE ======
//
	//====== Variables ======
	//
		var AAMiner = <actuallyadditions:block_miner>;
		var MekMiner = <mekanism:machineblock:4>;
		//var RFTQuarry = <rftools:shape_card:2>;
		//var RFTBuilder = <rftools:builder>;
		<ore:basicPump>.add(<rangedpumps:pump>);
		<ore:basicPump>.add(<mekanism:machineblock:12>);
		<ore:basicPump>.add(<immersiveengineering:metal_device0:5>);
		<ore:basicPump>.add(<industrialforegoing:fluid_pump>);
	
	//====== Mek Digital Miner ======
	//
		recipes.remove(MekMiner);
		recipes.addShaped(MekMiner, [
			[<mekanism:atomicalloy>, <ore:circuitAdvanced>, <mekanism:atomicalloy>],
			[<mekanism:machineblock:15>, <mekanism:robit>, <mekanism:machineblock:15>],
			[<mekanism:teleportationcore>, AAMiner, <mekanism:teleportationcore>]]);
		
	//RFT builder
		recipes.remove(<rftools:builder>);
		recipes.addShaped(<rftools:builder>, [
			[<minecraft:brick_block>, <minecraft:ender_pearl>, <minecraft:brick_block>],
			[<ore:basicPump>, <rftools:machine_frame>, <cyclicmagic:builder_block>],
			[<minecraft:brick_block>, AAMiner, <minecraft:brick_block>]
			]);
	
	//====== EXU2 quarry ======
	//
		// RE-ENABLED 5.7 (for now, will re-disable if necessary)
		/*
		recipes.remove(<extrautils2:quarry>);
		<extrautils2:quarry>.addTooltip(
				format.underline(format.red(
				"Disabled due to lag/performance impact"
				))
			);
		recipes.remove(<extrautils2:quarryproxy>);
		<extrautils2:quarryproxy>.addTooltip(
				format.underline(format.red(
				"Disabled due to lag/performance impact"
				))
			);
		*/


//====== FARMING BALANCE ======
//	
/*
	Balance / Equalization of auto-farming machines and resource-crops
	
	NOTE: The high difficulty on resource-bearing-crops is an alternative
	to removing the mod altogether for being too OP. Instead it is
	used as a mid/late game bonus as players work towards endgame and
	creative-only recipes.
*/
	//====== Variables ======
	//
		//var RTFertileDirt = <randomthings:fertilizeddirt>;
		var CyclicHydrate = <cyclicmagic:block_hydrator>;
		//var AttainSeed = <attaineddrops2:seed>;
		//var AttainEssence = <attaineddrops2:essence>;
		var TFFert = <thermalfoundation:fertilizer:2>;
		var IFFert = <industrialforegoing:fertilizer>;
		var AAFert = <actuallyadditions:item_fertilizer>;
		var NotchApple = <minecraft:golden_apple:1>;
		var RoyalJelly = <forestry:royal_jelly>;
		//var GrowEssence = <minecraft:spawn_egg>.withTag({display:{Name:"Growth Essence",lore:["This item represents the", "essence of growth."],type: "SpecialGrowEssence"}});
		var GrowEssence = <atmtweaks:item_material:1>;
		var Cloche = <immersiveengineering:metal_device1:13>;
		<ore:growGlass>.add(<actuallyadditions:block_greenhouse_glass>);
		<ore:growGlass>.add(<astralsorcery:itemcoloredlens:2>);
		var ManaPowder = <botania:manaresource:23>;
	
	//====== Custom "growth essence" ======
	//
		mods.actuallyadditions.Empowerer.addRecipe(GrowEssence,
			RoyalJelly,
			AAFert, IFFert, TFFert, ManaPowder,
			100000, 1200, [0.0, 0.6, 0.1]);
	
	//====== Nerf Cloche ======
	//
		recipes.remove(Cloche);
		recipes.addShaped("crtcloche", Cloche, [
			[<ore:growGlass>, <immersiveengineering:material:27>, <ore:growGlass>],
			[<ore:blockGlassHardened>, GrowEssence, <ore:blockGlassHardened>],
			[<immersiveengineering:treated_wood>, <immersiveengineering:toolupgrade:6>, <immersiveengineering:treated_wood>]
		]);
	
	//====== Tier 5 Mystical Ag ======
	//
		//Seeds
		recipes.remove(<mysticalagriculture:crafting:21>);
		recipes.addShaped(<mysticalagriculture:crafting:21>, [
			[<mysticalagriculture:crafting:4>, GrowEssence,                       <mysticalagriculture:crafting:4>],
			[<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:20>, <mysticalagriculture:crafting:4>],
			[<mysticalagriculture:crafting:4>, GrowEssence,                       <mysticalagriculture:crafting:4>]
			]);
		//Ingots
		recipes.removeShaped(<mysticalagriculture:crafting:37>);
		recipes.addShaped(<mysticalagriculture:crafting:37>, [
			[<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>,  <mysticalagriculture:crafting:4>],
			[<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:36>, <mysticalagriculture:crafting:4>],
			[<mysticalagriculture:crafting:4>, <mysticalagriculture:crafting:4>,  <mysticalagriculture:crafting:4>]
			]);
		//re-add nugget->ingot since it was shaped
		recipes.addShapeless(<mysticalagriculture:crafting:37>, [
			<mysticalagriculture:crafting:44>, <mysticalagriculture:crafting:44>, <mysticalagriculture:crafting:44>,
			<mysticalagriculture:crafting:44>, <mysticalagriculture:crafting:44>, <mysticalagriculture:crafting:44>,
			<mysticalagriculture:crafting:44>, <mysticalagriculture:crafting:44>, <mysticalagriculture:crafting:44>
			]);

			
//====== EXTREME REACTORS BALANCE ======
	//====== Variables ======
	//
		var BRAngelsite = <bigreactors:minerals:0>;
		var BRBentonite = <bigreactors:minerals:1>;
		var BRGraphite = <bigreactors:ingotmetals:2>;
		var MAGraphite = <mysticalagriculture:graphite_essence>;
		var BRLudicrite = <bigreactors:blockmetals:4>;
		var BRCyanDust = <bigreactors:dustmetals:1>;
		var BRBlueDust = <bigreactors:dustmetals:3>;
		var BRBlutonium = <bigreactors:ingotmetals:3>;
		var TRAdvAlloy = <ore:plateAdvancedAlloy>;
		var ImmersiveElectrode = <immersiveengineering:graphite_electrode>; // Electrode
		var ImmersiveSteelRod = <ore:stickSteel>;
		//var RTImbueFire   = <randomthings:imbue:0>; // Fire
		var MekCrystalSilver = <mekanism:crystal:5>; //Silver
		var lCyanite = <liquid:cyanite>.withAmount(144);
		var lMenril = <liquid:menrilresin>.withAmount(144);
		var TRCarbonPlate = <ore:plateCarbon>;
		var MekUltControl = <ore:circuitUltimate>;
		var SteelGlass = <ore:blockGlassHardened>;
		var gaiaIngot = <botania:manaresource:14>;
		
	//Reactor And Turbine Housing CORE
		recipes.remove(<bigreactors:reactorcasingcores>);
		recipes.remove(<bigreactors:turbinehousingcores>);
	
	//Reactor and Turbine HOUSING
		recipes.remove(<bigreactors:reactorcasing>);
		recipes.remove(<bigreactors:turbinehousing>);
		recipes.addShaped(<bigreactors:reactorcasing> * 16, [
			[TRCarbonPlate, <ore:blockSteel>, TRCarbonPlate],
			[<ic2:resource:14>, TRAdvAlloy, <ic2:resource:14>],
			[TRCarbonPlate, <ore:blockSteel>, TRCarbonPlate]
			]);
		recipes.addShaped(<bigreactors:turbinehousing> * 16, [
			[TRCarbonPlate, <ore:blockInvar>, TRCarbonPlate],
			[<ic2:resource:14>, <ore:plateEnderium>, <ic2:resource:14>],
			[TRCarbonPlate, <ore:blockInvar>, TRCarbonPlate]
			]);
	
	//Fuel Rods
		recipes.remove(<bigreactors:reactorfuelrod>);
		recipes.addShaped(<bigreactors:reactorfuelrod> * 4, [
			[ImmersiveSteelRod, SteelGlass, ImmersiveSteelRod],
			[<ore:ingotGraphite>, SteelGlass, <ore:ingotGraphite>],
			[ImmersiveSteelRod, SteelGlass, ImmersiveSteelRod]
			]);
	
	//Reactor Controller
		//Tech Reborn
		recipes.remove(<bigreactors:reactorcontroller>);
		recipes.addShaped(<bigreactors:reactorcontroller>, [
			[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>],
			[<bigreactors:reactorcasing>, <techreborn:fusion_control_computer>, <bigreactors:reactorcasing>],
			[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>]
			]);
		//IC2
		recipes.addShaped(<bigreactors:reactorcontroller>, [
			[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>],
			[<bigreactors:reactorcasing>, <ic2:te:22>, <bigreactors:reactorcasing>],
			[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>]
			]);
		//Nuclearcraft
		recipes.addShaped(<bigreactors:reactorcontroller>, [
			[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>],
			[<bigreactors:reactorcasing>, <nuclearcraft:fission_controller_new_idle>, <bigreactors:reactorcasing>],
			[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>]
			]);
		//Mek
		recipes.addShaped(<bigreactors:reactorcontroller>, [
			[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>],
			[<bigreactors:reactorcasing>, <mekanism:basicblock2:3>.withTag({tier: 2}), <bigreactors:reactorcasing>],
			[<bigreactors:reactorcasing>, <bigreactors:reactorcasing>, <bigreactors:reactorcasing>]
			]);
	
	//Ludicrite
		recipes.remove(BRLudicrite);
		recipes.addShaped("crtludicrite", BRLudicrite, [
			[BRBlutonium, <ore:shardDraconium>, BRBlutonium],
			[<ore:blockEnderium>, gaiaIngot, <ore:blockEnderium>],
			[BRBlutonium, <ore:blockInsanium>, BRBlutonium]
			]);
		recipes.addShapeless(<bigreactors:ingotmetals:4>*9, [BRLudicrite]);
		recipes.addShapeless(BRLudicrite, [
			<ore:ingotLudicrite>, <ore:ingotLudicrite>, <ore:ingotLudicrite>,
			<ore:ingotLudicrite>, <ore:ingotLudicrite>, <ore:ingotLudicrite>,
			<ore:ingotLudicrite>, <ore:ingotLudicrite>, <ore:ingotLudicrite>
			]);
	
	//Graphite
		 recipes.remove(BRGraphite);
		 recipes.addShaped("crtgraphite", BRGraphite, [[TRCarbonPlate, TRCarbonPlate]]);
		 recipes.addShaped(BRGraphite, [
		[MAGraphite, MAGraphite, MAGraphite],
		[null, null ,null ],
		[MAGraphite, MAGraphite, MAGraphite]
		]);
	
	//Blutonium Processing
		recipes.removeShaped(BRBlutonium);
		recipes.addShapeless("crtBRblufix", BRBlutonium * 9, [<bigreactors:blockmetals:3>]);
		mods.thermalexpansion.Crucible.addRecipe(lCyanite, BRCyanDust, 200000);
		mods.thermalexpansion.Refinery.addRecipe(lMenril, BRBlueDust, lCyanite, 200000);
		BRBlueDust.addTooltip("Extracted from fluid cyanite");


//====== Nerf Recipe for Mek Reactor ======
//
	//Oredict depleted rods
	<ore:nuclearcraftDepletedRod>.addItems([
		<nuclearcraft:depleted_fuel_rod_americium:*>,
		<nuclearcraft:depleted_fuel_rod_berkelium:*>,
		<nuclearcraft:depleted_fuel_rod_californium:*>,
		<nuclearcraft:depleted_fuel_rod_curium:*>,
		<nuclearcraft:depleted_fuel_rod_mixed_oxide:*>,
		<nuclearcraft:depleted_fuel_rod_neptunium:*>,
		<nuclearcraft:depleted_fuel_rod_plutonium:*>,
		<nuclearcraft:depleted_fuel_rod_thorium:*>,
		<nuclearcraft:depleted_fuel_rod_uranium:*>
		]);
	<ore:ic2DepletedRod>.addItems([
		<ic2:nuclear:14>,
		<ic2:nuclear:15>,
		<ic2:nuclear:11>,
		<ic2:nuclear:12>,
		<ic2:nuclear:13>,
		<ic2:nuclear:16>
		]);
		
	recipes.remove(<mekanismgenerators:reactor>);
	
	//Mek
	recipes.addShaped(<mekanismgenerators:reactor>, [
		[<ore:circuitUltimate>, <mekanism:basicblock2:3>.withTag({tier: 3}), <ore:circuitUltimate>],
		[<mekanismgenerators:reactor:2>, <mekanism:gastank>.withTag({tier: 3}), <mekanismgenerators:reactor:2>],
		[<mekanismgenerators:reactor:2>, <ore:shardLead>, <mekanismgenerators:reactor:2> ]
		]);
	//Nuclearcraft
	recipes.addShaped(<mekanismgenerators:reactor>, [
		[<ore:nuclearcraftDepletedRod>, <mekanism:energycube>.withTag({tier: 3}), <ore:nuclearcraftDepletedRod>],
		[<mekanismgenerators:reactor:2>, <mekanism:gastank>.withTag({tier: 3}), <mekanismgenerators:reactor:2>],
		[<mekanismgenerators:reactor:2>, <ore:nuclearcraftDepletedRod>, <mekanismgenerators:reactor:2> ]
		]);
	//IC2
	recipes.addShaped(<mekanismgenerators:reactor>, [
		[<ore:ic2DepletedRod>, <mekanism:energycube>.withTag({tier: 3}), <ore:ic2DepletedRod>],
		[<mekanismgenerators:reactor:2>, <mekanism:gastank>.withTag({tier: 3}), <mekanismgenerators:reactor:2>],
		[<mekanismgenerators:reactor:2>, <ore:ic2DepletedRod>, <mekanismgenerators:reactor:2> ]
		]);
	//BigReactors
	recipes.addShaped(<mekanismgenerators:reactor>, [
		[<bigreactors:ingotmetals:4>, <mekanism:energycube>.withTag({tier: 3}), <bigreactors:ingotmetals:4>],
		[<mekanismgenerators:reactor:2>, <mekanism:gastank>.withTag({tier: 3}), <mekanismgenerators:reactor:2>],
		[<mekanismgenerators:reactor:2>, <bigreactors:reactorcontroller>, <mekanismgenerators:reactor:2> ]
		]);


//====== Accel Wand Balance ======
//
	recipes.remove(<notenoughwands:advanced_wandcore>);
	// Adv Wand Core
	recipes.addShaped(<notenoughwands:advanced_wandcore>, [
		[<redstonearsenal:material:193>, <psi:vector_ruler>, null],
		[<psi:vector_ruler>, <notenoughwands:wandcore>, <botania:cosmetic:18>],
		[null, <botania:cosmetic:18>, <mekanism:polyethene:2>]
		]);
	// Acceleration Wand
	var AccelWand = <notenoughwands:acceleration_wand>;
	recipes.remove(AccelWand);
	recipes.addShaped("crtaccelwandnerf", AccelWand, [
		[<opencomputers:component:17>, <integrateddynamics:delay>, null],
		[<integrateddynamics:delay>, <notenoughwands:advanced_wandcore>, <actuallyadditions:item_crystal_empowered:4>],
		[null, <actuallyadditions:item_crystal_empowered:4>, <notenoughwands:advanced_wandcore>]
		]);


//====== Slightly Balance EXU2 Water Mill ======
//
	recipes.addShaped(<extrautils2:passivegenerator:3>, [
		[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>],
		[<extrautils2:ingredients:0>,     <extrautils2:ingredients:5>,     <extrautils2:ingredients:0>],
		[<extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>, <extrautils2:decorativesolid:3>]
		]);


//====== Disable EFLN / Similar ======
// Bypasses claims/protection or too destructive -- possible griefing tool
//
	//TiCo ELFN
	recipes.remove(<tconstruct:throwball:1>);
	<tconstruct:throwball:1>.addTooltip(
				format.underline(format.red(
				"Disabled due to potential griefing"
				)));
	//Cyclic Dynamite
	recipes.remove(<cyclicmagic:dynamite_mining>);			
	<cyclicmagic:dynamite_mining>.addTooltip(
				format.underline(format.red(
				"Disabled due to potential griefing"
				)));
	//Abyssalcraft Oblivion Deathbomb
	recipes.remove(<abyssalcraft:odb>);
	<abyssalcraft:odb>.addTooltip(
				format.underline(format.red(
				"Disabled due to potential griefing"
				)));


//====== Spike Mod Qty Adjust ======
//
	var planks = <ore:plankWood>;
	val logs = <ore:logWood>;
	var spikeWood = <extrautils2:spike_wood>;
	var spikeStone = <extrautils2:spike_stone>;
	var spikeIron = <extrautils2:spike_iron>;
	var spikeGold = <extrautils2:spike_gold>;
	var spikeDiamond = <extrautils2:spike_diamond>;
	var spikeSpecial = <extrautils2:spike_creative>;
	var cyclicSpikeIron = <cyclicmagic:spikes_iron>;
	var cyclicSpikeDiamond = <cyclicmagic:spikes_diamond>;
	
	spikeSpecial.addTooltip("No drops OR experience -- ONLY instant kill");
	
	//Wood
	recipes.remove(spikeWood);
	recipes.addShaped(spikeWood, [
		[null, <minecraft:wooden_sword:*>, null],
		[<minecraft:wooden_sword:*>, logs, <minecraft:wooden_sword:*>],
		[logs, planks, logs]
		]);
	//Stone
	recipes.remove(spikeStone);
	recipes.addShaped(spikeStone, [
		[null, <minecraft:stone_sword:*>, null],
		[<minecraft:stone_sword:*>, spikeWood, <minecraft:stone_sword:*>],
		[spikeWood, <ore:bricksStone>, spikeWood]
		]);
	//Iron
	recipes.remove(spikeIron);
	recipes.addShaped(spikeIron, [
		[null, <minecraft:iron_sword:*>, null],
		[<minecraft:iron_sword:*>, spikeStone, <minecraft:iron_sword:*>],
		[spikeStone, <ore:blockIron>, spikeStone]
		]);
	//Gold
	recipes.remove(spikeGold);
	recipes.addShaped(spikeGold, [
		[null, <minecraft:golden_sword:*>, null],
		[<minecraft:golden_sword:*>, spikeIron, <minecraft:golden_sword:*>],
		[spikeIron, <ore:blockGold>, spikeIron]
		]);
	//Diamond
	recipes.remove(spikeDiamond);
	recipes.addShaped(spikeDiamond, [
		[null, <minecraft:diamond_sword:*>, null],
		[<minecraft:diamond_sword:*>, spikeGold, <minecraft:diamond_sword:*>],
		[spikeGold, <ore:blockDiamond>, spikeGold]
		]);
	//Special
	recipes.remove(spikeSpecial);
	recipes.addShaped(spikeSpecial, [
		[<minecraft:enchanted_book:*>, spikeDiamond, <minecraft:enchanted_book:*>],
		[spikeDiamond, <minecraft:nether_star:*>, spikeDiamond],
		[<minecraft:enchanted_book:*>, <minecraft:enchanting_table:*>, <minecraft:enchanted_book:*>]
		]);
	
	//Cyclic Spikes only obtainable form "converting" from EXU2 spikes_diamond
	//Iron
		recipes.remove(cyclicSpikeIron);
		recipes.addShapeless(cyclicSpikeIron, [spikeIron]);
		recipes.addShapeless(spikeIron, [cyclicSpikeIron]);
	//Diamond
		recipes.remove(cyclicSpikeDiamond);
		recipes.addShapeless(cyclicSpikeDiamond, [spikeDiamond]);
		recipes.addShapeless(spikeDiamond, [cyclicSpikeDiamond]);


//====== No Easy Steel ======
//
	furnace.remove(<ore:ingotSteel>);


//====== No easy steel ROD ======
//
	recipes.removeShaped(<immersiveengineering:material:2>);
	
	//Add others to same steel rod oredict
	<ore:stickSteel>.add(<tconstruct:tool_rod>.withTag({Material: "steel"}));
	
	//Fix IE Steel Scaffolding to use oredict steel rod
	recipes.removeShaped(<immersiveengineering:metal_decoration1:1>);
	recipes.addShaped(<immersiveengineering:metal_decoration1:1> * 6, [
		[<ore:ingotSteel>, <ore:ingotSteel>, <ore:ingotSteel>],
		[null, <ore:stickSteel>, null],
		[<ore:stickSteel>, null, <ore:stickSteel>]
		]);
	
	recipes.addShapeless(<immersiveengineering:metal_decoration1:1>, [<immersiveengineering:metal_decoration1_slab:1>, <immersiveengineering:metal_decoration1_slab:1>]);


//====== CHUNK LOADER BALANCE ======
//
	//Disabled outright
	recipes.remove(<techreborn:chunk_loader>);
	recipes.remove(<stevescarts:cartmodule:49>);
	recipes.remove(<mekanism:anchorupgrade>);

	//Recipe Gating:
	//First level, OC chunkloader upgrade
	recipes.remove(<opencomputers:upgrade:4>);
	recipes.addShaped(<opencomputers:upgrade:4>, [
		[<ic2:plate:11>, <thermalfoundation:material:833>, <ic2:plate:11>],
		[<opencomputers:component:15>, <abyssalcraft:transmutationgem:*>, <opencomputers:component:15>],
		[<ic2:plate:11>, <thermalfoundation:material:833>, <ic2:plate:11>]
		]);

	//First level, MEK Anchor Upgrade
	recipes.remove(<mekanism:anchorupgrade>);
	recipes.addShaped(<mekanism:anchorupgrade>, [
		[<opencomputers:upgrade:14>, <ic2:plate:17>, <opencomputers:upgrade:14>],
		[<ic2:plate:17>, <abyssalcraft:transmutationgem:*>, <ic2:plate:17>],
		[<thermalfoundation:material:295>, <ic2:plate:17>, <thermalfoundation:material:295>]
		]);
	
	<ore:chunkloaderUpgrade>.addItems([<opencomputers:upgrade:4>, <mekanism:anchorupgrade>]);

	//Second level, IC2 chunkloader
	recipes.remove(<ic2:te:82>);
	recipes.addShaped(<ic2:te:82>, [
		[<atmtweaks:item_material:2>, <rftools:infused_enderpearl>, <atmtweaks:item_material:2>],
		[<ore:chunkloaderUpgrade>, <techreborn:machine_casing:2>, <ore:chunkloaderUpgrade>],
		[<atmtweaks:item_material:2>, <rftools:infused_enderpearl>, <atmtweaks:item_material:2>]
		]);
	<ic2:te:82>.addTooltip(
					format.underline(format.aqua(
					"Needs high quantity of EU per loaded chunk per tick -- see transformer and energy upgrades"
					)));
	mods.jei.JEI.addDescription(<ic2:te:82>, "This chunkloader has been configured to require massive amounts of power per chunk loaded",
											 "Energy Storage upgrades are mandatory and so are Transformer Upgrades most likely",
											 "If the chunkloader is 'flashing' red/green it does not have enough power -- reduce number of chunks loaded or provide more power");
	
	//Third, Exu2 chunkloader
	var contractLasso = <extrautils2:goldenlasso>.withTag({Animal: {ForgeData: {Contracted: 1 as byte}, id: "minecraft:villager"}, No_Place: 1 as byte});
	recipes.remove(<extrautils2:chunkloader>);
	recipes.addShaped(<extrautils2:chunkloader>, [
		[<ic2:te:82>,                  <botania:thirdeye>,                 <ic2:te:82>],
		[<extrautils2:ingredients:16>, contractLasso,                      <extrautils2:ingredients:16>],
		[<magicbees:resource:7>,       <notenoughwands:advanced_wandcore>, <magicbees:resource:7>]
		]);


//====== Quantum Disc BALANCE ======
//
	recipes.remove(<quantumstorage:quantumstoragedisk>.withTag({Items: [], Stored: 0, Protocol: 1}));
	recipes.addShapeless(<quantumstorage:quantumstoragedisk>.withTag({Items: [], Stored: 0, Protocol: 1}), [
		<appliedenergistics2:storage_cell_16k>, <atmtweaks:item_material:8>
	]);
	
	recipes.remove(<quantumstorage:quantumcrafter>);
	recipes.addShaped(<quantumstorage:quantumcrafter>, [
		[<minecraft:iron_ingot>, <appliedenergistics2:storage_cell_16k>, <minecraft:iron_ingot>], 
		[<minecraft:iron_ingot>, <atmtweaks:item_material:8>, <minecraft:iron_ingot>], 
		[<minecraft:iron_ingot>, <minecraft:iron_ingot>, <minecraft:iron_ingot>]
		]);
