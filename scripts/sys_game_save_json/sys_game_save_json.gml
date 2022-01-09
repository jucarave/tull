function sys_game_save_json(){
	var file = file_text_open_write("champions.json");
	
	var data = {
		player: {
			x: objPlayer.x,
			y: objPlayer.y,
			targetX: objPlayer.targetX,
			targetY: objPlayer.targetY,
			state: objPlayer.state,
			acted: objPlayer.acted
		},
		
		level: {
			object: objLevel.object_index,
			viewMap: objLevel.viewMap,
			level: objLevel.level,
			width: objLevel.width,
			height: objLevel.height
		}
	};
	
	file_text_write_string(file, json_stringify(data));
	
	file_text_close(file);
	
	sys_set_action_text(loc("game.saved"), ACTION_TEXT_SHORT);
}