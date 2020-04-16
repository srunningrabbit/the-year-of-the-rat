// Corners of the inventory bar
ui_x = [view_w / 2 - 100, view_w / 2 + 100];
ui_y = [view_h - 26, view_h - 4];

// Drop shadow of inventory bar
draw_set_alpha(0.25);
draw_set_color(c_black);
draw_rectangle(ui_x[0] + 1, ui_y[0] + 1, ui_x[1] + 1, ui_y[1] + 1, false);

// Inventory bar
draw_set_alpha(1);
draw_set_color(make_color_rgb(200, 163, 136));
draw_rectangle(ui_x[0], ui_y[0], ui_x[1], ui_y[1], false);

// Individual inventory slots
num = 1;
for (var i = ui_x[0] + box_offset; i < ui_x[1]; i += box_width + box_offset) {
	// Drop shadow of inventory slot
	draw_set_alpha(0.25);
	draw_set_color(c_black);
	draw_rectangle(i + 1, ui_y[0] + 3, i + box_width + 1, ui_y[1] - 1, false);
	
	// Inventory slot, color dependent on if it is selected or not
	draw_set_alpha(1);
	if (i = ui_x[0] + box_offset + (inventory_position - 1) * (box_width + box_offset)) {
		draw_set_color(c_white);
	} else {
		draw_set_color(make_color_rgb(223, 208, 188));
	}
	
	draw_rectangle(i, ui_y[0] + 2, i + box_width, ui_y[1] - 2, false);
	slot_x_locations[num] = i;
	num++;
}

for (var j = 1; j <= 7; j++) {
	if (ds_map_exists(inventory_items, j)) {
		draw_sprite_pos(inventory_items[?j], 0,
		slot_x_locations[j], ui_y[0] + 2,
		slot_x_locations[j] + box_width, ui_y[0] + 2,
		slot_x_locations[j] + box_width, ui_y[1] - 2,
		slot_x_locations[j], ui_y[1] - 2,
		1);
	}
}