solids = [3, 4, 5, 6, 7, 8, 9, 10, 13];
lightSolids = [3, 4, 5];

event_inherited();

prefabs = [
	{
		map: [
			1, 1, 1, 1, 1,
			1, 1, 1, 1, 1,
			1, 1, 1, 1, 1,
			1, 1, 1, 1, 1,
			1, 1, 1, 1, 1
		],
		width: 5,
		height: 5,
		player: [3, 3],
		enemies: [
			[[2, 2], [4, 4]],
			[[2, 2], [4, 4]]
		],
		treasure: [],
		stairs: [1, 1]
	}
];