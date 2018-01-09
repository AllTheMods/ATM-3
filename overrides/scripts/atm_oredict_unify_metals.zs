import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#priority 501

print(" =================== Block/Ingot/Nugget Unification =================== ");
print(" ====================================================================== ");
/*
	Written by: Ordinator (intended for All The Mods packs)
    
	This script's purpose is to forcibly re-define the crafting recipes for
	converting a block to-and-from ingots and ingots to-and-from nuggets.
    
	Along the way it will remove any other "conflicting" recipes and also add
	a "conversion recipe" if players somehow end up with the "wrong" type
	This works best when paired with the "OreDict Unification/Sorting" script
*/


function fixMetals(
	oredictBlock  as IOreDictEntry,
	oredictIngot  as IOreDictEntry,
	oredictNugget as IOreDictEntry
	){
		
	// Get the "master" (first) item from oredict
	// NOTE: this is why using oredict sort script first (priority) can enhance this script's usefulness
	var metalBlock  = oredictBlock.firstItem  as IItemStack;
	var metalIngot  = oredictIngot.firstItem  as IItemStack;
	var metalNugget = oredictNugget.firstItem as IItemStack;
	
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
	
	// loop entries to add "conversion" to master item
	var oDs = [[oredictBlock,metalBlock],[oredictIngot,metalIngot],[oredictNugget,metalNugget]] as IOreDictEntry[];
	
	// yo dawg, we heard you like loops...
	for o, i in oDs {
		for item in o.items {
			if !(item == i) {
		   		//mods.jei.JEI.Hide(item);
		   		recipes.addShapeless(i*3, [item, item, item]);
		   	}
		}
	}
	
	// add recipes back butr only for master item, not oredict (might not be a good idea)
	recipes.addShapeless(metalIngot*9, [metalBlock])
	recipes.addShapeless(metalBlock, [metalIngot,metalIngot,metalIngot,metalIngot,metalIngot,metalIngot,metalIngot,metalIngot,metalIngot]);
	recipes.addShapeless(metalNugget*9, [metalIngot]);
	recipes.addShapeless(metalIngot, [metalNugget,metalNugget,metalNugget,metalNugget,metalNugget,metalNugget,metalNugget,metalNugget,metalNugget]);
}

//====== Process Metals ======
//
	fixMetals(<ore:blockCopper>, <ore:ingotCopper>, <ore:nuggetCopper>);
	fixMetals(<ore:blockIron>, <ore:ingotIron>, <ore:nuggetIron>);
	fixMetals(<ore:blockSteel>, <ore:ingotSteel>, <ore:nuggetSteel>);
	fixMetals(<ore:blockTin>, <ore:ingotTin>, <ore:nuggetTin>);
	fixMetals(<ore:blockBronze>, <ore:ingotBronze>, <ore:nuggetBronze>);
	fixMetals(<ore:blockUranium>, <ore:ingotUranium>, <ore:nuggetUranium>);
	fixMetals(<ore:blockLead>, <ore:ingotLead>, <ore:nuggetLead>);
	fixMetals(<ore:blockAluminum>, <ore:ingotAluminum>, <ore:nuggetAluminum>);