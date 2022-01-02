var length = ds_list_size(inventory);
for (var i=0;i<length;i++) {
	var item = inventory[| i];
	draw_text(0, 24 + 12 * i, item.name);
}