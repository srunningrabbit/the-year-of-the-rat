// Make starting text blink
if (alarm[0] = 0) {
	text_showing = false;
	alarm[1] = alarm1_value;
}

// Start game
if (obj_input.start_key) {
	//instance_deactivate_all(true);
	room_goto_next();
}