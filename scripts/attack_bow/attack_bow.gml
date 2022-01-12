function attack_bow(origin, target, weapon, _x, _y){
	var angle = point_direction(origin.x, origin.y, _x, _y);
	var xf = origin.x + GRID_WIDTH / 2 + objLevel.xport;
	var yf = origin.y + GRID_HEIGHT / 2 + objLevel.yport;
	var xt = _x + GRID_WIDTH / 2 + objLevel.xport;
	var yt = _y + GRID_HEIGHT / 2 + objLevel.yport;

	fx_create_missile(objArrowMissile, xf, yf, xt, yt, angle);
	fx_set_on_hold();
	fx_perform_attack(target, weapon);
	fx_end_turn(id);
	fx_set_state(id, STATES.IDLE);
	
	fx_start();
}