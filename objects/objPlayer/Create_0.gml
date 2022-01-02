event_inherited();

STATES = {
	NONE: 0,
	IDLE: 1,
	SELECT_DIRECTION: 2,
	MOVING: 3
};

state = STATES.IDLE;

movementDelay = 0;

camera = view_camera[0];
camW = camera_get_view_width(camera) / 2;
camH = camera_get_view_height(camera) / 2;