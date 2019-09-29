var hmove = (keyboard_check_pressed(ord("D")) || keyboard_check_pressed(vk_right)) - (keyboard_check_pressed(ord("A")) || keyboard_check_pressed(vk_left));
var vmove = (keyboard_check_pressed(ord("S")) || keyboard_check_pressed(vk_down)) - (keyboard_check_pressed(ord("W")) || keyboard_check_pressed(vk_up));
for (var i = 0; i < grid_width; i++) {
	for (var j = 0; j < grid_height; j++) {
		var data = ds_list_find_value(grid[# i, j], 1);
		if (data == "player") {
			player_x = i;
			player_y = j;
		}
	}
}
if (hmove != 0 || vmove != 0) {
	if (ds_list_find_value(grid[# player_x+hmove, player_y+vmove], 1) == "null") {
		ds_list_set(grid[# player_x, player_y], 1, "null");
		ds_list_set(grid[# player_x + hmove, player_y + vmove], 1, "player");
	}
	alarm[0] = 1;
}