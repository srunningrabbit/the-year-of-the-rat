// Individual inventory slot
box_width = 18;
box_offset = 9.25;
inventory_position = 1;

ui_x = [];
ui_y = [];
slot_x_locations = [];

// Inventory slots with different items inside
inventory_items = ds_map_create();
inventory_items[?1] = spr_paintbrush;
inventory_items[?2] = spr_scissors;
inventory_items[?3] = spr_chisel;
inventory_items[?4] = spr_hammer;