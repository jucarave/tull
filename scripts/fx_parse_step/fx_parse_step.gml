function fx_parse_step(){
	switch (step[FX_DIR_TYPE]) {
		case FX_DIR_ANIM:
			fxSpr = step[FX_DIR_ANIM_SPR];
			fxx = step[FX_DIR_ANIM_X];
			fxy = step[FX_DIR_ANIM_Y];
			fxImgInd = 0;
			fxImgSpd = sprite_get_speed(fxSpr);
			fxImgNum = sprite_get_number(fxSpr);
			break;
	}
}