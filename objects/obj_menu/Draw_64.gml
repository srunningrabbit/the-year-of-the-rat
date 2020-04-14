if (instr_on or menu_on) {
	if (instr_on) {
		draw_set_halign(fa_left);
		draw_set_color(c_black);
		draw_set_alpha(0.75);
		draw_rectangle(0, 0, view_w, view_h, false);
	
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_text_transformed(view_w / 2 - 50, view_h / 2 - 50, "INSTRUCTIONS", 0.5, 0.5, 0);
		draw_text_transformed(view_w / 2 - 50, view_h / 2 - 30, "MOVE: WASD", 0.4, 0.4, 0);
		draw_text_transformed(view_w / 2 - 50, view_h / 2 - 20, "SPRINT: SHIFT", 0.4, 0.4, 0);
		draw_text_transformed(view_w / 2 - 50, view_h / 2 - 10, "JUMP: SPACEBAR", 0.4, 0.4, 0);
		draw_text_transformed(view_w / 2 - 50, view_h / 2 + 0, "MENU: E", 0.4, 0.4, 0);
		draw_text_transformed(view_w / 2 - 50, view_h / 2 + 10, "MINIMAP: M", 0.4, 0.4, 0);
		draw_text_transformed(view_w / 2 - 50, view_h / 2 + 20, "DRAW PATH: HOLD RIGHT CLICK", 0.4, 0.4, 0);
		draw_text_transformed(view_w / 2 - 50, view_h / 2 + 30, "SCISSORS: LEFT CLICK", 0.4, 0.4, 0);
		draw_text_transformed(view_w / 2 - 50, view_h / 2 + 40, "CHISEL: C", 0.4, 0.4, 0);
		draw_text_transformed(view_w / 2 - 50, view_h / 2 + 50, "HAMMER: H", 0.4, 0.4, 0);
	}
	
	if (menu_on) {
		draw_set_halign(fa_left);
		draw_set_color(c_black);
		draw_set_alpha(0.25);
		draw_rectangle(0, 0, view_w, view_h, false);
		draw_set_alpha(0.75);
		draw_rectangle(view_w / 2 - 75, view_h / 2 - 25, view_w / 2 + 75, view_h / 2 + 25, false);
	
		draw_set_color(c_white);
		draw_set_alpha(1);
		draw_text_transformed(view_w / 2 - 50, view_h / 2 - 18, "PRESS S TO SAVE", 0.6, 0.6, 0);
		draw_text_transformed(view_w / 2 - 50, view_h / 2 - 4, "PRESS L TO LOAD SAVE", 0.6, 0.6, 0);
		draw_set_color(c_gray);
		draw_text_transformed(view_w / 2 - 50, view_h / 2 + 10, "PRESS ESC TO END GAME", 0.4, 0.4, 0);
	}
} else {
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_set_halign(fa_right);
	draw_text_transformed(view_w - 5, 5, "NEED INSTRUCTIONS?", 0.4, 0.4, 0);
	draw_text_transformed(view_w - 5, 15, "PRESS 'I'", 0.4, 0.4, 0);
}