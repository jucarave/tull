function lan_es(){
	if (global.LANG != noone) { ds_map_clear(global.LANG); }
	
	global.LANG = ds_map_create();
	
	global.LANG[? "lang"] = "ES";
	
	global.LANG[? "attack.selectDir"] = "Seleccione una dirección para atacar.";
	
	global.LANG[? "item.weaponSheathed"] = "Arma envainada.";
	
	global.LANG[? "shortSword.picked"] = "Espada corta recogida.";
	global.LANG[? "shortSword.equipped"] = "Espada corta equipada.";
	
	global.LANG[? "wait"] = "Esperando.";
	
	global.LANG[? "skeleton.dies"] = "El esqueleto muere.";
}