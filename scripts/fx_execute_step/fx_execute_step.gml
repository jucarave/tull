function fx_execute_step(){
	switch (step[FX_DIR_TYPE]) {
		case FX_DIR_ANIM:
			fx_execute_animation();
			break;
		
		case FX_DIR_SET_STATE:
			var obj = step[FX_DIR_SET_STATE_TARGET];
			obj.state = step[FX_DIR_SET_STATE_STATE];
			fx_next_step();
			break;
		
		case FX_DIR_ATTACK:
			var weapon = step[FX_DIR_ATTACK_WEAPON];
			with (step[FX_DIR_ATTACK_TARGET]) { actor_receive_attack(weapon); }
			fx_next_step();
			break;
			
		case FX_DIR_CREATE_MISSILE:
			var _x = step[FX_DIR_CREATE_MISSILE_X];
			var _y = step[FX_DIR_CREATE_MISSILE_Y];

			var missile = instance_create_layer(_x, _y, "Damage", step[FX_DIR_CREATE_MISSILE_OBJECT]);
			missile.targetX = step[FX_DIR_CREATE_MISSILE_XTO];
			missile.targetY = step[FX_DIR_CREATE_MISSILE_YTO];
			missile.image_angle = step[FX_DIR_CREATE_MISSILE_ANGLE];
			missile.direction = missile.image_angle;
			
			fx_next_step();
			break;
		
		case FX_DIR_END_TURN:
			with (step[FX_DIR_END_TURN_ACTOR]) { actor_end_turn(); }
			fx_next_step();
			break;
	}
}