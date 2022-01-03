function fx_perform_attack(target, weapon) {
	ds_list_add(objFXDirector.steps, [FX_DIR_ATTACK, target, weapon]);
}