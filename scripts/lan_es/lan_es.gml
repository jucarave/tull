function lan_es(){
	if (global.LANG != noone) { ds_map_clear(global.LANG); }
	
	global.LANG = ds_map_create();
	
	global.LANG[? "lang"] = "ES";
	
	global.LANG[? "attack.selectDir"] = "Seleccione una dirección para atacar.";
	
	global.LANG[? "item.weaponSheathed"] = "Arma envainada.";
	
	global.LANG[? "shortSword.picked"] = "Espada corta recogida.";
	global.LANG[? "shortSword.equipped"] = "Espada corta equipada.";
	global.LANG[? "shortSword.description"] = "Espada corta, ataca por " + string(DATA_SHORT_SWORD_DMG) + " puntos de daño cortante.";
	
	global.LANG[? "hpPotion.picked"] = "Poción de salud recogida.";
	global.LANG[? "hpPotion.used"] = "Poción de salud consumida.";
	global.LANG[? "hpPotion.description"] = "Restaura " + string(DATA_HP_POTION_HEALS) + " puntos de salud.";
	
	global.LANG[? "wait"] = "Esperando.";
	
	global.LANG[? "skeleton.dies"] = "El esqueleto muere.";
	global.LANG[? "skeleton.activate"] = "Ves a un esqueleto.";
}