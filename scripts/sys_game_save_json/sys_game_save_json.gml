function sys_game_save_json(){
	var file = file_text_open_write("champions.json");
	
	var data = {
		player: {
			x: floor(objPlayer.x / GRID_WIDTH),
			y: floor(objPlayer.y / GRID_HEIGHT),
			state: objPlayer.state,
			acted: objPlayer.acted
		}
	};
	
	file_text_write_string(file, json_stringify(data));
	
	file_text_close(file);
	
	sys_set_action_text(loc("game.saved"), ACTION_TEXT_SHORT);
}