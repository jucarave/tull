function sys_game_load_json(){
	if (!file_exists("champions.json")) {
		sys_set_action_text(loc("game.notFound"), ACTION_TEXT_SHORT);
		exit;
	}
	
	var file = file_text_open_read("champions.json");
	var json = json_parse(file_text_read_string(file));
	file_text_close(file);
	
	objCurrentTurn.currentTurn = real(json.currentTurn);
	
	objSystem.weapons = list_from_array(json.system.weapons);
	objSystem.weapon = json.system.weapon;
	objSystem.consumables = list_from_array(json.system.consumables);
	
	objSystem.playerStats = {
		name: json.playerStats.name,
		hp: real(json.playerStats.hp),
		maxHP: real(json.playerStats.maxHP),
		mp: real(json.playerStats.mp),
		maxMP: real(json.playerStats.maxMP)
	};
	
	instance_create_layer(json.player.x, json.player.y, "Instances", objPlayer);
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
	
	while (instance_exists(objItem)) { instance_destroy(objItem); }
	var length = array_length(json.items);
	for (var i=0;i<length;i++) {
		var item = json.items[i];
		instance_create_layer(item.x, item.y, "Items", item.object);
	}
	
	while (instance_exists(objMonster)) { instance_destroy(objMonster); }
	length = array_length(json.enemies);
	for (var i=0;i<length;i++) {
		var enemy = json.enemies[i];
		var ins = instance_create_layer(enemy.x, enemy.y, "Instances", enemy.object);
		ins.active = enemy.active;
		ins.actor = {
			name: enemy.name,
			hp: real(enemy.hp),
			maxHP: real(enemy.maxHP),
			mp: real(enemy.mp),
			maxMP: real(enemy.maxMP)
		};
	}
	
	level_update_light();
}