/// Run state
script_execute(state);
sprite_index = sprite[face, movement];

// Restart game if health drops below 0
if (hp <= 0) {
	// Make some kind of gameover screen maybe?
	game_restart();
}