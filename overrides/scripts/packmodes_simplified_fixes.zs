import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#packmode simplified

print(" =================== Simplified Fixes =================== ");
print(" ======================================================== ");
/*
    Fixes a few issues to make "simplified" mode work or make more sense
*/


//====== Extreme Reactor's Graphite ======
//
	furnace.addRecipe(<bigreactors:dustmetals:2>, <ore:dustCoal>, 1);
	furnace.addRecipe(<bigreactors:dustmetals:2>, <ore:dustCharcoal>, 1);
	furnace.addRecipe(<bigreactors:blockmetals:2>, <ore:blockCoal>, 1);
	furnace.addRecipe(<bigreactors:blockmetals:2>, <ore:blockCharcoal>, 1);