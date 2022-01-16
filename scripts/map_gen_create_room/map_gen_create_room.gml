function map_gen_create_room(ind, _x, _y, w, h){
	return {
		ind: ind,
		x: _x,
		y: _y,
		w: w,
		h: h,
		exits: array_create(4, noone)
	};
}