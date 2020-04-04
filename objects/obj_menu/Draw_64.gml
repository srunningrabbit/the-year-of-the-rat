if (menu_on) {
	draw_set_color(c_black)
	draw_set_alpha(0.25);
	draw_rectangle(0, 0, view_w, view_h, false)
	draw_set_alpha(0.75);
	draw_rectangle(view_w / 2 - 75, view_h / 2 - 25, view_w / 2 + 75, view_h / 2 + 25, false);
	
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text_transformed(view_w / 2 - 50, view_h / 2 - 18, "PRESS S TO SAVE", 0.6, 0.6, 0);
	draw_text_transformed(view_w / 2 - 50, view_h / 2 - 4, "PRESS L TO LOAD SAVE", 0.6, 0.6, 0);
	draw_set_color(c_gray);
	draw_text_transformed(view_w / 2 - 50, view_h / 2 + 10, "PRESS ESC TO END GAME", 0.4, 0.4, 0);
}