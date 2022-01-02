function fx_add_animation(sprite, _x, _y){
	ds_list_add(objFXDirector.steps, [FX_DIR_ANIM, sprite, _x, _y]);
}