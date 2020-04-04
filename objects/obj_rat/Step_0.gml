// Rat movement and position
if (tilemap_get_at_pixel(layer_tilemap_get_id(layer_get_id("Collision")), bbox_left - 1, bbox_bottom + 1) = 0) {
	sprite_index = spr_rat_R;
} else if (tilemap_get_at_pixel(layer_tilemap_get_id(layer_get_id("Collision")), bbox_right + 1, bbox_bottom + 1) = 0) {
	sprite_index = spr_rat_L;
}

if (sprite_index = spr_rat_R) {
	x += walking_speed;
} else if (sprite_index = spr_rat_L) {
	x -= walking_speed;
}

// Check if rat was clicked aka hit
//if (mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, obj_rat)) {
//	hp--;
//}

if (hp <= 0) instance_destroy();