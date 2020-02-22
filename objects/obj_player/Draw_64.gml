/// Draw individual hearts and choose if they are full or half empty
// Location of starting heart depending on view camera
heart_pos_x = 0 - camera_get_view_width(view_camera[0]);
heart_pos_y = 0 - camera_get_view_height(view_camera[0]) + 90;

// Local health variables
player_health = hp;
player_health_frac = player_health mod 10;
player_health -= player_health_frac;

// Sprite of heart is determined by health, ex. 32 would result in 3.25 hearts
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
	
	draw_sprite(spr_heart, 
	_image_index, 
	heart_pos_x + (i * 1.5), 
	heart_pos_y);
}