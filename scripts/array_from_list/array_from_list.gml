function array_from_list(list) {
	var length = ds_list_size(list);
	var array = array_create(length);
	
	for (var i=0;i<length;i++) {
		array[i] = list[| i];
	}
	
	return array;
}