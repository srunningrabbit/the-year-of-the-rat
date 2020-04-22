draw_set_color(c_white);
draw_set_alpha(1);
draw_set_halign(fa_center);
draw_text_transformed(view_w / 2, view_h / 2 - 50, "The Year of the Rat", 1, 1, 0);

if (text_showing) {
	draw_text_transformed(view_w / 2, view_h / 2, "PRESS ENTER TO BEGIN", 0.5, 0.5, 0);
}

image_xscale = .15
image_yscale = .15

x = camera_get_view_x(view_camera[0]);
y = camera_get_view_y(view_camera[0]);

draw_self()