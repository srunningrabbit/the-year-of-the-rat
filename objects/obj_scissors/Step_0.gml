// Click and drag to cut 
correct_slot = (obj_inventory.inventory_items[?obj_inventory.inventory_position] = spr_scissors);
if (obj_input.left_click and correct_slot) {
	// Set x and y to the mouse location
	x = mouse_x;
	y = mouse_y;
	if ((x <= obj_player.x + 120) && (y <= obj_player.y + 120) && (x >= obj_player.x - 50) && (y >= obj_player.y - 50)) {
		// Change depth to where things are in the actual level once the levels are made
		instance_create_depth(x, y, 20, obj_cut);
	}
} 