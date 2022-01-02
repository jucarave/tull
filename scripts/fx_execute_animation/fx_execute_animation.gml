function fx_execute_animation(){
	fxImgInd += fxImgSpd;
	if (fxImgInd >= fxImgNum) {
		fxImgInd = 0;
		fx_next_step();
	}
}