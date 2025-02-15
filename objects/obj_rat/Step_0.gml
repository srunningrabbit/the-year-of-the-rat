// Rat movement and position
if (tilemap_get_at_pixel(layer_tilemap_get_id(layer_get_id("Collision")), bbox_left - 1, bbox_bottom + 1) = 0
	or tilemap_get_at_pixel(layer_tilemap_get_id(layer_get_id("Collision")), bbox_left - 1, bbox_top + 10) 
	or tilemap_get_at_pixel(layer_tilemap_get_id(layer_get_id("Collision")), bbox_left - 1, bbox_bottom - 10) = 1) {
	sprite_index = spr_rat_R;
} else if (tilemap_get_at_pixel(layer_tilemap_get_id(layer_get_id("Collision")), bbox_right + 1, bbox_bottom + 1) = 0
	or tilemap_get_at_pixel(layer_tilemap_get_id(layer_get_id("Collision")), bbox_right + 1, bbox_top + 10) = 1
	or tilemap_get_at_pixel(layer_tilemap_get_id(layer_get_id("Collision")), bbox_right + 1, bbox_bottom - 10) = 1) {
	sprite_index = spr_rat_L;
}

if (not obj_menu.menu_on and not obj_menu.instr_on and not obj_miniMap.isOpen) {
	if (sprite_index = spr_rat_R) {
		x += walking_speed;
	} else if (sprite_index = spr_rat_L) {
		x -= walking_speed;
	}
}

if (hp < 0) instance_destroy();

