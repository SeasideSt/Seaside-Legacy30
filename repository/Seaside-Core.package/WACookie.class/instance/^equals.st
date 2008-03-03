comparing
= other
	^ self species = other species
		and: [ self key = other key
		and: [ self path = other path ] ]