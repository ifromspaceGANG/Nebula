
/obj/machinery/vending/tool
	name = "YouTool"
	desc = "Tools for tools."
	icon_state = "tool"
	icon_deny = "tool-deny"
	icon_vend = "tool-vend"
	vend_delay = 11
	base_type = /obj/machinery/vending/tool
	products = list(
		/obj/item/stack/cable_coil/random = 10,
		/obj/item/crowbar = 5,
		/obj/item/weldingtool = 3,
		/obj/item/wirecutters = 5,
		/obj/item/wrench = 5,
		/obj/item/scanner/gas = 5,
		/obj/item/t_scanner = 5,
		/obj/item/screwdriver = 5,
		/obj/item/flashlight/flare/glowstick = 3, 
		/obj/item/flashlight/flare/glowstick/red = 3, 
		/obj/item/tape_roll = 8
	)
	contraband = list(/obj/item/weldingtool/hugetank = 2,/obj/item/clothing/gloves/insulated/cheap = 2)
	premium = list(/obj/item/clothing/gloves/insulated = 1)

/obj/machinery/vending/tool/adherent
	name = "Adherent Tool Dispenser"
	desc = "This looks like a heavily modified vending machine. It contains technology that doesn't appear to be human in origin."
	product_ads = "\[C#\]\[Cb\]\[Db\]. \[Ab\]\[A#\]\[Bb\]. \[E\]\[C\]\[Gb\]\[B#\]. \[C#\].;\[Cb\]\[A\]\[F\]\[Cb\]\[C\]\[E\]\[Cb\]\[E\]\[Fb\]. \[G#\]\[C\]\[Ab\]\[A\]\[C#\]\[B\]. \[Eb\]\[choral\]. \[E#\]\[C#\]\[Ab\]\[E\]\[C#\]\[Fb\]\[Cb\]\[F#\]\[C#\]\[Gb\]."
	icon_state = "adh-tool"
	icon_deny = "adh-tool-deny"
	icon_vend = "adh-tool-vend"
	vend_delay = 5
	products = list(
		/obj/item/weldingtool/electric/crystal = 5,
		/obj/item/wirecutters/crystal = 5,
		/obj/item/screwdriver/crystal = 5,
		/obj/item/crowbar/crystal = 5,
		/obj/item/wrench/crystal = 5,
		/obj/item/multitool/crystal = 5,
		/obj/item/storage/belt/utility/crystal = 5,
		/obj/item/storage/toolbox/crystal = 5
	)

/obj/machinery/vending/tool/adherent/vend(var/datum/stored_items/vending_products/R, var/mob/living/carbon/user)
	if(emagged)
		. = ..()
	else
		to_chat(user, "<span class='notice'>The vending machine emits a discordant note, and a small hole blinks several times. It looks like it wants something inserted.</span>")

/obj/machinery/vending/engivend
	name = "Engi-Vend"
	desc = "Spare tool vending. What? Did you expect some witty description?"
	icon_state = "engivend"
	icon_deny = "engivend-deny"
	icon_vend = "engivend-vend"
	vend_delay = 21
	base_type = /obj/machinery/vending/engivend
	req_access = list(list(access_atmospherics,access_engine_equip))
	products = list(
		/obj/item/clothing/glasses/meson = 2,
		/obj/item/multitool = 4,
		/obj/item/geiger = 4,
		/obj/item/airlock_electronics = 10,
		/obj/item/stock_parts/circuitboard/apc = 10,
		/obj/item/stock_parts/circuitboard/air_alarm = 10,
		/obj/item/cell = 10,
		/obj/item/clamp = 10
	)
	contraband = list(/obj/item/cell/high = 3)
	premium = list(/obj/item/storage/belt/utility = 3)

//This one's from bay12
/obj/machinery/vending/engineering
	name = "Robco Tool Maker"
	desc = "Everything you need for do-it-yourself repair."
	icon_state = "engi"
	icon_deny = "engi-deny"
	icon_vend = "engi-vend"
	base_type = /obj/machinery/vending/engineering
	req_access = list(list(access_atmospherics,access_engine_equip))
	products = list(
		/obj/item/storage/belt/utility = 4,
		/obj/item/clothing/glasses/meson = 4,
		/obj/item/clothing/gloves/insulated = 4, 
		/obj/item/screwdriver = 12,
		/obj/item/crowbar = 12,
		/obj/item/wirecutters = 12,
		/obj/item/multitool = 12,
		/obj/item/wrench = 12,
		/obj/item/t_scanner = 12,
		/obj/item/cell = 8, 
		/obj/item/weldingtool = 8,
		/obj/item/clothing/head/welding = 8,
		/obj/item/light/tube = 10,
		/obj/item/stock_parts/scanning_module = 5,
		/obj/item/stock_parts/micro_laser = 5,
		/obj/item/stock_parts/matter_bin = 5,
		/obj/item/stock_parts/manipulator = 5,
		/obj/item/stock_parts/console_screen = 5,
		/obj/item/stock_parts/capacitor = 5, 
		/obj/item/stock_parts/keyboard = 5, 
		/obj/item/stock_parts/power/apc/buildable = 5
	)
	contraband = list(/obj/item/rcd = 1, /obj/item/rcd_ammo = 5)

//This one's from bay12
/obj/machinery/vending/robotics
	name = "Robotech Deluxe"
	desc = "All the tools you need to create your own robot army."
	icon_state = "robotics"
	icon_deny = "robotics-deny"
	icon_vend = "robotics-vend"
	req_access = list(access_robotics)
	base_type = /obj/machinery/vending/robotics
	products = list(
		/obj/item/stack/cable_coil = 4,
		/obj/item/flash/synthetic = 4,
		/obj/item/cell = 4,
		/obj/item/scanner/health = 2,
		/obj/item/scalpel = 1,
		/obj/item/circular_saw = 1,
		/obj/item/tank/anesthetic = 2,
		/obj/item/clothing/mask/breath/medical = 5,
		/obj/item/screwdriver = 2,
		/obj/item/crowbar = 2
	)
	contraband = list(/obj/item/flash = 2)
