function fx_start(){
	with (objFXDirector) {
		step = steps[| 0];
		fx_parse_step();
	}
}