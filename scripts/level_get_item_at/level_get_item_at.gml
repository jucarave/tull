function level_get_item_at(_x, _y){
	var length = instance_number(objItem);
	for (var i=0;i<length;i++) {
		var ins = instance_find(objItem, i);
		
		if (ins.x == _x && ins.y == _y) {
			return ins;
		}
	}
	
	return noone;
}