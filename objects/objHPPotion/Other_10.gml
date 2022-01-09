/// @description ITEM EFFECT

target.hp = clamp(target.hp + healsFor, 0, target.maxHP);
sys_set_action_text(loc(item.name + ".used"), ACTION_TEXT_SHORT);

target = noone;