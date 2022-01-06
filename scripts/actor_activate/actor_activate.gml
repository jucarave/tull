function actor_activate(){
	active = true;
	sys_set_action_text(loc(actor.name + ".activate"), ACTION_TEXT_SHORT);
}