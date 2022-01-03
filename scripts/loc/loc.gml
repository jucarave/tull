function loc(key){
	if (!ds_map_exists(global.LANG, key)) {
		return "Unknown key [" + key + "]";
	}
	
	return global.LANG[? key];
}