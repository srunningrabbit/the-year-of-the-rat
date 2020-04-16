/// Run state

script_execute(state);
sprite_index = sprite[face, movement];

// Restart game if health drops below 0
if (hp <= 0) {
	// Make some kind of gameover screen maybe?
	game_restart();
}

// Increase player health over time
if (hp < max_hp and not place_meeting(x, y, obj_rat)) {
	alarm[1] = 1;
}