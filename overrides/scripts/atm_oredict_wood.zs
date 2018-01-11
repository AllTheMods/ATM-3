import crafttweaker.item.IIngredient as IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;

#packmode normal simplified
#ignoreBracketErrors

print(" =================== ATC OreDict (wood) =================== ");
print(" ========================================================== ");
/*
	Unify wood stuff in oredicts
*/


//====== Variables ======
//
	val Chest = <ore:chest>;
	val ChestWood = <ore:chestWood>;
	val ChestTrapped = <ore:chestTrapped>;
	val Trapdoor = <ore:trapdoorWood>;
	val Door = <ore:doorWood>;
	val Bed = <ore:bed>;
	val Log = <ore:logWood>;
	val Plank = <ore:plankWood>;
	val WoodSlab = <ore:slabWood>;
	val WoodStair = <ore:stairWood>;
	val Stick = <ore:stickWood>;
	val Fence = <ore:fenceWood>;
	val Gate = <ore:fenceGateWood>;
	val Sapling = <ore:treeSapling>;
	val Seed = <ore:seed>;
	val FishRaw = <ore:listAllfishraw>;
	val FishCooked = <ore:listAllfishcooked>;

	// ====== Template:
/*


//======Add to YYYYYY======
//
	var XXXXX = [
		<>
	] as IItemStack[];
	YYYYYY.addItems(XXXXXX);
*/


//======Add to Log======
//
	var LogsToAdd = [
		<extratrees:logs.0:32767>,
		<extratrees:logs.1:32767>,
		<extratrees:logs.2:32767>,
		<extratrees:logs.3:32767>,
		<extratrees:logs.4:32767>,
		<extratrees:logs.5:32767>,
		<extratrees:logs.6:32767>,
		<extratrees:logs.7:32767>,
		<extratrees:logs.8:32767>,
		<extratrees:logs.9:32767>,
		<extratrees:logs.fireproof.0:32767>,
		<extratrees:logs.fireproof.1:32767>,
		<extratrees:logs.fireproof.2:32767>,
		<extratrees:logs.fireproof.3:32767>,
		<extratrees:logs.fireproof.4:32767>,
		<extratrees:logs.fireproof.5:32767>,
		<extratrees:logs.fireproof.6:32767>,
		<extratrees:logs.fireproof.7:32767>,
		<extratrees:logs.fireproof.8:32767>,
		<extratrees:logs.fireproof.9:32767>,
		<forestry:logs.0:32767>,
		<forestry:logs.1:32767>,
		<forestry:logs.2:32767>,
		<forestry:logs.3:32767>,
		<forestry:logs.4:32767>,
		<forestry:logs.5:32767>,
		<forestry:logs.6:32767>,
		<forestry:logs.7:32767>,
		<forestry:logs.fireproof.0:32767>,
		<forestry:logs.fireproof.1:32767>,
		<forestry:logs.fireproof.2:32767>,
		<forestry:logs.fireproof.3:32767>,
		<forestry:logs.fireproof.4:32767>,
		<forestry:logs.fireproof.5:32767>,
		<forestry:logs.fireproof.6:32767>,
		<forestry:logs.fireproof.7:32767>,
		<forestry:logs.vanilla.fireproof.0:32767>,
		<forestry:logs.vanilla.fireproof.1:32767>,
		<forestry:wood_pile:32767>,
		<harvestcraft:pamcinnamon:32767>,
		<harvestcraft:pammaple:32767>,
		<minecraft:log:32767>,
		<minecraft:log2:32767>,
		<rainboaks:rainboak_log:32767>,
		//<randomthings:spectrelog:32767>,
		<rustic:log:32767>,
		<techreborn:rubber_log:32767>,
		//<ic2:rubber_wood>,
		<traverse:fir_log:32767>,
		<terraqueous:trunk1:32767>,
		<terraqueous:trunk2:32767>
	] as IItemStack[];
	Log.addItems(LogsToAdd);
	
	// Rubber logs misc
	//<ore:logRubber>.add(<ic2:rubber_wood>);
	<ore:logRubber>.add(<techreborn:rubber_log>);
	//<ore:woodRubber>.addAll(<ore:logRubber>);
	<ore:rubberWood>.addAll(<ore:logRubber>);


//====== Planks ======
//
	var PlanksToAdd = [
		<rustic:painted_wood_white:32767>,
		<rustic:painted_wood_orange:32767>,
		<rustic:painted_wood_purple:32767>,
		<rustic:painted_wood_blue:32767>,
		<rustic:painted_wood_brown:32767>,
		<rustic:painted_wood_green:32767>,
		<rustic:painted_wood_red:32767>,
		<rustic:painted_wood_black:32767>,
		<rustic:painted_wood_magenta:32767>,
		<rustic:painted_wood_light_blue:32767>,
		<rustic:painted_wood_yellow:32767>,
		<rustic:painted_wood_lime:32767>,
		<rustic:painted_wood_pink:32767>,
		<rustic:painted_wood_gray:32767>,
		<rustic:painted_wood_silver:32767>,
		<rustic:painted_wood_cyan:32767>,
		<biomesoplenty:planks_0:32767>,
		<chisel:planks-acacia:32767>,
		<chisel:planks-birch:32767>,
		<chisel:planks-dark-oak:32767>,
		<chisel:planks-jungle:32767>,
		<chisel:planks-oak:32767>,
		<chisel:planks-spruce:32767>,
		<embers:sealed_planks:32767>,
		<forestry:planks.0:32767>,
		<forestry:planks.1:32767>,
		<forestry:planks.fireproof.0:32767>,
		<forestry:planks.fireproof.1:32767>,
		<forestry:planks.vanilla.fireproof.0:32767>,
		<minecraft:planks:32767>,
		<quark:stained_planks:32767>,
		<quark:vertical_planks:32767>,
		<quark:vertical_stained_planks:32767>,
		<rustic:planks:32767>,
		<techreborn:rubber_planks:32767>,
		<traverse:fir_planks:32767>,
		<terraqueous:planks:32767>
	] as IItemStack[];
	Plank.addItems(PlanksToAdd);


//====== Crafting Tables ======
//
	var TablesToAdd = [
		<actuallyadditions:item_crafter_on_a_stick>,
		<minecraft:crafting_table>
	] as IItemStack[];
	<ore:craftingTableWood>.addItems(TablesToAdd);
	<ore:crafterWood>.addItems(TablesToAdd);
	<ore:craftingTableWood>.addAll(<ore:crafterWood>);
	<ore:crafterWood>.addAll(<ore:craftingTableWood>);


//======Add to chest======
//
	var ChestsToAdd = [
		<minecraft:chest:32767>,
		<minecraft:ender_chest:32767>,
		<minecraft:trapped_chest:32767>,
		<actuallyadditions:block_treasure_chest:32767>,
		<bibliocraft:framedchest:0>,
		<bibliocraft:framedchest:1>,
		<bibliocraft:framedchest:2>,
		<bibliocraft:framedchest:3>,
		<bibliocraft:framedchest:4>,
		<bibliocraft:framedchest:5>,
		<bibliocraft:framedchest:6>,
		<appliedenergistics2:sky_stone_chest>,
		<appliedenergistics2:smooth_sky_stone_chest>,
		//<randomthings:specialChest:0>,
		//<randomthings:specialChest:1>,
		<quark:custom_chest:32767>,
		<quark:custom_chest_trap:32767>,
	] as IItemStack[];
	Chest.addItems(ChestsToAdd);


//======Add to chestWood======
//
	var WoodChestToAdd = [
		<minecraft:chest:32767>,
		<minecraft:trapped_chest:32767>,
		<bibliocraft:framedchest:0>,
		<bibliocraft:framedchest:1>,
		<bibliocraft:framedchest:2>,
		<bibliocraft:framedchest:3>,
		<bibliocraft:framedchest:4>,
		<bibliocraft:framedchest:5>,
		<bibliocraft:framedchest:6>,
		//<randomthings:specialChest:0>,
		//<randomthings:specialChest:1>,
		<quark:custom_chest:32767>,
		<quark:custom_chest_trap:32767>,
	] as IItemStack[];
	ChestWood.addItems(WoodChestToAdd);


//======Add to chestTrapped======
//
	var TrappedChestToAdd = [
		<minecraft:trapped_chest:32767>,
		<quark:custom_chest_trap:32767>
	] as IItemStack[];
	ChestTrapped.addItems(TrappedChestToAdd);


//======Add to ore:bed======
//
	var BedToAdd = [
		<minecraft:bed:32767>,
		<cyclicmagic:sleeping_mat:32767>
	] as IItemStack[];
	Bed.addItems(BedToAdd);


//======Add to Trapdoor======
//
	var TrapdoorToAdd = [
		<minecraft:trapdoor:32767>,
		<quark:dark_oak_trapdoor>,
		<quark:spruce_trapdoor>,
		<quark:birch_trapdoor>,
		<quark:jungle_trapdoor>,
		<quark:acacia_trapdoor>
	] as IItemStack[];
	Trapdoor.addItems(TrapdoorToAdd);


//======Add to Door======
	var DoorToAdd = [
		<minecraft:wooden_door:32767>,
		<traverse:fir_door:32767>,
		<biomesoplenty:fir_door:32767>,
		<biomesoplenty:cherry_door:32767>,
		<biomesoplenty:ebony_door:32767>,
		<biomesoplenty:ethereal_door:32767>,
		<biomesoplenty:eucalyptus_door:32767>,
		<biomesoplenty:hellbark_door:32767>,
		<biomesoplenty:jacaranda_door:32767>,
		<biomesoplenty:magic_door:32767>,
		<forestry:doors.acacia:32767>, //Desert Acacia Door
		<forestry:doors.balsa:32767>, //Balsa Door
		<forestry:doors.baobab:32767>, //Baobab Door
		<forestry:doors.cherry:32767>, //Cherry Door
		<forestry:doors.chestnut:32767>, //Chestnut Door
		<forestry:doors.citrus:32767>, //Citrus Door
		<forestry:doors.cocobolo:32767>, //Cocobolo Door
		<forestry:doors.ebony:32767>, //Ebony Door
		<forestry:doors.giganteum:32767>, //Giant Sequoia Door
		<forestry:doors.greenheart:32767>, //Greenheart Door
		<forestry:doors.ipe:32767>, //Ipe Door
		<forestry:doors.kapok:32767>, //Kapok Door
		<forestry:doors.larch:32767>, //Larch Door
		<forestry:doors.lime:32767>, //Lime Door
		<forestry:doors.mahoe:32767>, //Mahoe Door
		<forestry:doors.mahogany:32767>, //Mahogany Door
		<forestry:doors.maple:32767>, //Maple Door
		<forestry:doors.padauk:32767>, //Padauk Door
		<forestry:doors.palm:32767>, //Palm Door
		<forestry:doors.papaya:32767>, //Papaya Door
		<forestry:doors.pine:32767>, //Pine Door
		<forestry:doors.plum:32767>, //Plum Door
		<forestry:doors.poplar:32767>, //Poplar Door
		<forestry:doors.sequoia:32767>, //Sequoia Door
		<forestry:doors.teak:32767>, //Teak Door
		<forestry:doors.walnut:32767>, //Walnut Door
		<forestry:doors.wenge:32767>, //Wenge Door
		<forestry:doors.willow:32767>, //Willow Door
		<forestry:doors.zebrawood:32767>, //Zebrawood Door
		<biomesoplenty:mahogany_door:32767>,
		<biomesoplenty:mangrove_door:32767>,
		<biomesoplenty:palm_door:32767>,
		<biomesoplenty:pine_door:32767>,
		<biomesoplenty:redwood_door:32767>,
		<biomesoplenty:sacred_oak_door:32767>,
		<biomesoplenty:umbran_door:32767>,
		<biomesoplenty:willow_door:32767>,
		<minecraft:acacia_door:32767>,
		<minecraft:jungle_door:32767>,
		<minecraft:birch_door:32767>,
		<minecraft:spruce_door:32767>,
		<minecraft:dark_oak_door:32767>
	] as IItemStack[];
	Door.addItems(DoorToAdd);


//======Add to Seeds======
//
	var SeedsToAdd= [
		<actuallyadditions:item_canola_seed:32767>,
		<actuallyadditions:item_coffee_seed:32767>,
		<actuallyadditions:item_flax_seed:32767>,
		<actuallyadditions:item_misc:23>,
		<actuallyadditions:item_misc:24>,
		<actuallyadditions:item_rice_seed:32767>,
		//<attaineddrops2:seed:32767>,
		<cyclicmagic:sprout_seed:32767>,
		<embers:seed:32767>,
		//<gardenstuff:candelilla_seeds:32767>,
		//<growablecells:seedr16k:32767>,
		//<growablecells:seedr1k:32767>,
		//<growablecells:seedr4k:32767>,
		//<growablecells:seedr64k:32767>,
		<harvestcraft:artichokeseeditem:32767>,
		<harvestcraft:asparagusseeditem:32767>,
		<harvestcraft:bambooshootseeditem:32767>,
		<harvestcraft:barleyseeditem:32767>,
		<harvestcraft:beanseeditem:32767>,
		<harvestcraft:beetseeditem:32767>,
		<harvestcraft:bellpepperseeditem:32767>,
		<harvestcraft:blackberryseeditem:32767>,
		<harvestcraft:blueberryseeditem:32767>,
		<harvestcraft:broccoliseeditem:32767>,
		<harvestcraft:brusselsproutseeditem:32767>,
		<harvestcraft:cabbageseeditem:32767>,
		<harvestcraft:cactusfruitseeditem:32767>,
		<harvestcraft:candleberryseeditem:32767>,
		<harvestcraft:cantaloupeseeditem:32767>,
		<harvestcraft:cauliflowerseeditem:32767>,
		<harvestcraft:celeryseeditem:32767>,
		<harvestcraft:chilipepperseeditem:32767>,
		<harvestcraft:coffeeseeditem:32767>,
		<harvestcraft:cornseeditem:32767>,
		<harvestcraft:cottonseeditem:32767>,
		<harvestcraft:cranberryseeditem:32767>,
		<harvestcraft:cucumberseeditem:32767>,
		<harvestcraft:curryleafseeditem:32767>,
		<harvestcraft:eggplantseeditem:32767>,
		<harvestcraft:garlicseeditem:32767>,
		<harvestcraft:gingerseeditem:32767>,
		<harvestcraft:grapeseeditem:32767>,
		<harvestcraft:kiwiseeditem:32767>,
		<harvestcraft:leekseeditem:32767>,
		<harvestcraft:lettuceseeditem:32767>,
		<harvestcraft:mustardseeditem:32767>,
		<harvestcraft:mustardseedsitem:32767>,
		<harvestcraft:oatsseeditem:32767>,
		<harvestcraft:okraseeditem:32767>,
		<harvestcraft:onionseeditem:32767>,
		<harvestcraft:parsnipseeditem:32767>,
		<harvestcraft:peanutseeditem:32767>,
		<harvestcraft:peasseeditem:32767>,
		<harvestcraft:pineappleseeditem:32767>,
		<harvestcraft:radishseeditem:32767>,
		<harvestcraft:raspberryseeditem:32767>,
		<harvestcraft:rhubarbseeditem:32767>,
		<harvestcraft:riceseeditem:32767>,
		<harvestcraft:roastedpumpkinseedsitem:32767>,
		<harvestcraft:rutabagaseeditem:32767>,
		<harvestcraft:ryeseeditem:32767>,
		<harvestcraft:saltedsunflowerseedsitem:32767>,
		<harvestcraft:scallionseeditem:32767>,
		<harvestcraft:seaweedseeditem:32767>,
		<harvestcraft:seedsoupitem:32767>,
		<harvestcraft:sesameseedsitem:32767>,
		<harvestcraft:sesameseedsseeditem:32767>,
		<harvestcraft:soybeanseeditem:32767>,
		<harvestcraft:spiceleafseeditem:32767>,
		<harvestcraft:spinachseeditem:32767>,
		<harvestcraft:strawberryseeditem:32767>,
		<harvestcraft:sunflowerseedsitem:32767>,
		<harvestcraft:sweetpotatoseeditem:32767>,
		<harvestcraft:teaseeditem:32767>,
		<harvestcraft:toastedsesameseedsitem:32767>,
		<harvestcraft:tomatoseeditem:32767>,
		<harvestcraft:turnipseeditem:32767>,
		<harvestcraft:waterchestnutseeditem:32767>,
		<harvestcraft:whitemushroomseeditem:32767>,
		<harvestcraft:wintersquashseeditem:32767>,
		<harvestcraft:zucchiniseeditem:32767>,
		<immersiveengineering:seed:32767>,
		<minecraft:beetroot_seeds:32767>,
		<minecraft:melon_seeds:32767>,
		<minecraft:pumpkin_seeds:32767>,
		<minecraft:wheat_seeds:32767>,
		//<randomthings:grassseeds:32767>,
		//<resourcefulcrops:seed:32767>,
		<roots:aubergine_seeds:32767>,
		<roots:moontinged_seed:32767>,
		<rustic:apple_seeds:32767>,
		<rustic:chili_pepper_seeds:32767>,
		<rustic:grape_stem:32767>,
		<rustic:tomato_seeds:32767>
	] as IItemStack[];
	<ore:listAllSeed>.addItems(SeedsToAdd);
	<ore:listAllSeed>.addAll(Seed);


//======Add to FishRaw======
//
	var RawFishToAdd = [
		<harvestcraft:catfishrawitem:32767>,
		<harvestcraft:crayfishrawitem:32767>,
		<harvestcraft:greenheartfishitem:32767>,
		<harvestcraft:jellyfishrawitem:32767>,
		<harvestcraft:mudfishrawitem:32767>,
		<harvestcraft:rawtofishitem:32767>,
		<harvestcraft:calamarirawitem:32767>,
		<harvestcraft:anchovyrawitem:32767>,
		<harvestcraft:bassrawitem:32767>,
		<harvestcraft:carprawitem:32767>,
		<harvestcraft:charrrawitem:32767>,
		<harvestcraft:clamrawitem:32767>,
		<harvestcraft:crabrawitem:32767>,
		<harvestcraft:eelrawitem:32767>,
		<harvestcraft:frograwitem:32767>,
		<harvestcraft:grouperrawitem:32767>,
		<harvestcraft:herringrawitem:32767>,
		<harvestcraft:octopusrawitem:32767>,
		<harvestcraft:perchrawitem:32767>,
		<harvestcraft:scalloprawitem:32767>,
		<harvestcraft:shrimprawitem:32767>,
		<harvestcraft:snailrawitem:32767>,
		<harvestcraft:snapperrawitem:32767>,
		<harvestcraft:tilapiarawitem:32767>,
		<harvestcraft:troutrawitem:32767>,
		<harvestcraft:tunarawitem:32767>,
		<harvestcraft:turtlerawitem:32767>,
		<harvestcraft:walleyerawitem:32767>,
		<harvestcraft:sardinerawitem:32767>,
		<harvestcraft:musselrawitem:32767>,
		<minecraft:fish:32767>
	] as IItemStack[];
	FishRaw.addItems(RawFishToAdd);
	<ore:fish>.addAll(FishRaw);


//======Add to FishCooked======
//
	var cookedFishMinecraft = [null] as IItemStack[];
	if(loadedMods in "minecraft"){
		cookedFishMinecraft = [
			<minecraft:cooked_fish:32767>
		];
	}
	var cookedFishHarvestcraft = [null] as IItemStack[];
	if(loadedMods in "harvestcraft"){
		cookedFishHarvestcraft = [
			<harvestcraft:cookedtofishitem:32767>,
			<harvestcraft:crayfishcookeditem:32767>,
			<harvestcraft:fishandchipsitem:32767>,
			<harvestcraft:fishdinneritem:32767>,
			<harvestcraft:fishlettucewrapitem:32767>,
			<harvestcraft:fishsandwichitem:32767>,
			<harvestcraft:fishsticksitem:32767>,
			<harvestcraft:fishtacoitem:32767>,
			<harvestcraft:leafyfishsandwichitem:32767>,
			<harvestcraft:calamaricookeditem:32767>,
			<harvestcraft:clamcookeditem:32767>,
			<harvestcraft:crabcookeditem:32767>,
			<harvestcraft:frogcookeditem:32767>,
			<harvestcraft:octopuscookeditem:32767>,
			<harvestcraft:scallopcookeditem:32767>,
			<harvestcraft:shrimpcookeditem:32767>,
			<harvestcraft:snailcookeditem:32767>,
			<harvestcraft:salmonpattiesitem:32767>,
			<harvestcraft:coconutshrimpitem:32767>,
			<harvestcraft:shrimpokrahushpuppiesitem:32767>,
			<harvestcraft:turtlecookeditem:32767>
		];
	}
	var cookedFishTinkers = [null] as IItemStack[];
	if(loadedMods in "tconstruct"){
		cookedFishTinkers = [
			<tconstruct:edible:20>,
			<tconstruct:edible:22>
		];
	}
	FishCooked.addItems(cookedFishMinecraft);
	FishCooked.addItems(cookedFishHarvestcraft);
	FishCooked.addItems(cookedFishTinkers);
	<ore:fish>.addAll(FishCooked);


//====== Wood Dust/Pulp ======
//
	<ore:dustWood>.addItems([
		<forestry:wood_pulp>,
		<extratrees:misc:1>,
		<mekanism:sawdust>,
		<techreborn:dust:46>,
		<thermalfoundation:material:800>
		]);
	<ore:dustSawDust>.addAll(<ore:dustWood>);
	<ore:pulpWood>.addAll(<ore:dustWood>);


//======Conversion Recipes======
	recipes.addShapeless("trapdoororedict1", <minecraft:trapdoor>, [Trapdoor]);
	recipes.addShapeless("trappedchestoredict1", <minecraft:trapped_chest>, [ChestTrapped]);
	recipes.addShapeless("chestoredict1", <minecraft:chest>, [Chest]);
	recipes.addShapeless("bedoredict1", <minecraft:bed>, [<ore:bed>]);
	recipes.addShapeless("wooddoororedict1", <minecraft:wooden_door>, [Door]);