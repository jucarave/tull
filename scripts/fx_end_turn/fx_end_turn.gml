function fx_end_turn(actor) {
	ds_list_add(objFXDirector.steps, [FX_DIR_END_TURN, actor]);
}