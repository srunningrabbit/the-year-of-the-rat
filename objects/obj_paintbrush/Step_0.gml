// Click and drag to paint a path
if (obj_input.right_click) {
	// Set x and y to the mouse location
	x = mouse_x;
	y = mouse_y;
	
	// Create instance of sprite in room
	//instance_create_layer(x, y, "Instances", obj_paint);
	if (!position_meeting(mouse_x, mouse_y, obj_player)) instance_create_depth(x, y, 20, obj_paint);
}

