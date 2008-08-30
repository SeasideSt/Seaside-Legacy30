accessing-calculated
validPages
	^ (items collect: [ :each | each seasideString asUppercase first ]) asSet asSortedCollection