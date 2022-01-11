function inventory_use_item(target){
	if (objSystem.inventoryCursor == -1) { exit; }

	var item = objSystem.consumables[| objSystem.inventoryCursor];
	var effect = item.effect;
	script_execute(effect, target, item.effectParams);
	
	ds_list_delete(objSystem.consumables, objSystem.inventoryCursor);
}