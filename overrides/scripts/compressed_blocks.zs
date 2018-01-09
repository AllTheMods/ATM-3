import crafttweaker.item.IIngredient as IIngredient;
import crafttweaker.item.IItemStack as IItemStack;
import crafttweaker.oredict.IOreDict as IOreDict;
import crafttweaker.oredict.IOreDictEntry as IOreDictEntry;

#packmode normal simplified
#modloaded overloaded

print(" =================== Compressed Blocks  =================== ");
print(" ========================================================== ");

compressRecipes(
	<ore:cobblestone>,
	<minecraft:cobblestone:0>,
	<overloaded:compressed_cobblestone:0>,
	<overloaded:compressed_cobblestone:1>,
	<overloaded:compressed_cobblestone:2>,
	<overloaded:compressed_cobblestone:3>
	);
compressRecipes(
	<ore:sand>,
	<minecraft:sand:0>,
	<overloaded:compressed_sand:0>,
	<overloaded:compressed_sand:1>,
	<overloaded:compressed_sand:2>,
	<overloaded:compressed_sand:3>
	);
compressRecipes(
	<ore:stone>,
	<minecraft:stone:0>,
	<overloaded:compressed_stone:0>,
	<overloaded:compressed_stone:1>,
	<overloaded:compressed_stone:2>,
	<overloaded:compressed_stone:3>
	);
compressRecipes(
	<ore:obsidian>,
	<minecraft:obsidian:0>,
	<overloaded:compressed_obsidian:0>,
	<overloaded:compressed_obsidian:1>,
	<overloaded:compressed_obsidian:2>,
	<overloaded:compressed_obsidian:3>
	);
compressRecipes(
	<ore:netherrack>,
	<minecraft:netherrack:0>,
	<overloaded:compressed_netherrack:0>,
	<overloaded:compressed_netherrack:1>,
	<overloaded:compressed_netherrack:2>,
	<overloaded:compressed_netherrack:3>
	);
compressRecipes(
	<ore:dirt>,
	<minecraft:dirt:0>,
	<overloaded:compressed_dirt:0>,
	<overloaded:compressed_dirt:1>,
	<overloaded:compressed_dirt:2>,
	<overloaded:compressed_dirt:3>
	);
compressRecipes(
	<ore:gravel>,
	<minecraft:gravel:0>,
	<overloaded:compressed_gravel:0>,
	<overloaded:compressed_gravel:1>,
	<overloaded:compressed_gravel:2>,
	<overloaded:compressed_gravel:3>
	);
compressRecipes(
	<ore:sandstone>,
	<minecraft:sandstone:0>,
	<overloaded:compressed_sandstone:0>,
	<overloaded:compressed_sandstone:1>,
	<overloaded:compressed_sandstone:2>,
	<overloaded:compressed_sandstone:3>
	);
compressRecipes(
	<minecraft:nether_brick:0>,
	<minecraft:nether_brick:0>,
	<overloaded:compressed_nether_brick:0>,
	<overloaded:compressed_nether_brick:1>,
	<overloaded:compressed_nether_brick:2>,
	<overloaded:compressed_nether_brick:3>
	);
compressRecipes(
	<ore:crafterWood>,
	<minecraft:crafting_table:0>,
	<overloaded:compressed_crafting_table:0>,
	<overloaded:compressed_crafting_table:1>,
	<overloaded:compressed_crafting_table:2>,
	<overloaded:compressed_crafting_table:3>
	);
compressRecipes(
	<ore:blockMagma>,
	<minecraft:magma:0>,
	<overloaded:compressed_magma:0>,
	<overloaded:compressed_magma:1>,
	<overloaded:compressed_magma:2>,
	<overloaded:compressed_magma:3>
	);
compressRecipes(
	<ore:blockMossy>,
	<minecraft:mossy_cobblestone:0>,
	<overloaded:compressed_mossy_cobblestone:0>,
	<overloaded:compressed_mossy_cobblestone:1>,
	<overloaded:compressed_mossy_cobblestone:2>,
	<overloaded:compressed_mossy_cobblestone:3>
	);
compressRecipes(
	<ore:blockSlime>,
	<minecraft:slime:0>,
	<overloaded:compressed_slime:0>,
	<overloaded:compressed_slime:1>,
	<overloaded:compressed_slime:2>,
	<overloaded:compressed_slime:3>
	);
compressRecipes(
	<ore:blockWool>,
	<minecraft:wool:0>,
	<overloaded:compressed_wool:0>,
	<overloaded:compressed_wool:1>,
	<overloaded:compressed_wool:2>,
	<overloaded:compressed_wool:3>
	);
compressRecipes(
	<ore:endstone>,
	<minecraft:end_stone:0>,
	<overloaded:compressed_end_stone:0>,
	<overloaded:compressed_end_stone:1>,
	<overloaded:compressed_end_stone:2>,
	<overloaded:compressed_end_stone:3>
	);
compressRecipes(
	<ore:logWood>,
	<minecraft:log:0>,
	<overloaded:compressed_log:0>,
	<overloaded:compressed_log:1>,
	<overloaded:compressed_log:2>,
	<overloaded:compressed_log:3>
	);
compressRecipes(
	<ore:blockSalt>,
	<mekanism:saltblock:0>,
	<overloaded:compressed_saltblock:0>,
	<overloaded:compressed_saltblock:1>,
	<overloaded:compressed_saltblock:2>,
	<overloaded:compressed_saltblock:3>
	);
compressRecipes(
	<ore:soulSand>,
	<minecraft:soul_sand:0>,
	<overloaded:compressed_soul_sand:0>,
	<overloaded:compressed_soul_sand:1>,
	<overloaded:compressed_soul_sand:2>,
	<overloaded:compressed_soul_sand:3>
	);
compressRecipes(
	<ore:blockRedstone>,
	<minecraft:redstone_block:0>,
	<overloaded:compressed_redstone_block:0>,
	<overloaded:compressed_redstone_block:1>,
	<overloaded:compressed_redstone_block:2>,
	<overloaded:compressed_redstone_block:3>
	);
compressRecipes(
	<ore:blockCoal>,
	<minecraft:coal_block:0>,
	<overloaded:compressed_coal_block:0>,
	<overloaded:compressed_coal_block:1>,
	<overloaded:compressed_coal_block:2>,
	<overloaded:compressed_coal_block:3>
	);
compressRecipes(
	<minecraft:sea_lantern:0>,
	<minecraft:sea_lantern:0>,
	<overloaded:compressed_sea_lantern:0>,
	<overloaded:compressed_sea_lantern:1>,
	<overloaded:compressed_sea_lantern:2>,
	<overloaded:compressed_sea_lantern:3>
	);
compressRecipes(
	<ore:glowstone>,
	<minecraft:glowstone:0>,
	<overloaded:compressed_glowstone:0>,
	<overloaded:compressed_glowstone:1>,
	<overloaded:compressed_glowstone:2>,
	<overloaded:compressed_glowstone:3>
	);
compressRecipes(
	<ore:blockGold>,
	<minecraft:gold_block:0>,
	<overloaded:compressed_gold_block:0>,
	<overloaded:compressed_gold_block:1>,
	<overloaded:compressed_gold_block:2>,
	<overloaded:compressed_gold_block:3>
	);
compressRecipes(
	<ore:blockIron>,
	<minecraft:iron_block:0>,
	<overloaded:compressed_iron_block:0>,
	<overloaded:compressed_iron_block:1>,
	<overloaded:compressed_iron_block:2>,
	<overloaded:compressed_iron_block:3>
	);
compressRecipes(
	<ore:blockQuartz>,
	<minecraft:quartz_block:0>,
	<overloaded:compressed_quartz_block:0>,
	<overloaded:compressed_quartz_block:1>,
	<overloaded:compressed_quartz_block:2>,
	<overloaded:compressed_quartz_block:3>
	);
compressRecipes(
	<ore:industrialTnt>,
	<minecraft:tnt:0>,
	<overloaded:compressed_tnt:0>,
	<overloaded:compressed_tnt:1>,
	<overloaded:compressed_tnt:2>,
	<overloaded:compressed_tnt:3>
	);
compressRecipes(
	<ore:blockDiamond>,
	<minecraft:diamond_block:0>,
	<overloaded:compressed_diamond_block:0>,
	<overloaded:compressed_diamond_block:1>,
	<overloaded:compressed_diamond_block:2>,
	<overloaded:compressed_diamond_block:3>
	);
compressRecipes(
	<ore:blockEmerald>,
	<minecraft:emerald_block:0>,
	<overloaded:compressed_emerald_block:0>,
	<overloaded:compressed_emerald_block:1>,
	<overloaded:compressed_emerald_block:2>,
	<overloaded:compressed_emerald_block:3>
	);
compressRecipes(
	<overloaded:nether_star_block:0>,
	<overloaded:nether_star_block:0>,
	<overloaded:compressed_nether_star_block:0>,
	<overloaded:compressed_nether_star_block:1>,
	<overloaded:compressed_nether_star_block:2>,
	<overloaded:compressed_nether_star_block:3>
	);
compressRecipes(
	<ore:blockLapis>,
	<minecraft:lapis_block:0>,
	<overloaded:compressed_lapis:0>,
	<overloaded:compressed_lapis:1>,
	<overloaded:compressed_lapis:2>,
	<overloaded:compressed_lapis:3>
	);
compressRecipes(
	<ore:blockOsmium>,
	<mekanism:basicblock:0>,
	<overloaded:compressed_osmium:0>,
	<overloaded:compressed_osmium:1>,
	<overloaded:compressed_osmium:2>,
	<overloaded:compressed_osmium:3>
	);
compressRecipes(
	<ore:blockSteel>,
	<thermalfoundation:storage_alloy:0>,
	<overloaded:compressed_steel:0>,
	<overloaded:compressed_steel:1>,
	<overloaded:compressed_steel:2>,
	<overloaded:compressed_steel:3>
	);
compressRecipes(
	<ore:blockApatite>,
	<forestry:resource_storage:0>,
	<overloaded:compressed_apatite:0>,
	<overloaded:compressed_apatite:1>,
	<overloaded:compressed_apatite:2>,
	<overloaded:compressed_apatite:3>
	);
compressRecipes(
	<ore:blockMarble>,
	<chisel:marble2:7>,
	<overloaded:compressed_marble:0>,
	<overloaded:compressed_marble:1>,
	<overloaded:compressed_marble:2>,
	<overloaded:compressed_marble:3>
	);
compressRecipes(
	<ore:blockCopper>,
	<thermalfoundation:storage:0>,
	<overloaded:compressed_copper:0>,
	<overloaded:compressed_copper:1>,
	<overloaded:compressed_copper:2>,
	<overloaded:compressed_copper:3>
	);
compressRecipes(
	<ore:blockTin>,
	<thermalfoundation:storage:1>,
	<overloaded:compressed_tin:0>,
	<overloaded:compressed_tin:1>,
	<overloaded:compressed_tin:2>,
	<overloaded:compressed_tin:3>
	);
compressRecipes(
	<ore:blockSilver>,
	<thermalfoundation:storage:2>,
	<overloaded:compressed_silver:0>,
	<overloaded:compressed_silver:1>,
	<overloaded:compressed_silver:2>,
	<overloaded:compressed_silver:3>
	);
compressRecipes(
	<ore:blockLead>,
	<thermalfoundation:storage:3>,
	<overloaded:compressed_lead:0>,
	<overloaded:compressed_lead:1>,
	<overloaded:compressed_lead:2>,
	<overloaded:compressed_lead:3>
	);
compressRecipes(
	<ore:blockAluminum>,
	<thermalfoundation:storage:4>,
	<overloaded:compressed_aluminum:0>,
	<overloaded:compressed_aluminum:1>,
	<overloaded:compressed_aluminum:2>,
	<overloaded:compressed_aluminum:3>
	);
compressRecipes(
	<ore:blockNickel>,
	<thermalfoundation:storage:5>,
	<overloaded:compressed_nickel:0>,
	<overloaded:compressed_nickel:1>,
	<overloaded:compressed_nickel:2>,
	<overloaded:compressed_nickel:3>
	);
compressRecipes(
	<ore:blockPlatinum>,
	<thermalfoundation:storage:6>,
	<overloaded:compressed_platinum:0>,
	<overloaded:compressed_platinum:1>,
	<overloaded:compressed_platinum:2>,
	<overloaded:compressed_platinum:3>
	);
compressRecipes(
	<ore:blockIridium>,
	<thermalfoundation:storage:7>,
	<overloaded:compressed_iridium:0>,
	<overloaded:compressed_iridium:1>,
	<overloaded:compressed_iridium:2>,
	<overloaded:compressed_iridium:3>
	);
compressRecipes(
	<ore:blockMithril>,
	<thermalfoundation:storage:8>,
	<overloaded:compressed_mana:0>,
	<overloaded:compressed_mana:1>,
	<overloaded:compressed_mana:2>,
	<overloaded:compressed_mana:3>
	);
compressRecipes(
	<actuallyadditions:block_misc:2>,
	<actuallyadditions:block_misc:2>,
	<overloaded:compressed_black_quartz:0>,
	<overloaded:compressed_black_quartz:1>,
	<overloaded:compressed_black_quartz:2>,
	<overloaded:compressed_black_quartz:3>
	);
compressRecipes(
	<ore:blockCobalt>,
	<tconstruct:metal:0>,
	<overloaded:compressed_cobalt:0>,
	<overloaded:compressed_cobalt:1>,
	<overloaded:compressed_cobalt:2>,
	<overloaded:compressed_cobalt:3>
	);
compressRecipes(
	<ore:blockArdite>,
	<tconstruct:metal:1>,
	<overloaded:compressed_ardite:0>,
	<overloaded:compressed_ardite:1>,
	<overloaded:compressed_ardite:2>,
	<overloaded:compressed_ardite:3>
	);
compressRecipes(
	<appliedenergistics2:quartz_block:0>,
	<appliedenergistics2:quartz_block:0>,
	<overloaded:compressed_certus:0>,
	<overloaded:compressed_certus:1>,
	<overloaded:compressed_certus:2>,
	<overloaded:compressed_certus:3>
	);
compressRecipes(
	<ore:blockDraconium>,
	<draconicevolution:draconium_block:0>,
	<overloaded:compressed_draconium:0>,
	<overloaded:compressed_draconium:1>,
	<overloaded:compressed_draconium:2>,
	<overloaded:compressed_draconium:3>
	);
compressRecipes(
	<ore:blockTungsten>,
	<techreborn:storage:10>,
	<overloaded:compressed_tungsten:0>,
	<overloaded:compressed_tungsten:1>,
	<overloaded:compressed_tungsten:2>,
	<overloaded:compressed_tungsten:3>
	);
compressRecipes(
	<ore:blockUranium>,
	<immersiveengineering:storage:5>,
	<overloaded:compressed_uranium:0>,
	<overloaded:compressed_uranium:1>,
	<overloaded:compressed_uranium:2>,
	<overloaded:compressed_uranium:3>
	);
	
//====== Compressed Nether Stars ======
//
	recipes.addShapeless(<minecraft:nether_star>*9, [<overloaded:nether_star_block>]);


//====== Fix EXU2 recipes ======
//
	recipes.addShapeless(<minecraft:dirt>*9,[<extrautils2:compresseddirt>]);
	recipes.addShapeless(<minecraft:cobblestone>*9,[<extrautils2:compressedcobblestone>]);
	recipes.addShapeless(<minecraft:sand>*9,[<extrautils2:compressedsand>]);
	recipes.addShapeless(<minecraft:gravel>*9,[<extrautils2:compressedgravel>]);
	recipes.addShapeless(<minecraft:netherrack>*9,[<extrautils2:compressednetherrack>]);


//====== Function for all crafting recipes ======
//
	function compressRecipes(
		oredInput as IIngredient, /* Oredict or item stack that can be compressed into 1x */
		basicItem as IItemStack,  /* Item that the 1x compressed is crafted BACK out into */
		comprSngl as IItemStack,  /* Compressed Block 1x */
		comprDoub as IItemStack,  /* Compressed Block 2x */
		comprTrip as IItemStack,  /* Compressed Block 3x */
		comprQuad as IItemStack   /* Compressed Block 4x */
		) {
		// Cleanup any possible existing recipes (thoroughness)
		recipes.removeShapeless(comprSngl);
		recipes.removeShapeless(comprDoub);
		recipes.removeShapeless(comprTrip);
		recipes.removeShapeless(comprQuad);
		//recipes.removeShapeless(basicItem, [comprSngl]);
		//recipes.removeShapeless(oredInput, [comprSngl]);
		//recipes.removeShapeless(basicItem*9, [comprSngl]);
		//recipes.removeShapeless(oredInput*9, [comprSngl]);
		// Turn any compatible oredict into compressed block
		recipes.addShapeless(comprSngl, [
			oredInput, oredInput, oredInput,
			oredInput, oredInput, oredInput,
			oredInput, oredInput, oredInput
			]);
		// Turn 1x compressed into 2x
		recipes.addShapeless(comprDoub, [
			comprSngl, comprSngl, comprSngl,
			comprSngl, comprSngl, comprSngl,
			comprSngl, comprSngl, comprSngl
			]);
		// Turn 2x compressed into 3x
		recipes.addShapeless(comprTrip, [
			comprDoub, comprDoub, comprDoub,
			comprDoub, comprDoub, comprDoub,
			comprDoub, comprDoub, comprDoub
			]);
		// Turn 3x compressed into 4x
		recipes.addShapeless(comprQuad, [
			comprTrip, comprTrip, comprTrip,
			comprTrip, comprTrip, comprTrip,
			comprTrip, comprTrip, comprTrip
			]);
		// Turn compressed 1x block back into base item
		recipes.removeShapeless(basicItem*9, [comprSngl]);
		recipes.addShapeless(basicItem*9, [comprSngl]);
		// Turn compressed 2x block back into 1x compressed
		recipes.removeShapeless(comprSngl*9, [comprDoub]);
		recipes.addShapeless(comprSngl*9, [comprDoub]);
		// Turn compressed 3x block back into 2x compressed
		recipes.removeShapeless(comprDoub*9, [comprTrip]);
		recipes.addShapeless(comprDoub*9, [comprTrip]);
		// Turn compressed 4x block back into 3x compressed
		recipes.removeShapeless(comprTrip*9, [comprQuad]);
		recipes.addShapeless(comprTrip*9, [comprQuad]);
	}