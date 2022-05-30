function array_get_random_element(array){
	var ind = irandom(array_length(array) - 1);
	return array[ind];
}