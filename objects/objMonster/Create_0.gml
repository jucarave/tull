event_inherited();

STATES = {
	NONE: 0,
	IDLE: 1,
	MOVING: 2
};

state = STATES.IDLE;

actor = actor_create("skeleton", 5);