function inventory_add_item(item) {
	if (item.type == ITEM_TYPE_WEAPON) {
		ds_list_add(objSystem.weapons, item);
	} else if (item.type == ITEM_TYPE_CONSUMABLE) {
		ds_list_add(objSystem.consumables, item);
	}
}