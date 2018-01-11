import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#packmode normal simplified

print(" =================== hives =================== ");
print(" ============================================= ");
/*
	Custom recipes for Forestry hives
*/


//====== Variables ======
//
	val hiveEnder = <forestry:beehives:4> as IItemStack; // Ender hive
	val hiveForest = <forestry:beehives> as IItemStack; // Forest hive
	val hiveMarble = <extrabees:hive:3> as IItemStack; // Marble hive
	val hiveMarshy = <forestry:beehives:6> as IItemStack; // Marshy hive
	val hiveMeadows = <forestry:beehives:1> as IItemStack; // Meadows hive
	val hiveModest = <forestry:beehives:2> as IItemStack; // Modest hive
	val hiveNether = <extrabees:hive:2> as IItemStack; // Nether hive
	val hiveRock = <extrabees:hive:1> as IItemStack; // Rock hive
	val hiveTropical = <forestry:beehives:3> as IItemStack; // Tropical hive
	val hiveWater = <extrabees:hive:0> as IItemStack; // Water hive
	val hiveWintry = <forestry:beehives:5> as IItemStack; // Wintry hive


//====== hive Oredict ======
//
	var hivesToAdd = [
		hiveEnder,
		hiveForest,
		hiveMarble,
		hiveMarshy,
		hiveMeadows,
		hiveModest,
		hiveNether,
		hiveRock,
		hiveTropical,
		hiveWater,
		hiveWintry
	] as IItemStack[];
	<ore:beehiveForestry>.addItems(hivesToAdd);


//====== Register Recipes using Function ======
//
	hiveRecipe(hiveEnder,    <minecraft:ender_pearl>,  <minecraft:obsidian>);
	hiveRecipe(hiveForest,   <ore:treeSapling>,        <minecraft:planks:1>);
	hiveRecipe(hiveMarble,   <ore:stoneGranite>,       <ore:stoneMarble>);
	hiveRecipe(hiveMarshy,   <ore:mushroomAny>,        <ore:blockSlime>);
	hiveRecipe(hiveMeadows,  <minecraft:red_flower:*>, <minecraft:grass:0>);
	hiveRecipe(hiveModest,   <minecraft:cactus>,       <minecraft:sandstone:*>);
	hiveRecipe(hiveNether,   <ore:gemQuartz>,          <minecraft:red_nether_brick:0>);
	hiveRecipe(hiveRock,     <ore:stoneDiorite>,       <minecraft:stone:0>);
	hiveRecipe(hiveTropical, <minecraft:vine>,         <minecraft:log:3>);
	hiveRecipe(hiveWater,    <minecraft:dye:0>,        <minecraft:clay:0>);
	hiveRecipe(hiveWintry,   <minecraft:snowball>,     <minecraft:packed_ice:0>);


//====== Function to make hives ======
//
	function hiveRecipe(hive as IItemStack, special as IIngredient, casing as IIngredient){
		/*
			hive recipe format
				SCS
				CNC
				SCS
			S = "special"
			C = "casing"
			N = "net"
		*/
		var GrowEssence = <atmtweaks:item_material:1>;
		
		recipes.addShaped(hive, [
			[special, casing, special],
			[casing, GrowEssence, casing],
			[special, casing, special]
			]);
		}
