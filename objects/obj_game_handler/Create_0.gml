var rm = room_get_name(room);
switch (rm) {
	case "rm_init":
		global.version = 0.01;
		window_set_caption("Brave New World " + string(global.version));
		room_goto_next();
	break;
	case "rm_sandbox":
		instance_create_depth(x, y, depth, obj_data_handler);
	break;
}