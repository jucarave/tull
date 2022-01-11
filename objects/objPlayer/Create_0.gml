event_inherited();

STATES = {
	NONE: 0,
	IDLE: 1,
	SELECT_DIRECTION: 2,
	SELECT_TARGET: 3,
	MOVING: 4,
	INVENTORY: 5
};

state = STATES.IDLE;

visibleTargets = noone;
visibleTargetSelected = 0;

camera = view_camera[0];
camW = camera_get_view_width(camera) / 2;
camH = camera_get_view_height(camera) / 2;

prevWeapon = objSystem.weapon;