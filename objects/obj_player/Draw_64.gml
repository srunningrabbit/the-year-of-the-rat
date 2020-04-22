/// Draw individual hearts and choose if they are full or half empty

heart_locations = [];

// Local health variables
player_health = hp;
player_health_frac = player_health mod 10;
player_health -= player_health_frac;

// Sprite of heart is determined by health, ex. 32 would result in 3.25 hearts
var j = 0;
for (var i = 10; i <= max_hp; i += 10) {
	// if i > hp, then index = 1 for that one heart
	// ex. hp = 30, i = 40
	_image_index = (i > player_health);
	
	// Determines which fraction of a heart to display
	// depending on fraction of health
	if (i == player_health + 10) {
		_image_index += (player_health_frac > 0);
		_image_index += (player_health_frac > 2.5);
		_image_index += (player_health_frac > 5);
	}
	
	heart_locations[j] = (i * 1.5) - 10;
	draw_sprite(spr_heart, _image_index, heart_locations[j], 5);
	j++;
}

// Draw collected cheese
for (var i = 0; i < cheese_amnt; i++) {
	draw_sprite_ext(spr_cheese, 0, heart_locations[i] + sprite_get_width(spr_heart) / 2, 25, 0.45, 0.45, 0, c_white, 1);
}

if (complete_cheese1) {
	draw_set_halign(fa_left);
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(view_w / 2 - 75, view_h / 2 - 50, view_w / 2 + 75, view_h / 2 + 50, false);
	draw_sprite_pos(spr_cheeseSculpture1, 0, view_w / 2 - 25, view_h / 2 - 40, view_w / 2 + 25, view_h / 2 - 40, view_w / 2 + 25, view_h / 2 + 10, view_w / 2 - 25, view_h / 2 + 10, 1);
	draw_set_halign(fa_center);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text_transformed(view_w / 2, view_h / 2 + 15, "You found all the cheese in this level!", 0.3, 0.3, 0);
	draw_text_transformed(view_w / 2, view_h / 2 + 25, "Half of the sculpture is now complete.", 0.3, 0.3, 0);
	draw_set_color(c_gray);
	draw_text_transformed(view_w / 2, view_h / 2 + 40, "Press ENTER to continue...", 0.3, 0.3, 0);
}

if (complete_cheese2) {
	draw_set_halign(fa_left);
	draw_set_alpha(0.5);
	draw_set_color(c_black);
	draw_rectangle(view_w / 2 - 75, view_h / 2 - 50, view_w / 2 + 75, view_h / 2 + 50, false);
	draw_sprite_pos(spr_cheeseSculpture2, 0, view_w / 2 - 25, view_h / 2 - 40, view_w / 2 + 25, view_h / 2 - 40, view_w / 2 + 25, view_h / 2 + 10, view_w / 2 - 25, view_h / 2 + 10, 1);
	draw_set_halign(fa_center);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text_transformed(view_w / 2, view_h / 2 + 15, "You found all the cheese in this level!", 0.3, 0.3, 0);
	draw_text_transformed(view_w / 2, view_h / 2 + 25, "The sculpture is now complete!", 0.3, 0.3, 0);
	draw_set_color(c_gray);
	draw_text_transformed(view_w / 2, view_h / 2 + 40, "Press ENTER to continue...", 0.3, 0.3, 0);
}

if (endSculpture) {
	draw_set_halign(fa_left);
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_rectangle(0, 0, view_w, view_h, false);
	draw_sprite_pos(spr_completedSculpture, 0, view_w / 2 - 25, view_h / 2 - 40, view_w / 2 + 25, view_h / 2 - 40, view_w / 2 + 25, view_h / 2 + 10, view_w / 2 - 25, view_h / 2 + 10, 1);
	draw_set_halign(fa_center);
	draw_set_alpha(1);
	draw_set_color(c_white);
	draw_text_transformed(view_w / 2, view_h / 2 + 25, "The sculpture is now complete!", 0.3, 0.3, 0);
	draw_set_color(c_gray);
	draw_text_transformed(view_w / 2, view_h / 2 + 40, "Press ESC to end game.", 0.3, 0.3, 0);
}