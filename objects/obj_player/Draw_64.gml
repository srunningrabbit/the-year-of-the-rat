/// Draw individual hearts and choose if they are full or half empty

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
	
	draw_sprite(spr_heart, _image_index, (i * 1.5), 10);
}