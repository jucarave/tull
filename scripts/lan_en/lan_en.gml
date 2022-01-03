function lan_en(){
	if (global.LANG != noone) { ds_map_clear(global.LANG); }
	
	global.LANG = ds_map_create();
	
	global.LANG[? "lang"] = "EN";
	
	global.LANG[? "attack.selectDir"] = "Select a direction to attack.";
	
	global.LANG[? "item.weaponSheathed"] = "Weapon Sheathed.";
	
	global.LANG[? "shortSword.picked"] = "Short sword picked.";
	global.LANG[? "shortSword.equipped"] = "Short sword equipped.";
	
	global.LANG[? "wait"] = "Waiting.";
	
	global.LANG[? "skeleton.dies"] = "The skeleton dies.";
}