// Open instructions
if (keyboard_check_pressed(ord("I"))) {
	menu_on = false;
	if (instr_on) {
		instr_on = false;
	} else {
		instr_on = true;
	}
}


// Open up menu
if(obj_input.menu_key and canClick){
	if (not menu_on){
		menu_on = true;
	} else {
		menu_on = false;
	}
	canClick = false;
	alarm[0] = room_speed / 4;
}

// If "S" is pressed then save
if (keyboard_check_pressed(ord("S"))) {
	if (menu_on) {
		menu_on = false;
		
		// If a save file already exists delete it when saving again
		if (file_exists("Save.ini")) {
			file_delete("Save.ini");
		}
		
		// Open a file to write info to
		ini_open("Save.ini");
		
		// ini_write_real writes a numeric value to the file
		ini_write_real("SaveGame", "room", room);
		
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
}

// If "L" is pressed then load the game
if (keyboard_check_pressed(ord("L"))) {
	if (menu_on) {	
		menu_on = false;
		
		// Load the save file
		ini_open("Save.ini");
		
		// Read from ini file
		room_id = ini_read_real("SaveGame", "room", 0);
		xpos = ini_read_real("SaveGame", "xPos", 0);
		ypos = ini_read_real("SaveGame", "yPos", 0);
		
		// Close the file
		ini_close();
		
		// Change player's position to saved position
		room_goto(room_id);
		obj_player.x = xpos;
		obj_player.y = ypos;
	}
}

// End the game
if (keyboard_check(vk_escape)) game_end();
