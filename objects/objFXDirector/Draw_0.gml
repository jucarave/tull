if (step == noone) { exit; }

switch (step[FX_DIR_TYPE]) {
	case FX_DIR_ANIM:
		draw_sprite(fxSpr, fxImgInd, fxx + objLevel.xport, fxy + objLevel.yport);
		break;
}