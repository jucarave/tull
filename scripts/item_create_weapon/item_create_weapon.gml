function item_create_weapon(sprite, name, damage, attackType){
	return {
		sprite: sprite,
		type: ITEM_TYPE_WEAPON,
		name: name,
		damage: damage,
		attackType: attackType
	};
}