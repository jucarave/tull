var ver = keyboard_check_pressed(KEY_DOWN) - keyboard_check_pressed(KEY_UP);
if (ver != 0) {
	cursor = clamp(cursor + ver, 0, 2);
}

if (keyboard_check_pressed(KEY_INTERACT)) {
	switch (cursor) {
		case 0:
		case 1:
			room_goto(rooGame);
			global.LOAD_GAME = cursor == 1;
			break;
			
		case 2:
			game_end();
			break;
	}
}