// Click and drag to chisel 
if (mouse_check_button(mb_right)) {
	// Set x and y to the mouse location
	x = mouse_x;
	y = mouse_y;
	// Change depth to where things are in the actual level once the levels are made
	instance_create_depth(x, y, 20, obj_cut);
}