// Damage enemy if they get chiseled ( 2 damage )
with other {
	hp = hp - 2;
	if (hp <= 0) {
		instance_destroy();
	}
} 
// Destroy the chiselDamage object
instance_destroy();
// Chisel doesn't work against the vine