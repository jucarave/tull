function lan_en(){
	if (global.LANG != noone) { ds_map_clear(global.LANG); }
	
	global.LANG = ds_map_create();
	
	global.LANG[? "lang"] = "EN";
	global.LANG[? "attack.selectDir"] = "Select a direction to attack.";
}