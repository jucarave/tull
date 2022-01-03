function lan_es(){
	if (global.LANG != noone) { ds_map_clear(global.LANG); }
	
	global.LANG = ds_map_create();
	
	global.LANG[? "lang"] = "ES";
	global.LANG[? "attack.selectDir"] = "Seleccione una dirección para atacar.";
}