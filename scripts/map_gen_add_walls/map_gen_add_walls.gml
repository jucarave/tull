function map_gen_add_walls(level, width, height){
	var levelSize = array_length(level);
	for (var i=0;i<levelSize;i++) {
		var xx = i % width;
		var yy = floor(i / width);
	
		var tile = level[i];
		if (tile != 0) { continue; }
	
		var tu = (yy > 0) ? level[(yy - 1) * width + xx] : 0;
		var td = (yy < height - 1) ? level[(yy + 1) * width + xx] : 0;
		var tl = (xx > 0) ? level[yy * width + xx - 1] : 0;
		var tr = (xx < width - 1) ? level[yy * width + xx + 1] : 0;
		
		var tul = (yy > 0 && xx > 0)? level[(yy - 1) * width + (xx - 1)] : 0;
		var tur = (yy > 0 && xx < width - 1)? level[(yy - 1) * width + (xx + 1)] : 0;
		var tdl = (yy < height - 1 && xx > 0)? level[(yy + 1) * width + (xx - 1)] : 0;
		var tdr = (yy < height - 1 && xx < width - 1)? level[(yy + 1) * width + (xx + 1)] : 0;
	
		if (td == 1) { level[@ i] = 3; }
		if (tu == 1 && tdl == 0 && tdr == 0) { level[@ i] = 3; }
		if ((tl == 1 || tr == 1) && td == 0) { level[@ i] = 5; }
		
		var tile = level[i];
		if (tile != 0) { continue; }
	
		if (tul == 1 || tur == 1) { level[@ i] = 3; }
		if (tdl == 1 || tdr == 1) { level[@ i] = 5; }
	}
}