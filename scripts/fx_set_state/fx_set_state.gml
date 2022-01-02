function fx_set_state(target, state){
	ds_list_add(objFXDirector.steps, [FX_DIR_SET_STATE, target, state]);
}