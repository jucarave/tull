function array_find(array, value){
	var length = array_length(array);
	
	for (var i=0;i<length;i++) {
		if (array[i] == value) {
			return i;
		}
	}
	
	return -1;
}