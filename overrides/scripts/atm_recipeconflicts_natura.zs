import crafttweaker.item.IIngredient as IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;

#modloaded natura

print(" ========= Natura Wood Items ========= ");
print(" ===================================== ");
/*
	Natura has many "flavors" of wooden items that take a specific Natura plank/ingredient 
	to produce a specific Natura wood item matching the input's wood type.
	
	The problem is that these Natura plank/ingredients also belong to broad ore dictionaries
	like "ore:plankWood" so they can be used interchangeably with other planks, except when 
	there is a conflict for a specific Natura item vs. an ore dictionary compatable vanilla recipe.
	
	This script will remove the default Natura recipes for the conflicting items and replace 
	those recipes with a "conversion" recipe instead.
	
	For example, to get a Natura amaranth Button, the new recipe will be a Vanilla Button + amaranth Planks
*/


//====== amaranth ======
//
	recipeNaturaChange("amaranth","bookshelf",<natura:overworld_bookshelves:2>); 
	recipeNaturaChange("amaranth","button",<natura:amaranth_button:0>); 
	recipeNaturaChange("amaranth","plate",<natura:amaranth_pressure_plate:0>); 
	recipeNaturaChange("amaranth","stick",<natura:sticks:2>); 
	recipeNaturaChange("amaranth","trapdoor",<natura:amaranth_trap_door:0>); 
	recipeNaturaChange("amaranth","workbench",<natura:overworld_workbenches:2>); 


//====== bloodwood ======
//
	recipeNaturaChange("bloodwood","bookshelf",<natura:nether_bookshelves:1>); 
	recipeNaturaChange("bloodwood","button",<natura:bloodwood_button:0>); 
	recipeNaturaChange("bloodwood","axe",<natura:bloodwood_axe:0>); 
	recipeNaturaChange("bloodwood","hoe",<natura:bloodwood_hoe:0>); 
	recipeNaturaChange("bloodwood","pickaxe",<natura:bloodwood_pickaxe:0>); 
	recipeNaturaChange("bloodwood","plate",<natura:bloodwood_pressure_plate:0>); 
	recipeNaturaChange("bloodwood","shovel",<natura:bloodwood_shovel:0>); 
	recipeNaturaChange("bloodwood","stick",<natura:sticks:12>); 
	recipeNaturaChange("bloodwood","sword",<natura:bloodwood_sword:0>); 
	recipeNaturaChange("bloodwood","trapdoor",<natura:bloodwood_trap_door:0>); 
	recipeNaturaChange("bloodwood","workbench",<natura:nether_workbenches:1>); 
	recipeNaturaChange("bloodwood","bowl",<natura:empty_bowls:1>); 


//====== darkwood ======
//
	recipeNaturaChange("darkwood","bowl",<natura:empty_bowls:2>); 
	recipeNaturaChange("darkwood","bookshelf",<natura:nether_bookshelves:2>); 
	recipeNaturaChange("darkwood","button",<natura:darkwood_button:0>); 
	recipeNaturaChange("darkwood","axe",<natura:darkwood_axe:0>); 
	recipeNaturaChange("darkwood","hoe",<natura:darkwood_hoe:0>); 
	recipeNaturaChange("darkwood","pickaxe",<natura:darkwood_pickaxe:0>); 
	recipeNaturaChange("darkwood","plate",<natura:darkwood_pressure_plate:0>); 
	recipeNaturaChange("darkwood","shovel",<natura:darkwood_shovel:0>); 
	recipeNaturaChange("darkwood","stick",<natura:sticks:10>); 
	recipeNaturaChange("darkwood","sword",<natura:darkwood_sword:0>); 
	recipeNaturaChange("darkwood","trapdoor",<natura:darkwood_trap_door:0>); 
	recipeNaturaChange("darkwood","workbench",<natura:nether_workbenches:2>); 


//====== eucalyptus ======
//
	recipeNaturaChange("eucalyptus","bookshelf",<natura:overworld_bookshelves:5>); 
	recipeNaturaChange("eucalyptus","button",<natura:eucalyptus_button:0>); 
	recipeNaturaChange("eucalyptus","plate",<natura:eucalyptus_pressure_plate:0>); 
	recipeNaturaChange("eucalyptus","stick",<natura:sticks:5>); 
	recipeNaturaChange("eucalyptus","trapdoor",<natura:eucalyptus_trap_door:0>); 
	recipeNaturaChange("eucalyptus","workbench",<natura:overworld_workbenches:5>); 


//====== fusewood ======
//
	recipeNaturaChange("fusewood","bowl",<natura:empty_bowls:3>); 
	recipeNaturaChange("fusewood","bookshelf",<natura:nether_bookshelves:3>); 
	recipeNaturaChange("fusewood","button",<natura:fusewood_button:0>); 
	recipeNaturaChange("fusewood","axe",<natura:fusewood_axe:0>); 
	recipeNaturaChange("fusewood","hoe",<natura:fusewood_hoe:0>); 
	recipeNaturaChange("fusewood","pickaxe",<natura:fusewood_pickaxe:0>); 
	recipeNaturaChange("fusewood","plate",<natura:fusewood_pressure_plate:0>); 
	recipeNaturaChange("fusewood","shovel",<natura:fusewood_shovel:0>); 
	recipeNaturaChange("fusewood","stick",<natura:sticks:11>); 
	recipeNaturaChange("fusewood","sword",<natura:fusewood_sword:0>); 
	recipeNaturaChange("fusewood","trapdoor",<natura:fusewood_trap_door:0>); 
	recipeNaturaChange("fusewood","workbench",<natura:nether_workbenches:3>); 


//====== ghostwood ======
//
	recipeNaturaChange("ghostwood","bowl",<natura:empty_bowls:0>); 
	recipeNaturaChange("ghostwood","bookshelf",<natura:nether_bookshelves:0>); 
	recipeNaturaChange("ghostwood","button",<natura:ghostwood_button:0>); 
	recipeNaturaChange("ghostwood","axe",<natura:ghostwood_axe:0>); 
	recipeNaturaChange("ghostwood","hoe",<natura:ghostwood_hoe:0>); 
	recipeNaturaChange("ghostwood","pickaxe",<natura:ghostwood_pickaxe:0>); 
	recipeNaturaChange("ghostwood","plate",<natura:ghostwood_pressure_plate:0>); 
	recipeNaturaChange("ghostwood","shovel",<natura:ghostwood_shovel:0>); 
	recipeNaturaChange("ghostwood","stick",<natura:sticks:9>); 
	recipeNaturaChange("ghostwood","sword",<natura:ghostwood_sword:0>); 
	recipeNaturaChange("ghostwood","trapdoor",<natura:ghostwood_trap_door:0>); 
	recipeNaturaChange("ghostwood","workbench",<natura:nether_workbenches:0>); 


//====== hopseed ======
//
	recipeNaturaChange("hopseed","bookshelf",<natura:overworld_bookshelves:6>); 
	recipeNaturaChange("hopseed","button",<natura:hopseed_button:0>); 
	recipeNaturaChange("hopseed","plate",<natura:hopseed_pressure_plate:0>); 
	recipeNaturaChange("hopseed","stick",<natura:sticks:6>); 
	recipeNaturaChange("hopseed","trapdoor",<natura:hopseed_trap_door:0>); 
	recipeNaturaChange("hopseed","workbench",<natura:overworld_workbenches:6>); 


//====== maple ======
//
	recipeNaturaChange("maple","bookshelf",<natura:overworld_bookshelves:0>); 
	recipeNaturaChange("maple","button",<natura:maple_button:0>); 
	recipeNaturaChange("maple","plate",<natura:maple_pressure_plate:0>); 
	recipeNaturaChange("maple","stick",<natura:sticks:0>); 
	recipeNaturaChange("maple","trapdoor",<natura:maple_trap_door:0>); 
	recipeNaturaChange("maple","workbench",<natura:overworld_workbenches:0>); 


//====== redwood ======
//
	recipeNaturaChange("redwood","bookshelf",<natura:overworld_bookshelves:8>); 
	recipeNaturaChange("redwood","button",<natura:redwood_button:0>); 
	recipeNaturaChange("redwood","plate",<natura:redwood_pressure_plate:0>); 
	recipeNaturaChange("redwood","stick",<natura:sticks:8>); 
	recipeNaturaChange("redwood","trapdoor",<natura:redwood_trap_door:0>); 
	recipeNaturaChange("redwood","workbench",<natura:overworld_workbenches:8>); 


//====== sakura ======
//
	recipeNaturaChange("sakura","bookshelf",<natura:overworld_bookshelves:7>); 
	recipeNaturaChange("sakura","button",<natura:sakura_button:0>); 
	recipeNaturaChange("sakura","plate",<natura:sakura_pressure_plate:0>); 
	recipeNaturaChange("sakura","stick",<natura:sticks:7>); 
	recipeNaturaChange("sakura","trapdoor",<natura:sakura_trap_door:0>); 
	recipeNaturaChange("sakura","workbench",<natura:overworld_workbenches:7>); 


//====== silverbell ======
//
	recipeNaturaChange("silverbell","bookshelf",<natura:overworld_bookshelves:1>); 
	recipeNaturaChange("silverbell","button",<natura:silverbell_button:0>); 
	recipeNaturaChange("silverbell","plate",<natura:silverbell_pressure_plate:0>); 
	recipeNaturaChange("silverbell","stick",<natura:sticks:1>); 
	recipeNaturaChange("silverbell","trapdoor",<natura:silverbell_trap_door:0>); 
	recipeNaturaChange("silverbell","workbench",<natura:overworld_workbenches:1>); 


//====== tiger ======
//
	recipeNaturaChange("tiger","bookshelf",<natura:overworld_bookshelves:3>); 
	recipeNaturaChange("tiger","button",<natura:tiger_button:0>); 
	recipeNaturaChange("tiger","plate",<natura:tiger_pressure_plate:0>); 
	recipeNaturaChange("tiger","stick",<natura:sticks:3>); 
	recipeNaturaChange("tiger","trapdoor",<natura:tiger_trap_door:0>); 
	recipeNaturaChange("tiger","workbench",<natura:overworld_workbenches:3>); 


//====== willow ======
//
	recipeNaturaChange("willow","bookshelf",<natura:overworld_bookshelves:4>); 
	recipeNaturaChange("willow","button",<natura:willow_button:0>); 
	recipeNaturaChange("willow","plate",<natura:willow_pressure_plate:0>); 
	recipeNaturaChange("willow","stick",<natura:sticks:4>); 
	recipeNaturaChange("willow","trapdoor",<natura:willow_trap_door:0>); 
	recipeNaturaChange("willow","workbench",<natura:overworld_workbenches:4>); 


//====== Function to change recipes ======
//
	function recipeNaturaChange(
		woodKind as string, 
		itemKind as string, 
		itemNatura as IItemStack 
	) { 
		//Define "Associative Array" for Natura plank types
		val plankTypes = {
			amaranth : <natura:overworld_planks:2>,
			bloodwood : <natura:nether_planks:1>,
			darkwood : <natura:nether_planks:2>,
			eucalyptus : <natura:overworld_planks:5>,
			fusewood : <natura:nether_planks:3>,
			ghostwood : <natura:nether_planks:0>,
			hopseed : <natura:overworld_planks:6>,
			maple : <natura:overworld_planks:0>,
			redwood : <natura:overworld_planks:8>,
			sakura : <natura:overworld_planks:7>,
			silverbell : <natura:overworld_planks:1>,
			tiger : <natura:overworld_planks:3>,
			willow : <natura:overworld_planks:4>
		} as IItemStack[string];

		//Define "Associative Array" for Item Types
		val itemTypes = {
			bookshelf : <minecraft:bookshelf>, 
			bowl : <minecraft:bowl>, 
			button : <minecraft:wooden_button>, 
			axe : <minecraft:wooden_axe>, 
			hoe : <minecraft:wooden_hoe>, 
			pickaxe : <minecraft:wooden_pickaxe>, 
			plate : <minecraft:wooden_pressure_plate>, 
			shovel : <minecraft:wooden_shovel>, 
			stick : <minecraft:stick>, 
			sword : <minecraft:wooden_sword>, 
			trapdoor : <ore:trapdoorWood>, 
			workbench : <ore:crafterWood>
		} as IIngredient[string];

		//define output quantity based on type
		var outQty = 1 as byte;
		if(itemKind = "bowl") { var outQty = 2; }
		if(itemKind = "stick") { var outQty = 4; }
		
		//remove recipe first
		recipes.remove(itemNatura);
		
		//add conversion recipe
		recipes.addShapeless(itemNatura * outQty, [
			itemTypes[itemKind], plankTypes[woodKind]
			]);
}
