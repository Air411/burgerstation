/virtual_reality/
	var/name = "Virtual Reality Name"
	var/desc = "Virtual Reality Description"
	var/list/active_players = list()

/virtual_reality/proc/on_player_join(var/mob/living/L) //What happens when a player joins virtual reality.
	active_players |= L
	return TRUE

/virtual_reality/proc/on_player_leave(var/mob/living/L) //What happens when a player leaves virtual reality.
	active_players -= L
	return TRUE

/virtual_reality/proc/can_start()
	return TRUE

/virtual_reality/proc/start()
	return TRUE


/virtual_reality/team/
	var/list/teams = list()
	var/list/team_loadouts = list()

/virtual_reality/team/proc/move_to_team(var/mob/living/L,var/desired_team)

	if(L.loyalty_tag && teams[L.loyalty_tag])
		teams[L.loyalty_tag] -= L

	if(desired_team && teams[desired_team])
		teams[desired_team] |= L

	return TRUE

/virtual_reality/team/on_player_join(var/mob/living/L)
	. = ..()
	var/turf/T = pick(vr_lobby_spawnpoints)
	L.force_move(T)
	move_to_team(L,"Lobby")


/virtual_reality/team/on_player_leave(var/mob/living/L)
	. = ..()
	move_to_team(L,null)

/virtual_reality/team/nuke_ops
	name = "Nuke Ops"
	desc = "NanoTrasen defends Syndicate from planting a bomb."

	teams = list(
		"Syndicate" = list(),
		"NanoTrasen" = list(),
		"Lobby" = list(),
		"Ready" = list(),
		"Specatators" = list()
	)

	team_loadouts = list(
		"Syndicate" = list(),
		"NanoTrasen" = list()
	)

	var/turf/syndicate_marker
	var/turf/nanotrasen_marker
	var/turf/objective_marker

	var/round = 1 //Every 5 rounds is a team swap..

	var/state = 0
	//0 = setting up game
	//1 = waiting

	//2 = starting game

	//3 = starting round
	//4 = buy period
	//5 = action peroid
	//6 = round ending, NanoTrasen victory
	//7 = round nding, Syndicate victory



/virtual_reality/team/nuke_ops/proc/can_round_start()

	if(length(teams["Syndicate"]) >= 0)
		return "Waiting for Syndicate..."

	if(length(teams["NanoTrasen"]) >= 0)
		return "Waiting for NanoTrasen..."


	. = ..()


/virtual_reality/team/nuke_ops/proc/on_player_ready(var/mob/living/L)

	if(state >= 2) //Late joiner!
		var/syndicate_length = length(teams["Syndicate"])
		var/nanotrasen_length = length(teams["NanoTrasen"])
		if(syndicate_length > nanotrasen_length)
			move_to_team(L,"NanoTrasen")
		else if(nanotrasen_length > syndicate_length)
			move_to_team(L,"Syndicate")
		else
			if(prob(50))
				move_to_team(L,"NanoTrasen")
			else
				move_to_team(L,"Syndicate")

	return TRUE

/virtual_reality/team/nuke_ops/proc/reset_income()
	for(var/mob/living/advanced/player/P in active_players)
		P.adjust_currency(500-P.currency)


/virtual_reality/team/nuke_ops/proc/round_start()
	set_markers()
	if(round == 0)
		reset_income()
		set_teams()
	else if(!(round % 5))
		reset_income()
		swap_teams()

	CREATE(/obj/structure/interactive/vending/virtual_reality/ammo,syndicate_marker)
	var/turf/syndicate_marker_2 = get_step(syndicate_marker,EAST)
	CREATE(/obj/structure/interactive/vending/virtual_reality/weapons,syndicate_marker_2)

	CREATE(/obj/structure/interactive/vending/virtual_reality/ammo,nanotrasen_marker)
	var/turf/nanotrasen_marker_2 = get_step(nanotrasen_marker,EAST)
	CREATE(/obj/structure/interactive/vending/virtual_reality/weapons,nanotrasen_marker_2)

	var/list/valid_syndicate_turfs = list()
	for(var/turf/simulated/floor/F in view(VIEW_RANGE*0.5,syndicate_marker))
		if(!F.is_safe_teleport())
			continue
		valid_syndicate_turfs += F

	var/list/valid_nanotrasen_turfs = list()
	for(var/turf/simulated/floor/F in view(VIEW_RANGE*0.5,nanotrasen_marker))
		if(!F.is_safe_teleport())
			continue
		valid_nanotrasen_turfs += F



	round = 1
	state = 3

/virtual_reality/team/nuke_ops/proc/set_markers()

	var/list/valid_spawnpoints = tdm_spawnpoints.Copy()

	syndicate_marker = pick(valid_spawnpoints)
	valid_spawnpoints -= syndicate_marker

	nanotrasen_marker = null
	var/best_distance = 0
	for(var/k in valid_spawnpoints)
		var/turf/T = k
		var/distance = get_dist(T,syndicate_marker)
		if(!nanotrasen_marker || best_distance < distance)
			nanotrasen_marker = T
			best_distance = distance
	valid_spawnpoints -= nanotrasen_marker

	objective_marker = null
	best_distance = INFINITY
	for(var/k in valid_spawnpoints)
		var/turf/T = k
		var/distance_diff = abs(get_dist(T,syndicate_marker) - get_dist(T,nanotrasen_marker))
		if(!objective_marker || distance_diff < best_distance)
			objective_marker = T
			best_distance = distance_diff

	return TRUE

/virtual_reality/team/nuke_ops/proc/set_teams()
	var/i=1 + prob(50)
	for(var/k in teams["Ready"])
		var/mob/living/L = k
		if(i % 2)
			move_to_team(L,"NanoTrasen")
		else
			move_to_team(L,"Syndicate")
		i++


/virtual_reality/team/nuke_ops/proc/swap_teams()

	var/list/syndicate_members = teams["Syndicate"].Copy()
	var/list/nanotrasen_members = teams["NanoTrasen"].Copy()

	for(var/k in syndicate_members)
		move_to_team(k,"NanoTrasen")

	for(var/k in nanotrasen_members)
		move_to_team(k,"Syndicate")

	return TRUE