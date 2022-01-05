xport = 0;
yport = 8;

xview = -20;
yview = -7;
wview = 42;
hview = 16;

shadowsColor = make_color_rgb(51, 69, 81);

viewMap = array_create(height * width, 0);
level_update_light();

mpGrid = mp_grid_create(0, 0, width * GRID_WIDTH, height * GRID_HEIGHT, GRID_WIDTH, GRID_HEIGHT);
for (var _y=0;_y<height;_y++) {
	for (var _x=0;_x<width;_x++) {
		if (level_is_solid(_x, _y)) {
			mp_grid_add_cell(mpGrid, _x, _y);
		}
	}
}