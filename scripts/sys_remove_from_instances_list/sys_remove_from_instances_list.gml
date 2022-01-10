function sys_remove_from_instances_list(instance){
	ds_list_delete(objCurrentTurn.instancesList, ds_list_find_index(objCurrentTurn.instancesList, instance));
	if (objCurrentTurn.currentTurn >= ds_list_size(objCurrentTurn.instancesList)) {
		objCurrentTurn.currentTurn = 0;
	}
}