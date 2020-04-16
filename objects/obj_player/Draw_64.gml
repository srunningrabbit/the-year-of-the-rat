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