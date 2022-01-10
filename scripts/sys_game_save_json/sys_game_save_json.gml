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
		},
		
		items: [],
		
		enemies: []
	};
	
	var itemsLength = 0;
	var length = instance_number(objItem);
	for (var i=0;i<length;i++) {
		var item = instance_find(objItem, i);
		
		data.items[itemsLength++] = {
			object: item.object_index,
			x: item.x,
			y: item.y
		};
	}
	
	var enemiesLength = 0;
	length = instance_number(objMonster);
	for (var i=0;i<length;i++) {
		var ins = instance_find(objMonster, i);
		
		data.enemies[enemiesLength++] = {
			x: ins.x,
			y: ins.y,
			object: ins.object_index,
			name: ins.actor.name,
			hp: ins.actor.hp,
			maxHP: ins.actor.maxHP,
			mp: ins.actor.mp,
			maxMP: ins.actor.maxMP
		};
	}
	
	file_text_write_string(file, json_stringify(data));
	
	file_text_close(file);
	
	sys_set_action_text(loc("game.saved"), ACTION_TEXT_SHORT);
}