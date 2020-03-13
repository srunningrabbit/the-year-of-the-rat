/// Run state
script_execute(state);
sprite_index = sprite[face, movement];

// Restart game if health drops below 0
if (hp <= 0) {
	// Make some kind of gameover screen maybe?
	game_restart();
}

// If "L" is pressed then load the game
if (keyboard_check_pressed(ord("L"))) {
	// Delete player
	instance_destroy(obj_player);
	// Load the save file
	ini_open("Save.ini");
	//Read from ini file
	room = ini_read_real("SaveGame", "room", 0);
	//x = ini_read_real("SaveGame", "xPos", 0);
	//y = ini_read_real("SaveGame", "yPos", 0);
	xpos = ini_read_real("SaveGame", "xPos", 0);
	ypos = ini_read_real("SaveGame", "yPos", 0);
	//Close the file
	ini_close();
	// Create new player at the saved position
	//instance_create_depth(x, y, 20, obj_player);
	instance_create_layer(xpos, ypos, "Instances", obj_player);
}