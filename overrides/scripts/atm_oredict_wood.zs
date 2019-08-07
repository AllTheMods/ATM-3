import crafttweaker.item.IIngredient as IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;

#packmode normal simplified
//#ignoreBracketErrors

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
	val WoodButton = <ore:buttonWood>;
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
		<extratrees:logs.0:*>,
		<extratrees:logs.1:*>,
		<extratrees:logs.2:*>,
		<extratrees:logs.3:*>,
		<extratrees:logs.4:*>,
		<extratrees:logs.5:*>,
		<extratrees:logs.6:*>,
		<extratrees:logs.7:*>,
		<extratrees:logs.8:*>,
		<extratrees:logs.9:*>,
		<extratrees:logs.fireproof.0:*>,
		<extratrees:logs.fireproof.1:*>,
		<extratrees:logs.fireproof.2:*>,
		<extratrees:logs.fireproof.3:*>,
		<extratrees:logs.fireproof.4:*>,
		<extratrees:logs.fireproof.5:*>,
		<extratrees:logs.fireproof.6:*>,
		<extratrees:logs.fireproof.7:*>,
		<extratrees:logs.fireproof.8:*>,
		<extratrees:logs.fireproof.9:*>,
		<forestry:logs.0:*>,
		<forestry:logs.1:*>,
		<forestry:logs.2:*>,
		<forestry:logs.3:*>,
		<forestry:logs.4:*>,
		<forestry:logs.5:*>,
		<forestry:logs.6:*>,
		<forestry:logs.7:*>,
		<forestry:logs.fireproof.0:*>,
		<forestry:logs.fireproof.1:*>,
		<forestry:logs.fireproof.2:*>,
		<forestry:logs.fireproof.3:*>,
		<forestry:logs.fireproof.4:*>,
		<forestry:logs.fireproof.5:*>,
		<forestry:logs.fireproof.6:*>,
		<forestry:logs.fireproof.7:*>,
		<forestry:logs.vanilla.fireproof.0:*>,
		<forestry:logs.vanilla.fireproof.1:*>,
		//<harvestcraft:pamcinnamon:*>,
		//<harvestcraft:pammaple:*>,
		<minecraft:log:*>,
		<minecraft:log2:*>,
		//<rainboaks:rainboak_log:*>,
		//<randomthings:spectrelog:*>,
		<rustic:log:*>,
		<techreborn:rubber_log:*>,
		//<ic2:rubber_wood>,
		<traverse:fir_log:*>,
		//<terraqueous:trunk1:*>,
		//<terraqueous:trunk2:*>,
		<biomesoplenty:log_0>,
		<biomesoplenty:log_1>,
		<biomesoplenty:log_2>,
		<biomesoplenty:log_3>,
		<biomesoplenty:log_4>,
		//<natura:overworld_logs:*>,
		//<natura:overworld_logs2:*>,
		//<natura:redwood_logs:*>,
		//<natura:nether_logs:*>,
		//<natura:nether_logs2:*>,
		<plants2:log_0:*>,
		<plants2:nether_log:*>,
		<plants2:crystal_log:*>,
		<thaumcraft:log_greatwood:*>,
		<thaumcraft:log_silverwood:*>,
		<thaumcraft:taint_log:*>,
		<thebetweenlands:log_hearthgrove:*>,
		<thebetweenlands:log_nibbletwig:*>,
		<thebetweenlands:weedwood:*>,
		<thebetweenlands:log_sap:*>,
		<twilightforest:twilight_log:*>,
		<twilightforest:magic_log:*>,
		<twilightforest:giant_log:*>,
		<twilightforest:cinder_log:*>
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
		<rustic:painted_wood_white:*>,
		<rustic:painted_wood_orange:*>,
		<rustic:painted_wood_purple:*>,
		<rustic:painted_wood_blue:*>,
		<rustic:painted_wood_brown:*>,
		<rustic:painted_wood_green:*>,
		<rustic:painted_wood_red:*>,
		<rustic:painted_wood_black:*>,
		<rustic:painted_wood_magenta:*>,
		<rustic:painted_wood_light_blue:*>,
		<rustic:painted_wood_yellow:*>,
		<rustic:painted_wood_lime:*>,
		<rustic:painted_wood_pink:*>,
		<rustic:painted_wood_gray:*>,
		<rustic:painted_wood_silver:*>,
		<rustic:painted_wood_cyan:*>,
		<biomesoplenty:planks_0:*>,
		<chisel:planks-acacia:*>,
		<chisel:planks-birch:*>,
		<chisel:planks-dark-oak:*>,
		<chisel:planks-jungle:*>,
		<chisel:planks-oak:*>,
		<chisel:planks-spruce:*>,
		<embers:sealed_planks:*>,
		<forestry:planks.0:*>,
		<forestry:planks.1:*>,
		<forestry:planks.fireproof.0:*>,
		<forestry:planks.fireproof.1:*>,
		<forestry:planks.vanilla.fireproof.0:*>,
		<minecraft:planks:*>,
		<quark:stained_planks:*>,
		<quark:vertical_planks:*>,
		<quark:vertical_stained_planks:*>,
		<rustic:planks:*>,
		<techreborn:rubber_planks:*>,
		<traverse:fir_planks:*>,
		//<terraqueous:planks:*>
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
		<minecraft:chest:*>,
		<minecraft:ender_chest:*>,
		<minecraft:trapped_chest:*>,
		<actuallyadditions:block_treasure_chest:*>,
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
		<quark:custom_chest:*>,
		<quark:custom_chest_trap:*>,
	] as IItemStack[];
	Chest.addItems(ChestsToAdd);


//======Add to chestWood======
//
	var WoodChestToAdd = [
		<minecraft:chest:*>,
		<minecraft:trapped_chest:*>,
		<bibliocraft:framedchest:0>,
		<bibliocraft:framedchest:1>,
		<bibliocraft:framedchest:2>,
		<bibliocraft:framedchest:3>,
		<bibliocraft:framedchest:4>,
		<bibliocraft:framedchest:5>,
		<bibliocraft:framedchest:6>,
		//<randomthings:specialChest:0>,
		//<randomthings:specialChest:1>,
		<quark:custom_chest:*>,
		<quark:custom_chest_trap:*>,
	] as IItemStack[];
	ChestWood.addItems(WoodChestToAdd);


//======Add to chestTrapped======
//
	var TrappedChestToAdd = [
		<minecraft:trapped_chest:*>,
		<quark:custom_chest_trap:*>
	] as IItemStack[];
	ChestTrapped.addItems(TrappedChestToAdd);


//======Add to ore:bed======
//
	var BedToAdd = [
		<minecraft:bed:*>,
		<cyclicmagic:sleeping_mat:*>
	] as IItemStack[];
	Bed.addItems(BedToAdd);


//======Add to ore:buttonWood======
//
	var ButtonsToAdd = [
		//<natura:darkwood_button>,
		//<natura:sakura_button>,
		//<natura:hopseed_button>,
		//<natura:eucalyptus_button>,
		//<natura:willow_button>,
		//<natura:tiger_button>,
		//<natura:amaranth_button>,
		//<natura:silverbell_button>,
		//<natura:maple_button>,
		//<natura:nether_button>,
		//<abyssalcraft:dltbutton>,
		<minecraft:wooden_button>,
		//<natura:darkwood_button>,
		//<natura:fusewood_button>,
		//<natura:bloodwood_button>,
		//<natura:ghostwood_button>,
		//<natura:redwood_button>
	] as IItemStack[];
	WoodButton.addItems(ButtonsToAdd);


//======Add to Trapdoor======
//
	var TrapdoorToAdd = [
		<minecraft:trapdoor:*>,
		<quark:dark_oak_trapdoor>,
		<quark:spruce_trapdoor>,
		<quark:birch_trapdoor>,
		<quark:jungle_trapdoor>,
		<quark:acacia_trapdoor>
	] as IItemStack[];
	Trapdoor.addItems(TrapdoorToAdd);


//======Add to Door======
	var DoorToAdd = [
		<minecraft:wooden_door:*>,
		<traverse:fir_door:*>,
		<biomesoplenty:fir_door>,
		<biomesoplenty:cherry_door>,
		<biomesoplenty:ebony_door>,
		<biomesoplenty:ethereal_door>,
		<biomesoplenty:eucalyptus_door>,
		<biomesoplenty:hellbark_door>,
		<biomesoplenty:jacaranda_door>,
		<biomesoplenty:magic_door>,
		<forestry:doors.acacia:*>, //Desert Acacia Door
		<forestry:doors.balsa:*>, //Balsa Door
		<forestry:doors.baobab:*>, //Baobab Door
		<forestry:doors.cherry:*>, //Cherry Door
		<forestry:doors.chestnut:*>, //Chestnut Door
		<forestry:doors.citrus:*>, //Citrus Door
		<forestry:doors.cocobolo:*>, //Cocobolo Door
		<forestry:doors.ebony:*>, //Ebony Door
		<forestry:doors.giganteum:*>, //Giant Sequoia Door
		<forestry:doors.greenheart:*>, //Greenheart Door
		<forestry:doors.ipe:*>, //Ipe Door
		<forestry:doors.kapok:*>, //Kapok Door
		<forestry:doors.larch:*>, //Larch Door
		<forestry:doors.lime:*>, //Lime Door
		<forestry:doors.mahoe:*>, //Mahoe Door
		<forestry:doors.mahogany:*>, //Mahogany Door
		<forestry:doors.maple:*>, //Maple Door
		<forestry:doors.padauk:*>, //Padauk Door
		<forestry:doors.palm:*>, //Palm Door
		<forestry:doors.papaya:*>, //Papaya Door
		<forestry:doors.pine:*>, //Pine Door
		<forestry:doors.plum:*>, //Plum Door
		<forestry:doors.poplar:*>, //Poplar Door
		<forestry:doors.sequoia:*>, //Sequoia Door
		<forestry:doors.teak:*>, //Teak Door
		<forestry:doors.walnut:*>, //Walnut Door
		<forestry:doors.wenge:*>, //Wenge Door
		<forestry:doors.willow:*>, //Willow Door
		<forestry:doors.zebrawood:*>, //Zebrawood Door
		<biomesoplenty:mahogany_door>,
		<biomesoplenty:mangrove_door>,
		<biomesoplenty:palm_door>,
		<biomesoplenty:pine_door>,
		<biomesoplenty:redwood_door>,
		<biomesoplenty:sacred_oak_door>,
		<biomesoplenty:umbran_door>,
		<biomesoplenty:willow_door>,
		<minecraft:acacia_door:*>,
		<minecraft:jungle_door:*>,
		<minecraft:birch_door:*>,
		<minecraft:spruce_door:*>,
		<minecraft:dark_oak_door:*>
	] as IItemStack[];
	Door.addItems(DoorToAdd);


//======Add to Seeds======
//
	var SeedsToAdd= [
		<actuallyadditions:item_canola_seed:*>,
		<actuallyadditions:item_coffee_seed:*>,
		<actuallyadditions:item_flax_seed:*>,
		<actuallyadditions:item_misc:23>,
		<actuallyadditions:item_misc:24>,
		<actuallyadditions:item_rice_seed:*>,
		//<attaineddrops2:seed:*>,
		<cyclicmagic:sprout_seed:*>,
		<embers:seed:*>,
		/*
		<harvestcraft:artichokeseeditem:*>,
		<harvestcraft:asparagusseeditem:*>,
		<harvestcraft:bambooshootseeditem:*>,
		<harvestcraft:barleyseeditem:*>,
		<harvestcraft:beanseeditem:*>,
		<harvestcraft:beetseeditem:*>,
		<harvestcraft:bellpepperseeditem:*>,
		<harvestcraft:blackberryseeditem:*>,
		<harvestcraft:blueberryseeditem:*>,
		<harvestcraft:broccoliseeditem:*>,
		<harvestcraft:brusselsproutseeditem:*>,
		<harvestcraft:cabbageseeditem:*>,
		<harvestcraft:cactusfruitseeditem:*>,
		<harvestcraft:candleberryseeditem:*>,
		<harvestcraft:cantaloupeseeditem:*>,
		<harvestcraft:cauliflowerseeditem:*>,
		<harvestcraft:celeryseeditem:*>,
		<harvestcraft:chilipepperseeditem:*>,
		<harvestcraft:coffeeseeditem:*>,
		<harvestcraft:cornseeditem:*>,
		<harvestcraft:cottonseeditem:*>,
		<harvestcraft:cranberryseeditem:*>,
		<harvestcraft:cucumberseeditem:*>,
		<harvestcraft:curryleafseeditem:*>,
		<harvestcraft:eggplantseeditem:*>,
		<harvestcraft:garlicseeditem:*>,
		<harvestcraft:gingerseeditem:*>,
		<harvestcraft:grapeseeditem:*>,
		<harvestcraft:kiwiseeditem:*>,
		<harvestcraft:leekseeditem:*>,
		<harvestcraft:lettuceseeditem:*>,
		<harvestcraft:mustardseeditem:*>,
		<harvestcraft:mustardseedsitem:*>,
		<harvestcraft:oatsseeditem:*>,
		<harvestcraft:okraseeditem:*>,
		<harvestcraft:onionseeditem:*>,
		<harvestcraft:parsnipseeditem:*>,
		<harvestcraft:peanutseeditem:*>,
		<harvestcraft:peasseeditem:*>,
		<harvestcraft:pineappleseeditem:*>,
		<harvestcraft:radishseeditem:*>,
		<harvestcraft:raspberryseeditem:*>,
		<harvestcraft:rhubarbseeditem:*>,
		<harvestcraft:riceseeditem:*>,
		<harvestcraft:roastedpumpkinseedsitem:*>,
		<harvestcraft:rutabagaseeditem:*>,
		<harvestcraft:ryeseeditem:*>,
		<harvestcraft:saltedsunflowerseedsitem:*>,
		<harvestcraft:scallionseeditem:*>,
		<harvestcraft:seaweedseeditem:*>,
		<harvestcraft:seedsoupitem:*>,
		<harvestcraft:sesameseedsitem:*>,
		<harvestcraft:sesameseedsseeditem:*>,
		<harvestcraft:soybeanseeditem:*>,
		<harvestcraft:spiceleafseeditem:*>,
		<harvestcraft:spinachseeditem:*>,
		<harvestcraft:strawberryseeditem:*>,
		<harvestcraft:sunflowerseedsitem:*>,
		<harvestcraft:sweetpotatoseeditem:*>,
		<harvestcraft:teaseeditem:*>,
		<harvestcraft:toastedsesameseedsitem:*>,
		<harvestcraft:tomatoseeditem:*>,
		<harvestcraft:turnipseeditem:*>,
		<harvestcraft:waterchestnutseeditem:*>,
		<harvestcraft:whitemushroomseeditem:*>,
		<harvestcraft:wintersquashseeditem:*>,
		<harvestcraft:zucchiniseeditem:*>,
		*/
		<immersiveengineering:seed:*>,
		<minecraft:beetroot_seeds:*>,
		<minecraft:melon_seeds:*>,
		<minecraft:pumpkin_seeds:*>,
		<minecraft:wheat_seeds:*>,
		//<randomthings:grassseeds:*>,
		//<resourcefulcrops:seed:*>,
		//<roots:aubergine_seeds:*>,
		//<roots:moontinged_seed:*>,
		<rustic:apple_seeds:*>,
		<rustic:chili_pepper_seeds:*>,
		<rustic:grape_stem:*>,
		<rustic:tomato_seeds:*>
	] as IItemStack[];
	<ore:listAllSeed>.addItems(SeedsToAdd);
	<ore:listAllSeed>.addAll(Seed);


//======Add to FishRaw======
//
	var RawFishToAdd = [
		/*
		<harvestcraft:catfishrawitem:*>,
		<harvestcraft:crayfishrawitem:*>,
		<harvestcraft:greenheartfishitem:*>,
		<harvestcraft:jellyfishrawitem:*>,
		<harvestcraft:mudfishrawitem:*>,
		<harvestcraft:rawtofishitem:*>,
		<harvestcraft:calamarirawitem:*>,
		<harvestcraft:anchovyrawitem:*>,
		<harvestcraft:bassrawitem:*>,
		<harvestcraft:carprawitem:*>,
		<harvestcraft:charrrawitem:*>,
		<harvestcraft:clamrawitem:*>,
		<harvestcraft:crabrawitem:*>,
		<harvestcraft:eelrawitem:*>,
		<harvestcraft:frograwitem:*>,
		<harvestcraft:grouperrawitem:*>,
		<harvestcraft:herringrawitem:*>,
		<harvestcraft:octopusrawitem:*>,
		<harvestcraft:perchrawitem:*>,
		<harvestcraft:scalloprawitem:*>,
		<harvestcraft:shrimprawitem:*>,
		<harvestcraft:snailrawitem:*>,
		<harvestcraft:snapperrawitem:*>,
		<harvestcraft:tilapiarawitem:*>,
		<harvestcraft:troutrawitem:*>,
		<harvestcraft:tunarawitem:*>,
		<harvestcraft:turtlerawitem:*>,
		<harvestcraft:walleyerawitem:*>,
		<harvestcraft:sardinerawitem:*>,
		<harvestcraft:musselrawitem:*>,
		*/
		<minecraft:fish:*>
	] as IItemStack[];
	FishRaw.addItems(RawFishToAdd);
	<ore:fish>.addAll(FishRaw);


//======Add to FishCooked======
//
	var cookedFishMinecraft = [null] as IItemStack[];
	if(loadedMods in "minecraft"){
		cookedFishMinecraft = [
			<minecraft:cooked_fish:*>
		];
	}
	var cookedFishHarvestcraft = [null] as IItemStack[];
	if(loadedMods in "harvestcraft"){
		cookedFishHarvestcraft = [
			/*
			<harvestcraft:cookedtofishitem:*>,
			<harvestcraft:crayfishcookeditem:*>,
			<harvestcraft:fishandchipsitem:*>,
			<harvestcraft:fishdinneritem:*>,
			<harvestcraft:fishlettucewrapitem:*>,
			<harvestcraft:fishsandwichitem:*>,
			<harvestcraft:fishsticksitem:*>,
			<harvestcraft:fishtacoitem:*>,
			<harvestcraft:leafyfishsandwichitem:*>,
			<harvestcraft:calamaricookeditem:*>,
			<harvestcraft:clamcookeditem:*>,
			<harvestcraft:crabcookeditem:*>,
			<harvestcraft:frogcookeditem:*>,
			<harvestcraft:octopuscookeditem:*>,
			<harvestcraft:scallopcookeditem:*>,
			<harvestcraft:shrimpcookeditem:*>,
			<harvestcraft:snailcookeditem:*>,
			<harvestcraft:salmonpattiesitem:*>,
			<harvestcraft:coconutshrimpitem:*>,
			<harvestcraft:shrimpokrahushpuppiesitem:*>,
			<harvestcraft:turtlecookeditem:*>
			*/
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
	//FishCooked.addItems(cookedFishHarvestcraft);
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
  
  
//====== Specific Furnace Recipes ======
	furnace.addRecipe(<minecraft:coal:1>,<techreborn:rubber_log>);
	furnace.addRecipe(<minecraft:coal:1>,<advancedrocketry:alienwood>);