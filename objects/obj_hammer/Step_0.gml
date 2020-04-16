// Click to hammer 
correct_slot = (obj_inventory.inventory_items[?obj_inventory.inventory_position] = spr_hammer);
if (obj_input.left_click and correct_slot) {
	// Set x and y to the mouse position
	// Can only use at a certain range from the mouse
		x = mouse_x;
		y = mouse_y;
		if ((x <= obj_player.x + 80) && (y <= obj_player.y + 80) && (x >= obj_player.x - 10) && (y >= obj_player.y - 10)) {
			// Change depth to where things are in the actual level once the levels are made
			instance_create_depth(x, y, 20, obj_hammerDamage);
		}
}