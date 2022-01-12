function fx_create_missile(object, xfrom, yfrom, xto, yto, angle){
	ds_list_add(objFXDirector.steps, [FX_DIR_CREATE_MISSILE, object, xfrom, yfrom, xto, yto, angle]);
}