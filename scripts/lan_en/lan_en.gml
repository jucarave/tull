function lan_en(){
	if (global.LANG != noone) { ds_map_clear(global.LANG); }
	
	global.LANG = ds_map_create();
	
	global.LANG[? "lang"] = "EN";
	
	global.LANG[? "attack.selectDir"] = "Select a direction to attack.";
	
	global.LANG[? "item.weaponSheathed"] = "Weapon Sheathed.";
	
	global.LANG[? "shortSword.picked"] = "Short sword picked.";
	global.LANG[? "shortSword.equipped"] = "Short sword equipped.";
	global.LANG[? "shortSword.description"] = "Short sword, deals " + string(DATA_SHORT_SWORD_DMG) + " points of slashing damage.";
	
	global.LANG[? "bow.picked"] = "Long bow picked.";
	global.LANG[? "bow.equipped"] = "Long bow equipped.";
	global.LANG[? "bow.description"] = "Long bow, deals " + string(DATA_BOW_DMG) + " points of piercing damage.";
	
	global.LANG[? "hpPotion.picked"] = "Health potion picked.";
	global.LANG[? "hpPotion.used"] = "Health potion consumed.";
	global.LANG[? "hpPotion.description"] = "Restores " + string(DATA_HP_POTION_HEALS) + " points of health.";
	
	global.LANG[? "wait"] = "Waiting.";
	
	global.LANG[? "skeleton.dies"] = "The skeleton dies.";
	global.LANG[? "skeleton.activate"] = "You see a skeleton.";
	
	global.LANG[? "game.saved"] = "Game saved.";
	global.LANG[? "game.loaded"] = "Game loaded.";
	global.LANG[? "game.notFound"] = "Game saved not found.";
}