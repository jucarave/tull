function sys_set_action_text(text, secondsVisible = -1){
	objActionText.action = text;
	
	if (secondsVisible == -1) {
		objActionText.alarm[0] = -1;
	} else {
		objActionText.alarm[0] = secondsVisible * room_speed;	
	}
}