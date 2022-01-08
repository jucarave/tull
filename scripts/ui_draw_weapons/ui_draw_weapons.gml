function ui_draw_inventory(list, cursor, _y){
	var length = ds_list_size(list) + 1;
	var hor = 0;
	
	for (var i=0;i<length;i++) {
		var _x = 33 + 19 * hor++;
		var selected = (cursor == i) ? 1 : 0;
		draw_sprite(sprUIItemBack, selected, _x, _y);
	
		if (i > 0) {
			var item = list[| i - 1];
			draw_sprite(item.sprite, 0, _x, _y);
		}
	}
}