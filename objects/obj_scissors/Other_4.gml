global.particle1 = part_type_create();
part_type_shape(global.particle1, pt_shape_pixel);
part_type_size(global.particle1, 1, 1, 0, 0.5);
part_type_color2(global.particle1, c_red, c_maroon);
part_type_speed(global.particle1, 2, 5, -0.10, 0);
part_type_direction(global.particle1, 270, 270, 0, 20);
part_type_blend(global.particle1, true);
part_type_life(global.particle1, 10, 20);
