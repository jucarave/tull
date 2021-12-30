function actor_get_at(_x, _y){
	var length = instance_number(objActor);
	var gx = floor(_x / GRID_WIDTH);
	var gy = floor(_y / GRID_HEIGHT);
	
	
	for (var i=0;i<length;i++) {
		var actor = instance_find(objActor, i);
		if (actor.id == id) { continue;}
		
		if (floor(actor.x / GRID_WIDTH) == gx && floor(actor.y / GRID_HEIGHT) == gy) {
			return actor;
		}
	}
	
	return noone;
}