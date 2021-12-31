event_inherited();

STATES = {
	IDLE: 0,
	SELECT_DIRECTION: 1,
	MOVING: 2
};

state = STATES.IDLE;

movementDelay = 0;

camera = view_camera[0];
camW = camera_get_view_width(camera) / 2;
camH = camera_get_view_height(camera) / 2;