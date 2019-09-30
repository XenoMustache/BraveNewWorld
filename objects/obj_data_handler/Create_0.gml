grid_width = 40;
grid_height = 30;
cell_width = 12;
cell_height = 16;
player_x = 0;
player_y = 0;
inventory_open = false;
player_can_move = true;
grid = ds_grid_create(grid_width, grid_height);
inventory = ds_list_create();
for (var i = 0; i < grid_width; i++) {
	for (var j = 0; j < grid_height; j++) {
		grid[# i, j] = ds_list_create();
		ds_list_set(grid[# i, j], 1, "null");
		ds_list_set(grid[# i, j], 2, "wood");
		ds_list_set(grid[# i, j], 3, "air");
	}
}
ds_list_set(grid[# grid_width div 2, grid_height div 2], 1, "player");
//ds_list_set(grid[# (grid_width div 2)+1, grid_height div 2], 1, "rat");
for (var m = 0; m < grid_width; m++) {
	ds_list_set(grid[# m, 0], 1, "wall");
	ds_list_set(grid[# m, 0], 2, "wood");
}
for (var n = 0; n < grid_height; n++) {
	ds_list_set(grid[# 1, n], 1, "wall");
	ds_list_set(grid[# 1, n], 2, "wood");
}
for (var o = 0; o < grid_height; o++) {
	ds_list_set(grid[# grid_width-1, o], 1, "wall");
	ds_list_set(grid[# grid_width-1, o], 2, "wood");
}
for (var p = 0; p < grid_width; p++) {
	ds_list_set(grid[# p, grid_height-1], 1, "wall");
	ds_list_set(grid[# p, grid_height-1], 2, "wood");
}