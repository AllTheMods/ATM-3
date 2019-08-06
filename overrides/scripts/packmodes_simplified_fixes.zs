import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import mods.thermalexpansion.Pulverizer;
import mods.extrautils2.Crusher;
import mods.appliedenergistics2.Grinder;

#packmode simplified

print(" =================== Simplified Fixes =================== ");
print(" ======================================================== ");
/*
    Fixes a few issues to make "simplified" mode work or make more sense
*/


//====== Extreme Reactor's Graphite ======
//
	furnace.addRecipe(<bigreactors:dustgraphite>, <ore:dustCoal>, 1);
	furnace.addRecipe(<bigreactors:dustgraphite>, <ore:dustCharcoal>, 1);
	furnace.addRecipe(<bigreactors:blockgraphite>, <ore:blockCoal>, 1);
	furnace.addRecipe(<bigreactors:blockgraphite>, <ore:blockCharcoal>, 1);
	
	
//====== Custom "growth essence" ======
//
	// Maybe be changed later so not as hard (since its simplified)
	var GrowEssence = <atmtweaks:item_material:1>;
	var TFFert = <thermalfoundation:fertilizer:2>;
	var IFFert = <industrialforegoing:fertilizer>;
	var AAFert = <actuallyadditions:item_fertilizer>;
	var NotchApple = <minecraft:golden_apple:1>;
	var RoyalJelly = <forestry:royal_jelly>;
	var ManaPowder = <botania:manaresource:23>;

	mods.actuallyadditions.Empowerer.addRecipe(GrowEssence,
		RoyalJelly,
		AAFert, IFFert, TFFert, ManaPowder,
		100000, 1200, [0.0, 0.6, 0.1]);	

//====== EnderIO Compatibility =====
//
    //Pulverizer
	mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>, 2000);
	mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:37>, <enderio:item_material:16>, 2000);
	mods.thermalexpansion.Pulverizer.addRecipe(<enderio:item_material:34>, <enderio:item_material:19>, 2000);
	//EX2 Crusher
	mods.extrautils2.Crusher.add(<enderio:item_material:36>, <enderio:item_material:14>);
	mods.extrautils2.Crusher.add(<enderio:item_material:37>, <enderio:item_material:16>);
	mods.extrautils2.Crusher.add(<enderio:item_material:34>, <enderio:item_material:19>);
	//AA Crusher
	mods.actuallyadditions.Crusher.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>);
	mods.actuallyadditions.Crusher.addRecipe(<enderio:item_material:37>, <enderio:item_material:16>);
	mods.actuallyadditions.Crusher.addRecipe(<enderio:item_material:34>, <enderio:item_material:19>);
	//Mekanism Crusher
	mods.mekanism.crusher.addRecipe(<enderio:item_material:14>, <enderio:item_material:36>);
	mods.mekanism.crusher.addRecipe(<enderio:item_material:16>, <enderio:item_material:37>);
	mods.mekanism.crusher.addRecipe(<enderio:item_material:19>, <enderio:item_material:34>);
	//IE Crusher
	mods.immersiveengineering.Crusher.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>, 2048);
	mods.immersiveengineering.Crusher.addRecipe(<enderio:item_material:37>, <enderio:item_material:16>, 2048);
	mods.immersiveengineering.Crusher.addRecipe(<enderio:item_material:34>, <enderio:item_material:19>, 2048);
	//AE2 GrindStone
	Grinder.addRecipe(<enderio:item_material:36>, <enderio:item_material:14>, 4);
	Grinder.addRecipe(<enderio:item_material:37>, <enderio:item_material:16>, 4);
	Grinder.addRecipe(<enderio:item_material:34>, <enderio:item_material:19>, 4);
