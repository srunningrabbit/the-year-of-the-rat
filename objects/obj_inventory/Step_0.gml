// Selecting slot to the left in inventory
if (keyboard_check_pressed(vk_left)) {
	inventory_position--;
	if (inventory_position < 1) inventory_position = 7;
}

// Selecting slot to the right
if (keyboard_check_pressed(vk_right)) {
	inventory_position++;
	if (inventory_position > 7) inventory_position = 1;
}