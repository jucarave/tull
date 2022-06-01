function map_gen_create_room(prefabIndex, _x, _y, w, h){
	return {
		prefabIndex: prefabIndex,
		x: _x,
		y: _y,
		w: w,
		h: h,
		exits: array_create(4, noone)
	};
}