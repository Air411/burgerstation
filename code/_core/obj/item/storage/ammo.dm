/obj/item/storage/ammo/
	name = "ammo box"
	desc = "Contains ammo."
	icon = 'icons/obj/item/storage/ammo.dmi'
	icon_state = "template"

	container_whitelist = list(
		/obj/item/bullet_cartridge/
	)

	value = 10

/obj/item/storage/ammo/bullet_22/
	name = "box of .22 LR bullets"
	desc_extended = "An ammo box that can hold 36 .22 LR bullets."
	icon_state = "22"
	size = SIZE_3

	dynamic_inventory_count = 4
	container_max_size = SIZE_1
	container_max_slots = 6

/obj/item/storage/ammo/bullet_22/fill_inventory()
	for(var/i=1, i <= container_max_slots*dynamic_inventory_count, i++)
		new /obj/item/bullet_cartridge/pistol_22(src)
	return ..()


/obj/item/storage/ammo/slug
	name = "box of shotgun slugs"
	desc_extended = "An ammo box that can hold 24 shotgun slugs."
	icon_state = "slug"

	dynamic_inventory_count = 4
	container_max_size = SIZE_1
	container_max_slots = 6

/obj/item/storage/ammo/slug/fill_inventory()
	for(var/i=1, i <= container_max_slots*dynamic_inventory_count, i++)
		new /obj/item/bullet_cartridge/shotgun_12/slug(src)
	return ..()

/obj/item/storage/ammo/buckshot
	name = "box of shotgun buckshot"
	desc_extended = "An ammo box that can hold 24 shotgun buckshot."
	icon_state = "buckshot"

	dynamic_inventory_count = 4
	container_max_size = SIZE_1
	container_max_slots = 6

/obj/item/storage/ammo/buckshot/fill_inventory()
	for(var/i=1, i <= container_max_slots*dynamic_inventory_count, i++)
		new /obj/item/bullet_cartridge/shotgun_12/buckshot(src)
	return ..()


/obj/item/storage/ammo/flechette
	name = "box of flechette rounds"
	desc_extended = "An ammo box that can hold 24 shotgun flechette rounds."
	icon_state = "flechette"

	dynamic_inventory_count = 4
	container_max_size = SIZE_1
	container_max_slots = 6

/obj/item/storage/ammo/flechette/fill_inventory()
	for(var/i=1, i <= container_max_slots*dynamic_inventory_count, i++)
		new /obj/item/bullet_cartridge/shotgun_12/flechette(src)
	return ..()



/obj/item/storage/ammo/fire
	name = "box of drake breath"
	desc_extended = "An ammo box that can hold 24 shotgun fireball rounds."
	icon_state = "fire"

	dynamic_inventory_count = 4
	container_max_size = SIZE_1
	container_max_slots = 6

/obj/item/storage/ammo/fire/fill_inventory()
	for(var/i=1, i <= container_max_slots*dynamic_inventory_count, i++)
		new /obj/item/bullet_cartridge/shotgun_12/fire(src)
	return ..()


/obj/item/storage/ammo/buckshot_23
	name = "box of russian shotgun buckshot"
	desc_extended = "An ammo box that can hold 16 23x75mmR shotgun buckshot."
	icon_state = "23buck"

	dynamic_inventory_count = 4
	container_max_size = SIZE_1
	container_max_slots = 4

/obj/item/storage/ammo/buckshot_23/fill_inventory()
	for(var/i=1, i <= container_max_slots*dynamic_inventory_count, i++)
		new /obj/item/bullet_cartridge/shotgun_23/buckshot(src)
	return ..()

/obj/item/storage/ammo/slug_23
	name = "box of russian shotgun slugs"
	desc_extended = "An ammo box that can hold 16 23x75mmR shotgun slugs."
	icon_state = "23slug"

	dynamic_inventory_count = 4
	container_max_size = SIZE_1
	container_max_slots = 4

/obj/item/storage/ammo/slug_23/fill_inventory()
	for(var/i=1, i <= container_max_slots*dynamic_inventory_count, i++)
		new /obj/item/bullet_cartridge/shotgun_23/slug(src)
	return ..()

/obj/item/storage/ammo/fire_23
	name = "box of russian shotgun incendiary slugs"
	desc_extended = "An ammo box that can hold 16 23x75mmR shotgun incendiary slugs."
	icon_state = "23fire"

	dynamic_inventory_count = 4
	container_max_size = SIZE_1
	container_max_slots = 4

/obj/item/storage/ammo/fire_23/fill_inventory()
	for(var/i=1, i <= container_max_slots*dynamic_inventory_count, i++)
		new /obj/item/bullet_cartridge/shotgun_23/fire(src)
	return ..()

/obj/item/storage/ammo/grenade_40mm
	name = "box of 40mm grenades"
	desc_extended = "An ammo box that can hold 8 40mm high-explosive grenades."
	icon_state = "40mm"

	dynamic_inventory_count = 4
	container_max_size = SIZE_1
	container_max_slots = 2

/obj/item/storage/ammo/grenade_40mm/fill_inventory()
	for(var/i=1, i <= container_max_slots*dynamic_inventory_count, i++)
		new /obj/item/bullet_cartridge/grenade_40mm/(src)
	return ..()

/obj/item/storage/ammo/bullet_762/
	name = "box of 7.62x38mmR bullets"
	desc_extended = "An ammo box that can hold 36 7.62x38mmR bullets."
	icon_state = "762"
	size = SIZE_3

	dynamic_inventory_count = 4
	container_max_size = SIZE_1
	container_max_slots = 6

/obj/item/storage/ammo/bullet_762/fill_inventory()
	for(var/i=1, i <= container_max_slots*dynamic_inventory_count, i++)
		new /obj/item/bullet_cartridge/revolver_762(src)
	return ..()

/obj/item/storage/ammo/bullet_38/
	name = "box of .38 bullets"
	desc_extended = "An ammo box that can hold 36 .38 bullets."
	icon_state = "38"
	size = SIZE_3

	dynamic_inventory_count = 4
	container_max_size = SIZE_1
	container_max_slots = 6

/obj/item/storage/ammo/bullet_38/fill_inventory()
	for(var/i=1, i <= container_max_slots*dynamic_inventory_count, i++)
		new /obj/item/bullet_cartridge/revolver_38(src)
	return ..()

/obj/item/storage/ammo/bullet_357/
	name = "box of .357 bullets"
	desc_extended = "An ammo box that can hold 36 .357 bullets."
	icon_state = "357"
	size = SIZE_3

	dynamic_inventory_count = 4
	container_max_size = SIZE_1
	container_max_slots = 32//for some reason 357 and 44 keep spawning in single bullets, this is a botched fix

/obj/item/storage/ammo/bullet_357/fill_inventory()
	for(var/i=1, i <= container_max_slots*dynamic_inventory_count, i++)
		new /obj/item/bullet_cartridge/revolver_357(src)
	return ..()

/obj/item/storage/ammo/bullet_44/
	name = "box of .44 bullets"
	desc_extended = "An ammo box that can hold 36 .44 bullets."
	icon_state = "44"
	size = SIZE_3

	dynamic_inventory_count = 4
	container_max_size = SIZE_1
	container_max_slots = 32

/obj/item/storage/ammo/bullet_44/fill_inventory()
	for(var/i=1, i <= container_max_slots*dynamic_inventory_count, i++)
		new /obj/item/bullet_cartridge/revolver_44(src)
	return ..()

/obj/item/storage/ammo/bullet_300/
	name = "box of .300 bullets"
	desc_extended = "An ammo box that can hold 36 .300 bullets."
	icon_state = "300"
	size = SIZE_3

	dynamic_inventory_count = 4
	container_max_size = SIZE_1
	container_max_slots = 5

/obj/item/storage/ammo/bullet_300/fill_inventory()
	for(var/i=1, i <= container_max_slots*dynamic_inventory_count, i++)
		new /obj/item/bullet_cartridge/revolver_300(src)
	return ..()
