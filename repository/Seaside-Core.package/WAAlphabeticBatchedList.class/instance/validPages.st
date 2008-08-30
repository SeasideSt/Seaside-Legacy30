accessing-calculated
validPages
	^ (items collect: [ :each |
		each toString asUppercase first]) asSet asSortedCollection