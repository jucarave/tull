function player_get_weapon(){
	return (objSystem.weapon == NO_WEAPON) ? objSystem.punch : objSystem.weapons[| objSystem.weapon];
}