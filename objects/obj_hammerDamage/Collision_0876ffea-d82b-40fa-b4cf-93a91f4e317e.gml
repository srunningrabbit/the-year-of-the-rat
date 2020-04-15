// Damage enemy if they get hammered ( 3 damage since the player has to get closer to enemy and has more of a chance to get hit by the enemy)
with other {
	hp -= 3;
	if (hp < 0) {
		instance_destroy();
	}
} 
// Destroy the hammerDamage object
instance_destroy();
// Hammer doesn't work against the vine
// Have it knock down certain walls?