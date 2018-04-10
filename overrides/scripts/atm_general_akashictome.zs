import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;

#packmode normal simplified


print(" =================== Akashic Tome =================== ");
print(" ==================================================== ");
/*
	Script just for the "all books included" tome to make it easier
	to see/find/edit/organize things related to just this tome
*/


//====== Ahashic Tome ======
//
	var completeTome = <akashictome:tome>.withTag(

	{
		"akashictome:is_morphing": 1 as byte,
		"akashictome:data": {
			tconstruct: {
				id: "tconstruct:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "tconstruct"
				},
				Damage: 0 as short
			},
			industrialforegoing: {
				id: "industrialforegoing:book_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "industrialforegoing"
				},
				Damage: 0 as short
			},
			astralsorcery: {
				id: "astralsorcery:itemjournal",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "astralsorcery"
				},
				Damage: 0 as short
			},
			immersiveengineering: {
				id: "immersiveengineering:tool",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "immersiveengineering"
				},
				Damage: 3 as short
			},
			rftools: {
				id: "rftools:rftools_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rftools"
				},
				Damage: 0 as short
			},
			rustic: {
				id: "rustic:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rustic"
				},
				Damage: 0 as short
			},
			cyclicmagic: {
				id: "guideapi:cyclicmagic-guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "cyclicmagic"
				},
				Damage: 0 as short
			},
			botania: {
				id: "botania:lexicon",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "botania"
				},
				Damage: 0 as short
			},
			draconicevolution: {
				id: "draconicevolution:info_tablet",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "draconicevolution"
				},
				Damage: 0 as short
			},
			extrautils2: {
				id: "extrautils2:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "extrautils2"
				},
				Damage: 0 as short
			},
			thermalfoundation: {
				id: "thermalfoundation:tome_lexicon",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "thermalfoundation"
				},
				Damage: 0 as short
			},
			bloodmagic: {
				id: "guideapi:bloodmagic-guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "bloodmagic"
				},
				Damage: 0 as short
			},
			actuallyadditions: {
				id: "actuallyadditions:item_booklet",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "actuallyadditions"
				},
				Damage: 0 as short
			},
			roots1: {
				id: "roots:spellcraft_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "roots1"
				},
				Damage: 0 as short
			},
			roots2: {
				id: "roots:ritual_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "roots2"
				},
				Damage: 0 as short
			},
			opencomputers: {
				id: "opencomputers:tool",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "opencomputers"
				},
				Damage: 4 as short
			},
			cookingforblockheads: {
				id: "cookingforblockheads:recipe_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "cookingforblockheads"
				},
				Damage: 1 as short
			},
			xnet: {
				id: "xnet:xnet_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "xnet"
				},
				Damage: 0 as short
			},
			rftoolscontrol: {
				id: "rftoolscontrol:rftoolscontrol_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rftoolscontrol"
				},
				Damage: 0 as short
			},
			integratedtunnels: {
				id: "integrateddynamics:on_the_dynamics_of_integration",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "integratedtunnels"
				},
				Damage: 0 as short
			},
			wizardry: {
				id: "wizardry:book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "wizardry"
				},
				Damage: 0 as short
			},
			rftoolsdim: {
				id: "rftoolsdim:rftoolsdim_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rftoolsdim"
				},
				Damage: 0 as short
			},
			roots: {
				id: "roots:herblore_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "roots"
				},
				Damage: 0 as short
			},
			embers: {
				id: "embers:codex",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "embers"
				},
				Damage: 0 as short
			},
			rftools1: {
				id: "rftools:rftools_shape_manual",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "rftools1"
				},
				Damage: 0 as short
			},
			mobtotems: {
				id: "guideapi:mobtotems-mobtotems_guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "mobtotems"
				},
				Damage: 0 as short
			},
			woot: {
				id: "guideapi:woot-guide",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "woot"
				},
				Damage: 0 as short
			},
			forestry: {
				id: "forestry:book_forester",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "forestry"
				},
				Damage: 0 as short
			},
			openblocks: {
				id: "openblocks:info_book",
				Count: 1 as byte,
				tag: {
					"akashictome:definedMod": "openblocks"
				},
				Damage: 0 as short
			}
		}
	}
	
	);

	//metadata to item
	completeTome.addTooltip(format.aqua("Contains all basic mod manuals/guides already included"));
	mods.jei.JEI.addDescription(completeTome, "The Akashic tome is a book for your books...",
											  "This recipe of 1 dirt = full book is added by All The Mods to ALREADY contain most/all modded manuals as a convenience for our players");

	//add the full book to JEI as it's own entry
	mods.jei.JEI.addItem(completeTome);

	//1 dirt = book
	recipes.addShapeless(completeTome, [<minecraft:dirt>]);
	
	// Starting item
	mods.initialinventory.InvHandler.addStartingItem(completeTome);


//====== Tooltip for added books ======
//
	var addedBooks = [
		<tconstruct:book>, 
		<industrialforegoing:book_manual>, 
		<astralsorcery:itemjournal>, 
		<immersiveengineering:tool:3>, 
		<rftools:rftools_manual>, 
		<rustic:book>, 
		<guideapi:cyclicmagic-guide>, 
		<botania:lexicon>, 
		<draconicevolution:info_tablet>, 
		<extrautils2:book>, 
		<thermalfoundation:tome_lexicon>, 
		<guideapi:bloodmagic-guide>, 
		<actuallyadditions:item_booklet>, 
		<roots:spellcraft_book>, 
		<roots:ritual_book>, 
		<opencomputers:tool:4>, 
		<cookingforblockheads:recipe_book:1>, 
		<xnet:xnet_manual>, 
		<rftoolscontrol:rftoolscontrol_manual>, 
		<integrateddynamics:on_the_dynamics_of_integration>, 
		<wizardry:book>, 
		<rftoolsdim:rftoolsdim_manual>, 
		<roots:herblore_book>, 
		<embers:codex>, 
		<rftools:rftools_shape_manual>, 
		<guideapi:mobtotems-mobtotems_guide>, 
		<openblocks:info_book>,
		<forestry:book_forester>,
		<guideapi:woot-guide>
		] as IItemStack[];

	for itemBook in addedBooks {
		itemBook.addTooltip(format.aqua("Included within the \"default\" Akashic Tome"));
	}
