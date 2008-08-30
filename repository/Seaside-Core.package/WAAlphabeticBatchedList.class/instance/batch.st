accessing-calculated
batch
	^ items select: [ :each | each seasideString asUppercase first = self currentPage ]