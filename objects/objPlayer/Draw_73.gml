if (visibleTargets != noone) {
	var ins = visibleTargets[visibleTargetSelected];
	draw_sprite(sprTargetSelector, 0, ins.x + GRID_WIDTH / 2 + objLevel.xport, ins.y + GRID_HEIGHT + objLevel.yport);
}