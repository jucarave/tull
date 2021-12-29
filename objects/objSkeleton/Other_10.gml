/// @description Step Event

var xTo = irandom_range(-1, 1);
var yTo = (xTo == 0) ? irandom_range(-1, 1) : 0;

if (xTo != 0 || yTo != 0) {
	actor_move_to(xTo, yTo);
}

actor_end_turn();