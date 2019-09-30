for (var i = 0; i < grid_width; i++) {
	for (var j = 0; j < grid_height; j++) {
		var object = ds_list_find_value(grid[# i, j], 1);
		var material = ds_list_find_value(grid[# i, j], 2);
		var fluid = ds_list_find_value(grid[# i, j], 3);
		switch (object) {
			case "null": var char = ".";
			break;
			case "player": var char = "@";
			break;
			case "wall": var char = "#";
			break;
			case "rat": var char = "r";
			break;
		}
		switch (material) {
			case "wood":
				if (object == "wall") var highlight_color = $00346a else var highlight_color = $004289;
			break;
		}
		switch (fluid) {
			case "air": var text_color = c_white;
			break;
		}
		draw_set_color(highlight_color);
		draw_rectangle((i - 1) * cell_width, j * cell_height, (i) * cell_width, (j+1) * cell_height, false);
		draw_set_color(text_color);
		draw_set_font(fnt_default);
		draw_set_halign(fa_right);
		draw_text(i * (cell_width), j * (cell_height), char);
	}
}
draw_set_halign(fa_right);
draw_text(room_width - 5, 5, 
		"Player X: " + string(player_x) + "\n" + 
		"Player Y: " + string(player_y) + "\n");
draw_set_halign(fa_left);
if (inventory_open) {
	draw_text(grid_width * cell_width, 5, "Inventory                      LBS/VOL");
	draw_text(5, room_height - 25, "TAB - Close Inventory");
	if (ds_list_empty(inventory)) draw_text(grid_width * cell_width, cell_height * 2, "No items");
	else if (!ds_list_empty(inventory)) {
		for (var k = 0; k < ds_list_size(inventory); k++) {
			draw_text(grid_width * cell_width, cell_height * k, string(ds_list_find_value(inventory, k)));
		}
	}
} else
draw_text(5, room_height - 25, "TAB - Open Inventory");