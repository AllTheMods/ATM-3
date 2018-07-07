mods.unidict.removalByKind.get("Crafting").remove("block");
mods.unidict.api.newShapelessRecipeTemplate("block", 1, ["ingot","ingot","ingot","ingot","ingot","ingot","ingot","ingot","ingot"]);

mods.unidict.removalByKind.get("Crafting").remove("ingot");
mods.unidict.api.newShapelessRecipeTemplate("ingot", 9, ["block"]);
mods.unidict.api.newShapelessRecipeTemplate("ingot", 1, ["nugget","nugget","nugget","nugget","nugget","nugget","nugget","nugget","nugget"]);

mods.unidict.removalByKind.get("Crafting").remove("nugget");
mods.unidict.api.newShapelessRecipeTemplate("nugget", 9, ["ingot"]);