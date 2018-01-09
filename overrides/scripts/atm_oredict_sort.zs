import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.game.IGame;

#priority 9001

print(" =================== OreDict Unification/Sorting =================== ");
print(" =================================================================== ");
/*
	Written by: Ordinator (intended for All The Mods packs)
	
	This Script will iterate through all registered OreDicts and "re organize"
	the items associated with that dict in order of mod preference.
	There are many recipes in some mods that use Ore Dictionary, BUT only by
	retrieving the first item listed in that OreDict. It's "compatable" but not
	truly an OreDict recipe.
	
	The order after the first item is irrelevant BUT the items are still sorted
	in order in case one or more of the previous mods are not present. Essentially
	this is a hierarchical system choosing the first one that matches in the list.
	
	This script should be run early (high priority) so other scripts can benefit from
	using "firstItem" oredict function to get an IItemStack for some recipes that
	don't support an IOreDictEntry/IIngredient as an input/output/etc.
*/
	
//====== CONFIG ======
//
/*
	Change order of this list per preference/modpack config
	oredicts will be "rebuilt" with "first item" being the
	first to match one of these. These mods do not need to be
	present in the pack as it's just a string comparison.
	
	TIP: use /ct mods command to get list of mod names
*/
	global modPreference = [
		"minecraft",
		"thermalfoundation",
		"substratum",
		"immersiveengineering",
		"mysticalagriculture",
		"tconstruct",
		"botania",
		"astralsorcery",
		"draconicvolution",
		"psi",
		"soulshardstow",
		"bigreactors",
		"ic2",
		"mekanism",
		"embers",
		"techreborn",
		"contenttweaker",
		"base",
		"jaopca"
		] as string[];


// generate a unique list of all registered IOreDictEntry		
var allOreD as IOreDictEntry[];

for itemDef in game.items {
	for oreD in itemDef.ores {
		if !(oreD in allOreD) {
			allOreD += oreD;
		}
	}
}


// run the function that sorts oredicts
for oreD in allOreD {
	oredictModSort(oreD);
}


function oredictModSort(relatedOreDict as IOreDictEntry	){
	// save all items in seperate array first
	var odItems = relatedOreDict.itemArray as IItemStack[];
	
	//clear oreDict
	relatedOreDict.removeItems(odItems);
	
	// this is probably a realllly inefficient n^2 loop but
	// since it's only on one oredict at a time it's not
	// iterating every item in the game many times over at least
	for mod in modPreference {
	    for item in odItems {
	    	(if item.owner == mod) {
	    		relatedOreDict.add(item);
	    	}
	    }
	}
	
	// re-add all items back
	relatedOreDict.addItems(odItems);
}
