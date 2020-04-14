part_type_color2(global.particle1, c_green, c_lime);
part_particles_create(global.particle_system, mouse_x, mouse_y, global.particle1, 5);

// Destroy vine if cut
instance_destroy(other);

// Damage enemy if they get cut ( 1 damage )
with other {
	hp = hp - 1;
	if (hp <= 0) {
		instance_destroy();
	}
}

// Destroy the cut object
instance_destroy();