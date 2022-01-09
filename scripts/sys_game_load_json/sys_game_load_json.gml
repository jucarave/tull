function sys_game_load_json(){
	if (!file_exists("champions.json")) {
		sys_set_action_text(loc("game.notFound"), ACTION_TEXT_SHORT);
		exit;
	}
	
	var file = file_text_open_read("champions.json");
	var json = json_parse(file_text_read_string(file));
	file_text_close(file);
	
	objPlayer.x = json.player.x;
	objPlayer.y = json.player.y;
	objPlayer.targetX = json.player.targetX;
	objPlayer.targetY = json.player.targetY;
	objPlayer.state = json.player.state;
	objPlayer.acted = json.player.acted;
	
	if (instance_exists(objLevel)) { instance_destroy(objLevel); }
	var level = instance_create_layer(0, 0, "Level", json.level.object);
	level.level = json.level.level;
	level.viewMap = json.level.viewMap;
	level.width = json.level.width;
	level.height = json.level.height;
	with (level) { level_parse_solid_map(); }
	
	level_update_light();
}