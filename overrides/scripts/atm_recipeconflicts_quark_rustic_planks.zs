import crafttweaker.item.IIngredient as IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;

#packmode normal simplified
#modloaded quark rustic

print(" ========= Quark vs Rustic colored planks ========= ");
print(" ================================================== ");

	//Remove all recipes for quark variant so only way is to get rustic first
	recipes.remove(<quark:stained_planks:0>);
	recipes.remove(<quark:stained_planks:1>);
	recipes.remove(<quark:stained_planks:10>);
	recipes.remove(<quark:stained_planks:11>);
	recipes.remove(<quark:stained_planks:12>);
	recipes.remove(<quark:stained_planks:13>);
	recipes.remove(<quark:stained_planks:14>);
	recipes.remove(<quark:stained_planks:15>);
	recipes.remove(<quark:stained_planks:2>);
	recipes.remove(<quark:stained_planks:3>);
	recipes.remove(<quark:stained_planks:4>);
	recipes.remove(<quark:stained_planks:5>);
	recipes.remove(<quark:stained_planks:6>);
	recipes.remove(<quark:stained_planks:7>);
	recipes.remove(<quark:stained_planks:8>);
	recipes.remove(<quark:stained_planks:9>);

	convertRecipe(<quark:stained_planks:0>, <rustic:painted_wood_white:0>);
	convertRecipe(<quark:stained_planks:1>, <rustic:painted_wood_orange:0>);
	convertRecipe(<quark:stained_planks:10>, <rustic:painted_wood_purple:0>);
	convertRecipe(<quark:stained_planks:11>, <rustic:painted_wood_blue:0>);
	convertRecipe(<quark:stained_planks:12>, <rustic:painted_wood_brown:0>);
	convertRecipe(<quark:stained_planks:13>, <rustic:painted_wood_green:0>);
	convertRecipe(<quark:stained_planks:14>, <rustic:painted_wood_red:0>);
	convertRecipe(<quark:stained_planks:15>, <rustic:painted_wood_black:0>);
	convertRecipe(<quark:stained_planks:2>, <rustic:painted_wood_magenta:0>);
	convertRecipe(<quark:stained_planks:3>, <rustic:painted_wood_light_blue:0>);
	convertRecipe(<quark:stained_planks:4>, <rustic:painted_wood_yellow:0>);
	convertRecipe(<quark:stained_planks:5>, <rustic:painted_wood_lime:0>);
	convertRecipe(<quark:stained_planks:6>, <rustic:painted_wood_pink:0>);
	convertRecipe(<quark:stained_planks:7>, <rustic:painted_wood_gray:0>);
	convertRecipe(<quark:stained_planks:8>, <rustic:painted_wood_silver:0>);
	convertRecipe(<quark:stained_planks:9>, <rustic:painted_wood_cyan:0>);
	
	convertRecipe(<rustic:painted_wood_black:0>, <quark:stained_planks:15>);
	convertRecipe(<rustic:painted_wood_blue:0>, <quark:stained_planks:11>);
	convertRecipe(<rustic:painted_wood_brown:0>, <quark:stained_planks:12>);
	convertRecipe(<rustic:painted_wood_cyan:0>, <quark:stained_planks:9>);
	convertRecipe(<rustic:painted_wood_gray:0>, <quark:stained_planks:7>);
	convertRecipe(<rustic:painted_wood_green:0>, <quark:stained_planks:13>);
	convertRecipe(<rustic:painted_wood_light_blue:0>, <quark:stained_planks:3>);
	convertRecipe(<rustic:painted_wood_lime:0>, <quark:stained_planks:5>);
	convertRecipe(<rustic:painted_wood_magenta:0>, <quark:stained_planks:2>);
	convertRecipe(<rustic:painted_wood_orange:0>, <quark:stained_planks:1>);
	convertRecipe(<rustic:painted_wood_pink:0>, <quark:stained_planks:6>);
	convertRecipe(<rustic:painted_wood_purple:0>, <quark:stained_planks:10>);
	convertRecipe(<rustic:painted_wood_red:0>, <quark:stained_planks:14>);
	convertRecipe(<rustic:painted_wood_silver:0>, <quark:stained_planks:8>);
	convertRecipe(<rustic:painted_wood_white:0>, <quark:stained_planks:0>);
	convertRecipe(<rustic:painted_wood_yellow:0>, <quark:stained_planks:4>);


//====== Function to convert wood ======
//
	function convertRecipe(x as IIngredient, y as IItemStack){
	//                     x = input         y = output
		
		recipes.addShapeless(y*8, [x,x,x,x,x,x,x,x,x]);
	}