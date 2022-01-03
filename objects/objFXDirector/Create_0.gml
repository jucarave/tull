fxSpr = noone;
fxx = 0;
fxy = 0;
fxImgInd = 0;
fxImgSpd = 0;
fxImgNum = 0;

steps = ds_list_create();

#macro FX_DIR_TYPE 0

#macro FX_DIR_ANIM 0
#macro FX_DIR_ANIM_SPR 1
#macro FX_DIR_ANIM_X 2
#macro FX_DIR_ANIM_Y 3

#macro FX_DIR_SET_STATE 1
#macro FX_DIR_SET_STATE_TARGET 1
#macro FX_DIR_SET_STATE_STATE 2

#macro FX_DIR_ATTACK 2
#macro FX_DIR_ATTACK_TARGET 1
#macro FX_DIR_ATTACK_WEAPON 2

#macro FX_DIR_END_TURN 3
#macro FX_DIR_END_TURN_ACTOR 1

step = noone;