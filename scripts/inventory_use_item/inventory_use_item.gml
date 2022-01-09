function inventory_use_item(target){
	if (objSystem.inventoryCursor == -1) { exit; }

	var item = objSystem.consumables[| objSystem.inventoryCursor];
	var ins = instance_find(item.objectId, 0);
	ins.target = target;
	with (ins) { event_user(0); }
	
	ds_list_delete(objSystem.consumables, objSystem.inventoryCursor);
}