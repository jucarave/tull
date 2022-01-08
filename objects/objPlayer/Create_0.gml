event_inherited();

STATES = {
	NONE: 0,
	IDLE: 1,
	SELECT_DIRECTION: 2,
	MOVING: 3,
	INVENTORY: 4
};

state = STATES.IDLE;

camera = view_camera[0];
camW = camera_get_view_width(camera) / 2;
camH = camera_get_view_height(camera) / 2;

prevWeapon = objSystem.weapon;