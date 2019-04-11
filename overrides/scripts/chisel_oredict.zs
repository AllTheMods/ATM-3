import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;

#packmode normal simplified
#priority 1
#modloaded chisel

//      ==============================================================
print(" ======================== Chisel Fixes ======================== ");
print(" ============================================================== ");

print("Chisel Fixes partially disabled");
/*


//====== OreDict to be fully chiselable ======
//
// all items in the specified OreDictionary will be all added to the chisel as variants for themselves
//
	chiselOredict(<ore:blockAluminium>);
	chiselOredict(<ore:blockAluminum>);
	chiselOredict(<ore:blockBronze>);
	chiselOredict(<ore:blockCharcoal>);
	chiselOredict(<ore:blockCoal>);
	chiselOredict(<ore:blockCoalCoke>);
	chiselOredict(<ore:blockCobalt>);
	chiselOredict(<ore:blockConstantan>);
	chiselOredict(<ore:blockCopper>);
	chiselOredict(<ore:blockDiamond>);
	chiselOredict(<ore:blockElectrum>);
	chiselOredict(<ore:blockEmerald>);
	chiselOredict(<ore:blockErodium>);
	chiselOredict(<ore:blockFuelCoke>);
	chiselOredict(<ore:blockGlassHardened>);
	chiselOredict(<ore:blockGold>);
	chiselOredict(<ore:blockGraphite>);
	chiselOredict(<ore:blockIce>);
	chiselOredict(<ore:blockInvar>);
	chiselOredict(<ore:blockIonite>);
	chiselOredict(<ore:blockIridium>);
	chiselOredict(<ore:blockIron>);
	chiselOredict(<ore:blockKyronite>);
	chiselOredict(<ore:blockLapis>);
	chiselOredict(<ore:blockLead>);
	chiselOredict(<ore:blockLitherite>);
	chiselOredict(<ore:blockLonsdaleite>);
	chiselOredict(<ore:blockMarble>);
	chiselOredict(<ore:blockMetal>);
	chiselOredict(<ore:blockMossy>);
	chiselOredict(<ore:blockNickel>);
	chiselOredict(<ore:blockPladium>);
	chiselOredict(<ore:blockPlatinum>);
	chiselOredict(<ore:blockQuartz>);
	chiselOredict(<ore:blockRedstone>);
	chiselOredict(<ore:blockSilver>);
	chiselOredict(<ore:blockSlime>);
	chiselOredict(<ore:blockSteel>);
	chiselOredict(<ore:blockTin>);
	chiselOredict(<ore:blockUranium>);
	chiselOredict(<ore:blockYellorium>);
	chiselOredict(<ore:brickStone>);
	chiselOredict(<ore:glassReinforced>);
	chiselOredict(<ore:glowstone>);
	chiselOredict(<ore:hardenedClay>);
	chiselOredict(<ore:machineBlockAdvanced>);
	chiselOredict(<ore:machineBlockBasic>);
	chiselOredict(<ore:obsidian>);
	chiselOredict(<ore:oreAbyssalnite>);
	chiselOredict(<ore:oreAluminium>);
	chiselOredict(<ore:oreAluminum>);
	chiselOredict(<ore:oreBauxite>);
	chiselOredict(<ore:oreCertusQuartz>);
	chiselOredict(<ore:oreCoal>);
	chiselOredict(<ore:oreCopper>);
	chiselOredict(<ore:oreCoralium>);
	chiselOredict(<ore:oreDiamond>);
	chiselOredict(<ore:oreDraconium>);
	chiselOredict(<ore:oreEmerald>);
	chiselOredict(<ore:oreGold>);
	chiselOredict(<ore:oreIridium>);
	chiselOredict(<ore:oreIron>);
	chiselOredict(<ore:oreLapis>);
	chiselOredict(<ore:oreLead>);
	chiselOredict(<ore:oreNickel>);
	chiselOredict(<ore:orePeridot>);
	chiselOredict(<ore:oreQuartz>);
	chiselOredict(<ore:oreRedstone>);
	chiselOredict(<ore:oreRuby>);
	chiselOredict(<ore:oreSaltpeter>);
	chiselOredict(<ore:oreSapphire>);
	chiselOredict(<ore:oreSilver>);
	chiselOredict(<ore:oreTin>);
	chiselOredict(<ore:oreUranium>);
	chiselOredict(<ore:oreYellorite>);
	chiselOredict(<ore:oreYellorium>);
	chiselOredict(<ore:prismarine>);
	chiselOredict(<ore:prismarineBrick>);
	chiselOredict(<ore:prismarineDark>);


//====== Function adding all oredict items to same chisel group ======
//
	function chiselOredict(oredInput as IOreDictEntry) {
		var odName = oredInput.name as string;
		var odItems = oredInput.itemArray as IItemStack[];
		for x in odItems {
			mods.chisel.Carving.addVariation(odName, x);
		}
	}
*/

//====== Temporary Fix ======
//

// When I get time later, make into for loop - Fallen	
	mods.chisel.Carving.addVariation("marble", <projectred-exploration:stone:0>);
	mods.chisel.Carving.addVariation("marble", <projectred-exploration:stone:1>);
	mods.chisel.Carving.addVariation("basalt", <projectred-exploration:stone:3>);
	mods.chisel.Carving.addVariation("basalt", <projectred-exploration:stone:4>);

	