function sys_game_save_json(){
	var file = file_text_open_write("champions.json");
	
	var data = {
		system: {
			weapons: array_from_list(objSystem.weapons),
			weapon: objSystem.weapon,
			consumables: array_from_list(objSystem.consumables)
		},
		
		player: {
			x: objPlayer.x,
			y: objPlayer.y,
			targetX: objPlayer.targetX,
			targetY: objPlayer.targetY,
			state: objPlayer.state,
			acted: objPlayer.acted
		},
		
		playerStats: {
			name: objSystem.playerStats.name,
			hp: objSystem.playerStats.hp,
			maxHP: objSystem.playerStats.maxHP,
			mp: objSystem.playerStats.mp,
			maxMP: objSystem.playerStats.maxMP
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