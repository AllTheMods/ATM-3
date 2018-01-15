import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.game.IGame;
import crafttweaker.item.IItemDefinition;

#priority 9001

print(" =================== Block/Ingot/Nugget Unification =================== ");
print(" ====================================================================== ");
/*
	Written by: Ordinator (intended for All The Mods packs)
    
	This script's purpose is to forcibly re-define the crafting recipes for
	converting a block to-and-from ingots and ingots to-and-from nuggets.
    
	Along the way it will remove any other "conflicting" recipes and also add
	a "conversion recipe" if players somehow end up with the "wrong" type
	This works best when paired with the "OreDict Unification/Sorting" script

	It will iterate through the OreDict and "re organize"
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
	global modPreference as string[] = [
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
		"jaopca",
		"chisel"
		];


//====== Sort the OreDict ======
//
function oredictModSort(relatedOreDict as IOreDictEntry	){
	if (!relatedOreDict.empty) {
		// save all items in seperate array first
		var odItems = relatedOreDict.itemArray as IItemStack[];
		
		//clear oreDict
		relatedOreDict.removeItems(odItems);
		
		// this is probably a realllly inefficient n^2 loop but
		// since it's only on one oredict at a time it's not
		// iterating every item in the game many times over at least
		for mod in modPreference {
			if (loadedMods in mod) {
			    for x in odItems {
			    	if (x.definition.owner == mod) {
			    		print("Adding "+x.name+" to OreDict "+relatedOreDict.name);
			    		relatedOreDict.add(x);
			    	}
		    	}
		    }
		}
		// re-add all items back (catch-all)
		relatedOreDict.addItems(odItems);
	}
}


//====== Custom "FirstItem" based on preference config
//
function firstItemCustom(relatedOreDict as IOreDictEntry) as IItemStack {
	var odItems = relatedOreDict.itemArray as IItemStack[];
	for mod in modPreference {
		if (loadedMods in mod) {
			for x in odItems {
				if (x.definition.owner == mod) {
					return x;
				}
			}
		}
	}
	return relatedOreDict.firstItem;
}


//====== Remap nugget-ingot-block recipes ======
//
function fixMetals (
	oredictBlock  as IOreDictEntry,
	oredictIngot  as IOreDictEntry,
	oredictNugget as IOreDictEntry
	) as int {

	//make sure we're not working with empty oredicts
	//the nulls/nothings cause problems
	if ( (oredictBlock.empty) | (oredictIngot.empty) | (oredictNugget.empty) ) {return 1;}
		
	// Get the "master" (first) item from oredict
	// NOTE: this is why using oredict sort script first (priority) can enhance this script's usefulness
	var metalBlock  = firstItemCustom(oredictBlock)  as IItemStack;
	var metalIngot  = firstItemCustom(oredictIngot)  as IItemStack;
	var metalNugget = firstItemCustom(oredictNugget) as IItemStack;

	//make sure we have valid items
	var boolBlock = metalBlock as bool;
	var boolIngot = metalIngot as bool;
	var boolNugget = metalNugget as bool;

	if !( (boolBlock) & (boolIngot) & (boolNugget) ) {return 1;}

	// "sort" the oredicts
	//oredictModSort(oredictBlock);
	//oredictModSort(oredictIngot);
	//oredictModSort(oredictNugget);

	print("Starting unify processing of "+oredictBlock.name+"["+metalBlock.name+"], "
										 +oredictIngot.name+"["+metalIngot.name+"], "
										 +oredictNugget.name+"["+metalNugget.name+"]" );

	// remove any recipes for nuggets <-> ingots <-> blocks
	for itemB in oredictBlock.items {
		for itemI in oredictIngot.items {
			for itemN in oredictNugget.items {
				
				//nugget -> ingot
				recipes.removeShaped(itemI, [[itemN,itemN,itemN],[itemN,itemN,itemN],[itemN,itemN,itemN]]);
				recipes.removeShapeless(itemI, [itemN,itemN,itemN,itemN,itemN,itemN,itemN,itemN,itemN], false);
				recipes.removeShaped(itemI, [[oredictNugget,oredictNugget,oredictNugget],[oredictNugget,oredictNugget,oredictNugget],[oredictNugget,oredictNugget,oredictNugget]]);
				recipes.removeShapeless(itemI, [oredictNugget,oredictNugget,oredictNugget,oredictNugget,oredictNugget,oredictNugget,oredictNugget,oredictNugget,oredictNugget], false);
				
				// ingot -> nugget
				recipes.removeShaped(itemN*9, [[itemI]]);
				recipes.removeShapeless(itemN*9, [itemI], false);
				recipes.removeShaped(itemN*9, [[oredictIngot]]);
				recipes.removeShapeless(itemN*9, [oredictIngot], false);
			}
			
			// ingot -> block
			recipes.removeShaped(itemB, [[itemI,itemI,itemI],[itemI,itemI,itemI],[itemI,itemI,itemI]]);
			recipes.removeShapeless(itemB, [itemI,itemI,itemI,itemI,itemI,itemI,itemI,itemI,itemI], false);
			recipes.removeShaped(itemB, [[oredictIngot,oredictIngot,oredictIngot],[oredictIngot,oredictIngot,oredictIngot],[oredictIngot,oredictIngot,oredictIngot]]);
			recipes.removeShapeless(itemB, [oredictIngot,oredictIngot,oredictIngot,oredictIngot,oredictIngot,oredictIngot,oredictIngot,oredictIngot,oredictIngot], false);
			
			// block -> ingot
			recipes.removeShaped(itemI*9, [[itemB]]);
			recipes.removeShapeless(itemI*9, [itemB], false);
			recipes.removeShaped(itemI*9, [[oredictBlock]]);
			recipes.removeShapeless(itemI*9, [oredictBlock], false);
		}
	}

	// conversion to "master" items from unsupported "alternative"
	recipes.addShapeless(metalNugget*3, [oredictNugget, oredictNugget, oredictNugget]);
	recipes.addShapeless(metalIngot*3, [oredictIngot, oredictIngot, oredictIngot]);
	recipes.addShapeless(metalBlock*3, [oredictBlock, oredictBlock, oredictBlock]);
	
	// add 3x3 recipes back
	recipes.addShapeless(metalIngot*9, [oredictBlock]);
	recipes.addShapeless(metalBlock, [oredictIngot,oredictIngot,oredictIngot,oredictIngot,oredictIngot,oredictIngot,oredictIngot,oredictIngot,oredictIngot]);
	recipes.addShapeless(metalNugget*9, [oredictIngot]);
	recipes.addShapeless(metalIngot, [oredictNugget,oredictNugget,oredictNugget,oredictNugget,oredictNugget,oredictNugget,oredictNugget,oredictNugget,oredictNugget]);

	return 0;
}


//====== Manual Fix Stuff ======
//
	<ore:blockBronze>.add(<techreborn:storage:14>);
	recipes.addShapeless(<thermalfoundation:material:163>*9, [<techreborn:storage:14>]);
	recipes.remove(<mekanism:nugget:2>);
	recipes.remove(<mekanism:ingot:2>);
	recipes.remove(<mekanism:basicblock:1>);


//====== Process Metals ======
// NOT YET ENABLED
	/*
	print(0 == fixMetals(<ore:blockBrass>, <ore:ingotBrass>, <ore:nuggetBrass>)                 ? "Fixed Brass" : "Brass FAILED");
	print(0 == fixMetals(<ore:blockChrome>, <ore:ingotChrome>, <ore:nuggetChrome>)              ? "Fixed Chrome" : "Chrome FAILED");
	print(0 == fixMetals(<ore:blockIridium>, <ore:ingotIridium>, <ore:nuggetIridium>)           ? "Fixed Iridium" : "Iridium FAILED");
	print(0 == fixMetals(<ore:blockTitanium>, <ore:ingotTitanium>, <ore:nuggetTitanium>)        ? "Fixed Titanium" : "Titanium FAILED");
	print(0 == fixMetals(<ore:blockCopper>, <ore:ingotCopper>, <ore:nuggetCopper>)              ? "Fixed Copper" : "Copper FAILED");
	print(0 == fixMetals(<ore:blockTin>, <ore:ingotTin>, <ore:nuggetTin>)                       ? "Fixed Tin" : "Tin FAILED");
	print(0 == fixMetals(<ore:blockSilver>, <ore:ingotSilver>, <ore:nuggetSilver>)              ? "Fixed Silver" : "Silver FAILED");
	print(0 == fixMetals(<ore:blockConstantan>, <ore:ingotConstantan>, <ore:nuggetConstantan>)  ? "Fixed Constantan" : "Constantan FAILED");
	print(0 == fixMetals(<ore:blockBronze>, <ore:ingotBronze>, <ore:nuggetBronze>)              ? "Fixed Bronze" : "Bronze FAILED");
	print(0 == fixMetals(<ore:blockInvar>, <ore:ingotInvar>, <ore:nuggetInvar>)                 ? "Fixed Invar" : "Invar FAILED");
	print(0 == fixMetals(<ore:blockElectrum>, <ore:ingotElectrum>, <ore:nuggetElectrum>)        ? "Fixed Electrum" : "Electrum FAILED");
	print(0 == fixMetals(<ore:blockSteel>, <ore:ingotSteel>, <ore:nuggetSteel>)                 ? "Fixed Steel" : "Steel FAILED");
	print(0 == fixMetals(<ore:blockMithril>, <ore:ingotMithril>, <ore:nuggetMithril>)           ? "Fixed Mithril" : "Mithril FAILED");
	print(0 == fixMetals(<ore:blockPlatinum>, <ore:ingotPlatinum>, <ore:nuggetPlatinum>)        ? "Fixed Platinum" : "Platinum FAILED");
	print(0 == fixMetals(<ore:blockNickel>, <ore:ingotNickel>, <ore:nuggetNickel>)              ? "Fixed Nickel" : "Nickel FAILED");
	print(0 == fixMetals(<ore:blockAluminum>, <ore:ingotAluminum>, <ore:nuggetAluminum>)        ? "Fixed Aluminum" : "Aluminum FAILED");
	print(0 == fixMetals(<ore:blockLead>, <ore:ingotLead>, <ore:nuggetLead>)                    ? "Fixed Lead" : "Lead FAILED");
	print(0 == fixMetals(<ore:blockUranium>, <ore:ingotUranium>, <ore:nuggetUranium>)           ? "Fixed Uranium" : "Uranium FAILED");
	*/





