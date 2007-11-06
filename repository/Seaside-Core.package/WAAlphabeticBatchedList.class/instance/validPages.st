accessing-calculated
validPages
	^ (items collect: [:ea | ea displayString asUppercase first]) asSet asSortedCollection