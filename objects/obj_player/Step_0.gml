/// Run state
script_execute(state);
sprite_index = sprite[face, movement];

// Restart game if health drops below 0
if (hp <= 0) {
	game_restart();
} else {
	hp -= 0.1;
}