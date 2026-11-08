class_name EnimyHitParticles extends Marker2D


#@export var hit_particles : Array[ HitparticleSettings ]
#@export var death_particles : Array[ HitparticleSettings ]

var enemy_was_killed : bool = false



func _ready() -> void:
	if owner is Enemy:
		#owner.was_hit.connect(_on_hit)
		owner.was_killed.connect(_on_killed)
	else:
		pass 
	pass

#func _on_hit( a : AttackArea) -> void:
	#var dir : Vector2 = global_position.direction_to(a.global_position)
	#var particles = hit_particles
	#if enemy_was_killed:
		#particles = death_particles
	
	#for p in particles: 
		#visualEffects.hitParticles( global_position, dir, p)
	#pass


func _on_killed() -> void:
	enemy_was_killed = true
	pass
