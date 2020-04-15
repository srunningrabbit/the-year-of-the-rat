// Click and drag to chisel 
if(keyboard_check_pressed(ord("C"))) {
	// Set x and y to the mouse location
	// Can only use at a certain range from the mouse
	x = mouse_x;
	y = mouse_y;
	if ((x <= obj_player.x + 100) && (y <= obj_player.y + 100) && (x >= obj_player.x - 30) && (y >= obj_player.y - 30)) {
		// Change depth to where things are in the actual level once the levels are made
		instance_create_depth(x, y, 20, obj_chiselDamage);
	}
}