/obj/item/weapon/ranged/energy/mech
	name = "mech gun"

	icon = 'icons/obj/item/weapons/ranged/mech.dmi'

	projectile = /obj/projectile/bullet/laser
	ranged_damage_type = /damagetype/ranged/laser/chronogun
	projectile_speed = 8
	shoot_delay = 20
	automatic = FALSE
	bullet_color = "#0000FF"

	charge_max = 1000000
	charge_current = 1000000
	charge_cost = 1000

	view_punch = 0

	shoot_sounds = list('sound/weapons/laser_rifle/shoot.ogg')

	mech_only = TRUE

	size = SIZE_6


/obj/item/weapon/ranged/energy/mech/smg
	name = "9x19mm SMG"
	icon_state = "mech_ballistic"

	automatic = TRUE

	shoot_delay = 1.5

	charge_max = 250*300
	charge_current = 250*300
	charge_cost = 250

	projectile = /obj/projectile/bullet/firearm/pistol
	ranged_damage_type = /damagetype/ranged/bullet/pistol_9mm

	projectile_speed = BULLET_SPEED_PISTOL_LIGHT

	shoot_sounds = list('sound/weapons/40/shoot_smg.ogg')

	value = 500

/obj/item/weapon/ranged/energy/mech/smg/
	bullet_color = COLOR_BULLET

	heat_per_shot = 0.01
	heat_max = 0.03

/obj/item/weapon/ranged/energy/mech/smg/get_static_spread() //Base spread
	return 0.005

/obj/item/weapon/ranged/energy/mech/smg/get_skill_spread(var/mob/living/L) //Base spread
	return 0



/obj/item/weapon/ranged/energy/mech/lmg
	name = "5.56mm LMG"
	icon_state = "mech_uac2"

	automatic = TRUE

	shoot_delay = 2

	charge_max = 500*240
	charge_current = 500*240
	charge_cost = 500

	projectile = /obj/projectile/bullet/firearm/rifle
	ranged_damage_type = /damagetype/ranged/bullet/rifle_223

	projectile_speed = BULLET_SPEED_RIFLE_LIGHT

	shoot_sounds = list('sound/weapons/223/shoot_alt.ogg')

	value = 1000

	bullet_color = COLOR_BULLET

	heat_per_shot = 0.005
	heat_max = 0.04

/obj/item/weapon/ranged/energy/mech/lmg/get_static_spread() //Base spread
	return 0.002

/obj/item/weapon/ranged/energy/mech/lmg/get_skill_spread(var/mob/living/L) //Base spread
	return 0


/obj/item/weapon/ranged/energy/mech/laser
	name = "AER14 Laser Rifle"
	desc_extended = "A modular model of laser rifle, capable of using different crystals to shoot beams with different effects. This one is the standard beam."
	icon_state = "mech_lasercarbine"

	projectile = /obj/projectile/bullet/laser
	ranged_damage_type = /damagetype/ranged/laser/rifle

	projectile_speed = TILE_SIZE - 1
	shoot_delay = 4

	automatic = FALSE

	charge_max = 1000*120
	charge_current = 1000*120
	charge_cost = 1000

	shoot_sounds = list('sound/weapons/laser_rifle/shoot.ogg')

	size = SIZE_4

	value = 1400

	bullet_color = COLOR_RED

	heat_per_shot = 0.004
	heat_max = 0.03

/obj/item/weapon/ranged/energy/mech/laser/get_static_spread() //Base spread
	return 0

/obj/item/weapon/ranged/energy/mech/laser/get_skill_spread(var/mob/living/L) //Base spread
	return 0




/obj/item/weapon/ranged/energy/mech/ion
	name = "AER35 Ion Rifle"
	desc_extended = "A modular model of laser rifle, capable of using different crystals to shoot beams with different effects. This one is the standard beam."
	icon_state = "mech_ionrifle"

	projectile = /obj/projectile/bullet/laser/ion
	ranged_damage_type = /damagetype/ranged/laser/ion

	projectile_speed = TILE_SIZE - 1
	shoot_delay = 4

	automatic = FALSE

	charge_max = 1000*120
	charge_current = 1000*120
	charge_cost = 1000

	shoot_sounds = list('sound/weapons/laser_rifle/shoot.ogg')

	size = SIZE_4

	value = 1400

	bullet_color = COLOR_BLUE

	heat_per_shot = 0.004
	heat_max = 0.03

/obj/item/weapon/ranged/energy/mech/ion/get_static_spread() //Base spread
	return 0

/obj/item/weapon/ranged/energy/mech/ion/get_skill_spread(var/mob/living/L) //Base spread
	return 0



/obj/item/weapon/ranged/energy/mech/missile_pod
	name = "RK Missile Pod"
	icon_state = "mech_missile_pod"

	projectile = /obj/projectile/bullet/rocket
	ranged_damage_type = /damagetype/ranged/bullet/gyrojet/

	bullet_color = "#FFFFFF"

	projectile_speed = 16
	shoot_delay = 10

	automatic = FALSE

	charge_max = 3000*9
	charge_current = 3000*9
	charge_cost = 3000

	shoot_sounds = list('sound/weapons/gyrojet/shoot.ogg')

	size = SIZE_4

	value = 1900

	heat_per_shot = 0.004
	heat_max = 0.03

/obj/item/weapon/ranged/energy/mech/missile_pod/get_static_spread() //Base spread
	return 0.01

/obj/item/weapon/ranged/energy/mech/missile_pod/get_skill_spread(var/mob/living/L) //Base spread
	return 0