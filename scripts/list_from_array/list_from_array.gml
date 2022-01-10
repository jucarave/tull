function list_from_array(array){
	var length = array_length(array);
	var list = ds_list_create();
	
	for (var i=0;i<length;i++) {
		ds_list_add(list, array[i]);
	}
	
	return list;
}