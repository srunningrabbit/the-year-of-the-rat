/// Run state

script_execute(state);
sprite_index = sprite[face, movement];

// Restart game if health drops below 0
if (hp <= 0) {
	// Make some kind of gameover screen maybe?
	game_restart();
}

// Finding cheese sculpture with end sequence
if (cheese_amnt == 5 and room = room0 and not continue1) {
	complete_cheese1 = true;
	complete_cheese2 = false;
	if (keyboard_check(vk_enter)) {
		complete_cheese1 = false;
		continue1 = true;
	}
} else if (cheese_amnt == 6 and room = room1 and not continue2) {
	complete_cheese1 = false;
	complete_cheese2 = true;
	if (keyboard_check(vk_enter)) {
		complete_cheese2 = false;
		continue2 = true;
	}
}

if (continue2) {
	endSculpture = true;
}

// Increase player health over time
if (hp < max_hp and not place_meeting(x, y, obj_rat)) {
	alarm[1] = 1;
}