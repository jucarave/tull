function item_heal(target, args){
	var healsFor = args[0];
	target.hp = clamp(target.hp + healsFor, 0, target.maxHP);
	
	target = noone;
}