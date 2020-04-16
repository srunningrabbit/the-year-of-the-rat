// Need to get every time tilemap collsions are changed
tilemap = layer_tilemap_get_id("Collision");

// Set particle settings
global.particle_system = part_system_create_layer("Instances", true);
global.particle1 = part_type_create();
part_type_shape(global.particle1, pt_shape_pixel);
part_type_size(global.particle1, 1, 1, 0, 0.5);
part_type_speed(global.particle1, 1, 3, -0.10, 0);
part_type_direction(global.particle1, 270, 270, 0, 20);
part_type_blend(global.particle1, true);
part_type_life(global.particle1, 10, 20);
