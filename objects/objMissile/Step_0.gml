var dx = abs((x - xstart) / (targetX - xstart));
var dy = abs((y - ystart) / (targetY - ystart));

if (dx >= 1 || dy >= 1) {
	instance_destroy();
}