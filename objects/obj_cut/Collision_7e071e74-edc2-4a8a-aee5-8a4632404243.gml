// Spawn cut particles
if (other.sprite_index = 0) part_type_color2(global.particle1, c_green, c_lime);
else if (other.sprite_index = 1) part_type_color2(global.particle1, c_white, c_gray);
part_particles_create(global.particle_system, mouse_x, mouse_y, global.particle1, 5);

// Destroy vine if cut
instance_destroy(other);

// Destroy the cut object
instance_destroy();