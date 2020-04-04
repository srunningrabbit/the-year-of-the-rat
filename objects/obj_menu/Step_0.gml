// If "S" is pressed then save
if (keyboard_check_pressed(ord("S"))) {
	// If a save file already exists delete it when saving again
	if (file_exists("Save.ini")) {
		file_delete("Save.ini");
	}
	// Open a file to write info to
	ini_open("Save.ini");
	//var SavedRoom = room;
	// ini_write_real writes a numeric value to the file
	ini_write_real("SaveGame", "Room", room);
	// Saves player's x coord
	ini_write_real("SaveGame", "xPos", obj_player.x);
	// Save player's y coord
	ini_write_real("SaveGame", "yPos", obj_player.y);
	// ini_write_string writes a string to the file
	// If don't close nothing will be written to disk
	ini_close();
	// Tell user the game was saved successfully
	show_message("Save Successful");
	
	// Shows where the file is saved 
	//save_dir = game_save_id;
	//show_message(save_dir);
}

// I put this into the player object
//// If "L" is pressed then load the game
//if (keyboard_check_pressed(ord("L"))) {
//	// Load the save file
//	ini_open("Save.ini");
//	//Read from ini file
//	room = ini_read_real("SaveGame", "room", 0);
//	obj_player.x = ini_read_real("SaveGame", "xPos", 0);
//	obj_player.y = ini_read_real("SaveGame", "yPos", 0);
//	//Close the file
//	ini_close();
//	instance_destroy(obj_player);
//	instance_create_layer(obj_player.x, obj_player.y, "Instances", obj_player);
//	show_message("SHOULD BE LOADING");
//}

if (keyboard_check_pressed(ord("M"))) {
	if (menu_on) {
		menu_on = false;
	} else {
		menu_on = true;
	}
}

if (keyboard_check(vk_escape)) game_end();