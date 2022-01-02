function fx_next_step(){
	step = noone;
	ds_list_delete(steps, 0);
	
	if (ds_list_size(steps) > 0) {
		step = steps[| 0];
		fx_parse_step();
	}
}