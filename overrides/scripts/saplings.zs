import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#packmode normal simplified

//      ================================================
print(" =================== Saplings =================== ");
print(" ================================================ ");
/*

Custom recipes for various saplings.
Saplings added to oredict in oredict_wood.zs

*/


    
//====== Lucky Beans Sapling Recipe ======
//
    <ore:specialBeans>.add(<cyclicmagic:sprout_seed>);
    <ore:specialBeans>.add(<harvestcraft:jellybeansitem>);
    //<ore:specialBeans>.add(<randomthings:beans:1>);
    //<ore:specialBeans>.add(<randomthings:beans:2>);
	/*
    recipes.addShaped("crtluckybeans", <luckybeans:bean_sapling>, [
        [<ore:specialBeans>, <ore:specialBeans>, <ore:specialBeans>],
        [<ore:specialBeans>, <ore:treeSapling>, <ore:specialBeans>],
        [<ore:specialBeans>, <ore:specialBeans>, <ore:specialBeans>]
        ]);
	*/


//====== Menril Sapling Recipe ======
//
    recipes.addShapedMirrored("menrilsaplingcustom", <integrateddynamics:menril_sapling>,
            [[<ore:dyeCyan>, <ore:dyeCyan>,     <ore:dyeCyan>],
             [<ore:dyeCyan>, <ore:treeSapling>, <ore:dyeCyan>],
             [<ore:dyeCyan>, <ore:dyeCyan>,     <ore:dyeCyan>]]
        );

        
//====== Rubber Sapling Recipe ======
//
    <ore:itemRubber>.add(<industrialforegoing:plastic>);
    <ore:materialRubber>.add(<industrialforegoing:plastic>);
    <ore:itemRubber>.add(<mekanism:polyethene:0>);
    <ore:materialRubber>.add(<mekanism:polyethene:0>);
    
    recipes.addShaped("crtTRrubber", <techreborn:rubber_sapling>, [
        [<ore:materialRubber>, <ore:materialRubber>, <ore:materialRubber>],
        [<ore:materialRubber>, <ore:treeSapling>, <ore:materialRubber>],
        [<ore:materialRubber>, <ore:materialRubber>, <ore:materialRubber>]
        ]);

        