// Destroy vine if cut
instance_destroy(obj_vine);

// Damage enemy if they get cut ( 1 damage )
with other {
	hp = hp - 1;
	if (hp <= 0) {
		instance_destroy();
	}
}

// Destroy the cut object
instance_destroy();