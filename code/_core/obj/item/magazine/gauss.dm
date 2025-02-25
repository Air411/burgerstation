/obj/item/magazine/gauss_gun
	name = "\improper 2x12 ball Gauss Rifle magazine"
	desc = "IT'S NOT A CLIP. IT'S A MAGAZINE."
	desc_extended = "Contains ammunition for a ranged weapon. Make sure you're trying to use the right caliber."
	icon = 'icons/obj/item/magazine/gauss_gun.dmi'
	icon_state = "fgauss"
	bullet_count_max = 8

	weapon_whitelist = list(
		/obj/item/weapon/ranged/bullet/magazine/rifle/gauss_gun = TRUE,
		/obj/item/weapon/ranged/bullet/magazine/rifle/gauss_gun/auto = TRUE
	)

	ammo = /obj/item/bullet_cartridge/gauss
	ammo_surplus = /obj/item/bullet_cartridge/gauss/surplus

	bullet_length_min = 11
	bullet_length_best = 12
	bullet_length_max = 14

	bullet_diameter_min = 1
	bullet_diameter_best = 2
	bullet_diameter_max = 3

	size = SIZE_2

	icon_states = 8

	value = 20

/obj/item/magazine/gauss_gun/auto
	name = "\improper 2x12 ball Gauss Carbine magazine"
	desc = "IT'S NOT A CLIP. IT'S A MAGAZINE."
	desc_extended = "Contains ammunition for a ranged weapon. Make sure you're trying to use the right caliber."
	icon = 'icons/obj/item/magazine/gauss_carbine.dmi' //This won't get confusing.
	icon_state = "cgauss"
	bullet_count_max = 22

	weapon_whitelist = list(
		/obj/item/weapon/ranged/bullet/magazine/rifle/gauss_gun/auto = TRUE
	)

	ammo = /obj/item/bullet_cartridge/gauss
	ammo_surplus = /obj/item/bullet_cartridge/gauss/surplus

	bullet_length_min = 11
	bullet_length_best = 12
	bullet_length_max = 14

	bullet_diameter_min = 1
	bullet_diameter_best = 2
	bullet_diameter_max = 3

	size = SIZE_2

	icon_states = 8

	value = 20
