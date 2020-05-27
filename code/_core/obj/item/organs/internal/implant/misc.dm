/obj/item/organ/internal/implant/torso/od_purge
	name = "overdose safety implant"
	desc = "Prevents overdoses."
	desc_extended = "A special implant that prevents the user from overdosing on chemicals by purging it from their bloodstream."

/obj/item/organ/internal/implant/torso/od_purge/on_life()
	. = ..()
	if(loc && is_advanced(loc))
		var/mob/living/advanced/A = loc
		if(A.reagents)
			var/has_purged = FALSE
			for(var/reagent_id in A.reagents.stored_reagents)
				var/reagent_volume = A.reagents.stored_reagents[reagent_id]
				var/reagent/R = REAGENT(reagent_id)
				if(!R.overdose_threshold || reagent_volume < R.overdose_threshold)
					continue
				reagent_volume *= 0.5
				has_purged = TRUE
				A.reagents.stored_reagents[reagent_id] = FLOOR(reagent_volume, 1)
			if(has_purged)
				A.to_chat(span("notice","Your [src.name] beeps..."))

	return .