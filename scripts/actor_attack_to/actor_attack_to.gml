function actor_attack_to(target){
	instance_destroy(target);
	sys_set_action_text("Skeleton just died.", 5);
}