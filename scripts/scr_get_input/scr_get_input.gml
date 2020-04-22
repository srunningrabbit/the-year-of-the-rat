/// scr_get_input
start_key = keyboard_check(vk_enter);

right_key = keyboard_check(ord("D"));
left_key = -keyboard_check(ord("A"));
down_key_pressed = keyboard_check_pressed(ord("S"));
down_key_released = keyboard_check_released(ord("S"));
jump_key = keyboard_check(vk_space);

resize_window = keyboard_check_pressed(ord("Z"));

map_key = keyboard_check(ord("M"));
menu_key = keyboard_check(ord("E"));

left_click = mouse_check_button_pressed(mb_left);
right_click = mouse_check_button(mb_right);