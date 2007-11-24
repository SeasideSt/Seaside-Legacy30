accessing-calculated
batch
	^ items select: [ :each |
		each toString asUppercase first = self currentPage ]