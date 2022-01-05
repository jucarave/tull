event_inherited();

STATES = {
	NONE: 0,
	IDLE: 1,
	CHASING: 2,
	MOVING: 3
};

state = STATES.IDLE;

actor = actor_create("skeleton", 5);