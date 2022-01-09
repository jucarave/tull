function ui_create_damage(_x, _y, damage) {
	var dmg = instance_create_layer(_x, _y + GRID_HEIGHT / 2, "Damage", objReceivedDamage);
	dmg.damage = string(damage);
}