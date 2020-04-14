obj_rat.hp--;

part_type_color2(global.particle1, c_red, c_maroon);
part_particles_create(global.particle_system, mouse_x, mouse_y, global.particle1, 5);

instance_destroy();