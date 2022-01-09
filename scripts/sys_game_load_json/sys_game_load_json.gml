function sys_game_load_json(){
	if (!file_exists("champions.json")) {
		sys_set_action_text(loc("game.notFound"), ACTION_TEXT_SHORT);
		exit;
	}
	
	var file = file_text_open_read("champions.json");
	var json = json_parse(file_text_read_string(file));
	file_text_close(file);
	
	objPlayer.x = json.player.x * GRID_WIDTH;
	objPlayer.y = json.player.y * GRID_HEIGHT;
	objPlayer.state = json.player.state;
	objPlayer.acted = json.player.acted;
	
	level_update_light();
}