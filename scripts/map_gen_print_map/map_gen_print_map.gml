function map_gen_print_map(map, width){
	var str = "";
	var l = array_length(map);
	
	for (var i=0;i<l;i++) {
		if (i % width == 0 && i > 0) { str += "\n"; }
		str += string(map[i]) + ",";
	}
	
	show_debug_message(str);
}